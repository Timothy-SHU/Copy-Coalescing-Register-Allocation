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
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_byte_lr_problem_data = type { ptr, ptr, ptr, ptr, ptr, %struct.bitmap_obstack }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.df_rd_problem_data = type { ptr, ptr, %struct.bitmap_obstack }
%struct.df_rd_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.df_lr_problem_data = type { ptr, ptr }
%struct.df_live_problem_data = type { ptr, ptr }
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
@problem_RD = internal global %struct.df_problem { i32 3, i32 1, ptr @df_rd_alloc, ptr null, ptr @df_rd_free_bb_info, ptr @df_rd_local_compute, ptr @df_rd_init_solution, ptr @df_worklist_dataflow, ptr null, ptr @df_rd_confluence_n, ptr @df_rd_transfer_function, ptr null, ptr @df_rd_free, ptr @df_rd_free, ptr @df_rd_start_dump, ptr @df_rd_top_dump, ptr @df_rd_bottom_dump, ptr null, ptr null, ptr null, i32 30, i8 1 }, align 8
@problem_LR = internal global %struct.df_problem { i32 1, i32 2, ptr @df_lr_alloc, ptr @df_lr_reset, ptr @df_lr_free_bb_info, ptr @df_lr_local_compute, ptr @df_lr_init, ptr @df_worklist_dataflow, ptr @df_lr_confluence_0, ptr @df_lr_confluence_n, ptr @df_lr_transfer_function, ptr @df_lr_finalize, ptr @df_lr_free, ptr null, ptr null, ptr @df_lr_top_dump, ptr @df_lr_bottom_dump, ptr @df_lr_verify_solution_start, ptr @df_lr_verify_solution_end, ptr null, i32 31, i8 0 }, align 8
@problem_LIVE = internal global %struct.df_problem { i32 2, i32 1, ptr @df_live_alloc, ptr @df_live_reset, ptr @df_live_free_bb_info, ptr @df_live_local_compute, ptr @df_live_init, ptr @df_worklist_dataflow, ptr null, ptr @df_live_confluence_n, ptr @df_live_transfer_function, ptr @df_live_finalize, ptr @df_live_free, ptr @df_live_free, ptr null, ptr @df_live_top_dump, ptr @df_live_bottom_dump, ptr @df_live_verify_solution_start, ptr @df_live_verify_solution_end, ptr @problem_LR, i32 32, i8 0 }, align 8
@problem_CHAIN = internal global %struct.df_problem { i32 4, i32 0, ptr @df_chain_alloc, ptr @df_chain_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @df_chain_finalize, ptr @df_chain_free, ptr @df_chain_fully_remove_problem, ptr null, ptr @df_chain_top_dump, ptr @df_chain_bottom_dump, ptr null, ptr null, ptr @problem_RD, i32 34, i8 0 }, align 8
@problem_BYTE_LR = internal global %struct.df_problem { i32 5, i32 2, ptr @df_byte_lr_alloc, ptr @df_byte_lr_reset, ptr @df_byte_lr_free_bb_info, ptr @df_byte_lr_local_compute, ptr @df_byte_lr_init, ptr @df_worklist_dataflow, ptr @df_byte_lr_confluence_0, ptr @df_byte_lr_confluence_n, ptr @df_byte_lr_transfer_function, ptr null, ptr @df_byte_lr_free, ptr @df_byte_lr_free, ptr null, ptr @df_byte_lr_top_dump, ptr @df_byte_lr_bottom_dump, ptr null, ptr null, ptr null, i32 35, i8 0 }, align 8
@problem_NOTE = internal global %struct.df_problem { i32 6, i32 0, ptr @df_note_alloc, ptr null, ptr null, ptr @df_note_compute, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @df_note_free, ptr @df_note_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @problem_LR, i32 36, i8 0 }, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@problem_MD = internal global %struct.df_problem { i32 7, i32 1, ptr @df_md_alloc, ptr @df_md_reset, ptr @df_md_free_bb_info, ptr @df_md_local_compute, ptr @df_md_init, ptr @df_worklist_dataflow, ptr @df_md_confluence_0, ptr @df_md_confluence_n, ptr @df_md_transfer_function, ptr null, ptr @df_md_free, ptr @df_md_free, ptr null, ptr @df_md_top_dump, ptr @df_md_bottom_dump, ptr null, ptr null, ptr null, i32 29, i8 0 }, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
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
@.str.29 = private unnamed_addr constant [19 x i8] c"df_live_block pool\00", align 1
@df_live_scratch = internal unnamed_addr global ptr null, align 8
@optimize = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [15 x i8] c";; live  in  \09\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c";; live  gen \09\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c";; live  kill\09\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c";; live  out \09\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"df_chain_block pool\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c";;  DU chains for artificial defs\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c";;   reg %d \00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c";;   DU chains for insn luid %d uid %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c";;      reg %d \00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"read/write \00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c";;  UD chains for artificial uses\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c";;   UD chains for insn luid %d uid %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c";;   eq_note reg %d \00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"df_byte_lr_block pool\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [14 x i8] c";; blr  in  \09\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c";; blr  use \09\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c";; blr  def \09\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c";; blr  out \09\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@regstack_completed = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [17 x i8] c"df_md_block pool\00", align 1
@df_md_scratch = internal unnamed_addr global ptr null, align 8
@.str.49 = private unnamed_addr constant [13 x i8] c";; md  in  \09\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c";; md  init  \09\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c";; md  gen \09\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c";; md  kill \09\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c";; md  out \09\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @df_get_live_out(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !373 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !378

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !374
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !374
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !379
  br i1 %12, label %18, label %15, !prof !378

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
  %23 = load ptr, ptr %22, align 8, !tbaa !374
  ret ptr %23
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_live_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !383 !PGOFuncName !384 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !385
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !387

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !388
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !389 !PGOFuncName !390 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !385
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !391

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !388
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @df_get_live_in(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !392 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !393

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !374
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !374
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !379
  br i1 %12, label %18, label %15, !prof !393

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
  %23 = load ptr, ptr %22, align 8, !tbaa !374
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_grow_bb_info(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !394 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !397
  %7 = add nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !385
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %11, label %25, !prof !399

11:                                               ; preds = %1
  %12 = lshr i32 %7, 2
  %13 = add i32 %12, %7
  %14 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !388
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %17) #17
  store ptr %18, ptr %14, align 8, !tbaa !388
  %19 = load i32, ptr %8, align 8, !tbaa !385
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = sub i32 %13, %19
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 %24, i1 false)
  store i32 %13, ptr %8, align 8, !tbaa !385
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
define dso_local void @df_chain_dump(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 !prof !400 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %1)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2, %25
  %6 = phi ptr [ %33, %25 ], [ %0, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !401
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 100, i32 117
  %12 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !403
  %14 = and i32 %8, 255
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.df_artificial_ref, ptr %7, i64 0, i32 1
  br label %25

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !403
  %21 = load ptr, ptr %20, align 8, !tbaa !404
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  %23 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !403
  br label %25

25:                                               ; preds = %16, %18
  %26 = phi ptr [ %22, %18 ], [ %17, %16 ]
  %27 = phi i32 [ %24, %18 ], [ -1, %16 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !403
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !379
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13, i32 noundef %30, i32 noundef %27) #18
  %32 = getelementptr inbounds %struct.df_link, ptr %6, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !406
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5, !llvm.loop !407

35:                                               ; preds = %25, %2
  %36 = tail call i32 @fputc(i32 125, ptr %1)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_print_bb_index(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !400 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %1)
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !409
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !411
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %3) #18, !range !412
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2, %10
  %11 = load ptr, ptr %3, align 8, !tbaa !374
  %12 = load ptr, ptr %11, align 8, !tbaa !413
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !379
  %15 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !415
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @.str.8, ptr @.str.7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %14, ptr noundef nonnull %19) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %21 = load i32, ptr %4, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = call fastcc zeroext i8 @ei_cond(i32 %21, ptr %22, ptr noundef nonnull %3) #18, !range !412
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !416

25:                                               ; preds = %10, %2
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !379
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %27) #18
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %30 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !409
  store ptr %30, ptr %7, align 8, !tbaa.struct !411
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %3) #18, !range !412
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %25, %33
  %34 = load ptr, ptr %3, align 8, !tbaa !374
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !417
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !379
  %39 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !415
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.8, ptr @.str.7
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %38, ptr noundef nonnull %43) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %45 = load i32, ptr %4, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %3) #18, !range !412
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %33, !llvm.loop !418

49:                                               ; preds = %33, %25
  %50 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !419 !PGOFuncName !420 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !421 !PGOFuncName !422 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !423

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !374
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !424 !PGOFuncName !425 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !426

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !427

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !428
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !428
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_simulate_artificial_defs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !430 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8, !prof !431

8:                                                ; preds = %2, %34
  %9 = phi ptr [ %36, %34 ], [ %6, %2 ]
  %10 = phi ptr [ %35, %34 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14, !prof !432

14:                                               ; preds = %8
  %15 = and i32 %11, 1114112
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !403
  %20 = load ptr, ptr @df, align 8, !tbaa !374
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !433
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds i32, ptr %22, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !410
  %26 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 3, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !436
  %28 = getelementptr inbounds i32, ptr %27, i64 %23
  %29 = load i32, ptr %28, align 4, !tbaa !410
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %25, i32 noundef %29) #17
  br label %30

30:                                               ; preds = %17, %14
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !403
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %32) #17
  br label %34

34:                                               ; preds = %30, %8
  %35 = getelementptr inbounds ptr, ptr %10, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !374
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %8, !prof !437, !llvm.loop !438

38:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #2 !prof !439 !PGOFuncName !440 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !441
  ret ptr %3
}

; Function Attrs: optsize
declare void @bitmap_clear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_simulate_one_insn(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !443 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !403
  %6 = load ptr, ptr @df, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !444
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !445
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16, !prof !446

16:                                               ; preds = %3, %51
  %17 = phi ptr [ %53, %51 ], [ %14, %3 ]
  %18 = phi ptr [ %52, %51 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !403
  %21 = load ptr, ptr @df, align 8, !tbaa !374
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 27
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26, !prof !447

26:                                               ; preds = %16
  %27 = icmp ugt i32 %20, 52
  br i1 %27, label %28, label %51

28:                                               ; preds = %26, %16
  %29 = load i32, ptr %17, align 8
  %30 = and i32 %29, 1114112
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43, !prof !447

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !433
  %35 = zext i32 %20 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !410
  %38 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 3, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !436
  %40 = getelementptr inbounds i32, ptr %39, i64 %35
  %41 = load i32, ptr %40, align 4, !tbaa !410
  tail call void @bitmap_clear_range(ptr noundef %2, i32 noundef %37, i32 noundef %41) #17
  %42 = load i32, ptr %17, align 8
  br label %43

43:                                               ; preds = %32, %28
  %44 = phi i32 [ %42, %32 ], [ %29, %28 ]
  %45 = and i32 %44, 12582912
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51, !prof !448

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !403
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %49) #17
  br label %51

51:                                               ; preds = %43, %47, %26
  %52 = getelementptr inbounds ptr, ptr %18, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !374
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %16, !prof !449, !llvm.loop !450

55:                                               ; preds = %51, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_add_problem() local_unnamed_addr #0 !prof !400 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_RD) #17
  ret void
}

; Function Attrs: optsize
declare void @df_add_problem(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_lr_add_problem() local_unnamed_addr #0 !prof !451 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_LR) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !452
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_lr_verify_transfer_functions() local_unnamed_addr #0 !prof !400 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = icmp eq ptr %1, null
  br i1 %2, label %67, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %9 = load ptr, ptr @cfun, align 8, !tbaa !374
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !395
  %12 = load ptr, ptr %11, align 8, !tbaa !374
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %3, %53
  %15 = phi ptr [ %55, %53 ], [ %12, %3 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !379
  %18 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %17) #18
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %17) #17
  %20 = icmp eq ptr %18, null
  %21 = load ptr, ptr @df, align 8, !tbaa !374
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !374
  %24 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !452
  %26 = load i32, ptr %16, align 8, !tbaa !379
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %20, label %45, label %29

29:                                               ; preds = %14
  br i1 %28, label %30, label %48

30:                                               ; preds = %29
  %31 = load ptr, ptr %18, align 8, !tbaa !453
  tail call void @bitmap_copy(ptr noundef %4, ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %18, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !455
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %33) #17
  %34 = load ptr, ptr %18, align 8, !tbaa !453
  tail call void @bitmap_clear(ptr noundef %34) #17
  %35 = load ptr, ptr %32, align 8, !tbaa !455
  tail call void @bitmap_clear(ptr noundef %35) #17
  %36 = load i32, ptr %16, align 8, !tbaa !379
  tail call fastcc void @df_lr_bb_local_compute(i32 noundef %36) #18
  %37 = load ptr, ptr %18, align 8, !tbaa !453
  %38 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %37) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1306, ptr noundef nonnull @.str.1) #17
  br label %41

41:                                               ; preds = %30, %40
  %42 = load ptr, ptr %32, align 8, !tbaa !455
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
  %49 = load i32, ptr %16, align 8, !tbaa !379
  %50 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %49) #18
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1320, ptr noundef nonnull @.str.1) #17
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !374
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %14, !llvm.loop !456

57:                                               ; preds = %53, %3
  %58 = load ptr, ptr @df, align 8, !tbaa !374
  %59 = getelementptr inbounds %struct.df, ptr %58, i64 0, i32 1, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !374
  %61 = getelementptr inbounds %struct.dataflow, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !452
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
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_lr_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !457 !PGOFuncName !458 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !459
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %9 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12, !prof !460

12:                                               ; preds = %1, %26
  %13 = phi ptr [ %28, %26 ], [ %10, %1 ]
  %14 = phi ptr [ %27, %26 ], [ %9, %1 ]
  %15 = load i32, ptr %13, align 8
  %16 = and i32 %15, 131072
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26, !prof !461

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  %20 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !403
  %22 = load ptr, ptr %8, align 8, !tbaa !453
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %21) #17
  %24 = load ptr, ptr %19, align 8, !tbaa !455
  %25 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %24, i32 noundef %21) #17
  br label %26

26:                                               ; preds = %18, %12
  %27 = getelementptr inbounds ptr, ptr %14, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !374
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %12, !prof !462, !llvm.loop !463

30:                                               ; preds = %26, %1
  %31 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %32 = load ptr, ptr %31, align 8, !tbaa !374
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34, !prof !464

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  br label %36

36:                                               ; preds = %34, %47
  %37 = phi ptr [ %32, %34 ], [ %49, %47 ]
  %38 = phi ptr [ %31, %34 ], [ %48, %47 ]
  %39 = load i32, ptr %37, align 8
  %40 = and i32 %39, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47, !prof !465

42:                                               ; preds = %36
  %43 = load ptr, ptr %35, align 8, !tbaa !455
  %44 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !403
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %43, i32 noundef %45) #17
  br label %47

47:                                               ; preds = %42, %36
  %48 = getelementptr inbounds ptr, ptr %38, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !374
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !prof !466, !llvm.loop !467

51:                                               ; preds = %47, %30
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !403
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !403
  %56 = icmp eq ptr %55, null
  br i1 %56, label %127, label %57, !prof !468

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  br label %59

59:                                               ; preds = %57, %123
  %60 = phi ptr [ %55, %57 ], [ %125, %123 ]
  %61 = load ptr, ptr %52, align 8, !tbaa !403
  %62 = load ptr, ptr %61, align 8, !tbaa !469
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !403
  %65 = icmp eq ptr %60, %64
  br i1 %65, label %127, label %66, !prof !471

66:                                               ; preds = %59
  %67 = load i32, ptr %60, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -11
  %70 = icmp ult i32 %69, -3
  br i1 %70, label %123, label %71, !prof !472

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !403
  %74 = load ptr, ptr @df, align 8, !tbaa !374
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !444
  %77 = zext i32 %73 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !374
  %80 = getelementptr inbounds %struct.df_insn_info, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !445
  %82 = load ptr, ptr %81, align 8, !tbaa !374
  %83 = icmp eq ptr %82, null
  br i1 %83, label %107, label %84, !prof !473

84:                                               ; preds = %71, %97
  %85 = phi ptr [ %99, %97 ], [ %82, %71 ]
  %86 = phi ptr [ %98, %97 ], [ %81, %71 ]
  %87 = load i32, ptr %85, align 8
  %88 = and i32 %87, 1114112
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97, !prof !474

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.df_base_ref, ptr %85, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !403
  %93 = load ptr, ptr %8, align 8, !tbaa !453
  %94 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %93, i32 noundef %92) #17
  %95 = load ptr, ptr %58, align 8, !tbaa !455
  %96 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %95, i32 noundef %92) #17
  br label %97

97:                                               ; preds = %90, %84
  %98 = getelementptr inbounds ptr, ptr %86, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !374
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %84, !prof !475, !llvm.loop !476

101:                                              ; preds = %97
  %102 = load ptr, ptr @df, align 8, !tbaa !374
  %103 = getelementptr inbounds %struct.df, ptr %102, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !444
  %105 = getelementptr inbounds ptr, ptr %104, i64 %77
  %106 = load ptr, ptr %105, align 8, !tbaa !374
  br label %107

107:                                              ; preds = %101, %71
  %108 = phi ptr [ %106, %101 ], [ %79, %71 ]
  %109 = getelementptr inbounds %struct.df_insn_info, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !477
  %111 = load ptr, ptr %110, align 8, !tbaa !374
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113, !prof !478

113:                                              ; preds = %107, %113
  %114 = phi ptr [ %121, %113 ], [ %111, %107 ]
  %115 = phi ptr [ %120, %113 ], [ %110, %107 ]
  %116 = load ptr, ptr %58, align 8, !tbaa !455
  %117 = getelementptr inbounds %struct.df_base_ref, ptr %114, i64 0, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !403
  %119 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %116, i32 noundef %118) #17
  %120 = getelementptr inbounds ptr, ptr %115, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !374
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %113, !prof !479, !llvm.loop !480

123:                                              ; preds = %113, %107, %66
  %124 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !403
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %59, !prof !481, !llvm.loop !482

127:                                              ; preds = %59, %123, %51
  %128 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %129 = load ptr, ptr %128, align 8, !tbaa !374
  %130 = icmp eq ptr %129, null
  br i1 %130, label %149, label %131, !prof !460

131:                                              ; preds = %127, %145
  %132 = phi ptr [ %147, %145 ], [ %129, %127 ]
  %133 = phi ptr [ %146, %145 ], [ %128, %127 ]
  %134 = load i32, ptr %132, align 8
  %135 = and i32 %134, 131072
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %145, label %137, !prof !461

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  %139 = getelementptr inbounds %struct.df_base_ref, ptr %132, i64 0, i32 6
  %140 = load i32, ptr %139, align 8, !tbaa !403
  %141 = load ptr, ptr %8, align 8, !tbaa !453
  %142 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %141, i32 noundef %140) #17
  %143 = load ptr, ptr %138, align 8, !tbaa !455
  %144 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %143, i32 noundef %140) #17
  br label %145

145:                                              ; preds = %137, %131
  %146 = getelementptr inbounds ptr, ptr %133, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !374
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %131, !prof !462, !llvm.loop !483

149:                                              ; preds = %145, %127
  %150 = load ptr, ptr @df, align 8, !tbaa !374
  %151 = getelementptr inbounds %struct.df, ptr %150, i64 0, i32 1, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !374
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155, !prof !484

154:                                              ; preds = %149
  tail call void @df_recompute_luids(ptr noundef %7) #17
  br label %155

155:                                              ; preds = %154, %149
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !485 !PGOFuncName !486 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !385
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !487

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !388
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_compl_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_live_add_problem() local_unnamed_addr #0 !prof !488 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_LIVE) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !452
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_live_set_all_dirty() local_unnamed_addr #0 !prof !400 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %17, %6 ], [ %4, %0 ]
  %8 = load ptr, ptr @df, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !452
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !379
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !374
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !489

19:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_live_verify_transfer_functions() local_unnamed_addr #0 !prof !400 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = icmp eq ptr %1, null
  br i1 %2, label %65, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @df_grow_insn_info() #17
  %7 = load ptr, ptr @cfun, align 8, !tbaa !374
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !395
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %3, %51
  %13 = phi ptr [ %53, %51 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !379
  %16 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %15) #18
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %15) #17
  %18 = icmp eq ptr %16, null
  %19 = load ptr, ptr @df, align 8, !tbaa !374
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !374
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !452
  %24 = load i32, ptr %14, align 8, !tbaa !379
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %24) #17
  %26 = icmp eq i32 %25, 0
  br i1 %18, label %43, label %27

27:                                               ; preds = %12
  br i1 %26, label %28, label %46

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !490
  tail call void @bitmap_copy(ptr noundef %4, ptr noundef %30) #17
  %31 = load ptr, ptr %16, align 8, !tbaa !492
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %31) #17
  %32 = load ptr, ptr %29, align 8, !tbaa !490
  tail call void @bitmap_clear(ptr noundef %32) #17
  %33 = load ptr, ptr %16, align 8, !tbaa !492
  tail call void @bitmap_clear(ptr noundef %33) #17
  %34 = load i32, ptr %14, align 8, !tbaa !379
  tail call fastcc void @df_live_bb_local_compute(i32 noundef %34) #18
  %35 = load ptr, ptr %29, align 8, !tbaa !490
  %36 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %35) #17
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1863, ptr noundef nonnull @.str.1) #17
  br label %39

39:                                               ; preds = %28, %38
  %40 = load ptr, ptr %16, align 8, !tbaa !492
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
  %47 = load i32, ptr %14, align 8, !tbaa !379
  %48 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %47) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #17
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !374
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %12, !llvm.loop !493

55:                                               ; preds = %51, %3
  %56 = load ptr, ptr @df, align 8, !tbaa !374
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !374
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !452
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

; Function Attrs: optsize
declare void @df_grow_insn_info() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_live_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !494 !PGOFuncName !495 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !459
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %0) #18
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !403
  %11 = load ptr, ptr %10, align 8, !tbaa !403
  %12 = icmp eq ptr %11, null
  br i1 %12, label %82, label %13, !prof !496

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %77
  %16 = phi ptr [ %11, %13 ], [ %80, %77 ]
  %17 = phi i32 [ 0, %13 ], [ %78, %77 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !403
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !497
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !403
  %23 = icmp eq ptr %16, %22
  br i1 %23, label %82, label %24, !prof !498

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !403
  %27 = load ptr, ptr @df, align 8, !tbaa !374
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !444
  %30 = zext i32 %26 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !374
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42, !prof !499

34:                                               ; preds = %24
  %35 = load i32, ptr %16, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %40, !prof !500

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1474, ptr noundef nonnull @.str.1) #17
  br label %40

40:                                               ; preds = %34, %39
  %41 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %16) #17
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi ptr [ %32, %24 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 5
  store i32 %17, ptr %44, align 8, !tbaa !501
  %45 = load i32, ptr %16, align 8
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -7
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %77, !prof !502

49:                                               ; preds = %42
  %50 = add nsw i32 %17, 1
  %51 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !445
  %53 = load ptr, ptr %52, align 8, !tbaa !374
  %54 = icmp eq ptr %53, null
  br i1 %54, label %77, label %55, !prof !503

55:                                               ; preds = %49, %73
  %56 = phi ptr [ %75, %73 ], [ %53, %49 ]
  %57 = phi ptr [ %74, %73 ], [ %52, %49 ]
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %56, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !403
  %60 = load i32, ptr %56, align 8
  %61 = and i32 %60, 1114112
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69, !prof !504

63:                                               ; preds = %55
  %64 = and i32 %60, 8388608
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69, !prof !505

66:                                               ; preds = %63
  %67 = and i32 %60, 4194304
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73, !prof !506

69:                                               ; preds = %66, %63, %55
  %70 = phi ptr [ %14, %55 ], [ %8, %63 ], [ %14, %66 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !374
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %59) #17
  br label %73

73:                                               ; preds = %69, %66
  %74 = getelementptr inbounds ptr, ptr %57, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !374
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %55, !prof !507, !llvm.loop !508

77:                                               ; preds = %73, %49, %42
  %78 = phi i32 [ %17, %42 ], [ %50, %49 ], [ %50, %73 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !403
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %15, !prof !509, !llvm.loop !510

82:                                               ; preds = %15, %77, %1
  %83 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %84 = load ptr, ptr %83, align 8, !tbaa !374
  %85 = icmp eq ptr %84, null
  br i1 %85, label %98, label %86, !prof !511

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  br label %88

88:                                               ; preds = %86, %88
  %89 = phi ptr [ %84, %86 ], [ %96, %88 ]
  %90 = phi ptr [ %83, %86 ], [ %95, %88 ]
  %91 = load ptr, ptr %87, align 8, !tbaa !490
  %92 = getelementptr inbounds %struct.df_base_ref, ptr %89, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !403
  %94 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %91, i32 noundef %93) #17
  %95 = getelementptr inbounds ptr, ptr %90, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !374
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %88, !prof !462, !llvm.loop !512

98:                                               ; preds = %88, %82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @df_chain_create(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !513 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !403
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 4
  %7 = load ptr, ptr %6, align 8, !tbaa !374
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !514
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #17
  store ptr %10, ptr %3, align 8, !tbaa !403
  %11 = getelementptr inbounds %struct.df_link, ptr %10, i64 0, i32 1
  store ptr %4, ptr %11, align 8, !tbaa !406
  store ptr %1, ptr %10, align 8, !tbaa !401
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_unlink(ptr noundef %0) local_unnamed_addr #0 !prof !400 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !403
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.df_link, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !406
  %9 = load ptr, ptr %6, align 8, !tbaa !401
  tail call fastcc void @df_chain_unlink_1(ptr noundef %9, ptr noundef %0) #18
  %10 = load ptr, ptr @df, align 8, !tbaa !374
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 4
  %12 = load ptr, ptr %11, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !514
  tail call void @pool_free(ptr noundef %14, ptr noundef nonnull %6) #17
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %5, !llvm.loop !515

16:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !403
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_unlink_1(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !400 !PGOFuncName !516 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !403
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !401
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %25

9:                                                ; preds = %25
  %10 = load ptr, ptr %28, align 8, !tbaa !401
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %25, !llvm.loop !517

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %4, %6 ], [ %28, %9 ]
  %14 = phi ptr [ null, %6 ], [ %26, %9 ]
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.df_link, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !406
  %18 = getelementptr inbounds %struct.df_link, ptr %14, i64 0, i32 1
  %19 = select i1 %15, ptr %3, ptr %18
  store ptr %17, ptr %19, align 8, !tbaa !403
  %20 = load ptr, ptr @df, align 8, !tbaa !374
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1, i64 4
  %22 = load ptr, ptr %21, align 8, !tbaa !374
  %23 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !514
  tail call void @pool_free(ptr noundef %24, ptr noundef nonnull %13) #17
  br label %30

25:                                               ; preds = %6, %9
  %26 = phi ptr [ %28, %9 ], [ %4, %6 ]
  %27 = getelementptr inbounds %struct.df_link, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !403
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !517

30:                                               ; preds = %25, %2, %12
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_copy(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !400 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !401
  %7 = tail call ptr @df_chain_create(ptr noundef %0, ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.df_link, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !406
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !518

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_add_problem(i32 noundef %0) local_unnamed_addr #0 !prof !451 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_CHAIN) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 4
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 6
  store i32 %0, ptr %5, align 8, !tbaa !519
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !374
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1, i64 4
  %9 = load ptr, ptr %8, align 8, !tbaa !374
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !452
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_byte_lr_get_regno_start(i32 noundef %0) local_unnamed_addr #2 !prof !400 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !520
  %7 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !521
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !410
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_byte_lr_get_regno_len(i32 noundef %0) local_unnamed_addr #2 !prof !400 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !520
  %7 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !525
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !410
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_add_problem() local_unnamed_addr #0 !prof !400 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_BYTE_LR) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !452
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !400 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !403
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !444
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !445
  %15 = load ptr, ptr %14, align 8, !tbaa !374
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !374
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !520
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
  %32 = load i32, ptr %31, align 8, !tbaa !403
  %33 = load ptr, ptr %22, align 8, !tbaa !521
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !410
  %37 = load ptr, ptr %23, align 8, !tbaa !525
  %38 = getelementptr inbounds i32, ptr %37, i64 %34
  %39 = load i32, ptr %38, align 4, !tbaa !410
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
  %53 = load ptr, ptr %52, align 8, !tbaa !374
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24, !llvm.loop !526

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @df_compute_accessed_bytes(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_uses(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !400 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !403
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !444
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !477
  %15 = load ptr, ptr %14, align 8, !tbaa !374
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !374
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !520
  %22 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 3
  %23 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 4
  br label %24

24:                                               ; preds = %17, %46
  %25 = phi ptr [ %15, %17 ], [ %48, %46 ]
  %26 = phi ptr [ %14, %17 ], [ %47, %46 ]
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %25, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !403
  %29 = load ptr, ptr %22, align 8, !tbaa !521
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i32, ptr %29, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !410
  %33 = load ptr, ptr %23, align 8, !tbaa !525
  %34 = getelementptr inbounds i32, ptr %33, i64 %30
  %35 = load i32, ptr %34, align 4, !tbaa !410
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
  %48 = load ptr, ptr %47, align 8, !tbaa !374
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %24, !llvm.loop !527

50:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_artificial_refs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !400 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @df, align 8, !tbaa !374
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 5
  %11 = load ptr, ptr %10, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.dataflow, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !520
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
  %24 = load i32, ptr %23, align 8, !tbaa !403
  %25 = load ptr, ptr %14, align 8, !tbaa !521
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !410
  %29 = load ptr, ptr %15, align 8, !tbaa !525
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = load i32, ptr %30, align 4, !tbaa !410
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %28, i32 noundef %31) #17
  br label %32

32:                                               ; preds = %22, %16
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !374
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !528

36:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_artificial_refs_at_end(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !400 {
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !520
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !379
  %10 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %9) #18
  %11 = load ptr, ptr %10, align 8, !tbaa !374
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
  %24 = load i32, ptr %23, align 8, !tbaa !403
  %25 = load ptr, ptr %14, align 8, !tbaa !521
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !410
  %29 = load ptr, ptr %15, align 8, !tbaa !525
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = load i32, ptr %30, align 4, !tbaa !410
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %28, i32 noundef %31) #17
  br label %32

32:                                               ; preds = %22, %16
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !374
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !529

36:                                               ; preds = %32, %2
  %37 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %9) #18
  %38 = load ptr, ptr %37, align 8, !tbaa !374
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
  %51 = load i32, ptr %50, align 8, !tbaa !403
  %52 = load ptr, ptr %41, align 8, !tbaa !521
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i32, ptr %52, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !410
  %56 = load ptr, ptr %42, align 8, !tbaa !525
  %57 = getelementptr inbounds i32, ptr %56, i64 %53
  %58 = load i32, ptr %57, align 4, !tbaa !410
  tail call void @bitmap_set_range(ptr noundef %1, i32 noundef %55, i32 noundef %58) #17
  br label %59

59:                                               ; preds = %49, %43
  %60 = getelementptr inbounds ptr, ptr %45, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !374
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %43, !llvm.loop !530

63:                                               ; preds = %59, %36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #2 !prof !531 !PGOFuncName !532 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !533
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_note_add_problem() local_unnamed_addr #0 !prof !534 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_NOTE) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_find_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !535 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !403
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !444
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !445
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !536

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 1114112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !537

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !403
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !prof !538, !llvm.loop !539

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !540 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !403
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !444
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !445
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !541

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 1114112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !542

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !403
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !prof !543, !llvm.loop !544

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_uses(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !545 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %28, label %6, !prof !546

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !403
  %9 = load ptr, ptr @df, align 8, !tbaa !374
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !444
  %12 = zext i32 %8 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df_insn_info, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !477
  %17 = load ptr, ptr %16, align 8, !tbaa !374
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !prof !547

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %6 ]
  %21 = phi ptr [ %25, %19 ], [ %16, %6 ]
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !403
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %23) #17
  %25 = getelementptr inbounds ptr, ptr %21, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !374
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !prof !548, !llvm.loop !549

28:                                               ; preds = %19, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_initialize_backwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !550 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !551

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !403
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !374
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !552, !llvm.loop !553

22:                                               ; preds = %18, %2
  %23 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %4) #18
  %24 = load ptr, ptr %23, align 8, !tbaa !374
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26, !prof !554

26:                                               ; preds = %22, %36
  %27 = phi ptr [ %38, %36 ], [ %24, %22 ]
  %28 = phi ptr [ %37, %36 ], [ %23, %22 ]
  %29 = load i32, ptr %27, align 8
  %30 = and i32 %29, 131072
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36, !prof !555

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %27, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !403
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %34) #17
  br label %36

36:                                               ; preds = %32, %26
  %37 = getelementptr inbounds ptr, ptr %28, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !374
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %26, !prof !556, !llvm.loop !557

40:                                               ; preds = %36, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_one_insn_backwards(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !558 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -11
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %9, label %8, !prof !559

8:                                                ; preds = %3
  tail call void @df_simulate_defs(ptr noundef nonnull %1, ptr noundef %2) #18
  tail call void @df_simulate_uses(ptr noundef nonnull %1, ptr noundef %2) #18
  tail call fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %2) #18
  br label %9

9:                                                ; preds = %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !419 !PGOFuncName !560 {
  %3 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %0) #18, !range !412
  %4 = icmp eq i8 %3, 0
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  br i1 %4, label %8, label %6, !prof !561

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 15
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 14
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !374
  %13 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %1, ptr noundef %12) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_finalize_backwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !562 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !563

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !403
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !374
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !552, !llvm.loop !564

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_initialize_forwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !565 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !566

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !567

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !403
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !374
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !568, !llvm.loop !569

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_one_insn_forwards(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !570 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %52, !prof !571

8:                                                ; preds = %3
  %9 = load ptr, ptr @df, align 8, !tbaa !374
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 6
  %11 = load ptr, ptr %10, align 8, !tbaa !374
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !572

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3935, ptr noundef nonnull @.str.1) #17
  br label %14

