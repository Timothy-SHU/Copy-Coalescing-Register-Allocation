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
define dso_local ptr @df_get_live_out(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !6
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !10
  br i1 %12, label %18, label %15

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
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  ret ptr %23
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_live_get_bb_info(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @df_get_live_in(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !6
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %2, %1 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !10
  br i1 %12, label %18, label %15

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
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_grow_bb_info(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = add nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = lshr i32 %7, 2
  %13 = add i32 %12, %7
  %14 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %17) #17
  store ptr %18, ptr %14, align 8, !tbaa !16
  %19 = load i32, ptr %8, align 8, !tbaa !14
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = sub i32 %13, %19
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 %24, i1 false)
  store i32 %13, ptr %8, align 8, !tbaa !14
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
define dso_local void @df_chain_dump(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %1)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2, %25
  %6 = phi ptr [ %33, %25 ], [ %0, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 100, i32 117
  %12 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !23
  %14 = and i32 %8, 255
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.df_artificial_ref, ptr %7, i64 0, i32 1
  br label %25

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  %23 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !23
  br label %25

25:                                               ; preds = %16, %18
  %26 = phi ptr [ %22, %18 ], [ %17, %16 ]
  %27 = phi i32 [ %24, %18 ], [ -1, %16 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !23
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !10
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13, i32 noundef %30, i32 noundef %27) #18
  %32 = getelementptr inbounds %struct.df_link, ptr %6, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !26
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5, !llvm.loop !27

35:                                               ; preds = %25, %2
  %36 = tail call i32 @fputc(i32 125, ptr %1)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_print_bb_index(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %1)
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !29
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !31
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %3) #18, !range !32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2, %10
  %11 = load ptr, ptr %3, align 8, !tbaa !6
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !35
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @.str.8, ptr @.str.7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %14, ptr noundef nonnull %19) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %21 = load i32, ptr %4, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = call fastcc zeroext i8 @ei_cond(i32 %21, ptr %22, ptr noundef nonnull %3) #18, !range !32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !36

25:                                               ; preds = %10, %2
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !10
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %27) #18
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %30 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !29
  store ptr %30, ptr %7, align 8, !tbaa.struct !31
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %3) #18, !range !32
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %25, %33
  %34 = load ptr, ptr %3, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !10
  %39 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !35
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.8, ptr @.str.7
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %38, ptr noundef nonnull %43) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %45 = load i32, ptr %4, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %3) #18, !range !32
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %33, !llvm.loop !38

49:                                               ; preds = %33, %25
  %50 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !39
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !41
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_simulate_artificial_defs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %2, %34
  %9 = phi ptr [ %36, %34 ], [ %6, %2 ]
  %10 = phi ptr [ %35, %34 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = and i32 %11, 1114112
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !23
  %20 = load ptr, ptr @df, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds i32, ptr %22, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !30
  %26 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 3, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds i32, ptr %27, i64 %23
  %29 = load i32, ptr %28, align 4, !tbaa !30
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %25, i32 noundef %29) #17
  br label %30

30:                                               ; preds = %17, %14
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !23
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %32) #17
  br label %34

34:                                               ; preds = %30, %8
  %35 = getelementptr inbounds ptr, ptr %10, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %8, !llvm.loop !47

38:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: optsize
declare void @bitmap_clear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_simulate_one_insn(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = load ptr, ptr @df, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %3, %51
  %17 = phi ptr [ %53, %51 ], [ %14, %3 ]
  %18 = phi ptr [ %52, %51 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !23
  %21 = load ptr, ptr @df, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 27
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  %26 = icmp ugt i32 %20, 52
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %16
  %29 = load i32, ptr %17, align 8
  %30 = and i32 %29, 1114112
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = zext i32 %20 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !30
  %38 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 3, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = getelementptr inbounds i32, ptr %39, i64 %35
  %41 = load i32, ptr %40, align 4, !tbaa !30
  tail call void @bitmap_clear_range(ptr noundef %2, i32 noundef %37, i32 noundef %41) #17
  %42 = load i32, ptr %17, align 8
  br label %43

43:                                               ; preds = %32, %28
  %44 = phi i32 [ %42, %32 ], [ %29, %28 ]
  %45 = and i32 %44, 12582912
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !23
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %49) #17
  br label %51

51:                                               ; preds = %43, %47, %16
  %52 = getelementptr inbounds ptr, ptr %18, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %16, !llvm.loop !52

55:                                               ; preds = %51, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_rd_add_problem() local_unnamed_addr #0 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_RD) #17
  ret void
}

; Function Attrs: optsize
declare void @df_add_problem(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_alloc(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 3
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 40, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !53
  %16 = load ptr, ptr %13, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %20, align 8, !tbaa !55
  tail call void @bitmap_clear(ptr noundef %23) #17
  %24 = getelementptr inbounds %struct.df_rd_problem_data, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  tail call void @bitmap_clear(ptr noundef %25) #17
  br label %36

26:                                               ; preds = %17
  %27 = tail call ptr @xmalloc(i64 noundef 120) #17
  %28 = load ptr, ptr @df, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 5
  store ptr %27, ptr %31, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.df_rd_problem_data, ptr %27, i64 0, i32 2
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %32) #17
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %32) #17
  store ptr %33, ptr %27, align 8, !tbaa !55
  %34 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %32) #17
  %35 = getelementptr inbounds %struct.df_rd_problem_data, ptr %27, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi ptr [ %20, %22 ], [ %27, %26 ]
  %38 = load ptr, ptr @df, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1, i64 3
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  tail call void @df_grow_bb_info(ptr noundef %40) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.df_rd_problem_data, ptr %37, i64 0, i32 2
  br label %45

45:                                               ; preds = %43, %71
  %46 = load i32, ptr %2, align 4, !tbaa !30
  %47 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %46) #18
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !60
  tail call void @bitmap_clear(ptr noundef %50) #17
  %51 = getelementptr inbounds %struct.df_rd_bb_info, ptr %47, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  tail call void @bitmap_clear(ptr noundef %52) #17
  %53 = getelementptr inbounds %struct.df_rd_bb_info, ptr %47, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !63
  tail call void @bitmap_clear(ptr noundef %54) #17
  br label %71

55:                                               ; preds = %45
  %56 = load ptr, ptr @df, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 3
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = tail call ptr @pool_alloc(ptr noundef %60) #17
  tail call fastcc void @df_rd_set_bb_info(i32 noundef %46, ptr noundef %61) #18
  %62 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  store ptr %62, ptr %61, align 8, !tbaa !60
  %63 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %64 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !62
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %66 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !63
  %67 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %68 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 3
  store ptr %67, ptr %68, align 8, !tbaa !64
  %69 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %44) #17
  %70 = getelementptr inbounds %struct.df_rd_bb_info, ptr %61, i64 0, i32 4
  store ptr %69, ptr %70, align 8, !tbaa !65
  br label %71

71:                                               ; preds = %55, %49
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %45, !llvm.loop !66

74:                                               ; preds = %71, %36
  %75 = load ptr, ptr @df, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 9
  store i8 1, ptr %78, align 2, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !60
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  store ptr null, ptr %1, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  tail call void @bitmap_obstack_free(ptr noundef %13) #17
  store ptr null, ptr %12, align 8, !tbaa !65
  %14 = load ptr, ptr @df, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 3
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_local_compute(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.df_rd_problem_data, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  store ptr %13, ptr @seen_in_block, align 8, !tbaa !6
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  store ptr %14, ptr @seen_in_insn, align 8, !tbaa !6
  tail call void @df_maybe_reorganize_def_refs(i32 noundef 3) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1, %17
  %18 = load i32, ptr %2, align 4, !tbaa !30
  tail call fastcc void @df_rd_bb_local_compute(i32 noundef %18) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %17, !llvm.loop !68

21:                                               ; preds = %17, %1
  %22 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %22, i32 noundef 0, ptr noundef nonnull %4) #18
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %21, %41
  %26 = load ptr, ptr @df, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 3, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load i32, ptr %4, align 4, !tbaa !30
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !30
  %33 = icmp ugt i32 %32, 32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef %29) #17
  br label %41

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 3, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = getelementptr inbounds i32, ptr %38, i64 %30
  %40 = load i32, ptr %39, align 4, !tbaa !30
  tail call void @bitmap_set_range(ptr noundef %12, i32 noundef %40, i32 noundef %32) #17
  br label %41

41:                                               ; preds = %34, %36
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %42 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %25, !llvm.loop !69

44:                                               ; preds = %41, %21
  %45 = load ptr, ptr @seen_in_block, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %45) #17
  store ptr null, ptr @seen_in_block, align 8, !tbaa !6
  %46 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %46) #17
  store ptr null, ptr @seen_in_insn, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_init_solution(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !llvm.loop !70

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @df_worklist_dataflow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_confluence_n(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !10
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = load ptr, ptr %0, align 8, !tbaa !33
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !10
  %14 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %13) #18
  %15 = getelementptr inbounds %struct.df_rd_bb_info, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !35
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %1
  %22 = and i32 %18, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @df, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 1, i64 3
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct.df_rd_problem_data, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  tail call void @bitmap_copy(ptr noundef %33, ptr noundef %16) #17
  %34 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %33, ptr noundef %32) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %30, i32 noundef 0, ptr noundef nonnull %3) #18
  %35 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %24, %37
  %38 = load ptr, ptr @df, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 3, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = load i32, ptr %3, align 4, !tbaa !30
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !30
  %45 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 3, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = getelementptr inbounds i32, ptr %46, i64 %42
  %48 = load i32, ptr %47, align 4, !tbaa !30
  tail call void @bitmap_clear_range(ptr noundef %33, i32 noundef %44, i32 noundef %48) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %37, !llvm.loop !71

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
define internal zeroext i8 @df_rd_transfer_function(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %5 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = load ptr, ptr %4, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.df_rd_bb_info, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %8, ptr noundef %10, ptr noundef %6, ptr noundef %11) #17
  br label %49

18:                                               ; preds = %1
  %19 = load ptr, ptr @df, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.df_rd_problem_data, ptr %23, i64 0, i32 2
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %24) #17
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %6) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %2) #18
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %18, %28
  %29 = load ptr, ptr @df, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = load i32, ptr %2, align 4, !tbaa !30
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !30
  %36 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds i32, ptr %37, i64 %33
  %39 = load i32, ptr %38, align 4, !tbaa !30
  tail call void @bitmap_clear_range(ptr noundef %25, i32 noundef %35, i32 noundef %39) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %40 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %28, !llvm.loop !74

42:                                               ; preds = %28, %18
  %43 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %25, ptr noundef %11) #17
  %44 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %25, ptr noundef %10) #17
  %45 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %25, ptr noundef %8) #17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @bitmap_obstack_free(ptr noundef %8) #17
  store ptr %25, ptr %7, align 8, !tbaa !65
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
define internal void @df_rd_free() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  tail call void @free_alloc_pool(ptr noundef %9) #17
  %10 = getelementptr inbounds %struct.df_rd_problem_data, ptr %5, i64 0, i32 2
  tail call void @bitmap_obstack_release(ptr noundef nonnull %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  tail call void @free(ptr noundef %16) #18
  %17 = load ptr, ptr @df, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  tail call void @free(ptr noundef %21) #18
  %22 = load ptr, ptr @df, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 1, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %7, %0
  %26 = phi ptr [ %24, %7 ], [ %3, %0 ]
  tail call void @free(ptr noundef %26) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_start_dump(ptr noundef %0) #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %0)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 22, i64 1, ptr %0)
  %15 = load ptr, ptr %12, align 8, !tbaa !55
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %16 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %0)
  %17 = getelementptr inbounds %struct.df_rd_problem_data, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %10
  %21 = zext i32 %6 to i64
  %22 = load ptr, ptr @df, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %20, %39
  %24 = phi ptr [ %22, %20 ], [ %40, %39 ]
  %25 = phi i64 [ 0, %20 ], [ %41, %39 ]
  %26 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 3, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds i32, ptr %27, i64 %25
  %29 = load i32, ptr %28, align 4, !tbaa !30
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 3, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = getelementptr inbounds i32, ptr %33, i64 %25
  %35 = load i32, ptr %34, align 4, !tbaa !30
  %36 = trunc i64 %25 to i32
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %36, i32 noundef %35, i32 noundef %29) #18
  %38 = load ptr, ptr @df, align 8, !tbaa !6
  br label %39

39:                                               ; preds = %23, %31
  %40 = phi ptr [ %24, %23 ], [ %38, %31 ]
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, %21
  br i1 %42, label %43, label %23, !llvm.loop !76

43:                                               ; preds = %39, %10
  %44 = tail call i32 @fputc(i32 10, ptr %0)
  br label %45

45:                                               ; preds = %1, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @bitmap_count_bits(ptr noundef nonnull %9) #17
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %13) #18
  %15 = load ptr, ptr %8, align 8, !tbaa !64
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %16 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = tail call i64 @bitmap_count_bits(ptr noundef %17) #17
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %19) #18
  %21 = load ptr, ptr %16, align 8, !tbaa !63
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  %22 = load ptr, ptr %5, align 8, !tbaa !60
  %23 = tail call i64 @bitmap_count_bits(ptr noundef %22) #17
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %24) #18
  %26 = load ptr, ptr %5, align 8, !tbaa !60
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #17
  br label %27

27:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_rd_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @bitmap_count_bits(ptr noundef nonnull %9) #17
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %13) #18
  %15 = load ptr, ptr %8, align 8, !tbaa !65
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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 {
  %5 = load ptr, ptr %1, align 8, !tbaa !72
  store ptr %5, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !79
  %7 = icmp eq ptr %5, null
  %8 = lshr i32 %2, 7
  br i1 %7, label %9, label %11

9:                                                ; preds = %16, %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !77
  %10 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !80
  br label %19

11:                                               ; preds = %4, %16
  %12 = phi ptr [ %17, %16 ], [ %5, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !80
  %15 = icmp ult i32 %14, %8
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !82
  store ptr %17, ptr %0, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %11

19:                                               ; preds = %11, %9
  %20 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %21 = phi ptr [ @bitmap_zero_bits, %9 ], [ %12, %11 ]
  %22 = icmp eq i32 %20, %8
  %23 = shl i32 %20, 7
  %24 = select i1 %22, i32 %2, i32 %23
  %25 = lshr i32 %24, 6
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !83
  %28 = zext nneg i32 %26 to i64
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !84
  %31 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %32 = and i32 %24, 63
  %33 = zext nneg i32 %32 to i64
  %34 = lshr i64 %30, %33
  store i64 %34, ptr %31, align 8, !tbaa !85
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = add i32 %24, %36
  store i32 %37, ptr %3, align 4, !tbaa !30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !30
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !86

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !30
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !30
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !83
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !77
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !83
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !84
  store i64 %35, ptr %3, align 8, !tbaa !85
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !30
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !30
  %40 = load i32, ptr %23, align 8, !tbaa !83
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !83
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !87

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !82
  store ptr %44, ptr %0, align 8, !tbaa !77
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !80
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !30
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !85
  store i32 %16, ptr %1, align 4, !tbaa !30
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_rd_get_bb_info(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 3
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !14
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !85
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !85
  %6 = load i32, ptr %1, align 4, !tbaa !30
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !30
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_maybe_reorganize_def_refs(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_bb_local_compute(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  %9 = load ptr, ptr @seen_in_block, align 8, !tbaa !6
  tail call void @bitmap_clear(ptr noundef %9) #17
  %10 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  tail call void @bitmap_clear(ptr noundef %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_rd_bb_local_compute_process_def(ptr noundef %8, ptr noundef %17, i32 noundef 0) #18
  br label %18

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %18, %51
  %25 = phi ptr [ %53, %51 ], [ %22, %18 ]
  %26 = load ptr, ptr %19, align 8, !tbaa !23
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !23
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %55, label %31

31:                                               ; preds = %24
  %32 = load i32, ptr %25, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !23
  %39 = load ptr, ptr @df, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = zext i32 %38 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.df_insn_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  tail call fastcc void @df_rd_bb_local_compute_process_def(ptr noundef %8, ptr noundef %46, i32 noundef 0) #18
  %47 = load ptr, ptr @seen_in_block, align 8, !tbaa !6
  %48 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  %49 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %47, ptr noundef %48) #17
  %50 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  tail call void @bitmap_clear(ptr noundef %50) #17
  br label %51

51:                                               ; preds = %31, %36
  %52 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !23
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24, !llvm.loop !91

55:                                               ; preds = %24, %51, %18
  %56 = load ptr, ptr @df, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 27
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_rd_bb_local_compute_process_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.df_rd_bb_info, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %6, %67
  %10 = phi ptr [ %4, %6 ], [ %69, %67 ]
  %11 = phi ptr [ %1, %6 ], [ %68, %67 ]
  %12 = load i32, ptr %10, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %67

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !23
  %19 = load ptr, ptr @df, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 3, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !30
  %25 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 3, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds i32, ptr %26, i64 %22
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 27
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 2
  %32 = icmp eq i8 %31, 0
  %33 = icmp ugt i32 %18, 52
  %34 = or i1 %33, %32
  br i1 %34, label %35, label %67

35:                                               ; preds = %16
  %36 = load ptr, ptr @seen_in_block, align 8, !tbaa !6
  %37 = tail call i32 @bitmap_bit_p(ptr noundef %36, i32 noundef %18) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %18) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i32, ptr %10, align 8
  %45 = and i32 %44, 5308416
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = icmp ugt i32 %28, 32
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load ptr, ptr %8, align 8, !tbaa !62
  %51 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %50, i32 noundef %18) #17
  br label %54

52:                                               ; preds = %47
  %53 = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @bitmap_set_range(ptr noundef %53, i32 noundef %24, i32 noundef %28) #17
  br label %54

54:                                               ; preds = %52, %49
  %55 = load ptr, ptr %7, align 8, !tbaa !63
  tail call void @bitmap_clear_range(ptr noundef %55, i32 noundef %24, i32 noundef %28) #17
  br label %56

56:                                               ; preds = %54, %43, %39
  %57 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  %58 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %57, i32 noundef %18) #17
  %59 = load i32, ptr %10, align 8
  %60 = and i32 %59, 12582912
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load ptr, ptr %7, align 8, !tbaa !63
  %64 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !23
  %66 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %63, i32 noundef %65) #17
  br label %67

67:                                               ; preds = %16, %56, %62, %35, %9
  %68 = getelementptr inbounds ptr, ptr %11, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %9, !llvm.loop !92

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
define dso_local void @df_lr_add_problem() local_unnamed_addr #0 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_LR) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_alloc(ptr nocapture readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.22, i64 noundef 32, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !53
  %16 = load ptr, ptr %13, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  tail call void @df_grow_bb_info(ptr noundef %18) #18
  %19 = load ptr, ptr @df, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %23, i32 noundef 0, ptr noundef nonnull %2) #18
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %55, label %26

