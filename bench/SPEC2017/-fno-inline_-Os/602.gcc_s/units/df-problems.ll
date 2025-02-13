; ModuleID = 'df-problems.c'
source_filename = "df-problems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.df_problem = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df_live_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_link = type { ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.df_rd_problem_data = type { ptr, ptr, %struct.bitmap_obstack }
%struct.df_rd_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.df_lr_problem_data = type { ptr, ptr }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.df_live_problem_data = type { ptr, ptr }
%struct.df_byte_lr_problem_data = type { ptr, ptr, ptr, ptr, ptr, %struct.bitmap_obstack }
%struct.df_byte_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df_mw_hardreg = type { ptr, i32, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.df_md_bb_info = type { ptr, ptr, ptr, ptr, ptr }

@df = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"df-problems.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%c%d(bb %d insn %d) \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0A( \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%d%s \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"(EH)\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [12 x i8] c")->[%d]->( \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@problem_RD = internal global %struct.df_problem { i32 3, i32 1, ptr @df_rd_alloc, ptr null, ptr @df_rd_free_bb_info, ptr @df_rd_local_compute, ptr @df_rd_init_solution, ptr @df_worklist_dataflow, ptr null, ptr @df_rd_confluence_n, ptr @df_rd_transfer_function, ptr null, ptr @df_rd_free, ptr @df_rd_free, ptr @df_rd_start_dump, ptr @df_rd_top_dump, ptr @df_rd_bottom_dump, ptr null, ptr null, ptr null, i32 30, i8 1 }, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"df_rd_block pool\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@df_bitmap_obstack = external global %struct.bitmap_obstack, align 8
@seen_in_block = internal unnamed_addr global ptr null, align 8
@seen_in_insn = internal unnamed_addr global ptr null, align 8
@regs_invalidated_by_call_regset = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c";; Reaching defs:\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"  sparse invalidated \09\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  dense invalidated \09\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"%d[%d,%d] \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c";; rd  in  \09(%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c";; rd  gen \09(%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c";; rd  kill\09(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c";; rd  out \09(%d)\0A\00", align 1
@problem_LR = internal global %struct.df_problem { i32 1, i32 2, ptr @df_lr_alloc, ptr @df_lr_reset, ptr @df_lr_free_bb_info, ptr @df_lr_local_compute, ptr @df_lr_init, ptr @df_worklist_dataflow, ptr @df_lr_confluence_0, ptr @df_lr_confluence_n, ptr @df_lr_transfer_function, ptr @df_lr_finalize, ptr @df_lr_free, ptr null, ptr null, ptr @df_lr_top_dump, ptr @df_lr_bottom_dump, ptr @df_lr_verify_solution_start, ptr @df_lr_verify_solution_end, ptr null, i32 31, i8 0 }, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"df_lr_block pool\00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [13 x i8] c";; lr  in  \09\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c";;  old in  \09\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c";; lr  use \09\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c";; lr  def \09\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c";; lr  out \09\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c";;  old out  \09\00", align 1
@problem_LIVE = internal global %struct.df_problem { i32 2, i32 1, ptr @df_live_alloc, ptr @df_live_reset, ptr @df_live_free_bb_info, ptr @df_live_local_compute, ptr @df_live_init, ptr @df_worklist_dataflow, ptr null, ptr @df_live_confluence_n, ptr @df_live_transfer_function, ptr @df_live_finalize, ptr @df_live_free, ptr @df_live_free, ptr null, ptr @df_live_top_dump, ptr @df_live_bottom_dump, ptr @df_live_verify_solution_start, ptr @df_live_verify_solution_end, ptr @problem_LR, i32 32, i8 0 }, align 8
@.str.29 = private unnamed_addr constant [19 x i8] c"df_live_block pool\00", align 1
@df_live_scratch = internal unnamed_addr global ptr null, align 8
@optimize = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [15 x i8] c";; live  in  \09\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c";; live  gen \09\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c";; live  kill\09\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c";; live  out \09\00", align 1
@problem_CHAIN = internal global %struct.df_problem { i32 4, i32 0, ptr @df_chain_alloc, ptr @df_chain_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @df_chain_finalize, ptr @df_chain_free, ptr @df_chain_fully_remove_problem, ptr null, ptr @df_chain_top_dump, ptr @df_chain_bottom_dump, ptr null, ptr null, ptr @problem_RD, i32 34, i8 0 }, align 8
@.str.34 = private unnamed_addr constant [20 x i8] c"df_chain_block pool\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c";;  DU chains for artificial defs\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c";;   reg %d \00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c";;   DU chains for insn luid %d uid %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c";;      reg %d \00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"read/write \00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c";;  UD chains for artificial uses\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c";;   UD chains for insn luid %d uid %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c";;   eq_note reg %d \00", align 1
@problem_BYTE_LR = internal global %struct.df_problem { i32 5, i32 2, ptr @df_byte_lr_alloc, ptr @df_byte_lr_reset, ptr @df_byte_lr_free_bb_info, ptr @df_byte_lr_local_compute, ptr @df_byte_lr_init, ptr @df_worklist_dataflow, ptr @df_byte_lr_confluence_0, ptr @df_byte_lr_confluence_n, ptr @df_byte_lr_transfer_function, ptr null, ptr @df_byte_lr_free, ptr @df_byte_lr_free, ptr null, ptr @df_byte_lr_top_dump, ptr @df_byte_lr_bottom_dump, ptr null, ptr null, ptr null, i32 35, i8 0 }, align 8
@.str.43 = private unnamed_addr constant [22 x i8] c"df_byte_lr_block pool\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [14 x i8] c";; blr  in  \09\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c";; blr  use \09\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c";; blr  def \09\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c";; blr  out \09\00", align 1
@problem_NOTE = internal global %struct.df_problem { i32 6, i32 0, ptr @df_note_alloc, ptr null, ptr null, ptr @df_note_compute, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @df_note_free, ptr @df_note_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @problem_LR, i32 36, i8 0 }, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@regstack_completed = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@problem_MD = internal global %struct.df_problem { i32 7, i32 1, ptr @df_md_alloc, ptr @df_md_reset, ptr @df_md_free_bb_info, ptr @df_md_local_compute, ptr @df_md_init, ptr @df_worklist_dataflow, ptr @df_md_confluence_0, ptr @df_md_confluence_n, ptr @df_md_transfer_function, ptr null, ptr @df_md_free, ptr @df_md_free, ptr null, ptr @df_md_top_dump, ptr @df_md_bottom_dump, ptr null, ptr null, ptr null, i32 29, i8 0 }, align 8
@.str.48 = private unnamed_addr constant [17 x i8] c"df_md_block pool\00", align 1
@df_md_scratch = internal unnamed_addr global ptr null, align 8
@.str.49 = private unnamed_addr constant [13 x i8] c";; md  in  \09\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c";; md  init  \09\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c";; md  gen \09\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c";; md  kill \09\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c";; md  out \09\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @df_get_live_out(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !389 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !394

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !390
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !395
  br i1 %12, label %18, label %15, !prof !394

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %14) #18
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 3
  br label %21

18:                                               ; preds = %8
  %19 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %14) #18
  %20 = getelementptr inbounds %struct.df_lr_bb_info, ptr %19, i64 0, i32 3
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %20, %18 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !390
  ret ptr %23
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_live_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !399 !PGOFuncName !400 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !401
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !403

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !405 !PGOFuncName !406 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !401
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !407

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @df_get_live_in(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !408 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !409

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !390
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !395
  br i1 %12, label %18, label %15, !prof !409

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %14) #18
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 2
  br label %21

18:                                               ; preds = %8
  %19 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %14) #18
  %20 = getelementptr inbounds %struct.df_lr_bb_info, ptr %19, i64 0, i32 2
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %20, %18 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !390
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_grow_bb_info(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !410 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !413
  %7 = add nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !401
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %11, label %25, !prof !415

11:                                               ; preds = %1
  %12 = lshr i32 %7, 2
  %13 = add i32 %12, %7
  %14 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !404
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %17) #17
  store ptr %18, ptr %14, align 8, !tbaa !404
  %19 = load i32, ptr %8, align 8, !tbaa !401
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = sub i32 %13, %19
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 %24, i1 false)
  store i32 %13, ptr %8, align 8, !tbaa !401
  br label %25

25:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @df_chain_dump(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 !prof !416 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %1)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2, %25
  %6 = phi ptr [ %33, %25 ], [ %0, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !417
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 100, i32 117
  %12 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !419
  %14 = and i32 %8, 255
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.df_artificial_ref, ptr %7, i64 0, i32 1
  br label %25

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !419
  %21 = load ptr, ptr %20, align 8, !tbaa !420
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  %23 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !419
  br label %25

25:                                               ; preds = %16, %18
  %26 = phi ptr [ %22, %18 ], [ %17, %16 ]
  %27 = phi i32 [ %24, %18 ], [ -1, %16 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !419
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !395
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13, i32 noundef %30, i32 noundef %27) #18
  %32 = getelementptr inbounds %struct.df_link, ptr %6, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !422
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5, !llvm.loop !423

35:                                               ; preds = %25, %2
  %36 = tail call i32 @fputc(i32 125, ptr %1)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_print_bb_index(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !416 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %1)
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !425
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !427
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %3) #18, !range !428
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2, %10
  %11 = load ptr, ptr %3, align 8, !tbaa !390
  %12 = load ptr, ptr %11, align 8, !tbaa !429
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !395
  %15 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !431
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @.str.8, ptr @.str.7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %14, ptr noundef nonnull %19) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %21 = load i32, ptr %4, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = call fastcc zeroext i8 @ei_cond(i32 %21, ptr %22, ptr noundef nonnull %3) #18, !range !428
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !432

25:                                               ; preds = %10, %2
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !395
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %27) #18
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %30 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !425
  store ptr %30, ptr %7, align 8, !tbaa.struct !427
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %3) #18, !range !428
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %25, %33
  %34 = load ptr, ptr %3, align 8, !tbaa !390
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !433
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !395
  %39 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !431
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.8, ptr @.str.7
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %38, ptr noundef nonnull %43) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %45 = load i32, ptr %4, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %3) #18, !range !428
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %33, !llvm.loop !434

49:                                               ; preds = %33, %25
  %50 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !435 !PGOFuncName !436 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !437 !PGOFuncName !438 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !439

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !390
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !440 !PGOFuncName !441 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !442

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !443

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !444
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !444
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !437 !PGOFuncName !446 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !447

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #18
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !440 !PGOFuncName !448 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !442

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !449 !PGOFuncName !450 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !451

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !452
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !454 !PGOFuncName !455 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !456

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !390
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !440 !PGOFuncName !457 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_simulate_artificial_defs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !458 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8, !prof !459

8:                                                ; preds = %2, %34
  %9 = phi ptr [ %36, %34 ], [ %6, %2 ]
  %10 = phi ptr [ %35, %34 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14, !prof !460

14:                                               ; preds = %8
  %15 = and i32 %11, 1114112
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !419
  %20 = load ptr, ptr @df, align 8, !tbaa !390
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !461
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds i32, ptr %22, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !426
  %26 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 3, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !464
  %28 = getelementptr inbounds i32, ptr %27, i64 %23
  %29 = load i32, ptr %28, align 4, !tbaa !426
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %25, i32 noundef %29) #17
  br label %30

30:                                               ; preds = %17, %14
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !419
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %32) #17
  br label %34

34:                                               ; preds = %30, %8
  %35 = getelementptr inbounds ptr, ptr %10, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !390
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %8, !prof !465, !llvm.loop !466

38:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #2 !prof !467 !PGOFuncName !468 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !469
  ret ptr %3
}

; Function Attrs: optsize
declare void @bitmap_clear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !471 !PGOFuncName !472 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !401
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !473

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_simulate_one_insn(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !474 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !419
  %6 = load ptr, ptr @df, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !475
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !476
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16, !prof !477

16:                                               ; preds = %3, %51
  %17 = phi ptr [ %53, %51 ], [ %14, %3 ]
  %18 = phi ptr [ %52, %51 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !419
  %21 = load ptr, ptr @df, align 8, !tbaa !390
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 27
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26, !prof !478

26:                                               ; preds = %16
  %27 = icmp ugt i32 %20, 52
  br i1 %27, label %28, label %51

28:                                               ; preds = %26, %16
  %29 = load i32, ptr %17, align 8
  %30 = and i32 %29, 1114112
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43, !prof !479

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !461
  %35 = zext i32 %20 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !426
  %38 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 3, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !464
  %40 = getelementptr inbounds i32, ptr %39, i64 %35
  %41 = load i32, ptr %40, align 4, !tbaa !426
  tail call void @bitmap_clear_range(ptr noundef %2, i32 noundef %37, i32 noundef %41) #17
  %42 = load i32, ptr %17, align 8
  br label %43

43:                                               ; preds = %32, %28
  %44 = phi i32 [ %42, %32 ], [ %29, %28 ]
  %45 = and i32 %44, 12582912
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51, !prof !480

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !419
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %49) #17
  br label %51

51:                                               ; preds = %43, %47, %26
  %52 = getelementptr inbounds ptr, ptr %18, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !390
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %16, !prof !481, !llvm.loop !482

55:                                               ; preds = %51, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_add_problem() local_unnamed_addr #0 !prof !416 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_RD) #17
  ret void
}

; Function Attrs: optsize
declare void @df_add_problem(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_alloc(ptr nocapture noundef readonly %0) #0 !prof !483 !PGOFuncName !484 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 3
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !485
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !486

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 40, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !485
  %16 = load ptr, ptr %13, align 8, !tbaa !390
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !487
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !486

22:                                               ; preds = %17
  %23 = load ptr, ptr %20, align 8, !tbaa !488
  tail call void @bitmap_clear(ptr noundef %23) #17
  %24 = getelementptr inbounds %struct.df_rd_problem_data, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !492
  tail call void @bitmap_clear(ptr noundef %25) #17
  br label %36

26:                                               ; preds = %17
  %27 = tail call ptr @xmalloc(i64 noundef 120) #17
  %28 = load ptr, ptr @df, align 8, !tbaa !390
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !390
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 5
  store ptr %27, ptr %31, align 8, !tbaa !487
  %32 = getelementptr inbounds %struct.df_rd_problem_data, ptr %27, i64 0, i32 2
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %32) #17
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %32) #17
  store ptr %33, ptr %27, align 8, !tbaa !488
  %34 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %32) #17
  %35 = getelementptr inbounds %struct.df_rd_problem_data, ptr %27, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !492
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi ptr [ %20, %22 ], [ %27, %26 ]
  %38 = load ptr, ptr @df, align 8, !tbaa !390
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1, i64 3
  %40 = load ptr, ptr %39, align 8, !tbaa !390
  tail call void @df_grow_bb_info(ptr noundef %40) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43, !prof !493

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.df_rd_problem_data, ptr %37, i64 0, i32 2
  br label %45

45:                                               ; preds = %43, %71
  %46 = load i32, ptr %2, align 4, !tbaa !426
  %47 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %46) #18
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49, !prof !494

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !495
  tail call void @bitmap_clear(ptr noundef %50) #17
  %51 = getelementptr inbounds %struct.df_rd_bb_info, ptr %47, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !497
  tail call void @bitmap_clear(ptr noundef %52) #17
  %53 = getelementptr inbounds %struct.df_rd_bb_info, ptr %47, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !498
  tail call void @bitmap_clear(ptr noundef %54) #17
  br label %71

55:                                               ; preds = %45
  %56 = load ptr, ptr @df, align 8, !tbaa !390
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 3
  %58 = load ptr, ptr %57, align 8, !tbaa !390
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !485
  %61 = tail call ptr @pool_alloc(ptr noundef %60) #17
  tail call fastcc void @df_rd_set_bb_info(i32 noundef %46, ptr noundef %61) #18
  %62 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  store ptr %62, ptr %61, align 8, !tbaa !495
  %63 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %64 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !497
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %66 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !498
  %67 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %68 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 3
  store ptr %67, ptr %68, align 8, !tbaa !499
  %69 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %70 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 4
  store ptr %69, ptr %70, align 8, !tbaa !500
  br label %71

71:                                               ; preds = %55, %49
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %45, !prof !501, !llvm.loop !502

74:                                               ; preds = %71, %36
  %75 = load ptr, ptr @df, align 8, !tbaa !390
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !390
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 9
  store i8 1, ptr %78, align 2, !tbaa !503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !504 !PGOFuncName !505 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4, !prof !506

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !495
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  store ptr null, ptr %1, align 8, !tbaa !495
  %6 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !497
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %6, align 8, !tbaa !497
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !498
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !498
  %10 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !499
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !499
  %12 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !500
  tail call void @bitmap_obstack_free(ptr noundef %13) #17
  store ptr null, ptr %12, align 8, !tbaa !500
  %14 = load ptr, ptr @df, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 3
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !485
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_local_compute(ptr nocapture noundef readonly %0) #0 !prof !483 !PGOFuncName !507 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !390
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !487
  %10 = load ptr, ptr %9, align 8, !tbaa !488
  %11 = getelementptr inbounds %struct.df_rd_problem_data, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !492
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  store ptr %13, ptr @seen_in_block, align 8, !tbaa !390
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  store ptr %14, ptr @seen_in_insn, align 8, !tbaa !390
  tail call void @df_maybe_reorganize_def_refs(i32 noundef 3) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17, !prof !493

17:                                               ; preds = %1, %17
  %18 = load i32, ptr %2, align 4, !tbaa !426
  tail call fastcc void @df_rd_bb_local_compute(i32 noundef %18) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %17, !prof !501, !llvm.loop !508

21:                                               ; preds = %17, %1
  %22 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !390
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %22, i32 noundef 0, ptr noundef nonnull %4) #18
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !428
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %44, label %25, !prof !493

25:                                               ; preds = %21, %41
  %26 = load ptr, ptr @df, align 8, !tbaa !390
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 3, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !464
  %29 = load i32, ptr %4, align 4, !tbaa !426
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !426
  %33 = icmp ugt i32 %32, 32
  br i1 %33, label %34, label %36, !prof !509

34:                                               ; preds = %25
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef %29) #17
  br label %41

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 3, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !461
  %39 = getelementptr inbounds i32, ptr %38, i64 %30
  %40 = load i32, ptr %39, align 4, !tbaa !426
  tail call void @bitmap_set_range(ptr noundef %12, i32 noundef %40, i32 noundef %32) #17
  br label %41

41:                                               ; preds = %34, %36
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %42 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !428
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %25, !prof !510, !llvm.loop !511

44:                                               ; preds = %41, %21
  %45 = load ptr, ptr @seen_in_block, align 8, !tbaa !390
  tail call void @bitmap_obstack_free(ptr noundef %45) #17
  store ptr null, ptr @seen_in_block, align 8, !tbaa !390
  %46 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  tail call void @bitmap_obstack_free(ptr noundef %46) #17
  store ptr null, ptr @seen_in_insn, align 8, !tbaa !390
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_init_solution(ptr nocapture noundef readonly %0) #0 !prof !483 !PGOFuncName !512 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !493

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !500
  %11 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !498
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !499
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !prof !501, !llvm.loop !513

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @df_worklist_dataflow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !514 !PGOFuncName !515 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !433
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !395
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !499
  %11 = load ptr, ptr %0, align 8, !tbaa !429
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !395
  %14 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %13) #18
  %15 = getelementptr inbounds %struct.df_rd_bb_info, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !500
  %17 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !431
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %55, !prof !516

21:                                               ; preds = %1
  %22 = and i32 %18, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24, !prof !516

24:                                               ; preds = %21
  %25 = load ptr, ptr @df, align 8, !tbaa !390
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 1, i64 3
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !487
  %30 = load ptr, ptr %29, align 8, !tbaa !488
  %31 = getelementptr inbounds %struct.df_rd_problem_data, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !492
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  tail call void @bitmap_copy(ptr noundef %33, ptr noundef %16) #17
  %34 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %33, ptr noundef %32) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %30, i32 noundef 0, ptr noundef nonnull %3) #18
  %35 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !428
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %24, %37
  %38 = load ptr, ptr @df, align 8, !tbaa !390
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 3, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !461
  %41 = load i32, ptr %3, align 4, !tbaa !426
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !426
  %45 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 3, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !464
  %47 = getelementptr inbounds i32, ptr %46, i64 %42
  %48 = load i32, ptr %47, align 4, !tbaa !426
  tail call void @bitmap_clear_range(ptr noundef %33, i32 noundef %44, i32 noundef %48) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !428
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %37, !llvm.loop !517

51:                                               ; preds = %37, %24
  %52 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %10, ptr noundef %33) #17
  tail call void @bitmap_obstack_free(ptr noundef %33) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  br label %55

53:                                               ; preds = %21
  %54 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %10, ptr noundef %16) #17
  br label %55

55:                                               ; preds = %51, %53, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_rd_transfer_function(i32 noundef %0) #0 !prof !518 !PGOFuncName !519 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %5 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !499
  %7 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !500
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !498
  %11 = load ptr, ptr %4, align 8, !tbaa !495
  %12 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !497
  %14 = load ptr, ptr %13, align 8, !tbaa !520
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !522

16:                                               ; preds = %1
  %17 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %8, ptr noundef %10, ptr noundef %6, ptr noundef %11) #17
  br label %49

18:                                               ; preds = %1
  %19 = load ptr, ptr @df, align 8, !tbaa !390
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !390
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !487
  %24 = getelementptr inbounds %struct.df_rd_problem_data, ptr %23, i64 0, i32 2
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %24) #17
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %6) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %2) #18
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28, !prof !523

28:                                               ; preds = %18, %28
  %29 = load ptr, ptr @df, align 8, !tbaa !390
  %30 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !461
  %32 = load i32, ptr %2, align 4, !tbaa !426
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !426
  %36 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !464
  %38 = getelementptr inbounds i32, ptr %37, i64 %33
  %39 = load i32, ptr %38, align 4, !tbaa !426
  tail call void @bitmap_clear_range(ptr noundef %25, i32 noundef %35, i32 noundef %39) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %28, !prof !524, !llvm.loop !525

42:                                               ; preds = %28, %18
  %43 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %25, ptr noundef %11) #17
  %44 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %25, ptr noundef %10) #17
  %45 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %25, ptr noundef %8) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48, !prof !526

47:                                               ; preds = %42
  tail call void @bitmap_obstack_free(ptr noundef %8) #17
  store ptr %25, ptr %7, align 8, !tbaa !500
  br label %49

48:                                               ; preds = %42
  tail call void @bitmap_obstack_free(ptr noundef %25) #17
  br label %49

49:                                               ; preds = %47, %48, %16
  %50 = phi i8 [ %17, %16 ], [ 0, %48 ], [ 1, %47 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_free() #0 !prof !527 !PGOFuncName !528 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 3
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !487
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7, !prof !529

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !485
  tail call void @free_alloc_pool(ptr noundef %9) #17
  %10 = getelementptr inbounds %struct.df_rd_problem_data, ptr %5, i64 0, i32 2
  tail call void @bitmap_obstack_release(ptr noundef nonnull %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !401
  %15 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !404
  tail call void @free(ptr noundef %16) #18
  %17 = load ptr, ptr @df, align 8, !tbaa !390
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !487
  tail call void @free(ptr noundef %21) #18
  %22 = load ptr, ptr @df, align 8, !tbaa !390
  %23 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 1, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !390
  br label %25

25:                                               ; preds = %7, %0
  %26 = phi ptr [ %24, %7 ], [ %3, %0 ]
  tail call void @free(ptr noundef %26) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_start_dump(ptr noundef %0) #0 !prof !416 !PGOFuncName !530 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !531
  %7 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !404
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !487
  %13 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %0)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 22, i64 1, ptr %0)
  %15 = load ptr, ptr %12, align 8, !tbaa !488
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %16 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %0)
  %17 = getelementptr inbounds %struct.df_rd_problem_data, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !492
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %10
  %21 = zext i32 %6 to i64
  %22 = load ptr, ptr @df, align 8, !tbaa !390
  br label %23

23:                                               ; preds = %20, %39
  %24 = phi ptr [ %22, %20 ], [ %40, %39 ]
  %25 = phi i64 [ 0, %20 ], [ %41, %39 ]
  %26 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 3, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !464
  %28 = getelementptr inbounds i32, ptr %27, i64 %25
  %29 = load i32, ptr %28, align 4, !tbaa !426
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 3, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !461
  %34 = getelementptr inbounds i32, ptr %33, i64 %25
  %35 = load i32, ptr %34, align 4, !tbaa !426
  %36 = trunc i64 %25 to i32
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %36, i32 noundef %35, i32 noundef %29) #18
  %38 = load ptr, ptr @df, align 8, !tbaa !390
  br label %39

39:                                               ; preds = %23, %31
  %40 = phi ptr [ %24, %23 ], [ %38, %31 ]
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, %21
  br i1 %42, label %43, label %23, !llvm.loop !532

43:                                               ; preds = %39, %10
  %44 = tail call i32 @fputc(i32 10, ptr %0)
  br label %45

45:                                               ; preds = %1, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !533 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !499
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @bitmap_count_bits(ptr noundef nonnull %9) #17
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %13) #18
  %15 = load ptr, ptr %8, align 8, !tbaa !499
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %16 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !498
  %18 = tail call i64 @bitmap_count_bits(ptr noundef %17) #17
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %19) #18
  %21 = load ptr, ptr %16, align 8, !tbaa !498
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %22 = load ptr, ptr %5, align 8, !tbaa !495
  %23 = tail call i64 @bitmap_count_bits(ptr noundef %22) #17
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %24) #18
  %26 = load ptr, ptr %5, align 8, !tbaa !495
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  br label %27

27:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !534 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !500
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @bitmap_count_bits(ptr noundef nonnull %9) #17
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %13) #18
  %15 = load ptr, ptr %8, align 8, !tbaa !500
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  br label %16

16:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 !prof !535 !PGOFuncName !536 {
  %5 = load ptr, ptr %1, align 8, !tbaa !520
  store ptr %5, ptr %0, align 8, !tbaa !537
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !539
  %7 = icmp eq ptr %5, null
  %8 = lshr i32 %2, 7
  br i1 %7, label %9, label %11, !prof !540

9:                                                ; preds = %16, %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !537
  %10 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !541
  br label %19

11:                                               ; preds = %4, %16
  %12 = phi ptr [ %17, %16 ], [ %5, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !541
  %15 = icmp ult i32 %14, %8
  br i1 %15, label %16, label %19, !prof !543

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !544
  store ptr %17, ptr %0, align 8, !tbaa !537
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %11, !prof !545

19:                                               ; preds = %11, %9
  %20 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %21 = phi ptr [ @bitmap_zero_bits, %9 ], [ %12, %11 ]
  %22 = icmp eq i32 %20, %8
  %23 = shl i32 %20, 7
  %24 = select i1 %22, i32 %2, i32 %23, !prof !546
  %25 = lshr i32 %24, 6
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !547
  %28 = zext nneg i32 %26 to i64
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !548
  %31 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %32 = and i32 %24, 63
  %33 = zext nneg i32 %32 to i64
  %34 = lshr i64 %30, %33
  store i64 %34, ptr %31, align 8, !tbaa !549
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = add i32 %24, %36
  store i32 %37, ptr %3, align 4, !tbaa !426
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !550 !PGOFuncName !551 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !549
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !552

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !553

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !426
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !554, !llvm.loop !555

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !426
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !426
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !547
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !537
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !547
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !556

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !548
  store i64 %35, ptr %3, align 8, !tbaa !549
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !557

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !426
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !426
  %40 = load i32, ptr %23, align 8, !tbaa !547
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !547
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !558, !llvm.loop !559

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !544
  store ptr %44, ptr %0, align 8, !tbaa !537
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !560

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !541
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !426
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !549
  store i32 %16, ptr %1, align 4, !tbaa !426
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_rd_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !561 !PGOFuncName !562 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !401
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !563

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !564 !PGOFuncName !565 {
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 3
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !566

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !401
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16, !prof !567

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !390
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !404
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !568 !PGOFuncName !569 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !549
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !549
  %6 = load i32, ptr %1, align 4, !tbaa !426
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !426
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_maybe_reorganize_def_refs(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !458 !PGOFuncName !570 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  %9 = load ptr, ptr @seen_in_block, align 8, !tbaa !390
  tail call void @bitmap_clear(ptr noundef %9) #17
  %10 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  tail call void @bitmap_clear(ptr noundef %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18, !prof !572

16:                                               ; preds = %1
  %17 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_rd_bb_local_compute_process_def(ptr noundef %8, ptr noundef %17, i32 noundef 0) #18
  br label %18

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !419
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !419
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24, !prof !573

24:                                               ; preds = %18, %51
  %25 = phi ptr [ %53, %51 ], [ %22, %18 ]
  %26 = load ptr, ptr %19, align 8, !tbaa !419
  %27 = load ptr, ptr %26, align 8, !tbaa !574
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !419
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %55, label %31, !prof !576

31:                                               ; preds = %24
  %32 = load i32, ptr %25, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %51, !prof !577

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !419
  %39 = load ptr, ptr @df, align 8, !tbaa !390
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !475
  %42 = zext i32 %38 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !390
  %45 = getelementptr inbounds %struct.df_insn_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !476
  tail call fastcc void @df_rd_bb_local_compute_process_def(ptr noundef %8, ptr noundef %46, i32 noundef 0) #18
  %47 = load ptr, ptr @seen_in_block, align 8, !tbaa !390
  %48 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  %49 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %47, ptr noundef %48) #17
  %50 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  tail call void @bitmap_clear(ptr noundef %50) #17
  br label %51

51:                                               ; preds = %31, %36
  %52 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !419
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24, !prof !578, !llvm.loop !579

55:                                               ; preds = %24, %51, %18
  %56 = load ptr, ptr @df, align 8, !tbaa !390
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 27
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63, !prof !572

61:                                               ; preds = %55
  %62 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_rd_bb_local_compute_process_def(ptr noundef %8, ptr noundef %62, i32 noundef 2) #18
  br label %63

63:                                               ; preds = %61, %55
  ret void
}

; Function Attrs: optsize
declare void @bitmap_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !580 !PGOFuncName !581 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_bb_local_compute_process_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !582 !PGOFuncName !583 {
  %4 = load ptr, ptr %1, align 8, !tbaa !390
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6, !prof !584

6:                                                ; preds = %3, %67
  %7 = phi ptr [ %69, %67 ], [ %4, %3 ]
  %8 = phi ptr [ %68, %67 ], [ %1, %3 ]
  %9 = load i32, ptr %7, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %67, !prof !585

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !419
  %16 = load ptr, ptr @df, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !461
  %19 = zext i32 %15 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !426
  %22 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 3, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !464
  %24 = getelementptr inbounds i32, ptr %23, i64 %19
  %25 = load i32, ptr %24, align 4, !tbaa !426
  %26 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 27
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30, !prof !586

30:                                               ; preds = %13
  %31 = icmp ugt i32 %15, 52
  br i1 %31, label %32, label %67

32:                                               ; preds = %30, %13
  %33 = load ptr, ptr @seen_in_block, align 8, !tbaa !390
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %15) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67, !prof !587

36:                                               ; preds = %32
  %37 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %37, i32 noundef %15) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55, !prof !588

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 8
  %42 = and i32 %41, 5308416
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55, !prof !589

44:                                               ; preds = %40
  %45 = icmp ugt i32 %25, 32
  br i1 %45, label %46, label %50, !prof !590

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.df_rd_bb_info, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !497
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %15) #17
  br label %52

50:                                               ; preds = %44
  %51 = load ptr, ptr %0, align 8, !tbaa !495
  tail call void @bitmap_set_range(ptr noundef %51, i32 noundef %21, i32 noundef %25) #17
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.df_rd_bb_info, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !498
  tail call void @bitmap_clear_range(ptr noundef %54, i32 noundef %21, i32 noundef %25) #17
  br label %55

55:                                               ; preds = %52, %40, %36
  %56 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %56, i32 noundef %15) #17
  %58 = load i32, ptr %7, align 8
  %59 = and i32 %58, 12582912
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67, !prof !591

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.df_rd_bb_info, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !498
  %64 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !419
  %66 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %63, i32 noundef %65) #17
  br label %67