14:                                               ; preds = %8, %13
  tail call void @df_simulate_find_defs(ptr noundef nonnull %1, ptr noundef %2) #18
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !403
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18, !prof !573

18:                                               ; preds = %14, %47
  %19 = phi ptr [ %49, %47 ], [ %16, %14 ]
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %47 [
    i8 1, label %23
    i8 6, label %23
  ], !prof !574

23:                                               ; preds = %18, %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !403
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef %25) #18
  %27 = icmp slt i32 %26, 53
  br i1 %27, label %28, label %45, !prof !575

28:                                               ; preds = %23
  %29 = sext i32 %26 to i64
  %30 = load i32, ptr %25, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %29, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !403
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %47, label %37, !prof !576

37:                                               ; preds = %28
  %38 = zext i8 %35 to i32
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i32 [ %41, %39 ], [ %38, %37 ]
  %41 = add nsw i32 %40, -1
  %42 = add nsw i32 %41, %26
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %42) #17
  %44 = icmp ugt i32 %40, 1
  br i1 %44, label %39, label %47, !prof !576, !llvm.loop !577

45:                                               ; preds = %23
  %46 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %26) #17
  br label %47

47:                                               ; preds = %39, %28, %45, %18
  %48 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !403
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %18, !prof !578, !llvm.loop !579

51:                                               ; preds = %47, %14
  tail call fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %2) #18
  br label %52

52:                                               ; preds = %3, %51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !580 !PGOFuncName !581 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !403
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_simulate_artificial_defs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !400 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !374
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
  %16 = load i32, ptr %15, align 8, !tbaa !403
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
  %25 = load ptr, ptr %24, align 8, !tbaa !374
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !582

27:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_simulate_one_insn(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !prof !400 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !403
  %6 = load ptr, ptr @df, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !444
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !445
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %3, %38
  %17 = phi ptr [ %40, %38 ], [ %14, %3 ]
  %18 = phi ptr [ %39, %38 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !403
  %21 = load ptr, ptr @df, align 8, !tbaa !374
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
  %33 = load i32, ptr %32, align 4, !tbaa !403
  br i1 %31, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %33) #17
  br label %38

36:                                               ; preds = %28
  %37 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %33) #17
  br label %38

38:                                               ; preds = %34, %36, %16
  %39 = getelementptr inbounds ptr, ptr %18, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !374
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %16, !llvm.loop !583

42:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_add_problem() local_unnamed_addr #0 !prof !488 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_MD) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !421 !PGOFuncName !584 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !585

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !424 !PGOFuncName !586 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !426

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !587 !PGOFuncName !588 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !589

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !590
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !592 !PGOFuncName !593 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !594

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !374
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !424 !PGOFuncName !595 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_alloc(ptr nocapture noundef readonly %0) #0 !prof !451 !PGOFuncName !596 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 3
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !514
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !597

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 40, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !514
  %16 = load ptr, ptr %13, align 8, !tbaa !374
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !520
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !597

22:                                               ; preds = %17
  %23 = load ptr, ptr %20, align 8, !tbaa !598
  tail call void @bitmap_clear(ptr noundef %23) #17
  %24 = getelementptr inbounds %struct.df_rd_problem_data, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !600
  tail call void @bitmap_clear(ptr noundef %25) #17
  br label %36

26:                                               ; preds = %17
  %27 = tail call ptr @xmalloc(i64 noundef 120) #17
  %28 = load ptr, ptr @df, align 8, !tbaa !374
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !374
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 5
  store ptr %27, ptr %31, align 8, !tbaa !520
  %32 = getelementptr inbounds %struct.df_rd_problem_data, ptr %27, i64 0, i32 2
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %32) #17
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %32) #17
  store ptr %33, ptr %27, align 8, !tbaa !598
  %34 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %32) #17
  %35 = getelementptr inbounds %struct.df_rd_problem_data, ptr %27, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !600
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi ptr [ %20, %22 ], [ %27, %26 ]
  %38 = load ptr, ptr @df, align 8, !tbaa !374
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1, i64 3
  %40 = load ptr, ptr %39, align 8, !tbaa !374
  tail call void @df_grow_bb_info(ptr noundef %40) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43, !prof !601

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.df_rd_problem_data, ptr %37, i64 0, i32 2
  br label %45

45:                                               ; preds = %43, %71
  %46 = load i32, ptr %2, align 4, !tbaa !410
  %47 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %46) #18
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49, !prof !602

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !603
  tail call void @bitmap_clear(ptr noundef %50) #17
  %51 = getelementptr inbounds %struct.df_rd_bb_info, ptr %47, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !605
  tail call void @bitmap_clear(ptr noundef %52) #17
  %53 = getelementptr inbounds %struct.df_rd_bb_info, ptr %47, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !606
  tail call void @bitmap_clear(ptr noundef %54) #17
  br label %71

55:                                               ; preds = %45
  %56 = load ptr, ptr @df, align 8, !tbaa !374
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 3
  %58 = load ptr, ptr %57, align 8, !tbaa !374
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !514
  %61 = tail call ptr @pool_alloc(ptr noundef %60) #17
  tail call fastcc void @df_rd_set_bb_info(i32 noundef %46, ptr noundef %61) #18
  %62 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  store ptr %62, ptr %61, align 8, !tbaa !603
  %63 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %64 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !605
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %66 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !606
  %67 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %68 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 3
  store ptr %67, ptr %68, align 8, !tbaa !607
  %69 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %70 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 4
  store ptr %69, ptr %70, align 8, !tbaa !608
  br label %71

71:                                               ; preds = %55, %49
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %45, !prof !609, !llvm.loop !610

74:                                               ; preds = %71, %36
  %75 = load ptr, ptr @df, align 8, !tbaa !374
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !374
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 9
  store i8 1, ptr %78, align 2, !tbaa !611
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !612 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !603
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  store ptr null, ptr %1, align 8, !tbaa !603
  %6 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !605
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %6, align 8, !tbaa !605
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !606
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !606
  %10 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !607
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !607
  %12 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !608
  tail call void @bitmap_obstack_free(ptr noundef %13) #17
  store ptr null, ptr %12, align 8, !tbaa !608
  %14 = load ptr, ptr @df, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 3
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !514
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_local_compute(ptr nocapture noundef readonly %0) #0 !prof !451 !PGOFuncName !613 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !374
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !520
  %10 = load ptr, ptr %9, align 8, !tbaa !598
  %11 = getelementptr inbounds %struct.df_rd_problem_data, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !600
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  store ptr %13, ptr @seen_in_block, align 8, !tbaa !374
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  store ptr %14, ptr @seen_in_insn, align 8, !tbaa !374
  tail call void @df_maybe_reorganize_def_refs(i32 noundef 3) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17, !prof !601

17:                                               ; preds = %1, %17
  %18 = load i32, ptr %2, align 4, !tbaa !410
  tail call fastcc void @df_rd_bb_local_compute(i32 noundef %18) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %17, !prof !609, !llvm.loop !614

21:                                               ; preds = %17, %1
  %22 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !374
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %22, i32 noundef 0, ptr noundef nonnull %4) #18
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !412
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %44, label %25, !prof !601

25:                                               ; preds = %21, %41
  %26 = load ptr, ptr @df, align 8, !tbaa !374
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 3, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !436
  %29 = load i32, ptr %4, align 4, !tbaa !410
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !410
  %33 = icmp ugt i32 %32, 32
  br i1 %33, label %34, label %36, !prof !615

34:                                               ; preds = %25
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef %29) #17
  br label %41

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 3, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !433
  %39 = getelementptr inbounds i32, ptr %38, i64 %30
  %40 = load i32, ptr %39, align 4, !tbaa !410
  tail call void @bitmap_set_range(ptr noundef %12, i32 noundef %40, i32 noundef %32) #17
  br label %41

41:                                               ; preds = %34, %36
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %42 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !412
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %25, !prof !616, !llvm.loop !617

44:                                               ; preds = %41, %21
  %45 = load ptr, ptr @seen_in_block, align 8, !tbaa !374
  tail call void @bitmap_obstack_free(ptr noundef %45) #17
  store ptr null, ptr @seen_in_block, align 8, !tbaa !374
  %46 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  tail call void @bitmap_obstack_free(ptr noundef %46) #17
  store ptr null, ptr @seen_in_insn, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_init_solution(ptr nocapture noundef readonly %0) #0 !prof !451 !PGOFuncName !618 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !601

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !608
  %11 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !606
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !607
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !prof !609, !llvm.loop !619

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @df_worklist_dataflow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !620 !PGOFuncName !621 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !417
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !379
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !607
  %11 = load ptr, ptr %0, align 8, !tbaa !413
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !379
  %14 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %13) #18
  %15 = getelementptr inbounds %struct.df_rd_bb_info, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !608
  %17 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !415
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %55, !prof !622

21:                                               ; preds = %1
  %22 = and i32 %18, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24, !prof !622

24:                                               ; preds = %21
  %25 = load ptr, ptr @df, align 8, !tbaa !374
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 1, i64 3
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !520
  %30 = load ptr, ptr %29, align 8, !tbaa !598
  %31 = getelementptr inbounds %struct.df_rd_problem_data, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !600
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  tail call void @bitmap_copy(ptr noundef %33, ptr noundef %16) #17
  %34 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %33, ptr noundef %32) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %30, i32 noundef 0, ptr noundef nonnull %3) #18
  %35 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !412
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %24, %37
  %38 = load ptr, ptr @df, align 8, !tbaa !374
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 3, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !433
  %41 = load i32, ptr %3, align 4, !tbaa !410
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !410
  %45 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 3, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !436
  %47 = getelementptr inbounds i32, ptr %46, i64 %42
  %48 = load i32, ptr %47, align 4, !tbaa !410
  tail call void @bitmap_clear_range(ptr noundef %33, i32 noundef %44, i32 noundef %48) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !412
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %37, !llvm.loop !623

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
define internal zeroext i8 @df_rd_transfer_function(i32 noundef %0) #0 !prof !624 !PGOFuncName !625 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %5 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !607
  %7 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !608
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !606
  %11 = load ptr, ptr %4, align 8, !tbaa !603
  %12 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !605
  %14 = load ptr, ptr %13, align 8, !tbaa !626
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !628

16:                                               ; preds = %1
  %17 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %8, ptr noundef %10, ptr noundef %6, ptr noundef %11) #17
  br label %49

18:                                               ; preds = %1
  %19 = load ptr, ptr @df, align 8, !tbaa !374
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !374
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !520
  %24 = getelementptr inbounds %struct.df_rd_problem_data, ptr %23, i64 0, i32 2
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %24) #17
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %6) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %2) #18
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28, !prof !629

28:                                               ; preds = %18, %28
  %29 = load ptr, ptr @df, align 8, !tbaa !374
  %30 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !433
  %32 = load i32, ptr %2, align 4, !tbaa !410
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !410
  %36 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !436
  %38 = getelementptr inbounds i32, ptr %37, i64 %33
  %39 = load i32, ptr %38, align 4, !tbaa !410
  tail call void @bitmap_clear_range(ptr noundef %25, i32 noundef %35, i32 noundef %39) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %28, !prof !630, !llvm.loop !631

42:                                               ; preds = %28, %18
  %43 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %25, ptr noundef %11) #17
  %44 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %25, ptr noundef %10) #17
  %45 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %25, ptr noundef %8) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48, !prof !632

47:                                               ; preds = %42
  tail call void @bitmap_obstack_free(ptr noundef %8) #17
  store ptr %25, ptr %7, align 8, !tbaa !608
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
define internal void @df_rd_free() #0 !prof !451 !PGOFuncName !633 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 3
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !520
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7, !prof !634

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !514
  tail call void @free_alloc_pool(ptr noundef %9) #17
  %10 = getelementptr inbounds %struct.df_rd_problem_data, ptr %5, i64 0, i32 2
  tail call void @bitmap_obstack_release(ptr noundef nonnull %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !385
  %15 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !388
  tail call void @free(ptr noundef %16) #18
  %17 = load ptr, ptr @df, align 8, !tbaa !374
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !374
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !520
  tail call void @free(ptr noundef %21) #18
  %22 = load ptr, ptr @df, align 8, !tbaa !374
  %23 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 1, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !374
  br label %25

25:                                               ; preds = %7, %0
  %26 = phi ptr [ %24, %7 ], [ %3, %0 ]
  tail call void @free(ptr noundef %26) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_start_dump(ptr noundef %0) #0 !prof !400 !PGOFuncName !635 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !636
  %7 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !388
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !520
  %13 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %0)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 22, i64 1, ptr %0)
  %15 = load ptr, ptr %12, align 8, !tbaa !598
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %16 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %0)
  %17 = getelementptr inbounds %struct.df_rd_problem_data, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !600
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %10
  %21 = zext i32 %6 to i64
  %22 = load ptr, ptr @df, align 8, !tbaa !374
  br label %23

23:                                               ; preds = %20, %39
  %24 = phi ptr [ %22, %20 ], [ %40, %39 ]
  %25 = phi i64 [ 0, %20 ], [ %41, %39 ]
  %26 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 3, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !436
  %28 = getelementptr inbounds i32, ptr %27, i64 %25
  %29 = load i32, ptr %28, align 4, !tbaa !410
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 3, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !433
  %34 = getelementptr inbounds i32, ptr %33, i64 %25
  %35 = load i32, ptr %34, align 4, !tbaa !410
  %36 = trunc i64 %25 to i32
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %36, i32 noundef %35, i32 noundef %29) #18
  %38 = load ptr, ptr @df, align 8, !tbaa !374
  br label %39

39:                                               ; preds = %23, %31
  %40 = phi ptr [ %24, %23 ], [ %38, %31 ]
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, %21
  br i1 %42, label %43, label %23, !llvm.loop !637

43:                                               ; preds = %39, %10
  %44 = tail call i32 @fputc(i32 10, ptr %0)
  br label %45

45:                                               ; preds = %1, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !638 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !607
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @bitmap_count_bits(ptr noundef nonnull %9) #17
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %13) #18
  %15 = load ptr, ptr %8, align 8, !tbaa !607
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %16 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !606
  %18 = tail call i64 @bitmap_count_bits(ptr noundef %17) #17
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %19) #18
  %21 = load ptr, ptr %16, align 8, !tbaa !606
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %22 = load ptr, ptr %5, align 8, !tbaa !603
  %23 = tail call i64 @bitmap_count_bits(ptr noundef %22) #17
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %24) #18
  %26 = load ptr, ptr %5, align 8, !tbaa !603
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  br label %27

27:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !639 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !608
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @bitmap_count_bits(ptr noundef nonnull %9) #17
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %13) #18
  %15 = load ptr, ptr %8, align 8, !tbaa !608
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  br label %16

16:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 !prof !640 !PGOFuncName !641 {
  %5 = load ptr, ptr %1, align 8, !tbaa !626
  store ptr %5, ptr %0, align 8, !tbaa !642
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !644
  %7 = icmp eq ptr %5, null
  %8 = lshr i32 %2, 7
  br i1 %7, label %9, label %11, !prof !645

9:                                                ; preds = %16, %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !642
  %10 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !646
  br label %19

11:                                               ; preds = %4, %16
  %12 = phi ptr [ %17, %16 ], [ %5, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !646
  %15 = icmp ult i32 %14, %8
  br i1 %15, label %16, label %19, !prof !648

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !649
  store ptr %17, ptr %0, align 8, !tbaa !642
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %11, !prof !650

19:                                               ; preds = %11, %9
  %20 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %21 = phi ptr [ @bitmap_zero_bits, %9 ], [ %12, %11 ]
  %22 = icmp eq i32 %20, %8
  %23 = shl i32 %20, 7
  %24 = select i1 %22, i32 %2, i32 %23, !prof !651
  %25 = lshr i32 %24, 6
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !652
  %28 = zext nneg i32 %26 to i64
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !653
  %31 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %32 = and i32 %24, 63
  %33 = zext nneg i32 %32 to i64
  %34 = lshr i64 %30, %33
  store i64 %34, ptr %31, align 8, !tbaa !654
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = add i32 %24, %36
  store i32 %37, ptr %3, align 4, !tbaa !410
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !655 !PGOFuncName !656 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !654
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !657

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !658

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !410
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !659, !llvm.loop !660

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !410
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !410
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !652
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !642
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !652
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !661

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !653
  store i64 %35, ptr %3, align 8, !tbaa !654
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !662

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !410
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !410
  %40 = load i32, ptr %23, align 8, !tbaa !652
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !652
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !663, !llvm.loop !664

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !649
  store ptr %44, ptr %0, align 8, !tbaa !642
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !665

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !646
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !410
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !654
  store i32 %16, ptr %1, align 4, !tbaa !410
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_rd_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !666 !PGOFuncName !667 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !385
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !668

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !388
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !430 !PGOFuncName !669 {
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 3
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !670

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !385
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16, !prof !602

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !374
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !374
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !388
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !374
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !671 !PGOFuncName !672 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !654
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !654
  %6 = load i32, ptr %1, align 4, !tbaa !410
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !410
  ret void
}

; Function Attrs: optsize
declare void @df_maybe_reorganize_def_refs(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !430 !PGOFuncName !673 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !459
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  %9 = load ptr, ptr @seen_in_block, align 8, !tbaa !374
  tail call void @bitmap_clear(ptr noundef %9) #17
  %10 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  tail call void @bitmap_clear(ptr noundef %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18, !prof !602

16:                                               ; preds = %1
  %17 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_rd_bb_local_compute_process_def(ptr noundef %8, ptr noundef %17, i32 noundef 0) #18
  br label %18

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !403
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !403
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24, !prof !674

24:                                               ; preds = %18, %51
  %25 = phi ptr [ %53, %51 ], [ %22, %18 ]
  %26 = load ptr, ptr %19, align 8, !tbaa !403
  %27 = load ptr, ptr %26, align 8, !tbaa !469
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !403
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %55, label %31, !prof !675

31:                                               ; preds = %24
  %32 = load i32, ptr %25, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %51, !prof !676

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !403
  %39 = load ptr, ptr @df, align 8, !tbaa !374
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !444
  %42 = zext i32 %38 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !374
  %45 = getelementptr inbounds %struct.df_insn_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !445
  tail call fastcc void @df_rd_bb_local_compute_process_def(ptr noundef %8, ptr noundef %46, i32 noundef 0) #18
  %47 = load ptr, ptr @seen_in_block, align 8, !tbaa !374
  %48 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  %49 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %47, ptr noundef %48) #17
  %50 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  tail call void @bitmap_clear(ptr noundef %50) #17
  br label %51

51:                                               ; preds = %31, %36
  %52 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !403
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24, !prof !677, !llvm.loop !678

55:                                               ; preds = %24, %51, %18
  %56 = load ptr, ptr @df, align 8, !tbaa !374
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 27
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63, !prof !602

61:                                               ; preds = %55
  %62 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_rd_bb_local_compute_process_def(ptr noundef %8, ptr noundef %62, i32 noundef 2) #18
  br label %63

63:                                               ; preds = %61, %55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !679 !PGOFuncName !680 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_bb_local_compute_process_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !681 !PGOFuncName !682 {
  %4 = load ptr, ptr %1, align 8, !tbaa !374
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6, !prof !683

6:                                                ; preds = %3, %67
  %7 = phi ptr [ %69, %67 ], [ %4, %3 ]
  %8 = phi ptr [ %68, %67 ], [ %1, %3 ]
  %9 = load i32, ptr %7, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %67, !prof !684

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !403
  %16 = load ptr, ptr @df, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !433
  %19 = zext i32 %15 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !410
  %22 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 3, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !436
  %24 = getelementptr inbounds i32, ptr %23, i64 %19
  %25 = load i32, ptr %24, align 4, !tbaa !410
  %26 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 27
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30, !prof !685

30:                                               ; preds = %13
  %31 = icmp ugt i32 %15, 52
  br i1 %31, label %32, label %67

32:                                               ; preds = %30, %13
  %33 = load ptr, ptr @seen_in_block, align 8, !tbaa !374
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %15) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67, !prof !686

36:                                               ; preds = %32
  %37 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %37, i32 noundef %15) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55, !prof !687

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 8
  %42 = and i32 %41, 5308416
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55, !prof !688

44:                                               ; preds = %40
  %45 = icmp ugt i32 %25, 32
  br i1 %45, label %46, label %50, !prof !689

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.df_rd_bb_info, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !605
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %15) #17
  br label %52

50:                                               ; preds = %44
  %51 = load ptr, ptr %0, align 8, !tbaa !603
  tail call void @bitmap_set_range(ptr noundef %51, i32 noundef %21, i32 noundef %25) #17
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.df_rd_bb_info, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !606
  tail call void @bitmap_clear_range(ptr noundef %54, i32 noundef %21, i32 noundef %25) #17
  br label %55

55:                                               ; preds = %52, %40, %36
  %56 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %56, i32 noundef %15) #17
  %58 = load i32, ptr %7, align 8
  %59 = and i32 %58, 12582912
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67, !prof !690

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.df_rd_bb_info, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !606
  %64 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !403
  %66 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %63, i32 noundef %65) #17
  br label %67

67:                                               ; preds = %30, %55, %61, %32, %6
  %68 = getelementptr inbounds ptr, ptr %8, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !374
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %6, !prof !691, !llvm.loop !692

71:                                               ; preds = %67, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_and_compl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal void @df_lr_alloc(ptr nocapture readnone %0) #0 !prof !693 !PGOFuncName !694 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !514
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !695

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.22, i64 noundef 32, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !514
  %16 = load ptr, ptr %13, align 8, !tbaa !374
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  tail call void @df_grow_bb_info(ptr noundef %18) #18
  %19 = load ptr, ptr @df, align 8, !tbaa !374
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !374
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !452
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %23, i32 noundef 0, ptr noundef nonnull %2) #18
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %55, label %26, !prof !696

26:                                               ; preds = %17, %48
  %27 = load i32, ptr %2, align 4, !tbaa !410
  %28 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %27) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !697

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !453
  tail call void @bitmap_clear(ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !455
  tail call void @bitmap_clear(ptr noundef %33) #17
  br label %48

34:                                               ; preds = %26
  %35 = load ptr, ptr @df, align 8, !tbaa !374
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 1, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !374
  %38 = getelementptr inbounds %struct.dataflow, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !514
  %40 = tail call ptr @pool_alloc(ptr noundef %39) #17
  tail call fastcc void @df_lr_set_bb_info(i32 noundef %27, ptr noundef %40) #18
  %41 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !455
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %43, ptr %40, align 8, !tbaa !453
  %44 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %45 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !698
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %47 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !699
  br label %48

48:                                               ; preds = %34, %30
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %26, !prof !700, !llvm.loop !701

51:                                               ; preds = %48
  %52 = load ptr, ptr @df, align 8, !tbaa !374
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !374
  br label %55

55:                                               ; preds = %51, %17
  %56 = phi ptr [ %54, %51 ], [ %21, %17 ]
  %57 = getelementptr inbounds %struct.dataflow, ptr %56, i64 0, i32 9
  store i8 0, ptr %57, align 2, !tbaa !611
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_reset(ptr nocapture noundef readonly %0) #0 !prof !400 !PGOFuncName !702 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !698
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !699
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !703

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !704 !PGOFuncName !705 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4, !prof !706

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !455
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !455
  %7 = load ptr, ptr %1, align 8, !tbaa !453
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !453
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !698
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !698
  %10 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !699
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !699
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !514
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_local_compute(ptr nocapture readnone %0) #0 !prof !693 !PGOFuncName !707 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !708
  tail call void @bitmap_clear(ptr noundef %6) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !374
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !708
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef 7) #17
  %11 = load i32, ptr @reload_completed, align 4, !tbaa !410
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %51, !prof !709

13:                                               ; preds = %1
  %14 = load ptr, ptr @df, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !708
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef 20) #17
  %18 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !403
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20, !prof !710

20:                                               ; preds = %13
  %21 = load ptr, ptr @df, align 8, !tbaa !374
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !708
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef 16) #17
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, ptr @flag_pic, align 4, !tbaa !410
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %51, label %28, !prof !711

28:                                               ; preds = %25
  %29 = load i32, ptr @reload_completed, align 4, !tbaa !410
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !711

31:                                               ; preds = %28
  %32 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !374
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #18
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %51, label %38

35:                                               ; preds = %28
  %36 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !403
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %51, label %45

38:                                               ; preds = %31
  %39 = zext i32 %33 to i64
  %40 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !403
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #18
  br label %45

45:                                               ; preds = %35, %43
  %46 = phi i32 [ %44, %43 ], [ 3, %35 ]
  %47 = load ptr, ptr @df, align 8, !tbaa !374
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !708
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %49, i32 noundef %46) #17
  br label %51

51:                                               ; preds = %38, %25, %31, %35, %45, %1
  %52 = load ptr, ptr @df, align 8, !tbaa !374
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !374
  %55 = getelementptr inbounds %struct.dataflow, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !452
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %56, i32 noundef 0, ptr noundef nonnull %2) #18
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %79, label %59, !prof !696