26:                                               ; preds = %17, %48
  %27 = load i32, ptr %2, align 4, !tbaa !30
  %28 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %27) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !94
  tail call void @bitmap_clear(ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  tail call void @bitmap_clear(ptr noundef %33) #17
  br label %48

34:                                               ; preds = %26
  %35 = load ptr, ptr @df, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 1, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.dataflow, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = tail call ptr @pool_alloc(ptr noundef %39) #17
  tail call fastcc void @df_lr_set_bb_info(i32 noundef %27, ptr noundef %40) #18
  %41 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !96
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %43, ptr %40, align 8, !tbaa !94
  %44 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %45 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !97
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %47 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !98
  br label %48

48:                                               ; preds = %34, %30
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %26, !llvm.loop !99

51:                                               ; preds = %48
  %52 = load ptr, ptr @df, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  br label %55

55:                                               ; preds = %51, %17
  %56 = phi ptr [ %54, %51 ], [ %21, %17 ]
  %57 = getelementptr inbounds %struct.dataflow, ptr %56, i64 0, i32 9
  store i8 0, ptr %57, align 2, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !100

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !96
  %7 = load ptr, ptr %1, align 8, !tbaa !94
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !94
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !98
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_local_compute(ptr nocapture readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  tail call void @bitmap_clear(ptr noundef %6) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef 7) #17
  %11 = load i32, ptr @reload_completed, align 4, !tbaa !30
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %1
  %14 = load ptr, ptr @df, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef 20) #17
  %18 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr @df, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef 16) #17
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, ptr @flag_pic, align 4, !tbaa !30
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr @reload_completed, align 4, !tbaa !30
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !6
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #18
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %51, label %38

35:                                               ; preds = %28
  %36 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %51, label %45

38:                                               ; preds = %31
  %39 = zext i32 %33 to i64
  %40 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !23
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #18
  br label %45

45:                                               ; preds = %35, %43
  %46 = phi i32 [ %44, %43 ], [ 3, %35 ]
  %47 = load ptr, ptr @df, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !101
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %49, i32 noundef %46) #17
  br label %51

51:                                               ; preds = %38, %25, %31, %35, %45, %1
  %52 = load ptr, ptr @df, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.dataflow, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %56, i32 noundef 0, ptr noundef nonnull %2) #18
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %51, %70
  %60 = load i32, ptr %2, align 4, !tbaa !30
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef 1) #18
  %64 = getelementptr inbounds %struct.df_lr_bb_info, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !96
  %66 = load ptr, ptr @df, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !102
  tail call void @bitmap_copy(ptr noundef %65, ptr noundef %68) #17
  br label %70

69:                                               ; preds = %59
  tail call fastcc void @df_lr_bb_local_compute(i32 noundef %60) #18
  br label %70

70:                                               ; preds = %62, %69
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %71 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %59, !llvm.loop !103

73:                                               ; preds = %70
  %74 = load ptr, ptr @df, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 1, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = getelementptr inbounds %struct.dataflow, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !93
  br label %79

79:                                               ; preds = %73, %51
  %80 = phi ptr [ %78, %73 ], [ %56, %51 ]
  tail call void @bitmap_clear(ptr noundef %80) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !llvm.loop !104

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_confluence_0(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !10
  %11 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %10) #18
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = load ptr, ptr @df, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  tail call void @bitmap_copy(ptr noundef %13, ptr noundef %16) #17
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_confluence_n(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !33
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !10
  %12 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %11) #18
  %13 = getelementptr inbounds %struct.df_lr_bb_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !35
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !6
  %21 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %7, ptr noundef %14, ptr noundef %20) #17
  br label %24

22:                                               ; preds = %1
  %23 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %7, ptr noundef %14) #17
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr @df, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %7, ptr noundef %27) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_lr_transfer_function(i32 noundef %0) #0 {
  %2 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = load ptr, ptr %2, align 8, !tbaa !94
  %10 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %4, ptr noundef %8, ptr noundef %6, ptr noundef %9) #17
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_finalize(ptr noundef %0) #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 8
  store i8 0, ptr %5, align 1, !tbaa !106
  %6 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 27
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  tail call void @run_fast_df_dce() #17
  %11 = load ptr, ptr @df, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !106
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1, %18
  ret void

18:                                               ; preds = %10
  %19 = tail call i32 @df_clear_flags(i32 noundef 1) #17
  tail call void @df_lr_alloc(ptr poison) #18
  tail call void @df_lr_local_compute(ptr poison) #18
  %20 = load ptr, ptr @df, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !107
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !108
  tail call void @df_worklist_dataflow(ptr noundef %22, ptr noundef %0, ptr noundef %24, i32 noundef %26) #17
  tail call void @df_lr_finalize(ptr noundef %0) #18
  %27 = tail call i32 @df_set_flags(i32 noundef 1) #17
  br label %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_free() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %7, %25
  %12 = phi ptr [ %26, %25 ], [ %1, %7 ]
  %13 = phi i32 [ %27, %25 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  tail call void @bitmap_obstack_free(ptr noundef %18) #17
  store ptr null, ptr %17, align 8, !tbaa !96
  %19 = load ptr, ptr %14, align 8, !tbaa !94
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %14, align 8, !tbaa !94
  %20 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !97
  %22 = getelementptr inbounds %struct.df_lr_bb_info, ptr %14, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  tail call void @bitmap_obstack_free(ptr noundef %23) #17
  store ptr null, ptr %22, align 8, !tbaa !98
  %24 = load ptr, ptr @df, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi ptr [ %24, %16 ], [ %12, %11 ]
  %27 = add nuw i32 %13, 1
  %28 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !14
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %11, label %33, !llvm.loop !109

33:                                               ; preds = %25, %7
  %34 = phi ptr [ %3, %7 ], [ %29, %25 ]
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  tail call void @free_alloc_pool(ptr noundef %36) #17
  %37 = load ptr, ptr @df, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 2
  store i32 0, ptr %40, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  tail call void @free(ptr noundef %42) #18
  %43 = load ptr, ptr @df, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  br label %46

46:                                               ; preds = %33, %0
  %47 = phi ptr [ %45, %33 ], [ %3, %0 ]
  %48 = getelementptr inbounds %struct.dataflow, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !93
  tail call void @bitmap_obstack_free(ptr noundef %49) #17
  %50 = load ptr, ptr @df, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 1, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.dataflow, ptr %52, i64 0, i32 4
  store ptr null, ptr %53, align 8, !tbaa !93
  %54 = load ptr, ptr %51, align 8, !tbaa !6
  tail call void @free(ptr noundef %54) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !97
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 13, i64 1, ptr %1)
  %22 = load ptr, ptr %18, align 8, !tbaa !110
  %23 = load i32, ptr %3, align 8, !tbaa !10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #17
  br label %27

27:                                               ; preds = %20, %11
  %28 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr %1)
  %29 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %30) #17
  %31 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 12, i64 1, ptr %1)
  %32 = load ptr, ptr %5, align 8, !tbaa !94
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %32) #17
  br label %33

33:                                               ; preds = %2, %7, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !98
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %1)
  %22 = getelementptr inbounds %struct.df_lr_problem_data, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = load i32, ptr %3, align 8, !tbaa !10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %27) #17
  br label %28

28:                                               ; preds = %11, %20, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_verify_solution_start() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !106
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !54
  br label %67

9:                                                ; preds = %0
  store i8 1, ptr %4, align 1, !tbaa !106
  %10 = tail call ptr @xmalloc(i64 noundef 16) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 5
  store ptr %10, ptr %14, align 8, !tbaa !54
  %15 = load ptr, ptr @cfun, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !19
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xmalloc(i64 noundef %21) #17
  store ptr %22, ptr %10, align 8, !tbaa !110
  %23 = load ptr, ptr @cfun, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !19
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #17
  %31 = getelementptr inbounds %struct.df_lr_problem_data, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !112
  %32 = load ptr, ptr @cfun, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !17
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %9, %37
  %38 = phi ptr [ %65, %37 ], [ %35, %9 ]
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %40 = load ptr, ptr %10, align 8, !tbaa !110
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !10
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %39, ptr %44, align 8, !tbaa !6
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %46 = load ptr, ptr %31, align 8, !tbaa !112
  %47 = load i32, ptr %41, align 8, !tbaa !10
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !6
  %50 = load ptr, ptr %10, align 8, !tbaa !110
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %47) #18
  %54 = getelementptr inbounds %struct.df_lr_bb_info, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !97
  tail call void @bitmap_copy(ptr noundef %52, ptr noundef %55) #17
  %56 = load ptr, ptr %31, align 8, !tbaa !112
  %57 = load i32, ptr %41, align 8, !tbaa !10
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %57) #18
  %62 = getelementptr inbounds %struct.df_lr_bb_info, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !98
  tail call void @bitmap_copy(ptr noundef %60, ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %37, !llvm.loop !113

67:                                               ; preds = %37, %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_lr_verify_solution_end() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %9 = load i8, ptr %8, align 1, !tbaa !106
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i8 0, ptr %8, align 1, !tbaa !106
  br label %49

12:                                               ; preds = %7
  %13 = load ptr, ptr @cfun, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %45
  %21 = phi ptr [ %16, %18 ], [ %47, %45 ]
  %22 = load ptr, ptr %5, align 8, !tbaa !110
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %24) #18
  %29 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %27, ptr noundef %30) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %19, align 8, !tbaa !112
  %35 = load i32, ptr %23, align 8, !tbaa !10
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %35) #18
  %40 = getelementptr inbounds %struct.df_lr_bb_info, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %38, ptr noundef %41) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1203, ptr noundef nonnull @.str.1) #17
  br label %45

45:                                               ; preds = %33, %44
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %20, !llvm.loop !114

49:                                               ; preds = %45, %12, %11
  %50 = load ptr, ptr @cfun, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi ptr [ %53, %55 ], [ %77, %57 ]
  %59 = load ptr, ptr %5, align 8, !tbaa !110
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !10
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %64) #17
  %65 = load ptr, ptr %5, align 8, !tbaa !110
  %66 = load i32, ptr %60, align 8, !tbaa !10
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  store ptr null, ptr %68, align 8, !tbaa !6
  %69 = load ptr, ptr %56, align 8, !tbaa !112
  %70 = getelementptr inbounds ptr, ptr %69, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %71) #17
  %72 = load ptr, ptr %56, align 8, !tbaa !112
  %73 = load i32, ptr %60, align 8, !tbaa !10
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  store ptr null, ptr %75, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %57, !llvm.loop !115

79:                                               ; preds = %57, %49
  %80 = load ptr, ptr %5, align 8, !tbaa !110
  tail call void @free(ptr noundef %80) #18
  %81 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !112
  tail call void @free(ptr noundef %82) #18
  tail call void @free(ptr noundef nonnull %5) #18
  %83 = load ptr, ptr @df, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.df, ptr %83, i64 0, i32 1, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds %struct.dataflow, ptr %85, i64 0, i32 5
  store ptr null, ptr %86, align 8, !tbaa !54
  br label %87

87:                                               ; preds = %0, %79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_lr_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 745, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !14
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !23
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_lr_bb_local_compute(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %9 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  br label %14

14:                                               ; preds = %12, %27
  %15 = phi ptr [ %10, %12 ], [ %29, %27 ]
  %16 = phi ptr [ %9, %12 ], [ %28, %27 ]
  %17 = load i32, ptr %15, align 8
  %18 = and i32 %17, 131072
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %15, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !23
  %23 = load ptr, ptr %8, align 8, !tbaa !94
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %22) #17
  %25 = load ptr, ptr %13, align 8, !tbaa !96
  %26 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %25, i32 noundef %22) #17
  br label %27

27:                                               ; preds = %20, %14
  %28 = getelementptr inbounds ptr, ptr %16, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14, !llvm.loop !116

31:                                               ; preds = %27, %1
  %32 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  br label %37

37:                                               ; preds = %35, %48
  %38 = phi ptr [ %33, %35 ], [ %50, %48 ]
  %39 = phi ptr [ %32, %35 ], [ %49, %48 ]
  %40 = load i32, ptr %38, align 8
  %41 = and i32 %40, 131072
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load ptr, ptr %36, align 8, !tbaa !96
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %38, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !23
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %44, i32 noundef %46) #17
  br label %48

48:                                               ; preds = %43, %37
  %49 = getelementptr inbounds ptr, ptr %39, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %37, !llvm.loop !117

52:                                               ; preds = %48, %31
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !23
  %55 = getelementptr inbounds %struct.rtl_bb_info, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !23
  %57 = icmp eq ptr %56, null
  br i1 %57, label %128, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  br label %60

60:                                               ; preds = %58, %124
  %61 = phi ptr [ %56, %58 ], [ %126, %124 ]
  %62 = load ptr, ptr %53, align 8, !tbaa !23
  %63 = load ptr, ptr %62, align 8, !tbaa !89
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !23
  %66 = icmp eq ptr %61, %65
  br i1 %66, label %128, label %67

67:                                               ; preds = %60
  %68 = load i32, ptr %61, align 8
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -11
  %71 = icmp ult i32 %70, -3
  br i1 %71, label %124, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !23
  %75 = load ptr, ptr @df, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = zext i32 %74 to i64
  %79 = getelementptr inbounds ptr, ptr %77, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.df_insn_info, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !51
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %108, label %85

85:                                               ; preds = %72, %98
  %86 = phi ptr [ %100, %98 ], [ %83, %72 ]
  %87 = phi ptr [ %99, %98 ], [ %82, %72 ]
  %88 = load i32, ptr %86, align 8
  %89 = and i32 %88, 1114112
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.df_base_ref, ptr %86, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !23
  %94 = load ptr, ptr %8, align 8, !tbaa !94
  %95 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %94, i32 noundef %93) #17
  %96 = load ptr, ptr %59, align 8, !tbaa !96
  %97 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %96, i32 noundef %93) #17
  br label %98

98:                                               ; preds = %91, %85
  %99 = getelementptr inbounds ptr, ptr %87, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %85, !llvm.loop !118

102:                                              ; preds = %98
  %103 = load ptr, ptr @df, align 8, !tbaa !6
  %104 = getelementptr inbounds %struct.df, ptr %103, i64 0, i32 10
  %105 = load ptr, ptr %104, align 8, !tbaa !50
  %106 = getelementptr inbounds ptr, ptr %105, i64 %78
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  br label %108

108:                                              ; preds = %102, %72
  %109 = phi ptr [ %107, %102 ], [ %80, %72 ]
  %110 = getelementptr inbounds %struct.df_insn_info, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !119
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = icmp eq ptr %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %108, %114
  %115 = phi ptr [ %122, %114 ], [ %112, %108 ]
  %116 = phi ptr [ %121, %114 ], [ %111, %108 ]
  %117 = load ptr, ptr %59, align 8, !tbaa !96
  %118 = getelementptr inbounds %struct.df_base_ref, ptr %115, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !23
  %120 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %117, i32 noundef %119) #17
  %121 = getelementptr inbounds ptr, ptr %116, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %114, !llvm.loop !120

124:                                              ; preds = %114, %108, %67
  %125 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !23
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %60, !llvm.loop !121