67:                                               ; preds = %30, %55, %61, %32, %6
  %68 = getelementptr inbounds ptr, ptr %8, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !390
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %6, !prof !592, !llvm.loop !593

71:                                               ; preds = %67, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_and_compl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_lr_add_problem() local_unnamed_addr #0 !prof !594 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_LR) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !595
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_alloc(ptr nocapture readnone %0) #0 !prof !596 !PGOFuncName !597 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !485
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !598

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.22, i64 noundef 32, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !485
  %16 = load ptr, ptr %13, align 8, !tbaa !390
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  tail call void @df_grow_bb_info(ptr noundef %18) #18
  %19 = load ptr, ptr @df, align 8, !tbaa !390
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !390
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !595
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %23, i32 noundef 0, ptr noundef nonnull %2) #18
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %55, label %26, !prof !599

26:                                               ; preds = %17, %48
  %27 = load i32, ptr %2, align 4, !tbaa !426
  %28 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %27) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !600

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !601
  tail call void @bitmap_clear(ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !603
  tail call void @bitmap_clear(ptr noundef %33) #17
  br label %48

34:                                               ; preds = %26
  %35 = load ptr, ptr @df, align 8, !tbaa !390
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 1, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !390
  %38 = getelementptr inbounds %struct.dataflow, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !485
  %40 = tail call ptr @pool_alloc(ptr noundef %39) #17
  tail call fastcc void @df_lr_set_bb_info(i32 noundef %27, ptr noundef %40) #18
  %41 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !603
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %43, ptr %40, align 8, !tbaa !601
  %44 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %45 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !604
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %47 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !605
  br label %48

48:                                               ; preds = %34, %30
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %26, !prof !606, !llvm.loop !607

51:                                               ; preds = %48
  %52 = load ptr, ptr @df, align 8, !tbaa !390
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !390
  br label %55

55:                                               ; preds = %51, %17
  %56 = phi ptr [ %54, %51 ], [ %21, %17 ]
  %57 = getelementptr inbounds %struct.dataflow, ptr %56, i64 0, i32 9
  store i8 0, ptr %57, align 2, !tbaa !503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_reset(ptr nocapture noundef readonly %0) #0 !prof !416 !PGOFuncName !608 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !604
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !605
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !609

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !610 !PGOFuncName !611 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4, !prof !612

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !603
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !603
  %7 = load ptr, ptr %1, align 8, !tbaa !601
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !601
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !604
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !604
  %10 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !605
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !605
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !485
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_local_compute(ptr nocapture readnone %0) #0 !prof !596 !PGOFuncName !613 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !614
  tail call void @bitmap_clear(ptr noundef %6) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !390
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !614
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef 7) #17
  %11 = load i32, ptr @reload_completed, align 4, !tbaa !426
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %51, !prof !615

13:                                               ; preds = %1
  %14 = load ptr, ptr @df, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !614
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef 20) #17
  %18 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !419
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20, !prof !616

20:                                               ; preds = %13
  %21 = load ptr, ptr @df, align 8, !tbaa !390
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !614
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef 16) #17
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, ptr @flag_pic, align 4, !tbaa !426
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %51, label %28, !prof !617

28:                                               ; preds = %25
  %29 = load i32, ptr @reload_completed, align 4, !tbaa !426
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !617

31:                                               ; preds = %28
  %32 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !390
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #18
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %51, label %38

35:                                               ; preds = %28
  %36 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !419
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %51, label %45

38:                                               ; preds = %31
  %39 = zext i32 %33 to i64
  %40 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !419
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #18
  br label %45

45:                                               ; preds = %35, %43
  %46 = phi i32 [ %44, %43 ], [ 3, %35 ]
  %47 = load ptr, ptr @df, align 8, !tbaa !390
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !614
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %49, i32 noundef %46) #17
  br label %51

51:                                               ; preds = %38, %25, %31, %35, %45, %1
  %52 = load ptr, ptr @df, align 8, !tbaa !390
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !390
  %55 = getelementptr inbounds %struct.dataflow, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !595
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %56, i32 noundef 0, ptr noundef nonnull %2) #18
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %79, label %59, !prof !599

59:                                               ; preds = %51, %70
  %60 = load i32, ptr %2, align 4, !tbaa !426
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %69, !prof !618

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef 1) #18
  %64 = getelementptr inbounds %struct.df_lr_bb_info, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !603
  %66 = load ptr, ptr @df, align 8, !tbaa !390
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !619
  tail call void @bitmap_copy(ptr noundef %65, ptr noundef %68) #17
  br label %70

69:                                               ; preds = %59
  tail call fastcc void @df_lr_bb_local_compute(i32 noundef %60) #18
  br label %70

70:                                               ; preds = %62, %69
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %71 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %59, !prof !606, !llvm.loop !620

73:                                               ; preds = %70
  %74 = load ptr, ptr @df, align 8, !tbaa !390
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 1, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !390
  %77 = getelementptr inbounds %struct.dataflow, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !595
  br label %79

79:                                               ; preds = %73, %51
  %80 = phi ptr [ %78, %73 ], [ %56, %51 ]
  tail call void @bitmap_clear(ptr noundef %80) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_init(ptr nocapture noundef readonly %0) #0 !prof !596 !PGOFuncName !621 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !599

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !604
  %11 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !603
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !605
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !prof !622, !llvm.loop !623

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_confluence_0(ptr noundef readonly %0) #0 !prof !624 !PGOFuncName !625 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !626
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %17, label %8, !prof !627

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !395
  %11 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %10) #18
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !605
  %14 = load ptr, ptr @df, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !614
  tail call void @bitmap_copy(ptr noundef %13, ptr noundef %16) #17
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !628 !PGOFuncName !629 {
  %2 = load ptr, ptr %0, align 8, !tbaa !429
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !605
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !433
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !395
  %12 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %11) #18
  %13 = getelementptr inbounds %struct.df_lr_bb_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !604
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !431
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19, !prof !630

19:                                               ; preds = %1
  %20 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !390
  %21 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %7, ptr noundef %14, ptr noundef %20) #17
  br label %24

22:                                               ; preds = %1
  %23 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %7, ptr noundef %14) #17
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr @df, align 8, !tbaa !390
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !614
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %7, ptr noundef %27) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_lr_transfer_function(i32 noundef %0) #0 !prof !631 !PGOFuncName !632 {
  %2 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !604
  %5 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !605
  %7 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !603
  %9 = load ptr, ptr %2, align 8, !tbaa !601
  %10 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %4, ptr noundef %8, ptr noundef %6, ptr noundef %9) #17
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_finalize(ptr noundef %0) #0 !prof !596 !PGOFuncName !633 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 8
  store i8 0, ptr %5, align 1, !tbaa !634
  %6 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 27
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10, !prof !635

10:                                               ; preds = %1
  tail call void @run_fast_df_dce() #17
  %11 = load ptr, ptr @df, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !634
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18, !prof !636

17:                                               ; preds = %10, %1, %18
  ret void

18:                                               ; preds = %10
  %19 = tail call i32 @df_clear_flags(i32 noundef 1) #17
  tail call void @df_lr_alloc(ptr poison) #18
  tail call void @df_lr_local_compute(ptr poison) #18
  %20 = load ptr, ptr @df, align 8, !tbaa !390
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !390
  %23 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !637
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !638
  tail call void @df_worklist_dataflow(ptr noundef %22, ptr noundef %0, ptr noundef %24, i32 noundef %26) #17
  tail call void @df_lr_finalize(ptr noundef %0) #18
  %27 = tail call i32 @df_set_flags(i32 noundef 1) #17
  br label %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_free() #0 !prof !594 !PGOFuncName !639 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !404
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7, !prof !640

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !401
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11, !prof !641

11:                                               ; preds = %7, %25
  %12 = phi ptr [ %26, %25 ], [ %1, %7 ]
  %13 = phi i32 [ %27, %25 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !642

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !603
  tail call void @bitmap_obstack_free(ptr noundef %18) #17
  store ptr null, ptr %17, align 8, !tbaa !603
  %19 = load ptr, ptr %14, align 8, !tbaa !601
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %14, align 8, !tbaa !601
  %20 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !604
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !604
  %22 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !605
  tail call void @bitmap_obstack_free(ptr noundef %23) #17
  store ptr null, ptr %22, align 8, !tbaa !605
  %24 = load ptr, ptr @df, align 8, !tbaa !390
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi ptr [ %24, %16 ], [ %12, %11 ]
  %27 = add nuw i32 %13, 1
  %28 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !390
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !401
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %11, label %33, !prof !643, !llvm.loop !644

33:                                               ; preds = %25, %7
  %34 = phi ptr [ %3, %7 ], [ %29, %25 ]
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !485
  tail call void @free_alloc_pool(ptr noundef %36) #17
  %37 = load ptr, ptr @df, align 8, !tbaa !390
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !390
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 2
  store i32 0, ptr %40, align 8, !tbaa !401
  %41 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !404
  tail call void @free(ptr noundef %42) #18
  %43 = load ptr, ptr @df, align 8, !tbaa !390
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !390
  br label %46

46:                                               ; preds = %33, %0
  %47 = phi ptr [ %45, %33 ], [ %3, %0 ]
  %48 = getelementptr inbounds %struct.dataflow, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !595
  tail call void @bitmap_obstack_free(ptr noundef %49) #17
  %50 = load ptr, ptr @df, align 8, !tbaa !390
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 1, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !390
  %53 = getelementptr inbounds %struct.dataflow, ptr %52, i64 0, i32 4
  store ptr null, ptr %53, align 8, !tbaa !595
  %54 = load ptr, ptr %51, align 8, !tbaa !390
  tail call void @free(ptr noundef %54) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !645 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !604
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !604
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !487
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 13, i64 1, ptr %1)
  %22 = load ptr, ptr %18, align 8, !tbaa !646
  %23 = load i32, ptr %3, align 8, !tbaa !395
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !390
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #17
  br label %27

27:                                               ; preds = %20, %11
  %28 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr %1)
  %29 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !603
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %30) #17
  %31 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 12, i64 1, ptr %1)
  %32 = load ptr, ptr %5, align 8, !tbaa !601
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %32) #17
  br label %33

33:                                               ; preds = %2, %7, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !648 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !605
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !605
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !487
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %1)
  %22 = getelementptr inbounds %struct.df_lr_problem_data, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !649
  %24 = load i32, ptr %3, align 8, !tbaa !395
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %27) #17
  br label %28

28:                                               ; preds = %11, %20, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_verify_solution_start() #0 !prof !416 !PGOFuncName !650 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !634
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !487
  br label %67

9:                                                ; preds = %0
  store i8 1, ptr %4, align 1, !tbaa !634
  %10 = tail call ptr @xmalloc(i64 noundef 16) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 5
  store ptr %10, ptr %14, align 8, !tbaa !487
  %15 = load ptr, ptr @cfun, align 8, !tbaa !390
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !411
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !413
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xmalloc(i64 noundef %21) #17
  store ptr %22, ptr %10, align 8, !tbaa !646
  %23 = load ptr, ptr @cfun, align 8, !tbaa !390
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !411
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !413
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #17
  %31 = getelementptr inbounds %struct.df_lr_problem_data, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !649
  %32 = load ptr, ptr @cfun, align 8, !tbaa !390
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !411
  %35 = load ptr, ptr %34, align 8, !tbaa !390
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %9, %37
  %38 = phi ptr [ %65, %37 ], [ %35, %9 ]
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %40 = load ptr, ptr %10, align 8, !tbaa !646
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !395
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %39, ptr %44, align 8, !tbaa !390
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %46 = load ptr, ptr %31, align 8, !tbaa !649
  %47 = load i32, ptr %41, align 8, !tbaa !395
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !390
  %50 = load ptr, ptr %10, align 8, !tbaa !646
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !390
  %53 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %47) #18
  %54 = getelementptr inbounds %struct.df_lr_bb_info, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !604
  tail call void @bitmap_copy(ptr noundef %52, ptr noundef %55) #17
  %56 = load ptr, ptr %31, align 8, !tbaa !649
  %57 = load i32, ptr %41, align 8, !tbaa !395
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !390
  %61 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %57) #18
  %62 = getelementptr inbounds %struct.df_lr_bb_info, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !605
  tail call void @bitmap_copy(ptr noundef %60, ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !390
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %37, !llvm.loop !651

67:                                               ; preds = %37, %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_verify_solution_end() #0 !prof !416 !PGOFuncName !652 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !487
  %6 = icmp eq ptr %5, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %9 = load i8, ptr %8, align 1, !tbaa !634
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i8 0, ptr %8, align 1, !tbaa !634
  br label %49

12:                                               ; preds = %7
  %13 = load ptr, ptr @cfun, align 8, !tbaa !390
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !411
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %45
  %21 = phi ptr [ %16, %18 ], [ %47, %45 ]
  %22 = load ptr, ptr %5, align 8, !tbaa !646
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !395
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  %28 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %24) #18
  %29 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !604
  %31 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %27, ptr noundef %30) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %19, align 8, !tbaa !649
  %35 = load i32, ptr %23, align 8, !tbaa !395
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !390
  %39 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %35) #18
  %40 = getelementptr inbounds %struct.df_lr_bb_info, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !605
  %42 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %38, ptr noundef %41) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1203, ptr noundef nonnull @.str.1) #17
  br label %45

45:                                               ; preds = %33, %44
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !390
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %20, !llvm.loop !653

49:                                               ; preds = %45, %12, %11
  %50 = load ptr, ptr @cfun, align 8, !tbaa !390
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !411
  %53 = load ptr, ptr %52, align 8, !tbaa !390
  %54 = icmp eq ptr %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi ptr [ %53, %55 ], [ %77, %57 ]
  %59 = load ptr, ptr %5, align 8, !tbaa !646
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !395
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !390
  tail call void @bitmap_obstack_free(ptr noundef %64) #17
  %65 = load ptr, ptr %5, align 8, !tbaa !646
  %66 = load i32, ptr %60, align 8, !tbaa !395
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  store ptr null, ptr %68, align 8, !tbaa !390
  %69 = load ptr, ptr %56, align 8, !tbaa !649
  %70 = getelementptr inbounds ptr, ptr %69, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !390
  tail call void @bitmap_obstack_free(ptr noundef %71) #17
  %72 = load ptr, ptr %56, align 8, !tbaa !649
  %73 = load i32, ptr %60, align 8, !tbaa !395
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  store ptr null, ptr %75, align 8, !tbaa !390
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !390
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %57, !llvm.loop !654

79:                                               ; preds = %57, %49
  %80 = load ptr, ptr %5, align 8, !tbaa !646
  tail call void @free(ptr noundef %80) #18
  %81 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !649
  tail call void @free(ptr noundef %82) #18
  tail call void @free(ptr noundef nonnull %5) #18
  %83 = load ptr, ptr @df, align 8, !tbaa !390
  %84 = getelementptr inbounds %struct.df, ptr %83, i64 0, i32 1, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !390
  %86 = getelementptr inbounds %struct.dataflow, ptr %85, i64 0, i32 5
  store ptr null, ptr %86, align 8, !tbaa !487
  br label %87

87:                                               ; preds = %0, %79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_lr_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !655 !PGOFuncName !656 {
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !657

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 745, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !401
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16, !prof !658

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !390
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !404
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !659 !PGOFuncName !660 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !419
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_lr_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !661 !PGOFuncName !662 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %9 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12, !prof !663

12:                                               ; preds = %1, %26
  %13 = phi ptr [ %28, %26 ], [ %10, %1 ]
  %14 = phi ptr [ %27, %26 ], [ %9, %1 ]
  %15 = load i32, ptr %13, align 8
  %16 = and i32 %15, 131072
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26, !prof !664

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  %20 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !419
  %22 = load ptr, ptr %8, align 8, !tbaa !601
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %21) #17
  %24 = load ptr, ptr %19, align 8, !tbaa !603
  %25 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %24, i32 noundef %21) #17
  br label %26

26:                                               ; preds = %18, %12
  %27 = getelementptr inbounds ptr, ptr %14, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !390
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %12, !prof !665, !llvm.loop !666

30:                                               ; preds = %26, %1
  %31 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %32 = load ptr, ptr %31, align 8, !tbaa !390
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34, !prof !667

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  br label %36

36:                                               ; preds = %34, %47
  %37 = phi ptr [ %32, %34 ], [ %49, %47 ]
  %38 = phi ptr [ %31, %34 ], [ %48, %47 ]
  %39 = load i32, ptr %37, align 8
  %40 = and i32 %39, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47, !prof !668

42:                                               ; preds = %36
  %43 = load ptr, ptr %35, align 8, !tbaa !603
  %44 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !419
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %43, i32 noundef %45) #17
  br label %47

47:                                               ; preds = %42, %36
  %48 = getelementptr inbounds ptr, ptr %38, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !390
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !prof !669, !llvm.loop !670

51:                                               ; preds = %47, %30
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !419
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !419
  %56 = icmp eq ptr %55, null
  br i1 %56, label %127, label %57, !prof !671

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  br label %59

59:                                               ; preds = %57, %123
  %60 = phi ptr [ %55, %57 ], [ %125, %123 ]
  %61 = load ptr, ptr %52, align 8, !tbaa !419
  %62 = load ptr, ptr %61, align 8, !tbaa !574
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !419
  %65 = icmp eq ptr %60, %64
  br i1 %65, label %127, label %66, !prof !672

66:                                               ; preds = %59
  %67 = load i32, ptr %60, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -11
  %70 = icmp ult i32 %69, -3
  br i1 %70, label %123, label %71, !prof !673

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !419
  %74 = load ptr, ptr @df, align 8, !tbaa !390
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !475
  %77 = zext i32 %73 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !390
  %80 = getelementptr inbounds %struct.df_insn_info, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !476
  %82 = load ptr, ptr %81, align 8, !tbaa !390
  %83 = icmp eq ptr %82, null
  br i1 %83, label %107, label %84, !prof !674

84:                                               ; preds = %71, %97
  %85 = phi ptr [ %99, %97 ], [ %82, %71 ]
  %86 = phi ptr [ %98, %97 ], [ %81, %71 ]
  %87 = load i32, ptr %85, align 8
  %88 = and i32 %87, 1114112
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97, !prof !675

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.df_base_ref, ptr %85, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !419
  %93 = load ptr, ptr %8, align 8, !tbaa !601
  %94 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %93, i32 noundef %92) #17
  %95 = load ptr, ptr %58, align 8, !tbaa !603
  %96 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %95, i32 noundef %92) #17
  br label %97

97:                                               ; preds = %90, %84
  %98 = getelementptr inbounds ptr, ptr %86, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !390
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %84, !prof !676, !llvm.loop !677

101:                                              ; preds = %97
  %102 = load ptr, ptr @df, align 8, !tbaa !390
  %103 = getelementptr inbounds %struct.df, ptr %102, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !475
  %105 = getelementptr inbounds ptr, ptr %104, i64 %77
  %106 = load ptr, ptr %105, align 8, !tbaa !390
  br label %107

107:                                              ; preds = %101, %71
  %108 = phi ptr [ %106, %101 ], [ %79, %71 ]
  %109 = getelementptr inbounds %struct.df_insn_info, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !678
  %111 = load ptr, ptr %110, align 8, !tbaa !390
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113, !prof !674

113:                                              ; preds = %107, %113
  %114 = phi ptr [ %121, %113 ], [ %111, %107 ]
  %115 = phi ptr [ %120, %113 ], [ %110, %107 ]
  %116 = load ptr, ptr %58, align 8, !tbaa !603
  %117 = getelementptr inbounds %struct.df_base_ref, ptr %114, i64 0, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !419
  %119 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %116, i32 noundef %118) #17
  %120 = getelementptr inbounds ptr, ptr %115, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !390
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %113, !prof !679, !llvm.loop !680

123:                                              ; preds = %113, %107, %66
  %124 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !419
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %59, !prof !681, !llvm.loop !682

127:                                              ; preds = %59, %123, %51
  %128 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %129 = load ptr, ptr %128, align 8, !tbaa !390
  %130 = icmp eq ptr %129, null
  br i1 %130, label %149, label %131, !prof !663

131:                                              ; preds = %127, %145
  %132 = phi ptr [ %147, %145 ], [ %129, %127 ]
  %133 = phi ptr [ %146, %145 ], [ %128, %127 ]
  %134 = load i32, ptr %132, align 8
  %135 = and i32 %134, 131072
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %145, label %137, !prof !664

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  %139 = getelementptr inbounds %struct.df_base_ref, ptr %132, i64 0, i32 6
  %140 = load i32, ptr %139, align 8, !tbaa !419
  %141 = load ptr, ptr %8, align 8, !tbaa !601
  %142 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %141, i32 noundef %140) #17
  %143 = load ptr, ptr %138, align 8, !tbaa !603
  %144 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %143, i32 noundef %140) #17
  br label %145

145:                                              ; preds = %137, %131
  %146 = getelementptr inbounds ptr, ptr %133, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !390
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %131, !prof !665, !llvm.loop !683

149:                                              ; preds = %145, %127
  %150 = load ptr, ptr @df, align 8, !tbaa !390
  %151 = getelementptr inbounds %struct.df, ptr %150, i64 0, i32 1, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !390
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155, !prof !684

154:                                              ; preds = %149
  tail call void @df_recompute_luids(ptr noundef %7) #17
  br label %155

155:                                              ; preds = %154, %149
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #2 !prof !685 !PGOFuncName !686 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !687
  ret ptr %4
}

; Function Attrs: optsize
declare void @df_recompute_luids(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_and_compl_into(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @run_fast_df_dce() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_print_regset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_lr_verify_transfer_functions() local_unnamed_addr #0 !prof !416 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = icmp eq ptr %1, null
  br i1 %2, label %67, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %9 = load ptr, ptr @cfun, align 8, !tbaa !390
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !411
  %12 = load ptr, ptr %11, align 8, !tbaa !390
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %3, %53
  %15 = phi ptr [ %55, %53 ], [ %12, %3 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !395
  %18 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %17) #18
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %17) #17
  %20 = icmp eq ptr %18, null
  %21 = load ptr, ptr @df, align 8, !tbaa !390
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !390
  %24 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !595
  %26 = load i32, ptr %16, align 8, !tbaa !395
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %20, label %45, label %29

29:                                               ; preds = %14
  br i1 %28, label %30, label %48

30:                                               ; preds = %29
  %31 = load ptr, ptr %18, align 8, !tbaa !601
  tail call void @bitmap_copy(ptr noundef %4, ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %18, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !603
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %33) #17
  %34 = load ptr, ptr %18, align 8, !tbaa !601
  tail call void @bitmap_clear(ptr noundef %34) #17
  %35 = load ptr, ptr %32, align 8, !tbaa !603
  tail call void @bitmap_clear(ptr noundef %35) #17
  %36 = load i32, ptr %16, align 8, !tbaa !395
  tail call fastcc void @df_lr_bb_local_compute(i32 noundef %36) #18
  %37 = load ptr, ptr %18, align 8, !tbaa !601
  %38 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %37) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1306, ptr noundef nonnull @.str.1) #17
  br label %41

41:                                               ; preds = %30, %40
  %42 = load ptr, ptr %32, align 8, !tbaa !603
  %43 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %5, ptr noundef %42) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %48

45:                                               ; preds = %14
  br i1 %28, label %46, label %48

46:                                               ; preds = %45, %41
  %47 = phi i32 [ 1307, %41 ], [ 1316, %45 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %47, ptr noundef nonnull @.str.1) #17
  br label %48

48:                                               ; preds = %46, %45, %41, %29
  %49 = load i32, ptr %16, align 8, !tbaa !395
  %50 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %49) #18
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1320, ptr noundef nonnull @.str.1) #17
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !390
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %14, !llvm.loop !688

57:                                               ; preds = %53, %3
  %58 = load ptr, ptr @df, align 8, !tbaa !390
  %59 = getelementptr inbounds %struct.df, ptr %58, i64 0, i32 1, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !390
  %61 = getelementptr inbounds %struct.dataflow, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !595
  %63 = tail call zeroext i8 @bitmap_intersect_compl_p(ptr noundef %62, ptr noundef %8) #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1325, ptr noundef nonnull @.str.1) #17
  br label %66

66:                                               ; preds = %57, %65
  tail call void @bitmap_obstack_free(ptr noundef %4) #17
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  tail call void @bitmap_obstack_free(ptr noundef %8) #17
  br label %67

67:                                               ; preds = %0, %66
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_compl_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_live_add_problem() local_unnamed_addr #0 !prof !689 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_LIVE) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !595
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_alloc(ptr nocapture readnone %0) #0 !prof !690 !PGOFuncName !691 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !485
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !692

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.29, i64 noundef 32, i64 noundef 100) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !485
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi ptr [ %12, %10 ], [ %4, %1 ]
  %18 = load ptr, ptr @df_live_scratch, align 8, !tbaa !390
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !692

20:                                               ; preds = %16
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %21, ptr @df_live_scratch, align 8, !tbaa !390
  %22 = load ptr, ptr @df, align 8, !tbaa !390
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %17, %16 ]
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 1, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !390
  tail call void @df_grow_bb_info(ptr noundef %26) #18
  %27 = load ptr, ptr @df, align 8, !tbaa !390
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !390
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !595
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %31, i32 noundef 0, ptr noundef nonnull %2) #18
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %63, label %34, !prof !693

34:                                               ; preds = %23, %56
  %35 = load i32, ptr %2, align 4, !tbaa !426
  %36 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %35) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38, !prof !694

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !695
  tail call void @bitmap_clear(ptr noundef %39) #17
  %40 = getelementptr inbounds %struct.df_live_bb_info, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !697
  tail call void @bitmap_clear(ptr noundef %41) #17
  br label %56

42:                                               ; preds = %34
  %43 = load ptr, ptr @df, align 8, !tbaa !390
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !390
  %46 = getelementptr inbounds %struct.dataflow, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !485
  %48 = tail call ptr @pool_alloc(ptr noundef %47) #17
  tail call fastcc void @df_live_set_bb_info(i32 noundef %35, ptr noundef %48) #18
  %49 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %49, ptr %48, align 8, !tbaa !695
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %51 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !697
  %52 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %53 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !698
  %54 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %55 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !699
  br label %56

56:                                               ; preds = %42, %38
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %34, !prof !700, !llvm.loop !701

59:                                               ; preds = %56
  %60 = load ptr, ptr @df, align 8, !tbaa !390
  %61 = getelementptr inbounds %struct.df, ptr %60, i64 0, i32 1, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !390
  br label %63

63:                                               ; preds = %59, %23
  %64 = phi ptr [ %62, %59 ], [ %29, %23 ]
  %65 = load i32, ptr @optimize, align 4, !tbaa !426
  %66 = icmp slt i32 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.dataflow, ptr %64, i64 0, i32 9
  store i8 %67, ptr %68, align 2, !tbaa !503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_reset(ptr nocapture noundef readonly %0) #0 !prof !416 !PGOFuncName !702 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1447, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !698
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !699
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !703

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !610 !PGOFuncName !704 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4, !prof !612

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !697
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !697
  %7 = load ptr, ptr %1, align 8, !tbaa !695
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !695
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !698
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !698
  %10 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !699
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !699
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !485
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_local_compute(ptr nocapture readnone %0) #0 !prof !690 !PGOFuncName !705 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  tail call void @df_grow_insn_info() #17
  %4 = load ptr, ptr @df, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !595
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #18
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11, !prof !693

11:                                               ; preds = %1, %11
  %12 = load i32, ptr %2, align 4, !tbaa !426
  tail call fastcc void @df_live_bb_local_compute(i32 noundef %12) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %11, !prof !700, !llvm.loop !706

15:                                               ; preds = %11
  %16 = load ptr, ptr @df, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !390
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !595
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi ptr [ %20, %15 ], [ %8, %1 ]
  tail call void @bitmap_clear(ptr noundef %22) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_init(ptr nocapture noundef readonly %0) #0 !prof !690 !PGOFuncName !707 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6, !prof !693

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %7) #18
  %9 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %10 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !699
  %12 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !697
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !605
  tail call void @bitmap_and(ptr noundef %11, ptr noundef %13, ptr noundef %15) #17
  %16 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !698
  tail call void @bitmap_clear(ptr noundef %17) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %6, !prof !708, !llvm.loop !709

20:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !710 !PGOFuncName !711 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !431
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21, !prof !712

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !429
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !395
  %10 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !433
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !395
  %15 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.df_live_bb_info, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !698
  %18 = getelementptr inbounds %struct.df_live_bb_info, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !699
  %20 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %17, ptr noundef %19) #17
  br label %21

21:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_live_transfer_function(i32 noundef %0) #0 !prof !713 !PGOFuncName !714 {
  %2 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %0) #18
  %3 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %4 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !698
  %6 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !699
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !697
  %10 = load ptr, ptr %2, align 8, !tbaa !695
  %11 = load ptr, ptr @df_live_scratch, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !605
  tail call void @bitmap_and(ptr noundef %11, ptr noundef %9, ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !604
  tail call void @bitmap_and_into(ptr noundef %5, ptr noundef %15) #17
  %16 = load ptr, ptr @df_live_scratch, align 8, !tbaa !390
  %17 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %7, ptr noundef %16, ptr noundef %5, ptr noundef %10) #17
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_finalize(ptr nocapture noundef readonly %0) #0 !prof !690 !PGOFuncName !715 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @df, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !634
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %34, label %10, !prof !716

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !428
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %31, label %13, !prof !693

13:                                               ; preds = %10, %13
  %14 = load i32, ptr %3, align 4, !tbaa !426
  %15 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %14) #18
  %16 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %14) #18
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !698
  %19 = getelementptr inbounds %struct.df_lr_bb_info, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !604
  tail call void @bitmap_and_into(ptr noundef %18, ptr noundef %20) #17
  %21 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !699
  %23 = getelementptr inbounds %struct.df_lr_bb_info, ptr %15, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !605
  tail call void @bitmap_and_into(ptr noundef %22, ptr noundef %24) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !428
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %13, !prof !708, !llvm.loop !717

27:                                               ; preds = %13
  %28 = load ptr, ptr @df, align 8, !tbaa !390
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !390
  br label %31

31:                                               ; preds = %27, %10
  %32 = phi ptr [ %30, %27 ], [ %6, %10 ]
  %33 = getelementptr inbounds %struct.dataflow, ptr %32, i64 0, i32 8
  store i8 0, ptr %33, align 1, !tbaa !634
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_free() #0 !prof !594 !PGOFuncName !718 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !404
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7, !prof !640

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !401
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11, !prof !641