59:                                               ; preds = %51, %70
  %60 = load i32, ptr %2, align 4, !tbaa !410
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %69, !prof !712

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef 1) #18
  %64 = getelementptr inbounds %struct.df_lr_bb_info, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !455
  %66 = load ptr, ptr @df, align 8, !tbaa !374
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !713
  tail call void @bitmap_copy(ptr noundef %65, ptr noundef %68) #17
  br label %70

69:                                               ; preds = %59
  tail call fastcc void @df_lr_bb_local_compute(i32 noundef %60) #18
  br label %70

70:                                               ; preds = %62, %69
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %71 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %59, !prof !700, !llvm.loop !714

73:                                               ; preds = %70
  %74 = load ptr, ptr @df, align 8, !tbaa !374
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 1, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !374
  %77 = getelementptr inbounds %struct.dataflow, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !452
  br label %79

79:                                               ; preds = %73, %51
  %80 = phi ptr [ %78, %73 ], [ %56, %51 ]
  tail call void @bitmap_clear(ptr noundef %80) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_init(ptr nocapture noundef readonly %0) #0 !prof !693 !PGOFuncName !715 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !696

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !698
  %11 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !455
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !699
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !prof !716, !llvm.loop !717

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_confluence_0(ptr noundef readonly %0) #0 !prof !718 !PGOFuncName !719 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !720
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %17, label %8, !prof !721

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !379
  %11 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %10) #18
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !699
  %14 = load ptr, ptr @df, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !708
  tail call void @bitmap_copy(ptr noundef %13, ptr noundef %16) #17
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !722 !PGOFuncName !723 {
  %2 = load ptr, ptr %0, align 8, !tbaa !413
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !699
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !417
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !379
  %12 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %11) #18
  %13 = getelementptr inbounds %struct.df_lr_bb_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !698
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !415
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19, !prof !724

19:                                               ; preds = %1
  %20 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !374
  %21 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %7, ptr noundef %14, ptr noundef %20) #17
  br label %24

22:                                               ; preds = %1
  %23 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %7, ptr noundef %14) #17
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr @df, align 8, !tbaa !374
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !708
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %7, ptr noundef %27) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_lr_transfer_function(i32 noundef %0) #0 !prof !725 !PGOFuncName !726 {
  %2 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !698
  %5 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !699
  %7 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !455
  %9 = load ptr, ptr %2, align 8, !tbaa !453
  %10 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %4, ptr noundef %8, ptr noundef %6, ptr noundef %9) #17
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_finalize(ptr noundef %0) #0 !prof !693 !PGOFuncName !727 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 8
  store i8 0, ptr %5, align 1, !tbaa !728
  %6 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 27
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10, !prof !729

10:                                               ; preds = %1
  tail call void @run_fast_df_dce() #17
  %11 = load ptr, ptr @df, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !728
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18, !prof !730

17:                                               ; preds = %10, %1, %18
  ret void

18:                                               ; preds = %10
  %19 = tail call i32 @df_clear_flags(i32 noundef 1) #17
  tail call void @df_lr_alloc(ptr poison) #18
  tail call void @df_lr_local_compute(ptr poison) #18
  %20 = load ptr, ptr @df, align 8, !tbaa !374
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !374
  %23 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !731
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !732
  tail call void @df_worklist_dataflow(ptr noundef %22, ptr noundef %0, ptr noundef %24, i32 noundef %26) #17
  tail call void @df_lr_finalize(ptr noundef %0) #18
  %27 = tail call i32 @df_set_flags(i32 noundef 1) #17
  br label %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_free() #0 !prof !451 !PGOFuncName !733 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !388
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7, !prof !634

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !385
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11, !prof !601

11:                                               ; preds = %7, %25
  %12 = phi ptr [ %26, %25 ], [ %1, %7 ]
  %13 = phi i32 [ %27, %25 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !734

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !455
  tail call void @bitmap_obstack_free(ptr noundef %18) #17
  store ptr null, ptr %17, align 8, !tbaa !455
  %19 = load ptr, ptr %14, align 8, !tbaa !453
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %14, align 8, !tbaa !453
  %20 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !698
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !698
  %22 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !699
  tail call void @bitmap_obstack_free(ptr noundef %23) #17
  store ptr null, ptr %22, align 8, !tbaa !699
  %24 = load ptr, ptr @df, align 8, !tbaa !374
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi ptr [ %24, %16 ], [ %12, %11 ]
  %27 = add nuw i32 %13, 1
  %28 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !374
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !385
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %11, label %33, !prof !735, !llvm.loop !736

33:                                               ; preds = %25, %7
  %34 = phi ptr [ %3, %7 ], [ %29, %25 ]
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !514
  tail call void @free_alloc_pool(ptr noundef %36) #17
  %37 = load ptr, ptr @df, align 8, !tbaa !374
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !374
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 2
  store i32 0, ptr %40, align 8, !tbaa !385
  %41 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !388
  tail call void @free(ptr noundef %42) #18
  %43 = load ptr, ptr @df, align 8, !tbaa !374
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !374
  br label %46

46:                                               ; preds = %33, %0
  %47 = phi ptr [ %45, %33 ], [ %3, %0 ]
  %48 = getelementptr inbounds %struct.dataflow, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !452
  tail call void @bitmap_obstack_free(ptr noundef %49) #17
  %50 = load ptr, ptr @df, align 8, !tbaa !374
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 1, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !374
  %53 = getelementptr inbounds %struct.dataflow, ptr %52, i64 0, i32 4
  store ptr null, ptr %53, align 8, !tbaa !452
  %54 = load ptr, ptr %51, align 8, !tbaa !374
  tail call void @free(ptr noundef %54) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !737 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !698
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !698
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !520
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 13, i64 1, ptr %1)
  %22 = load ptr, ptr %18, align 8, !tbaa !738
  %23 = load i32, ptr %3, align 8, !tbaa !379
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !374
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #17
  br label %27

27:                                               ; preds = %20, %11
  %28 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr %1)
  %29 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !455
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %30) #17
  %31 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 12, i64 1, ptr %1)
  %32 = load ptr, ptr %5, align 8, !tbaa !453
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %32) #17
  br label %33

33:                                               ; preds = %2, %7, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !740 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !699
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !699
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !520
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %1)
  %22 = getelementptr inbounds %struct.df_lr_problem_data, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !741
  %24 = load i32, ptr %3, align 8, !tbaa !379
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %27) #17
  br label %28

28:                                               ; preds = %11, %20, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_verify_solution_start() #0 !prof !400 !PGOFuncName !742 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !728
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !520
  br label %67

9:                                                ; preds = %0
  store i8 1, ptr %4, align 1, !tbaa !728
  %10 = tail call ptr @xmalloc(i64 noundef 16) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 5
  store ptr %10, ptr %14, align 8, !tbaa !520
  %15 = load ptr, ptr @cfun, align 8, !tbaa !374
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !395
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !397
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xmalloc(i64 noundef %21) #17
  store ptr %22, ptr %10, align 8, !tbaa !738
  %23 = load ptr, ptr @cfun, align 8, !tbaa !374
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !395
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !397
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #17
  %31 = getelementptr inbounds %struct.df_lr_problem_data, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !741
  %32 = load ptr, ptr @cfun, align 8, !tbaa !374
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !395
  %35 = load ptr, ptr %34, align 8, !tbaa !374
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %9, %37
  %38 = phi ptr [ %65, %37 ], [ %35, %9 ]
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %40 = load ptr, ptr %10, align 8, !tbaa !738
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !379
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %39, ptr %44, align 8, !tbaa !374
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %46 = load ptr, ptr %31, align 8, !tbaa !741
  %47 = load i32, ptr %41, align 8, !tbaa !379
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !374
  %50 = load ptr, ptr %10, align 8, !tbaa !738
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !374
  %53 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %47) #18
  %54 = getelementptr inbounds %struct.df_lr_bb_info, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !698
  tail call void @bitmap_copy(ptr noundef %52, ptr noundef %55) #17
  %56 = load ptr, ptr %31, align 8, !tbaa !741
  %57 = load i32, ptr %41, align 8, !tbaa !379
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !374
  %61 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %57) #18
  %62 = getelementptr inbounds %struct.df_lr_bb_info, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !699
  tail call void @bitmap_copy(ptr noundef %60, ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !374
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %37, !llvm.loop !743

67:                                               ; preds = %37, %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_verify_solution_end() #0 !prof !400 !PGOFuncName !744 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !520
  %6 = icmp eq ptr %5, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %9 = load i8, ptr %8, align 1, !tbaa !728
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i8 0, ptr %8, align 1, !tbaa !728
  br label %49

12:                                               ; preds = %7
  %13 = load ptr, ptr @cfun, align 8, !tbaa !374
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !395
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %45
  %21 = phi ptr [ %16, %18 ], [ %47, %45 ]
  %22 = load ptr, ptr %5, align 8, !tbaa !738
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !379
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  %28 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %24) #18
  %29 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !698
  %31 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %27, ptr noundef %30) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %19, align 8, !tbaa !741
  %35 = load i32, ptr %23, align 8, !tbaa !379
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !374
  %39 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %35) #18
  %40 = getelementptr inbounds %struct.df_lr_bb_info, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !699
  %42 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %38, ptr noundef %41) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1203, ptr noundef nonnull @.str.1) #17
  br label %45

45:                                               ; preds = %33, %44
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !374
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %20, !llvm.loop !745

49:                                               ; preds = %45, %12, %11
  %50 = load ptr, ptr @cfun, align 8, !tbaa !374
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !395
  %53 = load ptr, ptr %52, align 8, !tbaa !374
  %54 = icmp eq ptr %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi ptr [ %53, %55 ], [ %77, %57 ]
  %59 = load ptr, ptr %5, align 8, !tbaa !738
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !379
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !374
  tail call void @bitmap_obstack_free(ptr noundef %64) #17
  %65 = load ptr, ptr %5, align 8, !tbaa !738
  %66 = load i32, ptr %60, align 8, !tbaa !379
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  store ptr null, ptr %68, align 8, !tbaa !374
  %69 = load ptr, ptr %56, align 8, !tbaa !741
  %70 = getelementptr inbounds ptr, ptr %69, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !374
  tail call void @bitmap_obstack_free(ptr noundef %71) #17
  %72 = load ptr, ptr %56, align 8, !tbaa !741
  %73 = load i32, ptr %60, align 8, !tbaa !379
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  store ptr null, ptr %75, align 8, !tbaa !374
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !374
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %57, !llvm.loop !746

79:                                               ; preds = %57, %49
  %80 = load ptr, ptr %5, align 8, !tbaa !738
  tail call void @free(ptr noundef %80) #18
  %81 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !741
  tail call void @free(ptr noundef %82) #18
  tail call void @free(ptr noundef nonnull %5) #18
  %83 = load ptr, ptr @df, align 8, !tbaa !374
  %84 = getelementptr inbounds %struct.df, ptr %83, i64 0, i32 1, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !374
  %86 = getelementptr inbounds %struct.dataflow, ptr %85, i64 0, i32 5
  store ptr null, ptr %86, align 8, !tbaa !520
  br label %87

87:                                               ; preds = %0, %79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_lr_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !747 !PGOFuncName !748 {
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !749

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 745, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !385
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16, !prof !750

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !374
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !374
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !388
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !374
  ret void
}

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

; Function Attrs: optsize
declare void @df_recompute_luids(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_alloc(ptr nocapture readnone %0) #0 !prof !751 !PGOFuncName !752 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !514
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !753

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.29, i64 noundef 32, i64 noundef 100) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !514
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi ptr [ %12, %10 ], [ %4, %1 ]
  %18 = load ptr, ptr @df_live_scratch, align 8, !tbaa !374
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !753

20:                                               ; preds = %16
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %21, ptr @df_live_scratch, align 8, !tbaa !374
  %22 = load ptr, ptr @df, align 8, !tbaa !374
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %17, %16 ]
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 1, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !374
  tail call void @df_grow_bb_info(ptr noundef %26) #18
  %27 = load ptr, ptr @df, align 8, !tbaa !374
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !374
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !452
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %31, i32 noundef 0, ptr noundef nonnull %2) #18
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %63, label %34, !prof !754

34:                                               ; preds = %23, %56
  %35 = load i32, ptr %2, align 4, !tbaa !410
  %36 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %35) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38, !prof !755

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !492
  tail call void @bitmap_clear(ptr noundef %39) #17
  %40 = getelementptr inbounds %struct.df_live_bb_info, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !490
  tail call void @bitmap_clear(ptr noundef %41) #17
  br label %56

42:                                               ; preds = %34
  %43 = load ptr, ptr @df, align 8, !tbaa !374
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !374
  %46 = getelementptr inbounds %struct.dataflow, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !514
  %48 = tail call ptr @pool_alloc(ptr noundef %47) #17
  tail call fastcc void @df_live_set_bb_info(i32 noundef %35, ptr noundef %48) #18
  %49 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %49, ptr %48, align 8, !tbaa !492
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %51 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !490
  %52 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %53 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !756
  %54 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %55 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !757
  br label %56

56:                                               ; preds = %42, %38
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %34, !prof !758, !llvm.loop !759

59:                                               ; preds = %56
  %60 = load ptr, ptr @df, align 8, !tbaa !374
  %61 = getelementptr inbounds %struct.df, ptr %60, i64 0, i32 1, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !374
  br label %63

63:                                               ; preds = %59, %23
  %64 = phi ptr [ %62, %59 ], [ %29, %23 ]
  %65 = load i32, ptr @optimize, align 4, !tbaa !410
  %66 = icmp slt i32 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.dataflow, ptr %64, i64 0, i32 9
  store i8 %67, ptr %68, align 2, !tbaa !611
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_reset(ptr nocapture noundef readonly %0) #0 !prof !400 !PGOFuncName !760 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1447, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !756
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !757
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !761

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !704 !PGOFuncName !762 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4, !prof !706

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !490
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !490
  %7 = load ptr, ptr %1, align 8, !tbaa !492
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !492
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !756
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !756
  %10 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !757
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !757
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !514
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_local_compute(ptr nocapture readnone %0) #0 !prof !751 !PGOFuncName !763 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  tail call void @df_grow_insn_info() #17
  %4 = load ptr, ptr @df, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !452
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #18
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11, !prof !754

11:                                               ; preds = %1, %11
  %12 = load i32, ptr %2, align 4, !tbaa !410
  tail call fastcc void @df_live_bb_local_compute(i32 noundef %12) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %11, !prof !758, !llvm.loop !764

15:                                               ; preds = %11
  %16 = load ptr, ptr @df, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !374
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !452
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi ptr [ %20, %15 ], [ %8, %1 ]
  tail call void @bitmap_clear(ptr noundef %22) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_init(ptr nocapture noundef readonly %0) #0 !prof !751 !PGOFuncName !765 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6, !prof !754

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %7) #18
  %9 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %10 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !757
  %12 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !490
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !699
  tail call void @bitmap_and(ptr noundef %11, ptr noundef %13, ptr noundef %15) #17
  %16 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !756
  tail call void @bitmap_clear(ptr noundef %17) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %6, !prof !766, !llvm.loop !767

20:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !768 !PGOFuncName !769 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !415
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21, !prof !770

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !413
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !379
  %10 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !417
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !379
  %15 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.df_live_bb_info, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !756
  %18 = getelementptr inbounds %struct.df_live_bb_info, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !757
  %20 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %17, ptr noundef %19) #17
  br label %21

21:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_live_transfer_function(i32 noundef %0) #0 !prof !771 !PGOFuncName !772 {
  %2 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %0) #18
  %3 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %4 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !756
  %6 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !757
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !490
  %10 = load ptr, ptr %2, align 8, !tbaa !492
  %11 = load ptr, ptr @df_live_scratch, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !699
  tail call void @bitmap_and(ptr noundef %11, ptr noundef %9, ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !698
  tail call void @bitmap_and_into(ptr noundef %5, ptr noundef %15) #17
  %16 = load ptr, ptr @df_live_scratch, align 8, !tbaa !374
  %17 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %7, ptr noundef %16, ptr noundef %5, ptr noundef %10) #17
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_finalize(ptr nocapture noundef readonly %0) #0 !prof !751 !PGOFuncName !773 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @df, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !728
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %34, label %10, !prof !774

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !412
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %31, label %13, !prof !754

13:                                               ; preds = %10, %13
  %14 = load i32, ptr %3, align 4, !tbaa !410
  %15 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %14) #18
  %16 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %14) #18
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !756
  %19 = getelementptr inbounds %struct.df_lr_bb_info, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !698
  tail call void @bitmap_and_into(ptr noundef %18, ptr noundef %20) #17
  %21 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !757
  %23 = getelementptr inbounds %struct.df_lr_bb_info, ptr %15, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !699
  tail call void @bitmap_and_into(ptr noundef %22, ptr noundef %24) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !412
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %13, !prof !766, !llvm.loop !775

27:                                               ; preds = %13
  %28 = load ptr, ptr @df, align 8, !tbaa !374
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !374
  br label %31

31:                                               ; preds = %27, %10
  %32 = phi ptr [ %30, %27 ], [ %6, %10 ]
  %33 = getelementptr inbounds %struct.dataflow, ptr %32, i64 0, i32 8
  store i8 0, ptr %33, align 1, !tbaa !728
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_free() #0 !prof !451 !PGOFuncName !776 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !388
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7, !prof !634

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !385
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11, !prof !601

11:                                               ; preds = %7, %25
  %12 = phi ptr [ %26, %25 ], [ %1, %7 ]
  %13 = phi i32 [ %27, %25 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !734

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !490
  tail call void @bitmap_obstack_free(ptr noundef %18) #17
  store ptr null, ptr %17, align 8, !tbaa !490
  %19 = load ptr, ptr %14, align 8, !tbaa !492
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %14, align 8, !tbaa !492
  %20 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !756
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !756
  %22 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !757
  tail call void @bitmap_obstack_free(ptr noundef %23) #17
  store ptr null, ptr %22, align 8, !tbaa !757
  %24 = load ptr, ptr @df, align 8, !tbaa !374
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi ptr [ %24, %16 ], [ %12, %11 ]
  %27 = add nuw i32 %13, 1
  %28 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !374
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !385
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %11, label %33, !prof !735, !llvm.loop !777

33:                                               ; preds = %25, %7
  %34 = phi ptr [ %3, %7 ], [ %29, %25 ]
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !514
  tail call void @free_alloc_pool(ptr noundef %36) #17
  %37 = load ptr, ptr @df, align 8, !tbaa !374
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !374
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 2
  store i32 0, ptr %40, align 8, !tbaa !385
  %41 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !388
  tail call void @free(ptr noundef %42) #18
  %43 = load ptr, ptr @df_live_scratch, align 8, !tbaa !374
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !634

45:                                               ; preds = %33
  tail call void @bitmap_obstack_free(ptr noundef nonnull %43) #17
  store ptr null, ptr @df_live_scratch, align 8, !tbaa !374
  br label %46

46:                                               ; preds = %33, %45, %0
  %47 = load ptr, ptr @df, align 8, !tbaa !374
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !374
  %50 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !452
  tail call void @bitmap_obstack_free(ptr noundef %51) #17
  %52 = load ptr, ptr @df, align 8, !tbaa !374
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !374
  %55 = getelementptr inbounds %struct.dataflow, ptr %54, i64 0, i32 4
  store ptr null, ptr %55, align 8, !tbaa !452
  %56 = load ptr, ptr %53, align 8, !tbaa !374
  tail call void @free(ptr noundef %56) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !778 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !756
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 14, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !756
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !520
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 13, i64 1, ptr %1)
  %22 = load ptr, ptr %18, align 8, !tbaa !779
  %23 = load i32, ptr %3, align 8, !tbaa !379
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !374
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #17
  br label %27

27:                                               ; preds = %20, %11
  %28 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %1)
  %29 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !490
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %30) #17
  %31 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 14, i64 1, ptr %1)
  %32 = load ptr, ptr %5, align 8, !tbaa !492
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %32) #17
  br label %33

33:                                               ; preds = %2, %7, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !781 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !757
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !757
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !520
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %1)
  %22 = getelementptr inbounds %struct.df_live_problem_data, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !782
  %24 = load i32, ptr %3, align 8, !tbaa !379
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %27) #17
  br label %28

28:                                               ; preds = %11, %20, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_verify_solution_start() #0 !prof !400 !PGOFuncName !783 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !728
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !520
  br label %67

9:                                                ; preds = %0
  store i8 1, ptr %4, align 1, !tbaa !728
  %10 = tail call ptr @xmalloc(i64 noundef 16) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 5
  store ptr %10, ptr %14, align 8, !tbaa !520
  %15 = load ptr, ptr @cfun, align 8, !tbaa !374
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !395
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !397
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xmalloc(i64 noundef %21) #17
  store ptr %22, ptr %10, align 8, !tbaa !779
  %23 = load ptr, ptr @cfun, align 8, !tbaa !374
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !395
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !397
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #17
  %31 = getelementptr inbounds %struct.df_live_problem_data, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !782
  %32 = load ptr, ptr @cfun, align 8, !tbaa !374
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !395
  %35 = load ptr, ptr %34, align 8, !tbaa !374
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %9, %37
  %38 = phi ptr [ %65, %37 ], [ %35, %9 ]
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %40 = load ptr, ptr %10, align 8, !tbaa !779
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !379
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %39, ptr %44, align 8, !tbaa !374
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %46 = load ptr, ptr %31, align 8, !tbaa !782
  %47 = load i32, ptr %41, align 8, !tbaa !379
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !374
  %50 = load ptr, ptr %10, align 8, !tbaa !779
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !374
  %53 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %47) #18
  %54 = getelementptr inbounds %struct.df_live_bb_info, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !756
  tail call void @bitmap_copy(ptr noundef %52, ptr noundef %55) #17
  %56 = load ptr, ptr %31, align 8, !tbaa !782
  %57 = load i32, ptr %41, align 8, !tbaa !379
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !374
  %61 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %57) #18
  %62 = getelementptr inbounds %struct.df_live_bb_info, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !757
  tail call void @bitmap_copy(ptr noundef %60, ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !374
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %37, !llvm.loop !784

67:                                               ; preds = %37, %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_verify_solution_end() #0 !prof !400 !PGOFuncName !785 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !520
  %6 = icmp eq ptr %5, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @cfun, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !395
  %11 = load ptr, ptr %10, align 8, !tbaa !374
  %12 = icmp eq ptr %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %40
  %16 = phi ptr [ %11, %13 ], [ %42, %40 ]
  %17 = load ptr, ptr %5, align 8, !tbaa !779
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !379
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !374
  %23 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %19) #18
  %24 = getelementptr inbounds %struct.df_live_bb_info, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !756
  %26 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %22, ptr noundef %25) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %15
  %29 = load ptr, ptr %14, align 8, !tbaa !782
  %30 = load i32, ptr %18, align 8, !tbaa !379
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !374
  %34 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %30) #18
  %35 = getelementptr inbounds %struct.df_live_bb_info, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !757
  %37 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %33, ptr noundef %36) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1749, ptr noundef nonnull @.str.1) #17
  br label %40

40:                                               ; preds = %28, %39
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !374
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %15, !llvm.loop !786

44:                                               ; preds = %40
  %45 = load ptr, ptr @cfun, align 8, !tbaa !374
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !395
  %48 = load ptr, ptr %47, align 8, !tbaa !374
  %49 = icmp eq ptr %48, null
  br i1 %49, label %74, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi ptr [ %48, %50 ], [ %72, %52 ]
  %54 = load ptr, ptr %5, align 8, !tbaa !779
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !379
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !374
  tail call void @bitmap_obstack_free(ptr noundef %59) #17
  %60 = load ptr, ptr %5, align 8, !tbaa !779
  %61 = load i32, ptr %55, align 8, !tbaa !379
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  store ptr null, ptr %63, align 8, !tbaa !374
  %64 = load ptr, ptr %51, align 8, !tbaa !782
  %65 = getelementptr inbounds ptr, ptr %64, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !374
  tail call void @bitmap_obstack_free(ptr noundef %66) #17
  %67 = load ptr, ptr %51, align 8, !tbaa !782
  %68 = load i32, ptr %55, align 8, !tbaa !379
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  store ptr null, ptr %70, align 8, !tbaa !374
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !374
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %52, !llvm.loop !787

74:                                               ; preds = %52, %7, %44
  %75 = load ptr, ptr %5, align 8, !tbaa !779
  tail call void @free(ptr noundef %75) #18
  %76 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !782
  tail call void @free(ptr noundef %77) #18
  tail call void @free(ptr noundef nonnull %5) #18
  %78 = load ptr, ptr @df, align 8, !tbaa !374
  %79 = getelementptr inbounds %struct.df, ptr %78, i64 0, i32 1, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !374
  %81 = getelementptr inbounds %struct.dataflow, ptr %80, i64 0, i32 5
  store ptr null, ptr %81, align 8, !tbaa !520
  br label %82

82:                                               ; preds = %0, %74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_live_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !747 !PGOFuncName !788 {
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !749

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1373, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !385
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16, !prof !750

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1374, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !374
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !374
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !388
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !374
  ret void
}

; Function Attrs: optsize
declare void @bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @df_insn_create_insn_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_alloc(ptr nocapture readnone %0) #0 !prof !451 !PGOFuncName !789 {
  tail call fastcc void @df_chain_remove_problem() #18
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.34, i64 noundef 16, i64 noundef 50) #17
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !514
  %7 = load ptr, ptr %4, align 8, !tbaa !374
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 9
  store i8 1, ptr %8, align 2, !tbaa !611
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_reset(ptr nocapture readnone %0) #0 !prof !400 !PGOFuncName !790 {
  tail call fastcc void @df_chain_remove_problem() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_finalize(ptr nocapture noundef readonly %0) #0 !prof !451 !PGOFuncName !791 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6, !prof !601

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !410
  tail call fastcc void @df_chain_create_bb(i32 noundef %7) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !prof !609, !llvm.loop !792

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_free() #0 !prof !400 !PGOFuncName !793 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !514
  tail call void @free_alloc_pool(ptr noundef %5) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 4
  %8 = load ptr, ptr %7, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !452
  tail call void @bitmap_obstack_free(ptr noundef %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 4
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !452
  %15 = load ptr, ptr %12, align 8, !tbaa !374
  tail call void @free(ptr noundef %15) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_fully_remove_problem() #0 !prof !451 !PGOFuncName !794 {
  tail call fastcc void @df_chain_remove_problem() #18
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !452
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 4
  %8 = load ptr, ptr %7, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !452
  %10 = load ptr, ptr %7, align 8, !tbaa !374
  tail call void @free(ptr noundef %10) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @df_chain_top_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 !prof !400 !PGOFuncName !795 {
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !519
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !379
  %13 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %12) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 34, i64 1, ptr %1)
  %18 = load ptr, ptr %13, align 8, !tbaa !374
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %30, %20 ], [ %18, %16 ]
  %22 = phi ptr [ %29, %20 ], [ %13, %16 ]
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !403
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %24) #18
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !403
  tail call void @df_chain_dump(ptr noundef %27, ptr noundef %1) #18
  %28 = tail call i32 @fputc(i32 10, ptr %1)
  %29 = getelementptr inbounds ptr, ptr %22, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !374
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !796

32:                                               ; preds = %20, %16, %10
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !403
  %35 = load ptr, ptr %34, align 8, !tbaa !403
  %36 = icmp eq ptr %35, null
  br i1 %36, label %91, label %37

37:                                               ; preds = %32, %87
  %38 = phi ptr [ %89, %87 ], [ %35, %32 ]
  %39 = load ptr, ptr %33, align 8, !tbaa !403
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !497
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !403
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %91, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %87

50:                                               ; preds = %45
  %51 = load ptr, ptr @df, align 8, !tbaa !374
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !444
  %54 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !403
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !374
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !445
  %61 = load ptr, ptr %60, align 8, !tbaa !374
  %62 = icmp eq ptr %61, null
  br i1 %62, label %87, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !501
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %65, i32 noundef %55) #18
  %67 = load ptr, ptr %60, align 8, !tbaa !374
  %68 = icmp eq ptr %67, null
  br i1 %68, label %87, label %69

69:                                               ; preds = %63, %80
  %70 = phi ptr [ %85, %80 ], [ %67, %63 ]
  %71 = phi ptr [ %84, %80 ], [ %60, %63 ]
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %70, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !403
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
  %82 = load ptr, ptr %81, align 8, !tbaa !403
  tail call void @df_chain_dump(ptr noundef %82, ptr noundef %1) #18
  %83 = tail call i32 @fputc(i32 10, ptr %1)
  %84 = getelementptr inbounds ptr, ptr %71, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !374
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %69, !llvm.loop !797

87:                                               ; preds = %80, %63, %45, %50
  %88 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %89 = load ptr, ptr %88, align 8, !tbaa !403
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %37, !llvm.loop !798

91:                                               ; preds = %87, %37, %32, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @df_chain_bottom_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 !prof !400 !PGOFuncName !799 {
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !519
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %111, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !379
  %13 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %12) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 34, i64 1, ptr %1)
  %18 = load ptr, ptr %13, align 8, !tbaa !374
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %30, %20 ], [ %18, %16 ]
  %22 = phi ptr [ %29, %20 ], [ %13, %16 ]
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !403
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %24) #18
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !403
  tail call void @df_chain_dump(ptr noundef %27, ptr noundef %1) #18
  %28 = tail call i32 @fputc(i32 10, ptr %1)
  %29 = getelementptr inbounds ptr, ptr %22, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !374
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !800

32:                                               ; preds = %20, %16, %10
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !403
  %35 = load ptr, ptr %34, align 8, !tbaa !403
  %36 = icmp eq ptr %35, null
  br i1 %36, label %111, label %37