128:                                              ; preds = %60, %124, %52
  %129 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = icmp eq ptr %130, null
  br i1 %131, label %151, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 1
  br label %134

134:                                              ; preds = %132, %147
  %135 = phi ptr [ %130, %132 ], [ %149, %147 ]
  %136 = phi ptr [ %129, %132 ], [ %148, %147 ]
  %137 = load i32, ptr %135, align 8
  %138 = and i32 %137, 131072
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.df_base_ref, ptr %135, i64 0, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !23
  %143 = load ptr, ptr %8, align 8, !tbaa !94
  %144 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %143, i32 noundef %142) #17
  %145 = load ptr, ptr %133, align 8, !tbaa !96
  %146 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %145, i32 noundef %142) #17
  br label %147

147:                                              ; preds = %140, %134
  %148 = getelementptr inbounds ptr, ptr %136, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !6
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %134, !llvm.loop !122

151:                                              ; preds = %147, %128
  %152 = load ptr, ptr @df, align 8, !tbaa !6
  %153 = getelementptr inbounds %struct.df, ptr %152, i64 0, i32 1, i64 2
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  tail call void @df_recompute_luids(ptr noundef %7) #17
  br label %157

157:                                              ; preds = %156, %151
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !123
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
define dso_local void @df_lr_verify_transfer_functions() local_unnamed_addr #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %67, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %9 = load ptr, ptr @cfun, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %3, %53
  %15 = phi ptr [ %55, %53 ], [ %12, %3 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !10
  %18 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %17) #18
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %17) #17
  %20 = icmp eq ptr %18, null
  %21 = load ptr, ptr @df, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = load i32, ptr %16, align 8, !tbaa !10
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %20, label %45, label %29

29:                                               ; preds = %14
  br i1 %28, label %30, label %48

30:                                               ; preds = %29
  %31 = load ptr, ptr %18, align 8, !tbaa !94
  tail call void @bitmap_copy(ptr noundef %4, ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %18, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %33) #17
  %34 = load ptr, ptr %18, align 8, !tbaa !94
  tail call void @bitmap_clear(ptr noundef %34) #17
  %35 = load ptr, ptr %32, align 8, !tbaa !96
  tail call void @bitmap_clear(ptr noundef %35) #17
  %36 = load i32, ptr %16, align 8, !tbaa !10
  tail call fastcc void @df_lr_bb_local_compute(i32 noundef %36) #18
  %37 = load ptr, ptr %18, align 8, !tbaa !94
  %38 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %37) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1306, ptr noundef nonnull @.str.1) #17
  br label %41

41:                                               ; preds = %30, %40
  %42 = load ptr, ptr %32, align 8, !tbaa !96
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
  %49 = load i32, ptr %16, align 8, !tbaa !10
  %50 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %49) #18
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1320, ptr noundef nonnull @.str.1) #17
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %14, !llvm.loop !124

57:                                               ; preds = %53, %3
  %58 = load ptr, ptr @df, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.df, ptr %58, i64 0, i32 1, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.dataflow, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !93
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
define dso_local void @df_live_add_problem() local_unnamed_addr #0 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_LIVE) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_alloc(ptr nocapture readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.29, i64 noundef 32, i64 noundef 100) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi ptr [ %12, %10 ], [ %4, %1 ]
  %18 = load ptr, ptr @df_live_scratch, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %21, ptr @df_live_scratch, align 8, !tbaa !6
  %22 = load ptr, ptr @df, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %17, %16 ]
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 1, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  tail call void @df_grow_bb_info(ptr noundef %26) #18
  %27 = load ptr, ptr @df, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %31, i32 noundef 0, ptr noundef nonnull %2) #18
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %23, %56
  %35 = load i32, ptr %2, align 4, !tbaa !30
  %36 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %35) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !125
  tail call void @bitmap_clear(ptr noundef %39) #17
  %40 = getelementptr inbounds %struct.df_live_bb_info, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !127
  tail call void @bitmap_clear(ptr noundef %41) #17
  br label %56

42:                                               ; preds = %34
  %43 = load ptr, ptr @df, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.dataflow, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = tail call ptr @pool_alloc(ptr noundef %47) #17
  tail call fastcc void @df_live_set_bb_info(i32 noundef %35, ptr noundef %48) #18
  %49 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %49, ptr %48, align 8, !tbaa !125
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %51 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !127
  %52 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %53 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !128
  %54 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %55 = getelementptr inbounds %struct.df_live_bb_info, ptr %48, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !129
  br label %56

56:                                               ; preds = %42, %38
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %34, !llvm.loop !130

59:                                               ; preds = %56
  %60 = load ptr, ptr @df, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.df, ptr %60, i64 0, i32 1, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  br label %63

63:                                               ; preds = %59, %23
  %64 = phi ptr [ %62, %59 ], [ %29, %23 ]
  %65 = load i32, ptr @optimize, align 4, !tbaa !30
  %66 = icmp slt i32 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.dataflow, ptr %64, i64 0, i32 9
  store i8 %67, ptr %68, align 2, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1447, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !131

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !127
  %7 = load ptr, ptr %1, align 8, !tbaa !125
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !129
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_local_compute(ptr nocapture readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  tail call void @df_grow_insn_info() #17
  %4 = load ptr, ptr @df, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #18
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1, %11
  %12 = load i32, ptr %2, align 4, !tbaa !30
  tail call fastcc void @df_live_bb_local_compute(i32 noundef %12) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %11, !llvm.loop !132

15:                                               ; preds = %11
  %16 = load ptr, ptr @df, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi ptr [ %20, %15 ], [ %8, %1 ]
  tail call void @bitmap_clear(ptr noundef %22) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %7) #18
  %9 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #18
  %10 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  tail call void @bitmap_and(ptr noundef %11, ptr noundef %13, ptr noundef %15) #17
  %16 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !128
  tail call void @bitmap_clear(ptr noundef %17) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %6, !llvm.loop !133

20:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_confluence_n(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !35
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !10
  %10 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !10
  %15 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.df_live_bb_info, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !128
  %18 = getelementptr inbounds %struct.df_live_bb_info, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %17, ptr noundef %19) #17
  br label %21

21:                                               ; preds = %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_live_transfer_function(i32 noundef %0) #0 {
  %2 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %0) #18
  %3 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %0) #18
  %4 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = load ptr, ptr %2, align 8, !tbaa !125
  %11 = load ptr, ptr @df_live_scratch, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df_lr_bb_info, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  tail call void @bitmap_and(ptr noundef %11, ptr noundef %9, ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_lr_bb_info, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  tail call void @bitmap_and_into(ptr noundef %5, ptr noundef %15) #17
  %16 = load ptr, ptr @df_live_scratch, align 8, !tbaa !6
  %17 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %7, ptr noundef %16, ptr noundef %5, ptr noundef %10) #17
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_finalize(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @df, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 8
  %8 = load i8, ptr %7, align 1, !tbaa !106
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %10, %13
  %14 = load i32, ptr %3, align 4, !tbaa !30
  %15 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %14) #18
  %16 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %14) #18
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = getelementptr inbounds %struct.df_lr_bb_info, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  tail call void @bitmap_and_into(ptr noundef %18, ptr noundef %20) #17
  %21 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !129
  %23 = getelementptr inbounds %struct.df_lr_bb_info, ptr %15, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  tail call void @bitmap_and_into(ptr noundef %22, ptr noundef %24) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !32
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %13, !llvm.loop !134

27:                                               ; preds = %13
  %28 = load ptr, ptr @df, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  br label %31

31:                                               ; preds = %27, %10
  %32 = phi ptr [ %30, %27 ], [ %6, %10 ]
  %33 = getelementptr inbounds %struct.dataflow, ptr %32, i64 0, i32 8
  store i8 0, ptr %33, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_free() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %7, %25
  %12 = phi ptr [ %26, %25 ], [ %1, %7 ]
  %13 = phi i32 [ %27, %25 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !127
  tail call void @bitmap_obstack_free(ptr noundef %18) #17
  store ptr null, ptr %17, align 8, !tbaa !127
  %19 = load ptr, ptr %14, align 8, !tbaa !125
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %14, align 8, !tbaa !125
  %20 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !128
  %22 = getelementptr inbounds %struct.df_live_bb_info, ptr %14, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  tail call void @bitmap_obstack_free(ptr noundef %23) #17
  store ptr null, ptr %22, align 8, !tbaa !129
  %24 = load ptr, ptr @df, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi ptr [ %24, %16 ], [ %12, %11 ]
  %27 = add nuw i32 %13, 1
  %28 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !14
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %11, label %33, !llvm.loop !135

33:                                               ; preds = %25, %7
  %34 = phi ptr [ %3, %7 ], [ %29, %25 ]
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  tail call void @free_alloc_pool(ptr noundef %36) #17
  %37 = load ptr, ptr @df, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 2
  store i32 0, ptr %40, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  tail call void @free(ptr noundef %42) #18
  %43 = load ptr, ptr @df_live_scratch, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  tail call void @bitmap_obstack_free(ptr noundef nonnull %43) #17
  store ptr null, ptr @df_live_scratch, align 8, !tbaa !6
  br label %46

46:                                               ; preds = %33, %45, %0
  %47 = load ptr, ptr @df, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  tail call void @bitmap_obstack_free(ptr noundef %51) #17
  %52 = load ptr, ptr @df, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 1, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.dataflow, ptr %54, i64 0, i32 4
  store ptr null, ptr %55, align 8, !tbaa !93
  %56 = load ptr, ptr %53, align 8, !tbaa !6
  tail call void @free(ptr noundef %56) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 14, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !128
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 13, i64 1, ptr %1)
  %22 = load ptr, ptr %18, align 8, !tbaa !136
  %23 = load i32, ptr %3, align 8, !tbaa !10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #17
  br label %27

27:                                               ; preds = %20, %11
  %28 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %1)
  %29 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %30) #17
  %31 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 14, i64 1, ptr %1)
  %32 = load ptr, ptr %5, align 8, !tbaa !125
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %32) #17
  br label %33

33:                                               ; preds = %2, %7, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !129
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = load ptr, ptr @df, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %1)
  %22 = getelementptr inbounds %struct.df_live_problem_data, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !138
  %24 = load i32, ptr %3, align 8, !tbaa !10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %27) #17
  br label %28

28:                                               ; preds = %11, %20, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_verify_solution_start() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !106
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !54
  br label %67

9:                                                ; preds = %0
  store i8 1, ptr %4, align 1, !tbaa !106
  %10 = tail call ptr @xmalloc(i64 noundef 16) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 5
  store ptr %10, ptr %14, align 8, !tbaa !54
  %15 = load ptr, ptr @cfun, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !19
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xmalloc(i64 noundef %21) #17
  store ptr %22, ptr %10, align 8, !tbaa !136
  %23 = load ptr, ptr @cfun, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !19
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #17
  %31 = getelementptr inbounds %struct.df_live_problem_data, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !138
  %32 = load ptr, ptr @cfun, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !17
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %9, %37
  %38 = phi ptr [ %65, %37 ], [ %35, %9 ]
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %40 = load ptr, ptr %10, align 8, !tbaa !136
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !10
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %39, ptr %44, align 8, !tbaa !6
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %46 = load ptr, ptr %31, align 8, !tbaa !138
  %47 = load i32, ptr %41, align 8, !tbaa !10
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !6
  %50 = load ptr, ptr %10, align 8, !tbaa !136
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %47) #18
  %54 = getelementptr inbounds %struct.df_live_bb_info, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !128
  tail call void @bitmap_copy(ptr noundef %52, ptr noundef %55) #17
  %56 = load ptr, ptr %31, align 8, !tbaa !138
  %57 = load i32, ptr %41, align 8, !tbaa !10
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %57) #18
  %62 = getelementptr inbounds %struct.df_live_bb_info, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !129
  tail call void @bitmap_copy(ptr noundef %60, ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %37, !llvm.loop !139

67:                                               ; preds = %37, %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_live_verify_solution_end() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @cfun, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %40
  %16 = phi ptr [ %11, %13 ], [ %42, %40 ]
  %17 = load ptr, ptr %5, align 8, !tbaa !136
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !10
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %19) #18
  %24 = getelementptr inbounds %struct.df_live_bb_info, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !128
  %26 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %22, ptr noundef %25) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %15
  %29 = load ptr, ptr %14, align 8, !tbaa !138
  %30 = load i32, ptr %18, align 8, !tbaa !10
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %30) #18
  %35 = getelementptr inbounds %struct.df_live_bb_info, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  %37 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %33, ptr noundef %36) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1749, ptr noundef nonnull @.str.1) #17
  br label %40

40:                                               ; preds = %28, %39
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %15, !llvm.loop !140

44:                                               ; preds = %40
  %45 = load ptr, ptr @cfun, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !17
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %74, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi ptr [ %48, %50 ], [ %72, %52 ]
  %54 = load ptr, ptr %5, align 8, !tbaa !136
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !10
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %59) #17
  %60 = load ptr, ptr %5, align 8, !tbaa !136
  %61 = load i32, ptr %55, align 8, !tbaa !10
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  store ptr null, ptr %63, align 8, !tbaa !6
  %64 = load ptr, ptr %51, align 8, !tbaa !138
  %65 = getelementptr inbounds ptr, ptr %64, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %66) #17
  %67 = load ptr, ptr %51, align 8, !tbaa !138
  %68 = load i32, ptr %55, align 8, !tbaa !10
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  store ptr null, ptr %70, align 8, !tbaa !6
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %52, !llvm.loop !141

74:                                               ; preds = %52, %7, %44
  %75 = load ptr, ptr %5, align 8, !tbaa !136
  tail call void @free(ptr noundef %75) #18
  %76 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !138
  tail call void @free(ptr noundef %77) #18
  tail call void @free(ptr noundef nonnull %5) #18
  %78 = load ptr, ptr @df, align 8, !tbaa !6
  %79 = getelementptr inbounds %struct.df, ptr %78, i64 0, i32 1, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.dataflow, ptr %80, i64 0, i32 5
  store ptr null, ptr %81, align 8, !tbaa !54
  br label %82

82:                                               ; preds = %0, %74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_live_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1373, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !14
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1374, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @df_grow_insn_info() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_live_bb_local_compute(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %0) #18
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %82, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %77
  %16 = phi ptr [ %11, %13 ], [ %80, %77 ]
  %17 = phi i32 [ 0, %13 ], [ %78, %77 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !142
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = icmp eq ptr %16, %22
  br i1 %23, label %82, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !23
  %27 = load ptr, ptr @df, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = zext i32 %26 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load i32, ptr %16, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1474, ptr noundef nonnull @.str.1) #17
  br label %40

40:                                               ; preds = %34, %39
  %41 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %16) #17
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi ptr [ %32, %24 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 5
  store i32 %17, ptr %44, align 8, !tbaa !143
  %45 = load i32, ptr %16, align 8
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -7
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %77

49:                                               ; preds = %42
  %50 = add nsw i32 %17, 1
  %51 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !51
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %77, label %55

55:                                               ; preds = %49, %73
  %56 = phi ptr [ %75, %73 ], [ %53, %49 ]
  %57 = phi ptr [ %74, %73 ], [ %52, %49 ]
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %56, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !23
  %60 = load i32, ptr %56, align 8
  %61 = and i32 %60, 1114112
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = and i32 %60, 8388608
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = and i32 %60, 4194304
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66, %63, %55
  %70 = phi ptr [ %14, %55 ], [ %8, %63 ], [ %14, %66 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %59) #17
  br label %73

73:                                               ; preds = %69, %66
  %74 = getelementptr inbounds ptr, ptr %57, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %55, !llvm.loop !144

77:                                               ; preds = %73, %49, %42
  %78 = phi i32 [ %17, %42 ], [ %50, %49 ], [ %50, %73 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !23
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %15, !llvm.loop !145

82:                                               ; preds = %15, %77, %1
  %83 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = icmp eq ptr %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.df_live_bb_info, ptr %8, i64 0, i32 1
  br label %88

88:                                               ; preds = %86, %88
  %89 = phi ptr [ %84, %86 ], [ %96, %88 ]
  %90 = phi ptr [ %83, %86 ], [ %95, %88 ]
  %91 = load ptr, ptr %87, align 8, !tbaa !127
  %92 = getelementptr inbounds %struct.df_base_ref, ptr %89, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !23
  %94 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %91, i32 noundef %93) #17
  %95 = getelementptr inbounds ptr, ptr %90, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %88, !llvm.loop !146

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
define dso_local void @df_live_set_all_dirty() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %17, %6 ], [ %4, %0 ]
  %8 = load ptr, ptr @df, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !10
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !147

19:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_live_verify_transfer_functions() local_unnamed_addr #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %65, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @df_grow_insn_info() #17
  %7 = load ptr, ptr @cfun, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %3, %51
  %13 = phi ptr [ %53, %51 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !10
  %16 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %15) #18
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %15) #17
  %18 = icmp eq ptr %16, null
  %19 = load ptr, ptr @df, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = load i32, ptr %14, align 8, !tbaa !10
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %24) #17
  %26 = icmp eq i32 %25, 0
  br i1 %18, label %43, label %27