11:                                               ; preds = %7, %25
  %12 = phi ptr [ %26, %25 ], [ %1, %7 ]
  %13 = phi i32 [ %27, %25 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !642

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !697
  tail call void @bitmap_obstack_free(ptr noundef %18) #17
  store ptr null, ptr %17, align 8, !tbaa !697
  %19 = load ptr, ptr %14, align 8, !tbaa !695
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %14, align 8, !tbaa !695
  %20 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !698
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !698
  %22 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !699
  tail call void @bitmap_obstack_free(ptr noundef %23) #17
  store ptr null, ptr %22, align 8, !tbaa !699
  %24 = load ptr, ptr @df, align 8, !tbaa !390
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi ptr [ %24, %16 ], [ %12, %11 ]
  %27 = add nuw i32 %13, 1
  %28 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !390
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !401
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %11, label %33, !prof !643, !llvm.loop !719

33:                                               ; preds = %25, %7
  %34 = phi ptr [ %3, %7 ], [ %29, %25 ]
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !485
  tail call void @free_alloc_pool(ptr noundef %36) #17
  %37 = load ptr, ptr @df, align 8, !tbaa !390
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !390
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 2
  store i32 0, ptr %40, align 8, !tbaa !401
  %41 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !404
  tail call void @free(ptr noundef %42) #18
  %43 = load ptr, ptr @df_live_scratch, align 8, !tbaa !390
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !640

45:                                               ; preds = %33
  tail call void @bitmap_obstack_free(ptr noundef nonnull %43) #17
  store ptr null, ptr @df_live_scratch, align 8, !tbaa !390
  br label %46

46:                                               ; preds = %33, %45, %0
  %47 = load ptr, ptr @df, align 8, !tbaa !390
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !390
  %50 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !595
  tail call void @bitmap_obstack_free(ptr noundef %51) #17
  %52 = load ptr, ptr @df, align 8, !tbaa !390
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !390
  %55 = getelementptr inbounds %struct.dataflow, ptr %54, i64 0, i32 4
  store ptr null, ptr %55, align 8, !tbaa !595
  %56 = load ptr, ptr %53, align 8, !tbaa !390
  tail call void @free(ptr noundef %56) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !720 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !698
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 14, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !698
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !487
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 13, i64 1, ptr %1)
  %22 = load ptr, ptr %18, align 8, !tbaa !721
  %23 = load i32, ptr %3, align 8, !tbaa !395
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !390
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #17
  br label %27

27:                                               ; preds = %20, %11
  %28 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %1)
  %29 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !697
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %30) #17
  %31 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 14, i64 1, ptr %1)
  %32 = load ptr, ptr %5, align 8, !tbaa !695
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %32) #17
  br label %33

33:                                               ; preds = %2, %7, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !723 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !699
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !699
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !487
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %1)
  %22 = getelementptr inbounds %struct.df_live_problem_data, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !724
  %24 = load i32, ptr %3, align 8, !tbaa !395
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %27) #17
  br label %28

28:                                               ; preds = %11, %20, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_verify_solution_start() #0 !prof !416 !PGOFuncName !725 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !634
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !487
  br label %67

9:                                                ; preds = %0
  store i8 1, ptr %4, align 1, !tbaa !634
  %10 = tail call ptr @xmalloc(i64 noundef 16) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 5
  store ptr %10, ptr %14, align 8, !tbaa !487
  %15 = load ptr, ptr @cfun, align 8, !tbaa !390
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !411
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !413
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xmalloc(i64 noundef %21) #17
  store ptr %22, ptr %10, align 8, !tbaa !721
  %23 = load ptr, ptr @cfun, align 8, !tbaa !390
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !411
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !413
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #17
  %31 = getelementptr inbounds %struct.df_live_problem_data, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !724
  %32 = load ptr, ptr @cfun, align 8, !tbaa !390
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !411
  %35 = load ptr, ptr %34, align 8, !tbaa !390
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %9, %37
  %38 = phi ptr [ %65, %37 ], [ %35, %9 ]
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %40 = load ptr, ptr %10, align 8, !tbaa !721
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !395
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %39, ptr %44, align 8, !tbaa !390
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %46 = load ptr, ptr %31, align 8, !tbaa !724
  %47 = load i32, ptr %41, align 8, !tbaa !395
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !390
  %50 = load ptr, ptr %10, align 8, !tbaa !721
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !390
  %53 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %47) #18
  %54 = getelementptr inbounds %struct.df_live_bb_info, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !698
  tail call void @bitmap_copy(ptr noundef %52, ptr noundef %55) #17
  %56 = load ptr, ptr %31, align 8, !tbaa !724
  %57 = load i32, ptr %41, align 8, !tbaa !395
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !390
  %61 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %57) #18
  %62 = getelementptr inbounds %struct.df_live_bb_info, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !699
  tail call void @bitmap_copy(ptr noundef %60, ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !390
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %37, !llvm.loop !726

67:                                               ; preds = %37, %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_verify_solution_end() #0 !prof !416 !PGOFuncName !727 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !487
  %6 = icmp eq ptr %5, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @cfun, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !411
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = icmp eq ptr %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %40
  %16 = phi ptr [ %11, %13 ], [ %42, %40 ]
  %17 = load ptr, ptr %5, align 8, !tbaa !721
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !395
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !390
  %23 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %19) #18
  %24 = getelementptr inbounds %struct.df_live_bb_info, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !698
  %26 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %22, ptr noundef %25) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %15
  %29 = load ptr, ptr %14, align 8, !tbaa !724
  %30 = load i32, ptr %18, align 8, !tbaa !395
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !390
  %34 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %30) #18
  %35 = getelementptr inbounds %struct.df_live_bb_info, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !699
  %37 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %33, ptr noundef %36) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1749, ptr noundef nonnull @.str.1) #17
  br label %40

40:                                               ; preds = %28, %39
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !390
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %15, !llvm.loop !728

44:                                               ; preds = %40
  %45 = load ptr, ptr @cfun, align 8, !tbaa !390
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !411
  %48 = load ptr, ptr %47, align 8, !tbaa !390
  %49 = icmp eq ptr %48, null
  br i1 %49, label %74, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi ptr [ %48, %50 ], [ %72, %52 ]
  %54 = load ptr, ptr %5, align 8, !tbaa !721
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !395
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !390
  tail call void @bitmap_obstack_free(ptr noundef %59) #17
  %60 = load ptr, ptr %5, align 8, !tbaa !721
  %61 = load i32, ptr %55, align 8, !tbaa !395
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  store ptr null, ptr %63, align 8, !tbaa !390
  %64 = load ptr, ptr %51, align 8, !tbaa !724
  %65 = getelementptr inbounds ptr, ptr %64, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !390
  tail call void @bitmap_obstack_free(ptr noundef %66) #17
  %67 = load ptr, ptr %51, align 8, !tbaa !724
  %68 = load i32, ptr %55, align 8, !tbaa !395
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  store ptr null, ptr %70, align 8, !tbaa !390
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !390
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %52, !llvm.loop !729

74:                                               ; preds = %52, %7, %44
  %75 = load ptr, ptr %5, align 8, !tbaa !721
  tail call void @free(ptr noundef %75) #18
  %76 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !724
  tail call void @free(ptr noundef %77) #18
  tail call void @free(ptr noundef nonnull %5) #18
  %78 = load ptr, ptr @df, align 8, !tbaa !390
  %79 = getelementptr inbounds %struct.df, ptr %78, i64 0, i32 1, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !390
  %81 = getelementptr inbounds %struct.dataflow, ptr %80, i64 0, i32 5
  store ptr null, ptr %81, align 8, !tbaa !487
  br label %82

82:                                               ; preds = %0, %74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_live_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !655 !PGOFuncName !730 {
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !657

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1373, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !401
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16, !prof !658

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1374, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !390
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !404
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !390
  ret void
}

; Function Attrs: optsize
declare void @df_grow_insn_info() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_live_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !731 !PGOFuncName !732 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %0) #18
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !419
  %11 = load ptr, ptr %10, align 8, !tbaa !419
  %12 = icmp eq ptr %11, null
  br i1 %12, label %82, label %13, !prof !733

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %77
  %16 = phi ptr [ %11, %13 ], [ %80, %77 ]
  %17 = phi i32 [ 0, %13 ], [ %78, %77 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !419
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !734
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !419
  %23 = icmp eq ptr %16, %22
  br i1 %23, label %82, label %24, !prof !735

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !419
  %27 = load ptr, ptr @df, align 8, !tbaa !390
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !475
  %30 = zext i32 %26 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !390
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42, !prof !736

34:                                               ; preds = %24
  %35 = load i32, ptr %16, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %40, !prof !737

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1474, ptr noundef nonnull @.str.1) #17
  br label %40

40:                                               ; preds = %34, %39
  %41 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %16) #17
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi ptr [ %32, %24 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 5
  store i32 %17, ptr %44, align 8, !tbaa !738
  %45 = load i32, ptr %16, align 8
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -7
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %77, !prof !739

49:                                               ; preds = %42
  %50 = add nsw i32 %17, 1
  %51 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !476
  %53 = load ptr, ptr %52, align 8, !tbaa !390
  %54 = icmp eq ptr %53, null
  br i1 %54, label %77, label %55, !prof !740

55:                                               ; preds = %49, %73
  %56 = phi ptr [ %75, %73 ], [ %53, %49 ]
  %57 = phi ptr [ %74, %73 ], [ %52, %49 ]
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %56, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !419
  %60 = load i32, ptr %56, align 8
  %61 = and i32 %60, 1114112
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69, !prof !741

63:                                               ; preds = %55
  %64 = and i32 %60, 8388608
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69, !prof !742

66:                                               ; preds = %63
  %67 = and i32 %60, 4194304
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73, !prof !743

69:                                               ; preds = %66, %63, %55
  %70 = phi ptr [ %14, %55 ], [ %8, %63 ], [ %14, %66 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !390
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %59) #17
  br label %73

73:                                               ; preds = %69, %66
  %74 = getelementptr inbounds ptr, ptr %57, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !390
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %55, !prof !744, !llvm.loop !745

77:                                               ; preds = %73, %49, %42
  %78 = phi i32 [ %17, %42 ], [ %50, %49 ], [ %50, %73 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !419
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %15, !prof !746, !llvm.loop !747

82:                                               ; preds = %15, %77, %1
  %83 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %84 = load ptr, ptr %83, align 8, !tbaa !390
  %85 = icmp eq ptr %84, null
  br i1 %85, label %98, label %86, !prof !748

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  br label %88

88:                                               ; preds = %86, %88
  %89 = phi ptr [ %84, %86 ], [ %96, %88 ]
  %90 = phi ptr [ %83, %86 ], [ %95, %88 ]
  %91 = load ptr, ptr %87, align 8, !tbaa !697
  %92 = getelementptr inbounds %struct.df_base_ref, ptr %89, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !419
  %94 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %91, i32 noundef %93) #17
  %95 = getelementptr inbounds ptr, ptr %90, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !390
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %88, !prof !665, !llvm.loop !749

98:                                               ; preds = %88, %82
  ret void
}

; Function Attrs: optsize
declare ptr @df_insn_create_insn_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_live_set_all_dirty() local_unnamed_addr #0 !prof !416 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !411
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %17, %6 ], [ %4, %0 ]
  %8 = load ptr, ptr @df, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !595
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !395
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !390
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !750

19:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_live_verify_transfer_functions() local_unnamed_addr #0 !prof !416 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = icmp eq ptr %1, null
  br i1 %2, label %65, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @df_grow_insn_info() #17
  %7 = load ptr, ptr @cfun, align 8, !tbaa !390
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !411
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %3, %51
  %13 = phi ptr [ %53, %51 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !395
  %16 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %15) #18
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %15) #17
  %18 = icmp eq ptr %16, null
  %19 = load ptr, ptr @df, align 8, !tbaa !390
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !390
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !595
  %24 = load i32, ptr %14, align 8, !tbaa !395
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %24) #17
  %26 = icmp eq i32 %25, 0
  br i1 %18, label %43, label %27

27:                                               ; preds = %12
  br i1 %26, label %28, label %46

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !697
  tail call void @bitmap_copy(ptr noundef %4, ptr noundef %30) #17
  %31 = load ptr, ptr %16, align 8, !tbaa !695
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %31) #17
  %32 = load ptr, ptr %29, align 8, !tbaa !697
  tail call void @bitmap_clear(ptr noundef %32) #17
  %33 = load ptr, ptr %16, align 8, !tbaa !695
  tail call void @bitmap_clear(ptr noundef %33) #17
  %34 = load i32, ptr %14, align 8, !tbaa !395
  tail call fastcc void @df_live_bb_local_compute(i32 noundef %34) #18
  %35 = load ptr, ptr %29, align 8, !tbaa !697
  %36 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %35) #17
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1863, ptr noundef nonnull @.str.1) #17
  br label %39

39:                                               ; preds = %28, %38
  %40 = load ptr, ptr %16, align 8, !tbaa !695
  %41 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %5, ptr noundef %40) #17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %46

43:                                               ; preds = %12
  br i1 %26, label %44, label %46

44:                                               ; preds = %43, %39
  %45 = phi i32 [ 1864, %39 ], [ 1873, %43 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %45, ptr noundef nonnull @.str.1) #17
  br label %46

46:                                               ; preds = %44, %43, %39, %27
  %47 = load i32, ptr %14, align 8, !tbaa !395
  %48 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %47) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #17
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !390
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %12, !llvm.loop !751

55:                                               ; preds = %51, %3
  %56 = load ptr, ptr @df, align 8, !tbaa !390
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !390
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !595
  %61 = tail call zeroext i8 @bitmap_intersect_compl_p(ptr noundef %60, ptr noundef %6) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1882, ptr noundef nonnull @.str.1) #17
  br label %64

64:                                               ; preds = %55, %63
  tail call void @bitmap_obstack_free(ptr noundef %4) #17
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  br label %65

65:                                               ; preds = %0, %64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @df_chain_create(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !752 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !419
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 4
  %7 = load ptr, ptr %6, align 8, !tbaa !390
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !485
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #17
  store ptr %10, ptr %3, align 8, !tbaa !419
  %11 = getelementptr inbounds %struct.df_link, ptr %10, i64 0, i32 1
  store ptr %4, ptr %11, align 8, !tbaa !422
  store ptr %1, ptr %10, align 8, !tbaa !417
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_unlink(ptr noundef %0) local_unnamed_addr #0 !prof !416 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.df_link, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !422
  %9 = load ptr, ptr %6, align 8, !tbaa !417
  tail call fastcc void @df_chain_unlink_1(ptr noundef %9, ptr noundef %0) #18
  %10 = load ptr, ptr @df, align 8, !tbaa !390
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 4
  %12 = load ptr, ptr %11, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !485
  tail call void @pool_free(ptr noundef %14, ptr noundef nonnull %6) #17
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %5, !llvm.loop !753

16:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !419
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_unlink_1(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !416 !PGOFuncName !754 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !419
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !417
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %25

9:                                                ; preds = %25
  %10 = load ptr, ptr %28, align 8, !tbaa !417
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %25, !llvm.loop !755

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %4, %6 ], [ %28, %9 ]
  %14 = phi ptr [ null, %6 ], [ %26, %9 ]
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.df_link, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !422
  %18 = getelementptr inbounds %struct.df_link, ptr %14, i64 0, i32 1
  %19 = select i1 %15, ptr %3, ptr %18
  store ptr %17, ptr %19, align 8, !tbaa !419
  %20 = load ptr, ptr @df, align 8, !tbaa !390
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1, i64 4
  %22 = load ptr, ptr %21, align 8, !tbaa !390
  %23 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !485
  tail call void @pool_free(ptr noundef %24, ptr noundef nonnull %13) #17
  br label %30

25:                                               ; preds = %6, %9
  %26 = phi ptr [ %28, %9 ], [ %4, %6 ]
  %27 = getelementptr inbounds %struct.df_link, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !419
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !755

30:                                               ; preds = %25, %2, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_copy(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !416 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = tail call ptr @df_chain_create(ptr noundef %0, ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.df_link, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !422
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !756

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_add_problem(i32 noundef %0) local_unnamed_addr #0 !prof !483 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_CHAIN) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 4
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 6
  store i32 %0, ptr %5, align 8, !tbaa !757
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !390
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1, i64 4
  %9 = load ptr, ptr %8, align 8, !tbaa !390
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !595
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_alloc(ptr nocapture readnone %0) #0 !prof !483 !PGOFuncName !758 {
  tail call fastcc void @df_chain_remove_problem() #18
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.34, i64 noundef 16, i64 noundef 50) #17
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !485
  %7 = load ptr, ptr %4, align 8, !tbaa !390
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 9
  store i8 1, ptr %8, align 2, !tbaa !503
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_reset(ptr nocapture readnone %0) #0 !prof !416 !PGOFuncName !759 {
  tail call fastcc void @df_chain_remove_problem() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_finalize(ptr nocapture noundef readonly %0) #0 !prof !483 !PGOFuncName !760 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6, !prof !493

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !426
  tail call fastcc void @df_chain_create_bb(i32 noundef %7) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !prof !501, !llvm.loop !761

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_free() #0 !prof !416 !PGOFuncName !762 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !485
  tail call void @free_alloc_pool(ptr noundef %5) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 4
  %8 = load ptr, ptr %7, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !595
  tail call void @bitmap_obstack_free(ptr noundef %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 4
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !595
  %15 = load ptr, ptr %12, align 8, !tbaa !390
  tail call void @free(ptr noundef %15) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_fully_remove_problem() #0 !prof !483 !PGOFuncName !763 {
  tail call fastcc void @df_chain_remove_problem() #18
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !595
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 4
  %8 = load ptr, ptr %7, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !595
  %10 = load ptr, ptr %7, align 8, !tbaa !390
  tail call void @free(ptr noundef %10) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @df_chain_top_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 !prof !416 !PGOFuncName !764 {
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !757
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !395
  %13 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %12) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 34, i64 1, ptr %1)
  %18 = load ptr, ptr %13, align 8, !tbaa !390
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %30, %20 ], [ %18, %16 ]
  %22 = phi ptr [ %29, %20 ], [ %13, %16 ]
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !419
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %24) #18
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !419
  tail call void @df_chain_dump(ptr noundef %27, ptr noundef %1) #18
  %28 = tail call i32 @fputc(i32 10, ptr %1)
  %29 = getelementptr inbounds ptr, ptr %22, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !390
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !765

32:                                               ; preds = %20, %16, %10
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !419
  %35 = load ptr, ptr %34, align 8, !tbaa !419
  %36 = icmp eq ptr %35, null
  br i1 %36, label %91, label %37

37:                                               ; preds = %32, %87
  %38 = phi ptr [ %89, %87 ], [ %35, %32 ]
  %39 = load ptr, ptr %33, align 8, !tbaa !419
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !734
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !419
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %91, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %87

50:                                               ; preds = %45
  %51 = load ptr, ptr @df, align 8, !tbaa !390
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !475
  %54 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !419
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !390
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !476
  %61 = load ptr, ptr %60, align 8, !tbaa !390
  %62 = icmp eq ptr %61, null
  br i1 %62, label %87, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !738
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %65, i32 noundef %55) #18
  %67 = load ptr, ptr %60, align 8, !tbaa !390
  %68 = icmp eq ptr %67, null
  br i1 %68, label %87, label %69

69:                                               ; preds = %63, %80
  %70 = phi ptr [ %85, %80 ], [ %67, %63 ]
  %71 = phi ptr [ %84, %80 ], [ %60, %63 ]
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %70, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !419
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %73) #18
  %75 = load i32, ptr %70, align 8
  %76 = and i32 %75, 2097152
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %69
  %79 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 11, i64 1, ptr %1)
  br label %80

80:                                               ; preds = %78, %69
  %81 = getelementptr inbounds %struct.df_base_ref, ptr %70, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !419
  tail call void @df_chain_dump(ptr noundef %82, ptr noundef %1) #18
  %83 = tail call i32 @fputc(i32 10, ptr %1)
  %84 = getelementptr inbounds ptr, ptr %71, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !390
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %69, !llvm.loop !766

87:                                               ; preds = %80, %63, %45, %50
  %88 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %89 = load ptr, ptr %88, align 8, !tbaa !419
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %37, !llvm.loop !767

91:                                               ; preds = %87, %37, %32, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @df_chain_bottom_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 !prof !416 !PGOFuncName !768 {
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !757
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %111, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !395
  %13 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %12) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 34, i64 1, ptr %1)
  %18 = load ptr, ptr %13, align 8, !tbaa !390
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %30, %20 ], [ %18, %16 ]
  %22 = phi ptr [ %29, %20 ], [ %13, %16 ]
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !419
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %24) #18
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !419
  tail call void @df_chain_dump(ptr noundef %27, ptr noundef %1) #18
  %28 = tail call i32 @fputc(i32 10, ptr %1)
  %29 = getelementptr inbounds ptr, ptr %22, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !390
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !769

32:                                               ; preds = %20, %16, %10
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !419
  %35 = load ptr, ptr %34, align 8, !tbaa !419
  %36 = icmp eq ptr %35, null
  br i1 %36, label %111, label %37

37:                                               ; preds = %32, %107
  %38 = phi ptr [ %109, %107 ], [ %35, %32 ]
  %39 = load ptr, ptr %33, align 8, !tbaa !419
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !734
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !419
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %111, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %107

50:                                               ; preds = %45
  %51 = load ptr, ptr @df, align 8, !tbaa !390
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !475
  %54 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !419
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !390
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !770
  %61 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !678
  %63 = load ptr, ptr %62, align 8, !tbaa !390
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load ptr, ptr %60, align 8, !tbaa !390
  %67 = icmp eq ptr %66, null
  br i1 %67, label %107, label %68

68:                                               ; preds = %65, %50
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !738
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %70, i32 noundef %55) #18
  %72 = load ptr, ptr %62, align 8, !tbaa !390
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %88, %68
  %75 = load ptr, ptr %60, align 8, !tbaa !390
  %76 = icmp eq ptr %75, null
  br i1 %76, label %107, label %95

77:                                               ; preds = %68, %88
  %78 = phi ptr [ %93, %88 ], [ %72, %68 ]
  %79 = phi ptr [ %92, %88 ], [ %62, %68 ]
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %78, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !419
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %81) #18
  %83 = load i32, ptr %78, align 8
  %84 = and i32 %83, 2097152
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 11, i64 1, ptr %1)
  br label %88

88:                                               ; preds = %86, %77
  %89 = getelementptr inbounds %struct.df_base_ref, ptr %78, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !419
  tail call void @df_chain_dump(ptr noundef %90, ptr noundef %1) #18
  %91 = tail call i32 @fputc(i32 10, ptr %1)
  %92 = getelementptr inbounds ptr, ptr %79, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !390
  %94 = icmp eq ptr %93, null
  br i1 %94, label %74, label %77, !llvm.loop !771

95:                                               ; preds = %74, %95
  %96 = phi ptr [ %105, %95 ], [ %75, %74 ]
  %97 = phi ptr [ %104, %95 ], [ %60, %74 ]
  %98 = getelementptr inbounds %struct.df_base_ref, ptr %96, i64 0, i32 6
  %99 = load i32, ptr %98, align 8, !tbaa !419
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %99) #18
  %101 = getelementptr inbounds %struct.df_base_ref, ptr %96, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !419
  tail call void @df_chain_dump(ptr noundef %102, ptr noundef %1) #18
  %103 = tail call i32 @fputc(i32 10, ptr %1)
  %104 = getelementptr inbounds ptr, ptr %97, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !390
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %95, !llvm.loop !772

107:                                              ; preds = %95, %74, %45, %65
  %108 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !419
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %37, !llvm.loop !773

111:                                              ; preds = %107, %37, %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_remove_problem() unnamed_addr #0 !prof !774 !PGOFuncName !775 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !485
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !776

9:                                                ; preds = %0
  tail call void @free_alloc_pool(ptr noundef nonnull %7) #17
  %10 = load ptr, ptr @df, align 8, !tbaa !390
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 4
  %12 = load ptr, ptr %11, align 8, !tbaa !390
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi ptr [ %12, %9 ], [ %5, %0 ]
  %15 = phi ptr [ %10, %9 ], [ %3, %0 ]
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 1, i64 4
  %17 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !595
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %18, i32 noundef 0, ptr noundef nonnull %2) #18
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #18, !range !428
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %160, label %21, !prof !777

21:                                               ; preds = %13
  %22 = load ptr, ptr @cfun, align 8, !tbaa !390
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 10
  br label %25

25:                                               ; preds = %21, %157
  %26 = load ptr, ptr %23, align 8, !tbaa !411
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !571
  %29 = load i32, ptr %2, align 4, !tbaa !426
  %30 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %28, i32 noundef %29) #18
  %31 = load ptr, ptr %16, align 8, !tbaa !390
  %32 = getelementptr inbounds %struct.dataflow, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !757
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36, !prof !778

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !395
  %39 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %38) #18
  %40 = load ptr, ptr %39, align 8, !tbaa !390
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %36, %42
  %43 = phi ptr [ %47, %42 ], [ %40, %36 ]
  %44 = phi ptr [ %46, %42 ], [ %39, %36 ]
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 2
  store ptr null, ptr %45, align 8, !tbaa !419
  %46 = getelementptr inbounds ptr, ptr %44, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !390
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %42, !llvm.loop !779

49:                                               ; preds = %42
  %50 = load ptr, ptr %16, align 8, !tbaa !390
  %51 = getelementptr inbounds %struct.dataflow, ptr %50, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !757
  br label %53

53:                                               ; preds = %49, %36, %25
  %54 = phi i32 [ %52, %49 ], [ %33, %36 ], [ %33, %25 ]
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57, !prof !780

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !395
  %60 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %59) #18
  %61 = load ptr, ptr %60, align 8, !tbaa !390
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63, !prof !781

63:                                               ; preds = %57, %63
  %64 = phi ptr [ %68, %63 ], [ %61, %57 ]
  %65 = phi ptr [ %67, %63 ], [ %60, %57 ]
  %66 = getelementptr inbounds %struct.df_base_ref, ptr %64, i64 0, i32 2
  store ptr null, ptr %66, align 8, !tbaa !419
  %67 = getelementptr inbounds ptr, ptr %65, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !390
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %63, !prof !782, !llvm.loop !783

70:                                               ; preds = %63, %57, %53
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !419
  %73 = load ptr, ptr %72, align 8, !tbaa !419
  %74 = icmp eq ptr %73, null
  br i1 %74, label %157, label %75, !prof !784

75:                                               ; preds = %70, %153
  %76 = phi ptr [ %155, %153 ], [ %73, %70 ]
  %77 = load ptr, ptr %71, align 8, !tbaa !419
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !734
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !419
  %82 = icmp eq ptr %76, %81
  br i1 %82, label %157, label %83, !prof !785

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !419
  %86 = load i32, ptr %76, align 8
  %87 = and i32 %86, 65535
  %88 = add nsw i32 %87, -7
  %89 = icmp ult i32 %88, 4
  br i1 %89, label %90, label %153, !prof !786

90:                                               ; preds = %83
  %91 = load ptr, ptr %16, align 8, !tbaa !390
  %92 = getelementptr inbounds %struct.dataflow, ptr %91, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !757
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %116, label %96, !prof !787

96:                                               ; preds = %90
  %97 = load ptr, ptr %24, align 8, !tbaa !475
  %98 = zext i32 %85 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !390
  %101 = getelementptr inbounds %struct.df_insn_info, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !476
  %103 = load ptr, ptr %102, align 8, !tbaa !390
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %96, %105
  %106 = phi ptr [ %110, %105 ], [ %103, %96 ]
  %107 = phi ptr [ %109, %105 ], [ %102, %96 ]
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %106, i64 0, i32 2
  store ptr null, ptr %108, align 8, !tbaa !419
  %109 = getelementptr inbounds ptr, ptr %107, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !390
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %105, !llvm.loop !788

112:                                              ; preds = %105
  %113 = load ptr, ptr %16, align 8, !tbaa !390
  %114 = getelementptr inbounds %struct.dataflow, ptr %113, i64 0, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !757
  br label %116

116:                                              ; preds = %112, %96, %90
  %117 = phi i32 [ %115, %112 ], [ %93, %96 ], [ %93, %90 ]
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %153, label %120, !prof !789

120:                                              ; preds = %116
  %121 = load ptr, ptr %24, align 8, !tbaa !475
  %122 = zext i32 %85 to i64
  %123 = getelementptr inbounds ptr, ptr %121, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !390
  %125 = getelementptr inbounds %struct.df_insn_info, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !678
  %127 = load ptr, ptr %126, align 8, !tbaa !390
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129, !prof !790

129:                                              ; preds = %120, %129
  %130 = phi ptr [ %134, %129 ], [ %127, %120 ]
  %131 = phi ptr [ %133, %129 ], [ %126, %120 ]
  %132 = getelementptr inbounds %struct.df_base_ref, ptr %130, i64 0, i32 2
  store ptr null, ptr %132, align 8, !tbaa !419
  %133 = getelementptr inbounds ptr, ptr %131, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !390
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %129, !prof !791, !llvm.loop !792

136:                                              ; preds = %129
  %137 = load ptr, ptr %24, align 8, !tbaa !475
  %138 = getelementptr inbounds ptr, ptr %137, i64 %122
  %139 = load ptr, ptr %138, align 8, !tbaa !390
  br label %140

140:                                              ; preds = %136, %120
  %141 = phi ptr [ %139, %136 ], [ %124, %120 ]
  %142 = getelementptr inbounds %struct.df_insn_info, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !770
  %144 = load ptr, ptr %143, align 8, !tbaa !390
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146, !prof !793

146:                                              ; preds = %140, %146
  %147 = phi ptr [ %151, %146 ], [ %144, %140 ]
  %148 = phi ptr [ %150, %146 ], [ %143, %140 ]
  %149 = getelementptr inbounds %struct.df_base_ref, ptr %147, i64 0, i32 2
  store ptr null, ptr %149, align 8, !tbaa !419
  %150 = getelementptr inbounds ptr, ptr %148, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !390
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %146, !prof !794, !llvm.loop !795

153:                                              ; preds = %146, %140, %83, %116
  %154 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !419
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %75, !prof !796, !llvm.loop !797

157:                                              ; preds = %75, %153, %70
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #18
  %158 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #18, !range !428
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %25, !prof !798, !llvm.loop !799

160:                                              ; preds = %157, %13
  %161 = load ptr, ptr %16, align 8, !tbaa !390
  %162 = getelementptr inbounds %struct.dataflow, ptr %161, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !595
  tail call void @bitmap_clear(ptr noundef %163) #17
  %164 = load ptr, ptr @df, align 8, !tbaa !390
  %165 = getelementptr inbounds %struct.df, ptr %164, i64 0, i32 1, i64 4
  %166 = load ptr, ptr %165, align 8, !tbaa !390
  %167 = getelementptr inbounds %struct.dataflow, ptr %166, i64 0, i32 3
  store ptr null, ptr %167, align 8, !tbaa !485
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_create_bb(i32 noundef %0) unnamed_addr #0 !prof !458 !PGOFuncName !800 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %10 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !499
  tail call void @bitmap_copy(ptr noundef %9, ptr noundef %11) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 4
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !595
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %0) #17
  tail call void @df_rd_simulate_artificial_defs_at_top(ptr noundef %7, ptr noundef %9) #18
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !419
  %20 = load ptr, ptr %19, align 8, !tbaa !419
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22, !prof !801

22:                                               ; preds = %1, %59
  %23 = phi ptr [ %61, %59 ], [ %20, %1 ]
  %24 = load ptr, ptr %18, align 8, !tbaa !419
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !734
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !419
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %63, label %30, !prof !576

30:                                               ; preds = %22
  %31 = load i32, ptr %23, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %59, !prof !577

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !419
  %38 = load ptr, ptr @df, align 8, !tbaa !390
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !475
  %41 = zext i32 %37 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !390
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !678
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %45) #18
  %46 = load ptr, ptr @df, align 8, !tbaa !390
  %47 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 27
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %58, label %51, !prof !802

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !475
  %54 = getelementptr inbounds ptr, ptr %53, i64 %41
  %55 = load ptr, ptr %54, align 8, !tbaa !390
  %56 = getelementptr inbounds %struct.df_insn_info, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !770
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %57) #18
  br label %58

58:                                               ; preds = %51, %35
  tail call void @df_rd_simulate_one_insn(ptr nonnull poison, ptr noundef nonnull %23, ptr noundef %9) #18
  br label %59

59:                                               ; preds = %30, %58
  %60 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !419
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %22, !prof !803, !llvm.loop !804

63:                                               ; preds = %22, %59, %1
  %64 = load ptr, ptr @df, align 8, !tbaa !390
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 27
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %73, !prof !572

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !395
  %72 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %71) #18
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %72) #18
  br label %73