37:                                               ; preds = %32, %107
  %38 = phi ptr [ %109, %107 ], [ %35, %32 ]
  %39 = load ptr, ptr %33, align 8, !tbaa !403
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !497
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !403
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %111, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %107

50:                                               ; preds = %45
  %51 = load ptr, ptr @df, align 8, !tbaa !374
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !444
  %54 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !403
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !374
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !801
  %61 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !477
  %63 = load ptr, ptr %62, align 8, !tbaa !374
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load ptr, ptr %60, align 8, !tbaa !374
  %67 = icmp eq ptr %66, null
  br i1 %67, label %107, label %68

68:                                               ; preds = %65, %50
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !501
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %70, i32 noundef %55) #18
  %72 = load ptr, ptr %62, align 8, !tbaa !374
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %88, %68
  %75 = load ptr, ptr %60, align 8, !tbaa !374
  %76 = icmp eq ptr %75, null
  br i1 %76, label %107, label %95

77:                                               ; preds = %68, %88
  %78 = phi ptr [ %93, %88 ], [ %72, %68 ]
  %79 = phi ptr [ %92, %88 ], [ %62, %68 ]
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %78, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !403
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
  %90 = load ptr, ptr %89, align 8, !tbaa !403
  tail call void @df_chain_dump(ptr noundef %90, ptr noundef %1) #18
  %91 = tail call i32 @fputc(i32 10, ptr %1)
  %92 = getelementptr inbounds ptr, ptr %79, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !374
  %94 = icmp eq ptr %93, null
  br i1 %94, label %74, label %77, !llvm.loop !802

95:                                               ; preds = %74, %95
  %96 = phi ptr [ %105, %95 ], [ %75, %74 ]
  %97 = phi ptr [ %104, %95 ], [ %60, %74 ]
  %98 = getelementptr inbounds %struct.df_base_ref, ptr %96, i64 0, i32 6
  %99 = load i32, ptr %98, align 8, !tbaa !403
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %99) #18
  %101 = getelementptr inbounds %struct.df_base_ref, ptr %96, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !403
  tail call void @df_chain_dump(ptr noundef %102, ptr noundef %1) #18
  %103 = tail call i32 @fputc(i32 10, ptr %1)
  %104 = getelementptr inbounds ptr, ptr %97, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !374
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %95, !llvm.loop !803

107:                                              ; preds = %95, %74, %45, %65
  %108 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !403
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %37, !llvm.loop !804

111:                                              ; preds = %107, %37, %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_remove_problem() unnamed_addr #0 !prof !488 !PGOFuncName !805 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !514
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !806

9:                                                ; preds = %0
  tail call void @free_alloc_pool(ptr noundef nonnull %7) #17
  %10 = load ptr, ptr @df, align 8, !tbaa !374
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 4
  %12 = load ptr, ptr %11, align 8, !tbaa !374
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi ptr [ %12, %9 ], [ %5, %0 ]
  %15 = phi ptr [ %10, %9 ], [ %3, %0 ]
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 1, i64 4
  %17 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !452
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %18, i32 noundef 0, ptr noundef nonnull %2) #18
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #18, !range !412
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %160, label %21, !prof !807

21:                                               ; preds = %13
  %22 = load ptr, ptr @cfun, align 8, !tbaa !374
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 10
  br label %25

25:                                               ; preds = %21, %157
  %26 = load ptr, ptr %23, align 8, !tbaa !395
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !459
  %29 = load i32, ptr %2, align 4, !tbaa !410
  %30 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %28, i32 noundef %29) #18
  %31 = load ptr, ptr %16, align 8, !tbaa !374
  %32 = getelementptr inbounds %struct.dataflow, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !519
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36, !prof !602

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !379
  %39 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %38) #18
  %40 = load ptr, ptr %39, align 8, !tbaa !374
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %36, %42
  %43 = phi ptr [ %47, %42 ], [ %40, %36 ]
  %44 = phi ptr [ %46, %42 ], [ %39, %36 ]
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 2
  store ptr null, ptr %45, align 8, !tbaa !403
  %46 = getelementptr inbounds ptr, ptr %44, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !374
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %42, !llvm.loop !808

49:                                               ; preds = %42
  %50 = load ptr, ptr %16, align 8, !tbaa !374
  %51 = getelementptr inbounds %struct.dataflow, ptr %50, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !519
  br label %53

53:                                               ; preds = %49, %36, %25
  %54 = phi i32 [ %52, %49 ], [ %33, %36 ], [ %33, %25 ]
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57, !prof !670

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !379
  %60 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %59) #18
  %61 = load ptr, ptr %60, align 8, !tbaa !374
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63, !prof !809

63:                                               ; preds = %57, %63
  %64 = phi ptr [ %68, %63 ], [ %61, %57 ]
  %65 = phi ptr [ %67, %63 ], [ %60, %57 ]
  %66 = getelementptr inbounds %struct.df_base_ref, ptr %64, i64 0, i32 2
  store ptr null, ptr %66, align 8, !tbaa !403
  %67 = getelementptr inbounds ptr, ptr %65, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !374
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %63, !prof !810, !llvm.loop !811

70:                                               ; preds = %63, %57, %53
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !403
  %73 = load ptr, ptr %72, align 8, !tbaa !403
  %74 = icmp eq ptr %73, null
  br i1 %74, label %157, label %75, !prof !674

75:                                               ; preds = %70, %153
  %76 = phi ptr [ %155, %153 ], [ %73, %70 ]
  %77 = load ptr, ptr %71, align 8, !tbaa !403
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !497
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !403
  %82 = icmp eq ptr %76, %81
  br i1 %82, label %157, label %83, !prof !675

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !403
  %86 = load i32, ptr %76, align 8
  %87 = and i32 %86, 65535
  %88 = add nsw i32 %87, -7
  %89 = icmp ult i32 %88, 4
  br i1 %89, label %90, label %153, !prof !676

90:                                               ; preds = %83
  %91 = load ptr, ptr %16, align 8, !tbaa !374
  %92 = getelementptr inbounds %struct.dataflow, ptr %91, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !519
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %116, label %96, !prof !812

96:                                               ; preds = %90
  %97 = load ptr, ptr %24, align 8, !tbaa !444
  %98 = zext i32 %85 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !374
  %101 = getelementptr inbounds %struct.df_insn_info, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !445
  %103 = load ptr, ptr %102, align 8, !tbaa !374
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %96, %105
  %106 = phi ptr [ %110, %105 ], [ %103, %96 ]
  %107 = phi ptr [ %109, %105 ], [ %102, %96 ]
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %106, i64 0, i32 2
  store ptr null, ptr %108, align 8, !tbaa !403
  %109 = getelementptr inbounds ptr, ptr %107, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !374
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %105, !llvm.loop !813

112:                                              ; preds = %105
  %113 = load ptr, ptr %16, align 8, !tbaa !374
  %114 = getelementptr inbounds %struct.dataflow, ptr %113, i64 0, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !519
  br label %116

116:                                              ; preds = %112, %96, %90
  %117 = phi i32 [ %115, %112 ], [ %93, %96 ], [ %93, %90 ]
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %153, label %120, !prof !814

120:                                              ; preds = %116
  %121 = load ptr, ptr %24, align 8, !tbaa !444
  %122 = zext i32 %85 to i64
  %123 = getelementptr inbounds ptr, ptr %121, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !374
  %125 = getelementptr inbounds %struct.df_insn_info, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !477
  %127 = load ptr, ptr %126, align 8, !tbaa !374
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129, !prof !815

129:                                              ; preds = %120, %129
  %130 = phi ptr [ %134, %129 ], [ %127, %120 ]
  %131 = phi ptr [ %133, %129 ], [ %126, %120 ]
  %132 = getelementptr inbounds %struct.df_base_ref, ptr %130, i64 0, i32 2
  store ptr null, ptr %132, align 8, !tbaa !403
  %133 = getelementptr inbounds ptr, ptr %131, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !374
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %129, !prof !816, !llvm.loop !817

136:                                              ; preds = %129
  %137 = load ptr, ptr %24, align 8, !tbaa !444
  %138 = getelementptr inbounds ptr, ptr %137, i64 %122
  %139 = load ptr, ptr %138, align 8, !tbaa !374
  br label %140

140:                                              ; preds = %136, %120
  %141 = phi ptr [ %139, %136 ], [ %124, %120 ]
  %142 = getelementptr inbounds %struct.df_insn_info, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !801
  %144 = load ptr, ptr %143, align 8, !tbaa !374
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146, !prof !818

146:                                              ; preds = %140, %146
  %147 = phi ptr [ %151, %146 ], [ %144, %140 ]
  %148 = phi ptr [ %150, %146 ], [ %143, %140 ]
  %149 = getelementptr inbounds %struct.df_base_ref, ptr %147, i64 0, i32 2
  store ptr null, ptr %149, align 8, !tbaa !403
  %150 = getelementptr inbounds ptr, ptr %148, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !374
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %146, !prof !819, !llvm.loop !820

153:                                              ; preds = %146, %140, %83, %116
  %154 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !403
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %75, !prof !677, !llvm.loop !821

157:                                              ; preds = %75, %153, %70
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #18
  %158 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #18, !range !412
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %25, !prof !822, !llvm.loop !823

160:                                              ; preds = %157, %13
  %161 = load ptr, ptr %16, align 8, !tbaa !374
  %162 = getelementptr inbounds %struct.dataflow, ptr %161, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !452
  tail call void @bitmap_clear(ptr noundef %163) #17
  %164 = load ptr, ptr @df, align 8, !tbaa !374
  %165 = getelementptr inbounds %struct.df, ptr %164, i64 0, i32 1, i64 4
  %166 = load ptr, ptr %165, align 8, !tbaa !374
  %167 = getelementptr inbounds %struct.dataflow, ptr %166, i64 0, i32 3
  store ptr null, ptr %167, align 8, !tbaa !514
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_create_bb(i32 noundef %0) unnamed_addr #0 !prof !430 !PGOFuncName !824 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !459
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %10 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !607
  tail call void @bitmap_copy(ptr noundef %9, ptr noundef %11) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 4
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !452
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %0) #17
  tail call void @df_rd_simulate_artificial_defs_at_top(ptr noundef %7, ptr noundef %9) #18
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !403
  %20 = load ptr, ptr %19, align 8, !tbaa !403
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22, !prof !674

22:                                               ; preds = %1, %59
  %23 = phi ptr [ %61, %59 ], [ %20, %1 ]
  %24 = load ptr, ptr %18, align 8, !tbaa !403
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !497
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !403
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %63, label %30, !prof !675

30:                                               ; preds = %22
  %31 = load i32, ptr %23, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %59, !prof !676

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !403
  %38 = load ptr, ptr @df, align 8, !tbaa !374
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !444
  %41 = zext i32 %37 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !374
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !477
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %45) #18
  %46 = load ptr, ptr @df, align 8, !tbaa !374
  %47 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 27
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %58, label %51, !prof !812

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !444
  %54 = getelementptr inbounds ptr, ptr %53, i64 %41
  %55 = load ptr, ptr %54, align 8, !tbaa !374
  %56 = getelementptr inbounds %struct.df_insn_info, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !801
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %57) #18
  br label %58

58:                                               ; preds = %51, %35
  tail call void @df_rd_simulate_one_insn(ptr nonnull poison, ptr noundef nonnull %23, ptr noundef %9) #18
  br label %59

59:                                               ; preds = %30, %58
  %60 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !403
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %22, !prof !677, !llvm.loop !825

63:                                               ; preds = %22, %59, %1
  %64 = load ptr, ptr @df, align 8, !tbaa !374
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 27
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %73, !prof !602

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !379
  %72 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %71) #18
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %72) #18
  br label %73

73:                                               ; preds = %69, %63
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_create_bb_process_use(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !826 !PGOFuncName !827 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = load ptr, ptr %1, align 8, !tbaa !374
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7, !prof !828

7:                                                ; preds = %2, %71
  %8 = phi ptr [ %73, %71 ], [ %5, %2 ]
  %9 = phi ptr [ %72, %71 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !403
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 27
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !829

17:                                               ; preds = %7
  %18 = icmp ugt i32 %11, 52
  br i1 %18, label %19, label %71

19:                                               ; preds = %17, %7
  %20 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !436
  %22 = zext i32 %11 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !410
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %71, label %26, !prof !830

26:                                               ; preds = %19
  %27 = load i32, ptr %8, align 8
  %28 = and i32 %27, 131072
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %71, !prof !829

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !433
  %33 = getelementptr inbounds i32, ptr %32, i64 %22
  %34 = load i32, ptr %33, align 4, !tbaa !410
  %35 = add i32 %24, -1
  %36 = add i32 %35, %34
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %34, ptr noundef nonnull %4) #18
  %37 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !412
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %71, label %39, !prof !831

39:                                               ; preds = %30, %68
  %40 = load i32, ptr %4, align 4, !tbaa !410
  %41 = icmp ugt i32 %40, %36
  br i1 %41, label %71, label %42, !prof !832

42:                                               ; preds = %39
  %43 = load ptr, ptr @df, align 8, !tbaa !374
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !833
  %46 = zext i32 %40 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !374
  %49 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 4
  %50 = load ptr, ptr %49, align 8, !tbaa !374
  %51 = getelementptr inbounds %struct.dataflow, ptr %50, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !519
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55, !prof !834

55:                                               ; preds = %42
  %56 = tail call ptr @df_chain_create(ptr noundef %48, ptr noundef nonnull %8) #18
  %57 = load ptr, ptr @df, align 8, !tbaa !374
  %58 = getelementptr inbounds %struct.df, ptr %57, i64 0, i32 1, i64 4
  %59 = load ptr, ptr %58, align 8, !tbaa !374
  %60 = getelementptr inbounds %struct.dataflow, ptr %59, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !519
  br label %62

62:                                               ; preds = %55, %42
  %63 = phi i32 [ %61, %55 ], [ %52, %42 ]
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66, !prof !835

66:                                               ; preds = %62
  %67 = tail call ptr @df_chain_create(ptr noundef nonnull %8, ptr noundef %48) #18
  br label %68

68:                                               ; preds = %66, %62
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %69 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !412
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %39, !prof !836, !llvm.loop !837

71:                                               ; preds = %68, %39, %30, %19, %26, %17
  %72 = getelementptr inbounds ptr, ptr %9, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !374
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %7, !prof !838, !llvm.loop !839

75:                                               ; preds = %71, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_alloc(ptr nocapture readnone %0) #0 !prof !400 !PGOFuncName !840 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = tail call i32 @max_reg_num() #17
  %5 = tail call ptr @xmalloc(i64 noundef 144) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 5
  %8 = load ptr, ptr %7, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 5
  store ptr %5, ptr %9, align 8, !tbaa !520
  %10 = load ptr, ptr %7, align 8, !tbaa !374
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !514
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.43, i64 noundef 32, i64 noundef 50) #17
  %16 = load ptr, ptr @df, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 1, i64 5
  %18 = load ptr, ptr %17, align 8, !tbaa !374
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 3
  store ptr %15, ptr %19, align 8, !tbaa !514
  %20 = load ptr, ptr %17, align 8, !tbaa !374
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
  store ptr %26, ptr %27, align 8, !tbaa !521
  %28 = tail call ptr @xmalloc(i64 noundef %25) #17
  %29 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 4
  store ptr %28, ptr %29, align 8, !tbaa !525
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %31 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !841
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  store ptr %32, ptr %5, align 8, !tbaa !842
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %34 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !843
  %35 = load ptr, ptr @cfun, align 8, !tbaa !374
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !395
  %38 = load ptr, ptr %37, align 8, !tbaa !844
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !845
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !720
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %97, label %44

44:                                               ; preds = %21, %80
  %45 = phi ptr [ %90, %80 ], [ %40, %21 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !403
  %48 = load ptr, ptr %47, align 8, !tbaa !403
  %49 = icmp eq ptr %48, null
  br i1 %49, label %80, label %50

50:                                               ; preds = %44, %76
  %51 = phi ptr [ %78, %76 ], [ %48, %44 ]
  %52 = load ptr, ptr %46, align 8, !tbaa !403
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !497
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !403
  %57 = icmp eq ptr %51, %56
  br i1 %57, label %80, label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %51, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load ptr, ptr @df, align 8, !tbaa !374
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !444
  %67 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !403
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !374
  %72 = getelementptr inbounds %struct.df_insn_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !445
  tail call fastcc void @df_byte_lr_check_regs(ptr noundef %73) #18
  %74 = getelementptr inbounds %struct.df_insn_info, ptr %71, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !477
  tail call fastcc void @df_byte_lr_check_regs(ptr noundef %75) #18
  br label %76

76:                                               ; preds = %58, %63
  %77 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !403
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %50, !llvm.loop !846

80:                                               ; preds = %50, %76, %44
  %81 = load ptr, ptr @df, align 8, !tbaa !374
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 1, i64 5
  %83 = load ptr, ptr %82, align 8, !tbaa !374
  %84 = getelementptr inbounds %struct.dataflow, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !452
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !379
  %88 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %85, i32 noundef %87) #17
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !845
  %91 = load ptr, ptr @cfun, align 8, !tbaa !374
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !395
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !720
  %96 = icmp eq ptr %90, %95
  br i1 %96, label %97, label %44, !llvm.loop !847

97:                                               ; preds = %80, %21
  %98 = load ptr, ptr @df, align 8, !tbaa !374
  %99 = getelementptr inbounds %struct.df, ptr %98, i64 0, i32 1, i64 5
  %100 = load ptr, ptr %99, align 8, !tbaa !374
  %101 = getelementptr inbounds %struct.dataflow, ptr %100, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !452
  %103 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %102, i32 noundef 0) #17
  %104 = load ptr, ptr @df, align 8, !tbaa !374
  %105 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 1, i64 5
  %106 = load ptr, ptr %105, align 8, !tbaa !374
  %107 = getelementptr inbounds %struct.dataflow, ptr %106, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !452
  %109 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %108, i32 noundef 1) #17
  %110 = icmp eq i32 %4, 0
  br i1 %110, label %138, label %111

111:                                              ; preds = %97, %131
  %112 = phi i64 [ %136, %131 ], [ 0, %97 ]
  %113 = phi i32 [ %135, %131 ], [ 0, %97 ]
  %114 = load ptr, ptr %27, align 8, !tbaa !521
  %115 = getelementptr inbounds i32, ptr %114, i64 %112
  store i32 %113, ptr %115, align 4, !tbaa !410
  %116 = load ptr, ptr %34, align 8, !tbaa !843
  %117 = trunc i64 %112 to i32
  %118 = tail call i32 @bitmap_bit_p(ptr noundef %116, i32 noundef %117) #17
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %111
  %121 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !374
  %122 = getelementptr inbounds ptr, ptr %121, i64 %112
  %123 = load ptr, ptr %122, align 8, !tbaa !374
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !403
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %111, %120
  %132 = phi i32 [ %130, %120 ], [ 1, %111 ]
  %133 = load ptr, ptr %29, align 8, !tbaa !525
  %134 = getelementptr inbounds i32, ptr %133, i64 %112
  store i32 %132, ptr %134, align 4, !tbaa !410
  %135 = add i32 %132, %113
  %136 = add nuw nsw i64 %112, 1
  %137 = icmp eq i64 %136, %24
  br i1 %137, label %138, label %111, !llvm.loop !848

138:                                              ; preds = %131, %97
  %139 = load ptr, ptr %31, align 8, !tbaa !841
  %140 = load ptr, ptr @df, align 8, !tbaa !374
  %141 = getelementptr inbounds %struct.df, ptr %140, i64 0, i32 13
  %142 = load ptr, ptr %141, align 8, !tbaa !708
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %139, ptr noundef %142) #18
  %143 = load ptr, ptr %5, align 8, !tbaa !842
  %144 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !374
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %143, ptr noundef %144) #18
  %145 = load ptr, ptr @df, align 8, !tbaa !374
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 1, i64 5
  %147 = load ptr, ptr %146, align 8, !tbaa !374
  %148 = getelementptr inbounds %struct.dataflow, ptr %147, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !452
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %149, i32 noundef 0, ptr noundef nonnull %2) #18
  %150 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %181, label %152

152:                                              ; preds = %138, %174
  %153 = load i32, ptr %2, align 4, !tbaa !410
  %154 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %153) #18
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %154, align 8, !tbaa !849
  tail call void @bitmap_clear(ptr noundef %157) #17
  %158 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %154, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !851
  tail call void @bitmap_clear(ptr noundef %159) #17
  br label %174

160:                                              ; preds = %152
  %161 = load ptr, ptr @df, align 8, !tbaa !374
  %162 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 1, i64 5
  %163 = load ptr, ptr %162, align 8, !tbaa !374
  %164 = getelementptr inbounds %struct.dataflow, ptr %163, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !514
  %166 = tail call ptr @pool_alloc(ptr noundef %165) #17
  tail call fastcc void @df_byte_lr_set_bb_info(i32 noundef %153, ptr noundef %166) #18
  %167 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %168 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 1
  store ptr %167, ptr %168, align 8, !tbaa !851
  %169 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  store ptr %169, ptr %166, align 8, !tbaa !849
  %170 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %171 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 2
  store ptr %170, ptr %171, align 8, !tbaa !852
  %172 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %173 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 3
  store ptr %172, ptr %173, align 8, !tbaa !853
  br label %174

174:                                              ; preds = %160, %156
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %175 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %152, !llvm.loop !854

177:                                              ; preds = %174
  %178 = load ptr, ptr @df, align 8, !tbaa !374
  %179 = getelementptr inbounds %struct.df, ptr %178, i64 0, i32 1, i64 5
  %180 = load ptr, ptr %179, align 8, !tbaa !374
  br label %181

181:                                              ; preds = %177, %138
  %182 = phi ptr [ %180, %177 ], [ %147, %138 ]
  %183 = getelementptr inbounds %struct.dataflow, ptr %182, i64 0, i32 9
  store i8 1, ptr %183, align 2, !tbaa !611
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_reset(ptr nocapture noundef readonly %0) #0 !prof !400 !PGOFuncName !855 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2589, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !852
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !853
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !856

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !857 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !851
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !851
  %7 = load ptr, ptr %1, align 8, !tbaa !849
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !849
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !852
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !852
  %10 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !853
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !853
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !514
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_local_compute(ptr nocapture readnone %0) #0 !prof !400 !PGOFuncName !858 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 5
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !452
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #18
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1, %22
  %12 = load i32, ptr %2, align 4, !tbaa !410
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef 1) #18
  %16 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !851
  %18 = load ptr, ptr @df, align 8, !tbaa !374
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !713
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %17, ptr noundef %20) #18
  br label %22

21:                                               ; preds = %11
  tail call fastcc void @df_byte_lr_bb_local_compute(i32 noundef %12) #18
  br label %22

22:                                               ; preds = %14, %21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %11, !llvm.loop !859

25:                                               ; preds = %22
  %26 = load ptr, ptr @df, align 8, !tbaa !374
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 5
  %28 = load ptr, ptr %27, align 8, !tbaa !374
  %29 = getelementptr inbounds %struct.dataflow, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !452
  br label %31

31:                                               ; preds = %25, %1
  %32 = phi ptr [ %30, %25 ], [ %8, %1 ]
  tail call void @bitmap_clear(ptr noundef %32) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_init(ptr nocapture noundef readonly %0) #0 !prof !400 !PGOFuncName !860 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !852
  %11 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !851
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !853
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !llvm.loop !861

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_confluence_0(ptr noundef readonly %0) #0 !prof !400 !PGOFuncName !862 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !720
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !379
  %11 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %10) #18
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !520
  %17 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !853
  %19 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !841
  tail call void @bitmap_copy(ptr noundef %18, ptr noundef %20) #17
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !400 !PGOFuncName !863 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !520
  %7 = load ptr, ptr %0, align 8, !tbaa !413
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !379
  %10 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !853
  %13 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !417
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !379
  %17 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %16) #18
  %18 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !852
  %20 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !415
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load ptr, ptr %6, align 8, !tbaa !842
  %26 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %12, ptr noundef %19, ptr noundef %25) #17
  br label %29

27:                                               ; preds = %1
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %12, ptr noundef %19) #17
  br label %29

29:                                               ; preds = %27, %24
  %30 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !841
  %32 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %12, ptr noundef %31) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_byte_lr_transfer_function(i32 noundef %0) #0 !prof !400 !PGOFuncName !864 {
  %2 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !852
  %5 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !853
  %7 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !851
  %9 = load ptr, ptr %2, align 8, !tbaa !849
  %10 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %4, ptr noundef %8, ptr noundef %6, ptr noundef %9) #17
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_free() #0 !prof !400 !PGOFuncName !865 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 5
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !520
  %6 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !388
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !514
  tail call void @free_alloc_pool(ptr noundef %11) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !385
  %16 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !388
  tail call void @free(ptr noundef %17) #18
  %18 = load ptr, ptr @df, align 8, !tbaa !374
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 1, i64 5
  %20 = load ptr, ptr %19, align 8, !tbaa !374
  br label %21

21:                                               ; preds = %9, %0
  %22 = phi ptr [ %20, %9 ], [ %3, %0 ]
  %23 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !452
  tail call void @bitmap_obstack_free(ptr noundef %24) #17
  %25 = load ptr, ptr @df, align 8, !tbaa !374
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 1, i64 5
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 4
  store ptr null, ptr %28, align 8, !tbaa !452
  %29 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 5
  tail call void @bitmap_obstack_release(ptr noundef nonnull %29) #17
  %30 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !521
  tail call void @free(ptr noundef %31) #18
  %32 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !525
  tail call void @free(ptr noundef %33) #18
  tail call void @free(ptr noundef %5) #18
  %34 = load ptr, ptr @df, align 8, !tbaa !374
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 1, i64 5
  %36 = load ptr, ptr %35, align 8, !tbaa !374
  tail call void @free(ptr noundef %36) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !866 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !852
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 13, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !852
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 13, i64 1, ptr %1)
  %15 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !851
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %16) #17
  %17 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 13, i64 1, ptr %1)
  %18 = load ptr, ptr %5, align 8, !tbaa !849
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %18) #17
  br label %19

19:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !867 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !853
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 13, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !853
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %13) #17
  br label %14

14:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_check_regs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !400 !PGOFuncName !868 {
  %2 = load ptr, ptr %0, align 8, !tbaa !374
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !374
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !520
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
  %19 = load ptr, ptr %18, align 8, !tbaa !403
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 39
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %11
  %24 = load ptr, ptr %10, align 8, !tbaa !843
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !403
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %26) #17
  br label %28

28:                                               ; preds = %23, %17
  %29 = getelementptr inbounds ptr, ptr %13, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !374
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !869

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_expand_bitmap(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !400 !PGOFuncName !870 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !374
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  tail call void @bitmap_clear(ptr noundef %0) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !412
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %9, i64 0, i32 3
  %14 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %9, i64 0, i32 4
  br label %15

15:                                               ; preds = %12, %15
  %16 = load ptr, ptr %13, align 8, !tbaa !521
  %17 = load i32, ptr %4, align 4, !tbaa !410
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !410
  %21 = load ptr, ptr %14, align 8, !tbaa !525
  %22 = getelementptr inbounds i32, ptr %21, i64 %18
  %23 = load i32, ptr %22, align 4, !tbaa !410
  tail call void @bitmap_set_range(ptr noundef %0, i32 noundef %20, i32 noundef %23) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !412
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !871

26:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !400 !PGOFuncName !872 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !385
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !388
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !400 !PGOFuncName !873 {
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2415, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 5
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !385
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2416, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !374
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !374
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !388
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !374
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !400 !PGOFuncName !874 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @df, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 5
  %8 = load ptr, ptr %7, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !520
  %11 = load ptr, ptr @cfun, align 8, !tbaa !374
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !395
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !459
  %16 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %15, i32 noundef %0) #18
  %17 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) #18
  %18 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %19 = load ptr, ptr %18, align 8, !tbaa !374
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
  %33 = load i32, ptr %32, align 8, !tbaa !403
  %34 = load ptr, ptr %22, align 8, !tbaa !521
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !410
  %38 = load ptr, ptr %23, align 8, !tbaa !525
  %39 = getelementptr inbounds i32, ptr %38, i64 %35
  %40 = load i32, ptr %39, align 4, !tbaa !410
  %41 = load ptr, ptr %17, align 8, !tbaa !849
  tail call void @bitmap_set_range(ptr noundef %41, i32 noundef %37, i32 noundef %40) #17
  %42 = load ptr, ptr %24, align 8, !tbaa !851
  tail call void @bitmap_clear_range(ptr noundef %42, i32 noundef %37, i32 noundef %40) #17
  br label %43

43:                                               ; preds = %31, %25
  %44 = getelementptr inbounds ptr, ptr %27, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !374
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %25, !llvm.loop !875

47:                                               ; preds = %43, %1
  %48 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %49 = load ptr, ptr %48, align 8, !tbaa !374
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
  %63 = load i32, ptr %62, align 8, !tbaa !403
  %64 = load ptr, ptr %52, align 8, !tbaa !521
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !410
  %68 = load ptr, ptr %53, align 8, !tbaa !525
  %69 = getelementptr inbounds i32, ptr %68, i64 %65
  %70 = load i32, ptr %69, align 4, !tbaa !410
  %71 = load ptr, ptr %54, align 8, !tbaa !851
  tail call void @bitmap_set_range(ptr noundef %71, i32 noundef %67, i32 noundef %70) #17
  br label %72

72:                                               ; preds = %61, %55
  %73 = getelementptr inbounds ptr, ptr %57, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !374
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %55, !llvm.loop !876