27:                                               ; preds = %12
  br i1 %26, label %28, label %46

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  tail call void @bitmap_copy(ptr noundef %4, ptr noundef %30) #17
  %31 = load ptr, ptr %16, align 8, !tbaa !125
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %31) #17
  %32 = load ptr, ptr %29, align 8, !tbaa !127
  tail call void @bitmap_clear(ptr noundef %32) #17
  %33 = load ptr, ptr %16, align 8, !tbaa !125
  tail call void @bitmap_clear(ptr noundef %33) #17
  %34 = load i32, ptr %14, align 8, !tbaa !10
  tail call fastcc void @df_live_bb_local_compute(i32 noundef %34) #18
  %35 = load ptr, ptr %29, align 8, !tbaa !127
  %36 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %35) #17
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1863, ptr noundef nonnull @.str.1) #17
  br label %39

39:                                               ; preds = %28, %38
  %40 = load ptr, ptr %16, align 8, !tbaa !125
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
  %47 = load i32, ptr %14, align 8, !tbaa !10
  %48 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %47) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #17
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %12, !llvm.loop !148

55:                                               ; preds = %51, %3
  %56 = load ptr, ptr @df, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !93
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
define dso_local noundef ptr @df_chain_create(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 4
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #17
  store ptr %10, ptr %3, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.df_link, ptr %10, i64 0, i32 1
  store ptr %4, ptr %11, align 8, !tbaa !26
  store ptr %1, ptr %10, align 8, !tbaa !21
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_unlink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.df_link, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = load ptr, ptr %6, align 8, !tbaa !21
  tail call fastcc void @df_chain_unlink_1(ptr noundef %9, ptr noundef %0) #18
  %10 = load ptr, ptr @df, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 4
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  tail call void @pool_free(ptr noundef %14, ptr noundef nonnull %6) #17
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %5, !llvm.loop !149

16:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_unlink_1(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !21
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %25

9:                                                ; preds = %25
  %10 = load ptr, ptr %28, align 8, !tbaa !21
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %25, !llvm.loop !150

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %4, %6 ], [ %28, %9 ]
  %14 = phi ptr [ null, %6 ], [ %26, %9 ]
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.df_link, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.df_link, ptr %14, i64 0, i32 1
  %19 = select i1 %15, ptr %3, ptr %18
  store ptr %17, ptr %19, align 8, !tbaa !23
  %20 = load ptr, ptr @df, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1, i64 4
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  tail call void @pool_free(ptr noundef %24, ptr noundef nonnull %13) #17
  br label %30

25:                                               ; preds = %6, %9
  %26 = phi ptr [ %28, %9 ], [ %4, %6 ]
  %27 = getelementptr inbounds %struct.df_link, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !150

30:                                               ; preds = %25, %2, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_copy(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = tail call ptr @df_chain_create(ptr noundef %0, ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.df_link, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !151

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_chain_add_problem(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_CHAIN) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 4
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 6
  store i32 %0, ptr %5, align 8, !tbaa !152
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %7 = load ptr, ptr @df, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1, i64 4
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_alloc(ptr nocapture readnone %0) #0 {
  tail call fastcc void @df_chain_remove_problem() #18
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.34, i64 noundef 16, i64 noundef 50) #17
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !53
  %7 = load ptr, ptr %4, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 9
  store i8 1, ptr %8, align 2, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_reset(ptr nocapture readnone %0) #0 {
  tail call fastcc void @df_chain_remove_problem() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_finalize(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !30
  tail call fastcc void @df_chain_create_bb(i32 noundef %7) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !llvm.loop !153

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_free() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  tail call void @free_alloc_pool(ptr noundef %5) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 4
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  tail call void @bitmap_obstack_free(ptr noundef %10) #17
  %11 = load ptr, ptr @df, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 4
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !93
  %15 = load ptr, ptr %12, align 8, !tbaa !6
  tail call void @free(ptr noundef %15) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_chain_fully_remove_problem() #0 {
  tail call fastcc void @df_chain_remove_problem() #18
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 4
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !93
  %10 = load ptr, ptr %7, align 8, !tbaa !6
  tail call void @free(ptr noundef %10) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @df_chain_top_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 {
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !10
  %13 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %12) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 34, i64 1, ptr %1)
  %18 = load ptr, ptr %13, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %30, %20 ], [ %18, %16 ]
  %22 = phi ptr [ %29, %20 ], [ %13, %16 ]
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %24) #18
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  tail call void @df_chain_dump(ptr noundef %27, ptr noundef %1) #18
  %28 = tail call i32 @fputc(i32 10, ptr %1)
  %29 = getelementptr inbounds ptr, ptr %22, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !154

32:                                               ; preds = %20, %16, %10
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %91, label %37

37:                                               ; preds = %32, %87
  %38 = phi ptr [ %89, %87 ], [ %35, %32 ]
  %39 = load ptr, ptr %33, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %91, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %87

50:                                               ; preds = %45
  %51 = load ptr, ptr @df, align 8, !tbaa !6
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !23
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %87, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !143
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %65, i32 noundef %55) #18
  %67 = load ptr, ptr %60, align 8, !tbaa !6
  %68 = icmp eq ptr %67, null
  br i1 %68, label %87, label %69

69:                                               ; preds = %63, %80
  %70 = phi ptr [ %85, %80 ], [ %67, %63 ]
  %71 = phi ptr [ %84, %80 ], [ %60, %63 ]
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %70, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !23
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
  %82 = load ptr, ptr %81, align 8, !tbaa !23
  tail call void @df_chain_dump(ptr noundef %82, ptr noundef %1) #18
  %83 = tail call i32 @fputc(i32 10, ptr %1)
  %84 = getelementptr inbounds ptr, ptr %71, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %69, !llvm.loop !155

87:                                               ; preds = %80, %63, %45, %50
  %88 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %89 = load ptr, ptr %88, align 8, !tbaa !23
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %37, !llvm.loop !156

91:                                               ; preds = %87, %37, %32, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @df_chain_bottom_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 {
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !152
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %111, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !10
  %13 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %12) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 34, i64 1, ptr %1)
  %18 = load ptr, ptr %13, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %30, %20 ], [ %18, %16 ]
  %22 = phi ptr [ %29, %20 ], [ %13, %16 ]
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %24) #18
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  tail call void @df_chain_dump(ptr noundef %27, ptr noundef %1) #18
  %28 = tail call i32 @fputc(i32 10, ptr %1)
  %29 = getelementptr inbounds ptr, ptr %22, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !157

32:                                               ; preds = %20, %16, %10
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %111, label %37

37:                                               ; preds = %32, %107
  %38 = phi ptr [ %109, %107 ], [ %35, %32 ]
  %39 = load ptr, ptr %33, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %111, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %107

50:                                               ; preds = %45
  %51 = load ptr, ptr @df, align 8, !tbaa !6
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !23
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !158
  %61 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !119
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load ptr, ptr %60, align 8, !tbaa !6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %107, label %68

68:                                               ; preds = %65, %50
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !143
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %70, i32 noundef %55) #18
  %72 = load ptr, ptr %62, align 8, !tbaa !6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %88, %68
  %75 = load ptr, ptr %60, align 8, !tbaa !6
  %76 = icmp eq ptr %75, null
  br i1 %76, label %107, label %95

77:                                               ; preds = %68, %88
  %78 = phi ptr [ %93, %88 ], [ %72, %68 ]
  %79 = phi ptr [ %92, %88 ], [ %62, %68 ]
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %78, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !23
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
  %90 = load ptr, ptr %89, align 8, !tbaa !23
  tail call void @df_chain_dump(ptr noundef %90, ptr noundef %1) #18
  %91 = tail call i32 @fputc(i32 10, ptr %1)
  %92 = getelementptr inbounds ptr, ptr %79, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = icmp eq ptr %93, null
  br i1 %94, label %74, label %77, !llvm.loop !159

95:                                               ; preds = %74, %95
  %96 = phi ptr [ %105, %95 ], [ %75, %74 ]
  %97 = phi ptr [ %104, %95 ], [ %60, %74 ]
  %98 = getelementptr inbounds %struct.df_base_ref, ptr %96, i64 0, i32 6
  %99 = load i32, ptr %98, align 8, !tbaa !23
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %99) #18
  %101 = getelementptr inbounds %struct.df_base_ref, ptr %96, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !23
  tail call void @df_chain_dump(ptr noundef %102, ptr noundef %1) #18
  %103 = tail call i32 @fputc(i32 10, ptr %1)
  %104 = getelementptr inbounds ptr, ptr %97, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %95, !llvm.loop !160

107:                                              ; preds = %95, %74, %45, %65
  %108 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !23
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %37, !llvm.loop !161

111:                                              ; preds = %107, %37, %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_remove_problem() unnamed_addr #0 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  tail call void @free_alloc_pool(ptr noundef nonnull %7) #17
  %10 = load ptr, ptr @df, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 4
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi ptr [ %12, %9 ], [ %5, %0 ]
  %15 = phi ptr [ %10, %9 ], [ %3, %0 ]
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 1, i64 4
  %17 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %18, i32 noundef 0, ptr noundef nonnull %2) #18
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #18, !range !32
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %160, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr @cfun, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 10
  br label %25

25:                                               ; preds = %21, %157
  %26 = load ptr, ptr %23, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = load i32, ptr %2, align 4, !tbaa !30
  %30 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %28, i32 noundef %29) #18
  %31 = load ptr, ptr %16, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.dataflow, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !152
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !10
  %39 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %38) #18
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %36, %42
  %43 = phi ptr [ %47, %42 ], [ %40, %36 ]
  %44 = phi ptr [ %46, %42 ], [ %39, %36 ]
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %43, i64 0, i32 2
  store ptr null, ptr %45, align 8, !tbaa !23
  %46 = getelementptr inbounds ptr, ptr %44, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %42, !llvm.loop !162

49:                                               ; preds = %42
  %50 = load ptr, ptr %16, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.dataflow, ptr %50, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !152
  br label %53

53:                                               ; preds = %49, %36, %25
  %54 = phi i32 [ %52, %49 ], [ %33, %36 ], [ %33, %25 ]
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !10
  %60 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %59) #18
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %57, %63
  %64 = phi ptr [ %68, %63 ], [ %61, %57 ]
  %65 = phi ptr [ %67, %63 ], [ %60, %57 ]
  %66 = getelementptr inbounds %struct.df_base_ref, ptr %64, i64 0, i32 2
  store ptr null, ptr %66, align 8, !tbaa !23
  %67 = getelementptr inbounds ptr, ptr %65, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %63, !llvm.loop !163

70:                                               ; preds = %63, %57, %53
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !23
  %73 = load ptr, ptr %72, align 8, !tbaa !23
  %74 = icmp eq ptr %73, null
  br i1 %74, label %157, label %75

75:                                               ; preds = %70, %153
  %76 = phi ptr [ %155, %153 ], [ %73, %70 ]
  %77 = load ptr, ptr %71, align 8, !tbaa !23
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !142
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !23
  %82 = icmp eq ptr %76, %81
  br i1 %82, label %157, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !23
  %86 = load i32, ptr %76, align 8
  %87 = and i32 %86, 65535
  %88 = add nsw i32 %87, -7
  %89 = icmp ult i32 %88, 4
  br i1 %89, label %90, label %153

90:                                               ; preds = %83
  %91 = load ptr, ptr %16, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.dataflow, ptr %91, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !152
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %24, align 8, !tbaa !50
  %98 = zext i32 %85 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds %struct.df_insn_info, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !51
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %96, %105
  %106 = phi ptr [ %110, %105 ], [ %103, %96 ]
  %107 = phi ptr [ %109, %105 ], [ %102, %96 ]
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %106, i64 0, i32 2
  store ptr null, ptr %108, align 8, !tbaa !23
  %109 = getelementptr inbounds ptr, ptr %107, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %105, !llvm.loop !164

112:                                              ; preds = %105
  %113 = load ptr, ptr %16, align 8, !tbaa !6
  %114 = getelementptr inbounds %struct.dataflow, ptr %113, i64 0, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !152
  br label %116

116:                                              ; preds = %112, %96, %90
  %117 = phi i32 [ %115, %112 ], [ %93, %96 ], [ %93, %90 ]
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %153, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %24, align 8, !tbaa !50
  %122 = zext i32 %85 to i64
  %123 = getelementptr inbounds ptr, ptr %121, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = getelementptr inbounds %struct.df_insn_info, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !119
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129

129:                                              ; preds = %120, %129
  %130 = phi ptr [ %134, %129 ], [ %127, %120 ]
  %131 = phi ptr [ %133, %129 ], [ %126, %120 ]
  %132 = getelementptr inbounds %struct.df_base_ref, ptr %130, i64 0, i32 2
  store ptr null, ptr %132, align 8, !tbaa !23
  %133 = getelementptr inbounds ptr, ptr %131, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %129, !llvm.loop !165

136:                                              ; preds = %129
  %137 = load ptr, ptr %24, align 8, !tbaa !50
  %138 = getelementptr inbounds ptr, ptr %137, i64 %122
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  br label %140

140:                                              ; preds = %136, %120
  %141 = phi ptr [ %139, %136 ], [ %124, %120 ]
  %142 = getelementptr inbounds %struct.df_insn_info, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !158
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %140, %146
  %147 = phi ptr [ %151, %146 ], [ %144, %140 ]
  %148 = phi ptr [ %150, %146 ], [ %143, %140 ]
  %149 = getelementptr inbounds %struct.df_base_ref, ptr %147, i64 0, i32 2
  store ptr null, ptr %149, align 8, !tbaa !23
  %150 = getelementptr inbounds ptr, ptr %148, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %146, !llvm.loop !166

153:                                              ; preds = %146, %140, %83, %116
  %154 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !23
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %75, !llvm.loop !167

157:                                              ; preds = %75, %153, %70
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #18
  %158 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #18, !range !32
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %25, !llvm.loop !168

160:                                              ; preds = %157, %13
  %161 = load ptr, ptr %16, align 8, !tbaa !6
  %162 = getelementptr inbounds %struct.dataflow, ptr %161, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !93
  tail call void @bitmap_clear(ptr noundef %163) #17
  %164 = load ptr, ptr @df, align 8, !tbaa !6
  %165 = getelementptr inbounds %struct.df, ptr %164, i64 0, i32 1, i64 4
  %166 = load ptr, ptr %165, align 8, !tbaa !6
  %167 = getelementptr inbounds %struct.dataflow, ptr %166, i64 0, i32 3
  store ptr null, ptr %167, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_create_bb(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %0) #18
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %10 = getelementptr inbounds %struct.df_rd_bb_info, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  tail call void @bitmap_copy(ptr noundef %9, ptr noundef %11) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 4
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %0) #17
  tail call void @df_rd_simulate_artificial_defs_at_top(ptr noundef %7, ptr noundef %9) #18
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %1, %59
  %23 = phi ptr [ %61, %59 ], [ %20, %1 ]
  %24 = load ptr, ptr %18, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !142
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %63, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr %23, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !23
  %38 = load ptr, ptr @df, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = zext i32 %37 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !119
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %45) #18
  %46 = load ptr, ptr @df, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 27
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds ptr, ptr %53, i64 %41
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.df_insn_info, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !158
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %57) #18
  br label %58

58:                                               ; preds = %51, %35
  tail call void @df_rd_simulate_one_insn(ptr nonnull poison, ptr noundef nonnull %23, ptr noundef %9) #18
  br label %59

59:                                               ; preds = %30, %58
  %60 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !23
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %22, !llvm.loop !169

63:                                               ; preds = %22, %59, %1
  %64 = load ptr, ptr @df, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 27
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !10
  %72 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %71) #18
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %9, ptr noundef %72) #18
  br label %73