73:                                               ; preds = %69, %63
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_create_bb_process_use(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !805 !PGOFuncName !806 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = load ptr, ptr %1, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7, !prof !807

7:                                                ; preds = %2, %71
  %8 = phi ptr [ %73, %71 ], [ %5, %2 ]
  %9 = phi ptr [ %72, %71 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !419
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 27
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !808

17:                                               ; preds = %7
  %18 = icmp ugt i32 %11, 52
  br i1 %18, label %19, label %71

19:                                               ; preds = %17, %7
  %20 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !464
  %22 = zext i32 %11 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !426
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %71, label %26, !prof !809

26:                                               ; preds = %19
  %27 = load i32, ptr %8, align 8
  %28 = and i32 %27, 131072
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %71, !prof !810

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !461
  %33 = getelementptr inbounds i32, ptr %32, i64 %22
  %34 = load i32, ptr %33, align 4, !tbaa !426
  %35 = add i32 %24, -1
  %36 = add i32 %35, %34
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %34, ptr noundef nonnull %4) #18
  %37 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !428
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %71, label %39, !prof !811

39:                                               ; preds = %30, %68
  %40 = load i32, ptr %4, align 4, !tbaa !426
  %41 = icmp ugt i32 %40, %36
  br i1 %41, label %71, label %42, !prof !812

42:                                               ; preds = %39
  %43 = load ptr, ptr @df, align 8, !tbaa !390
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !813
  %46 = zext i32 %40 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !390
  %49 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 4
  %50 = load ptr, ptr %49, align 8, !tbaa !390
  %51 = getelementptr inbounds %struct.dataflow, ptr %50, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !757
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55, !prof !814

55:                                               ; preds = %42
  %56 = tail call ptr @df_chain_create(ptr noundef %48, ptr noundef nonnull %8) #18
  %57 = load ptr, ptr @df, align 8, !tbaa !390
  %58 = getelementptr inbounds %struct.df, ptr %57, i64 0, i32 1, i64 4
  %59 = load ptr, ptr %58, align 8, !tbaa !390
  %60 = getelementptr inbounds %struct.dataflow, ptr %59, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !757
  br label %62

62:                                               ; preds = %55, %42
  %63 = phi i32 [ %61, %55 ], [ %52, %42 ]
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66, !prof !815

66:                                               ; preds = %62
  %67 = tail call ptr @df_chain_create(ptr noundef nonnull %8, ptr noundef %48) #18
  br label %68

68:                                               ; preds = %66, %62
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %69 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !428
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %39, !prof !816, !llvm.loop !817

71:                                               ; preds = %68, %39, %30, %19, %26, %17
  %72 = getelementptr inbounds ptr, ptr %9, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !390
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %7, !prof !818, !llvm.loop !819

75:                                               ; preds = %71, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_byte_lr_get_regno_start(i32 noundef %0) local_unnamed_addr #2 !prof !416 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !487
  %7 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !820
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !426
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_byte_lr_get_regno_len(i32 noundef %0) local_unnamed_addr #2 !prof !416 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !487
  %7 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !822
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !426
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_add_problem() local_unnamed_addr #0 !prof !416 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_BYTE_LR) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !595
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_alloc(ptr nocapture readnone %0) #0 !prof !416 !PGOFuncName !823 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = tail call i32 @max_reg_num() #17
  %5 = tail call ptr @xmalloc(i64 noundef 144) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 5
  %8 = load ptr, ptr %7, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 5
  store ptr %5, ptr %9, align 8, !tbaa !487
  %10 = load ptr, ptr %7, align 8, !tbaa !390
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !485
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.43, i64 noundef 32, i64 noundef 50) #17
  %16 = load ptr, ptr @df, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 1, i64 5
  %18 = load ptr, ptr %17, align 8, !tbaa !390
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 3
  store ptr %15, ptr %19, align 8, !tbaa !485
  %20 = load ptr, ptr %17, align 8, !tbaa !390
  br label %21

21:                                               ; preds = %14, %1
  %22 = phi ptr [ %20, %14 ], [ %10, %1 ]
  tail call void @df_grow_bb_info(ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 5
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %23) #17
  %24 = zext i32 %4 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = tail call ptr @xmalloc(i64 noundef %25) #17
  %27 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !820
  %28 = tail call ptr @xmalloc(i64 noundef %25) #17
  %29 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 4
  store ptr %28, ptr %29, align 8, !tbaa !822
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %31 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !824
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  store ptr %32, ptr %5, align 8, !tbaa !825
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %34 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !826
  %35 = load ptr, ptr @cfun, align 8, !tbaa !390
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !411
  %38 = load ptr, ptr %37, align 8, !tbaa !827
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !828
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !626
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %97, label %44

44:                                               ; preds = %21, %80
  %45 = phi ptr [ %90, %80 ], [ %40, %21 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !419
  %48 = load ptr, ptr %47, align 8, !tbaa !419
  %49 = icmp eq ptr %48, null
  br i1 %49, label %80, label %50

50:                                               ; preds = %44, %76
  %51 = phi ptr [ %78, %76 ], [ %48, %44 ]
  %52 = load ptr, ptr %46, align 8, !tbaa !419
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !734
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !419
  %57 = icmp eq ptr %51, %56
  br i1 %57, label %80, label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %51, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load ptr, ptr @df, align 8, !tbaa !390
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !475
  %67 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !419
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !390
  %72 = getelementptr inbounds %struct.df_insn_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !476
  tail call fastcc void @df_byte_lr_check_regs(ptr noundef %73) #18
  %74 = getelementptr inbounds %struct.df_insn_info, ptr %71, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !678
  tail call fastcc void @df_byte_lr_check_regs(ptr noundef %75) #18
  br label %76

76:                                               ; preds = %58, %63
  %77 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !419
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %50, !llvm.loop !829

80:                                               ; preds = %50, %76, %44
  %81 = load ptr, ptr @df, align 8, !tbaa !390
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 1, i64 5
  %83 = load ptr, ptr %82, align 8, !tbaa !390
  %84 = getelementptr inbounds %struct.dataflow, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !595
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !395
  %88 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %85, i32 noundef %87) #17
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !828
  %91 = load ptr, ptr @cfun, align 8, !tbaa !390
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !411
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !626
  %96 = icmp eq ptr %90, %95
  br i1 %96, label %97, label %44, !llvm.loop !830

97:                                               ; preds = %80, %21
  %98 = load ptr, ptr @df, align 8, !tbaa !390
  %99 = getelementptr inbounds %struct.df, ptr %98, i64 0, i32 1, i64 5
  %100 = load ptr, ptr %99, align 8, !tbaa !390
  %101 = getelementptr inbounds %struct.dataflow, ptr %100, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !595
  %103 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %102, i32 noundef 0) #17
  %104 = load ptr, ptr @df, align 8, !tbaa !390
  %105 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 1, i64 5
  %106 = load ptr, ptr %105, align 8, !tbaa !390
  %107 = getelementptr inbounds %struct.dataflow, ptr %106, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !595
  %109 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %108, i32 noundef 1) #17
  %110 = icmp eq i32 %4, 0
  br i1 %110, label %138, label %111

111:                                              ; preds = %97, %131
  %112 = phi i64 [ %136, %131 ], [ 0, %97 ]
  %113 = phi i32 [ %135, %131 ], [ 0, %97 ]
  %114 = load ptr, ptr %27, align 8, !tbaa !820
  %115 = getelementptr inbounds i32, ptr %114, i64 %112
  store i32 %113, ptr %115, align 4, !tbaa !426
  %116 = load ptr, ptr %34, align 8, !tbaa !826
  %117 = trunc i64 %112 to i32
  %118 = tail call i32 @bitmap_bit_p(ptr noundef %116, i32 noundef %117) #17
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %111
  %121 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !390
  %122 = getelementptr inbounds ptr, ptr %121, i64 %112
  %123 = load ptr, ptr %122, align 8, !tbaa !390
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !419
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %111, %120
  %132 = phi i32 [ %130, %120 ], [ 1, %111 ]
  %133 = load ptr, ptr %29, align 8, !tbaa !822
  %134 = getelementptr inbounds i32, ptr %133, i64 %112
  store i32 %132, ptr %134, align 4, !tbaa !426
  %135 = add i32 %132, %113
  %136 = add nuw nsw i64 %112, 1
  %137 = icmp eq i64 %136, %24
  br i1 %137, label %138, label %111, !llvm.loop !831

138:                                              ; preds = %131, %97
  %139 = load ptr, ptr %31, align 8, !tbaa !824
  %140 = load ptr, ptr @df, align 8, !tbaa !390
  %141 = getelementptr inbounds %struct.df, ptr %140, i64 0, i32 13
  %142 = load ptr, ptr %141, align 8, !tbaa !614
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %139, ptr noundef %142) #18
  %143 = load ptr, ptr %5, align 8, !tbaa !825
  %144 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !390
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %143, ptr noundef %144) #18
  %145 = load ptr, ptr @df, align 8, !tbaa !390
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 1, i64 5
  %147 = load ptr, ptr %146, align 8, !tbaa !390
  %148 = getelementptr inbounds %struct.dataflow, ptr %147, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !595
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %149, i32 noundef 0, ptr noundef nonnull %2) #18
  %150 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %181, label %152

152:                                              ; preds = %138, %174
  %153 = load i32, ptr %2, align 4, !tbaa !426
  %154 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %153) #18
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %154, align 8, !tbaa !832
  tail call void @bitmap_clear(ptr noundef %157) #17
  %158 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %154, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !834
  tail call void @bitmap_clear(ptr noundef %159) #17
  br label %174

160:                                              ; preds = %152
  %161 = load ptr, ptr @df, align 8, !tbaa !390
  %162 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 1, i64 5
  %163 = load ptr, ptr %162, align 8, !tbaa !390
  %164 = getelementptr inbounds %struct.dataflow, ptr %163, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !485
  %166 = tail call ptr @pool_alloc(ptr noundef %165) #17
  tail call fastcc void @df_byte_lr_set_bb_info(i32 noundef %153, ptr noundef %166) #18
  %167 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %168 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 1
  store ptr %167, ptr %168, align 8, !tbaa !834
  %169 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  store ptr %169, ptr %166, align 8, !tbaa !832
  %170 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %171 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 2
  store ptr %170, ptr %171, align 8, !tbaa !835
  %172 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %173 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 3
  store ptr %172, ptr %173, align 8, !tbaa !836
  br label %174

174:                                              ; preds = %160, %156
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %175 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %152, !llvm.loop !837

177:                                              ; preds = %174
  %178 = load ptr, ptr @df, align 8, !tbaa !390
  %179 = getelementptr inbounds %struct.df, ptr %178, i64 0, i32 1, i64 5
  %180 = load ptr, ptr %179, align 8, !tbaa !390
  br label %181

181:                                              ; preds = %177, %138
  %182 = phi ptr [ %180, %177 ], [ %147, %138 ]
  %183 = getelementptr inbounds %struct.dataflow, ptr %182, i64 0, i32 9
  store i8 1, ptr %183, align 2, !tbaa !503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_reset(ptr nocapture noundef readonly %0) #0 !prof !416 !PGOFuncName !838 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2589, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !835
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !836
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !839

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !840 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !834
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !834
  %7 = load ptr, ptr %1, align 8, !tbaa !832
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !832
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !835
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !835
  %10 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !836
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !836
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !485
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_local_compute(ptr nocapture readnone %0) #0 !prof !416 !PGOFuncName !841 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 5
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !595
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #18
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1, %22
  %12 = load i32, ptr %2, align 4, !tbaa !426
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef 1) #18
  %16 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !834
  %18 = load ptr, ptr @df, align 8, !tbaa !390
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !619
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %17, ptr noundef %20) #18
  br label %22

21:                                               ; preds = %11
  tail call fastcc void @df_byte_lr_bb_local_compute(i32 noundef %12) #18
  br label %22

22:                                               ; preds = %14, %21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %11, !llvm.loop !842

25:                                               ; preds = %22
  %26 = load ptr, ptr @df, align 8, !tbaa !390
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 5
  %28 = load ptr, ptr %27, align 8, !tbaa !390
  %29 = getelementptr inbounds %struct.dataflow, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !595
  br label %31

31:                                               ; preds = %25, %1
  %32 = phi ptr [ %30, %25 ], [ %8, %1 ]
  tail call void @bitmap_clear(ptr noundef %32) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_init(ptr nocapture noundef readonly %0) #0 !prof !416 !PGOFuncName !843 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !835
  %11 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !834
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !836
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !llvm.loop !844

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_confluence_0(ptr noundef readonly %0) #0 !prof !416 !PGOFuncName !845 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !626
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !395
  %11 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %10) #18
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !487
  %17 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !836
  %19 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !824
  tail call void @bitmap_copy(ptr noundef %18, ptr noundef %20) #17
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !416 !PGOFuncName !846 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !487
  %7 = load ptr, ptr %0, align 8, !tbaa !429
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !395
  %10 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !836
  %13 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !433
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !395
  %17 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %16) #18
  %18 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !835
  %20 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !431
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load ptr, ptr %6, align 8, !tbaa !825
  %26 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %12, ptr noundef %19, ptr noundef %25) #17
  br label %29

27:                                               ; preds = %1
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %12, ptr noundef %19) #17
  br label %29

29:                                               ; preds = %27, %24
  %30 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !824
  %32 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %12, ptr noundef %31) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_byte_lr_transfer_function(i32 noundef %0) #0 !prof !416 !PGOFuncName !847 {
  %2 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !835
  %5 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !836
  %7 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !834
  %9 = load ptr, ptr %2, align 8, !tbaa !832
  %10 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %4, ptr noundef %8, ptr noundef %6, ptr noundef %9) #17
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_free() #0 !prof !416 !PGOFuncName !848 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 5
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !487
  %6 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !404
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !485
  tail call void @free_alloc_pool(ptr noundef %11) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !401
  %16 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !404
  tail call void @free(ptr noundef %17) #18
  %18 = load ptr, ptr @df, align 8, !tbaa !390
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 1, i64 5
  %20 = load ptr, ptr %19, align 8, !tbaa !390
  br label %21

21:                                               ; preds = %9, %0
  %22 = phi ptr [ %20, %9 ], [ %3, %0 ]
  %23 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !595
  tail call void @bitmap_obstack_free(ptr noundef %24) #17
  %25 = load ptr, ptr @df, align 8, !tbaa !390
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 1, i64 5
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 4
  store ptr null, ptr %28, align 8, !tbaa !595
  %29 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 5
  tail call void @bitmap_obstack_release(ptr noundef nonnull %29) #17
  %30 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !820
  tail call void @free(ptr noundef %31) #18
  %32 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !822
  tail call void @free(ptr noundef %33) #18
  tail call void @free(ptr noundef %5) #18
  %34 = load ptr, ptr @df, align 8, !tbaa !390
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 1, i64 5
  %36 = load ptr, ptr %35, align 8, !tbaa !390
  tail call void @free(ptr noundef %36) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !849 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !835
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 13, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !835
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 13, i64 1, ptr %1)
  %15 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !834
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %16) #17
  %17 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 13, i64 1, ptr %1)
  %18 = load ptr, ptr %5, align 8, !tbaa !832
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %18) #17
  br label %19

19:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !850 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !836
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 13, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !836
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %13) #17
  br label %14

14:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_check_regs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !416 !PGOFuncName !851 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !390
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !487
  %10 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %9, i64 0, i32 2
  br label %11

11:                                               ; preds = %4, %28
  %12 = phi ptr [ %2, %4 ], [ %30, %28 ]
  %13 = phi ptr [ %0, %4 ], [ %29, %28 ]
  %14 = load i32, ptr %12, align 8
  %15 = and i32 %14, 117440512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !419
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 39
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %11
  %24 = load ptr, ptr %10, align 8, !tbaa !826
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !419
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %26) #17
  br label %28

28:                                               ; preds = %23, %17
  %29 = getelementptr inbounds ptr, ptr %13, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !390
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !852

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_expand_bitmap(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !416 !PGOFuncName !853 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !390
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !487
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  tail call void @bitmap_clear(ptr noundef %0) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !428
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %9, i64 0, i32 3
  %14 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %9, i64 0, i32 4
  br label %15

15:                                               ; preds = %12, %15
  %16 = load ptr, ptr %13, align 8, !tbaa !820
  %17 = load i32, ptr %4, align 4, !tbaa !426
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !426
  %21 = load ptr, ptr %14, align 8, !tbaa !822
  %22 = getelementptr inbounds i32, ptr %21, i64 %18
  %23 = load i32, ptr %22, align 4, !tbaa !426
  tail call void @bitmap_set_range(ptr noundef %0, i32 noundef %20, i32 noundef %23) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !428
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !854

26:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !416 !PGOFuncName !855 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !401
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !416 !PGOFuncName !856 {
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2415, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 5
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !401
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2416, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !390
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !404
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !390
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !416 !PGOFuncName !857 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @df, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 5
  %8 = load ptr, ptr %7, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !487
  %11 = load ptr, ptr @cfun, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !411
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !571
  %16 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %15, i32 noundef %0) #18
  %17 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) #18
  %18 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 3
  %23 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 4
  %24 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 1
  br label %25

25:                                               ; preds = %21, %43
  %26 = phi ptr [ %19, %21 ], [ %45, %43 ]
  %27 = phi ptr [ %18, %21 ], [ %44, %43 ]
  %28 = load i32, ptr %26, align 8
  %29 = and i32 %28, 131072
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !419
  %34 = load ptr, ptr %22, align 8, !tbaa !820
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !426
  %38 = load ptr, ptr %23, align 8, !tbaa !822
  %39 = getelementptr inbounds i32, ptr %38, i64 %35
  %40 = load i32, ptr %39, align 4, !tbaa !426
  %41 = load ptr, ptr %17, align 8, !tbaa !832
  tail call void @bitmap_set_range(ptr noundef %41, i32 noundef %37, i32 noundef %40) #17
  %42 = load ptr, ptr %24, align 8, !tbaa !834
  tail call void @bitmap_clear_range(ptr noundef %42, i32 noundef %37, i32 noundef %40) #17
  br label %43

43:                                               ; preds = %31, %25
  %44 = getelementptr inbounds ptr, ptr %27, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !390
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %25, !llvm.loop !858

47:                                               ; preds = %43, %1
  %48 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %49 = load ptr, ptr %48, align 8, !tbaa !390
  %50 = icmp eq ptr %49, null
  br i1 %50, label %76, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 3
  %53 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 4
  %54 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 1
  br label %55

55:                                               ; preds = %51, %72
  %56 = phi ptr [ %49, %51 ], [ %74, %72 ]
  %57 = phi ptr [ %48, %51 ], [ %73, %72 ]
  %58 = load i32, ptr %56, align 8
  %59 = and i32 %58, 131072
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.df_base_ref, ptr %56, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !419
  %64 = load ptr, ptr %52, align 8, !tbaa !820
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !426
  %68 = load ptr, ptr %53, align 8, !tbaa !822
  %69 = getelementptr inbounds i32, ptr %68, i64 %65
  %70 = load i32, ptr %69, align 4, !tbaa !426
  %71 = load ptr, ptr %54, align 8, !tbaa !834
  tail call void @bitmap_set_range(ptr noundef %71, i32 noundef %67, i32 noundef %70) #17
  br label %72

72:                                               ; preds = %61, %55
  %73 = getelementptr inbounds ptr, ptr %57, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !390
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %55, !llvm.loop !859

76:                                               ; preds = %72, %47
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !419
  %79 = getelementptr inbounds %struct.rtl_bb_info, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !419
  %81 = icmp eq ptr %80, null
  br i1 %81, label %187, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 3
  %84 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 4
  %85 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 1
  br label %86

86:                                               ; preds = %82, %183
  %87 = phi ptr [ %80, %82 ], [ %185, %183 ]
  %88 = load ptr, ptr %77, align 8, !tbaa !419
  %89 = load ptr, ptr %88, align 8, !tbaa !574
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !419
  %92 = icmp eq ptr %87, %91
  br i1 %92, label %187, label %93

93:                                               ; preds = %86
  %94 = load i32, ptr %87, align 8
  %95 = and i32 %94, 65535
  %96 = add nsw i32 %95, -7
  %97 = icmp ult i32 %96, 4
  br i1 %97, label %98, label %183

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !419
  %101 = load ptr, ptr @df, align 8, !tbaa !390
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !475
  %104 = zext i32 %100 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !390
  %107 = getelementptr inbounds %struct.df_insn_info, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !476
  %109 = load ptr, ptr %108, align 8, !tbaa !390
  %110 = icmp eq ptr %109, null
  br i1 %110, label %150, label %111

111:                                              ; preds = %98, %140
  %112 = phi ptr [ %142, %140 ], [ %109, %98 ]
  %113 = phi ptr [ %141, %140 ], [ %108, %98 ]
  %114 = load i32, ptr %112, align 8
  %115 = and i32 %114, 65536
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.df_base_ref, ptr %112, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !419
  %120 = load ptr, ptr %83, align 8, !tbaa !820
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, ptr %120, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !426
  %124 = load ptr, ptr %84, align 8, !tbaa !822
  %125 = getelementptr inbounds i32, ptr %124, i64 %121
  %126 = load i32, ptr %125, align 4, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %127 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %112, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %128 = icmp eq i8 %127, 0
  %129 = load i32, ptr %2, align 4
  %130 = load i32, ptr %3, align 4
  %131 = sub i32 %130, %129
  %132 = select i1 %128, i32 %131, i32 %126
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %117
  %135 = select i1 %128, i32 %129, i32 0
  %136 = add i32 %135, %123
  %137 = load ptr, ptr %17, align 8, !tbaa !832
  call void @bitmap_set_range(ptr noundef %137, i32 noundef %136, i32 noundef %132) #17
  %138 = load ptr, ptr %85, align 8, !tbaa !834
  call void @bitmap_clear_range(ptr noundef %138, i32 noundef %136, i32 noundef %132) #17
  br label %139

139:                                              ; preds = %134, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %140

140:                                              ; preds = %139, %111
  %141 = getelementptr inbounds ptr, ptr %113, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !390
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %111, !llvm.loop !860

144:                                              ; preds = %140
  %145 = load ptr, ptr @df, align 8, !tbaa !390
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 10
  %147 = load ptr, ptr %146, align 8, !tbaa !475
  %148 = getelementptr inbounds ptr, ptr %147, i64 %104
  %149 = load ptr, ptr %148, align 8, !tbaa !390
  br label %150

150:                                              ; preds = %144, %98
  %151 = phi ptr [ %149, %144 ], [ %106, %98 ]
  %152 = getelementptr inbounds %struct.df_insn_info, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !678
  %154 = load ptr, ptr %153, align 8, !tbaa !390
  %155 = icmp eq ptr %154, null
  br i1 %155, label %183, label %156

156:                                              ; preds = %150, %179
  %157 = phi ptr [ %181, %179 ], [ %154, %150 ]
  %158 = phi ptr [ %180, %179 ], [ %153, %150 ]
  %159 = getelementptr inbounds %struct.df_base_ref, ptr %157, i64 0, i32 6
  %160 = load i32, ptr %159, align 8, !tbaa !419
  %161 = load ptr, ptr %83, align 8, !tbaa !820
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i32, ptr %161, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !426
  %165 = load ptr, ptr %84, align 8, !tbaa !822
  %166 = getelementptr inbounds i32, ptr %165, i64 %162
  %167 = load i32, ptr %166, align 4, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %168 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %157, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %169 = icmp eq i8 %168, 0
  %170 = load i32, ptr %4, align 4
  %171 = load i32, ptr %5, align 4
  %172 = sub i32 %171, %170
  %173 = select i1 %169, i32 %172, i32 %167
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %156
  %176 = select i1 %169, i32 %170, i32 0
  %177 = add i32 %176, %164
  %178 = load ptr, ptr %85, align 8, !tbaa !834
  call void @bitmap_set_range(ptr noundef %178, i32 noundef %177, i32 noundef %173) #17
  br label %179

179:                                              ; preds = %175, %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  %180 = getelementptr inbounds ptr, ptr %158, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !390
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %156, !llvm.loop !861

183:                                              ; preds = %179, %150, %93
  %184 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !419
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %86, !llvm.loop !862

187:                                              ; preds = %86, %183, %76
  %188 = call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %189 = load ptr, ptr %188, align 8, !tbaa !390
  %190 = icmp eq ptr %189, null
  br i1 %190, label %217, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 3
  %193 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 4
  %194 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 1
  br label %195

195:                                              ; preds = %191, %213
  %196 = phi ptr [ %189, %191 ], [ %215, %213 ]
  %197 = phi ptr [ %188, %191 ], [ %214, %213 ]
  %198 = load i32, ptr %196, align 8
  %199 = and i32 %198, 131072
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %213, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.df_base_ref, ptr %196, i64 0, i32 6
  %203 = load i32, ptr %202, align 8, !tbaa !419
  %204 = load ptr, ptr %192, align 8, !tbaa !820
  %205 = zext i32 %203 to i64
  %206 = getelementptr inbounds i32, ptr %204, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !426
  %208 = load ptr, ptr %193, align 8, !tbaa !822
  %209 = getelementptr inbounds i32, ptr %208, i64 %205
  %210 = load i32, ptr %209, align 4, !tbaa !426
  %211 = load ptr, ptr %17, align 8, !tbaa !832
  call void @bitmap_set_range(ptr noundef %211, i32 noundef %207, i32 noundef %210) #17
  %212 = load ptr, ptr %194, align 8, !tbaa !834
  call void @bitmap_clear_range(ptr noundef %212, i32 noundef %207, i32 noundef %210) #17
  br label %213

213:                                              ; preds = %201, %195
  %214 = getelementptr inbounds ptr, ptr %197, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !390
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %195, !llvm.loop !863

217:                                              ; preds = %213, %187
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @df_compute_accessed_bytes(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_print_byte_regset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !416 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !419
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !475
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !476
  %15 = load ptr, ptr %14, align 8, !tbaa !390
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !487
  %22 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 3
  %23 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 4
  br label %24

24:                                               ; preds = %17, %51
  %25 = phi ptr [ %15, %17 ], [ %53, %51 ]
  %26 = phi ptr [ %14, %17 ], [ %52, %51 ]
  %27 = load i32, ptr %25, align 8
  %28 = and i32 %27, 65536
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %25, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !419
  %33 = load ptr, ptr %22, align 8, !tbaa !820
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !426
  %37 = load ptr, ptr %23, align 8, !tbaa !822
  %38 = getelementptr inbounds i32, ptr %37, i64 %34
  %39 = load i32, ptr %38, align 4, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %40 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %25, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %41 = icmp eq i8 %40, 0
  %42 = load i32, ptr %3, align 4
  %43 = load i32, ptr %4, align 4
  %44 = sub i32 %43, %42
  %45 = select i1 %41, i32 %44, i32 %39
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %30
  %48 = select i1 %41, i32 %42, i32 0
  %49 = add i32 %48, %36
  call void @bitmap_clear_range(ptr noundef %1, i32 noundef %49, i32 noundef %45) #17
  br label %50

50:                                               ; preds = %47, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %51

51:                                               ; preds = %50, %24
  %52 = getelementptr inbounds ptr, ptr %26, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !390
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24, !llvm.loop !864

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_uses(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !416 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !419
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !475
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !678
  %15 = load ptr, ptr %14, align 8, !tbaa !390
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !487
  %22 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 3
  %23 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 4
  br label %24

24:                                               ; preds = %17, %46
  %25 = phi ptr [ %15, %17 ], [ %48, %46 ]
  %26 = phi ptr [ %14, %17 ], [ %47, %46 ]
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %25, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !419
  %29 = load ptr, ptr %22, align 8, !tbaa !820
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i32, ptr %29, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !426
  %33 = load ptr, ptr %23, align 8, !tbaa !822
  %34 = getelementptr inbounds i32, ptr %33, i64 %30
  %35 = load i32, ptr %34, align 4, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %36 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %25, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %37 = icmp eq i8 %36, 0
  %38 = load i32, ptr %3, align 4
  %39 = load i32, ptr %4, align 4
  %40 = sub i32 %39, %38
  %41 = select i1 %37, i32 %40, i32 %35
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %24
  %44 = select i1 %37, i32 %38, i32 0
  %45 = add i32 %44, %32
  call void @bitmap_set_range(ptr noundef %1, i32 noundef %45, i32 noundef %41) #17
  br label %46

46:                                               ; preds = %43, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  %47 = getelementptr inbounds ptr, ptr %26, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !390
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %24, !llvm.loop !865

50:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_artificial_refs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !416 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @df, align 8, !tbaa !390
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 5
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.dataflow, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !487
  %14 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %13, i64 0, i32 3
  %15 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %13, i64 0, i32 4
  br label %16

16:                                               ; preds = %8, %32
  %17 = phi ptr [ %6, %8 ], [ %34, %32 ]
  %18 = phi ptr [ %5, %8 ], [ %33, %32 ]
  %19 = load i32, ptr %17, align 8
  %20 = and i32 %19, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !419
  %25 = load ptr, ptr %14, align 8, !tbaa !820
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !426
  %29 = load ptr, ptr %15, align 8, !tbaa !822
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = load i32, ptr %30, align 4, !tbaa !426
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %28, i32 noundef %31) #17
  br label %32

32:                                               ; preds = %22, %16
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !390
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !866

36:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_artificial_refs_at_end(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !416 {
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !487
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !395
  %10 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %9) #18
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 3
  %15 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 4
  br label %16

16:                                               ; preds = %13, %32
  %17 = phi ptr [ %11, %13 ], [ %34, %32 ]
  %18 = phi ptr [ %10, %13 ], [ %33, %32 ]
  %19 = load i32, ptr %17, align 8
  %20 = and i32 %19, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !419
  %25 = load ptr, ptr %14, align 8, !tbaa !820
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !426
  %29 = load ptr, ptr %15, align 8, !tbaa !822
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = load i32, ptr %30, align 4, !tbaa !426
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %28, i32 noundef %31) #17
  br label %32

32:                                               ; preds = %22, %16
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !390
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !867

36:                                               ; preds = %32, %2
  %37 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %9) #18
  %38 = load ptr, ptr %37, align 8, !tbaa !390
  %39 = icmp eq ptr %38, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 3
  %42 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 4
  br label %43

43:                                               ; preds = %40, %59
  %44 = phi ptr [ %38, %40 ], [ %61, %59 ]
  %45 = phi ptr [ %37, %40 ], [ %60, %59 ]
  %46 = load i32, ptr %44, align 8
  %47 = and i32 %46, 131072
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.df_base_ref, ptr %44, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !419
  %52 = load ptr, ptr %41, align 8, !tbaa !820
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i32, ptr %52, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !426
  %56 = load ptr, ptr %42, align 8, !tbaa !822
  %57 = getelementptr inbounds i32, ptr %56, i64 %53
  %58 = load i32, ptr %57, align 4, !tbaa !426
  tail call void @bitmap_set_range(ptr noundef %1, i32 noundef %55, i32 noundef %58) #17
  br label %59

59:                                               ; preds = %49, %43
  %60 = getelementptr inbounds ptr, ptr %45, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !390
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %43, !llvm.loop !868

63:                                               ; preds = %59, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_note_add_problem() local_unnamed_addr #0 !prof !869 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_NOTE) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @df_note_alloc(ptr nocapture readnone %0) #12 !prof !870 !PGOFuncName !871 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 6
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 9
  store i8 1, ptr %5, align 2, !tbaa !503
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_note_compute(ptr nocapture noundef readonly %0) #0 !prof !870 !PGOFuncName !872 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !873