76:                                               ; preds = %72, %47
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !403
  %79 = getelementptr inbounds %struct.rtl_bb_info, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !403
  %81 = icmp eq ptr %80, null
  br i1 %81, label %187, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 3
  %84 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 4
  %85 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 1
  br label %86

86:                                               ; preds = %82, %183
  %87 = phi ptr [ %80, %82 ], [ %185, %183 ]
  %88 = load ptr, ptr %77, align 8, !tbaa !403
  %89 = load ptr, ptr %88, align 8, !tbaa !469
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !403
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
  %100 = load i32, ptr %99, align 8, !tbaa !403
  %101 = load ptr, ptr @df, align 8, !tbaa !374
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !444
  %104 = zext i32 %100 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !374
  %107 = getelementptr inbounds %struct.df_insn_info, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !445
  %109 = load ptr, ptr %108, align 8, !tbaa !374
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
  %119 = load i32, ptr %118, align 8, !tbaa !403
  %120 = load ptr, ptr %83, align 8, !tbaa !521
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, ptr %120, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !410
  %124 = load ptr, ptr %84, align 8, !tbaa !525
  %125 = getelementptr inbounds i32, ptr %124, i64 %121
  %126 = load i32, ptr %125, align 4, !tbaa !410
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
  %137 = load ptr, ptr %17, align 8, !tbaa !849
  call void @bitmap_set_range(ptr noundef %137, i32 noundef %136, i32 noundef %132) #17
  %138 = load ptr, ptr %85, align 8, !tbaa !851
  call void @bitmap_clear_range(ptr noundef %138, i32 noundef %136, i32 noundef %132) #17
  br label %139

139:                                              ; preds = %134, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %140

140:                                              ; preds = %139, %111
  %141 = getelementptr inbounds ptr, ptr %113, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !374
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %111, !llvm.loop !877

144:                                              ; preds = %140
  %145 = load ptr, ptr @df, align 8, !tbaa !374
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 10
  %147 = load ptr, ptr %146, align 8, !tbaa !444
  %148 = getelementptr inbounds ptr, ptr %147, i64 %104
  %149 = load ptr, ptr %148, align 8, !tbaa !374
  br label %150

150:                                              ; preds = %144, %98
  %151 = phi ptr [ %149, %144 ], [ %106, %98 ]
  %152 = getelementptr inbounds %struct.df_insn_info, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !477
  %154 = load ptr, ptr %153, align 8, !tbaa !374
  %155 = icmp eq ptr %154, null
  br i1 %155, label %183, label %156

156:                                              ; preds = %150, %179
  %157 = phi ptr [ %181, %179 ], [ %154, %150 ]
  %158 = phi ptr [ %180, %179 ], [ %153, %150 ]
  %159 = getelementptr inbounds %struct.df_base_ref, ptr %157, i64 0, i32 6
  %160 = load i32, ptr %159, align 8, !tbaa !403
  %161 = load ptr, ptr %83, align 8, !tbaa !521
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i32, ptr %161, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !410
  %165 = load ptr, ptr %84, align 8, !tbaa !525
  %166 = getelementptr inbounds i32, ptr %165, i64 %162
  %167 = load i32, ptr %166, align 4, !tbaa !410
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
  %178 = load ptr, ptr %85, align 8, !tbaa !851
  call void @bitmap_set_range(ptr noundef %178, i32 noundef %177, i32 noundef %173) #17
  br label %179

179:                                              ; preds = %175, %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  %180 = getelementptr inbounds ptr, ptr %158, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !374
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %156, !llvm.loop !878

183:                                              ; preds = %179, %150, %93
  %184 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !403
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %86, !llvm.loop !879

187:                                              ; preds = %86, %183, %76
  %188 = call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %189 = load ptr, ptr %188, align 8, !tbaa !374
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
  %203 = load i32, ptr %202, align 8, !tbaa !403
  %204 = load ptr, ptr %192, align 8, !tbaa !521
  %205 = zext i32 %203 to i64
  %206 = getelementptr inbounds i32, ptr %204, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !410
  %208 = load ptr, ptr %193, align 8, !tbaa !525
  %209 = getelementptr inbounds i32, ptr %208, i64 %205
  %210 = load i32, ptr %209, align 4, !tbaa !410
  %211 = load ptr, ptr %17, align 8, !tbaa !849
  call void @bitmap_set_range(ptr noundef %211, i32 noundef %207, i32 noundef %210) #17
  %212 = load ptr, ptr %194, align 8, !tbaa !851
  call void @bitmap_clear_range(ptr noundef %212, i32 noundef %207, i32 noundef %210) #17
  br label %213

213:                                              ; preds = %201, %195
  %214 = getelementptr inbounds ptr, ptr %197, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !374
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %195, !llvm.loop !880

217:                                              ; preds = %213, %187
  ret void
}

; Function Attrs: optsize
declare void @df_print_byte_regset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @df_note_alloc(ptr nocapture readnone %0) #12 !prof !881 !PGOFuncName !882 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 6
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 9
  store i8 1, ptr %5, align 2, !tbaa !611
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_note_compute(ptr nocapture noundef readonly %0) #0 !prof !881 !PGOFuncName !883 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !884

9:                                                ; preds = %1, %9
  %10 = load i32, ptr %2, align 4, !tbaa !410
  tail call fastcc void @df_note_bb_compute(i32 noundef %10, ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %9, !prof !885, !llvm.loop !886

13:                                               ; preds = %9, %1
  tail call void @bitmap_obstack_free(ptr noundef %4) #17
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @df_note_free() #13 !prof !534 !PGOFuncName !887 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 6
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  tail call void @free(ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_note_bb_compute(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !888 !PGOFuncName !889 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !395
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !459
  %13 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %0) #18
  %14 = tail call ptr @df_get_live_out(ptr noundef %13) #18
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %14) #17
  tail call void @bitmap_clear(ptr noundef %3) #17
  %15 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18, !prof !890

18:                                               ; preds = %4, %28
  %19 = phi ptr [ %30, %28 ], [ %16, %4 ]
  %20 = phi ptr [ %29, %28 ], [ %15, %4 ]
  %21 = load i32, ptr %19, align 8
  %22 = and i32 %21, 131072
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !891

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !403
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %26) #17
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds ptr, ptr %20, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !374
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18, !prof !892, !llvm.loop !893

32:                                               ; preds = %28, %4
  %33 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %34 = load ptr, ptr %33, align 8, !tbaa !374
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36, !prof !894

36:                                               ; preds = %32, %47
  %37 = phi ptr [ %49, %47 ], [ %34, %32 ]
  %38 = phi ptr [ %48, %47 ], [ %33, %32 ]
  %39 = load i32, ptr %37, align 8
  %40 = and i32 %39, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47, !prof !895

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !403
  %45 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %44) #17
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %44) #17
  br label %47

47:                                               ; preds = %42, %36
  %48 = getelementptr inbounds ptr, ptr %38, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !374
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !prof !896, !llvm.loop !897

51:                                               ; preds = %47, %32
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !403
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !403
  %56 = icmp eq ptr %55, null
  br i1 %56, label %336, label %57, !prof !898

57:                                               ; preds = %51, %332
  %58 = phi ptr [ %334, %332 ], [ %55, %51 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !403
  %60 = load ptr, ptr %59, align 8, !tbaa !469
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !403
  %63 = icmp eq ptr %58, %62
  br i1 %63, label %336, label %64, !prof !899

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !403
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %67 = load i32, ptr %58, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -7
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %332, !prof !900

71:                                               ; preds = %64
  %72 = icmp eq i32 %68, 7
  %73 = zext i1 %72 to i32
  tail call void @bitmap_clear(ptr noundef %2) #17
  call fastcc void @df_kill_notes(ptr noundef nonnull %58, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %74 = load i32, ptr %58, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 10
  %77 = load ptr, ptr @df, align 8, !tbaa !374
  %78 = getelementptr inbounds %struct.df, ptr %77, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !444
  %80 = zext i32 %66 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !374
  %83 = getelementptr inbounds %struct.df_insn_info, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !901
  %85 = load ptr, ptr %6, align 8, !tbaa !374
  %86 = load ptr, ptr %84, align 8, !tbaa !374
  %87 = icmp eq ptr %86, null
  br i1 %76, label %88, label %146, !prof !902

88:                                               ; preds = %71
  br i1 %87, label %115, label %89, !prof !903

89:                                               ; preds = %88, %104
  %90 = phi ptr [ %107, %104 ], [ %86, %88 ]
  %91 = phi ptr [ %106, %104 ], [ %84, %88 ]
  %92 = phi ptr [ %105, %104 ], [ %85, %88 ]
  %93 = getelementptr inbounds %struct.df_mw_hardreg, ptr %90, i64 0, i32 1
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.df_mw_hardreg, ptr %90, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !904
  %100 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %99) #18, !range !412
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = tail call fastcc ptr @df_set_unused_notes_for_mw(ptr noundef nonnull %58, ptr noundef %92, ptr noundef nonnull %90, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %104

104:                                              ; preds = %102, %97, %89
  %105 = phi ptr [ %103, %102 ], [ %92, %97 ], [ %92, %89 ]
  %106 = getelementptr inbounds ptr, ptr %91, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !374
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %89, !prof !552, !llvm.loop !906

109:                                              ; preds = %104
  %110 = load ptr, ptr @df, align 8, !tbaa !374
  %111 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 10
  %112 = load ptr, ptr %111, align 8, !tbaa !444
  %113 = getelementptr inbounds ptr, ptr %112, i64 %80
  %114 = load ptr, ptr %113, align 8, !tbaa !374
  br label %115

115:                                              ; preds = %109, %88
  %116 = phi ptr [ %82, %88 ], [ %114, %109 ]
  %117 = phi ptr [ %85, %88 ], [ %105, %109 ]
  %118 = getelementptr inbounds %struct.df_insn_info, ptr %116, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !445
  %120 = load ptr, ptr %119, align 8, !tbaa !374
  %121 = icmp eq ptr %120, null
  br i1 %121, label %198, label %122, !prof !907

122:                                              ; preds = %115, %142
  %123 = phi ptr [ %144, %142 ], [ %120, %115 ]
  %124 = phi ptr [ %143, %142 ], [ %119, %115 ]
  %125 = phi ptr [ %137, %142 ], [ %117, %115 ]
  %126 = getelementptr inbounds %struct.df_base_ref, ptr %123, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !403
  %128 = load i32, ptr %123, align 8
  %129 = and i32 %128, 12582912
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135, !prof !908

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
  br i1 %139, label %140, label %142, !prof !909

140:                                              ; preds = %135
  %141 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %127) #17
  br label %142

142:                                              ; preds = %140, %135
  %143 = getelementptr inbounds ptr, ptr %124, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !374
  %145 = icmp eq ptr %144, null
  br i1 %145, label %198, label %122, !prof !910, !llvm.loop !911

146:                                              ; preds = %71
  br i1 %87, label %168, label %147, !prof !912

147:                                              ; preds = %146, %157
  %148 = phi ptr [ %160, %157 ], [ %86, %146 ]
  %149 = phi ptr [ %159, %157 ], [ %84, %146 ]
  %150 = phi ptr [ %158, %157 ], [ %85, %146 ]
  %151 = getelementptr inbounds %struct.df_mw_hardreg, ptr %148, i64 0, i32 1
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = tail call fastcc ptr @df_set_unused_notes_for_mw(ptr noundef nonnull %58, ptr noundef %150, ptr noundef nonnull %148, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %157

157:                                              ; preds = %155, %147
  %158 = phi ptr [ %156, %155 ], [ %150, %147 ]
  %159 = getelementptr inbounds ptr, ptr %149, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !374
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %147, !prof !552, !llvm.loop !913

162:                                              ; preds = %157
  %163 = load ptr, ptr @df, align 8, !tbaa !374
  %164 = getelementptr inbounds %struct.df, ptr %163, i64 0, i32 10
  %165 = load ptr, ptr %164, align 8, !tbaa !444
  %166 = getelementptr inbounds ptr, ptr %165, i64 %80
  %167 = load ptr, ptr %166, align 8, !tbaa !374
  br label %168

168:                                              ; preds = %162, %146
  %169 = phi ptr [ %82, %146 ], [ %167, %162 ]
  %170 = phi ptr [ %85, %146 ], [ %158, %162 ]
  %171 = getelementptr inbounds %struct.df_insn_info, ptr %169, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !445
  %173 = load ptr, ptr %172, align 8, !tbaa !374
  %174 = icmp eq ptr %173, null
  br i1 %174, label %198, label %175, !prof !914

175:                                              ; preds = %168, %194
  %176 = phi ptr [ %196, %194 ], [ %173, %168 ]
  %177 = phi ptr [ %195, %194 ], [ %172, %168 ]
  %178 = phi ptr [ %181, %194 ], [ %170, %168 ]
  %179 = getelementptr inbounds %struct.df_base_ref, ptr %176, i64 0, i32 6
  %180 = load i32, ptr %179, align 8, !tbaa !403
  %181 = tail call fastcc ptr @df_create_unused_note(ptr noundef nonnull %58, ptr noundef %178, ptr noundef nonnull %176, ptr noundef %1, ptr noundef %3) #18
  %182 = load i32, ptr %176, align 8
  %183 = and i32 %182, 12582912
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188, !prof !915

185:                                              ; preds = %175
  %186 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %180) #17
  %187 = load i32, ptr %176, align 8
  br label %188

188:                                              ; preds = %185, %175
  %189 = phi i32 [ %187, %185 ], [ %182, %175 ]
  %190 = and i32 %189, 1114112
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194, !prof !916

192:                                              ; preds = %188
  %193 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %180) #17
  br label %194

194:                                              ; preds = %192, %188
  %195 = getelementptr inbounds ptr, ptr %177, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !374
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %175, !prof !917, !llvm.loop !918

198:                                              ; preds = %194, %142, %168, %115
  %199 = phi ptr [ %117, %115 ], [ %170, %168 ], [ %137, %142 ], [ %181, %194 ]
  store ptr %199, ptr %6, align 8, !tbaa !374
  %200 = load ptr, ptr @df, align 8, !tbaa !374
  %201 = getelementptr inbounds %struct.df, ptr %200, i64 0, i32 10
  %202 = load ptr, ptr %201, align 8, !tbaa !444
  %203 = getelementptr inbounds ptr, ptr %202, i64 %80
  %204 = load ptr, ptr %203, align 8, !tbaa !374
  %205 = getelementptr inbounds %struct.df_insn_info, ptr %204, i64 0, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !901
  %207 = load ptr, ptr %5, align 8, !tbaa !374
  %208 = load ptr, ptr %206, align 8, !tbaa !374
  %209 = icmp eq ptr %208, null
  br i1 %209, label %243, label %210, !prof !919

210:                                              ; preds = %198, %231
  %211 = phi ptr [ %235, %231 ], [ %208, %198 ]
  %212 = phi ptr [ %234, %231 ], [ %206, %198 ]
  %213 = phi i32 [ %233, %231 ], [ %73, %198 ]
  %214 = phi ptr [ %232, %231 ], [ %207, %198 ]
  %215 = getelementptr inbounds %struct.df_mw_hardreg, ptr %211, i64 0, i32 1
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %210
  %220 = getelementptr inbounds %struct.df_mw_hardreg, ptr %211, i64 0, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !904
  %222 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %221) #18, !range !412
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  %225 = icmp ne i32 %213, 0
  %226 = zext i1 %225 to i8
  store i8 %226, ptr %7, align 1, !tbaa !403
  %227 = call fastcc ptr @df_set_dead_notes_for_mw(ptr noundef nonnull %58, ptr noundef %214, ptr noundef nonnull %211, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #18
  %228 = load i8, ptr %7, align 1, !tbaa !403
  %229 = icmp eq i8 %228, 0
  %230 = select i1 %229, i32 %213, i32 -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  br label %231

231:                                              ; preds = %224, %219, %210
  %232 = phi ptr [ %214, %219 ], [ %227, %224 ], [ %214, %210 ]
  %233 = phi i32 [ %213, %219 ], [ %230, %224 ], [ %213, %210 ]
  %234 = getelementptr inbounds ptr, ptr %212, i64 1
  %235 = load ptr, ptr %234, align 8, !tbaa !374
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %210, !prof !552, !llvm.loop !920

237:                                              ; preds = %231
  %238 = load ptr, ptr @df, align 8, !tbaa !374
  %239 = getelementptr inbounds %struct.df, ptr %238, i64 0, i32 10
  %240 = load ptr, ptr %239, align 8, !tbaa !444
  %241 = getelementptr inbounds ptr, ptr %240, i64 %80
  %242 = load ptr, ptr %241, align 8, !tbaa !374
  br label %243

243:                                              ; preds = %237, %198
  %244 = phi ptr [ %204, %198 ], [ %242, %237 ]
  %245 = phi ptr [ %207, %198 ], [ %232, %237 ]
  %246 = phi i32 [ %73, %198 ], [ %233, %237 ]
  store ptr %245, ptr %5, align 8, !tbaa !374
  %247 = getelementptr inbounds %struct.df_insn_info, ptr %244, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !477
  %249 = load ptr, ptr %248, align 8, !tbaa !374
  %250 = icmp eq ptr %249, null
  br i1 %250, label %306, label %251, !prof !921

251:                                              ; preds = %243, %301
  %252 = phi ptr [ %304, %301 ], [ %249, %243 ]
  %253 = phi ptr [ %303, %301 ], [ %248, %243 ]
  %254 = phi ptr [ %302, %301 ], [ %245, %243 ]
  %255 = getelementptr inbounds %struct.df_base_ref, ptr %252, i64 0, i32 6
  %256 = load i32, ptr %255, align 8, !tbaa !403
  %257 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %256) #17
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %301, !prof !922

259:                                              ; preds = %251
  %260 = icmp eq i32 %246, 0
  br i1 %260, label %261, label %306, !prof !923

261:                                              ; preds = %259
  %262 = load i32, ptr %252, align 8
  %263 = and i32 %262, 268435456
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %298, !prof !923

265:                                              ; preds = %261
  %266 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %256) #17
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %298, !prof !924

268:                                              ; preds = %265
  %269 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %256) #17
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %298, !prof !925

271:                                              ; preds = %268
  %272 = load i32, ptr %252, align 8
  %273 = and i32 %272, 2097152
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %298, !prof !926

275:                                              ; preds = %271
  %276 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %256) #18, !range !412
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %298, !prof !926

278:                                              ; preds = %275
  %279 = and i32 %272, 254
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %281, label %292, !prof !927

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.df_regular_ref, ptr %252, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !403
  %284 = icmp eq ptr %283, null
  br i1 %284, label %292, label %285, !prof !926

285:                                              ; preds = %281
  %286 = load ptr, ptr %283, align 8, !tbaa !374
  %287 = load i32, ptr %286, align 8
  %288 = and i32 %287, 65535
  %289 = icmp eq i32 %288, 39
  %290 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1
  %291 = select i1 %289, ptr %290, ptr %283, !prof !928
  br label %294

292:                                              ; preds = %278, %281
  %293 = getelementptr inbounds %struct.df_base_ref, ptr %252, i64 0, i32 1
  br label %294

294:                                              ; preds = %292, %285
  %295 = phi ptr [ %291, %285 ], [ %293, %292 ]
  %296 = load ptr, ptr %295, align 8, !tbaa !403
  %297 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef nonnull %58, ptr noundef %254, ptr noundef %296) #18
  br label %298

298:                                              ; preds = %294, %275, %271, %268, %265, %261
  %299 = phi ptr [ %297, %294 ], [ %254, %275 ], [ %254, %271 ], [ %254, %268 ], [ %254, %265 ], [ %254, %261 ]
  %300 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %256) #17
  br label %301

301:                                              ; preds = %298, %251
  %302 = phi ptr [ %299, %298 ], [ %254, %251 ]
  %303 = getelementptr inbounds ptr, ptr %253, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !374
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %251, !prof !929, !llvm.loop !930

306:                                              ; preds = %301, %259, %243
  %307 = phi ptr [ %245, %243 ], [ %254, %259 ], [ %302, %301 ]
  %308 = phi i32 [ %246, %243 ], [ -1, %259 ], [ %246, %301 ]
  %309 = load ptr, ptr %6, align 8, !tbaa !374
  %310 = icmp eq ptr %309, null
  br i1 %310, label %316, label %311, !prof !919

311:                                              ; preds = %306, %311
  %312 = phi ptr [ %314, %311 ], [ %309, %306 ]
  %313 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1, i32 0, i32 0, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !403
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %312) #17
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %311, !prof !552, !llvm.loop !931

316:                                              ; preds = %311, %306
  %317 = icmp eq ptr %307, null
  br i1 %317, label %323, label %318, !prof !932

318:                                              ; preds = %316, %318
  %319 = phi ptr [ %321, %318 ], [ %307, %316 ]
  %320 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1, i32 0, i32 0, i64 1
  %321 = load ptr, ptr %320, align 8, !tbaa !403
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %319) #17
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %318, !prof !933, !llvm.loop !934

323:                                              ; preds = %318, %316
  %324 = icmp eq i32 %308, -1
  br i1 %324, label %325, label %332, !prof !935

325:                                              ; preds = %323
  %326 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !374
  %327 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %326) #17
  %328 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !403
  %330 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %327, ptr %330, align 8, !tbaa !403
  %331 = tail call zeroext i8 @df_insn_rescan_debug_internal(ptr noundef nonnull %58) #17
  br label %332

332:                                              ; preds = %64, %323, %325
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %333 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %334 = load ptr, ptr %333, align 8, !tbaa !403
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %57, !prof !936, !llvm.loop !937

336:                                              ; preds = %57, %332, %51
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @df_kill_notes(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !938 !PGOFuncName !939 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7, !prof !940

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
  ], !prof !941

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !403
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef %17) #18
  %19 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %18) #18, !range !412
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !403
  br i1 %20, label %23, label %36, !prof !942

23:                                               ; preds = %15
  store ptr %11, ptr %21, align 8, !tbaa !403
  store ptr %22, ptr %8, align 8, !tbaa !374
  br label %36

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !403
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef %26) #18
  %28 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %27) #18, !range !412
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !403
  br i1 %29, label %32, label %36, !prof !943

32:                                               ; preds = %24
  store ptr %10, ptr %30, align 8, !tbaa !403
  store ptr %31, ptr %8, align 8, !tbaa !374
  br label %36

33:                                               ; preds = %7
  %34 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !374
  br label %36

36:                                               ; preds = %24, %15, %32, %23, %33
  %37 = phi ptr [ %11, %33 ], [ %11, %32 ], [ %9, %23 ], [ %11, %15 ], [ %11, %24 ]
  %38 = phi ptr [ %10, %33 ], [ %9, %32 ], [ %10, %23 ], [ %10, %15 ], [ %10, %24 ]
  %39 = phi ptr [ %35, %33 ], [ %31, %32 ], [ %22, %23 ], [ %22, %15 ], [ %31, %24 ]
  %40 = phi ptr [ %34, %33 ], [ %8, %32 ], [ %8, %23 ], [ %21, %15 ], [ %30, %24 ]
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %7, !prof !944, !llvm.loop !945

42:                                               ; preds = %36, %3
  %43 = phi ptr [ null, %3 ], [ %37, %36 ]
  %44 = phi ptr [ null, %3 ], [ %38, %36 ]
  store ptr %43, ptr %1, align 8, !tbaa !374
  store ptr %44, ptr %2, align 8, !tbaa !374
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @df_ignore_stack_reg(i32 noundef %0) unnamed_addr #15 !prof !946 !PGOFuncName !947 {
  %2 = load i32, ptr @regstack_completed, align 4, !tbaa !410
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4, !prof !948

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
define internal fastcc ptr @df_set_unused_notes_for_mw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !400 !PGOFuncName !949 {
  %7 = tail call fastcc zeroext i8 @df_whole_mw_reg_unused_p(ptr noundef %2, ptr noundef %3, ptr noundef %5) #18, !range !412
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !904
  br i1 %8, label %15, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !950
  %13 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %1, ptr noundef %12) #18
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %10) #17
  br label %39

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !951
  %18 = icmp ugt i32 %10, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %15, %33
  %20 = phi ptr [ %34, %33 ], [ %1, %15 ]
  %21 = phi i32 [ %36, %33 ], [ %10, %15 ]
  %22 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %21) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %21) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !374
  %29 = zext i32 %21 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !374
  %32 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %20, ptr noundef %31) #18
  br label %33

33:                                               ; preds = %27, %24, %19
  %34 = phi ptr [ %20, %19 ], [ %20, %24 ], [ %32, %27 ]
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %21) #17
  %36 = add i32 %21, 1
  %37 = load i32, ptr %16, align 8, !tbaa !951
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %19, !llvm.loop !952

39:                                               ; preds = %33, %15, %11
  %40 = phi ptr [ %13, %11 ], [ %1, %15 ], [ %34, %33 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_create_unused_note(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !953 !PGOFuncName !954 {
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !403
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %41, !prof !955

10:                                               ; preds = %5
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 268435456
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41, !prof !956

14:                                               ; preds = %10
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %7) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41, !prof !956

17:                                               ; preds = %14
  %18 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %7) #18, !range !412
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %41, !prof !956

20:                                               ; preds = %17
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 254
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %35, !prof !957

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.df_regular_ref, ptr %2, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !403
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28, !prof !958

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !374
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 39
  %33 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %34 = select i1 %32, ptr %33, ptr %26
  br label %37

35:                                               ; preds = %20, %24
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %2, i64 0, i32 1
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %34, %28 ], [ %36, %35 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !403
  %40 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %1, ptr noundef %39) #18
  br label %41

41:                                               ; preds = %37, %17, %14, %10, %5
  %42 = phi ptr [ %1, %5 ], [ %1, %10 ], [ %1, %14 ], [ %1, %17 ], [ %40, %37 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_set_dead_notes_for_mw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !prof !400 !PGOFuncName !959 {
  %8 = load i8, ptr %6, align 1, !tbaa !403
  store i8 0, ptr %6, align 1, !tbaa !403
  %9 = tail call fastcc zeroext i8 @df_whole_mw_reg_dead_p(ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %4) #18, !range !412
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  store i8 1, ptr %6, align 1, !tbaa !403
  br label %49

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8, !tbaa !950
  %16 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef %0, ptr noundef %1, ptr noundef %15) #18
  br label %49

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !904
  %20 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !951
  %22 = icmp ugt i32 %19, %21
  br i1 %22, label %49, label %23

23:                                               ; preds = %17
  %24 = icmp eq i8 %8, 0
  br label %25

25:                                               ; preds = %23, %44
  %26 = phi i32 [ %19, %23 ], [ %46, %44 ]
  %27 = phi ptr [ %1, %23 ], [ %45, %44 ]
  %28 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %26) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %26) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %26) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  br i1 %24, label %38, label %37

37:                                               ; preds = %36
  store i8 1, ptr %6, align 1, !tbaa !403
  br label %49

38:                                               ; preds = %36
  %39 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !374
  %40 = zext i32 %26 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !374
  %43 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef %0, ptr noundef %27, ptr noundef %42) #18
  br label %44

44:                                               ; preds = %25, %30, %33, %38
  %45 = phi ptr [ %27, %25 ], [ %27, %30 ], [ %27, %33 ], [ %43, %38 ]
  %46 = add i32 %26, 1
  %47 = load i32, ptr %20, align 8, !tbaa !951
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %25, !llvm.loop !960