73:                                               ; preds = %69, %63
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_chain_create_bb_process_use(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7

7:                                                ; preds = %2, %71
  %8 = phi ptr [ %73, %71 ], [ %5, %2 ]
  %9 = phi ptr [ %72, %71 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 27
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  %17 = icmp ugt i32 %11, 52
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = zext i32 %11 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr %8, align 8
  %28 = and i32 %27, 131072
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = getelementptr inbounds i32, ptr %32, i64 %22
  %34 = load i32, ptr %33, align 4, !tbaa !30
  %35 = add i32 %24, -1
  %36 = add i32 %35, %34
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %34, ptr noundef nonnull %4) #18
  %37 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !32
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %30, %68
  %40 = load i32, ptr %4, align 4, !tbaa !30
  %41 = icmp ugt i32 %40, %36
  br i1 %41, label %71, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr @df, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !170
  %46 = zext i32 %40 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 4
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.dataflow, ptr %50, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !152
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %42
  %56 = tail call ptr @df_chain_create(ptr noundef %48, ptr noundef nonnull %8) #18
  %57 = load ptr, ptr @df, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct.df, ptr %57, i64 0, i32 1, i64 4
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds %struct.dataflow, ptr %59, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !152
  br label %62

62:                                               ; preds = %55, %42
  %63 = phi i32 [ %61, %55 ], [ %52, %42 ]
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @df_chain_create(ptr noundef nonnull %8, ptr noundef %48) #18
  br label %68

68:                                               ; preds = %66, %62
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %69 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !32
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %39, !llvm.loop !171

71:                                               ; preds = %68, %39, %30, %19, %26, %7
  %72 = getelementptr inbounds ptr, ptr %9, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %7, !llvm.loop !172

75:                                               ; preds = %71, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_byte_lr_get_regno_start(i32 noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !30
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_byte_lr_get_regno_len(i32 noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !175
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !30
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_add_problem() local_unnamed_addr #0 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_BYTE_LR) #17
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_alloc(ptr nocapture readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = tail call i32 @max_reg_num() #17
  %5 = tail call ptr @xmalloc(i64 noundef 144) #17
  %6 = load ptr, ptr @df, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 5
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 5
  store ptr %5, ptr %9, align 8, !tbaa !54
  %10 = load ptr, ptr %7, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.43, i64 noundef 32, i64 noundef 50) #17
  %16 = load ptr, ptr @df, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 1, i64 5
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 3
  store ptr %15, ptr %19, align 8, !tbaa !53
  %20 = load ptr, ptr %17, align 8, !tbaa !6
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
  store ptr %26, ptr %27, align 8, !tbaa !173
  %28 = tail call ptr @xmalloc(i64 noundef %25) #17
  %29 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 4
  store ptr %28, ptr %29, align 8, !tbaa !175
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %31 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !176
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  store ptr %32, ptr %5, align 8, !tbaa !177
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %34 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !178
  %35 = load ptr, ptr @cfun, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !17
  %38 = load ptr, ptr %37, align 8, !tbaa !179
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !180
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %97, label %44

44:                                               ; preds = %21, %80
  %45 = phi ptr [ %90, %80 ], [ %40, %21 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  %49 = icmp eq ptr %48, null
  br i1 %49, label %80, label %50

50:                                               ; preds = %44, %76
  %51 = phi ptr [ %78, %76 ], [ %48, %44 ]
  %52 = load ptr, ptr %46, align 8, !tbaa !23
  %53 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !142
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !23
  %57 = icmp eq ptr %51, %56
  br i1 %57, label %80, label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %51, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load ptr, ptr @df, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !50
  %67 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !23
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.df_insn_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !51
  tail call fastcc void @df_byte_lr_check_regs(ptr noundef %73) #18
  %74 = getelementptr inbounds %struct.df_insn_info, ptr %71, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !119
  tail call fastcc void @df_byte_lr_check_regs(ptr noundef %75) #18
  br label %76

76:                                               ; preds = %58, %63
  %77 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !23
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %50, !llvm.loop !181

80:                                               ; preds = %50, %76, %44
  %81 = load ptr, ptr @df, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 1, i64 5
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.dataflow, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !93
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !10
  %88 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %85, i32 noundef %87) #17
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !180
  %91 = load ptr, ptr @cfun, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !17
  %94 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !105
  %96 = icmp eq ptr %90, %95
  br i1 %96, label %97, label %44, !llvm.loop !182

97:                                               ; preds = %80, %21
  %98 = load ptr, ptr @df, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.df, ptr %98, i64 0, i32 1, i64 5
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = getelementptr inbounds %struct.dataflow, ptr %100, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !93
  %103 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %102, i32 noundef 0) #17
  %104 = load ptr, ptr @df, align 8, !tbaa !6
  %105 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 1, i64 5
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr inbounds %struct.dataflow, ptr %106, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !93
  %109 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %108, i32 noundef 1) #17
  %110 = icmp eq i32 %4, 0
  br i1 %110, label %138, label %111

111:                                              ; preds = %97, %131
  %112 = phi i64 [ %136, %131 ], [ 0, %97 ]
  %113 = phi i32 [ %135, %131 ], [ 0, %97 ]
  %114 = load ptr, ptr %27, align 8, !tbaa !173
  %115 = getelementptr inbounds i32, ptr %114, i64 %112
  store i32 %113, ptr %115, align 4, !tbaa !30
  %116 = load ptr, ptr %34, align 8, !tbaa !178
  %117 = trunc i64 %112 to i32
  %118 = tail call i32 @bitmap_bit_p(ptr noundef %116, i32 noundef %117) #17
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %111
  %121 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !6
  %122 = getelementptr inbounds ptr, ptr %121, i64 %112
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !23
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %111, %120
  %132 = phi i32 [ %130, %120 ], [ 1, %111 ]
  %133 = load ptr, ptr %29, align 8, !tbaa !175
  %134 = getelementptr inbounds i32, ptr %133, i64 %112
  store i32 %132, ptr %134, align 4, !tbaa !30
  %135 = add i32 %132, %113
  %136 = add nuw nsw i64 %112, 1
  %137 = icmp eq i64 %136, %24
  br i1 %137, label %138, label %111, !llvm.loop !183

138:                                              ; preds = %131, %97
  %139 = load ptr, ptr %31, align 8, !tbaa !176
  %140 = load ptr, ptr @df, align 8, !tbaa !6
  %141 = getelementptr inbounds %struct.df, ptr %140, i64 0, i32 13
  %142 = load ptr, ptr %141, align 8, !tbaa !101
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %139, ptr noundef %142) #18
  %143 = load ptr, ptr %5, align 8, !tbaa !177
  %144 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !6
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %143, ptr noundef %144) #18
  %145 = load ptr, ptr @df, align 8, !tbaa !6
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 1, i64 5
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = getelementptr inbounds %struct.dataflow, ptr %147, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !93
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %149, i32 noundef 0, ptr noundef nonnull %2) #18
  %150 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %181, label %152

152:                                              ; preds = %138, %174
  %153 = load i32, ptr %2, align 4, !tbaa !30
  %154 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %153) #18
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %154, align 8, !tbaa !184
  tail call void @bitmap_clear(ptr noundef %157) #17
  %158 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %154, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !186
  tail call void @bitmap_clear(ptr noundef %159) #17
  br label %174

160:                                              ; preds = %152
  %161 = load ptr, ptr @df, align 8, !tbaa !6
  %162 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 1, i64 5
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = getelementptr inbounds %struct.dataflow, ptr %163, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !53
  %166 = tail call ptr @pool_alloc(ptr noundef %165) #17
  tail call fastcc void @df_byte_lr_set_bb_info(i32 noundef %153, ptr noundef %166) #18
  %167 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %168 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 1
  store ptr %167, ptr %168, align 8, !tbaa !186
  %169 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  store ptr %169, ptr %166, align 8, !tbaa !184
  %170 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %171 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 2
  store ptr %170, ptr %171, align 8, !tbaa !187
  %172 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %23) #17
  %173 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %166, i64 0, i32 3
  store ptr %172, ptr %173, align 8, !tbaa !188
  br label %174

174:                                              ; preds = %160, %156
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %175 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %152, !llvm.loop !189

177:                                              ; preds = %174
  %178 = load ptr, ptr @df, align 8, !tbaa !6
  %179 = getelementptr inbounds %struct.df, ptr %178, i64 0, i32 1, i64 5
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  br label %181

181:                                              ; preds = %177, %138
  %182 = phi ptr [ %180, %177 ], [ %147, %138 ]
  %183 = getelementptr inbounds %struct.dataflow, ptr %182, i64 0, i32 9
  store i8 1, ptr %183, align 2, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2589, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !187
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !188
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !190

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !186
  %7 = load ptr, ptr %1, align 8, !tbaa !184
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !184
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !187
  %10 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !188
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !188
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #17
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_local_compute(ptr nocapture readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 5
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #18
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1, %22
  %12 = load i32, ptr %2, align 4, !tbaa !30
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef 1) #18
  %16 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !186
  %18 = load ptr, ptr @df, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %17, ptr noundef %20) #18
  br label %22

21:                                               ; preds = %11
  tail call fastcc void @df_byte_lr_bb_local_compute(i32 noundef %12) #18
  br label %22

22:                                               ; preds = %14, %21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %11, !llvm.loop !191

25:                                               ; preds = %22
  %26 = load ptr, ptr @df, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 1, i64 5
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.dataflow, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  br label %31

31:                                               ; preds = %25, %1
  %32 = phi ptr [ %30, %25 ], [ %8, %1 ]
  tail call void @bitmap_clear(ptr noundef %32) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !187
  %11 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !186
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !188
  tail call void @bitmap_clear(ptr noundef %14) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6, !llvm.loop !192

17:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_confluence_0(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !10
  %11 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %10) #18
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !188
  %19 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !176
  tail call void @bitmap_copy(ptr noundef %18, ptr noundef %20) #17
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_confluence_n(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr %0, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !10
  %10 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %9) #18
  %11 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !188
  %13 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !10
  %17 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %16) #18
  %18 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !187
  %20 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !35
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load ptr, ptr %6, align 8, !tbaa !177
  %26 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %12, ptr noundef %19, ptr noundef %25) #17
  br label %29

27:                                               ; preds = %1
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %12, ptr noundef %19) #17
  br label %29

29:                                               ; preds = %27, %24
  %30 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !176
  %32 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %12, ptr noundef %31) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_byte_lr_transfer_function(i32 noundef %0) #0 {
  %2 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) #18
  %3 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !186
  %9 = load ptr, ptr %2, align 8, !tbaa !184
  %10 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %4, ptr noundef %8, ptr noundef %6, ptr noundef %9) #17
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_free() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 5
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  tail call void @free_alloc_pool(ptr noundef %11) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  tail call void @free(ptr noundef %17) #18
  %18 = load ptr, ptr @df, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 1, i64 5
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %9, %0
  %22 = phi ptr [ %20, %9 ], [ %3, %0 ]
  %23 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  tail call void @bitmap_obstack_free(ptr noundef %24) #17
  %25 = load ptr, ptr @df, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 1, i64 5
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 4
  store ptr null, ptr %28, align 8, !tbaa !93
  %29 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 5
  tail call void @bitmap_obstack_release(ptr noundef nonnull %29) #17
  %30 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !173
  tail call void @free(ptr noundef %31) #18
  %32 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !175
  tail call void @free(ptr noundef %33) #18
  tail call void @free(ptr noundef %5) #18
  %34 = load ptr, ptr @df, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 1, i64 5
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  tail call void @free(ptr noundef %36) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 13, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !187
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 13, i64 1, ptr %1)
  %15 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !186
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %16) #17
  %17 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 13, i64 1, ptr %1)
  %18 = load ptr, ptr %5, align 8, !tbaa !184
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %18) #17
  br label %19

19:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_byte_lr_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !188
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 13, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !188
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %13) #17
  br label %14

14:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_check_regs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
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
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 39
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %11
  %24 = load ptr, ptr %10, align 8, !tbaa !178
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !23
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %26) #17
  br label %28

28:                                               ; preds = %23, %17
  %29 = getelementptr inbounds ptr, ptr %13, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !193

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_expand_bitmap(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  tail call void @bitmap_clear(ptr noundef %0) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #18
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !32
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %9, i64 0, i32 3
  %14 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %9, i64 0, i32 4
  br label %15

15:                                               ; preds = %12, %15
  %16 = load ptr, ptr %13, align 8, !tbaa !173
  %17 = load i32, ptr %4, align 4, !tbaa !30
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !30
  %21 = load ptr, ptr %14, align 8, !tbaa !175
  %22 = getelementptr inbounds i32, ptr %21, i64 %18
  %23 = load i32, ptr %22, align 4, !tbaa !30
  tail call void @bitmap_set_range(ptr noundef %0, i32 noundef %20, i32 noundef %23) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !194

26:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2415, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 5
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !14
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2416, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_byte_lr_bb_local_compute(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @df, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 5
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = load ptr, ptr @cfun, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %15, i32 noundef %0) #18
  %17 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) #18
  %18 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %19 = load ptr, ptr %18, align 8, !tbaa !6
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
  %33 = load i32, ptr %32, align 8, !tbaa !23
  %34 = load ptr, ptr %22, align 8, !tbaa !173
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !30
  %38 = load ptr, ptr %23, align 8, !tbaa !175
  %39 = getelementptr inbounds i32, ptr %38, i64 %35
  %40 = load i32, ptr %39, align 4, !tbaa !30
  %41 = load ptr, ptr %17, align 8, !tbaa !184
  tail call void @bitmap_set_range(ptr noundef %41, i32 noundef %37, i32 noundef %40) #17
  %42 = load ptr, ptr %24, align 8, !tbaa !186
  tail call void @bitmap_clear_range(ptr noundef %42, i32 noundef %37, i32 noundef %40) #17
  br label %43

43:                                               ; preds = %31, %25
  %44 = getelementptr inbounds ptr, ptr %27, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %25, !llvm.loop !195

47:                                               ; preds = %43, %1
  %48 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %49 = load ptr, ptr %48, align 8, !tbaa !6
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
  %63 = load i32, ptr %62, align 8, !tbaa !23
  %64 = load ptr, ptr %52, align 8, !tbaa !173
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !30
  %68 = load ptr, ptr %53, align 8, !tbaa !175
  %69 = getelementptr inbounds i32, ptr %68, i64 %65
  %70 = load i32, ptr %69, align 4, !tbaa !30
  %71 = load ptr, ptr %54, align 8, !tbaa !186
  tail call void @bitmap_set_range(ptr noundef %71, i32 noundef %67, i32 noundef %70) #17
  br label %72

72:                                               ; preds = %61, %55
  %73 = getelementptr inbounds ptr, ptr %57, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %55, !llvm.loop !196

76:                                               ; preds = %72, %47
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !23
  %79 = getelementptr inbounds %struct.rtl_bb_info, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !23
  %81 = icmp eq ptr %80, null
  br i1 %81, label %187, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 3
  %84 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %10, i64 0, i32 4
  %85 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 1
  br label %86

86:                                               ; preds = %82, %183
  %87 = phi ptr [ %80, %82 ], [ %185, %183 ]
  %88 = load ptr, ptr %77, align 8, !tbaa !23
  %89 = load ptr, ptr %88, align 8, !tbaa !89
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !23
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
  %100 = load i32, ptr %99, align 8, !tbaa !23
  %101 = load ptr, ptr @df, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !50
  %104 = zext i32 %100 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr inbounds %struct.df_insn_info, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !51
  %109 = load ptr, ptr %108, align 8, !tbaa !6
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
  %119 = load i32, ptr %118, align 8, !tbaa !23
  %120 = load ptr, ptr %83, align 8, !tbaa !173
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i32, ptr %120, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !30
  %124 = load ptr, ptr %84, align 8, !tbaa !175
  %125 = getelementptr inbounds i32, ptr %124, i64 %121
  %126 = load i32, ptr %125, align 4, !tbaa !30
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
  %137 = load ptr, ptr %17, align 8, !tbaa !184
  call void @bitmap_set_range(ptr noundef %137, i32 noundef %136, i32 noundef %132) #17
  %138 = load ptr, ptr %85, align 8, !tbaa !186
  call void @bitmap_clear_range(ptr noundef %138, i32 noundef %136, i32 noundef %132) #17
  br label %139

139:                                              ; preds = %134, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %140

140:                                              ; preds = %139, %111
  %141 = getelementptr inbounds ptr, ptr %113, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %111, !llvm.loop !197

144:                                              ; preds = %140
  %145 = load ptr, ptr @df, align 8, !tbaa !6
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 10
  %147 = load ptr, ptr %146, align 8, !tbaa !50
  %148 = getelementptr inbounds ptr, ptr %147, i64 %104
  %149 = load ptr, ptr %148, align 8, !tbaa !6
  br label %150

150:                                              ; preds = %144, %98
  %151 = phi ptr [ %149, %144 ], [ %106, %98 ]
  %152 = getelementptr inbounds %struct.df_insn_info, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !119
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = icmp eq ptr %154, null
  br i1 %155, label %183, label %156

156:                                              ; preds = %150, %179
  %157 = phi ptr [ %181, %179 ], [ %154, %150 ]
  %158 = phi ptr [ %180, %179 ], [ %153, %150 ]
  %159 = getelementptr inbounds %struct.df_base_ref, ptr %157, i64 0, i32 6
  %160 = load i32, ptr %159, align 8, !tbaa !23
  %161 = load ptr, ptr %83, align 8, !tbaa !173
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i32, ptr %161, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !30
  %165 = load ptr, ptr %84, align 8, !tbaa !175
  %166 = getelementptr inbounds i32, ptr %165, i64 %162
  %167 = load i32, ptr %166, align 4, !tbaa !30
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
  %178 = load ptr, ptr %85, align 8, !tbaa !186
  call void @bitmap_set_range(ptr noundef %178, i32 noundef %177, i32 noundef %173) #17
  br label %179

179:                                              ; preds = %175, %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  %180 = getelementptr inbounds ptr, ptr %158, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %156, !llvm.loop !198

183:                                              ; preds = %179, %150, %93
  %184 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !23
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %86, !llvm.loop !199