9:                                                ; preds = %1, %9
  %10 = load i32, ptr %2, align 4, !tbaa !426
  tail call fastcc void @df_note_bb_compute(i32 noundef %10, ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %9, !prof !874, !llvm.loop !875

13:                                               ; preds = %9, %1
  tail call void @bitmap_obstack_free(ptr noundef %4) #17
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @df_note_free() #13 !prof !876 !PGOFuncName !877 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 6
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  tail call void @free(ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_note_bb_compute(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !878 !PGOFuncName !879 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !411
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !571
  %13 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %0) #18
  %14 = tail call ptr @df_get_live_out(ptr noundef %13) #18
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %14) #17
  tail call void @bitmap_clear(ptr noundef %3) #17
  %15 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18, !prof !880

18:                                               ; preds = %4, %28
  %19 = phi ptr [ %30, %28 ], [ %16, %4 ]
  %20 = phi ptr [ %29, %28 ], [ %15, %4 ]
  %21 = load i32, ptr %19, align 8
  %22 = and i32 %21, 131072
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !881

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !419
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %26) #17
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds ptr, ptr %20, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !390
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18, !prof !882, !llvm.loop !883

32:                                               ; preds = %28, %4
  %33 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %34 = load ptr, ptr %33, align 8, !tbaa !390
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36, !prof !884

36:                                               ; preds = %32, %47
  %37 = phi ptr [ %49, %47 ], [ %34, %32 ]
  %38 = phi ptr [ %48, %47 ], [ %33, %32 ]
  %39 = load i32, ptr %37, align 8
  %40 = and i32 %39, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47, !prof !885

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !419
  %45 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %44) #17
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %44) #17
  br label %47

47:                                               ; preds = %42, %36
  %48 = getelementptr inbounds ptr, ptr %38, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !390
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !prof !886, !llvm.loop !887

51:                                               ; preds = %47, %32
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !419
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !419
  %56 = icmp eq ptr %55, null
  br i1 %56, label %338, label %57, !prof !888

57:                                               ; preds = %51, %334
  %58 = phi ptr [ %336, %334 ], [ %55, %51 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !419
  %60 = load ptr, ptr %59, align 8, !tbaa !574
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !419
  %63 = icmp eq ptr %58, %62
  br i1 %63, label %338, label %64, !prof !889

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %67 = load i32, ptr %58, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -7
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %334, !prof !890

71:                                               ; preds = %64
  %72 = icmp eq i32 %68, 7
  %73 = zext i1 %72 to i32
  tail call void @bitmap_clear(ptr noundef %2) #17
  call fastcc void @df_kill_notes(ptr noundef nonnull %58, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %74 = load i32, ptr %58, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 10
  %77 = load ptr, ptr @df, align 8, !tbaa !390
  %78 = getelementptr inbounds %struct.df, ptr %77, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !475
  %80 = zext i32 %66 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !390
  %83 = getelementptr inbounds %struct.df_insn_info, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !891
  %85 = load ptr, ptr %6, align 8, !tbaa !390
  %86 = load ptr, ptr %84, align 8, !tbaa !390
  %87 = icmp eq ptr %86, null
  br i1 %76, label %88, label %146, !prof !892

88:                                               ; preds = %71
  br i1 %87, label %115, label %89, !prof !893

89:                                               ; preds = %88, %104
  %90 = phi ptr [ %107, %104 ], [ %86, %88 ]
  %91 = phi ptr [ %106, %104 ], [ %84, %88 ]
  %92 = phi ptr [ %105, %104 ], [ %85, %88 ]
  %93 = getelementptr inbounds %struct.df_mw_hardreg, ptr %90, i64 0, i32 1
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104, !prof !894

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.df_mw_hardreg, ptr %90, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !895
  %100 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %99) #18, !range !428
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %104, !prof !897

102:                                              ; preds = %97
  %103 = tail call fastcc ptr @df_set_unused_notes_for_mw(ptr noundef nonnull %58, ptr noundef %92, ptr noundef nonnull %90, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %104

104:                                              ; preds = %102, %97, %89
  %105 = phi ptr [ %103, %102 ], [ %92, %97 ], [ %92, %89 ]
  %106 = getelementptr inbounds ptr, ptr %91, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !390
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %89, !prof !898, !llvm.loop !899

109:                                              ; preds = %104
  %110 = load ptr, ptr @df, align 8, !tbaa !390
  %111 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 10
  %112 = load ptr, ptr %111, align 8, !tbaa !475
  %113 = getelementptr inbounds ptr, ptr %112, i64 %80
  %114 = load ptr, ptr %113, align 8, !tbaa !390
  br label %115

115:                                              ; preds = %109, %88
  %116 = phi ptr [ %82, %88 ], [ %114, %109 ]
  %117 = phi ptr [ %85, %88 ], [ %105, %109 ]
  %118 = getelementptr inbounds %struct.df_insn_info, ptr %116, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !476
  %120 = load ptr, ptr %119, align 8, !tbaa !390
  %121 = icmp eq ptr %120, null
  br i1 %121, label %198, label %122, !prof !900

122:                                              ; preds = %115, %142
  %123 = phi ptr [ %144, %142 ], [ %120, %115 ]
  %124 = phi ptr [ %143, %142 ], [ %119, %115 ]
  %125 = phi ptr [ %137, %142 ], [ %117, %115 ]
  %126 = getelementptr inbounds %struct.df_base_ref, ptr %123, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !419
  %128 = load i32, ptr %123, align 8
  %129 = and i32 %128, 12582912
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135, !prof !901

131:                                              ; preds = %122
  %132 = tail call fastcc ptr @df_create_unused_note(ptr noundef nonnull %58, ptr noundef %125, ptr noundef nonnull %123, ptr noundef %1, ptr noundef %3) #18
  %133 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %127) #17
  %134 = load i32, ptr %123, align 8
  br label %135

135:                                              ; preds = %131, %122
  %136 = phi i32 [ %134, %131 ], [ %128, %122 ]
  %137 = phi ptr [ %132, %131 ], [ %125, %122 ]
  %138 = and i32 %136, 1114112
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142, !prof !902

140:                                              ; preds = %135
  %141 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %127) #17
  br label %142

142:                                              ; preds = %140, %135
  %143 = getelementptr inbounds ptr, ptr %124, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !390
  %145 = icmp eq ptr %144, null
  br i1 %145, label %198, label %122, !prof !903, !llvm.loop !904

146:                                              ; preds = %71
  br i1 %87, label %168, label %147, !prof !905

147:                                              ; preds = %146, %157
  %148 = phi ptr [ %160, %157 ], [ %86, %146 ]
  %149 = phi ptr [ %159, %157 ], [ %84, %146 ]
  %150 = phi ptr [ %158, %157 ], [ %85, %146 ]
  %151 = getelementptr inbounds %struct.df_mw_hardreg, ptr %148, i64 0, i32 1
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157, !prof !906

155:                                              ; preds = %147
  %156 = tail call fastcc ptr @df_set_unused_notes_for_mw(ptr noundef nonnull %58, ptr noundef %150, ptr noundef nonnull %148, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %157

157:                                              ; preds = %155, %147
  %158 = phi ptr [ %156, %155 ], [ %150, %147 ]
  %159 = getelementptr inbounds ptr, ptr %149, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !390
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %147, !prof !907, !llvm.loop !908

162:                                              ; preds = %157
  %163 = load ptr, ptr @df, align 8, !tbaa !390
  %164 = getelementptr inbounds %struct.df, ptr %163, i64 0, i32 10
  %165 = load ptr, ptr %164, align 8, !tbaa !475
  %166 = getelementptr inbounds ptr, ptr %165, i64 %80
  %167 = load ptr, ptr %166, align 8, !tbaa !390
  br label %168

168:                                              ; preds = %162, %146
  %169 = phi ptr [ %82, %146 ], [ %167, %162 ]
  %170 = phi ptr [ %85, %146 ], [ %158, %162 ]
  %171 = getelementptr inbounds %struct.df_insn_info, ptr %169, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !476
  %173 = load ptr, ptr %172, align 8, !tbaa !390
  %174 = icmp eq ptr %173, null
  br i1 %174, label %198, label %175, !prof !909

175:                                              ; preds = %168, %194
  %176 = phi ptr [ %196, %194 ], [ %173, %168 ]
  %177 = phi ptr [ %195, %194 ], [ %172, %168 ]
  %178 = phi ptr [ %181, %194 ], [ %170, %168 ]
  %179 = getelementptr inbounds %struct.df_base_ref, ptr %176, i64 0, i32 6
  %180 = load i32, ptr %179, align 8, !tbaa !419
  %181 = tail call fastcc ptr @df_create_unused_note(ptr noundef nonnull %58, ptr noundef %178, ptr noundef nonnull %176, ptr noundef %1, ptr noundef %3) #18
  %182 = load i32, ptr %176, align 8
  %183 = and i32 %182, 12582912
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188, !prof !910

185:                                              ; preds = %175
  %186 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %180) #17
  %187 = load i32, ptr %176, align 8
  br label %188

188:                                              ; preds = %185, %175
  %189 = phi i32 [ %187, %185 ], [ %182, %175 ]
  %190 = and i32 %189, 1114112
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194, !prof !911

192:                                              ; preds = %188
  %193 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %180) #17
  br label %194

194:                                              ; preds = %192, %188
  %195 = getelementptr inbounds ptr, ptr %177, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !390
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %175, !prof !912, !llvm.loop !913

198:                                              ; preds = %194, %142, %168, %115
  %199 = phi ptr [ %117, %115 ], [ %170, %168 ], [ %137, %142 ], [ %181, %194 ]
  store ptr %199, ptr %6, align 8, !tbaa !390
  %200 = load ptr, ptr @df, align 8, !tbaa !390
  %201 = getelementptr inbounds %struct.df, ptr %200, i64 0, i32 10
  %202 = load ptr, ptr %201, align 8, !tbaa !475
  %203 = getelementptr inbounds ptr, ptr %202, i64 %80
  %204 = load ptr, ptr %203, align 8, !tbaa !390
  %205 = getelementptr inbounds %struct.df_insn_info, ptr %204, i64 0, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !891
  %207 = load ptr, ptr %5, align 8, !tbaa !390
  %208 = load ptr, ptr %206, align 8, !tbaa !390
  %209 = icmp eq ptr %208, null
  br i1 %209, label %245, label %210, !prof !914

210:                                              ; preds = %198, %233
  %211 = phi ptr [ %237, %233 ], [ %208, %198 ]
  %212 = phi ptr [ %236, %233 ], [ %206, %198 ]
  %213 = phi i32 [ %235, %233 ], [ %73, %198 ]
  %214 = phi ptr [ %234, %233 ], [ %207, %198 ]
  %215 = getelementptr inbounds %struct.df_mw_hardreg, ptr %211, i64 0, i32 1
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %233, !prof !915

219:                                              ; preds = %210
  %220 = getelementptr inbounds %struct.df_mw_hardreg, ptr %211, i64 0, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !895
  %222 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %221) #18, !range !428
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %233, !prof !916

224:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  %225 = icmp ne i32 %213, 0
  %226 = zext i1 %225 to i8
  store i8 %226, ptr %7, align 1, !tbaa !419
  %227 = call fastcc ptr @df_set_dead_notes_for_mw(ptr noundef nonnull %58, ptr noundef %214, ptr noundef nonnull %211, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #18
  %228 = load i8, ptr %7, align 1, !tbaa !419
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %231, label %230, !prof !916

230:                                              ; preds = %224
  br label %231

231:                                              ; preds = %230, %224
  %232 = phi i32 [ -1, %230 ], [ %213, %224 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  br label %233

233:                                              ; preds = %231, %219, %210
  %234 = phi ptr [ %214, %219 ], [ %227, %231 ], [ %214, %210 ]
  %235 = phi i32 [ %213, %219 ], [ %232, %231 ], [ %213, %210 ]
  %236 = getelementptr inbounds ptr, ptr %212, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !390
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %210, !prof !917, !llvm.loop !918

239:                                              ; preds = %233
  %240 = load ptr, ptr @df, align 8, !tbaa !390
  %241 = getelementptr inbounds %struct.df, ptr %240, i64 0, i32 10
  %242 = load ptr, ptr %241, align 8, !tbaa !475
  %243 = getelementptr inbounds ptr, ptr %242, i64 %80
  %244 = load ptr, ptr %243, align 8, !tbaa !390
  br label %245

245:                                              ; preds = %239, %198
  %246 = phi ptr [ %204, %198 ], [ %244, %239 ]
  %247 = phi ptr [ %207, %198 ], [ %234, %239 ]
  %248 = phi i32 [ %73, %198 ], [ %235, %239 ]
  store ptr %247, ptr %5, align 8, !tbaa !390
  %249 = getelementptr inbounds %struct.df_insn_info, ptr %246, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !678
  %251 = load ptr, ptr %250, align 8, !tbaa !390
  %252 = icmp eq ptr %251, null
  br i1 %252, label %308, label %253, !prof !919

253:                                              ; preds = %245, %303
  %254 = phi ptr [ %306, %303 ], [ %251, %245 ]
  %255 = phi ptr [ %305, %303 ], [ %250, %245 ]
  %256 = phi ptr [ %304, %303 ], [ %247, %245 ]
  %257 = getelementptr inbounds %struct.df_base_ref, ptr %254, i64 0, i32 6
  %258 = load i32, ptr %257, align 8, !tbaa !419
  %259 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %258) #17
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %303, !prof !920

261:                                              ; preds = %253
  %262 = icmp eq i32 %248, 0
  br i1 %262, label %263, label %308, !prof !921

263:                                              ; preds = %261
  %264 = load i32, ptr %254, align 8
  %265 = and i32 %264, 268435456
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %300, !prof !922

267:                                              ; preds = %263
  %268 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %258) #17
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %300, !prof !923

270:                                              ; preds = %267
  %271 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %258) #17
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %300, !prof !924

273:                                              ; preds = %270
  %274 = load i32, ptr %254, align 8
  %275 = and i32 %274, 2097152
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %300, !prof !925

277:                                              ; preds = %273
  %278 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %258) #18, !range !428
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %300, !prof !925

280:                                              ; preds = %277
  %281 = and i32 %274, 254
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %283, label %294, !prof !926

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.df_regular_ref, ptr %254, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !419
  %286 = icmp eq ptr %285, null
  br i1 %286, label %294, label %287, !prof !925

287:                                              ; preds = %283
  %288 = load ptr, ptr %285, align 8, !tbaa !390
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 39
  %292 = getelementptr inbounds %struct.rtx_def, ptr %288, i64 0, i32 1
  %293 = select i1 %291, ptr %292, ptr %285, !prof !927
  br label %296

294:                                              ; preds = %280, %283
  %295 = getelementptr inbounds %struct.df_base_ref, ptr %254, i64 0, i32 1
  br label %296

296:                                              ; preds = %294, %287
  %297 = phi ptr [ %293, %287 ], [ %295, %294 ]
  %298 = load ptr, ptr %297, align 8, !tbaa !419
  %299 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef nonnull %58, ptr noundef %256, ptr noundef %298) #18
  br label %300

300:                                              ; preds = %296, %277, %273, %270, %267, %263
  %301 = phi ptr [ %299, %296 ], [ %256, %277 ], [ %256, %273 ], [ %256, %270 ], [ %256, %267 ], [ %256, %263 ]
  %302 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %258) #17
  br label %303

303:                                              ; preds = %300, %253
  %304 = phi ptr [ %301, %300 ], [ %256, %253 ]
  %305 = getelementptr inbounds ptr, ptr %255, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !390
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %253, !prof !928, !llvm.loop !929

308:                                              ; preds = %303, %261, %245
  %309 = phi ptr [ %247, %245 ], [ %256, %261 ], [ %304, %303 ]
  %310 = phi i32 [ %248, %245 ], [ -1, %261 ], [ %248, %303 ]
  %311 = load ptr, ptr %6, align 8, !tbaa !390
  %312 = icmp eq ptr %311, null
  br i1 %312, label %318, label %313, !prof !930

313:                                              ; preds = %308, %313
  %314 = phi ptr [ %316, %313 ], [ %311, %308 ]
  %315 = getelementptr inbounds %struct.rtx_def, ptr %314, i64 0, i32 1, i32 0, i32 0, i64 1
  %316 = load ptr, ptr %315, align 8, !tbaa !419
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %314) #17
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %313, !prof !931, !llvm.loop !932

318:                                              ; preds = %313, %308
  %319 = icmp eq ptr %309, null
  br i1 %319, label %325, label %320, !prof !933

320:                                              ; preds = %318, %320
  %321 = phi ptr [ %323, %320 ], [ %309, %318 ]
  %322 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1, i32 0, i32 0, i64 1
  %323 = load ptr, ptr %322, align 8, !tbaa !419
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %321) #17
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %320, !prof !934, !llvm.loop !935

325:                                              ; preds = %320, %318
  %326 = icmp eq i32 %310, -1
  br i1 %326, label %327, label %334, !prof !936

327:                                              ; preds = %325
  %328 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !390
  %329 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %328) #17
  %330 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !419
  %332 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %329, ptr %332, align 8, !tbaa !419
  %333 = tail call zeroext i8 @df_insn_rescan_debug_internal(ptr noundef nonnull %58) #17
  br label %334

334:                                              ; preds = %64, %325, %327
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %335 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !419
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %57, !prof !937, !llvm.loop !938

338:                                              ; preds = %57, %334, %51
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @df_kill_notes(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !939 !PGOFuncName !940 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7, !prof !941

7:                                                ; preds = %3, %36
  %8 = phi ptr [ %40, %36 ], [ %4, %3 ]
  %9 = phi ptr [ %39, %36 ], [ %5, %3 ]
  %10 = phi ptr [ %38, %36 ], [ null, %3 ]
  %11 = phi ptr [ %37, %36 ], [ null, %3 ]
  %12 = load i32, ptr %9, align 8
  %13 = lshr i32 %12, 16
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %33 [
    i8 1, label %15
    i8 6, label %24
  ], !prof !942

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !419
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef %17) #18
  %19 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %18) #18, !range !428
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !419
  br i1 %20, label %23, label %36, !prof !943

23:                                               ; preds = %15
  store ptr %11, ptr %21, align 8, !tbaa !419
  store ptr %22, ptr %8, align 8, !tbaa !390
  br label %36

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !419
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef %26) #18
  %28 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %27) #18, !range !428
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !419
  br i1 %29, label %32, label %36, !prof !944

32:                                               ; preds = %24
  store ptr %10, ptr %30, align 8, !tbaa !419
  store ptr %31, ptr %8, align 8, !tbaa !390
  br label %36

33:                                               ; preds = %7
  %34 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !390
  br label %36

36:                                               ; preds = %24, %15, %32, %23, %33
  %37 = phi ptr [ %11, %33 ], [ %11, %32 ], [ %9, %23 ], [ %11, %15 ], [ %11, %24 ]
  %38 = phi ptr [ %10, %33 ], [ %9, %32 ], [ %10, %23 ], [ %10, %15 ], [ %10, %24 ]
  %39 = phi ptr [ %35, %33 ], [ %31, %32 ], [ %22, %23 ], [ %22, %15 ], [ %31, %24 ]
  %40 = phi ptr [ %34, %33 ], [ %8, %32 ], [ %8, %23 ], [ %21, %15 ], [ %30, %24 ]
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %7, !prof !945, !llvm.loop !946

42:                                               ; preds = %36, %3
  %43 = phi ptr [ null, %3 ], [ %37, %36 ]
  %44 = phi ptr [ null, %3 ], [ %38, %36 ]
  store ptr %43, ptr %1, align 8, !tbaa !390
  store ptr %44, ptr %2, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @df_ignore_stack_reg(i32 noundef %0) unnamed_addr #15 !prof !947 !PGOFuncName !948 {
  %2 = load i32, ptr @regstack_completed, align 4, !tbaa !426
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4, !prof !949

4:                                                ; preds = %1
  %5 = and i32 %0, -8
  %6 = icmp eq i32 %5, 8
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_set_unused_notes_for_mw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !950 !PGOFuncName !951 {
  %7 = tail call fastcc zeroext i8 @df_whole_mw_reg_unused_p(ptr noundef %2, ptr noundef %3, ptr noundef %5) #18, !range !428
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !895
  br i1 %8, label %15, label %11, !prof !916

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !952
  %13 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %1, ptr noundef %12) #18
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %10) #17
  br label %39

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !953
  %18 = icmp ugt i32 %10, %17
  br i1 %18, label %39, label %19, !prof !954

19:                                               ; preds = %15, %33
  %20 = phi ptr [ %34, %33 ], [ %1, %15 ]
  %21 = phi i32 [ %36, %33 ], [ %10, %15 ]
  %22 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %21) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33, !prof !955

24:                                               ; preds = %19
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %21) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33, !prof !956

27:                                               ; preds = %24
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !390
  %29 = zext i32 %21 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !390
  %32 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %20, ptr noundef %31) #18
  br label %33

33:                                               ; preds = %27, %24, %19
  %34 = phi ptr [ %20, %19 ], [ %20, %24 ], [ %32, %27 ]
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %21) #17
  %36 = add i32 %21, 1
  %37 = load i32, ptr %16, align 8, !tbaa !953
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %19, !prof !957, !llvm.loop !958

39:                                               ; preds = %33, %15, %11
  %40 = phi ptr [ %13, %11 ], [ %1, %15 ], [ %34, %33 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_create_unused_note(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !959 !PGOFuncName !960 {
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !419
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %41, !prof !961

10:                                               ; preds = %5
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 268435456
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41, !prof !962

14:                                               ; preds = %10
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %7) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41, !prof !963

17:                                               ; preds = %14
  %18 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %7) #18, !range !428
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %41, !prof !964

20:                                               ; preds = %17
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 254
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %35, !prof !965

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.df_regular_ref, ptr %2, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !419
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28, !prof !964

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !390
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 39
  %33 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %34 = select i1 %32, ptr %33, ptr %26, !prof !966
  br label %37

35:                                               ; preds = %20, %24
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %2, i64 0, i32 1
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %34, %28 ], [ %36, %35 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !419
  %40 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %1, ptr noundef %39) #18
  br label %41

41:                                               ; preds = %37, %17, %14, %10, %5
  %42 = phi ptr [ %1, %5 ], [ %1, %10 ], [ %1, %14 ], [ %1, %17 ], [ %40, %37 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_set_dead_notes_for_mw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !prof !950 !PGOFuncName !967 {
  %8 = load i8, ptr %6, align 1, !tbaa !419
  store i8 0, ptr %6, align 1, !tbaa !419
  %9 = tail call fastcc zeroext i8 @df_whole_mw_reg_dead_p(ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %4) #18, !range !428
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11, !prof !916

11:                                               ; preds = %7
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  store i8 1, ptr %6, align 1, !tbaa !419
  br label %48

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8, !tbaa !952
  %16 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef %0, ptr noundef %1, ptr noundef %15) #18
  br label %48

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !895
  %20 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !953
  %22 = icmp ugt i32 %19, %21
  br i1 %22, label %48, label %23, !prof !954

23:                                               ; preds = %17, %43
  %24 = phi i32 [ %45, %43 ], [ %19, %17 ]
  %25 = phi ptr [ %44, %43 ], [ %1, %17 ]
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %24) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %43, !prof !968

28:                                               ; preds = %23
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %24) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43, !prof !968

31:                                               ; preds = %28
  %32 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %24) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43, !prof !969

34:                                               ; preds = %31
  %35 = icmp eq i8 %8, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  store i8 1, ptr %6, align 1, !tbaa !419
  br label %48

37:                                               ; preds = %34
  %38 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !390
  %39 = zext i32 %24 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !390
  %42 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef %0, ptr noundef %25, ptr noundef %41) #18
  br label %43

43:                                               ; preds = %23, %28, %31, %37
  %44 = phi ptr [ %25, %23 ], [ %25, %28 ], [ %25, %31 ], [ %42, %37 ]
  %45 = add i32 %24, 1
  %46 = load i32, ptr %20, align 8, !tbaa !953
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %23, !prof !957, !llvm.loop !970

48:                                               ; preds = %43, %17, %14, %36, %13
  %49 = phi ptr [ %1, %13 ], [ %25, %36 ], [ %16, %14 ], [ %1, %17 ], [ %44, %43 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_set_note(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !971 !PGOFuncName !972 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %9, !prof !973

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #17
  br label %9

9:                                                ; preds = %4, %8
  %10 = icmp eq ptr %2, null
  br i1 %10, label %37, label %11, !prof !974

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !419
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %19, label %32, !prof !975

15:                                               ; preds = %32
  %16 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !419
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %32, !prof !976, !llvm.loop !977

19:                                               ; preds = %15, %11
  %20 = phi ptr [ null, %11 ], [ %33, %15 ]
  %21 = phi ptr [ %2, %11 ], [ %35, %15 ]
  %22 = icmp eq ptr %20, null
  %23 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !419
  br i1 %22, label %27, label %25, !prof !978

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %24, ptr %26, align 8, !tbaa !419
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi ptr [ %2, %25 ], [ %24, %19 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !419
  %31 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !419
  store ptr %21, ptr %29, align 8, !tbaa !419
  br label %38

32:                                               ; preds = %11, %15
  %33 = phi ptr [ %35, %15 ], [ %2, %11 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !419
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !prof !979, !llvm.loop !977

37:                                               ; preds = %32, %9
  tail call void @add_reg_note(ptr noundef nonnull %1, i32 noundef %0, ptr noundef %3) #17
  br label %38

38:                                               ; preds = %37, %27
  %39 = phi ptr [ %28, %27 ], [ %2, %37 ]
  ret ptr %39
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan_debug_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @df_whole_mw_reg_unused_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !950 !PGOFuncName !980 {
  %4 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31, !prof !916

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !895
  %11 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !953
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %25, label %18, !prof !981

14:                                               ; preds = %22
  %15 = add i32 %19, 1
  %16 = load i32, ptr %11, align 8, !tbaa !953
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %25, label %18, !prof !982, !llvm.loop !983

18:                                               ; preds = %8, %14
  %19 = phi i32 [ %15, %14 ], [ %10, %8 ]
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %19) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31, !prof !984

22:                                               ; preds = %18
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %19) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %14, label %31

25:                                               ; preds = %14, %8
  %26 = load ptr, ptr %0, align 8, !tbaa !952
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3230, ptr noundef nonnull @.str.1) #17
  br label %31

31:                                               ; preds = %18, %22, %30, %25, %3
  %32 = phi i8 [ 0, %3 ], [ 1, %25 ], [ 1, %30 ], [ 0, %22 ], [ 0, %18 ]
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @df_whole_mw_reg_dead_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !950 !PGOFuncName !985 {
  %5 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35, !prof !916

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !895
  %12 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !953
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %29, label %19, !prof !981

15:                                               ; preds = %26
  %16 = add i32 %20, 1
  %17 = load i32, ptr %12, align 8, !tbaa !953
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %29, label %19, !prof !982, !llvm.loop !986

19:                                               ; preds = %9, %15
  %20 = phi i32 [ %16, %15 ], [ %11, %9 ]
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %20) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35, !prof !916

23:                                               ; preds = %19
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %20) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35, !prof !916

26:                                               ; preds = %23
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %20) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %15, label %35, !prof !984

29:                                               ; preds = %15, %9
  %30 = load ptr, ptr %0, align 8, !tbaa !952
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3306, ptr noundef nonnull @.str.1) #17
  br label %35

35:                                               ; preds = %19, %23, %26, %34, %29, %4
  %36 = phi i8 [ 0, %4 ], [ 1, %29 ], [ 1, %34 ], [ 0, %26 ], [ 0, %23 ], [ 0, %19 ]
  ret i8 %36
}

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_find_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !987 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !419
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !475
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !476
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !988

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 1114112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !989

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !419
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !prof !990, !llvm.loop !991

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !992 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !419
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !475
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !476
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !993

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 1114112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !994

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !419
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !prof !995, !llvm.loop !996

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_uses(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !997 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %28, label %6, !prof !998

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !419
  %9 = load ptr, ptr @df, align 8, !tbaa !390
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !475
  %12 = zext i32 %8 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df_insn_info, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !678
  %17 = load ptr, ptr %16, align 8, !tbaa !390
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !prof !999

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %6 ]
  %21 = phi ptr [ %25, %19 ], [ %16, %6 ]
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !419
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %23) #17
  %25 = getelementptr inbounds ptr, ptr %21, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !390
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !prof !1000, !llvm.loop !1001

28:                                               ; preds = %19, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_initialize_backwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !1002 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !1003

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !419
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !390
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !1004, !llvm.loop !1005

22:                                               ; preds = %18, %2
  %23 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %4) #18
  %24 = load ptr, ptr %23, align 8, !tbaa !390
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26, !prof !1006

26:                                               ; preds = %22, %36
  %27 = phi ptr [ %38, %36 ], [ %24, %22 ]
  %28 = phi ptr [ %37, %36 ], [ %23, %22 ]
  %29 = load i32, ptr %27, align 8
  %30 = and i32 %29, 131072
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36, !prof !1007

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %27, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !419
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %34) #17
  br label %36

36:                                               ; preds = %32, %26
  %37 = getelementptr inbounds ptr, ptr %28, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !390
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %26, !prof !1008, !llvm.loop !1009

40:                                               ; preds = %36, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_one_insn_backwards(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !1010 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -11
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %9, label %8, !prof !1011

8:                                                ; preds = %3
  tail call void @df_simulate_defs(ptr noundef nonnull %1, ptr noundef %2) #18
  tail call void @df_simulate_uses(ptr noundef nonnull %1, ptr noundef %2) #18
  tail call fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %2) #18
  br label %9

9:                                                ; preds = %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !435 !PGOFuncName !1012 {
  %3 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %0) #18, !range !428
  %4 = icmp eq i8 %3, 0
  %5 = load ptr, ptr @df, align 8, !tbaa !390
  br i1 %4, label %8, label %6, !prof !1013

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 15
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 14
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !390
  %13 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %1, ptr noundef %12) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !435 !PGOFuncName !1014 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !425
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !427
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !428
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !1015

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !390
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !431
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !443

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !428
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !1016, !llvm.loop !1017

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_finalize_backwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !1018 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !1019

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !419
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !390
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !1004, !llvm.loop !1020

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_initialize_forwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !1021 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !1022

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !1023

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !419
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !390
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !1024, !llvm.loop !1025

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_one_insn_forwards(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !1026 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %52, !prof !1027

8:                                                ; preds = %3
  %9 = load ptr, ptr @df, align 8, !tbaa !390
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 6
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !1028

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3935, ptr noundef nonnull @.str.1) #17
  br label %14

14:                                               ; preds = %8, %13
  tail call void @df_simulate_find_defs(ptr noundef nonnull %1, ptr noundef %2) #18
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !419
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18, !prof !1029

18:                                               ; preds = %14, %47
  %19 = phi ptr [ %49, %47 ], [ %16, %14 ]
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %47 [
    i8 1, label %23
    i8 6, label %23
  ], !prof !1030

23:                                               ; preds = %18, %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !419
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef %25) #18
  %27 = icmp slt i32 %26, 53
  br i1 %27, label %28, label %45, !prof !1031

28:                                               ; preds = %23
  %29 = sext i32 %26 to i64
  %30 = load i32, ptr %25, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %29, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !419
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %47, label %37, !prof !1032

37:                                               ; preds = %28
  %38 = zext i8 %35 to i32
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i32 [ %41, %39 ], [ %38, %37 ]
  %41 = add nsw i32 %40, -1
  %42 = add nsw i32 %41, %26
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %42) #17
  %44 = icmp ugt i32 %40, 1
  br i1 %44, label %39, label %47, !prof !1032, !llvm.loop !1033

45:                                               ; preds = %23
  %46 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %26) #17
  br label %47

47:                                               ; preds = %39, %28, %45, %18
  %48 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !419
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %18, !prof !1034, !llvm.loop !1035

51:                                               ; preds = %47, %14
  tail call fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %2) #18
  br label %52