49:                                               ; preds = %44, %17, %14, %37, %13
  %50 = phi ptr [ %1, %13 ], [ %27, %37 ], [ %16, %14 ], [ %1, %17 ], [ %45, %44 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_set_note(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !961 !PGOFuncName !962 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %9, !prof !963

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #17
  br label %9

9:                                                ; preds = %4, %8
  %10 = icmp eq ptr %2, null
  br i1 %10, label %37, label %11, !prof !964

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !403
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %19, label %32, !prof !965

15:                                               ; preds = %32
  %16 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !403
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %32, !prof !966, !llvm.loop !967

19:                                               ; preds = %15, %11
  %20 = phi ptr [ null, %11 ], [ %33, %15 ]
  %21 = phi ptr [ %2, %11 ], [ %35, %15 ]
  %22 = icmp eq ptr %20, null
  %23 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !403
  br i1 %22, label %27, label %25, !prof !968

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %24, ptr %26, align 8, !tbaa !403
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi ptr [ %2, %25 ], [ %24, %19 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !403
  %31 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !403
  store ptr %21, ptr %29, align 8, !tbaa !403
  br label %38

32:                                               ; preds = %11, %15
  %33 = phi ptr [ %35, %15 ], [ %2, %11 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !403
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !prof !969, !llvm.loop !967

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
define internal fastcc noundef zeroext i8 @df_whole_mw_reg_unused_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !400 !PGOFuncName !970 {
  %4 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !904
  %11 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !951
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %25, label %18

14:                                               ; preds = %22
  %15 = add i32 %19, 1
  %16 = load i32, ptr %11, align 8, !tbaa !951
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %25, label %18, !llvm.loop !971

18:                                               ; preds = %8, %14
  %19 = phi i32 [ %15, %14 ], [ %10, %8 ]
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %19) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %19) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %14, label %31

25:                                               ; preds = %14, %8
  %26 = load ptr, ptr %0, align 8, !tbaa !950
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
define internal fastcc noundef zeroext i8 @df_whole_mw_reg_dead_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !400 !PGOFuncName !972 {
  %5 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !904
  %12 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !951
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %29, label %19

15:                                               ; preds = %26
  %16 = add i32 %20, 1
  %17 = load i32, ptr %12, align 8, !tbaa !951
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %29, label %19, !llvm.loop !973

19:                                               ; preds = %9, %15
  %20 = phi i32 [ %16, %15 ], [ %11, %9 ]
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %20) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %20) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %20) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %15, label %35

29:                                               ; preds = %15, %9
  %30 = load ptr, ptr %0, align 8, !tbaa !950
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
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !419 !PGOFuncName !974 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !409
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !411
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !412
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !975

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !374
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !415
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !427

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !412
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !976, !llvm.loop !977

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_alloc(ptr nocapture noundef readonly %0) #0 !prof !488 !PGOFuncName !978 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 7
  %6 = load ptr, ptr %5, align 8, !tbaa !374
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !514
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !979

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.48, i64 noundef 40, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !374
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 7
  %14 = load ptr, ptr %13, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !514
  %16 = load ptr, ptr %13, align 8, !tbaa !374
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  tail call void @df_grow_bb_info(ptr noundef %18) #18
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %19, ptr @df_md_scratch, align 8, !tbaa !374
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %55, label %22, !prof !807

22:                                               ; preds = %17, %52
  %23 = load i32, ptr %2, align 4, !tbaa !410
  %24 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %23) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26, !prof !980

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !981
  tail call void @bitmap_clear(ptr noundef %28) #17
  %29 = load ptr, ptr %24, align 8, !tbaa !983
  tail call void @bitmap_clear(ptr noundef %29) #17
  %30 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !984
  tail call void @bitmap_clear(ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !985
  tail call void @bitmap_clear(ptr noundef %33) #17
  %34 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !986
  tail call void @bitmap_clear(ptr noundef %35) #17
  br label %52

36:                                               ; preds = %22
  %37 = load ptr, ptr @df, align 8, !tbaa !374
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 7
  %39 = load ptr, ptr %38, align 8, !tbaa !374
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !514
  %42 = tail call ptr @pool_alloc(ptr noundef %41) #17
  tail call fastcc void @df_md_set_bb_info(i32 noundef %23, ptr noundef %42) #18
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %44 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !981
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %45, ptr %42, align 8, !tbaa !983
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %47 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !984
  %48 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %49 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !985
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %51 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 4
  store ptr %50, ptr %51, align 8, !tbaa !986
  br label %52

52:                                               ; preds = %36, %26
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %53 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %22, !prof !987, !llvm.loop !988

55:                                               ; preds = %52, %17
  %56 = load ptr, ptr @df, align 8, !tbaa !374
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 7
  %58 = load ptr, ptr %57, align 8, !tbaa !374
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 9
  store i8 1, ptr %59, align 2, !tbaa !611
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_reset(ptr nocapture noundef readonly %0) #0 !prof !400 !PGOFuncName !989 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4267, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !985
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !986
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !990

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !991 !PGOFuncName !992 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4, !prof !993

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !984
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !984
  %7 = load ptr, ptr %1, align 8, !tbaa !983
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !983
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !981
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !981
  %10 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !985
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !985
  %12 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !986
  tail call void @bitmap_obstack_free(ptr noundef %13) #17
  store ptr null, ptr %12, align 8, !tbaa !986
  %14 = load ptr, ptr @df, align 8, !tbaa !374
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 7
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !514
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_local_compute(ptr noundef %0) #0 !prof !488 !PGOFuncName !994 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %6, ptr @seen_in_insn, align 8, !tbaa !374
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !412
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9, !prof !807

9:                                                ; preds = %1, %9
  %10 = load i32, ptr %2, align 4, !tbaa !410
  tail call fastcc void @df_md_bb_local_compute(i32 noundef %10) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !412
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %9, !prof !987, !llvm.loop !995

13:                                               ; preds = %9
  %14 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %6, %1 ]
  tail call void @bitmap_obstack_free(ptr noundef %16) #17
  store ptr null, ptr @seen_in_insn, align 8, !tbaa !374
  %17 = load ptr, ptr @cfun, align 8, !tbaa !374
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !395
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !397
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr @xmalloc(i64 noundef %23) #17
  %25 = load ptr, ptr @cfun, align 8, !tbaa !374
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !395
  %28 = load ptr, ptr %27, align 8, !tbaa !374
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30, !prof !807

30:                                               ; preds = %15, %30
  %31 = phi ptr [ %38, %30 ], [ %28, %15 ]
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !379
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %24, i64 %35
  store ptr %32, ptr %36, align 8, !tbaa !374
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !374
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %30, !prof !987, !llvm.loop !996

40:                                               ; preds = %30, %15
  tail call void @compute_dominance_frontiers(ptr noundef %24) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !412
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %75, label %43, !prof !807

43:                                               ; preds = %40, %72
  %44 = load i32, ptr %2, align 4, !tbaa !410
  %45 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %44) #18
  %46 = getelementptr inbounds %struct.df_md_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !984
  %48 = zext i32 %44 to i64
  %49 = getelementptr inbounds ptr, ptr %24, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !374
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %50, i32 noundef 0, ptr noundef nonnull %3) #18
  %51 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #18, !range !412
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %72, label %53, !prof !997

53:                                               ; preds = %43, %69
  %54 = load ptr, ptr @cfun, align 8, !tbaa !374
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !395
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !459
  %59 = load i32, ptr %3, align 4, !tbaa !410
  %60 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %58, i32 noundef %59) #18
  %61 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %59) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63, !prof !998

63:                                               ; preds = %53
  %64 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %59) #18
  %65 = getelementptr inbounds %struct.df_md_bb_info, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !981
  %67 = tail call ptr @df_get_live_in(ptr noundef %60) #18
  %68 = tail call zeroext i8 @bitmap_ior_and_into(ptr noundef %66, ptr noundef %47, ptr noundef %67) #17
  br label %69

69:                                               ; preds = %63, %53
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #18
  %70 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #18, !range !412
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %53, !prof !999, !llvm.loop !1000

72:                                               ; preds = %69, %43
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #18
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !412
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %43, !prof !987, !llvm.loop !1001

75:                                               ; preds = %72, %40
  %76 = load ptr, ptr @cfun, align 8, !tbaa !374
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !395
  %79 = load ptr, ptr %78, align 8, !tbaa !374
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81, !prof !807

81:                                               ; preds = %75, %81
  %82 = phi ptr [ %92, %81 ], [ %79, %75 ]
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !379
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %24, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !374
  tail call void @bitmap_obstack_free(ptr noundef %87) #17
  %88 = load i32, ptr %83, align 8, !tbaa !379
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %24, i64 %89
  store ptr null, ptr %90, align 8, !tbaa !374
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !374
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %81, !prof !987, !llvm.loop !1002

94:                                               ; preds = %81, %75
  tail call void @free(ptr noundef %24) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_init(ptr nocapture noundef readonly %0) #0 !prof !488 !PGOFuncName !1003 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6, !prof !807

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !410
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !985
  %11 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !981
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = tail call zeroext i8 @df_md_transfer_function(i32 noundef %7) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !412
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %6, !prof !987, !llvm.loop !1004

16:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_confluence_0(ptr nocapture noundef readonly %0) #0 !prof !488 !PGOFuncName !1005 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !379
  %4 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %3) #18
  %5 = getelementptr inbounds %struct.df_md_bb_info, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !985
  %7 = getelementptr inbounds %struct.df_md_bb_info, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !981
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_confluence_n(ptr nocapture noundef readonly %0) #0 !prof !1006 !PGOFuncName !1007 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !417
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !379
  %6 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %5) #18
  %7 = getelementptr inbounds %struct.df_md_bb_info, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !985
  %9 = load ptr, ptr %0, align 8, !tbaa !413
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !379
  %12 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %11) #18
  %13 = getelementptr inbounds %struct.df_md_bb_info, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !986
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !415
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27, !prof !1008

19:                                               ; preds = %1
  %20 = and i32 %16, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !1008

22:                                               ; preds = %19
  %23 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !374
  %24 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %8, ptr noundef %14, ptr noundef %23) #17
  br label %27

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %8, ptr noundef %14) #17
  br label %27

27:                                               ; preds = %22, %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_md_transfer_function(i32 noundef %0) #0 !prof !1009 !PGOFuncName !1010 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !459
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %0) #18
  %9 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !985
  %11 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !986
  %13 = load ptr, ptr %8, align 8, !tbaa !983
  %14 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !984
  %16 = load ptr, ptr @df_md_scratch, align 8, !tbaa !374
  %17 = tail call ptr @df_get_live_out(ptr noundef %7) #18
  tail call void @bitmap_and(ptr noundef %16, ptr noundef %13, ptr noundef %17) #17
  %18 = tail call ptr @df_get_live_in(ptr noundef %7) #18
  tail call void @bitmap_and_into(ptr noundef %10, ptr noundef %18) #17
  %19 = load ptr, ptr @df_md_scratch, align 8, !tbaa !374
  %20 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %12, ptr noundef %19, ptr noundef %10, ptr noundef %15) #17
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_free() #0 !prof !488 !PGOFuncName !1011 {
  %1 = load ptr, ptr @df, align 8, !tbaa !374
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 7
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !385
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7, !prof !807

7:                                                ; preds = %0, %23
  %8 = phi ptr [ %24, %23 ], [ %1, %0 ]
  %9 = phi i32 [ %25, %23 ], [ 0, %0 ]
  %10 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12, !prof !1012

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !984
  tail call void @bitmap_obstack_free(ptr noundef %14) #17
  store ptr null, ptr %13, align 8, !tbaa !984
  %15 = load ptr, ptr %10, align 8, !tbaa !983
  tail call void @bitmap_obstack_free(ptr noundef %15) #17
  store ptr null, ptr %10, align 8, !tbaa !983
  %16 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !981
  tail call void @bitmap_obstack_free(ptr noundef %17) #17
  store ptr null, ptr %16, align 8, !tbaa !981
  %18 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !985
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %18, align 8, !tbaa !985
  %20 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !986
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !986
  %22 = load ptr, ptr @df, align 8, !tbaa !374
  br label %23

23:                                               ; preds = %12, %7
  %24 = phi ptr [ %22, %12 ], [ %8, %7 ]
  %25 = add nuw i32 %9, 1
  %26 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 1, i64 7
  %27 = load ptr, ptr %26, align 8, !tbaa !374
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !385
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %7, label %31, !prof !1013, !llvm.loop !1014

31:                                               ; preds = %23, %0
  %32 = load ptr, ptr @df_md_scratch, align 8, !tbaa !374
  tail call void @bitmap_obstack_free(ptr noundef %32) #17
  store ptr null, ptr @df_md_scratch, align 8, !tbaa !374
  %33 = load ptr, ptr @df, align 8, !tbaa !374
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 1, i64 7
  %35 = load ptr, ptr %34, align 8, !tbaa !374
  %36 = getelementptr inbounds %struct.dataflow, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !514
  tail call void @free_alloc_pool(ptr noundef %37) #17
  %38 = load ptr, ptr @df, align 8, !tbaa !374
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1, i64 7
  %40 = load ptr, ptr %39, align 8, !tbaa !374
  %41 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 2
  store i32 0, ptr %41, align 8, !tbaa !385
  %42 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !388
  tail call void @free(ptr noundef %43) #18
  %44 = load ptr, ptr @df, align 8, !tbaa !374
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 1, i64 7
  %46 = load ptr, ptr %45, align 8, !tbaa !374
  tail call void @free(ptr noundef %46) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !1015 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !985
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !985
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 14, i64 1, ptr %1)
  %15 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !981
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %16) #17
  %17 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 12, i64 1, ptr %1)
  %18 = load ptr, ptr %5, align 8, !tbaa !983
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %18) #17
  %19 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 13, i64 1, ptr %1)
  %20 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !984
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %21) #17
  br label %22

22:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !400 !PGOFuncName !1016 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !379
  %5 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !986
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !986
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  br label %14

14:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_md_get_bb_info(i32 noundef %0) unnamed_addr #2 !prof !1017 !PGOFuncName !1018 {
  %2 = load ptr, ptr @df, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 7
  %4 = load ptr, ptr %3, align 8, !tbaa !374
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !385
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !1019

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !388
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !374
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_md_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1020 !PGOFuncName !1021 {
  %3 = load ptr, ptr @df, align 8, !tbaa !374
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 7
  %5 = load ptr, ptr %4, align 8, !tbaa !374
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !1022

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4030, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 7
  %10 = load ptr, ptr %9, align 8, !tbaa !374
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !385
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16, !prof !980

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4031, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !374
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 7
  %19 = load ptr, ptr %18, align 8, !tbaa !374
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !388
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !374
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_md_bb_local_compute(i32 noundef %0) unnamed_addr #0 !prof !1020 !PGOFuncName !1023 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !459
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %0) #18
  %9 = load ptr, ptr @df, align 8, !tbaa !374
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 27
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16, !prof !980

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_md_bb_local_compute_process_def(ptr noundef %8, ptr noundef %15, i32 noundef 2) #18
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !403
  %19 = load ptr, ptr %18, align 8, !tbaa !403
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21, !prof !1024

21:                                               ; preds = %16, %45
  %22 = phi ptr [ %47, %45 ], [ %19, %16 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !403
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !497
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !403
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %49, label %29, !prof !1025

29:                                               ; preds = %21
  %30 = load i32, ptr %22, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %45, !prof !1026

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !403
  %37 = load ptr, ptr @df, align 8, !tbaa !374
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !444
  %40 = zext i32 %36 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !374
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !445
  tail call fastcc void @df_md_bb_local_compute_process_def(ptr noundef %8, ptr noundef %44, i32 noundef 0) #18
  br label %45

45:                                               ; preds = %29, %34
  %46 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !403
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %21, !prof !1027, !llvm.loop !1028

49:                                               ; preds = %21, %45, %16
  %50 = load ptr, ptr @df, align 8, !tbaa !374
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 27
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57, !prof !980

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
define internal fastcc void @df_md_bb_local_compute_process_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1029 !PGOFuncName !1030 {
  %4 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  tail call void @bitmap_clear(ptr noundef %4) #17
  %5 = load ptr, ptr %1, align 8, !tbaa !374
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7, !prof !1031

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %45
  %10 = phi ptr [ %5, %7 ], [ %46, %45 ]
  %11 = phi ptr [ %1, %7 ], [ %12, %45 ]
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !403
  %15 = load ptr, ptr @df, align 8, !tbaa !374
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 27
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !1032

20:                                               ; preds = %9
  %21 = icmp ugt i32 %14, 52
  br i1 %21, label %22, label %45

22:                                               ; preds = %20, %9
  %23 = load i32, ptr %10, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %45, !prof !1033

27:                                               ; preds = %22
  %28 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %28, i32 noundef %14) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45, !prof !1034

31:                                               ; preds = %27
  %32 = load i32, ptr %10, align 8
  %33 = and i32 %32, 5308416
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38, !prof !1035

35:                                               ; preds = %31
  %36 = load ptr, ptr @seen_in_insn, align 8, !tbaa !374
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %36, i32 noundef %14) #17
  br label %38

38:                                               ; preds = %31, %35
  %39 = phi ptr [ %8, %35 ], [ %0, %31 ]
  %40 = phi ptr [ %0, %35 ], [ %8, %31 ]
  %41 = load ptr, ptr %39, align 8, !tbaa !374
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %41, i32 noundef %14) #17
  %43 = load ptr, ptr %40, align 8, !tbaa !374
  %44 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %43, i32 noundef %14) #17
  br label %45