187:                                              ; preds = %86, %183, %76
  %188 = call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %189 = load ptr, ptr %188, align 8, !tbaa !6
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
  %203 = load i32, ptr %202, align 8, !tbaa !23
  %204 = load ptr, ptr %192, align 8, !tbaa !173
  %205 = zext i32 %203 to i64
  %206 = getelementptr inbounds i32, ptr %204, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !30
  %208 = load ptr, ptr %193, align 8, !tbaa !175
  %209 = getelementptr inbounds i32, ptr %208, i64 %205
  %210 = load i32, ptr %209, align 4, !tbaa !30
  %211 = load ptr, ptr %17, align 8, !tbaa !184
  call void @bitmap_set_range(ptr noundef %211, i32 noundef %207, i32 noundef %210) #17
  %212 = load ptr, ptr %194, align 8, !tbaa !186
  call void @bitmap_clear_range(ptr noundef %212, i32 noundef %207, i32 noundef %210) #17
  br label %213

213:                                              ; preds = %201, %195
  %214 = getelementptr inbounds ptr, ptr %197, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %195, !llvm.loop !200

217:                                              ; preds = %213, %187
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @df_compute_accessed_bytes(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_print_byte_regset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !54
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
  %32 = load i32, ptr %31, align 8, !tbaa !23
  %33 = load ptr, ptr %22, align 8, !tbaa !173
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !30
  %37 = load ptr, ptr %23, align 8, !tbaa !175
  %38 = getelementptr inbounds i32, ptr %37, i64 %34
  %39 = load i32, ptr %38, align 4, !tbaa !30
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
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24, !llvm.loop !201

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_uses(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 3
  %23 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 4
  br label %24

24:                                               ; preds = %17, %46
  %25 = phi ptr [ %15, %17 ], [ %48, %46 ]
  %26 = phi ptr [ %14, %17 ], [ %47, %46 ]
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %25, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !23
  %29 = load ptr, ptr %22, align 8, !tbaa !173
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i32, ptr %29, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !30
  %33 = load ptr, ptr %23, align 8, !tbaa !175
  %34 = getelementptr inbounds i32, ptr %33, i64 %30
  %35 = load i32, ptr %34, align 4, !tbaa !30
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
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %24, !llvm.loop !202

50:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_artificial_refs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @df, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 5
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.dataflow, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !54
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
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = load ptr, ptr %14, align 8, !tbaa !173
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = load ptr, ptr %15, align 8, !tbaa !175
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = load i32, ptr %30, align 4, !tbaa !30
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %28, i32 noundef %31) #17
  br label %32

32:                                               ; preds = %22, %16
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !203

36:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_byte_lr_simulate_artificial_refs_at_end(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !10
  %10 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %9) #18
  %11 = load ptr, ptr %10, align 8, !tbaa !6
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
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = load ptr, ptr %14, align 8, !tbaa !173
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !30
  %29 = load ptr, ptr %15, align 8, !tbaa !175
  %30 = getelementptr inbounds i32, ptr %29, i64 %26
  %31 = load i32, ptr %30, align 4, !tbaa !30
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %28, i32 noundef %31) #17
  br label %32

32:                                               ; preds = %22, %16
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !204

36:                                               ; preds = %32, %2
  %37 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %9) #18
  %38 = load ptr, ptr %37, align 8, !tbaa !6
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
  %51 = load i32, ptr %50, align 8, !tbaa !23
  %52 = load ptr, ptr %41, align 8, !tbaa !173
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i32, ptr %52, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !30
  %56 = load ptr, ptr %42, align 8, !tbaa !175
  %57 = getelementptr inbounds i32, ptr %56, i64 %53
  %58 = load i32, ptr %57, align 4, !tbaa !30
  tail call void @bitmap_set_range(ptr noundef %1, i32 noundef %55, i32 noundef %58) #17
  br label %59

59:                                               ; preds = %49, %43
  %60 = getelementptr inbounds ptr, ptr %45, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %43, !llvm.loop !205

63:                                               ; preds = %59, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_note_add_problem() local_unnamed_addr #0 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_NOTE) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @df_note_alloc(ptr nocapture readnone %0) #12 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 6
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 9
  store i8 1, ptr %5, align 2, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_note_compute(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1, %9
  %10 = load i32, ptr %2, align 4, !tbaa !30
  tail call fastcc void @df_note_bb_compute(i32 noundef %10, ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %9, !llvm.loop !206

13:                                               ; preds = %9, %1
  tail call void @bitmap_obstack_free(ptr noundef %4) #17
  tail call void @bitmap_obstack_free(ptr noundef %5) #17
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @df_note_free() #13 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 6
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  tail call void @free(ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_note_bb_compute(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = load ptr, ptr @cfun, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %0) #18
  %14 = tail call ptr @df_get_live_out(ptr noundef %13) #18
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %14) #17
  tail call void @bitmap_clear(ptr noundef %3) #17
  %15 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %4, %28
  %19 = phi ptr [ %30, %28 ], [ %16, %4 ]
  %20 = phi ptr [ %29, %28 ], [ %15, %4 ]
  %21 = load i32, ptr %19, align 8
  %22 = and i32 %21, 131072
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !23
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %26) #17
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds ptr, ptr %20, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18, !llvm.loop !207

32:                                               ; preds = %28, %4
  %33 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #18
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %32, %47
  %37 = phi ptr [ %49, %47 ], [ %34, %32 ]
  %38 = phi ptr [ %48, %47 ], [ %33, %32 ]
  %39 = load i32, ptr %37, align 8
  %40 = and i32 %39, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !23
  %45 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %44) #17
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %44) #17
  br label %47

47:                                               ; preds = %42, %36
  %48 = getelementptr inbounds ptr, ptr %38, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !llvm.loop !208

51:                                               ; preds = %47, %32
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !23
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %337, label %57

57:                                               ; preds = %51, %333
  %58 = phi ptr [ %335, %333 ], [ %55, %51 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !23
  %60 = load ptr, ptr %59, align 8, !tbaa !89
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !23
  %63 = icmp eq ptr %58, %62
  br i1 %63, label %337, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %67 = load i32, ptr %58, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -7
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %333

71:                                               ; preds = %64
  %72 = icmp eq i32 %68, 7
  %73 = zext i1 %72 to i32
  tail call void @bitmap_clear(ptr noundef %2) #17
  call fastcc void @df_kill_notes(ptr noundef nonnull %58, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %74 = load i32, ptr %58, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 10
  %77 = load ptr, ptr @df, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.df, ptr %77, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !50
  %80 = zext i32 %66 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = getelementptr inbounds %struct.df_insn_info, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !209
  %85 = load ptr, ptr %6, align 8, !tbaa !6
  %86 = load ptr, ptr %84, align 8, !tbaa !6
  %87 = icmp eq ptr %86, null
  br i1 %76, label %88, label %146

88:                                               ; preds = %71
  br i1 %87, label %115, label %89

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
  %99 = load i32, ptr %98, align 4, !tbaa !210
  %100 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %99) #18, !range !32
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = tail call fastcc ptr @df_set_unused_notes_for_mw(ptr noundef nonnull %58, ptr noundef %92, ptr noundef nonnull %90, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %104

104:                                              ; preds = %102, %97, %89
  %105 = phi ptr [ %103, %102 ], [ %92, %97 ], [ %92, %89 ]
  %106 = getelementptr inbounds ptr, ptr %91, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %89, !llvm.loop !212

109:                                              ; preds = %104
  %110 = load ptr, ptr @df, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 10
  %112 = load ptr, ptr %111, align 8, !tbaa !50
  %113 = getelementptr inbounds ptr, ptr %112, i64 %80
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  br label %115

115:                                              ; preds = %109, %88
  %116 = phi ptr [ %82, %88 ], [ %114, %109 ]
  %117 = phi ptr [ %85, %88 ], [ %105, %109 ]
  %118 = getelementptr inbounds %struct.df_insn_info, ptr %116, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !51
  %120 = load ptr, ptr %119, align 8, !tbaa !6
  %121 = icmp eq ptr %120, null
  br i1 %121, label %198, label %122

122:                                              ; preds = %115, %142
  %123 = phi ptr [ %144, %142 ], [ %120, %115 ]
  %124 = phi ptr [ %143, %142 ], [ %119, %115 ]
  %125 = phi ptr [ %137, %142 ], [ %117, %115 ]
  %126 = getelementptr inbounds %struct.df_base_ref, ptr %123, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !23
  %128 = load i32, ptr %123, align 8
  %129 = and i32 %128, 12582912
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

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
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %127) #17
  br label %142

142:                                              ; preds = %140, %135
  %143 = getelementptr inbounds ptr, ptr %124, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = icmp eq ptr %144, null
  br i1 %145, label %198, label %122, !llvm.loop !213

146:                                              ; preds = %71
  br i1 %87, label %168, label %147

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
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %147, !llvm.loop !214

162:                                              ; preds = %157
  %163 = load ptr, ptr @df, align 8, !tbaa !6
  %164 = getelementptr inbounds %struct.df, ptr %163, i64 0, i32 10
  %165 = load ptr, ptr %164, align 8, !tbaa !50
  %166 = getelementptr inbounds ptr, ptr %165, i64 %80
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  br label %168

168:                                              ; preds = %162, %146
  %169 = phi ptr [ %82, %146 ], [ %167, %162 ]
  %170 = phi ptr [ %85, %146 ], [ %158, %162 ]
  %171 = getelementptr inbounds %struct.df_insn_info, ptr %169, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !51
  %173 = load ptr, ptr %172, align 8, !tbaa !6
  %174 = icmp eq ptr %173, null
  br i1 %174, label %198, label %175

175:                                              ; preds = %168, %194
  %176 = phi ptr [ %196, %194 ], [ %173, %168 ]
  %177 = phi ptr [ %195, %194 ], [ %172, %168 ]
  %178 = phi ptr [ %181, %194 ], [ %170, %168 ]
  %179 = getelementptr inbounds %struct.df_base_ref, ptr %176, i64 0, i32 6
  %180 = load i32, ptr %179, align 8, !tbaa !23
  %181 = tail call fastcc ptr @df_create_unused_note(ptr noundef nonnull %58, ptr noundef %178, ptr noundef nonnull %176, ptr noundef %1, ptr noundef %3) #18
  %182 = load i32, ptr %176, align 8
  %183 = and i32 %182, 12582912
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %180) #17
  %187 = load i32, ptr %176, align 8
  br label %188

188:                                              ; preds = %185, %175
  %189 = phi i32 [ %187, %185 ], [ %182, %175 ]
  %190 = and i32 %189, 1114112
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %180) #17
  br label %194

194:                                              ; preds = %192, %188
  %195 = getelementptr inbounds ptr, ptr %177, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !6
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %175, !llvm.loop !215

198:                                              ; preds = %194, %142, %168, %115
  %199 = phi ptr [ %117, %115 ], [ %170, %168 ], [ %137, %142 ], [ %181, %194 ]
  store ptr %199, ptr %6, align 8, !tbaa !6
  %200 = load ptr, ptr @df, align 8, !tbaa !6
  %201 = getelementptr inbounds %struct.df, ptr %200, i64 0, i32 10
  %202 = load ptr, ptr %201, align 8, !tbaa !50
  %203 = getelementptr inbounds ptr, ptr %202, i64 %80
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  %205 = getelementptr inbounds %struct.df_insn_info, ptr %204, i64 0, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !209
  %207 = load ptr, ptr %5, align 8, !tbaa !6
  %208 = load ptr, ptr %206, align 8, !tbaa !6
  %209 = icmp eq ptr %208, null
  br i1 %209, label %243, label %210

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
  %221 = load i32, ptr %220, align 4, !tbaa !210
  %222 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %221) #18, !range !32
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  %225 = icmp ne i32 %213, 0
  %226 = zext i1 %225 to i8
  store i8 %226, ptr %7, align 1, !tbaa !23
  %227 = call fastcc ptr @df_set_dead_notes_for_mw(ptr noundef nonnull %58, ptr noundef %214, ptr noundef nonnull %211, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #18
  %228 = load i8, ptr %7, align 1, !tbaa !23
  %229 = icmp eq i8 %228, 0
  %230 = select i1 %229, i32 %213, i32 -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  br label %231

231:                                              ; preds = %224, %219, %210
  %232 = phi ptr [ %214, %219 ], [ %227, %224 ], [ %214, %210 ]
  %233 = phi i32 [ %213, %219 ], [ %230, %224 ], [ %213, %210 ]
  %234 = getelementptr inbounds ptr, ptr %212, i64 1
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %210, !llvm.loop !216

237:                                              ; preds = %231
  %238 = load ptr, ptr @df, align 8, !tbaa !6
  %239 = getelementptr inbounds %struct.df, ptr %238, i64 0, i32 10
  %240 = load ptr, ptr %239, align 8, !tbaa !50
  %241 = getelementptr inbounds ptr, ptr %240, i64 %80
  %242 = load ptr, ptr %241, align 8, !tbaa !6
  br label %243

243:                                              ; preds = %237, %198
  %244 = phi ptr [ %204, %198 ], [ %242, %237 ]
  %245 = phi ptr [ %207, %198 ], [ %232, %237 ]
  %246 = phi i32 [ %73, %198 ], [ %233, %237 ]
  store ptr %245, ptr %5, align 8, !tbaa !6
  %247 = getelementptr inbounds %struct.df_insn_info, ptr %244, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !119
  %249 = load ptr, ptr %248, align 8, !tbaa !6
  %250 = icmp eq ptr %249, null
  br i1 %250, label %307, label %251

251:                                              ; preds = %243
  %252 = icmp eq i32 %246, 0
  br label %253

253:                                              ; preds = %251, %302
  %254 = phi ptr [ %249, %251 ], [ %305, %302 ]
  %255 = phi ptr [ %248, %251 ], [ %304, %302 ]
  %256 = phi ptr [ %245, %251 ], [ %303, %302 ]
  %257 = getelementptr inbounds %struct.df_base_ref, ptr %254, i64 0, i32 6
  %258 = load i32, ptr %257, align 8, !tbaa !23
  %259 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %258) #17
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %302

261:                                              ; preds = %253
  br i1 %252, label %262, label %307

262:                                              ; preds = %261
  %263 = load i32, ptr %254, align 8
  %264 = and i32 %263, 268435456
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %299

266:                                              ; preds = %262
  %267 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %258) #17
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %299

269:                                              ; preds = %266
  %270 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %258) #17
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %299

272:                                              ; preds = %269
  %273 = load i32, ptr %254, align 8
  %274 = and i32 %273, 2097152
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %299

276:                                              ; preds = %272
  %277 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %258) #18, !range !32
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %299

279:                                              ; preds = %276
  %280 = and i32 %273, 254
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %282, label %293

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.df_regular_ref, ptr %254, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !23
  %285 = icmp eq ptr %284, null
  br i1 %285, label %293, label %286

286:                                              ; preds = %282
  %287 = load ptr, ptr %284, align 8, !tbaa !6
  %288 = load i32, ptr %287, align 8
  %289 = and i32 %288, 65535
  %290 = icmp eq i32 %289, 39
  %291 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1
  %292 = select i1 %290, ptr %291, ptr %284
  br label %295

293:                                              ; preds = %279, %282
  %294 = getelementptr inbounds %struct.df_base_ref, ptr %254, i64 0, i32 1
  br label %295

295:                                              ; preds = %293, %286
  %296 = phi ptr [ %292, %286 ], [ %294, %293 ]
  %297 = load ptr, ptr %296, align 8, !tbaa !23
  %298 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef nonnull %58, ptr noundef %256, ptr noundef %297) #18
  br label %299

299:                                              ; preds = %295, %276, %272, %269, %266, %262
  %300 = phi ptr [ %298, %295 ], [ %256, %276 ], [ %256, %272 ], [ %256, %269 ], [ %256, %266 ], [ %256, %262 ]
  %301 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %258) #17
  br label %302

302:                                              ; preds = %299, %253
  %303 = phi ptr [ %300, %299 ], [ %256, %253 ]
  %304 = getelementptr inbounds ptr, ptr %255, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %253, !llvm.loop !217

307:                                              ; preds = %302, %261, %243
  %308 = phi ptr [ %245, %243 ], [ %256, %261 ], [ %303, %302 ]
  %309 = phi i32 [ %246, %243 ], [ -1, %261 ], [ %246, %302 ]
  %310 = load ptr, ptr %6, align 8, !tbaa !6
  %311 = icmp eq ptr %310, null
  br i1 %311, label %317, label %312

312:                                              ; preds = %307, %312
  %313 = phi ptr [ %315, %312 ], [ %310, %307 ]
  %314 = getelementptr inbounds %struct.rtx_def, ptr %313, i64 0, i32 1, i32 0, i32 0, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !23
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %313) #17
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %312, !llvm.loop !218

317:                                              ; preds = %312, %307
  %318 = icmp eq ptr %308, null
  br i1 %318, label %324, label %319

319:                                              ; preds = %317, %319
  %320 = phi ptr [ %322, %319 ], [ %308, %317 ]
  %321 = getelementptr inbounds %struct.rtx_def, ptr %320, i64 0, i32 1, i32 0, i32 0, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !23
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %320) #17
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %319, !llvm.loop !219