52:                                               ; preds = %3, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_simulate_artificial_defs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !416 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2, %23
  %9 = phi ptr [ %25, %23 ], [ %6, %2 ]
  %10 = phi ptr [ %24, %23 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !419
  %17 = and i32 %11, 5308416
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %16) #17
  br label %23

21:                                               ; preds = %14
  %22 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %23

23:                                               ; preds = %19, %21, %8
  %24 = getelementptr inbounds ptr, ptr %10, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !390
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !1036

27:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_simulate_one_insn(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !416 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !419
  %6 = load ptr, ptr @df, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !475
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !476
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %3, %38
  %17 = phi ptr [ %40, %38 ], [ %14, %3 ]
  %18 = phi ptr [ %39, %38 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !419
  %21 = load ptr, ptr @df, align 8, !tbaa !390
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 27
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  %26 = icmp ugt i32 %20, 52
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %16
  %29 = load i32, ptr %17, align 8
  %30 = and i32 %29, 5308416
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !419
  br i1 %31, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %33) #17
  br label %38

36:                                               ; preds = %28
  %37 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %33) #17
  br label %38

38:                                               ; preds = %34, %36, %16
  %39 = getelementptr inbounds ptr, ptr %18, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !390
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %16, !llvm.loop !1037

42:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_add_problem() local_unnamed_addr #0 !prof !689 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_MD) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_alloc(ptr nocapture noundef readonly %0) #0 !prof !689 !PGOFuncName !1038 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 7
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !485
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !1039

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.48, i64 noundef 40, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !390
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 7
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !485
  %16 = load ptr, ptr %13, align 8, !tbaa !390
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  tail call void @df_grow_bb_info(ptr noundef %18) #18
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %19, ptr @df_md_scratch, align 8, !tbaa !390
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %55, label %22, !prof !1040

22:                                               ; preds = %17, %52
  %23 = load i32, ptr %2, align 4, !tbaa !426
  %24 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %23) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26, !prof !1041

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !1042
  tail call void @bitmap_clear(ptr noundef %28) #17
  %29 = load ptr, ptr %24, align 8, !tbaa !1044
  tail call void @bitmap_clear(ptr noundef %29) #17
  %30 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !1045
  tail call void @bitmap_clear(ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !1046
  tail call void @bitmap_clear(ptr noundef %33) #17
  %34 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !1047
  tail call void @bitmap_clear(ptr noundef %35) #17
  br label %52

36:                                               ; preds = %22
  %37 = load ptr, ptr @df, align 8, !tbaa !390
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 7
  %39 = load ptr, ptr %38, align 8, !tbaa !390
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !485
  %42 = tail call ptr @pool_alloc(ptr noundef %41) #17
  tail call fastcc void @df_md_set_bb_info(i32 noundef %23, ptr noundef %42) #18
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %44 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !1042
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %45, ptr %42, align 8, !tbaa !1044
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %47 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !1045
  %48 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %49 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !1046
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %51 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 4
  store ptr %50, ptr %51, align 8, !tbaa !1047
  br label %52

52:                                               ; preds = %36, %26
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %53 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %22, !prof !1048, !llvm.loop !1049

55:                                               ; preds = %52, %17
  %56 = load ptr, ptr @df, align 8, !tbaa !390
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 7
  %58 = load ptr, ptr %57, align 8, !tbaa !390
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 9
  store i8 1, ptr %59, align 2, !tbaa !503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_reset(ptr nocapture noundef readonly %0) #0 !prof !416 !PGOFuncName !1050 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4267, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1046
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !1047
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !1051

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !1052 !PGOFuncName !1053 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4, !prof !1054

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1045
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !1045
  %7 = load ptr, ptr %1, align 8, !tbaa !1044
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !1044
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !1042
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !1042
  %10 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1046
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !1046
  %12 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !1047
  tail call void @bitmap_obstack_free(ptr noundef %13) #17
  store ptr null, ptr %12, align 8, !tbaa !1047
  %14 = load ptr, ptr @df, align 8, !tbaa !390
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 7
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !485
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_local_compute(ptr noundef %0) #0 !prof !689 !PGOFuncName !1055 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %6, ptr @seen_in_insn, align 8, !tbaa !390
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !428
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9, !prof !1040

9:                                                ; preds = %1, %9
  %10 = load i32, ptr %2, align 4, !tbaa !426
  tail call fastcc void @df_md_bb_local_compute(i32 noundef %10) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !428
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %9, !prof !1048, !llvm.loop !1056

13:                                               ; preds = %9
  %14 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %6, %1 ]
  tail call void @bitmap_obstack_free(ptr noundef %16) #17
  store ptr null, ptr @seen_in_insn, align 8, !tbaa !390
  %17 = load ptr, ptr @cfun, align 8, !tbaa !390
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !411
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !413
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr @xmalloc(i64 noundef %23) #17
  %25 = load ptr, ptr @cfun, align 8, !tbaa !390
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !411
  %28 = load ptr, ptr %27, align 8, !tbaa !390
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30, !prof !1040

30:                                               ; preds = %15, %30
  %31 = phi ptr [ %38, %30 ], [ %28, %15 ]
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !395
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %24, i64 %35
  store ptr %32, ptr %36, align 8, !tbaa !390
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !390
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %30, !prof !1048, !llvm.loop !1057

40:                                               ; preds = %30, %15
  tail call void @compute_dominance_frontiers(ptr noundef %24) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !428
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %75, label %43, !prof !1040

43:                                               ; preds = %40, %72
  %44 = load i32, ptr %2, align 4, !tbaa !426
  %45 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %44) #18
  %46 = getelementptr inbounds %struct.df_md_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !1045
  %48 = zext i32 %44 to i64
  %49 = getelementptr inbounds ptr, ptr %24, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !390
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %50, i32 noundef 0, ptr noundef nonnull %3) #18
  %51 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #18, !range !428
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %72, label %53, !prof !1058

53:                                               ; preds = %43, %69
  %54 = load ptr, ptr @cfun, align 8, !tbaa !390
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !411
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !571
  %59 = load i32, ptr %3, align 4, !tbaa !426
  %60 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %58, i32 noundef %59) #18
  %61 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %59) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63, !prof !1059

63:                                               ; preds = %53
  %64 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %59) #18
  %65 = getelementptr inbounds %struct.df_md_bb_info, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !1042
  %67 = tail call ptr @df_get_live_in(ptr noundef %60) #18
  %68 = tail call zeroext i8 @bitmap_ior_and_into(ptr noundef %66, ptr noundef %47, ptr noundef %67) #17
  br label %69

69:                                               ; preds = %63, %53
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #18
  %70 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #18, !range !428
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %53, !prof !1060, !llvm.loop !1061

72:                                               ; preds = %69, %43
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #18
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !428
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %43, !prof !1048, !llvm.loop !1062

75:                                               ; preds = %72, %40
  %76 = load ptr, ptr @cfun, align 8, !tbaa !390
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !411
  %79 = load ptr, ptr %78, align 8, !tbaa !390
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81, !prof !1040

81:                                               ; preds = %75, %81
  %82 = phi ptr [ %92, %81 ], [ %79, %75 ]
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !395
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %24, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !390
  tail call void @bitmap_obstack_free(ptr noundef %87) #17
  %88 = load i32, ptr %83, align 8, !tbaa !395
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %24, i64 %89
  store ptr null, ptr %90, align 8, !tbaa !390
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !390
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %81, !prof !1048, !llvm.loop !1063

94:                                               ; preds = %81, %75
  tail call void @free(ptr noundef %24) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_init(ptr nocapture noundef readonly %0) #0 !prof !689 !PGOFuncName !1064 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6, !prof !1040

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !426
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1046
  %11 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1042
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = tail call zeroext i8 @df_md_transfer_function(i32 noundef %7) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !428
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %6, !prof !1048, !llvm.loop !1065

16:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_confluence_0(ptr nocapture noundef readonly %0) #0 !prof !1066 !PGOFuncName !1067 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !395
  %4 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %3) #18
  %5 = getelementptr inbounds %struct.df_md_bb_info, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1046
  %7 = getelementptr inbounds %struct.df_md_bb_info, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1042
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !1068 !PGOFuncName !1069 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !433
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !395
  %6 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %5) #18
  %7 = getelementptr inbounds %struct.df_md_bb_info, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !1046
  %9 = load ptr, ptr %0, align 8, !tbaa !429
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !395
  %12 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %11) #18
  %13 = getelementptr inbounds %struct.df_md_bb_info, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !1047
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !431
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27, !prof !1070

19:                                               ; preds = %1
  %20 = and i32 %16, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !1070

22:                                               ; preds = %19
  %23 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !390
  %24 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %8, ptr noundef %14, ptr noundef %23) #17
  br label %27

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %8, ptr noundef %14) #17
  br label %27

27:                                               ; preds = %22, %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_md_transfer_function(i32 noundef %0) #0 !prof !1071 !PGOFuncName !1072 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %0) #18
  %9 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1046
  %11 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !1047
  %13 = load ptr, ptr %8, align 8, !tbaa !1044
  %14 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1045
  %16 = load ptr, ptr @df_md_scratch, align 8, !tbaa !390
  %17 = tail call ptr @df_get_live_out(ptr noundef %7) #18
  tail call void @bitmap_and(ptr noundef %16, ptr noundef %13, ptr noundef %17) #17
  %18 = tail call ptr @df_get_live_in(ptr noundef %7) #18
  tail call void @bitmap_and_into(ptr noundef %10, ptr noundef %18) #17
  %19 = load ptr, ptr @df_md_scratch, align 8, !tbaa !390
  %20 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %12, ptr noundef %19, ptr noundef %10, ptr noundef %15) #17
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_free() #0 !prof !689 !PGOFuncName !1073 {
  %1 = load ptr, ptr @df, align 8, !tbaa !390
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 7
  %3 = load ptr, ptr %2, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !401
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7, !prof !1040

7:                                                ; preds = %0, %23
  %8 = phi ptr [ %24, %23 ], [ %1, %0 ]
  %9 = phi i32 [ %25, %23 ], [ 0, %0 ]
  %10 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12, !prof !1074

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1045
  tail call void @bitmap_obstack_free(ptr noundef %14) #17
  store ptr null, ptr %13, align 8, !tbaa !1045
  %15 = load ptr, ptr %10, align 8, !tbaa !1044
  tail call void @bitmap_obstack_free(ptr noundef %15) #17
  store ptr null, ptr %10, align 8, !tbaa !1044
  %16 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1042
  tail call void @bitmap_obstack_free(ptr noundef %17) #17
  store ptr null, ptr %16, align 8, !tbaa !1042
  %18 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !1046
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %18, align 8, !tbaa !1046
  %20 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !1047
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !1047
  %22 = load ptr, ptr @df, align 8, !tbaa !390
  br label %23

23:                                               ; preds = %12, %7
  %24 = phi ptr [ %22, %12 ], [ %8, %7 ]
  %25 = add nuw i32 %9, 1
  %26 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 1, i64 7
  %27 = load ptr, ptr %26, align 8, !tbaa !390
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !401
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %7, label %31, !prof !1075, !llvm.loop !1076

31:                                               ; preds = %23, %0
  %32 = load ptr, ptr @df_md_scratch, align 8, !tbaa !390
  tail call void @bitmap_obstack_free(ptr noundef %32) #17
  store ptr null, ptr @df_md_scratch, align 8, !tbaa !390
  %33 = load ptr, ptr @df, align 8, !tbaa !390
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 1, i64 7
  %35 = load ptr, ptr %34, align 8, !tbaa !390
  %36 = getelementptr inbounds %struct.dataflow, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !485
  tail call void @free_alloc_pool(ptr noundef %37) #17
  %38 = load ptr, ptr @df, align 8, !tbaa !390
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1, i64 7
  %40 = load ptr, ptr %39, align 8, !tbaa !390
  %41 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 2
  store i32 0, ptr %41, align 8, !tbaa !401
  %42 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !404
  tail call void @free(ptr noundef %43) #18
  %44 = load ptr, ptr @df, align 8, !tbaa !390
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 1, i64 7
  %46 = load ptr, ptr %45, align 8, !tbaa !390
  tail call void @free(ptr noundef %46) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !1077 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1046
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !1046
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 14, i64 1, ptr %1)
  %15 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1042
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %16) #17
  %17 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 12, i64 1, ptr %1)
  %18 = load ptr, ptr %5, align 8, !tbaa !1044
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %18) #17
  %19 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 13, i64 1, ptr %1)
  %20 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1045
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %21) #17
  br label %22

22:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !416 !PGOFuncName !1078 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !395
  %5 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !1047
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !1047
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  br label %14

14:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_md_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !1079 !PGOFuncName !1080 {
  %2 = load ptr, ptr @df, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 7
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !401
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !1081

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !390
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_md_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1082 !PGOFuncName !1083 {
  %3 = load ptr, ptr @df, align 8, !tbaa !390
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 7
  %5 = load ptr, ptr %4, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !1084

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4030, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !390
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 7
  %10 = load ptr, ptr %9, align 8, !tbaa !390
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !401
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16, !prof !1041

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4031, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !390
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 7
  %19 = load ptr, ptr %18, align 8, !tbaa !390
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !404
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !390
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_md_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !1082 !PGOFuncName !1085 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %0) #18
  %9 = load ptr, ptr @df, align 8, !tbaa !390
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 27
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16, !prof !1041

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_md_bb_local_compute_process_def(ptr noundef %8, ptr noundef %15, i32 noundef 2) #18
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !419
  %19 = load ptr, ptr %18, align 8, !tbaa !419
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21, !prof !1086

21:                                               ; preds = %16, %45
  %22 = phi ptr [ %47, %45 ], [ %19, %16 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !419
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !734
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !419
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %49, label %29, !prof !1087

29:                                               ; preds = %21
  %30 = load i32, ptr %22, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %45, !prof !1088

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !419
  %37 = load ptr, ptr @df, align 8, !tbaa !390
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !475
  %40 = zext i32 %36 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !390
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !476
  tail call fastcc void @df_md_bb_local_compute_process_def(ptr noundef %8, ptr noundef %44, i32 noundef 0) #18
  br label %45

45:                                               ; preds = %29, %34
  %46 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !419
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %21, !prof !1089, !llvm.loop !1090

49:                                               ; preds = %21, %45, %16
  %50 = load ptr, ptr @df, align 8, !tbaa !390
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 27
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57, !prof !1041

55:                                               ; preds = %49
  %56 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_md_bb_local_compute_process_def(ptr noundef %8, ptr noundef %56, i32 noundef 0) #18
  br label %57

57:                                               ; preds = %55, %49
  ret void
}

; Function Attrs: optsize
declare void @compute_dominance_frontiers(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_and_into(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_md_bb_local_compute_process_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1091 !PGOFuncName !1092 {
  %4 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  tail call void @bitmap_clear(ptr noundef %4) #17
  %5 = load ptr, ptr %1, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7, !prof !1093

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %45
  %10 = phi ptr [ %5, %7 ], [ %46, %45 ]
  %11 = phi ptr [ %1, %7 ], [ %12, %45 ]
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !419
  %15 = load ptr, ptr @df, align 8, !tbaa !390
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 27
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !1094

20:                                               ; preds = %9
  %21 = icmp ugt i32 %14, 52
  br i1 %21, label %22, label %45

22:                                               ; preds = %20, %9
  %23 = load i32, ptr %10, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %45, !prof !1095

27:                                               ; preds = %22
  %28 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %28, i32 noundef %14) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45, !prof !1096

31:                                               ; preds = %27
  %32 = load i32, ptr %10, align 8
  %33 = and i32 %32, 5308416
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38, !prof !1097

35:                                               ; preds = %31
  %36 = load ptr, ptr @seen_in_insn, align 8, !tbaa !390
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %36, i32 noundef %14) #17
  br label %38

38:                                               ; preds = %31, %35
  %39 = phi ptr [ %8, %35 ], [ %0, %31 ]
  %40 = phi ptr [ %0, %35 ], [ %8, %31 ]
  %41 = load ptr, ptr %39, align 8, !tbaa !390
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %41, i32 noundef %14) #17
  %43 = load ptr, ptr %40, align 8, !tbaa !390
  %44 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %43, i32 noundef %14) #17
  br label %45

45:                                               ; preds = %38, %27, %22, %20
  %46 = load ptr, ptr %12, align 8, !tbaa !390
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %9, !prof !1098, !llvm.loop !1099

48:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!388}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!36 = !{ptr @df_get_live_out, ptr @fancy_abort, i64 1}
!37 = !{ptr @df_get_live_out, ptr @df_live_get_bb_info, i64 6164468}
!38 = !{ptr @df_get_live_out, ptr @df_lr_get_bb_info, i64 1}
!39 = !{ptr @df_get_live_in, ptr @fancy_abort, i64 1}
!40 = !{ptr @df_get_live_in, ptr @df_live_get_bb_info, i64 2736732}
!41 = !{ptr @df_get_live_in, ptr @df_lr_get_bb_info, i64 1}
!42 = !{ptr @df_grow_bb_info, ptr @xrealloc, i64 52450}
!43 = !{ptr @ei_cond, ptr @ei_end_p, i64 15224513}
!44 = !{ptr @ei_cond, ptr @ei_edge, i64 9406512}
!45 = !{ptr @ei_next, ptr @ei_container, i64 18813023}
!46 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 9406512}
!47 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!48 = !{ptr @ei_end_p, ptr @ei_container, i64 30449025}
!49 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 15224513}
!50 = !{ptr @ei_edge, ptr @ei_container, i64 18813023}
!51 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 9406512}
!52 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!53 = !{ptr @df_rd_simulate_artificial_defs_at_top, ptr @df_get_artificial_defs, i64 557241}
!54 = !{ptr @df_rd_simulate_artificial_defs_at_top, ptr @bitmap_set_bit, i64 1}
!55 = !{ptr @df_get_artificial_defs, ptr @df_scan_get_bb_info, i64 17077622}
!56 = !{ptr @df_rd_simulate_one_insn, ptr @bitmap_clear_range, i64 8328435}
!57 = !{ptr @df_rd_simulate_one_insn, ptr @bitmap_set_bit, i64 1327836}
!58 = !{ptr @df_rd_alloc, ptr @create_alloc_pool, i64 11547}
!59 = !{ptr @df_rd_alloc, ptr @bitmap_clear, i64 298791}
!60 = !{ptr @df_rd_alloc, ptr @xmalloc, i64 11547}
!61 = !{ptr @df_rd_alloc, ptr @bitmap_obstack_initialize, i64 11547}
!62 = !{ptr @df_rd_alloc, ptr @bitmap_obstack_alloc_stat, i64 2365839}
!63 = !{ptr @df_rd_alloc, ptr @df_grow_bb_info, i64 27933}
!64 = !{ptr @df_rd_alloc, ptr @bmp_iter_set_init, i64 27933}
!65 = !{ptr @df_rd_alloc, ptr @bmp_iter_set, i64 585155}
!66 = !{ptr @df_rd_alloc, ptr @df_rd_get_bb_info, i64 557222}
!67 = !{ptr @df_rd_alloc, ptr @pool_alloc, i64 468549}
!68 = !{ptr @df_rd_alloc, ptr @df_rd_set_bb_info, i64 468549}
!69 = !{ptr @df_rd_alloc, ptr @bmp_iter_next, i64 557222}
!70 = !{ptr @df_rd_free_bb_info, ptr @bitmap_obstack_free, i64 736340}
!71 = !{ptr @df_rd_free_bb_info, ptr @pool_free, i64 147268}
!72 = !{ptr @df_rd_local_compute, ptr @bitmap_obstack_alloc_stat, i64 55866}
!73 = !{ptr @df_rd_local_compute, ptr @df_maybe_reorganize_def_refs, i64 27933}
!74 = !{ptr @df_rd_local_compute, ptr @bmp_iter_set_init, i64 55866}
!75 = !{ptr @df_rd_local_compute, ptr @bmp_iter_set, i64 1897961}
!76 = !{ptr @df_rd_local_compute, ptr @df_rd_bb_local_compute, i64 557222}
!77 = !{ptr @df_rd_local_compute, ptr @bmp_iter_next, i64 1842095}
!78 = !{ptr @df_rd_local_compute, ptr @bitmap_set_bit, i64 37322}
!79 = !{ptr @df_rd_local_compute, ptr @bitmap_set_range, i64 1247551}
!80 = !{ptr @df_rd_local_compute, ptr @bitmap_obstack_free, i64 55866}
!81 = !{ptr @df_rd_init_solution, ptr @bmp_iter_set_init, i64 27933}
!82 = !{ptr @df_rd_init_solution, ptr @bmp_iter_set, i64 585155}
!83 = !{ptr @df_rd_init_solution, ptr @df_rd_get_bb_info, i64 557222}
!84 = !{ptr @df_rd_init_solution, ptr @bitmap_copy, i64 557222}
!85 = !{ptr @df_rd_init_solution, ptr @bitmap_clear, i64 557222}
!86 = !{ptr @df_rd_init_solution, ptr @bmp_iter_next, i64 557222}
!87 = !{ptr @df_rd_confluence_n, ptr @df_rd_get_bb_info, i64 5784822}
!88 = !{ptr @df_rd_confluence_n, ptr @bitmap_obstack_alloc_stat, i64 1}
!89 = !{ptr @df_rd_confluence_n, ptr @bitmap_copy, i64 1}
!90 = !{ptr @df_rd_confluence_n, ptr @bitmap_and_compl_into, i64 1}
!91 = !{ptr @df_rd_confluence_n, ptr @bmp_iter_set_init, i64 1}
!92 = !{ptr @df_rd_confluence_n, ptr @bmp_iter_set, i64 21}
!93 = !{ptr @df_rd_confluence_n, ptr @bitmap_clear_range, i64 20}
!94 = !{ptr @df_rd_confluence_n, ptr @bmp_iter_next, i64 20}
!95 = !{ptr @df_rd_confluence_n, ptr @bitmap_ior_into, i64 2892410}
!96 = !{ptr @df_rd_confluence_n, ptr @bitmap_obstack_free, i64 1}
!97 = !{ptr @df_rd_transfer_function, ptr @df_rd_get_bb_info, i64 1758711}
!98 = !{ptr @df_rd_transfer_function, ptr @bitmap_ior_and_compl, i64 771176}
!99 = !{ptr @df_rd_transfer_function, ptr @bitmap_obstack_alloc_stat, i64 987535}
!100 = !{ptr @df_rd_transfer_function, ptr @bitmap_copy, i64 987535}
!101 = !{ptr @df_rd_transfer_function, ptr @bmp_iter_set_init, i64 987535}
!102 = !{ptr @df_rd_transfer_function, ptr @bmp_iter_set, i64 2084955}
!103 = !{ptr @df_rd_transfer_function, ptr @bitmap_clear_range, i64 1097420}
!104 = !{ptr @df_rd_transfer_function, ptr @bmp_iter_next, i64 1097420}
!105 = !{ptr @df_rd_transfer_function, ptr @bitmap_and_compl_into, i64 987535}
!106 = !{ptr @df_rd_transfer_function, ptr @bitmap_ior_into, i64 987535}
!107 = !{ptr @df_rd_transfer_function, ptr @bitmap_equal_p, i64 987535}
!108 = !{ptr @df_rd_transfer_function, ptr @bitmap_obstack_free, i64 987535}
!109 = !{ptr @df_rd_free, ptr @free_alloc_pool, i64 11546}
!110 = !{ptr @df_rd_free, ptr @bitmap_obstack_release, i64 11546}
!111 = !{ptr @df_rd_free, ptr @free, i64 34639}
!112 = !{ptr @df_rd_set_bb_info, ptr @fancy_abort, i64 2}
!113 = !{ptr @df_rd_bb_local_compute, ptr @VEC_basic_block_base_index, i64 557241}
!114 = !{ptr @df_rd_bb_local_compute, ptr @df_rd_get_bb_info, i64 557241}
!115 = !{ptr @df_rd_bb_local_compute, ptr @bitmap_clear, i64 3145590}
!116 = !{ptr @df_rd_bb_local_compute, ptr @df_get_artificial_defs, i64 1114480}
!117 = !{ptr @df_rd_bb_local_compute, ptr @df_rd_bb_local_compute_process_def, i64 3145588}
!118 = !{ptr @df_rd_bb_local_compute, ptr @bitmap_ior_into, i64 2031108}
!119 = !{ptr @df_rd_bb_local_compute_process_def, ptr @bitmap_bit_p, i64 14670178}
!120 = !{ptr @df_rd_bb_local_compute_process_def, ptr @bitmap_set_bit, i64 7908656}
!121 = !{ptr @df_rd_bb_local_compute_process_def, ptr @bitmap_set_range, i64 969687}
!122 = !{ptr @df_rd_bb_local_compute_process_def, ptr @bitmap_clear_range, i64 1308554}
!123 = !{ptr @df_lr_add_problem, ptr @df_add_problem, i64 6652}
!124 = !{ptr @df_lr_add_problem, ptr @bitmap_obstack_alloc_stat, i64 6652}
!125 = !{ptr @df_lr_alloc, ptr @create_alloc_pool, i64 6653}
!126 = !{ptr @df_lr_alloc, ptr @df_grow_bb_info, i64 99720}
!127 = !{ptr @df_lr_alloc, ptr @bmp_iter_set_init, i64 99720}
!128 = !{ptr @df_lr_alloc, ptr @bmp_iter_set, i64 1419063}
!129 = !{ptr @df_lr_alloc, ptr @df_lr_get_bb_info, i64 1319343}
!130 = !{ptr @df_lr_alloc, ptr @bitmap_clear, i64 1961330}
!131 = !{ptr @df_lr_alloc, ptr @pool_alloc, i64 338677}
!132 = !{ptr @df_lr_alloc, ptr @df_lr_set_bb_info, i64 338677}
!133 = !{ptr @df_lr_alloc, ptr @bitmap_obstack_alloc_stat, i64 1354708}
!134 = !{ptr @df_lr_alloc, ptr @bmp_iter_next, i64 1319343}
!135 = !{ptr @df_lr_free_bb_info, ptr @bitmap_obstack_free, i64 352224}
!136 = !{ptr @df_lr_free_bb_info, ptr @pool_free, i64 88056}
!137 = !{ptr @df_lr_local_compute, ptr @bitmap_clear, i64 199440}
!138 = !{ptr @df_lr_local_compute, ptr @bitmap_set_bit, i64 243830}
!139 = !{ptr @df_lr_local_compute, ptr @bmp_iter_set_init, i64 99720}
!140 = !{ptr @df_lr_local_compute, ptr @bmp_iter_set, i64 1419063}
!141 = !{ptr @df_lr_local_compute, ptr @df_lr_get_bb_info, i64 18403}
!142 = !{ptr @df_lr_local_compute, ptr @bitmap_copy, i64 18403}
!143 = !{ptr @df_lr_local_compute, ptr @df_lr_bb_local_compute, i64 1300940}
!144 = !{ptr @df_lr_local_compute, ptr @bmp_iter_next, i64 1319343}
!145 = !{ptr @df_lr_init, ptr @bmp_iter_set_init, i64 99720}
!146 = !{ptr @df_lr_init, ptr @bmp_iter_set, i64 7354415}
!147 = !{ptr @df_lr_init, ptr @df_lr_get_bb_info, i64 7254695}
!148 = !{ptr @df_lr_init, ptr @bitmap_copy, i64 7254695}
!149 = !{ptr @df_lr_init, ptr @bitmap_clear, i64 7254695}
!150 = !{ptr @df_lr_init, ptr @bmp_iter_next, i64 7254695}
!151 = !{ptr @df_lr_confluence_0, ptr @df_lr_get_bb_info, i64 71728}
!152 = !{ptr @df_lr_confluence_0, ptr @bitmap_copy, i64 71728}
!153 = !{ptr @df_lr_confluence_n, ptr @df_lr_get_bb_info, i64 53356884}
!154 = !{ptr @df_lr_confluence_n, ptr @bitmap_ior_and_compl_into, i64 1}
!155 = !{ptr @df_lr_confluence_n, ptr @bitmap_ior_into, i64 53356883}
!156 = !{ptr @df_lr_transfer_function, ptr @df_lr_get_bb_info, i64 16160542}
!157 = !{ptr @df_lr_transfer_function, ptr @bitmap_ior_and_compl, i64 16160542}
!158 = !{ptr @df_lr_finalize, ptr @run_fast_df_dce, i64 33953}
!159 = !{ptr @df_lr_finalize, ptr @df_clear_flags, i64 4028}
!160 = !{ptr @df_lr_finalize, ptr @df_lr_alloc, i64 4028}
!161 = !{ptr @df_lr_finalize, ptr @df_lr_local_compute, i64 4028}
!162 = !{ptr @df_lr_finalize, ptr @df_worklist_dataflow, i64 4028}
!163 = !{ptr @df_lr_finalize, ptr @df_lr_finalize, i64 4028}
!164 = !{ptr @df_lr_finalize, ptr @df_set_flags, i64 4028}
!165 = !{ptr @df_lr_free, ptr @df_lr_get_bb_info, i64 372273}
!166 = !{ptr @df_lr_free, ptr @bitmap_obstack_free, i64 1008844}
!167 = !{ptr @df_lr_free, ptr @free_alloc_pool, i64 6651}
!168 = !{ptr @df_lr_free, ptr @free, i64 13303}
!169 = !{ptr @df_lr_set_bb_info, ptr @fancy_abort, i64 2}
!170 = !{ptr @df_lr_bb_local_compute, ptr @VEC_basic_block_base_index, i64 1300953}
!171 = !{ptr @df_lr_bb_local_compute, ptr @df_lr_get_bb_info, i64 1300953}
!172 = !{ptr @df_lr_bb_local_compute, ptr @df_get_artificial_defs, i64 2601906}
!173 = !{ptr @df_lr_bb_local_compute, ptr @bitmap_set_bit, i64 37075211}
!174 = !{ptr @df_lr_bb_local_compute, ptr @bitmap_clear_bit, i64 25842911}
!175 = !{ptr @df_lr_bb_local_compute, ptr @df_get_artificial_uses, i64 1300953}
!176 = !{ptr @df_lr_bb_local_compute, ptr @df_recompute_luids, i64 1}
!177 = !{ptr @df_get_artificial_uses, ptr @df_scan_get_bb_info, i64 8851168}
!178 = !{ptr @df_live_add_problem, ptr @df_add_problem, i64 13304}
!179 = !{ptr @df_live_add_problem, ptr @bitmap_obstack_alloc_stat, i64 13304}
!180 = !{ptr @df_live_alloc, ptr @create_alloc_pool, i64 6653}
!181 = !{ptr @df_live_alloc, ptr @bitmap_obstack_alloc_stat, i64 1361361}
!182 = !{ptr @df_live_alloc, ptr @df_grow_bb_info, i64 95693}
!183 = !{ptr @df_live_alloc, ptr @bmp_iter_set_init, i64 95693}
!184 = !{ptr @df_live_alloc, ptr @bmp_iter_set, i64 1398958}
!185 = !{ptr @df_live_alloc, ptr @df_live_get_bb_info, i64 1303265}
!186 = !{ptr @df_live_alloc, ptr @bitmap_clear, i64 1929176}
!187 = !{ptr @df_live_alloc, ptr @pool_alloc, i64 338677}
!188 = !{ptr @df_live_alloc, ptr @df_live_set_bb_info, i64 338677}
!189 = !{ptr @df_live_alloc, ptr @bmp_iter_next, i64 1303265}
!190 = !{ptr @df_live_free_bb_info, ptr @bitmap_obstack_free, i64 352224}
!191 = !{ptr @df_live_free_bb_info, ptr @pool_free, i64 88056}
!192 = !{ptr @df_live_local_compute, ptr @df_grow_insn_info, i64 95693}
!193 = !{ptr @df_live_local_compute, ptr @bmp_iter_set_init, i64 95693}
!194 = !{ptr @df_live_local_compute, ptr @bmp_iter_set, i64 1398958}
!195 = !{ptr @df_live_local_compute, ptr @df_live_bb_local_compute, i64 1303265}
!196 = !{ptr @df_live_local_compute, ptr @bmp_iter_next, i64 1303265}
!197 = !{ptr @df_live_local_compute, ptr @bitmap_clear, i64 95693}
!198 = !{ptr @df_live_init, ptr @bmp_iter_set_init, i64 95693}
!199 = !{ptr @df_live_init, ptr @bmp_iter_set, i64 6451592}
!200 = !{ptr @df_live_init, ptr @df_live_get_bb_info, i64 6355899}
!201 = !{ptr @df_live_init, ptr @df_lr_get_bb_info, i64 6355899}
!202 = !{ptr @df_live_init, ptr @bitmap_and, i64 6355899}
!203 = !{ptr @df_live_init, ptr @bitmap_clear, i64 6355899}
!204 = !{ptr @df_live_init, ptr @bmp_iter_next, i64 6355899}
!205 = !{ptr @df_live_confluence_n, ptr @df_live_get_bb_info, i64 54463278}
!206 = !{ptr @df_live_confluence_n, ptr @bitmap_ior_into, i64 27231639}
!207 = !{ptr @df_live_transfer_function, ptr @df_live_get_bb_info, i64 15358419}
!208 = !{ptr @df_live_transfer_function, ptr @df_lr_get_bb_info, i64 15358419}
!209 = !{ptr @df_live_transfer_function, ptr @bitmap_and, i64 15358419}
!210 = !{ptr @df_live_transfer_function, ptr @bitmap_and_into, i64 15358419}
!211 = !{ptr @df_live_transfer_function, ptr @bitmap_ior_and_compl, i64 15358419}
!212 = !{ptr @df_live_finalize, ptr @bmp_iter_set_init, i64 95692}
!213 = !{ptr @df_live_finalize, ptr @bmp_iter_set, i64 6451524}
!214 = !{ptr @df_live_finalize, ptr @df_lr_get_bb_info, i64 6355832}
!215 = !{ptr @df_live_finalize, ptr @df_live_get_bb_info, i64 6355832}
!216 = !{ptr @df_live_finalize, ptr @bitmap_and_into, i64 12711664}
!217 = !{ptr @df_live_finalize, ptr @bmp_iter_next, i64 6355832}
!218 = !{ptr @df_live_free, ptr @df_live_get_bb_info, i64 372273}
!219 = !{ptr @df_live_free, ptr @bitmap_obstack_free, i64 1015494}
!220 = !{ptr @df_live_free, ptr @free_alloc_pool, i64 6651}
!221 = !{ptr @df_live_free, ptr @free, i64 13303}
!222 = !{ptr @df_live_set_bb_info, ptr @fancy_abort, i64 2}
!223 = !{ptr @df_live_bb_local_compute, ptr @VEC_basic_block_base_index, i64 1303278}
!224 = !{ptr @df_live_bb_local_compute, ptr @df_live_get_bb_info, i64 1303278}
!225 = !{ptr @df_live_bb_local_compute, ptr @fancy_abort, i64 4}
!226 = !{ptr @df_live_bb_local_compute, ptr @df_insn_create_insn_record, i64 185051}
!227 = !{ptr @df_live_bb_local_compute, ptr @bitmap_set_bit, i64 4453726}
!228 = !{ptr @df_live_bb_local_compute, ptr @df_get_artificial_defs, i64 1303278}
!229 = !{ptr @df_chain_create, ptr @pool_alloc, i64 3802291}
!230 = !{ptr @df_chain_add_problem, ptr @df_add_problem, i64 27933}
!231 = !{ptr @df_chain_add_problem, ptr @bitmap_obstack_alloc_stat, i64 27933}
!232 = !{ptr @df_chain_alloc, ptr @df_chain_remove_problem, i64 27933}
!233 = !{ptr @df_chain_alloc, ptr @create_alloc_pool, i64 27933}
!234 = !{ptr @df_chain_finalize, ptr @bmp_iter_set_init, i64 27933}
!235 = !{ptr @df_chain_finalize, ptr @bmp_iter_set, i64 585155}
!236 = !{ptr @df_chain_finalize, ptr @df_chain_create_bb, i64 557222}
!237 = !{ptr @df_chain_finalize, ptr @bmp_iter_next, i64 557222}
!238 = !{ptr @df_chain_fully_remove_problem, ptr @df_chain_remove_problem, i64 27933}
!239 = !{ptr @df_chain_fully_remove_problem, ptr @bitmap_obstack_free, i64 27933}
!240 = !{ptr @df_chain_fully_remove_problem, ptr @free, i64 27933}
!241 = !{ptr @df_chain_remove_problem, ptr @free_alloc_pool, i64 27933}
!242 = !{ptr @df_chain_remove_problem, ptr @bmp_iter_set_init, i64 55866}
!243 = !{ptr @df_chain_remove_problem, ptr @bmp_iter_set, i64 615439}
!244 = !{ptr @df_chain_remove_problem, ptr @VEC_basic_block_base_index, i64 559573}
!245 = !{ptr @df_chain_remove_problem, ptr @df_get_artificial_defs, i64 1}
!246 = !{ptr @df_chain_remove_problem, ptr @df_get_artificial_uses, i64 559572}
!247 = !{ptr @df_chain_remove_problem, ptr @bmp_iter_next, i64 559573}
!248 = !{ptr @df_chain_remove_problem, ptr @bitmap_clear, i64 55866}
!249 = !{ptr @df_chain_create_bb, ptr @VEC_basic_block_base_index, i64 557241}
!250 = !{ptr @df_chain_create_bb, ptr @df_rd_get_bb_info, i64 557241}
!251 = !{ptr @df_chain_create_bb, ptr @bitmap_obstack_alloc_stat, i64 557241}
!252 = !{ptr @df_chain_create_bb, ptr @bitmap_copy, i64 557241}
!253 = !{ptr @df_chain_create_bb, ptr @bitmap_set_bit, i64 557241}
!254 = !{ptr @df_chain_create_bb, ptr @df_rd_simulate_artificial_defs_at_top, i64 557241}
!255 = !{ptr @df_chain_create_bb, ptr @df_chain_create_bb_process_use, i64 3560090}
!256 = !{ptr @df_chain_create_bb, ptr @df_rd_simulate_one_insn, i64 2030198}
!257 = !{ptr @df_chain_create_bb, ptr @df_get_artificial_uses, i64 557240}
!258 = !{ptr @df_chain_create_bb, ptr @bitmap_obstack_free, i64 557241}
!259 = !{ptr @df_chain_create_bb_process_use, ptr @bmp_iter_set_init, i64 3228843}
!260 = !{ptr @df_chain_create_bb_process_use, ptr @bmp_iter_set, i64 7088280}
!261 = !{ptr @df_chain_create_bb_process_use, ptr @df_chain_create, i64 3859437}
!262 = !{ptr @df_chain_create_bb_process_use, ptr @bmp_iter_next, i64 3859437}
!263 = !{ptr @df_note_add_problem, ptr @df_add_problem, i64 67225}
!264 = !{ptr @df_note_compute, ptr @bitmap_obstack_alloc_stat, i64 241026}
!265 = !{ptr @df_note_compute, ptr @bmp_iter_set_init, i64 80342}
!266 = !{ptr @df_note_compute, ptr @bmp_iter_set, i64 3327951}
!267 = !{ptr @df_note_compute, ptr @df_note_bb_compute, i64 3247609}
!268 = !{ptr @df_note_compute, ptr @bmp_iter_next, i64 3247609}
!269 = !{ptr @df_note_compute, ptr @bitmap_obstack_free, i64 241026}
!270 = !{ptr @df_note_free, ptr @free, i64 62271}
!271 = !{ptr @df_note_bb_compute, ptr @VEC_basic_block_base_index, i64 3247648}
!272 = !{ptr @df_note_bb_compute, ptr @df_get_live_out, i64 3247648}
!273 = !{ptr @df_note_bb_compute, ptr @bitmap_copy, i64 3247648}
!274 = !{ptr @df_note_bb_compute, ptr @bitmap_clear, i64 16302242}
!275 = !{ptr @df_note_bb_compute, ptr @df_get_artificial_defs, i64 3247648}
!276 = !{ptr @df_note_bb_compute, ptr @bitmap_clear_bit, i64 56992908}
!277 = !{ptr @df_note_bb_compute, ptr @df_get_artificial_uses, i64 3247648}
!278 = !{ptr @df_note_bb_compute, ptr @bitmap_set_bit, i64 36038359}
!279 = !{ptr @df_note_bb_compute, ptr @df_kill_notes, i64 13054594}
!280 = !{ptr @df_note_bb_compute, ptr @df_ignore_stack_reg, i64 6047318}
!281 = !{ptr @df_note_bb_compute, ptr @df_set_unused_notes_for_mw, i64 1213}
!282 = !{ptr @df_note_bb_compute, ptr @df_create_unused_note, i64 8743267}
!283 = !{ptr @df_note_bb_compute, ptr @df_set_dead_notes_for_mw, i64 1213}
!284 = !{ptr @df_note_bb_compute, ptr @bitmap_bit_p, i64 27783490}
!285 = !{ptr @df_note_bb_compute, ptr @df_set_note, i64 6045060}
!286 = !{ptr @df_note_bb_compute, ptr @free_EXPR_LIST_node, i64 65813}
!287 = !{ptr @df_note_bb_compute, ptr @gen_rtx_fmt_e_stat, i64 1}
!288 = !{ptr @df_note_bb_compute, ptr @df_insn_rescan_debug_internal, i64 1}
!289 = !{ptr @df_kill_notes, ptr @rhs_regno, i64 6171078}
!290 = !{ptr @df_kill_notes, ptr @df_ignore_stack_reg, i64 6171078}
!291 = !{ptr @df_set_unused_notes_for_mw, ptr @df_whole_mw_reg_unused_p, i64 1272}
!292 = !{ptr @df_set_unused_notes_for_mw, ptr @df_set_note, i64 258}
!293 = !{ptr @df_set_unused_notes_for_mw, ptr @bitmap_set_bit, i64 2542}
!294 = !{ptr @df_set_unused_notes_for_mw, ptr @bitmap_bit_p, i64 2799}
!295 = !{ptr @df_create_unused_note, ptr @bitmap_bit_p, i64 10363936}
!296 = !{ptr @df_create_unused_note, ptr @df_ignore_stack_reg, i64 1201441}
!297 = !{ptr @df_create_unused_note, ptr @df_set_note, i64 1201440}
!298 = !{ptr @df_set_dead_notes_for_mw, ptr @df_whole_mw_reg_dead_p, i64 1272}
!299 = !{ptr @df_set_dead_notes_for_mw, ptr @bitmap_bit_p, i64 7620}
!300 = !{ptr @df_set_dead_notes_for_mw, ptr @df_set_note, i64 1}
!301 = !{ptr @df_set_note, ptr @fancy_abort, i64 1}
!302 = !{ptr @df_set_note, ptr @add_reg_note, i64 7509}
!303 = !{ptr @df_whole_mw_reg_unused_p, ptr @bitmap_bit_p, i64 1263}
!304 = !{ptr @df_whole_mw_reg_unused_p, ptr @fancy_abort, i64 5}
!305 = !{ptr @df_whole_mw_reg_dead_p, ptr @bitmap_bit_p, i64 3783}
!306 = !{ptr @df_whole_mw_reg_dead_p, ptr @fancy_abort, i64 5}
!307 = !{ptr @df_simulate_find_defs, ptr @bitmap_set_bit, i64 20012666}
!308 = !{ptr @df_simulate_defs, ptr @bitmap_clear_bit, i64 55619933}
!309 = !{ptr @df_simulate_uses, ptr @bitmap_set_bit, i64 15330200}
!310 = !{ptr @df_simulate_initialize_backwards, ptr @df_get_artificial_defs, i64 3185744}
!311 = !{ptr @df_simulate_initialize_backwards, ptr @df_get_artificial_uses, i64 3185744}
!312 = !{ptr @df_simulate_initialize_backwards, ptr @bitmap_set_bit, i64 10343019}
!313 = !{ptr @df_simulate_one_insn_backwards, ptr @df_simulate_defs, i64 1268026}
!314 = !{ptr @df_simulate_one_insn_backwards, ptr @df_simulate_uses, i64 1268026}
!315 = !{ptr @df_simulate_one_insn_backwards, ptr @df_simulate_fixup_sets, i64 1268026}
!316 = !{ptr @df_simulate_fixup_sets, ptr @bb_has_eh_pred, i64 5818001}
!317 = !{ptr @df_simulate_fixup_sets, ptr @bitmap_ior_into, i64 5818001}
!318 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 5818001}
!319 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 15224511}
!320 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 9406510}
!321 = !{ptr @df_simulate_finalize_backwards, ptr @df_get_artificial_defs, i64 2903397}
!322 = !{ptr @df_simulate_finalize_backwards, ptr @bitmap_clear_bit, i64 1}
!323 = !{ptr @df_simulate_initialize_forwards, ptr @df_get_artificial_defs, i64 1068604}
!324 = !{ptr @df_simulate_initialize_forwards, ptr @bitmap_clear_bit, i64 1}
!325 = !{ptr @df_simulate_one_insn_forwards, ptr @fancy_abort, i64 1}
!326 = !{ptr @df_simulate_one_insn_forwards, ptr @df_simulate_find_defs, i64 4549972}
!327 = !{ptr @df_simulate_one_insn_forwards, ptr @rhs_regno, i64 2658847}
!328 = !{ptr @df_simulate_one_insn_forwards, ptr @bitmap_clear_bit, i64 2658847}
!329 = !{ptr @df_simulate_one_insn_forwards, ptr @df_simulate_fixup_sets, i64 4549972}
!330 = !{ptr @df_md_add_problem, ptr @df_add_problem, i64 13304}
!331 = !{ptr @df_md_alloc, ptr @create_alloc_pool, i64 13303}
!332 = !{ptr @df_md_alloc, ptr @df_grow_bb_info, i64 13304}
!333 = !{ptr @df_md_alloc, ptr @bitmap_obstack_alloc_stat, i64 2751404}
!334 = !{ptr @df_md_alloc, ptr @bmp_iter_set_init, i64 13304}
!335 = !{ptr @df_md_alloc, ptr @bmp_iter_set, i64 560925}
!336 = !{ptr @df_md_alloc, ptr @df_md_get_bb_info, i64 547621}
!337 = !{ptr @df_md_alloc, ptr @bitmap_clear, i64 5}
!338 = !{ptr @df_md_alloc, ptr @pool_alloc, i64 547620}
!339 = !{ptr @df_md_alloc, ptr @df_md_set_bb_info, i64 547620}
!340 = !{ptr @df_md_alloc, ptr @bmp_iter_next, i64 547621}
!341 = !{ptr @df_md_free_bb_info, ptr @bitmap_obstack_free, i64 9185}
!342 = !{ptr @df_md_free_bb_info, ptr @pool_free, i64 1837}
!343 = !{ptr @df_md_local_compute, ptr @bitmap_obstack_alloc_stat, i64 560925}
!344 = !{ptr @df_md_local_compute, ptr @bmp_iter_set_init, i64 574229}
!345 = !{ptr @df_md_local_compute, ptr @bmp_iter_set, i64 2350141}
!346 = !{ptr @df_md_local_compute, ptr @df_md_bb_local_compute, i64 547621}
!347 = !{ptr @df_md_local_compute, ptr @bmp_iter_next, i64 1775912}
!348 = !{ptr @df_md_local_compute, ptr @bitmap_obstack_free, i64 560925}
!349 = !{ptr @df_md_local_compute, ptr @xmalloc, i64 13304}
!350 = !{ptr @df_md_local_compute, ptr @compute_dominance_frontiers, i64 13304}
!351 = !{ptr @df_md_local_compute, ptr @df_md_get_bb_info, i64 1228290}
!352 = !{ptr @df_md_local_compute, ptr @VEC_basic_block_base_index, i64 680670}
!353 = !{ptr @df_md_local_compute, ptr @bitmap_bit_p, i64 680670}
!354 = !{ptr @df_md_local_compute, ptr @df_get_live_in, i64 680669}
!355 = !{ptr @df_md_local_compute, ptr @bitmap_ior_and_into, i64 680669}
!356 = !{ptr @df_md_local_compute, ptr @free, i64 13304}
!357 = !{ptr @df_md_init, ptr @bmp_iter_set_init, i64 13304}
!358 = !{ptr @df_md_init, ptr @bmp_iter_set, i64 560925}
!359 = !{ptr @df_md_init, ptr @df_md_get_bb_info, i64 547621}
!360 = !{ptr @df_md_init, ptr @bitmap_copy, i64 547621}
!361 = !{ptr @df_md_init, ptr @df_md_transfer_function, i64 547621}
!362 = !{ptr @df_md_init, ptr @bmp_iter_next, i64 547621}
!363 = !{ptr @df_md_confluence_0, ptr @df_md_get_bb_info, i64 13350}
!364 = !{ptr @df_md_confluence_0, ptr @bitmap_copy, i64 13350}
!365 = !{ptr @df_md_confluence_n, ptr @df_md_get_bb_info, i64 3394148}
!366 = !{ptr @df_md_confluence_n, ptr @bitmap_ior_and_compl_into, i64 1}
!367 = !{ptr @df_md_confluence_n, ptr @bitmap_ior_into, i64 1697072}
!368 = !{ptr @df_md_transfer_function, ptr @VEC_basic_block_base_index, i64 1541442}
!369 = !{ptr @df_md_transfer_function, ptr @df_md_get_bb_info, i64 1541442}
!370 = !{ptr @df_md_transfer_function, ptr @df_get_live_out, i64 1541442}
!371 = !{ptr @df_md_transfer_function, ptr @bitmap_and, i64 1541442}
!372 = !{ptr @df_md_transfer_function, ptr @df_get_live_in, i64 1541442}
!373 = !{ptr @df_md_transfer_function, ptr @bitmap_and_into, i64 1541442}
!374 = !{ptr @df_md_transfer_function, ptr @bitmap_ior_and_compl, i64 1541442}
!375 = !{ptr @df_md_free, ptr @df_md_get_bb_info, i64 714630}
!376 = !{ptr @df_md_free, ptr @bitmap_obstack_free, i64 2742214}
!377 = !{ptr @df_md_free, ptr @free_alloc_pool, i64 13304}
!378 = !{ptr @df_md_free, ptr @free, i64 26608}
!379 = !{ptr @df_md_set_bb_info, ptr @fancy_abort, i64 2}
!380 = !{ptr @df_md_bb_local_compute, ptr @VEC_basic_block_base_index, i64 547661}
!381 = !{ptr @df_md_bb_local_compute, ptr @df_md_get_bb_info, i64 547661}
!382 = !{ptr @df_md_bb_local_compute, ptr @df_get_artificial_defs, i64 1095320}
!383 = !{ptr @df_md_bb_local_compute, ptr @df_md_bb_local_compute_process_def, i64 3207386}
!384 = !{ptr @df_md_bb_local_compute_process_def, ptr @bitmap_clear, i64 3339398}
!385 = !{ptr @df_md_bb_local_compute_process_def, ptr @bitmap_bit_p, i64 10118277}
!386 = !{ptr @df_md_bb_local_compute_process_def, ptr @bitmap_set_bit, i64 11821698}
!387 = !{ptr @df_md_bb_local_compute_process_def, ptr @bitmap_clear_bit, i64 10118276}
!388 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!389 = !{!"function_entry_count", i64 6164469}
!390 = !{!391, !391, i64 0}
!391 = !{!"any pointer", !392, i64 0}
!392 = !{!"omnipotent char", !393, i64 0}
!393 = !{!"Simple C/C++ TBAA"}
!394 = !{!"branch_weights", i32 1, i32 6164470}
!395 = !{!396, !398, i64 80}
!396 = !{!"basic_block_def", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24, !392, i64 32, !391, i64 48, !391, i64 56, !392, i64 64, !397, i64 72, !398, i64 80, !398, i64 84, !398, i64 88, !398, i64 92, !398, i64 96}
!397 = !{!"long", !392, i64 0}
!398 = !{!"int", !392, i64 0}
!399 = !{!"function_entry_count", i64 94420973}
!400 = !{!"df-problems.c:df_live_get_bb_info"}
!401 = !{!402, !398, i64 16}
!402 = !{!"dataflow", !391, i64 0, !391, i64 8, !398, i64 16, !391, i64 24, !391, i64 32, !391, i64 40, !398, i64 48, !392, i64 52, !392, i64 53, !392, i64 54}
!403 = !{!"branch_weights", i32 94420974, i32 1}
!404 = !{!402, !391, i64 8}
!405 = !{!"function_entry_count", i64 108003801}
!406 = !{!"df-problems.c:df_lr_get_bb_info"}
!407 = !{!"branch_weights", i32 108003802, i32 1}
!408 = !{!"function_entry_count", i64 2736733}
!409 = !{!"branch_weights", i32 1, i32 2736734}
!410 = !{!"function_entry_count", i64 5126939}
!411 = !{!412, !391, i64 8}
!412 = !{!"function", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24, !391, i64 32, !391, i64 40, !391, i64 48, !391, i64 56, !391, i64 64, !391, i64 72, !391, i64 80, !391, i64 88, !391, i64 96, !398, i64 104, !398, i64 108, !398, i64 112, !398, i64 116, !398, i64 120, !398, i64 124, !391, i64 128, !398, i64 136, !398, i64 137, !398, i64 138, !398, i64 138, !398, i64 138, !398, i64 138, !398, i64 138, !398, i64 138, !398, i64 138, !398, i64 139, !398, i64 139, !398, i64 139, !398, i64 139, !398, i64 139, !398, i64 139, !398, i64 139}
!413 = !{!414, !398, i64 32}
!414 = !{!"control_flow_graph", !391, i64 0, !391, i64 8, !391, i64 16, !398, i64 24, !398, i64 28, !398, i64 32, !391, i64 40, !398, i64 48, !392, i64 52, !392, i64 60, !398, i64 68, !398, i64 72}
!415 = !{!"branch_weights", i32 52450, i32 5074491}
!416 = !{!"function_entry_count", i64 0}
!417 = !{!418, !391, i64 0}
!418 = !{!"df_link", !391, i64 0, !391, i64 8}
!419 = !{!392, !392, i64 0}
!420 = !{!421, !391, i64 0}
!421 = !{!"df_insn_info", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24, !391, i64 32, !398, i64 40}
!422 = !{!418, !391, i64 8}
!423 = distinct !{!423, !424}
!424 = !{!"llvm.loop.mustprogress"}
!425 = !{i64 0, i64 4, !426, i64 8, i64 8, !390}
!426 = !{!398, !398, i64 0}
!427 = !{i64 0, i64 8, !390}
!428 = !{i8 0, i8 2}
!429 = !{!430, !391, i64 0}
!430 = !{!"edge_def", !391, i64 0, !391, i64 8, !392, i64 16, !391, i64 24, !391, i64 32, !398, i64 40, !398, i64 44, !398, i64 48, !398, i64 52, !397, i64 56}
!431 = !{!430, !398, i64 48}
!432 = distinct !{!432, !424}
!433 = !{!430, !391, i64 8}
!434 = distinct !{!434, !424}
!435 = !{!"function_entry_count", i64 5818001}
!436 = !{!"df-problems.c:ei_start_1"}
!437 = !{!"function_entry_count", i64 15224513}
!438 = !{!"df-problems.c:ei_cond"}
!439 = !{!"branch_weights", i32 9406513, i32 5818002}
!440 = !{!"function_entry_count", i64 9406512}
!441 = !{!"df-problems.c:ei_next"}
!442 = !{!"branch_weights", i32 1, i32 9406513}
!443 = !{!"branch_weights", i32 9406513, i32 1}
!444 = !{!445, !398, i64 0}
!445 = !{!"", !398, i64 0, !391, i64 8}
!446 = !{!"df-problems.c:ei_end_p"}
!447 = !{!"branch_weights", i32 1, i32 15224514}
!448 = !{!"df-problems.c:ei_edge"}
!449 = !{!"function_entry_count", i64 24631025}
!450 = !{!"df-problems.c:VEC_edge_base_length"}
!451 = !{!"branch_weights", i32 1, i32 24631026}
!452 = !{!453, !398, i64 0}
!453 = !{!"VEC_edge_base", !398, i64 0, !398, i64 4, !392, i64 8}
!454 = !{!"function_entry_count", i64 68075074}
!455 = !{!"df-problems.c:ei_container"}
!456 = !{!"branch_weights", i32 1, i32 68075075}
!457 = !{!"df-problems.c:VEC_edge_base_index"}
!458 = !{!"function_entry_count", i64 557241}
!459 = !{!"branch_weights", i32 510677, i32 46565}
!460 = !{!"branch_weights", i32 46565, i32 1}
!461 = !{!462, !391, i64 144}
!462 = !{!"df", !392, i64 0, !392, i64 64, !391, i64 128, !463, i64 136, !463, i64 176, !391, i64 216, !391, i64 224, !391, i64 232, !398, i64 240, !398, i64 244, !391, i64 248, !398, i64 256, !398, i64 260, !391, i64 264, !391, i64 272, !391, i64 280, !391, i64 288, !391, i64 296, !391, i64 304, !391, i64 312, !391, i64 320, !391, i64 328, !391, i64 336, !398, i64 344, !398, i64 348, !391, i64 352, !398, i64 360, !398, i64 364, !392, i64 365, !392, i64 366}
!463 = !{!"df_ref_info", !391, i64 0, !391, i64 8, !391, i64 16, !398, i64 24, !398, i64 28, !398, i64 32, !398, i64 36}
!464 = !{!462, !391, i64 152}
!465 = !{!"branch_weights", i32 46565, i32 0}
!466 = distinct !{!466, !424}
!467 = !{!"function_entry_count", i64 17077622}
!468 = !{!"df-problems.c:df_get_artificial_defs"}
!469 = !{!470, !391, i64 0}
!470 = !{!"df_scan_bb_info", !391, i64 0, !391, i64 8}
!471 = !{!"function_entry_count", i64 25928790}
!472 = !{!"df-problems.c:df_scan_get_bb_info"}
!473 = !{!"branch_weights", i32 25928791, i32 1}
!474 = !{!"function_entry_count", i64 2092734}
!475 = !{!462, !391, i64 248}
!476 = !{!421, !391, i64 8}
!477 = !{!"branch_weights", i32 1, i32 2092734}
!478 = !{!"branch_weights", i32 8328544, i32 1}
!479 = !{!"branch_weights", i32 8328440, i32 105}
!480 = !{!"branch_weights", i32 1327837, i32 7000708}
!481 = !{!"branch_weights", i32 2092734, i32 6235810}
!482 = distinct !{!482, !424}
!483 = !{!"function_entry_count", i64 27933}
!484 = !{!"df-problems.c:df_rd_alloc"}
!485 = !{!402, !391, i64 24}
!486 = !{!"branch_weights", i32 11548, i32 16387}
!487 = !{!402, !391, i64 40}
!488 = !{!489, !391, i64 0}
!489 = !{!"df_rd_problem_data", !391, i64 0, !391, i64 8, !490, i64 16}
!490 = !{!"bitmap_obstack", !391, i64 0, !391, i64 8, !491, i64 16}
!491 = !{!"obstack", !397, i64 0, !391, i64 8, !391, i64 16, !391, i64 24, !391, i64 32, !397, i64 40, !398, i64 48, !391, i64 56, !391, i64 64, !391, i64 72, !398, i64 80, !398, i64 80, !398, i64 80}
!492 = !{!489, !391, i64 8}
!493 = !{!"branch_weights", i32 1, i32 27933}
!494 = !{!"branch_weights", i32 468567, i32 88676}
!495 = !{!496, !391, i64 0}
!496 = !{!"df_rd_bb_info", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24, !391, i64 32}
!497 = !{!496, !391, i64 8}
!498 = !{!496, !391, i64 16}
!499 = !{!496, !391, i64 24}
!500 = !{!496, !391, i64 32}
!501 = !{!"branch_weights", i32 27933, i32 529309}
!502 = distinct !{!502, !424}
!503 = !{!402, !392, i64 54}
!504 = !{!"function_entry_count", i64 147269}
!505 = !{!"df-problems.c:df_rd_free_bb_info"}
!506 = !{!"branch_weights", i32 1, i32 147270}
!507 = !{!"df-problems.c:df_rd_local_compute"}
!508 = distinct !{!508, !424}
!509 = !{!"branch_weights", i32 37323, i32 1247597}
!510 = !{!"branch_weights", i32 27933, i32 1256986}
!511 = distinct !{!511, !424}
!512 = !{!"df-problems.c:df_rd_init_solution"}
!513 = distinct !{!513, !424}
!514 = !{!"function_entry_count", i64 2892411}
!515 = !{!"df-problems.c:df_rd_confluence_n"}
!516 = !{!"branch_weights", i32 2892412, i32 1}
!517 = distinct !{!517, !424}
!518 = !{!"function_entry_count", i64 1758711}
!519 = !{!"df-problems.c:df_rd_transfer_function"}
!520 = !{!521, !391, i64 0}
!521 = !{!"bitmap_head_def", !391, i64 0, !391, i64 8, !398, i64 16, !391, i64 24}
!522 = !{!"branch_weights", i32 771177, i32 987536}
!523 = !{!"branch_weights", i32 1, i32 987535}
!524 = !{!"branch_weights", i32 987535, i32 109886}
!525 = distinct !{!525, !424}
!526 = !{!"branch_weights", i32 624391, i32 363146}
!527 = !{!"function_entry_count", i64 11547}
!528 = !{!"df-problems.c:df_rd_free"}
!529 = !{!"branch_weights", i32 1, i32 11548}
!530 = !{!"df-problems.c:df_rd_start_dump"}
!531 = !{!462, !398, i64 244}
!532 = distinct !{!532, !424}
!533 = !{!"df-problems.c:df_rd_top_dump"}
!534 = !{!"df-problems.c:df_rd_bottom_dump"}
!535 = !{!"function_entry_count", i64 5775062}
!536 = !{!"df-problems.c:bmp_iter_set_init"}
!537 = !{!538, !391, i64 0}
!538 = !{!"", !391, i64 0, !391, i64 8, !398, i64 16, !397, i64 24}
!539 = !{!538, !391, i64 8}
!540 = !{!"branch_weights", i32 1, i32 176782}
!541 = !{!542, !398, i64 16}
!542 = !{!"bitmap_element_def", !391, i64 0, !391, i64 8, !398, i64 16, !392, i64 24}
!543 = !{!"branch_weights", i32 7476719, i32 5598281}
!544 = !{!542, !391, i64 0}
!545 = !{!"branch_weights", i32 176782, i32 12898217}
!546 = !{!"branch_weights", i32 5416463, i32 358601}
!547 = !{!538, !398, i64 16}
!548 = !{!397, !397, i64 0}
!549 = !{!538, !397, i64 24}
!550 = !{!"function_entry_count", i64 46079210}
!551 = !{!"df-problems.c:bmp_iter_set"}
!552 = !{!"branch_weights", i32 5216706, i32 40862506}
!553 = !{!"branch_weights", i32 43426900, i32 1}
!554 = !{!"branch_weights", i32 67330847, i32 43426900}
!555 = distinct !{!555, !424}
!556 = !{!"branch_weights", i32 1, i32 4375202}
!557 = !{!"branch_weights", i32 3674549, i32 2564396}
!558 = !{!"branch_weights", i32 4375202, i32 1863742}
!559 = distinct !{!559, !424}
!560 = !{!"branch_weights", i32 2652311, i32 1722893}
!561 = !{!"function_entry_count", i64 9772497}
!562 = !{!"df-problems.c:df_rd_get_bb_info"}
!563 = !{!"branch_weights", i32 9772498, i32 1}
!564 = !{!"function_entry_count", i64 468566}
!565 = !{!"df-problems.c:df_rd_set_bb_info"}
!566 = !{!"branch_weights", i32 1, i32 468567}
!567 = !{!"branch_weights", i32 468567, i32 1}
!568 = !{!"function_entry_count", i64 40304148}
!569 = !{!"df-problems.c:bmp_iter_next"}
!570 = !{!"df-problems.c:df_rd_bb_local_compute"}
!571 = !{!414, !391, i64 16}
!572 = !{!"branch_weights", i32 557242, i32 1}
!573 = !{!"branch_weights", i32 1, i32 19956}
!574 = !{!575, !391, i64 0}
!575 = !{!"rtl_bb_info", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24, !398, i64 32}
!576 = !{!"branch_weights", i32 557242, i32 2946333}
!577 = !{!"branch_weights", i32 -1002037728, i32 1343137801}
!578 = !{!"branch_weights", i32 19956, i32 3463662}
!579 = distinct !{!579, !424}
!580 = !{!"function_entry_count", i64 10295766}
!581 = !{!"df-problems.c:VEC_basic_block_base_index"}
!582 = !{!"function_entry_count", i64 3207216}
!583 = !{!"df-problems.c:df_rd_bb_local_compute_process_def"}
!584 = !{!"branch_weights", i32 1, i32 3207216}
!585 = !{!"branch_weights", i32 8375108, i32 46565}
!586 = !{!"branch_weights", i32 8375108, i32 1}
!587 = !{!"branch_weights", i32 6295078, i32 2080031}
!588 = !{!"branch_weights", i32 6295078, i32 1}
!589 = !{!"branch_weights", i32 1308555, i32 4986524}
!590 = !{!"branch_weights", i32 338867, i32 969689}
!591 = !{!"branch_weights", i32 1274717, i32 5020362}
!592 = !{!"branch_weights", i32 3207216, i32 5214456}
!593 = distinct !{!593, !424}
!594 = !{!"function_entry_count", i64 6652}
!595 = !{!402, !391, i64 32}
!596 = !{!"function_entry_count", i64 99720}
!597 = !{!"df-problems.c:df_lr_alloc"}
!598 = !{!"branch_weights", i32 6653, i32 93069}
!599 = !{!"branch_weights", i32 1, i32 99720}
!600 = !{!"branch_weights", i32 338681, i32 980676}
!601 = !{!602, !391, i64 0}
!602 = !{!"df_lr_bb_info", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24}
!603 = !{!602, !391, i64 8}
!604 = !{!602, !391, i64 16}
!605 = !{!602, !391, i64 24}
!606 = !{!"branch_weights", i32 99720, i32 1219636}
!607 = distinct !{!607, !424}
!608 = !{!"df-problems.c:df_lr_reset"}
!609 = distinct !{!609, !424}
!610 = !{!"function_entry_count", i64 88057}
!611 = !{!"df-problems.c:df_lr_free_bb_info"}
!612 = !{!"branch_weights", i32 1, i32 88058}
!613 = !{!"df-problems.c:df_lr_local_compute"}
!614 = !{!462, !391, i64 264}
!615 = !{!"branch_weights", i32 72056, i32 27666}
!616 = !{!"branch_weights", i32 1, i32 72056}
!617 = !{!"branch_weights", i32 72056, i32 1}
!618 = !{!"branch_weights", i32 18403, i32 1300954}
!619 = !{!462, !391, i64 296}
!620 = distinct !{!620, !424}
!621 = !{!"df-problems.c:df_lr_init"}
!622 = !{!"branch_weights", i32 99720, i32 7155048}
!623 = distinct !{!623, !424}
!624 = !{!"function_entry_count", i64 150167}
!625 = !{!"df-problems.c:df_lr_confluence_0"}
!626 = !{!414, !391, i64 8}
!627 = !{!"branch_weights", i32 78440, i32 71729}
!628 = !{!"function_entry_count", i64 26678442}
!629 = !{!"df-problems.c:df_lr_confluence_n"}
!630 = !{!"branch_weights", i32 26678443, i32 1}
!631 = !{!"function_entry_count", i64 16160542}
!632 = !{!"df-problems.c:df_lr_transfer_function"}
!633 = !{!"df-problems.c:df_lr_finalize"}
!634 = !{!402, !392, i64 53}
!635 = !{!"branch_weights", i32 65768, i32 33954}
!636 = !{!"branch_weights", i32 29927, i32 4028}
!637 = !{!462, !391, i64 328}
!638 = !{!462, !398, i64 344}
!639 = !{!"df-problems.c:df_lr_free"}
!640 = !{!"branch_weights", i32 1, i32 6653}
!641 = !{!"branch_weights", i32 1, i32 6652}
!642 = !{!"branch_weights", i32 121762, i32 250624}
!643 = !{!"branch_weights", i32 365733, i32 6652}
!644 = distinct !{!644, !424}
!645 = !{!"df-problems.c:df_lr_top_dump"}
!646 = !{!647, !391, i64 0}
!647 = !{!"df_lr_problem_data", !391, i64 0, !391, i64 8}
!648 = !{!"df-problems.c:df_lr_bottom_dump"}
!649 = !{!647, !391, i64 8}
!650 = !{!"df-problems.c:df_lr_verify_solution_start"}
!651 = distinct !{!651, !424}
!652 = !{!"df-problems.c:df_lr_verify_solution_end"}
!653 = distinct !{!653, !424}
!654 = distinct !{!654, !424}
!655 = !{!"function_entry_count", i64 338680}
!656 = !{!"df-problems.c:df_lr_set_bb_info"}
!657 = !{!"branch_weights", i32 1, i32 338681}
!658 = !{!"branch_weights", i32 338681, i32 1}
!659 = !{!"function_entry_count", i64 8829925}
!660 = !{!"df-problems.c:rhs_regno"}
!661 = !{!"function_entry_count", i64 1300953}
!662 = !{!"df-problems.c:df_lr_bb_local_compute"}
!663 = !{!"branch_weights", i32 1171352, i32 129602}
!664 = !{!"branch_weights", i32 129602, i32 1}
!665 = !{!"branch_weights", i32 129602, i32 0}
!666 = distinct !{!666, !424}
!667 = !{!"branch_weights", i32 1, i32 1300953}
!668 = !{!"branch_weights", i32 3983169, i32 1}
!669 = !{!"branch_weights", i32 1300953, i32 2682216}
!670 = distinct !{!670, !424}
!671 = !{!"branch_weights", i32 1, i32 32806}
!672 = !{!"branch_weights", i32 1300954, i32 8799837}
!673 = !{!"branch_weights", i32 967569709, i32 -1571023727}
!674 = !{!"branch_weights", i32 1, i32 6493341}
!675 = !{!"branch_weights", i32 26280867, i32 10398}
!676 = !{!"branch_weights", i32 6493341, i32 19797923}
!677 = distinct !{!677, !424}
!678 = !{!421, !391, i64 16}
!679 = !{!"branch_weights", i32 6493341, i32 915800}
!680 = distinct !{!680, !424}
!681 = !{!"branch_weights", i32 32806, i32 10035178}
!682 = distinct !{!682, !424}
!683 = distinct !{!683, !424}
!684 = !{!"branch_weights", i32 1, i32 1300954}
!685 = !{!"function_entry_count", i64 8851168}
!686 = !{!"df-problems.c:df_get_artificial_uses"}
!687 = !{!470, !391, i64 8}
!688 = distinct !{!688, !424}
!689 = !{!"function_entry_count", i64 13304}
!690 = !{!"function_entry_count", i64 95693}
!691 = !{!"df-problems.c:df_live_alloc"}
!692 = !{!"branch_weights", i32 6653, i32 89042}
!693 = !{!"branch_weights", i32 1, i32 95693}
!694 = !{!"branch_weights", i32 338681, i32 964599}
!695 = !{!696, !391, i64 0}
!696 = !{!"df_live_bb_info", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24}
!697 = !{!696, !391, i64 8}
!698 = !{!696, !391, i64 16}
!699 = !{!696, !391, i64 24}
!700 = !{!"branch_weights", i32 95693, i32 1207586}
!701 = distinct !{!701, !424}
!702 = !{!"df-problems.c:df_live_reset"}
!703 = distinct !{!703, !424}
!704 = !{!"df-problems.c:df_live_free_bb_info"}
!705 = !{!"df-problems.c:df_live_local_compute"}
!706 = distinct !{!706, !424}
!707 = !{!"df-problems.c:df_live_init"}
!708 = !{!"branch_weights", i32 95693, i32 6260272}
!709 = distinct !{!709, !424}
!710 = !{!"function_entry_count", i64 27235242}
!711 = !{!"df-problems.c:df_live_confluence_n"}
!712 = !{!"branch_weights", i32 27231641, i32 3603}
!713 = !{!"function_entry_count", i64 15358419}
!714 = !{!"df-problems.c:df_live_transfer_function"}
!715 = !{!"df-problems.c:df_live_finalize"}
!716 = !{!"branch_weights", i32 1, i32 95694}
!717 = distinct !{!717, !424}
!718 = !{!"df-problems.c:df_live_free"}
!719 = distinct !{!719, !424}
!720 = !{!"df-problems.c:df_live_top_dump"}
!721 = !{!722, !391, i64 0}
!722 = !{!"df_live_problem_data", !391, i64 0, !391, i64 8}
!723 = !{!"df-problems.c:df_live_bottom_dump"}
!724 = !{!722, !391, i64 8}
!725 = !{!"df-problems.c:df_live_verify_solution_start"}
!726 = distinct !{!726, !424}
!727 = !{!"df-problems.c:df_live_verify_solution_end"}
!728 = distinct !{!728, !424}
!729 = distinct !{!729, !424}
!730 = !{!"df-problems.c:df_live_set_bb_info"}
!731 = !{!"function_entry_count", i64 1303278}
!732 = !{!"df-problems.c:df_live_bb_local_compute"}
!733 = !{!"branch_weights", i32 1, i32 52878}
!734 = !{!575, !391, i64 8}
!735 = !{!"branch_weights", i32 1303279, i32 8637777}
!736 = !{!"branch_weights", i32 191613, i32 8446165}
!737 = !{!"branch_weights", i32 51184, i32 -1842913180}
!738 = !{!421, !398, i64 40}
!739 = !{!"branch_weights", i32 -974638668, i32 1190357779}
!740 = !{!"branch_weights", i32 1, i32 6358289}
!741 = !{!"branch_weights", i32 25830240, i32 10375}
!742 = !{!"branch_weights", i32 25227533, i32 602708}
!743 = !{!"branch_weights", i32 3864386, i32 21363148}
!744 = !{!"branch_weights", i32 6358289, i32 19482325}
!745 = distinct !{!745, !424}
!746 = !{!"branch_weights", i32 52878, i32 9835299}
!747 = distinct !{!747, !424}
!748 = !{!"branch_weights", i32 1173677, i32 129602}
!749 = distinct !{!749, !424}
!750 = distinct !{!750, !424}
!751 = distinct !{!751, !424}
!752 = !{!"function_entry_count", i64 3802291}
!753 = distinct !{!753, !424}
!754 = !{!"df-problems.c:df_chain_unlink_1"}
!755 = distinct !{!755, !424}
!756 = distinct !{!756, !424}
!757 = !{!402, !398, i64 48}
!758 = !{!"df-problems.c:df_chain_alloc"}
!759 = !{!"df-problems.c:df_chain_reset"}
!760 = !{!"df-problems.c:df_chain_finalize"}
!761 = distinct !{!761, !424}
!762 = !{!"df-problems.c:df_chain_free"}
!763 = !{!"df-problems.c:df_chain_fully_remove_problem"}
!764 = !{!"df-problems.c:df_chain_top_dump"}
!765 = distinct !{!765, !424}
!766 = distinct !{!766, !424}
!767 = distinct !{!767, !424}
!768 = !{!"df-problems.c:df_chain_bottom_dump"}
!769 = distinct !{!769, !424}
!770 = !{!421, !391, i64 24}
!771 = distinct !{!771, !424}
!772 = distinct !{!772, !424}
!773 = distinct !{!773, !424}
!774 = !{!"function_entry_count", i64 55866}
!775 = !{!"df-problems.c:df_chain_remove_problem"}
!776 = !{!"branch_weights", i32 27934, i32 27934}
!777 = !{!"branch_weights", i32 1, i32 55866}
!778 = !{!"branch_weights", i32 559583, i32 1}
!779 = distinct !{!779, !424}
!780 = !{!"branch_weights", i32 1, i32 559583}
!781 = !{!"branch_weights", i32 1, i32 559582}
!782 = !{!"branch_weights", i32 559582, i32 1649510}
!783 = distinct !{!783, !424}
!784 = !{!"branch_weights", i32 1, i32 20317}
!785 = !{!"branch_weights", i32 559583, i32 2959027}
!786 = !{!"branch_weights", i32 -954838429, i32 1362213754}
!787 = !{!"branch_weights", i32 2101830, i32 1}
!788 = distinct !{!788, !424}
!789 = !{!"branch_weights", i32 1, i32 2101830}
!790 = !{!"branch_weights", i32 1, i32 2101829}
!791 = !{!"branch_weights", i32 2101829, i32 318878}
!792 = distinct !{!792, !424}
!793 = !{!"branch_weights", i32 2026302, i32 75528}
!794 = !{!"branch_weights", i32 75528, i32 0}
!795 = distinct !{!795, !424}
!796 = !{!"branch_weights", i32 20317, i32 3477975}
!797 = distinct !{!797, !424}
!798 = !{!"branch_weights", i32 55866, i32 503717}
!799 = distinct !{!799, !424}
!800 = !{!"df-problems.c:df_chain_create_bb"}
!801 = !{!"branch_weights", i32 1, i32 20259}
!802 = !{!"branch_weights", i32 1090123, i32 1002613}
!803 = !{!"branch_weights", i32 20259, i32 3463056}
!804 = distinct !{!804, !424}
!805 = !{!"function_entry_count", i64 3652587}
!806 = !{!"df-problems.c:df_chain_create_bb_process_use"}
!807 = !{!"branch_weights", i32 1, i32 3652587}
!808 = !{!"branch_weights", i32 4652706, i32 1}
!809 = !{!"branch_weights", i32 1423861, i32 3228846}
!810 = !{!"branch_weights", i32 3228846, i32 1}
!811 = !{!"branch_weights", i32 1, i32 106093}
!812 = !{!"branch_weights", i32 3122753, i32 3802292}
!813 = !{!462, !391, i64 136}
!814 = !{!"branch_weights", i32 3802292, i32 1}
!815 = !{!"branch_weights", i32 1, i32 3802292}
!816 = !{!"branch_weights", i32 106093, i32 6818951}
!817 = distinct !{!817, !424}
!818 = !{!"branch_weights", i32 3652587, i32 1000119}
!819 = distinct !{!819, !424}
!820 = !{!821, !391, i64 24}
!821 = !{!"df_byte_lr_problem_data", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24, !391, i64 32, !490, i64 40}
!822 = !{!821, !391, i64 32}
!823 = !{!"df-problems.c:df_byte_lr_alloc"}
!824 = !{!821, !391, i64 8}
!825 = !{!821, !391, i64 0}
!826 = !{!821, !391, i64 16}
!827 = !{!414, !391, i64 0}
!828 = !{!396, !391, i64 56}
!829 = distinct !{!829, !424}
!830 = distinct !{!830, !424}
!831 = distinct !{!831, !424}
!832 = !{!833, !391, i64 0}
!833 = !{!"df_byte_lr_bb_info", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24}
!834 = !{!833, !391, i64 8}
!835 = !{!833, !391, i64 16}
!836 = !{!833, !391, i64 24}
!837 = distinct !{!837, !424}
!838 = !{!"df-problems.c:df_byte_lr_reset"}
!839 = distinct !{!839, !424}
!840 = !{!"df-problems.c:df_byte_lr_free_bb_info"}
!841 = !{!"df-problems.c:df_byte_lr_local_compute"}
!842 = distinct !{!842, !424}
!843 = !{!"df-problems.c:df_byte_lr_init"}
!844 = distinct !{!844, !424}
!845 = !{!"df-problems.c:df_byte_lr_confluence_0"}
!846 = !{!"df-problems.c:df_byte_lr_confluence_n"}
!847 = !{!"df-problems.c:df_byte_lr_transfer_function"}
!848 = !{!"df-problems.c:df_byte_lr_free"}
!849 = !{!"df-problems.c:df_byte_lr_top_dump"}
!850 = !{!"df-problems.c:df_byte_lr_bottom_dump"}
!851 = !{!"df-problems.c:df_byte_lr_check_regs"}
!852 = distinct !{!852, !424}
!853 = !{!"df-problems.c:df_byte_lr_expand_bitmap"}
!854 = distinct !{!854, !424}
!855 = !{!"df-problems.c:df_byte_lr_get_bb_info"}
!856 = !{!"df-problems.c:df_byte_lr_set_bb_info"}
!857 = !{!"df-problems.c:df_byte_lr_bb_local_compute"}
!858 = distinct !{!858, !424}
!859 = distinct !{!859, !424}
!860 = distinct !{!860, !424}
!861 = distinct !{!861, !424}
!862 = distinct !{!862, !424}
!863 = distinct !{!863, !424}
!864 = distinct !{!864, !424}
!865 = distinct !{!865, !424}
!866 = distinct !{!866, !424}
!867 = distinct !{!867, !424}
!868 = distinct !{!868, !424}
!869 = !{!"function_entry_count", i64 67225}
!870 = !{!"function_entry_count", i64 80342}
!871 = !{!"df-problems.c:df_note_alloc"}
!872 = !{!"df-problems.c:df_note_compute"}
!873 = !{!"branch_weights", i32 1, i32 80342}
!874 = !{!"branch_weights", i32 80342, i32 3167307}
!875 = distinct !{!875, !424}
!876 = !{!"function_entry_count", i64 62271}
!877 = !{!"df-problems.c:df_note_free"}
!878 = !{!"function_entry_count", i64 3247648}
!879 = !{!"df-problems.c:df_note_bb_compute"}
!880 = !{!"branch_weights", i32 2712589, i32 535060}
!881 = !{!"branch_weights", i32 535060, i32 1}
!882 = !{!"branch_weights", i32 535060, i32 0}
!883 = distinct !{!883, !424}
!884 = !{!"branch_weights", i32 1, i32 3247648}
!885 = !{!"branch_weights", i32 10710756, i32 1}
!886 = !{!"branch_weights", i32 3247648, i32 7463108}
!887 = distinct !{!887, !424}
!888 = !{!"branch_weights", i32 1, i32 180548}
!889 = !{!"branch_weights", i32 3247649, i32 18987110}
!890 = !{!"branch_weights", i32 -1451147622, i32 1103396474}
!891 = !{!421, !391, i64 32}
!892 = !{!"branch_weights", i32 1103908, i32 12575585}
!893 = !{!"branch_weights", i32 1102552, i32 1356}
!894 = !{!"branch_weights", i32 1094, i32 263}
!895 = !{!896, !398, i64 12}
!896 = !{!"df_mw_hardreg", !391, i64 0, !398, i64 8, !398, i64 10, !398, i64 12, !398, i64 16, !398, i64 20}
!897 = !{!"branch_weights", i32 1094, i32 1}
!898 = !{!"branch_weights", i32 1356, i32 0}
!899 = distinct !{!899, !424}
!900 = !{!"branch_weights", i32 1, i32 1103907}
!901 = !{!"branch_weights", i32 766650, i32 50013254}
!902 = !{!"branch_weights", i32 50779903, i32 1}
!903 = !{!"branch_weights", i32 1103907, i32 49675996}
!904 = distinct !{!904, !424}
!905 = !{!"branch_weights", i32 12575062, i32 523}
!906 = !{!"branch_weights", i32 180, i32 344}
!907 = !{!"branch_weights", i32 523, i32 0}
!908 = distinct !{!908, !424}
!909 = !{!"branch_weights", i32 4180444, i32 8395141}
!910 = !{!"branch_weights", i32 7370630, i32 1024512}
!911 = !{!"branch_weights", i32 8380479, i32 14663}
!912 = !{!"branch_weights", i32 8395141, i32 0}
!913 = distinct !{!913, !424}
!914 = !{!"branch_weights", i32 13677614, i32 1878}
!915 = !{!"branch_weights", i32 1273, i32 606}
!916 = !{!"branch_weights", i32 1273, i32 1}
!917 = !{!"branch_weights", i32 1878, i32 0}
!918 = distinct !{!918, !424}
!919 = !{!"branch_weights", i32 1, i32 13679491}
!920 = !{!"branch_weights", i32 7179259, i32 8382964}
!921 = !{!"branch_weights", i32 7179259, i32 1}
!922 = !{!"branch_weights", i32 7178073, i32 1187}
!923 = !{!"branch_weights", i32 6373143, i32 804931}
!924 = !{!"branch_weights", i32 6334431, i32 38713}
!925 = !{!"branch_weights", i32 6334431, i32 1}
!926 = !{!"branch_weights", i32 -1051738113, i32 0}
!927 = !{!"branch_weights", i32 33493, i32 1}
!928 = !{!"branch_weights", i32 13679491, i32 1882731}
!929 = distinct !{!929, !424}
!930 = !{!"branch_weights", i32 13678716, i32 776}
!931 = !{!"branch_weights", i32 776, i32 0}
!932 = distinct !{!932, !424}
!933 = !{!"branch_weights", i32 13611305, i32 68187}
!934 = !{!"branch_weights", i32 68187, i32 0}
!935 = distinct !{!935, !424}
!936 = !{!"branch_weights", i32 1, i32 13679492}
!937 = !{!"branch_weights", i32 180548, i32 21873662}
!938 = distinct !{!938, !424}
!939 = !{!"function_entry_count", i64 13679491}
!940 = !{!"df-problems.c:df_kill_notes"}
!941 = !{!"branch_weights", i32 3644875, i32 10034617}
!942 = !{!"branch_weights", i32 3863540, i32 5209336, i32 961743}
!943 = !{!"branch_weights", i32 5209336, i32 1}
!944 = !{!"branch_weights", i32 961743, i32 1}
!945 = !{!"branch_weights", i32 10034617, i32 0}
!946 = distinct !{!946, !424}
!947 = !{!"function_entry_count", i64 13709314}
!948 = !{!"df-problems.c:df_ignore_stack_reg"}
!949 = !{!"branch_weights", i32 13709315, i32 1}
!950 = !{!"function_entry_count", i64 1272}
!951 = !{!"df-problems.c:df_set_unused_notes_for_mw"}
!952 = !{!896, !391, i64 0}
!953 = !{!896, !398, i64 16}
!954 = !{!"branch_weights", i32 1, i32 1272}
!955 = !{!"branch_weights", i32 259, i32 2287}
!956 = !{!"branch_weights", i32 259, i32 1}
!957 = !{!"branch_weights", i32 1272, i32 1273}
!958 = distinct !{!958, !424}
!959 = !{!"function_entry_count", i64 9161789}
!960 = !{!"df-problems.c:df_create_unused_note"}
!961 = !{!"branch_weights", i32 1202406, i32 7959385}
!962 = !{!"branch_weights", i32 1202148, i32 259}
!963 = !{!"branch_weights", i32 1201443, i32 706}
!964 = !{!"branch_weights", i32 1201443, i32 1}
!965 = !{!"branch_weights", i32 -1834409985, i32 0}
!966 = !{!"branch_weights", i32 4, i32 1}
!967 = !{!"df-problems.c:df_set_dead_notes_for_mw"}
!968 = !{!"branch_weights", i32 2545, i32 1}
!969 = !{!"branch_weights", i32 1, i32 2545}
!970 = distinct !{!970, !424}
!971 = !{!"function_entry_count", i64 7536130}
!972 = !{!"df-problems.c:df_set_note"}
!973 = !{!"branch_weights", i32 1, i32 7536131}
!974 = !{!"branch_weights", i32 1, i32 1434014}
!975 = !{!"branch_weights", i32 6076154, i32 25963}
!976 = !{!"branch_weights", i32 25963, i32 0}
!977 = distinct !{!977, !424}
!978 = !{!"branch_weights", i32 6091955, i32 10163}
!979 = !{!"branch_weights", i32 1434014, i32 4694065}
!980 = !{!"df-problems.c:df_whole_mw_reg_unused_p"}
!981 = !{!"branch_weights", i32 1, i32 127}
!982 = !{!"branch_weights", i32 127, i32 162817}
!983 = distinct !{!983, !424}
!984 = !{!"branch_weights", i32 1, i32 1273}
!985 = !{!"df-problems.c:df_whole_mw_reg_dead_p"}
!986 = distinct !{!986, !424}
!987 = !{!"function_entry_count", i64 4610831}
!988 = !{!"branch_weights", i32 1, i32 4610831}
!989 = !{!"branch_weights", i32 20012671, i32 3333}
!990 = !{!"branch_weights", i32 4610831, i32 15405172}
!991 = distinct !{!991, !424}
!992 = !{!"function_entry_count", i64 13512967}
!993 = !{!"branch_weights", i32 1, i32 13512967}
!994 = !{!"branch_weights", i32 55619938, i32 22775}
!995 = !{!"branch_weights", i32 13512967, i32 42129745}
!996 = distinct !{!996, !424}
!997 = !{!"function_entry_count", i64 13481253}
!998 = !{!"branch_weights", i32 1, i32 13481254}
!999 = !{!"branch_weights", i32 1, i32 13481253}
!1000 = !{!"branch_weights", i32 13481253, i32 1848949}
!1001 = distinct !{!1001, !424}
!1002 = !{!"function_entry_count", i64 3185744}
!1003 = !{!"branch_weights", i32 3185744, i32 1}
!1004 = !{!"branch_weights", i32 1, i32 0}
!1005 = distinct !{!1005, !424}
!1006 = !{!"branch_weights", i32 1, i32 3185744}
!1007 = !{!"branch_weights", i32 10343023, i32 1}
!1008 = !{!"branch_weights", i32 3185744, i32 7157279}
!1009 = distinct !{!1009, !424}
!1010 = !{!"function_entry_count", i64 1268028}
!1011 = !{!"branch_weights", i32 5120, i32 -1048348208}
!1012 = !{!"df-problems.c:df_simulate_fixup_sets"}
!1013 = !{!"branch_weights", i32 5818002, i32 1}
!1014 = !{!"df-problems.c:bb_has_eh_pred"}
!1015 = !{!"branch_weights", i32 1, i32 5818001}
!1016 = !{!"branch_weights", i32 5818001, i32 3588512}
!1017 = distinct !{!1017, !424}
!1018 = !{!"function_entry_count", i64 2903397}
!1019 = !{!"branch_weights", i32 2903397, i32 1}
!1020 = distinct !{!1020, !424}
!1021 = !{!"function_entry_count", i64 1068604}
!1022 = !{!"branch_weights", i32 876463, i32 192142}
!1023 = !{!"branch_weights", i32 192142, i32 1}
!1024 = !{!"branch_weights", i32 192142, i32 0}
!1025 = distinct !{!1025, !424}
!1026 = !{!"function_entry_count", i64 4549973}
!1027 = !{!"branch_weights", i32 -995085847, i32 725}
!1028 = !{!"branch_weights", i32 1, i32 4549974}
!1029 = !{!"branch_weights", i32 664405, i32 3885569}
!1030 = !{!"branch_weights", i32 1226721, i32 2207447, i32 451403}
!1031 = !{!"branch_weights", i32 1612580, i32 1046270}
!1032 = !{!"branch_weights", i32 1, i32 1612579}
!1033 = distinct !{!1033, !424}
!1034 = !{!"branch_weights", i32 3885569, i32 0}
!1035 = distinct !{!1035, !424}
!1036 = distinct !{!1036, !424}
!1037 = distinct !{!1037, !424}
!1038 = !{!"df-problems.c:df_md_alloc"}
!1039 = !{!"branch_weights", i32 13305, i32 1}
!1040 = !{!"branch_weights", i32 1, i32 13304}
!1041 = !{!"branch_weights", i32 547662, i32 1}
!1042 = !{!1043, !391, i64 16}
!1043 = !{!"df_md_bb_info", !391, i64 0, !391, i64 8, !391, i64 16, !391, i64 24, !391, i64 32}
!1044 = !{!1043, !391, i64 0}
!1045 = !{!1043, !391, i64 8}
!1046 = !{!1043, !391, i64 24}
!1047 = !{!1043, !391, i64 32}
!1048 = !{!"branch_weights", i32 13304, i32 534358}
!1049 = distinct !{!1049, !424}
!1050 = !{!"df-problems.c:df_md_reset"}
!1051 = distinct !{!1051, !424}
!1052 = !{!"function_entry_count", i64 1838}
!1053 = !{!"df-problems.c:df_md_free_bb_info"}
!1054 = !{!"branch_weights", i32 1, i32 1839}
!1055 = !{!"df-problems.c:df_md_local_compute"}
!1056 = distinct !{!1056, !424}
!1057 = distinct !{!1057, !424}
!1058 = !{!"branch_weights", i32 1, i32 547661}
!1059 = !{!"branch_weights", i32 1, i32 680721}
!1060 = !{!"branch_weights", i32 547661, i32 133060}
!1061 = distinct !{!1061, !424}
!1062 = distinct !{!1062, !424}
!1063 = distinct !{!1063, !424}
!1064 = !{!"df-problems.c:df_md_init"}
!1065 = distinct !{!1065, !424}
!1066 = !{!"function_entry_count", i64 13350}
!1067 = !{!"df-problems.c:df_md_confluence_0"}
!1068 = !{!"function_entry_count", i64 1697074}
!1069 = !{!"df-problems.c:df_md_confluence_n"}
!1070 = !{!"branch_weights", i32 1697075, i32 1}
!1071 = !{!"function_entry_count", i64 1541442}
!1072 = !{!"df-problems.c:df_md_transfer_function"}
!1073 = !{!"df-problems.c:df_md_free"}
!1074 = !{!"branch_weights", i32 168861, i32 545824}
!1075 = !{!"branch_weights", i32 701380, i32 13304}
!1076 = distinct !{!1076, !424}
!1077 = !{!"df-problems.c:df_md_top_dump"}
!1078 = !{!"df-problems.c:df_md_bottom_dump"}
!1079 = !{!"function_entry_count", i64 8534987}
!1080 = !{!"df-problems.c:df_md_get_bb_info"}
!1081 = !{!"branch_weights", i32 8534988, i32 1}
!1082 = !{!"function_entry_count", i64 547661}
!1083 = !{!"df-problems.c:df_md_set_bb_info"}
!1084 = !{!"branch_weights", i32 1, i32 547662}
!1085 = !{!"df-problems.c:df_md_bb_local_compute"}
!1086 = !{!"branch_weights", i32 1, i32 39912}
!1087 = !{!"branch_weights", i32 547662, i32 3049664}
!1088 = !{!"branch_weights", i32 -948465784, i32 1201336735}
!1089 = !{!"branch_weights", i32 39912, i32 3517501}
!1090 = distinct !{!1090, !424}
!1091 = !{!"function_entry_count", i64 3339398}
!1092 = !{!"df-problems.c:df_md_bb_local_compute_process_def"}
!1093 = !{!"branch_weights", i32 1, i32 3339398}
!1094 = !{!"branch_weights", i32 10211410, i32 1}
!1095 = !{!"branch_weights", i32 10118282, i32 93129}
!1096 = !{!"branch_weights", i32 10118282, i32 1}
!1097 = !{!"branch_weights", i32 1703423, i32 8414860}
!1098 = !{!"branch_weights", i32 3339398, i32 6872012}
!1099 = distinct !{!1099, !424}