45:                                               ; preds = %38, %27, %22, %20
  %46 = load ptr, ptr %12, align 8, !tbaa !374
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %9, !prof !1036, !llvm.loop !1037

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!372}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!35 = !{ptr @df_get_live_out, ptr @fancy_abort, i64 1}
!36 = !{ptr @df_get_live_out, ptr @df_live_get_bb_info, i64 3025091}
!37 = !{ptr @df_get_live_out, ptr @df_lr_get_bb_info, i64 1}
!38 = !{ptr @df_get_live_in, ptr @fancy_abort, i64 1}
!39 = !{ptr @df_get_live_in, ptr @df_live_get_bb_info, i64 1670803}
!40 = !{ptr @df_get_live_in, ptr @df_lr_get_bb_info, i64 1}
!41 = !{ptr @df_grow_bb_info, ptr @xrealloc, i64 284}
!42 = !{ptr @ei_cond, ptr @ei_end_p, i64 10310389}
!43 = !{ptr @ei_cond, ptr @ei_edge, i64 6631595}
!44 = !{ptr @ei_next, ptr @ei_container, i64 13263189}
!45 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 6631595}
!46 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!47 = !{ptr @df_rd_simulate_artificial_defs_at_top, ptr @df_get_artificial_defs, i64 153687}
!48 = !{ptr @df_rd_simulate_artificial_defs_at_top, ptr @bitmap_set_bit, i64 1}
!49 = !{ptr @df_get_artificial_defs, ptr @df_scan_get_bb_info, i64 8932469}
!50 = !{ptr @df_rd_simulate_one_insn, ptr @bitmap_clear_range, i64 3570962}
!51 = !{ptr @df_rd_simulate_one_insn, ptr @bitmap_set_bit, i64 440914}
!52 = !{ptr @df_lr_add_problem, ptr @df_add_problem, i64 38}
!53 = !{ptr @df_lr_add_problem, ptr @bitmap_obstack_alloc_stat, i64 38}
!54 = !{ptr @df_lr_bb_local_compute, ptr @VEC_basic_block_base_index, i64 797615}
!55 = !{ptr @df_lr_bb_local_compute, ptr @df_lr_get_bb_info, i64 797615}
!56 = !{ptr @df_lr_bb_local_compute, ptr @df_get_artificial_defs, i64 1595230}
!57 = !{ptr @df_lr_bb_local_compute, ptr @bitmap_set_bit, i64 21474156}
!58 = !{ptr @df_lr_bb_local_compute, ptr @bitmap_clear_bit, i64 16447704}
!59 = !{ptr @df_lr_bb_local_compute, ptr @df_get_artificial_uses, i64 797615}
!60 = !{ptr @df_lr_bb_local_compute, ptr @df_recompute_luids, i64 1}
!61 = !{ptr @df_live_add_problem, ptr @df_add_problem, i64 76}
!62 = !{ptr @df_live_add_problem, ptr @bitmap_obstack_alloc_stat, i64 76}
!63 = !{ptr @df_live_bb_local_compute, ptr @VEC_basic_block_base_index, i64 797725}
!64 = !{ptr @df_live_bb_local_compute, ptr @df_live_get_bb_info, i64 797725}
!65 = !{ptr @df_live_bb_local_compute, ptr @fancy_abort, i64 4}
!66 = !{ptr @df_live_bb_local_compute, ptr @df_insn_create_insn_record, i64 129624}
!67 = !{ptr @df_live_bb_local_compute, ptr @bitmap_set_bit, i64 1900608}
!68 = !{ptr @df_live_bb_local_compute, ptr @df_get_artificial_defs, i64 797725}
!69 = !{ptr @df_chain_create, ptr @pool_alloc, i64 1287206}
!70 = !{ptr @df_chain_add_problem, ptr @df_add_problem, i64 38}
!71 = !{ptr @df_chain_add_problem, ptr @bitmap_obstack_alloc_stat, i64 38}
!72 = !{ptr @df_get_artificial_uses, ptr @df_scan_get_bb_info, i64 4363115}
!73 = !{ptr @df_note_add_problem, ptr @df_add_problem, i64 342}
!74 = !{ptr @df_simulate_find_defs, ptr @bitmap_set_bit, i64 14206460}
!75 = !{ptr @df_simulate_defs, ptr @bitmap_clear_bit, i64 35003766}
!76 = !{ptr @df_simulate_uses, ptr @bitmap_set_bit, i64 5472489}
!77 = !{ptr @df_simulate_initialize_backwards, ptr @df_get_artificial_defs, i64 1613940}
!78 = !{ptr @df_simulate_initialize_backwards, ptr @bitmap_clear_bit, i64 1}
!79 = !{ptr @df_simulate_initialize_backwards, ptr @df_get_artificial_uses, i64 1613940}
!80 = !{ptr @df_simulate_initialize_backwards, ptr @bitmap_set_bit, i64 4840665}
!81 = !{ptr @df_simulate_one_insn_backwards, ptr @df_simulate_defs, i64 1077322}
!82 = !{ptr @df_simulate_one_insn_backwards, ptr @df_simulate_uses, i64 1077322}
!83 = !{ptr @df_simulate_one_insn_backwards, ptr @df_simulate_fixup_sets, i64 1077322}
!84 = !{ptr @df_simulate_fixup_sets, ptr @bb_has_eh_pred, i64 3678794}
!85 = !{ptr @df_simulate_fixup_sets, ptr @bitmap_ior_into, i64 3678794}
!86 = !{ptr @df_simulate_finalize_backwards, ptr @df_get_artificial_defs, i64 1398846}
!87 = !{ptr @df_simulate_initialize_forwards, ptr @df_get_artificial_defs, i64 680059}
!88 = !{ptr @df_simulate_initialize_forwards, ptr @bitmap_clear_bit, i64 1}
!89 = !{ptr @df_simulate_one_insn_forwards, ptr @fancy_abort, i64 1}
!90 = !{ptr @df_simulate_one_insn_forwards, ptr @df_simulate_find_defs, i64 2601469}
!91 = !{ptr @df_simulate_one_insn_forwards, ptr @rhs_regno, i64 1503633}
!92 = !{ptr @df_simulate_one_insn_forwards, ptr @bitmap_clear_bit, i64 1503632}
!93 = !{ptr @df_simulate_one_insn_forwards, ptr @df_simulate_fixup_sets, i64 2601469}
!94 = !{ptr @df_md_add_problem, ptr @df_add_problem, i64 76}
!95 = !{ptr @ei_end_p, ptr @ei_container, i64 20620777}
!96 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 10310389}
!97 = !{ptr @ei_edge, ptr @ei_container, i64 13263189}
!98 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 6631595}
!99 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!100 = !{ptr @df_rd_alloc, ptr @create_alloc_pool, i64 37}
!101 = !{ptr @df_rd_alloc, ptr @bitmap_clear, i64 5}
!102 = !{ptr @df_rd_alloc, ptr @xmalloc, i64 37}
!103 = !{ptr @df_rd_alloc, ptr @bitmap_obstack_initialize, i64 37}
!104 = !{ptr @df_rd_alloc, ptr @bitmap_obstack_alloc_stat, i64 748804}
!105 = !{ptr @df_rd_alloc, ptr @df_grow_bb_info, i64 38}
!106 = !{ptr @df_rd_alloc, ptr @bmp_iter_set_init, i64 38}
!107 = !{ptr @df_rd_alloc, ptr @bmp_iter_set, i64 149785}
!108 = !{ptr @df_rd_alloc, ptr @df_rd_get_bb_info, i64 149747}
!109 = !{ptr @df_rd_alloc, ptr @pool_alloc, i64 149746}
!110 = !{ptr @df_rd_alloc, ptr @df_rd_set_bb_info, i64 149746}
!111 = !{ptr @df_rd_alloc, ptr @bmp_iter_next, i64 149747}
!112 = !{ptr @df_rd_local_compute, ptr @bitmap_obstack_alloc_stat, i64 76}
!113 = !{ptr @df_rd_local_compute, ptr @df_maybe_reorganize_def_refs, i64 38}
!114 = !{ptr @df_rd_local_compute, ptr @bmp_iter_set_init, i64 76}
!115 = !{ptr @df_rd_local_compute, ptr @bmp_iter_set, i64 151527}
!116 = !{ptr @df_rd_local_compute, ptr @df_rd_bb_local_compute, i64 149747}
!117 = !{ptr @df_rd_local_compute, ptr @bmp_iter_next, i64 151451}
!118 = !{ptr @df_rd_local_compute, ptr @bitmap_set_bit, i64 1128}
!119 = !{ptr @df_rd_local_compute, ptr @bitmap_set_range, i64 576}
!120 = !{ptr @df_rd_local_compute, ptr @bitmap_obstack_free, i64 76}
!121 = !{ptr @df_rd_init_solution, ptr @bmp_iter_set_init, i64 38}
!122 = !{ptr @df_rd_init_solution, ptr @bmp_iter_set, i64 149785}
!123 = !{ptr @df_rd_init_solution, ptr @df_rd_get_bb_info, i64 149747}
!124 = !{ptr @df_rd_init_solution, ptr @bitmap_copy, i64 149747}
!125 = !{ptr @df_rd_init_solution, ptr @bitmap_clear, i64 149747}
!126 = !{ptr @df_rd_init_solution, ptr @bmp_iter_next, i64 149747}
!127 = !{ptr @df_rd_confluence_n, ptr @df_rd_get_bb_info, i64 1217944}
!128 = !{ptr @df_rd_confluence_n, ptr @bitmap_obstack_alloc_stat, i64 1}
!129 = !{ptr @df_rd_confluence_n, ptr @bitmap_copy, i64 1}
!130 = !{ptr @df_rd_confluence_n, ptr @bitmap_and_compl_into, i64 1}
!131 = !{ptr @df_rd_confluence_n, ptr @bmp_iter_set_init, i64 1}
!132 = !{ptr @df_rd_confluence_n, ptr @bmp_iter_set, i64 21}
!133 = !{ptr @df_rd_confluence_n, ptr @bitmap_clear_range, i64 20}
!134 = !{ptr @df_rd_confluence_n, ptr @bmp_iter_next, i64 20}
!135 = !{ptr @df_rd_confluence_n, ptr @bitmap_ior_into, i64 608971}
!136 = !{ptr @df_rd_confluence_n, ptr @bitmap_obstack_free, i64 1}
!137 = !{ptr @df_rd_transfer_function, ptr @df_rd_get_bb_info, i64 307298}
!138 = !{ptr @df_rd_transfer_function, ptr @bitmap_ior_and_compl, i64 2088}
!139 = !{ptr @df_rd_transfer_function, ptr @bitmap_obstack_alloc_stat, i64 305210}
!140 = !{ptr @df_rd_transfer_function, ptr @bitmap_copy, i64 305210}
!141 = !{ptr @df_rd_transfer_function, ptr @bmp_iter_set_init, i64 305210}
!142 = !{ptr @df_rd_transfer_function, ptr @bmp_iter_set, i64 845682}
!143 = !{ptr @df_rd_transfer_function, ptr @bitmap_clear_range, i64 540472}
!144 = !{ptr @df_rd_transfer_function, ptr @bmp_iter_next, i64 540472}
!145 = !{ptr @df_rd_transfer_function, ptr @bitmap_and_compl_into, i64 305210}
!146 = !{ptr @df_rd_transfer_function, ptr @bitmap_ior_into, i64 305210}
!147 = !{ptr @df_rd_transfer_function, ptr @bitmap_equal_p, i64 305210}
!148 = !{ptr @df_rd_transfer_function, ptr @bitmap_obstack_free, i64 305211}
!149 = !{ptr @df_rd_free, ptr @free_alloc_pool, i64 37}
!150 = !{ptr @df_rd_free, ptr @bitmap_obstack_release, i64 37}
!151 = !{ptr @df_rd_free, ptr @free, i64 112}
!152 = !{ptr @df_rd_set_bb_info, ptr @fancy_abort, i64 2}
!153 = !{ptr @df_rd_bb_local_compute, ptr @VEC_basic_block_base_index, i64 153687}
!154 = !{ptr @df_rd_bb_local_compute, ptr @df_rd_get_bb_info, i64 153687}
!155 = !{ptr @df_rd_bb_local_compute, ptr @bitmap_clear, i64 977082}
!156 = !{ptr @df_rd_bb_local_compute, ptr @df_get_artificial_defs, i64 307372}
!157 = !{ptr @df_rd_bb_local_compute, ptr @df_rd_bb_local_compute_process_def, i64 977080}
!158 = !{ptr @df_rd_bb_local_compute, ptr @bitmap_ior_into, i64 669708}
!159 = !{ptr @df_rd_bb_local_compute_process_def, ptr @bitmap_bit_p, i64 6985570}
!160 = !{ptr @df_rd_bb_local_compute_process_def, ptr @bitmap_set_bit, i64 4098299}
!161 = !{ptr @df_rd_bb_local_compute_process_def, ptr @bitmap_set_range, i64 146212}
!162 = !{ptr @df_rd_bb_local_compute_process_def, ptr @bitmap_clear_range, i64 416503}
!163 = !{ptr @df_lr_alloc, ptr @create_alloc_pool, i64 39}
!164 = !{ptr @df_lr_alloc, ptr @df_grow_bb_info, i64 601}
!165 = !{ptr @df_lr_alloc, ptr @bmp_iter_set_init, i64 601}
!166 = !{ptr @df_lr_alloc, ptr @bmp_iter_set, i64 797006}
!167 = !{ptr @df_lr_alloc, ptr @df_lr_get_bb_info, i64 796405}
!168 = !{ptr @df_lr_alloc, ptr @bitmap_clear, i64 1088096}
!169 = !{ptr @df_lr_alloc, ptr @pool_alloc, i64 252357}
!170 = !{ptr @df_lr_alloc, ptr @df_lr_set_bb_info, i64 252357}
!171 = !{ptr @df_lr_alloc, ptr @bitmap_obstack_alloc_stat, i64 1009428}
!172 = !{ptr @df_lr_alloc, ptr @bmp_iter_next, i64 796405}
!173 = !{ptr @df_lr_free_bb_info, ptr @bitmap_obstack_free, i64 396916}
!174 = !{ptr @df_lr_free_bb_info, ptr @pool_free, i64 99229}
!175 = !{ptr @df_lr_local_compute, ptr @bitmap_clear, i64 1202}
!176 = !{ptr @df_lr_local_compute, ptr @bitmap_set_bit, i64 1359}
!177 = !{ptr @df_lr_local_compute, ptr @bmp_iter_set_init, i64 601}
!178 = !{ptr @df_lr_local_compute, ptr @bmp_iter_set, i64 797006}
!179 = !{ptr @df_lr_local_compute, ptr @df_lr_get_bb_info, i64 115}
!180 = !{ptr @df_lr_local_compute, ptr @bitmap_copy, i64 115}
!181 = !{ptr @df_lr_local_compute, ptr @df_lr_bb_local_compute, i64 796290}
!182 = !{ptr @df_lr_local_compute, ptr @bmp_iter_next, i64 796405}
!183 = !{ptr @df_lr_init, ptr @bmp_iter_set_init, i64 601}
!184 = !{ptr @df_lr_init, ptr @bmp_iter_set, i64 2861981}
!185 = !{ptr @df_lr_init, ptr @df_lr_get_bb_info, i64 2861380}
!186 = !{ptr @df_lr_init, ptr @bitmap_copy, i64 2861380}
!187 = !{ptr @df_lr_init, ptr @bitmap_clear, i64 2861380}
!188 = !{ptr @df_lr_init, ptr @bmp_iter_next, i64 2861380}
!189 = !{ptr @df_lr_confluence_0, ptr @df_lr_get_bb_info, i64 898}
!190 = !{ptr @df_lr_confluence_0, ptr @bitmap_copy, i64 898}
!191 = !{ptr @df_lr_confluence_n, ptr @df_lr_get_bb_info, i64 20233182}
!192 = !{ptr @df_lr_confluence_n, ptr @bitmap_ior_and_compl_into, i64 1}
!193 = !{ptr @df_lr_confluence_n, ptr @bitmap_ior_into, i64 20233181}
!194 = !{ptr @df_lr_transfer_function, ptr @df_lr_get_bb_info, i64 5230141}
!195 = !{ptr @df_lr_transfer_function, ptr @bitmap_ior_and_compl, i64 5230141}
!196 = !{ptr @df_lr_finalize, ptr @run_fast_df_dce, i64 240}
!197 = !{ptr @df_lr_finalize, ptr @df_clear_flags, i64 3}
!198 = !{ptr @df_lr_finalize, ptr @df_lr_alloc, i64 3}
!199 = !{ptr @df_lr_finalize, ptr @df_lr_local_compute, i64 3}
!200 = !{ptr @df_lr_finalize, ptr @df_worklist_dataflow, i64 3}
!201 = !{ptr @df_lr_finalize, ptr @df_lr_finalize, i64 3}
!202 = !{ptr @df_lr_finalize, ptr @df_set_flags, i64 3}
!203 = !{ptr @df_lr_free, ptr @df_lr_get_bb_info, i64 257851}
!204 = !{ptr @df_lr_free, ptr @bitmap_obstack_free, i64 583514}
!205 = !{ptr @df_lr_free, ptr @free_alloc_pool, i64 37}
!206 = !{ptr @df_lr_free, ptr @free, i64 75}
!207 = !{ptr @df_lr_set_bb_info, ptr @fancy_abort, i64 2}
!208 = !{ptr @df_live_alloc, ptr @create_alloc_pool, i64 39}
!209 = !{ptr @df_live_alloc, ptr @bitmap_obstack_alloc_stat, i64 1009459}
!210 = !{ptr @df_live_alloc, ptr @df_grow_bb_info, i64 599}
!211 = !{ptr @df_live_alloc, ptr @bmp_iter_set_init, i64 599}
!212 = !{ptr @df_live_alloc, ptr @bmp_iter_set, i64 796995}
!213 = !{ptr @df_live_alloc, ptr @df_live_get_bb_info, i64 796396}
!214 = !{ptr @df_live_alloc, ptr @bitmap_clear, i64 1088082}
!215 = !{ptr @df_live_alloc, ptr @pool_alloc, i64 252355}
!216 = !{ptr @df_live_alloc, ptr @df_live_set_bb_info, i64 252355}
!217 = !{ptr @df_live_alloc, ptr @bmp_iter_next, i64 796396}
!218 = !{ptr @df_live_free_bb_info, ptr @bitmap_obstack_free, i64 396916}
!219 = !{ptr @df_live_free_bb_info, ptr @pool_free, i64 99229}
!220 = !{ptr @df_live_local_compute, ptr @df_grow_insn_info, i64 599}
!221 = !{ptr @df_live_local_compute, ptr @bmp_iter_set_init, i64 599}
!222 = !{ptr @df_live_local_compute, ptr @bmp_iter_set, i64 796995}
!223 = !{ptr @df_live_local_compute, ptr @df_live_bb_local_compute, i64 796396}
!224 = !{ptr @df_live_local_compute, ptr @bmp_iter_next, i64 796396}
!225 = !{ptr @df_live_local_compute, ptr @bitmap_clear, i64 599}
!226 = !{ptr @df_live_init, ptr @bmp_iter_set_init, i64 599}
!227 = !{ptr @df_live_init, ptr @bmp_iter_set, i64 2861622}
!228 = !{ptr @df_live_init, ptr @df_live_get_bb_info, i64 2861023}
!229 = !{ptr @df_live_init, ptr @df_lr_get_bb_info, i64 2861023}
!230 = !{ptr @df_live_init, ptr @bitmap_and, i64 2861023}
!231 = !{ptr @df_live_init, ptr @bitmap_clear, i64 2861023}
!232 = !{ptr @df_live_init, ptr @bmp_iter_next, i64 2861023}
!233 = !{ptr @df_live_confluence_n, ptr @df_live_get_bb_info, i64 21739956}
!234 = !{ptr @df_live_confluence_n, ptr @bitmap_ior_into, i64 10869978}
!235 = !{ptr @df_live_transfer_function, ptr @df_live_get_bb_info, i64 5730394}
!236 = !{ptr @df_live_transfer_function, ptr @df_lr_get_bb_info, i64 5730394}
!237 = !{ptr @df_live_transfer_function, ptr @bitmap_and, i64 5730394}
!238 = !{ptr @df_live_transfer_function, ptr @bitmap_and_into, i64 5730394}
!239 = !{ptr @df_live_transfer_function, ptr @bitmap_ior_and_compl, i64 5730394}
!240 = !{ptr @df_live_finalize, ptr @bmp_iter_set_init, i64 598}
!241 = !{ptr @df_live_finalize, ptr @bmp_iter_set, i64 2856861}
!242 = !{ptr @df_live_finalize, ptr @df_lr_get_bb_info, i64 2856263}
!243 = !{ptr @df_live_finalize, ptr @df_live_get_bb_info, i64 2856263}
!244 = !{ptr @df_live_finalize, ptr @bitmap_and_into, i64 5712526}
!245 = !{ptr @df_live_finalize, ptr @bmp_iter_next, i64 2856263}
!246 = !{ptr @df_live_free, ptr @df_live_get_bb_info, i64 257851}
!247 = !{ptr @df_live_free, ptr @bitmap_obstack_free, i64 583550}
!248 = !{ptr @df_live_free, ptr @free_alloc_pool, i64 37}
!249 = !{ptr @df_live_free, ptr @free, i64 75}
!250 = !{ptr @df_live_set_bb_info, ptr @fancy_abort, i64 2}
!251 = !{ptr @df_chain_alloc, ptr @df_chain_remove_problem, i64 38}
!252 = !{ptr @df_chain_alloc, ptr @create_alloc_pool, i64 38}
!253 = !{ptr @df_chain_finalize, ptr @bmp_iter_set_init, i64 38}
!254 = !{ptr @df_chain_finalize, ptr @bmp_iter_set, i64 149785}
!255 = !{ptr @df_chain_finalize, ptr @df_chain_create_bb, i64 149747}
!256 = !{ptr @df_chain_finalize, ptr @bmp_iter_next, i64 149747}
!257 = !{ptr @df_chain_fully_remove_problem, ptr @df_chain_remove_problem, i64 38}
!258 = !{ptr @df_chain_fully_remove_problem, ptr @bitmap_obstack_free, i64 38}
!259 = !{ptr @df_chain_fully_remove_problem, ptr @free, i64 38}
!260 = !{ptr @df_chain_remove_problem, ptr @free_alloc_pool, i64 38}
!261 = !{ptr @df_chain_remove_problem, ptr @bmp_iter_set_init, i64 76}
!262 = !{ptr @df_chain_remove_problem, ptr @bmp_iter_set, i64 151768}
!263 = !{ptr @df_chain_remove_problem, ptr @VEC_basic_block_base_index, i64 151692}
!264 = !{ptr @df_chain_remove_problem, ptr @df_get_artificial_defs, i64 1}
!265 = !{ptr @df_chain_remove_problem, ptr @df_get_artificial_uses, i64 151691}
!266 = !{ptr @df_chain_remove_problem, ptr @bmp_iter_next, i64 151692}
!267 = !{ptr @df_chain_remove_problem, ptr @bitmap_clear, i64 76}
!268 = !{ptr @df_chain_create_bb, ptr @VEC_basic_block_base_index, i64 153687}
!269 = !{ptr @df_chain_create_bb, ptr @df_rd_get_bb_info, i64 153687}
!270 = !{ptr @df_chain_create_bb, ptr @bitmap_obstack_alloc_stat, i64 153687}
!271 = !{ptr @df_chain_create_bb, ptr @bitmap_copy, i64 153687}
!272 = !{ptr @df_chain_create_bb, ptr @bitmap_set_bit, i64 153687}
!273 = !{ptr @df_chain_create_bb, ptr @df_rd_simulate_artificial_defs_at_top, i64 153687}
!274 = !{ptr @df_chain_create_bb, ptr @df_chain_create_bb_process_use, i64 823395}
!275 = !{ptr @df_chain_create_bb, ptr @df_rd_simulate_one_insn, i64 669708}
!276 = !{ptr @df_chain_create_bb, ptr @df_get_artificial_uses, i64 153686}
!277 = !{ptr @df_chain_create_bb, ptr @bitmap_obstack_free, i64 153687}
!278 = !{ptr @df_chain_create_bb_process_use, ptr @bmp_iter_set_init, i64 1229786}
!279 = !{ptr @df_chain_create_bb_process_use, ptr @bmp_iter_set, i64 2543218}
!280 = !{ptr @df_chain_create_bb_process_use, ptr @df_chain_create, i64 1313432}
!281 = !{ptr @df_chain_create_bb_process_use, ptr @bmp_iter_next, i64 1313432}
!282 = !{ptr @df_note_compute, ptr @bitmap_obstack_alloc_stat, i64 1185}
!283 = !{ptr @df_note_compute, ptr @bmp_iter_set_init, i64 395}
!284 = !{ptr @df_note_compute, ptr @bmp_iter_set, i64 1640430}
!285 = !{ptr @df_note_compute, ptr @df_note_bb_compute, i64 1640035}
!286 = !{ptr @df_note_compute, ptr @bmp_iter_next, i64 1640035}
!287 = !{ptr @df_note_compute, ptr @bitmap_obstack_free, i64 1185}
!288 = !{ptr @df_note_free, ptr @free, i64 342}
!289 = !{ptr @df_note_bb_compute, ptr @VEC_basic_block_base_index, i64 1644186}
!290 = !{ptr @df_note_bb_compute, ptr @df_get_live_out, i64 1644186}
!291 = !{ptr @df_note_bb_compute, ptr @bitmap_copy, i64 1644186}
!292 = !{ptr @df_note_bb_compute, ptr @bitmap_clear, i64 7926558}
!293 = !{ptr @df_note_bb_compute, ptr @df_get_artificial_defs, i64 1644186}
!294 = !{ptr @df_note_bb_compute, ptr @bitmap_clear_bit, i64 35098951}
!295 = !{ptr @df_note_bb_compute, ptr @df_get_artificial_uses, i64 1644186}
!296 = !{ptr @df_note_bb_compute, ptr @bitmap_set_bit, i64 18390048}
!297 = !{ptr @df_note_bb_compute, ptr @df_kill_notes, i64 6282372}
!298 = !{ptr @df_note_bb_compute, ptr @df_create_unused_note, i64 4053474}
!299 = !{ptr @df_note_bb_compute, ptr @bitmap_bit_p, i64 12326466}
!300 = !{ptr @df_note_bb_compute, ptr @df_ignore_stack_reg, i64 3307065}
!301 = !{ptr @df_note_bb_compute, ptr @df_set_note, i64 3307064}
!302 = !{ptr @df_note_bb_compute, ptr @free_EXPR_LIST_node, i64 19315}
!303 = !{ptr @df_note_bb_compute, ptr @gen_rtx_fmt_e_stat, i64 1}
!304 = !{ptr @df_note_bb_compute, ptr @df_insn_rescan_debug_internal, i64 1}
!305 = !{ptr @df_kill_notes, ptr @rhs_regno, i64 2744378}
!306 = !{ptr @df_kill_notes, ptr @df_ignore_stack_reg, i64 2744378}
!307 = !{ptr @df_create_unused_note, ptr @bitmap_bit_p, i64 4227968}
!308 = !{ptr @df_create_unused_note, ptr @df_ignore_stack_reg, i64 168316}
!309 = !{ptr @df_create_unused_note, ptr @df_set_note, i64 168315}
!310 = !{ptr @df_set_note, ptr @fancy_abort, i64 1}
!311 = !{ptr @df_set_note, ptr @add_reg_note, i64 3345}
!312 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 3678794}
!313 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 10310386}
!314 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 6631592}
!315 = !{ptr @df_md_alloc, ptr @create_alloc_pool, i64 75}
!316 = !{ptr @df_md_alloc, ptr @df_grow_bb_info, i64 76}
!317 = !{ptr @df_md_alloc, ptr @bitmap_obstack_alloc_stat, i64 1829561}
!318 = !{ptr @df_md_alloc, ptr @bmp_iter_set_init, i64 76}
!319 = !{ptr @df_md_alloc, ptr @bmp_iter_set, i64 365974}
!320 = !{ptr @df_md_alloc, ptr @df_md_get_bb_info, i64 365898}
!321 = !{ptr @df_md_alloc, ptr @bitmap_clear, i64 5}
!322 = !{ptr @df_md_alloc, ptr @pool_alloc, i64 365897}
!323 = !{ptr @df_md_alloc, ptr @df_md_set_bb_info, i64 365897}
!324 = !{ptr @df_md_alloc, ptr @bmp_iter_next, i64 365898}
!325 = !{ptr @df_md_free_bb_info, ptr @bitmap_obstack_free, i64 30}
!326 = !{ptr @df_md_free_bb_info, ptr @pool_free, i64 6}
!327 = !{ptr @df_md_local_compute, ptr @bitmap_obstack_alloc_stat, i64 365974}
!328 = !{ptr @df_md_local_compute, ptr @bmp_iter_set_init, i64 366050}
!329 = !{ptr @df_md_local_compute, ptr @bmp_iter_set, i64 1752163}
!330 = !{ptr @df_md_local_compute, ptr @df_md_bb_local_compute, i64 365898}
!331 = !{ptr @df_md_local_compute, ptr @bmp_iter_next, i64 1386113}
!332 = !{ptr @df_md_local_compute, ptr @bitmap_obstack_free, i64 365974}
!333 = !{ptr @df_md_local_compute, ptr @xmalloc, i64 76}
!334 = !{ptr @df_md_local_compute, ptr @compute_dominance_frontiers, i64 76}
!335 = !{ptr @df_md_local_compute, ptr @df_md_get_bb_info, i64 1020214}
!336 = !{ptr @df_md_local_compute, ptr @VEC_basic_block_base_index, i64 654317}
!337 = !{ptr @df_md_local_compute, ptr @bitmap_bit_p, i64 654317}
!338 = !{ptr @df_md_local_compute, ptr @df_get_live_in, i64 654316}
!339 = !{ptr @df_md_local_compute, ptr @bitmap_ior_and_into, i64 654316}
!340 = !{ptr @df_md_local_compute, ptr @free, i64 76}
!341 = !{ptr @df_md_init, ptr @bmp_iter_set_init, i64 76}
!342 = !{ptr @df_md_init, ptr @bmp_iter_set, i64 365974}
!343 = !{ptr @df_md_init, ptr @df_md_get_bb_info, i64 365898}
!344 = !{ptr @df_md_init, ptr @bitmap_copy, i64 365898}
!345 = !{ptr @df_md_init, ptr @df_md_transfer_function, i64 365898}
!346 = !{ptr @df_md_init, ptr @bmp_iter_next, i64 365898}
!347 = !{ptr @df_md_confluence_0, ptr @df_md_get_bb_info, i64 76}
!348 = !{ptr @df_md_confluence_0, ptr @bitmap_copy, i64 76}
!349 = !{ptr @df_md_confluence_n, ptr @df_md_get_bb_info, i64 1576484}
!350 = !{ptr @df_md_confluence_n, ptr @bitmap_ior_and_compl_into, i64 1}
!351 = !{ptr @df_md_confluence_n, ptr @bitmap_ior_into, i64 788240}
!352 = !{ptr @df_md_transfer_function, ptr @VEC_basic_block_base_index, i64 749689}
!353 = !{ptr @df_md_transfer_function, ptr @df_md_get_bb_info, i64 749689}
!354 = !{ptr @df_md_transfer_function, ptr @df_get_live_out, i64 749689}
!355 = !{ptr @df_md_transfer_function, ptr @bitmap_and, i64 749689}
!356 = !{ptr @df_md_transfer_function, ptr @df_get_live_in, i64 749689}
!357 = !{ptr @df_md_transfer_function, ptr @bitmap_and_into, i64 749689}
!358 = !{ptr @df_md_transfer_function, ptr @bitmap_ior_and_compl, i64 749689}
!359 = !{ptr @df_md_free, ptr @df_md_get_bb_info, i64 457459}
!360 = !{ptr @df_md_free, ptr @bitmap_obstack_free, i64 1829526}
!361 = !{ptr @df_md_free, ptr @free_alloc_pool, i64 76}
!362 = !{ptr @df_md_free, ptr @free, i64 152}
!363 = !{ptr @df_md_set_bb_info, ptr @fancy_abort, i64 2}
!364 = !{ptr @df_md_bb_local_compute, ptr @VEC_basic_block_base_index, i64 370711}
!365 = !{ptr @df_md_bb_local_compute, ptr @df_md_get_bb_info, i64 370711}
!366 = !{ptr @df_md_bb_local_compute, ptr @df_get_artificial_defs, i64 741420}
!367 = !{ptr @df_md_bb_local_compute, ptr @df_md_bb_local_compute_process_def, i64 2103711}
!368 = !{ptr @df_md_bb_local_compute_process_def, ptr @bitmap_clear, i64 2110394}
!369 = !{ptr @df_md_bb_local_compute_process_def, ptr @bitmap_bit_p, i64 7158424}
!370 = !{ptr @df_md_bb_local_compute_process_def, ptr @bitmap_set_bit, i64 8106231}
!371 = !{ptr @df_md_bb_local_compute_process_def, ptr @bitmap_clear_bit, i64 7158423}
!372 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!373 = !{!"function_entry_count", i64 3025092}
!374 = !{!375, !375, i64 0}
!375 = !{!"any pointer", !376, i64 0}
!376 = !{!"omnipotent char", !377, i64 0}
!377 = !{!"Simple C/C++ TBAA"}
!378 = !{!"branch_weights", i32 1, i32 3025093}
!379 = !{!380, !382, i64 80}
!380 = !{!"basic_block_def", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !376, i64 32, !375, i64 48, !375, i64 56, !376, i64 64, !381, i64 72, !382, i64 80, !382, i64 84, !382, i64 88, !382, i64 92, !382, i64 96}
!381 = !{!"long", !376, i64 0}
!382 = !{!"int", !376, i64 0}
!383 = !{!"function_entry_count", i64 39764839}
!384 = !{!"df-problems.c:df_live_get_bb_info"}
!385 = !{!386, !382, i64 16}
!386 = !{!"dataflow", !375, i64 0, !375, i64 8, !382, i64 16, !375, i64 24, !375, i64 32, !375, i64 40, !382, i64 48, !376, i64 52, !376, i64 53, !376, i64 54}
!387 = !{!"branch_weights", i32 39764840, i32 1}
!388 = !{!386, !375, i64 8}
!389 = !{!"function_entry_count", i64 41659829}
!390 = !{!"df-problems.c:df_lr_get_bb_info"}
!391 = !{!"branch_weights", i32 41659830, i32 1}
!392 = !{!"function_entry_count", i64 1670804}
!393 = !{!"branch_weights", i32 1, i32 1670805}
!394 = !{!"function_entry_count", i64 3315963}
!395 = !{!396, !375, i64 8}
!396 = !{!"function", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !375, i64 32, !375, i64 40, !375, i64 48, !375, i64 56, !375, i64 64, !375, i64 72, !375, i64 80, !375, i64 88, !375, i64 96, !382, i64 104, !382, i64 108, !382, i64 112, !382, i64 116, !382, i64 120, !382, i64 124, !375, i64 128, !382, i64 136, !382, i64 137, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 138, !382, i64 139, !382, i64 139, !382, i64 139, !382, i64 139, !382, i64 139, !382, i64 139, !382, i64 139}
!397 = !{!398, !382, i64 32}
!398 = !{!"control_flow_graph", !375, i64 0, !375, i64 8, !375, i64 16, !382, i64 24, !382, i64 28, !382, i64 32, !375, i64 40, !382, i64 48, !376, i64 52, !376, i64 60, !382, i64 68, !382, i64 72}
!399 = !{!"branch_weights", i32 284, i32 3315681}
!400 = !{!"function_entry_count", i64 0}
!401 = !{!402, !375, i64 0}
!402 = !{!"df_link", !375, i64 0, !375, i64 8}
!403 = !{!376, !376, i64 0}
!404 = !{!405, !375, i64 0}
!405 = !{!"df_insn_info", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !375, i64 32, !382, i64 40}
!406 = !{!402, !375, i64 8}
!407 = distinct !{!407, !408}
!408 = !{!"llvm.loop.mustprogress"}
!409 = !{i64 0, i64 4, !410, i64 8, i64 8, !374}
!410 = !{!382, !382, i64 0}
!411 = !{i64 0, i64 8, !374}
!412 = !{i8 0, i8 2}
!413 = !{!414, !375, i64 0}
!414 = !{!"edge_def", !375, i64 0, !375, i64 8, !376, i64 16, !375, i64 24, !375, i64 32, !382, i64 40, !382, i64 44, !382, i64 48, !382, i64 52, !381, i64 56}
!415 = !{!414, !382, i64 48}
!416 = distinct !{!416, !408}
!417 = !{!414, !375, i64 8}
!418 = distinct !{!418, !408}
!419 = !{!"function_entry_count", i64 3678794}
!420 = !{!"df-problems.c:ei_start_1"}
!421 = !{!"function_entry_count", i64 10310389}
!422 = !{!"df-problems.c:ei_cond"}
!423 = !{!"branch_weights", i32 6631596, i32 3678795}
!424 = !{!"function_entry_count", i64 6631595}
!425 = !{!"df-problems.c:ei_next"}
!426 = !{!"branch_weights", i32 1, i32 6631596}
!427 = !{!"branch_weights", i32 6631596, i32 1}
!428 = !{!429, !382, i64 0}
!429 = !{!"", !382, i64 0, !375, i64 8}
!430 = !{!"function_entry_count", i64 153687}
!431 = !{!"branch_weights", i32 153421, i32 267}
!432 = !{!"branch_weights", i32 267, i32 1}
!433 = !{!434, !375, i64 144}
!434 = !{!"df", !376, i64 0, !376, i64 64, !375, i64 128, !435, i64 136, !435, i64 176, !375, i64 216, !375, i64 224, !375, i64 232, !382, i64 240, !382, i64 244, !375, i64 248, !382, i64 256, !382, i64 260, !375, i64 264, !375, i64 272, !375, i64 280, !375, i64 288, !375, i64 296, !375, i64 304, !375, i64 312, !375, i64 320, !375, i64 328, !375, i64 336, !382, i64 344, !382, i64 348, !375, i64 352, !382, i64 360, !382, i64 364, !376, i64 365, !376, i64 366}
!435 = !{!"df_ref_info", !375, i64 0, !375, i64 8, !375, i64 16, !382, i64 24, !382, i64 28, !382, i64 32, !382, i64 36}
!436 = !{!434, !375, i64 152}
!437 = !{!"branch_weights", i32 267, i32 0}
!438 = distinct !{!438, !408}
!439 = !{!"function_entry_count", i64 8932469}
!440 = !{!"df-problems.c:df_get_artificial_defs"}
!441 = !{!442, !375, i64 0}
!442 = !{!"df_scan_bb_info", !375, i64 0, !375, i64 8}
!443 = !{!"function_entry_count", i64 673062}
!444 = !{!434, !375, i64 248}
!445 = !{!405, !375, i64 8}
!446 = !{!"branch_weights", i32 1, i32 673062}
!447 = !{!"branch_weights", i32 3570969, i32 1}
!448 = !{!"branch_weights", i32 440915, i32 3130055}
!449 = !{!"branch_weights", i32 673062, i32 2897907}
!450 = distinct !{!450, !408}
!451 = !{!"function_entry_count", i64 38}
!452 = !{!386, !375, i64 32}
!453 = !{!454, !375, i64 0}
!454 = !{!"df_lr_bb_info", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24}
!455 = !{!454, !375, i64 8}
!456 = distinct !{!456, !408}
!457 = !{!"function_entry_count", i64 797615}
!458 = !{!"df-problems.c:df_lr_bb_local_compute"}
!459 = !{!398, !375, i64 16}
!460 = !{!"branch_weights", i32 796818, i32 798}
!461 = !{!"branch_weights", i32 798, i32 1}
!462 = !{!"branch_weights", i32 798, i32 0}
!463 = distinct !{!463, !408}
!464 = !{!"branch_weights", i32 1, i32 797615}
!465 = !{!"branch_weights", i32 2430053, i32 1}
!466 = !{!"branch_weights", i32 797615, i32 1632438}
!467 = distinct !{!467, !408}
!468 = !{!"branch_weights", i32 1, i32 152}
!469 = !{!470, !375, i64 0}
!470 = !{!"rtl_bb_info", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !382, i64 32}
!471 = !{!"branch_weights", i32 797616, i32 4269535}
!472 = !{!"branch_weights", i32 1016584516, i32 -2110070710}
!473 = !{!"branch_weights", i32 1, i32 2913804}
!474 = !{!"branch_weights", i32 16557788, i32 31452}
!475 = !{!"branch_weights", i32 2913804, i32 13675435}
!476 = distinct !{!476, !408}
!477 = !{!405, !375, i64 16}
!478 = !{!"branch_weights", i32 299898, i32 2613907}
!479 = !{!"branch_weights", i32 2613907, i32 0}
!480 = distinct !{!480, !408}
!481 = !{!"branch_weights", i32 152, i32 5066846}
!482 = distinct !{!482, !408}
!483 = distinct !{!483, !408}
!484 = !{!"branch_weights", i32 1, i32 797616}
!485 = !{!"function_entry_count", i64 13295584}
!486 = !{!"df-problems.c:df_scan_get_bb_info"}
!487 = !{!"branch_weights", i32 13295585, i32 1}
!488 = !{!"function_entry_count", i64 76}
!489 = distinct !{!489, !408}
!490 = !{!491, !375, i64 8}
!491 = !{!"df_live_bb_info", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24}
!492 = !{!491, !375, i64 0}
!493 = distinct !{!493, !408}
!494 = !{!"function_entry_count", i64 797725}
!495 = !{!"df-problems.c:df_live_bb_local_compute"}
!496 = !{!"branch_weights", i32 1, i32 328}
!497 = !{!470, !375, i64 8}
!498 = !{!"branch_weights", i32 797726, i32 4269517}
!499 = !{!"branch_weights", i32 130064, i32 4139454}
!500 = !{!"branch_weights", i32 128070, i32 -130604280}
!501 = !{!405, !382, i64 40}
!502 = !{!"branch_weights", i32 -1149935653, i32 1463315455}
!503 = !{!"branch_weights", i32 1, i32 2913790}
!504 = !{!"branch_weights", i32 16557772, i32 31452}
!505 = !{!"branch_weights", i32 16441037, i32 116736}
!506 = !{!"branch_weights", i32 1758076, i32 14682962}
!507 = !{!"branch_weights", i32 2913790, i32 13675433}
!508 = distinct !{!508, !408}
!509 = !{!"branch_weights", i32 328, i32 5066586}
!510 = distinct !{!510, !408}
!511 = !{!"branch_weights", i32 796928, i32 798}
!512 = distinct !{!512, !408}
!513 = !{!"function_entry_count", i64 1287206}
!514 = !{!386, !375, i64 24}
!515 = distinct !{!515, !408}
!516 = !{!"df-problems.c:df_chain_unlink_1"}
!517 = distinct !{!517, !408}
!518 = distinct !{!518, !408}
!519 = !{!386, !382, i64 48}
!520 = !{!386, !375, i64 40}
!521 = !{!522, !375, i64 24}
!522 = !{!"df_byte_lr_problem_data", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !375, i64 32, !523, i64 40}
!523 = !{!"bitmap_obstack", !375, i64 0, !375, i64 8, !524, i64 16}
!524 = !{!"obstack", !381, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !375, i64 32, !381, i64 40, !382, i64 48, !375, i64 56, !375, i64 64, !375, i64 72, !382, i64 80, !382, i64 80, !382, i64 80}
!525 = !{!522, !375, i64 32}
!526 = distinct !{!526, !408}
!527 = distinct !{!527, !408}
!528 = distinct !{!528, !408}
!529 = distinct !{!529, !408}
!530 = distinct !{!530, !408}
!531 = !{!"function_entry_count", i64 4363115}
!532 = !{!"df-problems.c:df_get_artificial_uses"}
!533 = !{!442, !375, i64 8}
!534 = !{!"function_entry_count", i64 342}
!535 = !{!"function_entry_count", i64 2720726}
!536 = !{!"branch_weights", i32 1, i32 2720726}
!537 = !{!"branch_weights", i32 14206466, i32 12955}
!538 = !{!"branch_weights", i32 2720726, i32 11498694}
!539 = distinct !{!539, !408}
!540 = !{!"function_entry_count", i64 6010253}
!541 = !{!"branch_weights", i32 1, i32 6010253}
!542 = !{!"branch_weights", i32 35003773, i32 74920}
!543 = !{!"branch_weights", i32 6010253, i32 29068439}
!544 = distinct !{!544, !408}
!545 = !{!"function_entry_count", i64 6010181}
!546 = !{!"branch_weights", i32 1, i32 6010182}
!547 = !{!"branch_weights", i32 537691, i32 5472491}
!548 = !{!"branch_weights", i32 5472491, i32 0}
!549 = distinct !{!549, !408}
!550 = !{!"function_entry_count", i64 1613940}
!551 = !{!"branch_weights", i32 1613940, i32 1}
!552 = !{!"branch_weights", i32 1, i32 0}
!553 = distinct !{!553, !408}
!554 = !{!"branch_weights", i32 1, i32 1613940}
!555 = !{!"branch_weights", i32 4840669, i32 1}
!556 = !{!"branch_weights", i32 1613940, i32 3226729}
!557 = distinct !{!557, !408}
!558 = !{!"function_entry_count", i64 1077324}
!559 = !{!"branch_weights", i32 7558, i32 -223142976}
!560 = !{!"df-problems.c:df_simulate_fixup_sets"}
!561 = !{!"branch_weights", i32 3678795, i32 1}
!562 = !{!"function_entry_count", i64 1398846}
!563 = !{!"branch_weights", i32 1398846, i32 1}
!564 = distinct !{!564, !408}
!565 = !{!"function_entry_count", i64 680059}
!566 = !{!"branch_weights", i32 678958, i32 1102}
!567 = !{!"branch_weights", i32 1102, i32 1}
!568 = !{!"branch_weights", i32 1102, i32 0}
!569 = distinct !{!569, !408}
!570 = !{!"function_entry_count", i64 2601470}
!571 = !{!"branch_weights", i32 -367607468, i32 1509}
!572 = !{!"branch_weights", i32 1, i32 2601471}
!573 = !{!"branch_weights", i32 248321, i32 2353150}
!574 = !{!"branch_weights", i32 849517, i32 1423839, i32 79796}
!575 = !{!"branch_weights", i32 1047771, i32 455864}
!576 = !{!"branch_weights", i32 1, i32 1047770}
!577 = distinct !{!577, !408}
!578 = !{!"branch_weights", i32 2353150, i32 0}
!579 = distinct !{!579, !408}
!580 = !{!"function_entry_count", i64 4248010}
!581 = !{!"df-problems.c:rhs_regno"}
!582 = distinct !{!582, !408}
!583 = distinct !{!583, !408}
!584 = !{!"df-problems.c:ei_end_p"}
!585 = !{!"branch_weights", i32 1, i32 10310390}
!586 = !{!"df-problems.c:ei_edge"}
!587 = !{!"function_entry_count", i64 16941984}
!588 = !{!"df-problems.c:VEC_edge_base_length"}
!589 = !{!"branch_weights", i32 1, i32 16941985}
!590 = !{!591, !382, i64 0}
!591 = !{!"VEC_edge_base", !382, i64 0, !382, i64 4, !376, i64 8}
!592 = !{!"function_entry_count", i64 47147158}
!593 = !{!"df-problems.c:ei_container"}
!594 = !{!"branch_weights", i32 1, i32 47147159}
!595 = !{!"df-problems.c:VEC_edge_base_index"}
!596 = !{!"df-problems.c:df_rd_alloc"}
!597 = !{!"branch_weights", i32 39, i32 1}
!598 = !{!599, !375, i64 0}
!599 = !{!"df_rd_problem_data", !375, i64 0, !375, i64 8, !523, i64 16}
!600 = !{!599, !375, i64 8}
!601 = !{!"branch_weights", i32 1, i32 155}
!602 = !{!"branch_weights", i32 153688, i32 1}
!603 = !{!604, !375, i64 0}
!604 = !{!"df_rd_bb_info", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !375, i64 32}
!605 = !{!604, !375, i64 8}
!606 = !{!604, !375, i64 16}
!607 = !{!604, !375, i64 24}
!608 = !{!604, !375, i64 32}
!609 = !{!"branch_weights", i32 155, i32 614597}
!610 = distinct !{!610, !408}
!611 = !{!386, !376, i64 54}
!612 = !{!"df-problems.c:df_rd_free_bb_info"}
!613 = !{!"df-problems.c:df_rd_local_compute"}
!614 = distinct !{!614, !408}
!615 = !{!"branch_weights", i32 1158, i32 592}
!616 = !{!"branch_weights", i32 155, i32 6841}
!617 = distinct !{!617, !408}
!618 = !{!"df-problems.c:df_rd_init_solution"}
!619 = distinct !{!619, !408}
!620 = !{!"function_entry_count", i64 608972}
!621 = !{!"df-problems.c:df_rd_confluence_n"}
!622 = !{!"branch_weights", i32 608973, i32 1}
!623 = distinct !{!623, !408}
!624 = !{!"function_entry_count", i64 307298}
!625 = !{!"df-problems.c:df_rd_transfer_function"}
!626 = !{!627, !375, i64 0}
!627 = !{!"bitmap_head_def", !375, i64 0, !375, i64 8, !382, i64 16, !375, i64 24}
!628 = !{!"branch_weights", i32 2088, i32 305212}
!629 = !{!"branch_weights", i32 1, i32 305211}
!630 = !{!"branch_weights", i32 305211, i32 235265}
!631 = distinct !{!631, !408}
!632 = !{!"branch_weights", i32 152609, i32 152604}
!633 = !{!"df-problems.c:df_rd_free"}
!634 = !{!"branch_weights", i32 1, i32 39}
!635 = !{!"df-problems.c:df_rd_start_dump"}
!636 = !{!434, !382, i64 244}
!637 = distinct !{!637, !408}
!638 = !{!"df-problems.c:df_rd_top_dump"}
!639 = !{!"df-problems.c:df_rd_bottom_dump"}
!640 = !{!"function_entry_count", i64 1910875}
!641 = !{!"df-problems.c:bmp_iter_set_init"}
!642 = !{!643, !375, i64 0}
!643 = !{!"", !375, i64 0, !375, i64 8, !382, i64 16, !381, i64 24}
!644 = !{!643, !375, i64 8}
!645 = !{!"branch_weights", i32 1, i32 850}
!646 = !{!647, !382, i64 16}
!647 = !{!"bitmap_element_def", !375, i64 0, !375, i64 8, !382, i64 16, !376, i64 24}
!648 = !{!"branch_weights", i32 4693417, i32 1910026}
!649 = !{!647, !375, i64 0}
!650 = !{!"branch_weights", i32 850, i32 6602592}
!651 = !{!"branch_weights", i32 1475906, i32 434971}
!652 = !{!643, !382, i64 16}
!653 = !{!381, !381, i64 0}
!654 = !{!643, !381, i64 24}
!655 = !{!"function_entry_count", i64 20087336}
!656 = !{!"df-problems.c:bmp_iter_set"}
!657 = !{!"branch_weights", i32 2615503, i32 17471835}
!658 = !{!"branch_weights", i32 19354814, i32 1}
!659 = !{!"branch_weights", i32 49302581, i32 19354814}
!660 = distinct !{!660, !408}
!661 = !{!"branch_weights", i32 1, i32 2218798}
!662 = !{!"branch_weights", i32 1877847, i32 1882981}
!663 = !{!"branch_weights", i32 2218798, i32 1542029}
!664 = distinct !{!664, !408}
!665 = !{!"branch_weights", i32 732523, i32 1486277}
!666 = !{!"function_entry_count", i64 2139990}
!667 = !{!"df-problems.c:df_rd_get_bb_info"}
!668 = !{!"branch_weights", i32 2139991, i32 1}
!669 = !{!"df-problems.c:df_rd_set_bb_info"}
!670 = !{!"branch_weights", i32 1, i32 153688}
!671 = !{!"function_entry_count", i64 18176461}
!672 = !{!"df-problems.c:bmp_iter_next"}
!673 = !{!"df-problems.c:df_rd_bb_local_compute"}
!674 = !{!"branch_weights", i32 1, i32 229}
!675 = !{!"branch_weights", i32 153688, i32 879264}
!676 = !{!"branch_weights", i32 -521160224, i32 1156144476}
!677 = !{!"branch_weights", i32 229, i32 2065445}
!678 = distinct !{!678, !408}
!679 = !{!"function_entry_count", i64 5483912}
!680 = !{!"df-problems.c:VEC_basic_block_base_index"}
!681 = !{!"function_entry_count", i64 980436}
!682 = !{!"df-problems.c:df_rd_bb_local_compute_process_def"}
!683 = !{!"branch_weights", i32 1, i32 980436}
!684 = !{!"branch_weights", i32 3571235, i32 267}
!685 = !{!"branch_weights", i32 3571235, i32 1}
!686 = !{!"branch_weights", i32 3414346, i32 156890}
!687 = !{!"branch_weights", i32 3414346, i32 1}
!688 = !{!"branch_weights", i32 416504, i32 2997843}
!689 = !{!"branch_weights", i32 270292, i32 146213}
!690 = !{!"branch_weights", i32 413669, i32 3000678}
!691 = !{!"branch_weights", i32 980436, i32 2591065}
!692 = distinct !{!692, !408}
!693 = !{!"function_entry_count", i64 601}
!694 = !{!"df-problems.c:df_lr_alloc"}
!695 = !{!"branch_weights", i32 39, i32 564}
!696 = !{!"branch_weights", i32 1, i32 601}
!697 = !{!"branch_weights", i32 252777, i32 544954}
!698 = !{!454, !375, i64 16}
!699 = !{!454, !375, i64 24}
!700 = !{!"branch_weights", i32 601, i32 797129}
!701 = distinct !{!701, !408}
!702 = !{!"df-problems.c:df_lr_reset"}
!703 = distinct !{!703, !408}
!704 = !{!"function_entry_count", i64 99230}
!705 = !{!"df-problems.c:df_lr_free_bb_info"}
!706 = !{!"branch_weights", i32 1, i32 99231}
!707 = !{!"df-problems.c:df_lr_local_compute"}
!708 = !{!434, !375, i64 264}
!709 = !{!"branch_weights", i32 380, i32 223}
!710 = !{!"branch_weights", i32 1, i32 380}
!711 = !{!"branch_weights", i32 380, i32 1}
!712 = !{!"branch_weights", i32 115, i32 797616}
!713 = !{!434, !375, i64 296}
!714 = distinct !{!714, !408}
!715 = !{!"df-problems.c:df_lr_init"}
!716 = !{!"branch_weights", i32 601, i32 2865542}
!717 = distinct !{!717, !408}
!718 = !{!"function_entry_count", i64 1499}
!719 = !{!"df-problems.c:df_lr_confluence_0"}
!720 = !{!398, !375, i64 8}
!721 = !{!"branch_weights", i32 602, i32 899}
!722 = !{!"function_entry_count", i64 10116591}
!723 = !{!"df-problems.c:df_lr_confluence_n"}
!724 = !{!"branch_weights", i32 10116592, i32 1}
!725 = !{!"function_entry_count", i64 5230141}
!726 = !{!"df-problems.c:df_lr_transfer_function"}
!727 = !{!"df-problems.c:df_lr_finalize"}
!728 = !{!386, !376, i64 53}
!729 = !{!"branch_weights", i32 362, i32 241}
!730 = !{!"branch_weights", i32 239, i32 3}
!731 = !{!434, !375, i64 328}
!732 = !{!434, !382, i64 344}
!733 = !{!"df-problems.c:df_lr_free"}
!734 = !{!"branch_weights", i32 117876, i32 153547}
!735 = !{!"branch_weights", i32 1085533, i32 155}
!736 = distinct !{!736, !408}
!737 = !{!"df-problems.c:df_lr_top_dump"}
!738 = !{!739, !375, i64 0}
!739 = !{!"df_lr_problem_data", !375, i64 0, !375, i64 8}
!740 = !{!"df-problems.c:df_lr_bottom_dump"}
!741 = !{!739, !375, i64 8}
!742 = !{!"df-problems.c:df_lr_verify_solution_start"}
!743 = distinct !{!743, !408}
!744 = !{!"df-problems.c:df_lr_verify_solution_end"}
!745 = distinct !{!745, !408}
!746 = distinct !{!746, !408}
!747 = !{!"function_entry_count", i64 252776}
!748 = !{!"df-problems.c:df_lr_set_bb_info"}
!749 = !{!"branch_weights", i32 1, i32 252777}
!750 = !{!"branch_weights", i32 252777, i32 1}
!751 = !{!"function_entry_count", i64 599}
!752 = !{!"df-problems.c:df_live_alloc"}
!753 = !{!"branch_weights", i32 39, i32 562}
!754 = !{!"branch_weights", i32 1, i32 599}
!755 = !{!"branch_weights", i32 252777, i32 544950}
!756 = !{!491, !375, i64 16}
!757 = !{!491, !375, i64 24}
!758 = !{!"branch_weights", i32 599, i32 797127}
!759 = distinct !{!759, !408}
!760 = !{!"df-problems.c:df_live_reset"}
!761 = distinct !{!761, !408}
!762 = !{!"df-problems.c:df_live_free_bb_info"}
!763 = !{!"df-problems.c:df_live_local_compute"}
!764 = distinct !{!764, !408}
!765 = !{!"df-problems.c:df_live_init"}
!766 = !{!"branch_weights", i32 599, i32 2865198}
!767 = distinct !{!767, !408}
!768 = !{!"function_entry_count", i64 10870043}
!769 = !{!"df-problems.c:df_live_confluence_n"}
!770 = !{!"branch_weights", i32 10869980, i32 65}
!771 = !{!"function_entry_count", i64 5730394}
!772 = !{!"df-problems.c:df_live_transfer_function"}
!773 = !{!"df-problems.c:df_live_finalize"}
!774 = !{!"branch_weights", i32 1, i32 600}
!775 = distinct !{!775, !408}
!776 = !{!"df-problems.c:df_live_free"}
!777 = distinct !{!777, !408}
!778 = !{!"df-problems.c:df_live_top_dump"}
!779 = !{!780, !375, i64 0}
!780 = !{!"df_live_problem_data", !375, i64 0, !375, i64 8}
!781 = !{!"df-problems.c:df_live_bottom_dump"}
!782 = !{!780, !375, i64 8}
!783 = !{!"df-problems.c:df_live_verify_solution_start"}
!784 = distinct !{!784, !408}
!785 = !{!"df-problems.c:df_live_verify_solution_end"}
!786 = distinct !{!786, !408}
!787 = distinct !{!787, !408}
!788 = !{!"df-problems.c:df_live_set_bb_info"}
!789 = !{!"df-problems.c:df_chain_alloc"}
!790 = !{!"df-problems.c:df_chain_reset"}
!791 = !{!"df-problems.c:df_chain_finalize"}
!792 = distinct !{!792, !408}
!793 = !{!"df-problems.c:df_chain_free"}
!794 = !{!"df-problems.c:df_chain_fully_remove_problem"}
!795 = !{!"df-problems.c:df_chain_top_dump"}
!796 = distinct !{!796, !408}
!797 = distinct !{!797, !408}
!798 = distinct !{!798, !408}
!799 = !{!"df-problems.c:df_chain_bottom_dump"}
!800 = distinct !{!800, !408}
!801 = !{!405, !375, i64 24}
!802 = distinct !{!802, !408}
!803 = distinct !{!803, !408}
!804 = distinct !{!804, !408}
!805 = !{!"df-problems.c:df_chain_remove_problem"}
!806 = !{!"branch_weights", i32 39, i32 39}
!807 = !{!"branch_weights", i32 1, i32 153}
!808 = distinct !{!808, !408}
!809 = !{!"branch_weights", i32 1, i32 153687}
!810 = !{!"branch_weights", i32 153687, i32 460910}
!811 = distinct !{!811, !408}
!812 = !{!"branch_weights", i32 673063, i32 1}
!813 = distinct !{!813, !408}
!814 = !{!"branch_weights", i32 1, i32 673063}
!815 = !{!"branch_weights", i32 57869, i32 615194}
!816 = !{!"branch_weights", i32 615194, i32 0}
!817 = distinct !{!817, !408}
!818 = !{!"branch_weights", i32 666047, i32 7016}
!819 = !{!"branch_weights", i32 7016, i32 0}
!820 = distinct !{!820, !408}
!821 = distinct !{!821, !408}
!822 = !{!"branch_weights", i32 153, i32 307223}
!823 = distinct !{!823, !408}
!824 = !{!"df-problems.c:df_chain_create_bb"}
!825 = distinct !{!825, !408}
!826 = !{!"function_entry_count", i64 826749}
!827 = !{!"df-problems.c:df_chain_create_bb_process_use"}
!828 = !{!"branch_weights", i32 1, i32 826749}
!829 = !{!"branch_weights", i32 1229790, i32 1}
!830 = !{!"branch_weights", i32 1, i32 1229790}
!831 = !{!"branch_weights", i32 1, i32 51436}
!832 = !{!"branch_weights", i32 1178354, i32 1287207}
!833 = !{!434, !375, i64 136}
!834 = !{!"branch_weights", i32 1287207, i32 1}
!835 = !{!"branch_weights", i32 1, i32 1287207}
!836 = !{!"branch_weights", i32 51436, i32 2414124}
!837 = distinct !{!837, !408}
!838 = !{!"branch_weights", i32 826749, i32 403041}
!839 = distinct !{!839, !408}
!840 = !{!"df-problems.c:df_byte_lr_alloc"}
!841 = !{!522, !375, i64 8}
!842 = !{!522, !375, i64 0}
!843 = !{!522, !375, i64 16}
!844 = !{!398, !375, i64 0}
!845 = !{!380, !375, i64 56}
!846 = distinct !{!846, !408}
!847 = distinct !{!847, !408}
!848 = distinct !{!848, !408}
!849 = !{!850, !375, i64 0}
!850 = !{!"df_byte_lr_bb_info", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24}
!851 = !{!850, !375, i64 8}
!852 = !{!850, !375, i64 16}
!853 = !{!850, !375, i64 24}
!854 = distinct !{!854, !408}
!855 = !{!"df-problems.c:df_byte_lr_reset"}
!856 = distinct !{!856, !408}
!857 = !{!"df-problems.c:df_byte_lr_free_bb_info"}
!858 = !{!"df-problems.c:df_byte_lr_local_compute"}
!859 = distinct !{!859, !408}
!860 = !{!"df-problems.c:df_byte_lr_init"}
!861 = distinct !{!861, !408}
!862 = !{!"df-problems.c:df_byte_lr_confluence_0"}
!863 = !{!"df-problems.c:df_byte_lr_confluence_n"}
!864 = !{!"df-problems.c:df_byte_lr_transfer_function"}
!865 = !{!"df-problems.c:df_byte_lr_free"}
!866 = !{!"df-problems.c:df_byte_lr_top_dump"}
!867 = !{!"df-problems.c:df_byte_lr_bottom_dump"}
!868 = !{!"df-problems.c:df_byte_lr_check_regs"}
!869 = distinct !{!869, !408}
!870 = !{!"df-problems.c:df_byte_lr_expand_bitmap"}
!871 = distinct !{!871, !408}
!872 = !{!"df-problems.c:df_byte_lr_get_bb_info"}
!873 = !{!"df-problems.c:df_byte_lr_set_bb_info"}
!874 = !{!"df-problems.c:df_byte_lr_bb_local_compute"}
!875 = distinct !{!875, !408}
!876 = distinct !{!876, !408}
!877 = distinct !{!877, !408}
!878 = distinct !{!878, !408}
!879 = distinct !{!879, !408}
!880 = distinct !{!880, !408}
!881 = !{!"function_entry_count", i64 395}
!882 = !{!"df-problems.c:df_note_alloc"}
!883 = !{!"df-problems.c:df_note_compute"}
!884 = !{!"branch_weights", i32 1, i32 395}
!885 = !{!"branch_weights", i32 395, i32 1643792}
!886 = distinct !{!886, !408}
!887 = !{!"df-problems.c:df_note_free"}
!888 = !{!"function_entry_count", i64 1644186}
!889 = !{!"df-problems.c:df_note_bb_compute"}
!890 = !{!"branch_weights", i32 1641295, i32 2892}
!891 = !{!"branch_weights", i32 2892, i32 1}
!892 = !{!"branch_weights", i32 2892, i32 0}
!893 = distinct !{!893, !408}
!894 = !{!"branch_weights", i32 1, i32 1644186}
!895 = !{!"branch_weights", i32 5574353, i32 1}
!896 = !{!"branch_weights", i32 1644186, i32 3930167}
!897 = distinct !{!897, !408}
!898 = !{!"branch_weights", i32 1, i32 981}
!899 = !{!"branch_weights", i32 1644187, i32 8925319}
!900 = !{!"branch_weights", i32 -841255792, i32 1445482847}
!901 = !{!405, !375, i64 32}
!902 = !{!"branch_weights", i32 691285, i32 5600663}
!903 = !{!"branch_weights", i32 691284, i32 1}
!904 = !{!905, !382, i64 12}
!905 = !{!"df_mw_hardreg", !375, i64 0, !382, i64 8, !382, i64 10, !382, i64 12, !382, i64 16, !382, i64 20}
!906 = distinct !{!906, !408}
!907 = !{!"branch_weights", i32 1, i32 691284}
!908 = !{!"branch_weights", i32 668973, i32 31130093}
!909 = !{!"branch_weights", i32 31799065, i32 1}
!910 = !{!"branch_weights", i32 691284, i32 31107781}
!911 = distinct !{!911, !408}
!912 = !{!"branch_weights", i32 5600662, i32 1}
!913 = distinct !{!913, !408}
!914 = !{!"branch_weights", i32 2209983, i32 3390680}
!915 = !{!"branch_weights", i32 3227824, i32 162857}
!916 = !{!"branch_weights", i32 3350496, i32 40185}
!917 = !{!"branch_weights", i32 3390680, i32 0}
!918 = distinct !{!918, !408}
!919 = !{!"branch_weights", i32 6291946, i32 1}
!920 = distinct !{!920, !408}
!921 = !{!"branch_weights", i32 614617, i32 5677330}
!922 = !{!"branch_weights", i32 3355593, i32 2321738}
!923 = !{!"branch_weights", i32 3355593, i32 1}
!924 = !{!"branch_weights", i32 3312336, i32 43258}
!925 = !{!"branch_weights", i32 3312111, i32 226}
!926 = !{!"branch_weights", i32 3312111, i32 1}
!927 = !{!"branch_weights", i32 -903364609, i32 0}
!928 = !{!"branch_weights", i32 29700, i32 1}
!929 = !{!"branch_weights", i32 5677330, i32 0}
!930 = distinct !{!930, !408}
!931 = distinct !{!931, !408}
!932 = !{!"branch_weights", i32 6272604, i32 19343}
!933 = !{!"branch_weights", i32 19343, i32 0}
!934 = distinct !{!934, !408}
!935 = !{!"branch_weights", i32 1, i32 6291947}
!936 = !{!"branch_weights", i32 981, i32 10567543}
!937 = distinct !{!937, !408}
!938 = !{!"function_entry_count", i64 6291946}
!939 = !{!"df-problems.c:df_kill_notes"}
!940 = !{!"branch_weights", i32 1401199, i32 4890748}
!941 = !{!"branch_weights", i32 2146371, i32 2629265, i32 115114}
!942 = !{!"branch_weights", i32 2629265, i32 1}
!943 = !{!"branch_weights", i32 115114, i32 1}
!944 = !{!"branch_weights", i32 4890748, i32 0}
!945 = distinct !{!945, !408}
!946 = !{!"function_entry_count", i64 6224804}
!947 = !{!"df-problems.c:df_ignore_stack_reg"}
!948 = !{!"branch_weights", i32 6224805, i32 1}
!949 = !{!"df-problems.c:df_set_unused_notes_for_mw"}
!950 = !{!905, !375, i64 0}
!951 = !{!905, !382, i64 16}
!952 = distinct !{!952, !408}
!953 = !{!"function_entry_count", i64 4059651}
!954 = !{!"df-problems.c:df_create_unused_note"}
!955 = !{!"branch_weights", i32 168318, i32 3891335}
!956 = !{!"branch_weights", i32 168318, i32 1}
!957 = !{!"branch_weights", i32 -1537228801, i32 0}
!958 = !{!"branch_weights", i32 1, i32 -1}
!959 = !{!"df-problems.c:df_set_dead_notes_for_mw"}
!960 = distinct !{!960, !408}
!961 = !{!"function_entry_count", i64 3480427}
!962 = !{!"df-problems.c:df_set_note"}
!963 = !{!"branch_weights", i32 1, i32 3480428}
!964 = !{!"branch_weights", i32 1, i32 755392}
!965 = !{!"branch_weights", i32 2715568, i32 9468}
!966 = !{!"branch_weights", i32 9468, i32 0}
!967 = distinct !{!967, !408}
!968 = !{!"branch_weights", i32 2719396, i32 5641}
!969 = !{!"branch_weights", i32 755392, i32 1979111}
!970 = !{!"df-problems.c:df_whole_mw_reg_unused_p"}
!971 = distinct !{!971, !408}
!972 = !{!"df-problems.c:df_whole_mw_reg_dead_p"}
!973 = distinct !{!973, !408}
!974 = !{!"df-problems.c:bb_has_eh_pred"}
!975 = !{!"branch_weights", i32 1, i32 3678794}
!976 = !{!"branch_weights", i32 3678794, i32 2952802}
!977 = distinct !{!977, !408}
!978 = !{!"df-problems.c:df_md_alloc"}
!979 = !{!"branch_weights", i32 77, i32 1}
!980 = !{!"branch_weights", i32 370712, i32 1}
!981 = !{!982, !375, i64 16}
!982 = !{!"df_md_bb_info", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !375, i64 32}
!983 = !{!982, !375, i64 0}
!984 = !{!982, !375, i64 8}
!985 = !{!982, !375, i64 24}
!986 = !{!982, !375, i64 32}
!987 = !{!"branch_weights", i32 153, i32 741271}
!988 = distinct !{!988, !408}
!989 = !{!"df-problems.c:df_md_reset"}
!990 = distinct !{!990, !408}
!991 = !{!"function_entry_count", i64 7}
!992 = !{!"df-problems.c:df_md_free_bb_info"}
!993 = !{!"branch_weights", i32 1, i32 8}
!994 = !{!"df-problems.c:df_md_local_compute"}
!995 = distinct !{!995, !408}
!996 = distinct !{!996, !408}
!997 = !{!"branch_weights", i32 1, i32 370711}
!998 = !{!"branch_weights", i32 1, i32 662926}
!999 = !{!"branch_weights", i32 370711, i32 292215}
!1000 = distinct !{!1000, !408}
!1001 = distinct !{!1001, !408}
!1002 = distinct !{!1002, !408}
!1003 = !{!"df-problems.c:df_md_init"}
!1004 = distinct !{!1004, !408}
!1005 = !{!"df-problems.c:df_md_confluence_0"}
!1006 = !{!"function_entry_count", i64 788242}
!1007 = !{!"df-problems.c:df_md_confluence_n"}
!1008 = !{!"branch_weights", i32 788243, i32 1}
!1009 = !{!"function_entry_count", i64 749689}
!1010 = !{!"df-problems.c:df_md_transfer_function"}
!1011 = !{!"df-problems.c:df_md_free"}
!1012 = !{!"branch_weights", i32 92774, i32 370705}
!1013 = !{!"branch_weights", i32 926803, i32 153}
!1014 = distinct !{!1014, !408}
!1015 = !{!"df-problems.c:df_md_top_dump"}
!1016 = !{!"df-problems.c:df_md_bottom_dump"}
!1017 = !{!"function_entry_count", i64 4935495}
!1018 = !{!"df-problems.c:df_md_get_bb_info"}
!1019 = !{!"branch_weights", i32 4935496, i32 1}
!1020 = !{!"function_entry_count", i64 370711}
!1021 = !{!"df-problems.c:df_md_set_bb_info"}
!1022 = !{!"branch_weights", i32 1, i32 370712}
!1023 = !{!"df-problems.c:df_md_bb_local_compute"}
!1024 = !{!"branch_weights", i32 1, i32 228}
!1025 = !{!"branch_weights", i32 370712, i32 1906197}
!1026 = !{!"branch_weights", i32 -1183791299, i32 1220910344}
!1027 = !{!"branch_weights", i32 228, i32 2276452}
!1028 = distinct !{!1028, !408}
!1029 = !{!"function_entry_count", i64 2110394}
!1030 = !{!"df-problems.c:df_md_bb_local_compute_process_def"}
!1031 = !{!"branch_weights", i32 1, i32 2110394}
!1032 = !{!"branch_weights", i32 7158961, i32 1}
!1033 = !{!"branch_weights", i32 7158429, i32 533}
!1034 = !{!"branch_weights", i32 7158429, i32 1}
!1035 = !{!"branch_weights", i32 947809, i32 6210621}
!1036 = !{!"branch_weights", i32 2110394, i32 5048567}
!1037 = distinct !{!1037, !408}