324:                                              ; preds = %319, %317
  %325 = icmp eq i32 %309, -1
  br i1 %325, label %326, label %333

326:                                              ; preds = %324
  %327 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  %328 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %327) #17
  %329 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !23
  %331 = getelementptr inbounds %struct.rtx_def, ptr %330, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %328, ptr %331, align 8, !tbaa !23
  %332 = tail call zeroext i8 @df_insn_rescan_debug_internal(ptr noundef nonnull %58) #17
  br label %333

333:                                              ; preds = %64, %324, %326
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %334 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %335 = load ptr, ptr %334, align 8, !tbaa !23
  %336 = icmp eq ptr %335, null
  br i1 %336, label %337, label %57, !llvm.loop !220

337:                                              ; preds = %57, %333, %51
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @df_kill_notes(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

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
  ]

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef %17) #18
  %19 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %18) #18, !range !32
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  br i1 %20, label %23, label %36

23:                                               ; preds = %15
  store ptr %11, ptr %21, align 8, !tbaa !23
  store ptr %22, ptr %8, align 8, !tbaa !6
  br label %36

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef %26) #18
  %28 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %27) #18, !range !32
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  br i1 %29, label %32, label %36

32:                                               ; preds = %24
  store ptr %10, ptr %30, align 8, !tbaa !23
  store ptr %31, ptr %8, align 8, !tbaa !6
  br label %36

33:                                               ; preds = %7
  %34 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %24, %15, %32, %23, %33
  %37 = phi ptr [ %11, %33 ], [ %11, %32 ], [ %9, %23 ], [ %11, %15 ], [ %11, %24 ]
  %38 = phi ptr [ %10, %33 ], [ %9, %32 ], [ %10, %23 ], [ %10, %15 ], [ %10, %24 ]
  %39 = phi ptr [ %35, %33 ], [ %31, %32 ], [ %22, %23 ], [ %22, %15 ], [ %31, %24 ]
  %40 = phi ptr [ %34, %33 ], [ %8, %32 ], [ %8, %23 ], [ %21, %15 ], [ %30, %24 ]
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %7, !llvm.loop !221

42:                                               ; preds = %36, %3
  %43 = phi ptr [ null, %3 ], [ %37, %36 ]
  %44 = phi ptr [ null, %3 ], [ %38, %36 ]
  store ptr %43, ptr %1, align 8, !tbaa !6
  store ptr %44, ptr %2, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %0) unnamed_addr #15 {
  %2 = load i32, ptr @regstack_completed, align 4, !tbaa !30
  %3 = icmp ne i32 %2, 0
  %4 = and i32 %0, -8
  %5 = icmp eq i32 %4, 8
  %6 = and i1 %5, %3
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_set_unused_notes_for_mw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc zeroext i8 @df_whole_mw_reg_unused_p(ptr noundef %2, ptr noundef %3, ptr noundef %5) #18, !range !32
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !210
  br i1 %8, label %15, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !222
  %13 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %1, ptr noundef %12) #18
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %10) #17
  br label %39

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !223
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
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !6
  %29 = zext i32 %21 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %20, ptr noundef %31) #18
  br label %33

33:                                               ; preds = %27, %24, %19
  %34 = phi ptr [ %20, %19 ], [ %20, %24 ], [ %32, %27 ]
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %21) #17
  %36 = add i32 %21, 1
  %37 = load i32, ptr %16, align 8, !tbaa !223
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %19, !llvm.loop !224

39:                                               ; preds = %33, %15, %11
  %40 = phi ptr [ %13, %11 ], [ %1, %15 ], [ %34, %33 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_create_unused_note(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !23
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %5
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 268435456
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %7) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = tail call fastcc zeroext i8 @df_ignore_stack_reg(i32 noundef %7) #18, !range !32
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 254
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.df_regular_ref, ptr %2, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !6
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
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = tail call fastcc ptr @df_set_note(i32 noundef 6, ptr noundef %0, ptr noundef %1, ptr noundef %39) #18
  br label %41

41:                                               ; preds = %37, %17, %14, %10, %5
  %42 = phi ptr [ %1, %5 ], [ %1, %10 ], [ %1, %14 ], [ %1, %17 ], [ %40, %37 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_set_dead_notes_for_mw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = load i8, ptr %6, align 1, !tbaa !23
  store i8 0, ptr %6, align 1, !tbaa !23
  %9 = tail call fastcc zeroext i8 @df_whole_mw_reg_dead_p(ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %4) #18, !range !32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  store i8 1, ptr %6, align 1, !tbaa !23
  br label %49

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8, !tbaa !222
  %16 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef %0, ptr noundef %1, ptr noundef %15) #18
  br label %49

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !210
  %20 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !223
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
  store i8 1, ptr %6, align 1, !tbaa !23
  br label %49

38:                                               ; preds = %36
  %39 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !6
  %40 = zext i32 %26 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = tail call fastcc ptr @df_set_note(i32 noundef 1, ptr noundef %0, ptr noundef %27, ptr noundef %42) #18
  br label %44

44:                                               ; preds = %25, %30, %33, %38
  %45 = phi ptr [ %27, %25 ], [ %27, %30 ], [ %27, %33 ], [ %43, %38 ]
  %46 = add i32 %26, 1
  %47 = load i32, ptr %20, align 8, !tbaa !223
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %25, !llvm.loop !225

49:                                               ; preds = %44, %17, %14, %37, %13
  %50 = phi ptr [ %1, %13 ], [ %27, %37 ], [ %16, %14 ], [ %1, %17 ], [ %45, %44 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_set_note(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #17
  br label %9

9:                                                ; preds = %4, %8
  %10 = icmp eq ptr %2, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %19, label %32

15:                                               ; preds = %32
  %16 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %32, !llvm.loop !226

19:                                               ; preds = %15, %11
  %20 = phi ptr [ null, %11 ], [ %33, %15 ]
  %21 = phi ptr [ %2, %11 ], [ %35, %15 ]
  %22 = icmp eq ptr %20, null
  %23 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  br i1 %22, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %24, ptr %26, align 8, !tbaa !23
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi ptr [ %2, %25 ], [ %24, %19 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !23
  %31 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !23
  store ptr %21, ptr %29, align 8, !tbaa !23
  br label %38

32:                                               ; preds = %11, %15
  %33 = phi ptr [ %35, %15 ], [ %2, %11 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !226

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
define internal fastcc noundef zeroext i8 @df_whole_mw_reg_unused_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !210
  %11 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !223
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %25, label %18

14:                                               ; preds = %22
  %15 = add i32 %19, 1
  %16 = load i32, ptr %11, align 8, !tbaa !223
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %25, label %18, !llvm.loop !227

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
  %26 = load ptr, ptr %0, align 8, !tbaa !222
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
define internal fastcc noundef zeroext i8 @df_whole_mw_reg_dead_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !210
  %12 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !223
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %29, label %19

15:                                               ; preds = %26
  %16 = add i32 %20, 1
  %17 = load i32, ptr %12, align 8, !tbaa !223
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %29, label %19, !llvm.loop !228

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
  %30 = load ptr, ptr %0, align 8, !tbaa !222
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
define dso_local void @df_simulate_find_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 1114112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !23
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !229

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 1114112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !23
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !230

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_uses(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = load ptr, ptr @df, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = zext i32 %8 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df_insn_info, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %6 ]
  %21 = phi ptr [ %25, %19 ], [ %16, %6 ]
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !23
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %23) #17
  %25 = getelementptr inbounds ptr, ptr %21, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !231

28:                                               ; preds = %19, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_initialize_backwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !232

22:                                               ; preds = %18, %2
  %23 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %4) #18
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22, %36
  %27 = phi ptr [ %38, %36 ], [ %24, %22 ]
  %28 = phi ptr [ %37, %36 ], [ %23, %22 ]
  %29 = load i32, ptr %27, align 8
  %30 = and i32 %29, 131072
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %27, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !23
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %34) #17
  br label %36

36:                                               ; preds = %32, %26
  %37 = getelementptr inbounds ptr, ptr %28, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %26, !llvm.loop !233

40:                                               ; preds = %36, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_one_insn_backwards(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -11
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @df_simulate_defs(ptr noundef nonnull %1, ptr noundef %2) #18
  tail call void @df_simulate_uses(ptr noundef nonnull %1, ptr noundef %2) #18
  tail call fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %2) #18
  br label %9

9:                                                ; preds = %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %0) #18, !range !32
  %4 = icmp eq i8 %3, 0
  %5 = load ptr, ptr @df, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 14
  %7 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 15
  %8 = select i1 %4, ptr %6, ptr %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %1, ptr noundef %9) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !29
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !31
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #18, !range !32
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !35
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #18, !range !32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !234

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_finalize_backwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !235

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_initialize_forwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %19, %18 ], [ %5, %2 ]
  %11 = load i32, ptr %9, align 8
  %12 = and i32 %11, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !236

22:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simulate_one_insn_forwards(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %52

8:                                                ; preds = %3
  %9 = load ptr, ptr @df, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 6
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3935, ptr noundef nonnull @.str.1) #17
  br label %14

14:                                               ; preds = %8, %13
  tail call void @df_simulate_find_defs(ptr noundef nonnull %1, ptr noundef %2) #18
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %14, %47
  %19 = phi ptr [ %49, %47 ], [ %16, %14 ]
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %47 [
    i8 1, label %23
    i8 6, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef %25) #18
  %27 = icmp slt i32 %26, 53
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = sext i32 %26 to i64
  %30 = load i32, ptr %25, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %29, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !23
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %28
  %38 = zext i8 %35 to i32
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i32 [ %41, %39 ], [ %38, %37 ]
  %41 = add nsw i32 %40, -1
  %42 = add nsw i32 %41, %26
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %42) #17
  %44 = icmp ugt i32 %40, 1
  br i1 %44, label %39, label %47, !llvm.loop !237

45:                                               ; preds = %23
  %46 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %26) #17
  br label %47

47:                                               ; preds = %39, %28, %45, %18
  %48 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !23
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %18, !llvm.loop !238

51:                                               ; preds = %47, %14
  tail call fastcc void @df_simulate_fixup_sets(ptr noundef %0, ptr noundef %2) #18
  br label %52

52:                                               ; preds = %3, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_simulate_artificial_defs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !6
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
  %16 = load i32, ptr %15, align 8, !tbaa !23
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
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !239

27:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_simulate_one_insn(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = load ptr, ptr @df, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %3, %38
  %17 = phi ptr [ %40, %38 ], [ %14, %3 ]
  %18 = phi ptr [ %39, %38 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !23
  %21 = load ptr, ptr @df, align 8, !tbaa !6
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
  %33 = load i32, ptr %32, align 4, !tbaa !23
  br i1 %31, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %33) #17
  br label %38

36:                                               ; preds = %28
  %37 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %33) #17
  br label %38

38:                                               ; preds = %34, %36, %16
  %39 = getelementptr inbounds ptr, ptr %18, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %16, !llvm.loop !240

42:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_md_add_problem() local_unnamed_addr #0 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_MD) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_alloc(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 7
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.48, i64 noundef 40, i64 noundef 50) #17
  %12 = load ptr, ptr @df, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 7
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !53
  %16 = load ptr, ptr %13, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %6, %1 ]
  tail call void @df_grow_bb_info(ptr noundef %18) #18
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %19, ptr @df_md_scratch, align 8, !tbaa !6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %17, %52
  %23 = load i32, ptr %2, align 4, !tbaa !30
  %24 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %23) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !241
  tail call void @bitmap_clear(ptr noundef %28) #17
  %29 = load ptr, ptr %24, align 8, !tbaa !243
  tail call void @bitmap_clear(ptr noundef %29) #17
  %30 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !244
  tail call void @bitmap_clear(ptr noundef %31) #17
  %32 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !245
  tail call void @bitmap_clear(ptr noundef %33) #17
  %34 = getelementptr inbounds %struct.df_md_bb_info, ptr %24, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !246
  tail call void @bitmap_clear(ptr noundef %35) #17
  br label %52

36:                                               ; preds = %22
  %37 = load ptr, ptr @df, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 7
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = tail call ptr @pool_alloc(ptr noundef %41) #17
  tail call fastcc void @df_md_set_bb_info(i32 noundef %23, ptr noundef %42) #18
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %44 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !241
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %45, ptr %42, align 8, !tbaa !243
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %47 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !244
  %48 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %49 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !245
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %51 = getelementptr inbounds %struct.df_md_bb_info, ptr %42, i64 0, i32 4
  store ptr %50, ptr %51, align 8, !tbaa !246
  br label %52

52:                                               ; preds = %36, %26
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %53 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %22, !llvm.loop !247

55:                                               ; preds = %52, %17
  %56 = load ptr, ptr @df, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 1, i64 7
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.dataflow, ptr %58, i64 0, i32 9
  store i8 1, ptr %59, align 2, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %11
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4267, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !245
  tail call void @bitmap_clear(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !246
  tail call void @bitmap_clear(ptr noundef %15) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !248

18:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  tail call void @bitmap_obstack_free(ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !244
  %7 = load ptr, ptr %1, align 8, !tbaa !243
  tail call void @bitmap_obstack_free(ptr noundef %7) #17
  store ptr null, ptr %1, align 8, !tbaa !243
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !241
  tail call void @bitmap_obstack_free(ptr noundef %9) #17
  store ptr null, ptr %8, align 8, !tbaa !241
  %10 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !245
  tail call void @bitmap_obstack_free(ptr noundef %11) #17
  store ptr null, ptr %10, align 8, !tbaa !245
  %12 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !246
  tail call void @bitmap_obstack_free(ptr noundef %13) #17
  store ptr null, ptr %12, align 8, !tbaa !246
  %14 = load ptr, ptr @df, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 7
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %1) #17
  br label %19

19:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_local_compute(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %6, ptr @seen_in_insn, align 8, !tbaa !6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1, %9
  %10 = load i32, ptr %2, align 4, !tbaa !30
  tail call fastcc void @df_md_bb_local_compute(i32 noundef %10) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #18
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %9, !llvm.loop !249

13:                                               ; preds = %9
  %14 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %6, %1 ]
  tail call void @bitmap_obstack_free(ptr noundef %16) #17
  store ptr null, ptr @seen_in_insn, align 8, !tbaa !6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !19
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr @xmalloc(i64 noundef %23) #17
  %25 = load ptr, ptr @cfun, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %15, %30
  %31 = phi ptr [ %38, %30 ], [ %28, %15 ]
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !10
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %24, i64 %35
  store ptr %32, ptr %36, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %30, !llvm.loop !250

40:                                               ; preds = %30, %15
  tail call void @compute_dominance_frontiers(ptr noundef %24) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !32
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %40, %72
  %44 = load i32, ptr %2, align 4, !tbaa !30
  %45 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %44) #18
  %46 = getelementptr inbounds %struct.df_md_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !244
  %48 = zext i32 %44 to i64
  %49 = getelementptr inbounds ptr, ptr %24, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %50, i32 noundef 0, ptr noundef nonnull %3) #18
  %51 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #18, !range !32
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %43, %69
  %54 = load ptr, ptr @cfun, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !88
  %59 = load i32, ptr %3, align 4, !tbaa !30
  %60 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %58, i32 noundef %59) #18
  %61 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %59) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %53
  %64 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %59) #18
  %65 = getelementptr inbounds %struct.df_md_bb_info, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !241
  %67 = tail call ptr @df_get_live_in(ptr noundef %60) #18
  %68 = tail call zeroext i8 @bitmap_ior_and_into(ptr noundef %66, ptr noundef %47, ptr noundef %67) #17
  br label %69

69:                                               ; preds = %63, %53
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #18
  %70 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #18, !range !32
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %53, !llvm.loop !251

72:                                               ; preds = %69, %43
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #18
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #18, !range !32
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %43, !llvm.loop !252

75:                                               ; preds = %72, %40
  %76 = load ptr, ptr @cfun, align 8, !tbaa !6
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !17
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %75, %81
  %82 = phi ptr [ %92, %81 ], [ %79, %75 ]
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !10
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %24, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %87) #17
  %88 = load i32, ptr %83, align 8, !tbaa !10
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %24, i64 %89
  store ptr null, ptr %90, align 8, !tbaa !6
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %81, !llvm.loop !253

94:                                               ; preds = %81, %75
  tail call void @free(ptr noundef %24) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #18
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1, %6
  %7 = load i32, ptr %2, align 4, !tbaa !30
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %7) #18
  %9 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !245
  %11 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !241
  tail call void @bitmap_copy(ptr noundef %10, ptr noundef %12) #17
  %13 = tail call zeroext i8 @df_md_transfer_function(i32 noundef %7) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %6, !llvm.loop !254

16:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_confluence_0(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !10
  %4 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %3) #18
  %5 = getelementptr inbounds %struct.df_md_bb_info, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  %7 = getelementptr inbounds %struct.df_md_bb_info, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !241
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_confluence_n(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !10
  %6 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %5) #18
  %7 = getelementptr inbounds %struct.df_md_bb_info, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !245
  %9 = load ptr, ptr %0, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !10
  %12 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %11) #18
  %13 = getelementptr inbounds %struct.df_md_bb_info, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !246
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !35
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = and i32 %16, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !6
  %24 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %8, ptr noundef %14, ptr noundef %23) #17
  br label %27

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %8, ptr noundef %14) #17
  br label %27

27:                                               ; preds = %22, %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @df_md_transfer_function(i32 noundef %0) #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %0) #18
  %9 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !245
  %11 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !246
  %13 = load ptr, ptr %8, align 8, !tbaa !243
  %14 = getelementptr inbounds %struct.df_md_bb_info, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !244
  %16 = load ptr, ptr @df_md_scratch, align 8, !tbaa !6
  %17 = tail call ptr @df_get_live_out(ptr noundef %7) #18
  tail call void @bitmap_and(ptr noundef %16, ptr noundef %13, ptr noundef %17) #17
  %18 = tail call ptr @df_get_live_in(ptr noundef %7) #18
  tail call void @bitmap_and_into(ptr noundef %10, ptr noundef %18) #17
  %19 = load ptr, ptr @df_md_scratch, align 8, !tbaa !6
  %20 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %12, ptr noundef %19, ptr noundef %10, ptr noundef %15) #17
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_free() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 7
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %0, %23
  %8 = phi ptr [ %24, %23 ], [ %1, %0 ]
  %9 = phi i32 [ %25, %23 ], [ 0, %0 ]
  %10 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !244
  tail call void @bitmap_obstack_free(ptr noundef %14) #17
  store ptr null, ptr %13, align 8, !tbaa !244
  %15 = load ptr, ptr %10, align 8, !tbaa !243
  tail call void @bitmap_obstack_free(ptr noundef %15) #17
  store ptr null, ptr %10, align 8, !tbaa !243
  %16 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !241
  tail call void @bitmap_obstack_free(ptr noundef %17) #17
  store ptr null, ptr %16, align 8, !tbaa !241
  %18 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !245
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %18, align 8, !tbaa !245
  %20 = getelementptr inbounds %struct.df_md_bb_info, ptr %10, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !246
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  store ptr null, ptr %20, align 8, !tbaa !246
  %22 = load ptr, ptr @df, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %12, %7
  %24 = phi ptr [ %22, %12 ], [ %8, %7 ]
  %25 = add nuw i32 %9, 1
  %26 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 1, i64 7
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.dataflow, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !14
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %7, label %31, !llvm.loop !255

31:                                               ; preds = %23, %0
  %32 = load ptr, ptr @df_md_scratch, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %32) #17
  store ptr null, ptr @df_md_scratch, align 8, !tbaa !6
  %33 = load ptr, ptr @df, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 1, i64 7
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.dataflow, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  tail call void @free_alloc_pool(ptr noundef %37) #17
  %38 = load ptr, ptr @df, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1, i64 7
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 2
  store i32 0, ptr %41, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  tail call void @free(ptr noundef %43) #18
  %44 = load ptr, ptr @df, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 1, i64 7
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  tail call void @free(ptr noundef %46) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !245
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !245
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  %14 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 14, i64 1, ptr %1)
  %15 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !241
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %16) #17
  %17 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 12, i64 1, ptr %1)
  %18 = load ptr, ptr %5, align 8, !tbaa !243
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %18) #17
  %19 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 13, i64 1, ptr %1)
  %20 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !244
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %21) #17
  br label %22

22:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_md_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !246
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 12, i64 1, ptr %1)
  %13 = load ptr, ptr %8, align 8, !tbaa !246
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %13) #17
  br label %14

14:                                               ; preds = %2, %7, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_md_get_bb_info(i32 noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 7
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_md_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 7
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4030, ptr noundef nonnull @.str.1) #17
  %8 = load ptr, ptr @df, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 7
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !14
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4031, ptr noundef nonnull @.str.1) #17
  %17 = load ptr, ptr @df, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 7
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %11, %16
  %21 = phi ptr [ %12, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %1, ptr %25, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_md_bb_local_compute(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = tail call fastcc ptr @df_md_get_bb_info(i32 noundef %0) #18
  %9 = load ptr, ptr @df, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 27
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #18
  tail call fastcc void @df_md_bb_local_compute_process_def(ptr noundef %8, ptr noundef %15, i32 noundef 2) #18
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %16, %45
  %22 = phi ptr [ %47, %45 ], [ %19, %16 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !142
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %21
  %30 = load i32, ptr %22, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !23
  %37 = load ptr, ptr @df, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = zext i32 %36 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !51
  tail call fastcc void @df_md_bb_local_compute_process_def(ptr noundef %8, ptr noundef %44, i32 noundef 0) #18
  br label %45

45:                                               ; preds = %29, %34
  %46 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %21, !llvm.loop !256

49:                                               ; preds = %21, %45, %16
  %50 = load ptr, ptr @df, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 27
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

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
define internal fastcc void @df_md_bb_local_compute_process_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  tail call void @bitmap_clear(ptr noundef %4) #17
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %45
  %10 = phi ptr [ %5, %7 ], [ %46, %45 ]
  %11 = phi ptr [ %1, %7 ], [ %12, %45 ]
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !23
  %15 = load ptr, ptr @df, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 27
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  %20 = icmp ugt i32 %14, 52
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %9
  %23 = load i32, ptr %10, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %28, i32 noundef %14) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, ptr %10, align 8
  %33 = and i32 %32, 5308416
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr @seen_in_insn, align 8, !tbaa !6
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %36, i32 noundef %14) #17
  br label %38

38:                                               ; preds = %31, %35
  %39 = phi ptr [ %8, %35 ], [ %0, %31 ]
  %40 = phi ptr [ %0, %35 ], [ %8, %31 ]
  %41 = load ptr, ptr %39, align 8, !tbaa !6
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %41, i32 noundef %14) #17
  %43 = load ptr, ptr %40, align 8, !tbaa !6
  %44 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %43, i32 noundef %14) #17
  br label %45

45:                                               ; preds = %38, %27, %9, %22
  %46 = load ptr, ptr %12, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %9, !llvm.loop !257

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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !13, i64 80}
!11 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !12, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96}
!12 = !{!"long", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !13, i64 16}
!15 = !{!"dataflow", !7, i64 0, !7, i64 8, !13, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !13, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!16 = !{!15, !7, i64 8}
!17 = !{!18, !7, i64 8}
!18 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !7, i64 128, !13, i64 136, !13, i64 137, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139}
!19 = !{!20, !13, i64 32}
!20 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !7, i64 40, !13, i64 48, !8, i64 52, !8, i64 60, !13, i64 68, !13, i64 72}
!21 = !{!22, !7, i64 0}
!22 = !{!"df_link", !7, i64 0, !7, i64 8}
!23 = !{!8, !8, i64 0}
!24 = !{!25, !7, i64 0}
!25 = !{!"df_insn_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !13, i64 40}
!26 = !{!22, !7, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{i64 0, i64 4, !30, i64 8, i64 8, !6}
!30 = !{!13, !13, i64 0}
!31 = !{i64 0, i64 8, !6}
!32 = !{i8 0, i8 2}
!33 = !{!34, !7, i64 0}
!34 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !12, i64 56}
!35 = !{!34, !13, i64 48}
!36 = distinct !{!36, !28}
!37 = !{!34, !7, i64 8}
!38 = distinct !{!38, !28}
!39 = !{!40, !13, i64 0}
!40 = !{!"", !13, i64 0, !7, i64 8}
!41 = !{!42, !13, i64 0}
!42 = !{!"VEC_edge_base", !13, i64 0, !13, i64 4, !8, i64 8}
!43 = !{!44, !7, i64 144}
!44 = !{!"df", !8, i64 0, !8, i64 64, !7, i64 128, !45, i64 136, !45, i64 176, !7, i64 216, !7, i64 224, !7, i64 232, !13, i64 240, !13, i64 244, !7, i64 248, !13, i64 256, !13, i64 260, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !13, i64 344, !13, i64 348, !7, i64 352, !13, i64 360, !13, i64 364, !8, i64 365, !8, i64 366}
!45 = !{!"df_ref_info", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36}
!46 = !{!44, !7, i64 152}
!47 = distinct !{!47, !28}
!48 = !{!49, !7, i64 0}
!49 = !{!"df_scan_bb_info", !7, i64 0, !7, i64 8}
!50 = !{!44, !7, i64 248}
!51 = !{!25, !7, i64 8}
!52 = distinct !{!52, !28}
!53 = !{!15, !7, i64 24}
!54 = !{!15, !7, i64 40}
!55 = !{!56, !7, i64 0}
!56 = !{!"df_rd_problem_data", !7, i64 0, !7, i64 8, !57, i64 16}
!57 = !{!"bitmap_obstack", !7, i64 0, !7, i64 8, !58, i64 16}
!58 = !{!"obstack", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !13, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !13, i64 80, !13, i64 80, !13, i64 80}
!59 = !{!56, !7, i64 8}
!60 = !{!61, !7, i64 0}
!61 = !{!"df_rd_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!62 = !{!61, !7, i64 8}
!63 = !{!61, !7, i64 16}
!64 = !{!61, !7, i64 24}
!65 = !{!61, !7, i64 32}
!66 = distinct !{!66, !28}
!67 = !{!15, !8, i64 54}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
!72 = !{!73, !7, i64 0}
!73 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !13, i64 16, !7, i64 24}
!74 = distinct !{!74, !28}
!75 = !{!44, !13, i64 244}
!76 = distinct !{!76, !28}
!77 = !{!78, !7, i64 0}
!78 = !{!"", !7, i64 0, !7, i64 8, !13, i64 16, !12, i64 24}
!79 = !{!78, !7, i64 8}
!80 = !{!81, !13, i64 16}
!81 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !13, i64 16, !8, i64 24}
!82 = !{!81, !7, i64 0}
!83 = !{!78, !13, i64 16}
!84 = !{!12, !12, i64 0}
!85 = !{!78, !12, i64 24}
!86 = distinct !{!86, !28}
!87 = distinct !{!87, !28}
!88 = !{!20, !7, i64 16}
!89 = !{!90, !7, i64 0}
!90 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32}
!91 = distinct !{!91, !28}
!92 = distinct !{!92, !28}
!93 = !{!15, !7, i64 32}
!94 = !{!95, !7, i64 0}
!95 = !{!"df_lr_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!96 = !{!95, !7, i64 8}
!97 = !{!95, !7, i64 16}
!98 = !{!95, !7, i64 24}
!99 = distinct !{!99, !28}
!100 = distinct !{!100, !28}
!101 = !{!44, !7, i64 264}
!102 = !{!44, !7, i64 296}
!103 = distinct !{!103, !28}
!104 = distinct !{!104, !28}
!105 = !{!20, !7, i64 8}
!106 = !{!15, !8, i64 53}
!107 = !{!44, !7, i64 328}
!108 = !{!44, !13, i64 344}
!109 = distinct !{!109, !28}
!110 = !{!111, !7, i64 0}
!111 = !{!"df_lr_problem_data", !7, i64 0, !7, i64 8}
!112 = !{!111, !7, i64 8}
!113 = distinct !{!113, !28}
!114 = distinct !{!114, !28}
!115 = distinct !{!115, !28}
!116 = distinct !{!116, !28}
!117 = distinct !{!117, !28}
!118 = distinct !{!118, !28}
!119 = !{!25, !7, i64 16}
!120 = distinct !{!120, !28}
!121 = distinct !{!121, !28}
!122 = distinct !{!122, !28}
!123 = !{!49, !7, i64 8}
!124 = distinct !{!124, !28}
!125 = !{!126, !7, i64 0}
!126 = !{!"df_live_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!127 = !{!126, !7, i64 8}
!128 = !{!126, !7, i64 16}
!129 = !{!126, !7, i64 24}
!130 = distinct !{!130, !28}
!131 = distinct !{!131, !28}
!132 = distinct !{!132, !28}
!133 = distinct !{!133, !28}
!134 = distinct !{!134, !28}
!135 = distinct !{!135, !28}
!136 = !{!137, !7, i64 0}
!137 = !{!"df_live_problem_data", !7, i64 0, !7, i64 8}
!138 = !{!137, !7, i64 8}
!139 = distinct !{!139, !28}
!140 = distinct !{!140, !28}
!141 = distinct !{!141, !28}
!142 = !{!90, !7, i64 8}
!143 = !{!25, !13, i64 40}
!144 = distinct !{!144, !28}
!145 = distinct !{!145, !28}
!146 = distinct !{!146, !28}
!147 = distinct !{!147, !28}
!148 = distinct !{!148, !28}
!149 = distinct !{!149, !28}
!150 = distinct !{!150, !28}
!151 = distinct !{!151, !28}
!152 = !{!15, !13, i64 48}
!153 = distinct !{!153, !28}
!154 = distinct !{!154, !28}
!155 = distinct !{!155, !28}
!156 = distinct !{!156, !28}
!157 = distinct !{!157, !28}
!158 = !{!25, !7, i64 24}
!159 = distinct !{!159, !28}
!160 = distinct !{!160, !28}
!161 = distinct !{!161, !28}
!162 = distinct !{!162, !28}
!163 = distinct !{!163, !28}
!164 = distinct !{!164, !28}
!165 = distinct !{!165, !28}
!166 = distinct !{!166, !28}
!167 = distinct !{!167, !28}
!168 = distinct !{!168, !28}
!169 = distinct !{!169, !28}
!170 = !{!44, !7, i64 136}
!171 = distinct !{!171, !28}
!172 = distinct !{!172, !28}
!173 = !{!174, !7, i64 24}
!174 = !{!"df_byte_lr_problem_data", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !57, i64 40}
!175 = !{!174, !7, i64 32}
!176 = !{!174, !7, i64 8}
!177 = !{!174, !7, i64 0}
!178 = !{!174, !7, i64 16}
!179 = !{!20, !7, i64 0}
!180 = !{!11, !7, i64 56}
!181 = distinct !{!181, !28}
!182 = distinct !{!182, !28}
!183 = distinct !{!183, !28}
!184 = !{!185, !7, i64 0}
!185 = !{!"df_byte_lr_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!186 = !{!185, !7, i64 8}
!187 = !{!185, !7, i64 16}
!188 = !{!185, !7, i64 24}
!189 = distinct !{!189, !28}
!190 = distinct !{!190, !28}
!191 = distinct !{!191, !28}
!192 = distinct !{!192, !28}
!193 = distinct !{!193, !28}
!194 = distinct !{!194, !28}
!195 = distinct !{!195, !28}
!196 = distinct !{!196, !28}
!197 = distinct !{!197, !28}
!198 = distinct !{!198, !28}
!199 = distinct !{!199, !28}
!200 = distinct !{!200, !28}
!201 = distinct !{!201, !28}
!202 = distinct !{!202, !28}
!203 = distinct !{!203, !28}
!204 = distinct !{!204, !28}
!205 = distinct !{!205, !28}
!206 = distinct !{!206, !28}
!207 = distinct !{!207, !28}
!208 = distinct !{!208, !28}
!209 = !{!25, !7, i64 32}
!210 = !{!211, !13, i64 12}
!211 = !{!"df_mw_hardreg", !7, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 16, !13, i64 20}
!212 = distinct !{!212, !28}
!213 = distinct !{!213, !28}
!214 = distinct !{!214, !28}
!215 = distinct !{!215, !28}
!216 = distinct !{!216, !28}
!217 = distinct !{!217, !28}
!218 = distinct !{!218, !28}
!219 = distinct !{!219, !28}
!220 = distinct !{!220, !28}
!221 = distinct !{!221, !28}
!222 = !{!211, !7, i64 0}
!223 = !{!211, !13, i64 16}
!224 = distinct !{!224, !28}
!225 = distinct !{!225, !28}
!226 = distinct !{!226, !28}
!227 = distinct !{!227, !28}
!228 = distinct !{!228, !28}
!229 = distinct !{!229, !28}
!230 = distinct !{!230, !28}
!231 = distinct !{!231, !28}
!232 = distinct !{!232, !28}
!233 = distinct !{!233, !28}
!234 = distinct !{!234, !28}
!235 = distinct !{!235, !28}
!236 = distinct !{!236, !28}
!237 = distinct !{!237, !28}
!238 = distinct !{!238, !28}
!239 = distinct !{!239, !28}
!240 = distinct !{!240, !28}
!241 = !{!242, !7, i64 16}
!242 = !{!"df_md_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!243 = !{!242, !7, i64 0}
!244 = !{!242, !7, i64 8}
!245 = !{!242, !7, i64 24}
!246 = !{!242, !7, i64 32}
!247 = distinct !{!247, !28}
!248 = distinct !{!248, !28}
!249 = distinct !{!249, !28}
!250 = distinct !{!250, !28}
!251 = distinct !{!251, !28}
!252 = distinct !{!252, !28}
!253 = distinct !{!253, !28}
!254 = distinct !{!254, !28}
!255 = distinct !{!255, !28}
!256 = distinct !{!256, !28}
!257 = distinct !{!257, !28}
