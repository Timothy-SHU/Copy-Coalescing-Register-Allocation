; ModuleID = 'df-problems.c'
source_filename = "df-problems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.df_problem = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_live_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_link = type { ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_byte_lr_problem_data = type { ptr, ptr, ptr, ptr, ptr, %struct.bitmap_obstack }
%struct.df_rd_problem_data = type { ptr, ptr, %struct.bitmap_obstack }
%struct.df_rd_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.df_lr_problem_data = type { ptr, ptr }
%struct.df_live_problem_data = type { ptr, ptr }
%struct.df_byte_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df_mw_hardreg = type { ptr, i32, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.df_md_bb_info = type { ptr, ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !181 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !182
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !181 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !182
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !181 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !192

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !186
  %11 = load i8, ptr %3, align 1, !tbaa !193
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !181 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !192

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !186
  %11 = load i8, ptr %3, align 1, !tbaa !193
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !181 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !192

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !186
  %11 = load i8, ptr %3, align 1, !tbaa !193
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !181 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !182
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !181 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !192

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !194
  store i8 %12, ptr %4, align 1, !tbaa !193
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !181 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !192

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !194
  store i8 %12, ptr %4, align 1, !tbaa !193
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !181 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !192

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !194
  store i8 %12, ptr %4, align 1, !tbaa !193
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !181 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !181 {
  %2 = load i32, ptr %0, align 8, !tbaa !196
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !181 {
  %2 = load i32, ptr %0, align 8, !tbaa !196
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !181 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !197
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !181 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !197
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !181 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !181 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !181 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !181 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !198

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !181 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @df_get_live_out(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !201 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !202

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @df, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !203
  br i1 %11, label %27, label %14, !prof !202

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !205
  %17 = icmp ugt i32 %16, %13
  br i1 %17, label %18, label %24, !prof !207

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !208
  %21 = zext i32 %13 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !182
  br label %24

24:                                               ; preds = %14, %18
  %25 = phi ptr [ %23, %18 ], [ null, %14 ]
  %26 = getelementptr inbounds %struct.df_live_bb_info, ptr %25, i64 0, i32 3
  br label %42

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !205
  %32 = icmp ugt i32 %31, %13
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !208
  %36 = zext i32 %13 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  br label %39

39:                                               ; preds = %27, %33
  %40 = phi ptr [ %38, %33 ], [ null, %27 ]
  %41 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 3
  br label %42

42:                                               ; preds = %39, %24
  %43 = phi ptr [ %26, %24 ], [ %41, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  ret ptr %44
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @df_get_live_in(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !209 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !210

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @df, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !203
  br i1 %11, label %27, label %14, !prof !210

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !205
  %17 = icmp ugt i32 %16, %13
  br i1 %17, label %18, label %24, !prof !211

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !208
  %21 = zext i32 %13 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !182
  br label %24

24:                                               ; preds = %14, %18
  %25 = phi ptr [ %23, %18 ], [ null, %14 ]
  %26 = getelementptr inbounds %struct.df_live_bb_info, ptr %25, i64 0, i32 2
  br label %42

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !205
  %32 = icmp ugt i32 %31, %13
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !208
  %36 = zext i32 %13 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  br label %39

39:                                               ; preds = %27, %33
  %40 = phi ptr [ %38, %33 ], [ null, %27 ]
  %41 = getelementptr inbounds %struct.df_lr_bb_info, ptr %40, i64 0, i32 2
  br label %42

42:                                               ; preds = %39, %24
  %43 = phi ptr [ %26, %24 ], [ %41, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  ret ptr %44
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_grow_bb_info(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !212 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !215
  %7 = add nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %11, label %25, !prof !217

11:                                               ; preds = %1
  %12 = lshr i32 %7, 2
  %13 = add i32 %12, %7
  %14 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !208
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %17) #20
  store ptr %18, ptr %14, align 8, !tbaa !208
  %19 = load i32, ptr %8, align 8, !tbaa !205
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = sub i32 %13, %19
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 %24, i1 false), !prof !218
  store i32 %13, ptr %8, align 8, !tbaa !205
  br label %25

25:                                               ; preds = %11, %1
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @df_chain_dump(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #11 !prof !181 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %1)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %2, %34
  %6 = phi ptr [ %38, %34 ], [ %0, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 100, i32 117
  %12 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !193
  %14 = and i32 %8, 255
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.df_artificial_ref, ptr %7, i64 0, i32 1
  br label %23

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !193
  %21 = load ptr, ptr %20, align 8, !tbaa !221
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi ptr [ %17, %16 ], [ %22, %18 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !193
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !203
  br i1 %15, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !193
  %31 = load ptr, ptr %30, align 8, !tbaa !221
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !193
  br label %34

34:                                               ; preds = %23, %28
  %35 = phi i32 [ %33, %28 ], [ -1, %23 ]
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13, i32 noundef %27, i32 noundef %35)
  %37 = getelementptr inbounds %struct.df_link, ptr %6, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !223
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !224

40:                                               ; preds = %34, %2
  %41 = tail call i32 @fputc(i32 125, ptr %1)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @df_print_bb_index(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #12 !prof !181 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %1)
  %4 = icmp eq ptr %0, null
  br label %5

5:                                                ; preds = %40, %2
  %6 = phi i32 [ 0, %2 ], [ %41, %40 ]
  br i1 %4, label %7, label %8

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %7, %5
  %9 = load ptr, ptr %0, align 8, !tbaa !182
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !225
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = zext i32 %6 to i64
  %18 = getelementptr inbounds %struct.VEC_edge_base, ptr %9, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  br label %20

20:                                               ; preds = %13, %16
  %21 = phi ptr [ %19, %16 ], [ null, %13 ]
  br i1 %15, label %42, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %21, align 8, !tbaa !227
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !203
  %26 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !229
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.8, ptr @.str.7
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %25, ptr noundef nonnull %30)
  %32 = load ptr, ptr %0, align 8, !tbaa !182
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %22
  %35 = load i32, ptr %32, align 8, !tbaa !225
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i32 [ %35, %34 ], [ 0, %22 ]
  %38 = icmp ult i32 %6, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %40

40:                                               ; preds = %36, %39
  %41 = add i32 %6, 1
  br label %5, !llvm.loop !230

42:                                               ; preds = %20
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !203
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %44)
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %47

47:                                               ; preds = %81, %42
  %48 = phi i32 [ 0, %42 ], [ %82, %81 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !182
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 8, !tbaa !225
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %52, %51 ], [ 0, %47 ]
  %55 = icmp eq i32 %54, %48
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = zext i32 %48 to i64
  %58 = getelementptr inbounds %struct.VEC_edge_base, ptr %49, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !182
  br label %60

60:                                               ; preds = %53, %56
  %61 = phi ptr [ %59, %56 ], [ null, %53 ]
  br i1 %55, label %83, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !231
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !203
  %67 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !229
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, ptr @.str.8, ptr @.str.7
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %66, ptr noundef nonnull %71)
  %73 = load ptr, ptr %46, align 8, !tbaa !182
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %62
  %76 = load i32, ptr %73, align 8, !tbaa !225
  br label %77

77:                                               ; preds = %75, %62
  %78 = phi i32 [ %76, %75 ], [ 0, %62 ]
  %79 = icmp ult i32 %48, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %81

81:                                               ; preds = %77, %80
  %82 = add i32 %48, 1
  br label %47, !llvm.loop !232

83:                                               ; preds = %60
  %84 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_rd_simulate_artificial_defs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = load ptr, ptr %15, align 8, !tbaa !233
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19, !prof !235

19:                                               ; preds = %2, %45
  %20 = phi ptr [ %47, %45 ], [ %17, %2 ]
  %21 = phi ptr [ %46, %45 ], [ %16, %2 ]
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25, !prof !236

25:                                               ; preds = %19
  %26 = and i32 %22, 1114112
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !193
  %31 = load ptr, ptr @df, align 8, !tbaa !182
  %32 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 3, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !237
  %34 = zext i32 %30 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !197
  %37 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 3, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !240
  %39 = getelementptr inbounds i32, ptr %38, i64 %34
  %40 = load i32, ptr %39, align 4, !tbaa !197
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %36, i32 noundef %40) #20
  br label %41

41:                                               ; preds = %28, %25
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 7
  %43 = load i32, ptr %42, align 4, !tbaa !193
  %44 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %43) #20
  br label %45

45:                                               ; preds = %41, %19
  %46 = getelementptr inbounds ptr, ptr %21, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !182
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %19, !prof !236, !llvm.loop !241

49:                                               ; preds = %45, %2
  ret void
}

declare void @bitmap_clear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_rd_simulate_one_insn(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !242 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !193
  %6 = load ptr, ptr @df, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !244
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16, !prof !245

16:                                               ; preds = %3, %50
  %17 = phi ptr [ %52, %50 ], [ %14, %3 ]
  %18 = phi ptr [ %51, %50 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !193
  %21 = load ptr, ptr @df, align 8, !tbaa !182
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 27
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  %26 = icmp ugt i32 %20, 52
  %27 = select i1 %25, i1 true, i1 %26, !prof !246
  br i1 %27, label %28, label %50, !prof !246

28:                                               ; preds = %16
  %29 = load i32, ptr %17, align 8
  %30 = and i32 %29, 1114112
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42, !prof !246

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !237
  %35 = zext i32 %20 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !197
  %38 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 3, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !240
  %40 = getelementptr inbounds i32, ptr %39, i64 %35
  %41 = load i32, ptr %40, align 4, !tbaa !197
  tail call void @bitmap_clear_range(ptr noundef %2, i32 noundef %37, i32 noundef %41) #20
  br label %42

42:                                               ; preds = %32, %28
  %43 = load i32, ptr %17, align 8
  %44 = and i32 %43, 12582912
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50, !prof !247

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !193
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %48) #20
  br label %50

50:                                               ; preds = %42, %46, %16
  %51 = getelementptr inbounds ptr, ptr %18, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !182
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %16, !prof !248, !llvm.loop !249

54:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_rd_add_problem() local_unnamed_addr #12 !prof !181 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_RD) #20
  ret void
}

declare void @df_add_problem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @df_lr_add_problem() local_unnamed_addr #13 !prof !250 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_LR) #20
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !251
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_lr_verify_transfer_functions() local_unnamed_addr #12 !prof !181 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = icmp eq ptr %1, null
  br i1 %2, label %93, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %9 = load ptr, ptr @cfun, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %3, %79
  %15 = phi ptr [ %81, %79 ], [ %12, %3 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !203
  %18 = load ptr, ptr @df, align 8, !tbaa !182
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = getelementptr inbounds %struct.dataflow, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !205
  %23 = icmp ugt i32 %22, %17
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.dataflow, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !208
  %27 = zext i32 %17 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  br label %30

30:                                               ; preds = %14, %24
  %31 = phi ptr [ %29, %24 ], [ null, %14 ]
  %32 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %17) #20
  %33 = icmp eq ptr %31, null
  %34 = load ptr, ptr @df, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 1, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !182
  %37 = getelementptr inbounds %struct.dataflow, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !251
  %39 = load i32, ptr %16, align 8, !tbaa !203
  %40 = tail call i32 @bitmap_bit_p(ptr noundef %38, i32 noundef %39) #20
  %41 = icmp eq i32 %40, 0
  br i1 %33, label %58, label %42

42:                                               ; preds = %30
  br i1 %41, label %43, label %61

43:                                               ; preds = %42
  %44 = load ptr, ptr %31, align 8, !tbaa !252
  tail call void @bitmap_copy(ptr noundef %4, ptr noundef %44) #20
  %45 = getelementptr inbounds %struct.df_lr_bb_info, ptr %31, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !254
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %46) #20
  %47 = load ptr, ptr %31, align 8, !tbaa !252
  tail call void @bitmap_clear(ptr noundef %47) #20
  %48 = load ptr, ptr %45, align 8, !tbaa !254
  tail call void @bitmap_clear(ptr noundef %48) #20
  %49 = load i32, ptr %16, align 8, !tbaa !203
  tail call fastcc void @df_lr_bb_local_compute(i32 noundef %49)
  %50 = load ptr, ptr %31, align 8, !tbaa !252
  %51 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %50) #20
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1306, ptr noundef nonnull @.str.1) #20
  br label %54

54:                                               ; preds = %43, %53
  %55 = load ptr, ptr %45, align 8, !tbaa !254
  %56 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %5, ptr noundef %55) #20
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %61

58:                                               ; preds = %30
  br i1 %41, label %59, label %61

59:                                               ; preds = %58, %54
  %60 = phi i32 [ 1307, %54 ], [ 1316, %58 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %60, ptr noundef nonnull @.str.1) #20
  br label %61

61:                                               ; preds = %59, %58, %54, %42
  %62 = load i32, ptr %16, align 8, !tbaa !203
  %63 = load ptr, ptr @df, align 8, !tbaa !182
  %64 = getelementptr inbounds %struct.df, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !182
  %66 = getelementptr inbounds %struct.dataflow, ptr %65, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !205
  %68 = icmp ugt i32 %67, %62
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.dataflow, ptr %65, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !208
  %72 = zext i32 %62 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !182
  br label %75

75:                                               ; preds = %61, %69
  %76 = phi ptr [ %74, %69 ], [ null, %61 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1320, ptr noundef nonnull @.str.1) #20
  br label %79

79:                                               ; preds = %75, %78
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !182
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %14, !llvm.loop !255

83:                                               ; preds = %79, %3
  %84 = load ptr, ptr @df, align 8, !tbaa !182
  %85 = getelementptr inbounds %struct.df, ptr %84, i64 0, i32 1, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  %87 = getelementptr inbounds %struct.dataflow, ptr %86, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !251
  %89 = tail call zeroext i8 @bitmap_intersect_compl_p(ptr noundef %88, ptr noundef %8) #20
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1325, ptr noundef nonnull @.str.1) #20
  br label %92

92:                                               ; preds = %83, %91
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  tail call void @bitmap_obstack_free(ptr noundef %6) #20
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  tail call void @bitmap_obstack_free(ptr noundef %8) #20
  br label %93

93:                                               ; preds = %0, %92
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @df_lr_bb_local_compute(i32 noundef %0) unnamed_addr #9 !prof !181 !PGOFuncName !256 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !205
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %16, label %21, !prof !258

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !208
  %19 = getelementptr inbounds ptr, ptr %18, i64 %7
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  br label %21

21:                                               ; preds = %1, %16
  %22 = phi ptr [ %20, %16 ], [ null, %1 ]
  %23 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !182
  %25 = getelementptr inbounds %struct.dataflow, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !205
  %27 = icmp ugt i32 %26, %0
  tail call void @llvm.assume(i1 %27)
  %28 = getelementptr inbounds %struct.dataflow, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !208
  %30 = getelementptr inbounds ptr, ptr %29, i64 %7
  %31 = load ptr, ptr %30, align 8, !tbaa !182
  %32 = load ptr, ptr %31, align 8, !tbaa !233
  %33 = load ptr, ptr %32, align 8, !tbaa !182
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35, !prof !259

35:                                               ; preds = %21, %49
  %36 = phi ptr [ %51, %49 ], [ %33, %21 ]
  %37 = phi ptr [ %50, %49 ], [ %32, %21 ]
  %38 = load i32, ptr %36, align 8
  %39 = and i32 %38, 131072
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49, !prof !260

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %22, i64 0, i32 1
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %36, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !193
  %45 = load ptr, ptr %22, align 8, !tbaa !252
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %45, i32 noundef %44) #20
  %47 = load ptr, ptr %42, align 8, !tbaa !254
  %48 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %47, i32 noundef %44) #20
  br label %49

49:                                               ; preds = %41, %35
  %50 = getelementptr inbounds ptr, ptr %37, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !182
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %35, !prof !260, !llvm.loop !261

53:                                               ; preds = %49, %21
  %54 = load ptr, ptr @df, align 8, !tbaa !182
  %55 = getelementptr inbounds %struct.df, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !182
  %57 = getelementptr inbounds %struct.dataflow, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !205
  %59 = icmp ugt i32 %58, %0
  tail call void @llvm.assume(i1 %59)
  %60 = getelementptr inbounds %struct.dataflow, ptr %56, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !208
  %62 = getelementptr inbounds ptr, ptr %61, i64 %7
  %63 = load ptr, ptr %62, align 8, !tbaa !182
  %64 = getelementptr inbounds %struct.df_scan_bb_info, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !262
  %66 = load ptr, ptr %65, align 8, !tbaa !182
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68, !prof !263

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.df_lr_bb_info, ptr %22, i64 0, i32 1
  br label %70

70:                                               ; preds = %68, %81
  %71 = phi ptr [ %66, %68 ], [ %83, %81 ]
  %72 = phi ptr [ %65, %68 ], [ %82, %81 ]
  %73 = load i32, ptr %71, align 8
  %74 = and i32 %73, 131072
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81, !prof !264

76:                                               ; preds = %70
  %77 = load ptr, ptr %69, align 8, !tbaa !254
  %78 = getelementptr inbounds %struct.df_base_ref, ptr %71, i64 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !193
  %80 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %77, i32 noundef %79) #20
  br label %81

81:                                               ; preds = %76, %70
  %82 = getelementptr inbounds ptr, ptr %72, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !182
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %70, !prof !265, !llvm.loop !266

85:                                               ; preds = %81, %53
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !193
  %88 = getelementptr inbounds %struct.rtl_bb_info, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !193
  %90 = icmp eq ptr %89, null
  br i1 %90, label %160, label %91, !prof !267

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.df_lr_bb_info, ptr %22, i64 0, i32 1
  %93 = getelementptr inbounds %struct.df_lr_bb_info, ptr %22, i64 0, i32 1
  br label %94

94:                                               ; preds = %91, %156
  %95 = phi ptr [ %89, %91 ], [ %158, %156 ]
  %96 = load ptr, ptr %86, align 8, !tbaa !193
  %97 = load ptr, ptr %96, align 8, !tbaa !268
  %98 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !193
  %100 = icmp eq ptr %95, %99
  br i1 %100, label %160, label %101, !prof !270

101:                                              ; preds = %94
  %102 = load i32, ptr %95, align 8
  %103 = and i32 %102, 65535
  %104 = add nsw i32 %103, -11
  %105 = icmp ult i32 %104, -3
  br i1 %105, label %156, label %106, !prof !271

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !193
  %109 = load ptr, ptr @df, align 8, !tbaa !182
  %110 = getelementptr inbounds %struct.df, ptr %109, i64 0, i32 10
  %111 = load ptr, ptr %110, align 8, !tbaa !243
  %112 = zext i32 %108 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !182
  %115 = getelementptr inbounds %struct.df_insn_info, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !244
  %117 = load ptr, ptr %116, align 8, !tbaa !182
  %118 = icmp eq ptr %117, null
  br i1 %118, label %136, label %119, !prof !272

119:                                              ; preds = %106, %132
  %120 = phi ptr [ %134, %132 ], [ %117, %106 ]
  %121 = phi ptr [ %133, %132 ], [ %116, %106 ]
  %122 = load i32, ptr %120, align 8
  %123 = and i32 %122, 1114112
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132, !prof !273

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.df_base_ref, ptr %120, i64 0, i32 6
  %127 = load i32, ptr %126, align 8, !tbaa !193
  %128 = load ptr, ptr %22, align 8, !tbaa !252
  %129 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %128, i32 noundef %127) #20
  %130 = load ptr, ptr %92, align 8, !tbaa !254
  %131 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %130, i32 noundef %127) #20
  br label %132

132:                                              ; preds = %125, %119
  %133 = getelementptr inbounds ptr, ptr %121, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !182
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %119, !prof !274, !llvm.loop !275

136:                                              ; preds = %132, %106
  %137 = load ptr, ptr @df, align 8, !tbaa !182
  %138 = getelementptr inbounds %struct.df, ptr %137, i64 0, i32 10
  %139 = load ptr, ptr %138, align 8, !tbaa !243
  %140 = getelementptr inbounds ptr, ptr %139, i64 %112
  %141 = load ptr, ptr %140, align 8, !tbaa !182
  %142 = getelementptr inbounds %struct.df_insn_info, ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !276
  %144 = load ptr, ptr %143, align 8, !tbaa !182
  %145 = icmp eq ptr %144, null
  br i1 %145, label %156, label %146, !prof !277

146:                                              ; preds = %136, %146
  %147 = phi ptr [ %154, %146 ], [ %144, %136 ]
  %148 = phi ptr [ %153, %146 ], [ %143, %136 ]
  %149 = load ptr, ptr %93, align 8, !tbaa !254
  %150 = getelementptr inbounds %struct.df_base_ref, ptr %147, i64 0, i32 6
  %151 = load i32, ptr %150, align 8, !tbaa !193
  %152 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %149, i32 noundef %151) #20
  %153 = getelementptr inbounds ptr, ptr %148, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !182
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %146, !prof !278, !llvm.loop !279

156:                                              ; preds = %146, %136, %101
  %157 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !193
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %94, !prof !280, !llvm.loop !281

160:                                              ; preds = %94, %156, %85
  %161 = load ptr, ptr @df, align 8, !tbaa !182
  %162 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !182
  %164 = getelementptr inbounds %struct.dataflow, ptr %163, i64 0, i32 2
  %165 = load i32, ptr %164, align 8, !tbaa !205
  %166 = icmp ugt i32 %165, %0
  tail call void @llvm.assume(i1 %166)
  %167 = getelementptr inbounds %struct.dataflow, ptr %163, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !208
  %169 = getelementptr inbounds ptr, ptr %168, i64 %7
  %170 = load ptr, ptr %169, align 8, !tbaa !182
  %171 = load ptr, ptr %170, align 8, !tbaa !233
  %172 = load ptr, ptr %171, align 8, !tbaa !182
  %173 = icmp eq ptr %172, null
  br i1 %173, label %192, label %174, !prof !259

174:                                              ; preds = %160, %188
  %175 = phi ptr [ %190, %188 ], [ %172, %160 ]
  %176 = phi ptr [ %189, %188 ], [ %171, %160 ]
  %177 = load i32, ptr %175, align 8
  %178 = and i32 %177, 131072
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %188, label %180, !prof !260

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.df_lr_bb_info, ptr %22, i64 0, i32 1
  %182 = getelementptr inbounds %struct.df_base_ref, ptr %175, i64 0, i32 6
  %183 = load i32, ptr %182, align 8, !tbaa !193
  %184 = load ptr, ptr %22, align 8, !tbaa !252
  %185 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %184, i32 noundef %183) #20
  %186 = load ptr, ptr %181, align 8, !tbaa !254
  %187 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %186, i32 noundef %183) #20
  br label %188

188:                                              ; preds = %180, %174
  %189 = getelementptr inbounds ptr, ptr %176, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !182
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %174, !prof !260, !llvm.loop !282

192:                                              ; preds = %188, %160
  %193 = load ptr, ptr @df, align 8, !tbaa !182
  %194 = getelementptr inbounds %struct.df, ptr %193, i64 0, i32 1, i64 2
  %195 = load ptr, ptr %194, align 8, !tbaa !182
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %198, !prof !283

197:                                              ; preds = %192
  tail call void @df_recompute_luids(ptr noundef %9) #20
  br label %198

198:                                              ; preds = %197, %192
  ret void
}

declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_intersect_compl_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @df_live_add_problem() local_unnamed_addr #13 !prof !284 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_LIVE) #20
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !251
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_live_set_all_dirty() local_unnamed_addr #12 !prof !181 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %17, %6 ], [ %4, %0 ]
  %8 = load ptr, ptr @df, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !251
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !203
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #20
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !285

19:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_live_verify_transfer_functions() local_unnamed_addr #12 !prof !181 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = icmp eq ptr %1, null
  br i1 %2, label %91, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  tail call void @df_grow_insn_info() #20
  %7 = load ptr, ptr @cfun, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = icmp eq ptr %10, null
  br i1 %11, label %81, label %12

12:                                               ; preds = %3, %77
  %13 = phi ptr [ %79, %77 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !203
  %16 = load ptr, ptr @df, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !182
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !205
  %21 = icmp ugt i32 %20, %15
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !208
  %25 = zext i32 %15 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !182
  br label %28

28:                                               ; preds = %12, %22
  %29 = phi ptr [ %27, %22 ], [ null, %12 ]
  %30 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %15) #20
  %31 = icmp eq ptr %29, null
  %32 = load ptr, ptr @df, align 8, !tbaa !182
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 1, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !251
  %37 = load i32, ptr %14, align 8, !tbaa !203
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %36, i32 noundef %37) #20
  %39 = icmp eq i32 %38, 0
  br i1 %31, label %56, label %40

40:                                               ; preds = %28
  br i1 %39, label %41, label %59

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.df_live_bb_info, ptr %29, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !286
  tail call void @bitmap_copy(ptr noundef %4, ptr noundef %43) #20
  %44 = load ptr, ptr %29, align 8, !tbaa !288
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %44) #20
  %45 = load ptr, ptr %42, align 8, !tbaa !286
  tail call void @bitmap_clear(ptr noundef %45) #20
  %46 = load ptr, ptr %29, align 8, !tbaa !288
  tail call void @bitmap_clear(ptr noundef %46) #20
  %47 = load i32, ptr %14, align 8, !tbaa !203
  tail call fastcc void @df_live_bb_local_compute(i32 noundef %47)
  %48 = load ptr, ptr %42, align 8, !tbaa !286
  %49 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %48) #20
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1863, ptr noundef nonnull @.str.1) #20
  br label %52

52:                                               ; preds = %41, %51
  %53 = load ptr, ptr %29, align 8, !tbaa !288
  %54 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %5, ptr noundef %53) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %59

56:                                               ; preds = %28
  br i1 %39, label %57, label %59

57:                                               ; preds = %56, %52
  %58 = phi i32 [ 1864, %52 ], [ 1873, %56 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %58, ptr noundef nonnull @.str.1) #20
  br label %59

59:                                               ; preds = %57, %56, %52, %40
  %60 = load i32, ptr %14, align 8, !tbaa !203
  %61 = load ptr, ptr @df, align 8, !tbaa !182
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !182
  %64 = getelementptr inbounds %struct.dataflow, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !205
  %66 = icmp ugt i32 %65, %60
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.dataflow, ptr %63, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !208
  %70 = zext i32 %60 to i64
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !182
  br label %73

73:                                               ; preds = %59, %67
  %74 = phi ptr [ %72, %67 ], [ null, %59 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #20
  br label %77

77:                                               ; preds = %73, %76
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !182
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %12, !llvm.loop !289

81:                                               ; preds = %77, %3
  %82 = load ptr, ptr @df, align 8, !tbaa !182
  %83 = getelementptr inbounds %struct.df, ptr %82, i64 0, i32 1, i64 2
  %84 = load ptr, ptr %83, align 8, !tbaa !182
  %85 = getelementptr inbounds %struct.dataflow, ptr %84, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !251
  %87 = tail call zeroext i8 @bitmap_intersect_compl_p(ptr noundef %86, ptr noundef %6) #20
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1882, ptr noundef nonnull @.str.1) #20
  br label %90

90:                                               ; preds = %81, %89
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  tail call void @bitmap_obstack_free(ptr noundef %6) #20
  br label %91

91:                                               ; preds = %0, %90
  ret void
}

declare void @df_grow_insn_info() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @df_live_bb_local_compute(i32 noundef %0) unnamed_addr #9 !prof !181 !PGOFuncName !290 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !205
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %16, label %21, !prof !291

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !208
  %19 = getelementptr inbounds ptr, ptr %18, i64 %7
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  br label %21

21:                                               ; preds = %1, %16
  %22 = phi ptr [ %20, %16 ], [ null, %1 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !193
  %25 = load ptr, ptr %24, align 8, !tbaa !193
  %26 = icmp eq ptr %25, null
  br i1 %26, label %97, label %27, !prof !292

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.df_live_bb_info, ptr %22, i64 0, i32 1
  %29 = getelementptr inbounds %struct.df_live_bb_info, ptr %22, i64 0, i32 1
  br label %30

30:                                               ; preds = %27, %92
  %31 = phi ptr [ %25, %27 ], [ %95, %92 ]
  %32 = phi i32 [ 0, %27 ], [ %93, %92 ]
  %33 = load ptr, ptr %23, align 8, !tbaa !193
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !293
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !193
  %38 = icmp eq ptr %31, %37
  br i1 %38, label %97, label %39, !prof !294

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !193
  %42 = load ptr, ptr @df, align 8, !tbaa !182
  %43 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !243
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !182
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %57, !prof !295

49:                                               ; preds = %39
  %50 = load i32, ptr %31, align 8
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -7
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %54, label %55, !prof !296

54:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1474, ptr noundef nonnull @.str.1) #20
  br label %55

55:                                               ; preds = %49, %54
  %56 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %31) #20
  br label %57

57:                                               ; preds = %55, %39
  %58 = phi ptr [ %47, %39 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 5
  store i32 %32, ptr %59, align 8, !tbaa !297
  %60 = load i32, ptr %31, align 8
  %61 = and i32 %60, 65535
  %62 = add nsw i32 %61, -7
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %64, label %92, !prof !298

64:                                               ; preds = %57
  %65 = add nsw i32 %32, 1
  %66 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !244
  %68 = load ptr, ptr %67, align 8, !tbaa !182
  %69 = icmp eq ptr %68, null
  br i1 %69, label %92, label %70, !prof !299

70:                                               ; preds = %64, %88
  %71 = phi ptr [ %90, %88 ], [ %68, %64 ]
  %72 = phi ptr [ %89, %88 ], [ %67, %64 ]
  %73 = getelementptr inbounds %struct.df_base_ref, ptr %71, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !193
  %75 = load i32, ptr %71, align 8
  %76 = and i32 %75, 1114112
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84, !prof !300

78:                                               ; preds = %70
  %79 = and i32 %75, 8388608
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84, !prof !301

81:                                               ; preds = %78
  %82 = and i32 %75, 4194304
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88, !prof !302

84:                                               ; preds = %81, %78, %70
  %85 = phi ptr [ %28, %70 ], [ %22, %78 ], [ %29, %81 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  %87 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %86, i32 noundef %74) #20
  br label %88

88:                                               ; preds = %84, %81
  %89 = getelementptr inbounds ptr, ptr %72, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !182
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %70, !prof !303, !llvm.loop !304

92:                                               ; preds = %88, %64, %57
  %93 = phi i32 [ %32, %57 ], [ %65, %64 ], [ %65, %88 ]
  %94 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %95 = load ptr, ptr %94, align 8, !tbaa !193
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %30, !prof !305, !llvm.loop !306

97:                                               ; preds = %30, %92, %21
  %98 = load ptr, ptr @df, align 8, !tbaa !182
  %99 = getelementptr inbounds %struct.df, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !182
  %101 = getelementptr inbounds %struct.dataflow, ptr %100, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !205
  %103 = icmp ugt i32 %102, %0
  tail call void @llvm.assume(i1 %103)
  %104 = getelementptr inbounds %struct.dataflow, ptr %100, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !208
  %106 = getelementptr inbounds ptr, ptr %105, i64 %7
  %107 = load ptr, ptr %106, align 8, !tbaa !182
  %108 = load ptr, ptr %107, align 8, !tbaa !233
  %109 = load ptr, ptr %108, align 8, !tbaa !182
  %110 = icmp eq ptr %109, null
  br i1 %110, label %123, label %111, !prof !307

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.df_live_bb_info, ptr %22, i64 0, i32 1
  br label %113

113:                                              ; preds = %111, %113
  %114 = phi ptr [ %109, %111 ], [ %121, %113 ]
  %115 = phi ptr [ %108, %111 ], [ %120, %113 ]
  %116 = load ptr, ptr %112, align 8, !tbaa !286
  %117 = getelementptr inbounds %struct.df_base_ref, ptr %114, i64 0, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !193
  %119 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %116, i32 noundef %118) #20
  %120 = getelementptr inbounds ptr, ptr %115, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !182
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %113, !prof !260, !llvm.loop !308

123:                                              ; preds = %113, %97
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @df_chain_create(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !181 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 4
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !309
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #20
  store ptr %10, ptr %3, align 8, !tbaa !193
  %11 = getelementptr inbounds %struct.df_link, ptr %10, i64 0, i32 1
  store ptr %4, ptr %11, align 8, !tbaa !223
  store ptr %1, ptr %10, align 8, !tbaa !219
  ret ptr %10
}

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_chain_unlink(ptr noundef %0) local_unnamed_addr #12 !prof !181 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1, %37
  %6 = phi ptr [ %8, %37 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.df_link, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !223
  %9 = load ptr, ptr %6, align 8, !tbaa !219
  %10 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !193
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %11, align 8, !tbaa !219
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %19, label %32

16:                                               ; preds = %32
  %17 = load ptr, ptr %35, align 8, !tbaa !219
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %32, !llvm.loop !310

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %11, %13 ], [ %35, %16 ]
  %21 = phi ptr [ null, %13 ], [ %33, %16 ]
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.df_link, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !223
  %25 = getelementptr inbounds %struct.df_link, ptr %21, i64 0, i32 1
  %26 = select i1 %22, ptr %10, ptr %25
  store ptr %24, ptr %26, align 8, !tbaa !193
  %27 = load ptr, ptr @df, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 4
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !309
  tail call void @pool_free(ptr noundef %31, ptr noundef nonnull %20) #20
  br label %37

32:                                               ; preds = %13, %16
  %33 = phi ptr [ %35, %16 ], [ %11, %13 ]
  %34 = getelementptr inbounds %struct.df_link, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !193
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !310

37:                                               ; preds = %32, %5, %19
  %38 = load ptr, ptr @df, align 8, !tbaa !182
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1, i64 4
  %40 = load ptr, ptr %39, align 8, !tbaa !182
  %41 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !309
  tail call void @pool_free(ptr noundef %42, ptr noundef nonnull %6) #20
  %43 = icmp eq ptr %8, null
  br i1 %43, label %44, label %5, !llvm.loop !311

44:                                               ; preds = %37, %1
  store ptr null, ptr %2, align 8, !tbaa !193
  ret void
}

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_chain_copy(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #12 !prof !181 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %1, %4 ], [ %18, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  %9 = load ptr, ptr %5, align 8, !tbaa !193
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 4
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !309
  %15 = tail call ptr @pool_alloc(ptr noundef %14) #20
  store ptr %15, ptr %5, align 8, !tbaa !193
  %16 = getelementptr inbounds %struct.df_link, ptr %15, i64 0, i32 1
  store ptr %9, ptr %16, align 8, !tbaa !223
  store ptr %8, ptr %15, align 8, !tbaa !219
  %17 = getelementptr inbounds %struct.df_link, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !223
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !312

20:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @df_chain_add_problem(i32 noundef %0) local_unnamed_addr #13 !prof !250 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_CHAIN) #20
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 4
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 6
  store i32 %0, ptr %5, align 8, !tbaa !313
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %7 = load ptr, ptr @df, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1, i64 4
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !251
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_byte_lr_get_regno_start(i32 noundef %0) local_unnamed_addr #14 !prof !181 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !314
  %7 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !315
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !197
  ret i32 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_byte_lr_get_regno_len(i32 noundef %0) local_unnamed_addr #14 !prof !181 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !314
  %7 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !319
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !197
  ret i32 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_byte_lr_add_problem() local_unnamed_addr #12 !prof !181 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_BYTE_LR) #20
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !251
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_byte_lr_simulate_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !181 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !243
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !244
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !314
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
  %32 = load i32, ptr %31, align 8, !tbaa !193
  %33 = load ptr, ptr %22, align 8, !tbaa !315
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !197
  %37 = load ptr, ptr %23, align 8, !tbaa !319
  %38 = getelementptr inbounds i32, ptr %37, i64 %34
  %39 = load i32, ptr %38, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %40 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %25, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
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
  call void @bitmap_clear_range(ptr noundef %1, i32 noundef %49, i32 noundef %45) #20
  br label %50

50:                                               ; preds = %47, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %51

51:                                               ; preds = %50, %24
  %52 = getelementptr inbounds ptr, ptr %26, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !182
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24, !llvm.loop !320

55:                                               ; preds = %51, %2
  ret void
}

declare zeroext i8 @df_compute_accessed_bytes(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_byte_lr_simulate_uses(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !181 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !243
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !276
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !314
  %22 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 3
  %23 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %21, i64 0, i32 4
  br label %24

24:                                               ; preds = %17, %46
  %25 = phi ptr [ %15, %17 ], [ %48, %46 ]
  %26 = phi ptr [ %14, %17 ], [ %47, %46 ]
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %25, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !193
  %29 = load ptr, ptr %22, align 8, !tbaa !315
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i32, ptr %29, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !197
  %33 = load ptr, ptr %23, align 8, !tbaa !319
  %34 = getelementptr inbounds i32, ptr %33, i64 %30
  %35 = load i32, ptr %34, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  %36 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %25, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
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
  call void @bitmap_set_range(ptr noundef %1, i32 noundef %45, i32 noundef %41) #20
  br label %46

46:                                               ; preds = %43, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  %47 = getelementptr inbounds ptr, ptr %26, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !182
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %24, !llvm.loop !321

50:                                               ; preds = %46, %2
  ret void
}

declare void @bitmap_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_byte_lr_simulate_artificial_refs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !181 {
  %3 = load ptr, ptr @df, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !314
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !203
  %10 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.dataflow, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !205
  %14 = icmp ugt i32 %13, %9
  tail call void @llvm.assume(i1 %14)
  %15 = getelementptr inbounds %struct.dataflow, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !208
  %17 = zext i32 %9 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = load ptr, ptr %19, align 8, !tbaa !233
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 3
  %25 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 4
  br label %26

26:                                               ; preds = %23, %42
  %27 = phi ptr [ %21, %23 ], [ %44, %42 ]
  %28 = phi ptr [ %20, %23 ], [ %43, %42 ]
  %29 = load i32, ptr %27, align 8
  %30 = and i32 %29, 131072
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %27, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !193
  %35 = load ptr, ptr %24, align 8, !tbaa !315
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i32, ptr %35, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !197
  %39 = load ptr, ptr %25, align 8, !tbaa !319
  %40 = getelementptr inbounds i32, ptr %39, i64 %36
  %41 = load i32, ptr %40, align 4, !tbaa !197
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %38, i32 noundef %41) #20
  br label %42

42:                                               ; preds = %32, %26
  %43 = getelementptr inbounds ptr, ptr %28, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %26, !llvm.loop !322

46:                                               ; preds = %42, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_byte_lr_simulate_artificial_refs_at_end(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !181 {
  %3 = load ptr, ptr @df, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !314
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !203
  %10 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.dataflow, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !205
  %14 = icmp ugt i32 %13, %9
  tail call void @llvm.assume(i1 %14)
  %15 = getelementptr inbounds %struct.dataflow, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !208
  %17 = zext i32 %9 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = load ptr, ptr %19, align 8, !tbaa !233
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 3
  %25 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 4
  br label %26

26:                                               ; preds = %23, %42
  %27 = phi ptr [ %21, %23 ], [ %44, %42 ]
  %28 = phi ptr [ %20, %23 ], [ %43, %42 ]
  %29 = load i32, ptr %27, align 8
  %30 = and i32 %29, 131072
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %27, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !193
  %35 = load ptr, ptr %24, align 8, !tbaa !315
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i32, ptr %35, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !197
  %39 = load ptr, ptr %25, align 8, !tbaa !319
  %40 = getelementptr inbounds i32, ptr %39, i64 %36
  %41 = load i32, ptr %40, align 4, !tbaa !197
  tail call void @bitmap_clear_range(ptr noundef %1, i32 noundef %38, i32 noundef %41) #20
  br label %42

42:                                               ; preds = %32, %26
  %43 = getelementptr inbounds ptr, ptr %28, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %26, !llvm.loop !323

46:                                               ; preds = %42, %2
  %47 = load ptr, ptr @df, align 8, !tbaa !182
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  %50 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !205
  %52 = icmp ugt i32 %51, %9
  tail call void @llvm.assume(i1 %52)
  %53 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !208
  %55 = getelementptr inbounds ptr, ptr %54, i64 %17
  %56 = load ptr, ptr %55, align 8, !tbaa !182
  %57 = getelementptr inbounds %struct.df_scan_bb_info, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !262
  %59 = load ptr, ptr %58, align 8, !tbaa !182
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 3
  %63 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 4
  br label %64

64:                                               ; preds = %61, %80
  %65 = phi ptr [ %59, %61 ], [ %82, %80 ]
  %66 = phi ptr [ %58, %61 ], [ %81, %80 ]
  %67 = load i32, ptr %65, align 8
  %68 = and i32 %67, 131072
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.df_base_ref, ptr %65, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !193
  %73 = load ptr, ptr %62, align 8, !tbaa !315
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i32, ptr %73, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !197
  %77 = load ptr, ptr %63, align 8, !tbaa !319
  %78 = getelementptr inbounds i32, ptr %77, i64 %74
  %79 = load i32, ptr %78, align 4, !tbaa !197
  tail call void @bitmap_set_range(ptr noundef %1, i32 noundef %76, i32 noundef %79) #20
  br label %80

80:                                               ; preds = %70, %64
  %81 = getelementptr inbounds ptr, ptr %66, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !182
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %64, !llvm.loop !324

84:                                               ; preds = %80, %46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @df_note_add_problem() local_unnamed_addr #13 !prof !325 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_NOTE) #20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_simulate_find_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !326 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !193
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !243
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !244
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !327

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 1114112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !328

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !193
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %23) #20
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !182
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !prof !328, !llvm.loop !329

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_simulate_defs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !330 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !193
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !243
  %8 = zext i32 %4 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !244
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !331

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 1114112
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !332

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !193
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %23) #20
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !182
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !prof !333, !llvm.loop !334

29:                                               ; preds = %25, %2
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_simulate_uses(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !335 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %28, label %6, !prof !336

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !193
  %9 = load ptr, ptr @df, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !243
  %12 = zext i32 %8 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.df_insn_info, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !276
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !prof !337

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %6 ]
  %21 = phi ptr [ %25, %19 ], [ %16, %6 ]
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !193
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %23) #20
  %25 = getelementptr inbounds ptr, ptr %21, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !182
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !prof !338, !llvm.loop !339

28:                                               ; preds = %19, %6, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_simulate_initialize_backwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !340 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = load ptr, ptr %15, align 8, !tbaa !233
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !341

19:                                               ; preds = %2, %29
  %20 = phi ptr [ %31, %29 ], [ %17, %2 ]
  %21 = phi ptr [ %30, %29 ], [ %16, %2 ]
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !193
  %28 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %27) #20
  br label %29

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds ptr, ptr %21, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !182
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %19, !prof !341, !llvm.loop !342

33:                                               ; preds = %29, %2
  %34 = load ptr, ptr @df, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !182
  %37 = getelementptr inbounds %struct.dataflow, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !205
  %39 = icmp ugt i32 %38, %4
  tail call void @llvm.assume(i1 %39)
  %40 = getelementptr inbounds %struct.dataflow, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !208
  %42 = getelementptr inbounds ptr, ptr %41, i64 %13
  %43 = load ptr, ptr %42, align 8, !tbaa !182
  %44 = getelementptr inbounds %struct.df_scan_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !262
  %46 = load ptr, ptr %45, align 8, !tbaa !182
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48, !prof !343

48:                                               ; preds = %33, %58
  %49 = phi ptr [ %60, %58 ], [ %46, %33 ]
  %50 = phi ptr [ %59, %58 ], [ %45, %33 ]
  %51 = load i32, ptr %49, align 8
  %52 = and i32 %51, 131072
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58, !prof !344

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.df_base_ref, ptr %49, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !193
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %56) #20
  br label %58

58:                                               ; preds = %54, %48
  %59 = getelementptr inbounds ptr, ptr %50, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !182
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %48, !prof !345, !llvm.loop !346

62:                                               ; preds = %58, %33
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_simulate_one_insn_backwards(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !347 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -11
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %103, label %8, !prof !348

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !193
  %11 = load ptr, ptr @df, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !243
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.df_insn_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !244
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21, !prof !349

21:                                               ; preds = %8, %31
  %22 = phi ptr [ %33, %31 ], [ %19, %8 ]
  %23 = phi ptr [ %32, %31 ], [ %18, %8 ]
  %24 = load i32, ptr %22, align 8
  %25 = and i32 %24, 1114112
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !350

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %22, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !193
  %30 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %29) #20
  br label %31

31:                                               ; preds = %27, %21
  %32 = getelementptr inbounds ptr, ptr %23, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !182
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %21, !prof !351, !llvm.loop !334

35:                                               ; preds = %31, %8
  %36 = load i32, ptr %1, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %60, label %39, !prof !348

39:                                               ; preds = %35
  %40 = load i32, ptr %9, align 8, !tbaa !193
  %41 = load ptr, ptr @df, align 8, !tbaa !182
  %42 = getelementptr inbounds %struct.df, ptr %41, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !243
  %44 = zext i32 %40 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !182
  %47 = getelementptr inbounds %struct.df_insn_info, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !276
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51, !prof !352

51:                                               ; preds = %39, %51
  %52 = phi ptr [ %58, %51 ], [ %49, %39 ]
  %53 = phi ptr [ %57, %51 ], [ %48, %39 ]
  %54 = getelementptr inbounds %struct.df_base_ref, ptr %52, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !193
  %56 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %55) #20
  %57 = getelementptr inbounds ptr, ptr %53, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !182
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %51, !prof !353, !llvm.loop !339

60:                                               ; preds = %51, %39, %35
  %61 = icmp eq ptr %0, null
  br label %62

62:                                               ; preds = %91, %60
  %63 = phi i32 [ 0, %60 ], [ %92, %91 ]
  br i1 %61, label %64, label %65, !prof !354

64:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %65

65:                                               ; preds = %64, %62
  %66 = load ptr, ptr %0, align 8, !tbaa !182
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !354

68:                                               ; preds = %65
  %69 = load i32, ptr %66, align 8, !tbaa !225
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %69, %68 ], [ 0, %65 ]
  %72 = icmp eq i32 %71, %63
  br i1 %72, label %77, label %73, !prof !355

73:                                               ; preds = %70
  %74 = zext i32 %63 to i64
  %75 = getelementptr inbounds %struct.VEC_edge_base, ptr %66, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !182
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi ptr [ %76, %73 ], [ null, %70 ]
  br i1 %72, label %96, label %79, !prof !355

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !229
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93, !prof !356

84:                                               ; preds = %79
  br i1 %67, label %87, label %85, !prof !357

85:                                               ; preds = %84
  %86 = load i32, ptr %66, align 8, !tbaa !225
  br label %87

87:                                               ; preds = %85, %84
  %88 = phi i32 [ %86, %85 ], [ 0, %84 ]
  %89 = icmp ult i32 %63, %88
  br i1 %89, label %91, label %90, !prof !356

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %91

91:                                               ; preds = %90, %87
  %92 = add i32 %63, 1
  br label %62, !llvm.loop !358

93:                                               ; preds = %79
  %94 = load ptr, ptr @df, align 8, !tbaa !182
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 15
  br label %99

96:                                               ; preds = %77
  %97 = load ptr, ptr @df, align 8, !tbaa !182
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 14
  br label %99

99:                                               ; preds = %93, %96
  %100 = phi ptr [ %98, %96 ], [ %95, %93 ]
  %101 = load ptr, ptr %100, align 8, !tbaa !182
  %102 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %101) #20
  br label %103

103:                                              ; preds = %99, %3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_simulate_finalize_backwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !359 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = load ptr, ptr %15, align 8, !tbaa !233
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !341

19:                                               ; preds = %2, %29
  %20 = phi ptr [ %31, %29 ], [ %17, %2 ]
  %21 = phi ptr [ %30, %29 ], [ %16, %2 ]
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !193
  %28 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %27) #20
  br label %29

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds ptr, ptr %21, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !182
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %19, !prof !341, !llvm.loop !360

33:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_simulate_initialize_forwards(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !361 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = load ptr, ptr %15, align 8, !tbaa !233
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !362

19:                                               ; preds = %2, %29
  %20 = phi ptr [ %31, %29 ], [ %17, %2 ]
  %21 = phi ptr [ %30, %29 ], [ %16, %2 ]
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !363

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !193
  %28 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %27) #20
  br label %29

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds ptr, ptr %21, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !182
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %19, !prof !363, !llvm.loop !364

33:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_simulate_one_insn_forwards(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #9 !prof !365 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %122, !prof !366

8:                                                ; preds = %3
  %9 = load ptr, ptr @df, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 6
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !367

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3935, ptr noundef nonnull @.str.1) #20
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !193
  %17 = load ptr, ptr @df, align 8, !tbaa !182
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !243
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = getelementptr inbounds %struct.df_insn_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !244
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27, !prof !368

27:                                               ; preds = %14, %37
  %28 = phi ptr [ %39, %37 ], [ %25, %14 ]
  %29 = phi ptr [ %38, %37 ], [ %24, %14 ]
  %30 = load i32, ptr %28, align 8
  %31 = and i32 %30, 1114112
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !369

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %28, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !193
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %35) #20
  br label %37

37:                                               ; preds = %33, %27
  %38 = getelementptr inbounds ptr, ptr %29, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !182
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %27, !prof !370, !llvm.loop !329

41:                                               ; preds = %37, %14
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !193
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47, !prof !371

45:                                               ; preds = %77, %41
  %46 = icmp eq ptr %0, null
  br label %81

47:                                               ; preds = %41, %77
  %48 = phi ptr [ %79, %77 ], [ %43, %41 ]
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = trunc i32 %50 to i8
  switch i8 %51, label %77 [
    i8 1, label %52
    i8 6, label %52
  ], !prof !372

52:                                               ; preds = %47, %47
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !193
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !193
  %57 = icmp slt i32 %56, 53
  br i1 %57, label %58, label %75, !prof !373

58:                                               ; preds = %52
  %59 = sext i32 %56 to i64
  %60 = load i32, ptr %54, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %59, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !193
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %77, label %67, !prof !374

67:                                               ; preds = %58
  %68 = zext i8 %65 to i32
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i32 [ %71, %69 ], [ %68, %67 ]
  %71 = add nsw i32 %70, -1
  %72 = add nsw i32 %71, %56
  %73 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %72) #20
  %74 = icmp sgt i32 %70, 1
  br i1 %74, label %69, label %77, !prof !374, !llvm.loop !375

75:                                               ; preds = %52
  %76 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %56) #20
  br label %77

77:                                               ; preds = %69, %58, %75, %47
  %78 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !193
  %80 = icmp eq ptr %79, null
  br i1 %80, label %45, label %47, !prof !376, !llvm.loop !377

81:                                               ; preds = %45, %110
  %82 = phi i32 [ %111, %110 ], [ 0, %45 ]
  br i1 %46, label %83, label %84, !prof !378

83:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %84

84:                                               ; preds = %83, %81
  %85 = load ptr, ptr %0, align 8, !tbaa !182
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !378

87:                                               ; preds = %84
  %88 = load i32, ptr %85, align 8, !tbaa !225
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %88, %87 ], [ 0, %84 ]
  %91 = icmp eq i32 %90, %82
  br i1 %91, label %96, label %92, !prof !379

92:                                               ; preds = %89
  %93 = zext i32 %82 to i64
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !182
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  br i1 %91, label %115, label %98, !prof !379

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !229
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %112, !prof !380

103:                                              ; preds = %98
  br i1 %86, label %106, label %104, !prof !381

104:                                              ; preds = %103
  %105 = load i32, ptr %85, align 8, !tbaa !225
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ %105, %104 ], [ 0, %103 ]
  %108 = icmp ult i32 %82, %107
  br i1 %108, label %110, label %109, !prof !380

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %110

110:                                              ; preds = %109, %106
  %111 = add i32 %82, 1
  br label %81, !llvm.loop !358

112:                                              ; preds = %98
  %113 = load ptr, ptr @df, align 8, !tbaa !182
  %114 = getelementptr inbounds %struct.df, ptr %113, i64 0, i32 15
  br label %118

115:                                              ; preds = %96
  %116 = load ptr, ptr @df, align 8, !tbaa !182
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 14
  br label %118

118:                                              ; preds = %112, %115
  %119 = phi ptr [ %117, %115 ], [ %114, %112 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !182
  %121 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %120) #20
  br label %122

122:                                              ; preds = %118, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_md_simulate_artificial_defs_at_top(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = load ptr, ptr %15, align 8, !tbaa !233
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %2, %34
  %20 = phi ptr [ %36, %34 ], [ %17, %2 ]
  %21 = phi ptr [ %35, %34 ], [ %16, %2 ]
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !193
  %28 = and i32 %22, 5308416
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %27) #20
  br label %34

32:                                               ; preds = %25
  %33 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %27) #20
  br label %34

34:                                               ; preds = %30, %32, %19
  %35 = getelementptr inbounds ptr, ptr %21, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !182
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !382

38:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_md_simulate_one_insn(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #12 !prof !181 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !193
  %6 = load ptr, ptr @df, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !244
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %3, %38
  %17 = phi ptr [ %40, %38 ], [ %14, %3 ]
  %18 = phi ptr [ %39, %38 ], [ %13, %3 ]
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !193
  %21 = load ptr, ptr @df, align 8, !tbaa !182
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
  %33 = load i32, ptr %32, align 4, !tbaa !193
  br i1 %31, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %33) #20
  br label %38

36:                                               ; preds = %28
  %37 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %33) #20
  br label %38

38:                                               ; preds = %34, %36, %16
  %39 = getelementptr inbounds ptr, ptr %18, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !182
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %16, !llvm.loop !383

42:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @df_md_add_problem() local_unnamed_addr #13 !prof !284 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_MD) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_rd_alloc(ptr nocapture noundef readonly %0) #13 !prof !250 !PGOFuncName !384 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !309
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14, !prof !385

8:                                                ; preds = %1
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 40, i64 noundef 50) #20
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 3
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 3
  store ptr %9, ptr %13, align 8, !tbaa !309
  br label %14

14:                                               ; preds = %8, %1
  %15 = load ptr, ptr @df, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 1, i64 3
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !314
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !385

21:                                               ; preds = %14
  %22 = load ptr, ptr %19, align 8, !tbaa !386
  tail call void @bitmap_clear(ptr noundef %22) #20
  %23 = getelementptr inbounds %struct.df_rd_problem_data, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !388
  tail call void @bitmap_clear(ptr noundef %24) #20
  br label %35

25:                                               ; preds = %14
  %26 = tail call ptr @xmalloc(i64 noundef 120) #20
  %27 = load ptr, ptr @df, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 3
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 5
  store ptr %26, ptr %30, align 8, !tbaa !314
  %31 = getelementptr inbounds %struct.df_rd_problem_data, ptr %26, i64 0, i32 2
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %31) #20
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %31) #20
  store ptr %32, ptr %26, align 8, !tbaa !386
  %33 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %31) #20
  %34 = getelementptr inbounds %struct.df_rd_problem_data, ptr %26, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !388
  br label %35

35:                                               ; preds = %25, %21
  %36 = phi ptr [ %19, %21 ], [ %26, %25 ]
  %37 = load ptr, ptr @df, align 8, !tbaa !182
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 1, i64 3
  %39 = load ptr, ptr %38, align 8, !tbaa !182
  %40 = load ptr, ptr @cfun, align 8, !tbaa !182
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !213
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !215
  %45 = add nsw i32 %44, 1
  %46 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !205
  %48 = icmp ult i32 %47, %45
  br i1 %48, label %49, label %63, !prof !217

49:                                               ; preds = %35
  %50 = lshr i32 %45, 2
  %51 = add i32 %50, %45
  %52 = getelementptr inbounds %struct.dataflow, ptr %39, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !208
  %54 = zext i32 %51 to i64
  %55 = shl nuw nsw i64 %54, 3
  %56 = tail call ptr @xrealloc(ptr noundef %53, i64 noundef %55) #20
  store ptr %56, ptr %52, align 8, !tbaa !208
  %57 = load i32, ptr %46, align 8, !tbaa !205
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = sub i32 %51, %57
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %59, i8 0, i64 %62, i1 false), !prof !389
  store i32 %51, ptr %46, align 8, !tbaa !205
  br label %63

63:                                               ; preds = %35, %49
  %64 = load ptr, ptr %0, align 8, !tbaa !390
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, ptr @bitmap_zero_bits, ptr %64, !prof !392
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !393
  %69 = shl i32 %68, 7
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 3, i64 0
  %71 = load i64, ptr %70, align 8, !tbaa !395
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = or disjoint i32 %69, %73
  %75 = getelementptr inbounds %struct.df_rd_problem_data, ptr %36, i64 0, i32 2
  br label %76

76:                                               ; preds = %193, %63
  %77 = phi i64 [ %71, %63 ], [ %194, %193 ]
  %78 = phi i32 [ 0, %63 ], [ %133, %193 ]
  %79 = phi i32 [ %74, %63 ], [ %195, %193 ]
  %80 = phi ptr [ %66, %63 ], [ %135, %193 ]
  %81 = icmp eq i64 %77, 0
  br i1 %81, label %96, label %82, !prof !396

82:                                               ; preds = %110, %76
  %83 = phi i64 [ %77, %76 ], [ %115, %110 ]
  %84 = phi i32 [ %78, %76 ], [ %111, %110 ]
  %85 = phi i32 [ %79, %76 ], [ %112, %110 ]
  %86 = phi ptr [ %80, %76 ], [ %103, %110 ]
  %87 = and i64 %83, 1
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %131, !prof !397

89:                                               ; preds = %82, %89
  %90 = phi i32 [ %93, %89 ], [ %85, %82 ]
  %91 = phi i64 [ %92, %89 ], [ %83, %82 ]
  %92 = lshr exact i64 %91, 1
  %93 = add i32 %90, 1
  %94 = and i64 %91, 2
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %89, label %131, !prof !398, !llvm.loop !399

96:                                               ; preds = %76
  %97 = add i32 %79, 63
  %98 = and i32 %97, -64
  %99 = add i32 %78, 1
  br label %100

100:                                              ; preds = %127, %96
  %101 = phi i64 [ %77, %96 ], [ %122, %127 ]
  %102 = phi i32 [ %98, %96 ], [ %130, %127 ]
  %103 = phi ptr [ %80, %96 ], [ %125, %127 ]
  %104 = phi i32 [ %99, %96 ], [ 0, %127 ]
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %121, label %106, !prof !400

106:                                              ; preds = %100
  %107 = add i32 %102, 128
  %108 = shl i32 %104, 6
  %109 = sub i32 %107, %108
  br label %110

110:                                              ; preds = %106, %117
  %111 = phi i32 [ %119, %117 ], [ %104, %106 ]
  %112 = phi i32 [ %118, %117 ], [ %102, %106 ]
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds %struct.bitmap_element_def, ptr %103, i64 0, i32 3, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !395
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %82, !prof !401

117:                                              ; preds = %110
  %118 = add i32 %112, 64
  %119 = add i32 %111, 1
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %110, !prof !402, !llvm.loop !403

121:                                              ; preds = %117, %100
  %122 = phi i64 [ %101, %100 ], [ %115, %117 ]
  %123 = phi i32 [ %102, %100 ], [ %109, %117 ]
  %124 = phi i32 [ %104, %100 ], [ 2, %117 ]
  %125 = load ptr, ptr %103, align 8, !tbaa !404
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127, !prof !405

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.bitmap_element_def, ptr %125, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !393
  %130 = shl i32 %129, 7
  br label %100, !llvm.loop !406

131:                                              ; preds = %121, %89, %82
  %132 = phi i64 [ %83, %82 ], [ %92, %89 ], [ %122, %121 ]
  %133 = phi i32 [ %84, %82 ], [ %84, %89 ], [ %124, %121 ]
  %134 = phi i32 [ %85, %82 ], [ %93, %89 ], [ %123, %121 ]
  %135 = phi ptr [ %86, %82 ], [ %86, %89 ], [ %125, %121 ]
  %136 = phi i1 [ false, %82 ], [ false, %89 ], [ true, %121 ]
  %137 = load ptr, ptr @df, align 8, !tbaa !182
  %138 = getelementptr inbounds %struct.df, ptr %137, i64 0, i32 1, i64 3
  %139 = load ptr, ptr %138, align 8, !tbaa !182
  br i1 %136, label %196, label %140, !prof !407

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.dataflow, ptr %139, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !205
  %143 = icmp ugt i32 %142, %134
  br i1 %143, label %144, label %150, !prof !408

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.dataflow, ptr %139, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !208
  %147 = zext i32 %134 to i64
  %148 = getelementptr inbounds ptr, ptr %146, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !182
  br label %150

150:                                              ; preds = %140, %144
  %151 = phi ptr [ %149, %144 ], [ null, %140 ]
  %152 = icmp eq ptr %151, null
  br i1 %152, label %159, label %153, !prof !408

153:                                              ; preds = %150
  %154 = load ptr, ptr %151, align 8, !tbaa !409
  tail call void @bitmap_clear(ptr noundef %154) #20
  %155 = getelementptr inbounds %struct.df_rd_bb_info, ptr %151, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !411
  tail call void @bitmap_clear(ptr noundef %156) #20
  %157 = getelementptr inbounds %struct.df_rd_bb_info, ptr %151, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !412
  tail call void @bitmap_clear(ptr noundef %158) #20
  br label %193

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.dataflow, ptr %139, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !309
  %162 = tail call ptr @pool_alloc(ptr noundef %161) #20
  %163 = load ptr, ptr @df, align 8, !tbaa !182
  %164 = getelementptr inbounds %struct.df, ptr %163, i64 0, i32 1, i64 3
  %165 = load ptr, ptr %164, align 8, !tbaa !182
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168, !prof !413

167:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #20
  br label %168

168:                                              ; preds = %167, %159
  %169 = load ptr, ptr @df, align 8, !tbaa !182
  %170 = getelementptr inbounds %struct.df, ptr %169, i64 0, i32 1, i64 3
  %171 = load ptr, ptr %170, align 8, !tbaa !182
  %172 = getelementptr inbounds %struct.dataflow, ptr %171, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !205
  %174 = icmp ugt i32 %173, %134
  br i1 %174, label %176, label %175, !prof !408

175:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #20
  br label %176

176:                                              ; preds = %168, %175
  %177 = load ptr, ptr @df, align 8, !tbaa !182
  %178 = getelementptr inbounds %struct.df, ptr %177, i64 0, i32 1, i64 3
  %179 = load ptr, ptr %178, align 8, !tbaa !182
  %180 = getelementptr inbounds %struct.dataflow, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !208
  %182 = zext i32 %134 to i64
  %183 = getelementptr inbounds ptr, ptr %181, i64 %182
  store ptr %162, ptr %183, align 8, !tbaa !182
  %184 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %75) #20
  store ptr %184, ptr %162, align 8, !tbaa !409
  %185 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %75) #20
  %186 = getelementptr inbounds %struct.df_rd_bb_info, ptr %162, i64 0, i32 1
  store ptr %185, ptr %186, align 8, !tbaa !411
  %187 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %75) #20
  %188 = getelementptr inbounds %struct.df_rd_bb_info, ptr %162, i64 0, i32 2
  store ptr %187, ptr %188, align 8, !tbaa !412
  %189 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %75) #20
  %190 = getelementptr inbounds %struct.df_rd_bb_info, ptr %162, i64 0, i32 3
  store ptr %189, ptr %190, align 8, !tbaa !414
  %191 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %75) #20
  %192 = getelementptr inbounds %struct.df_rd_bb_info, ptr %162, i64 0, i32 4
  store ptr %191, ptr %192, align 8, !tbaa !415
  br label %193

193:                                              ; preds = %176, %153
  %194 = lshr i64 %132, 1
  %195 = add i32 %134, 1
  br label %76, !llvm.loop !416

196:                                              ; preds = %131
  %197 = getelementptr inbounds %struct.dataflow, ptr %139, i64 0, i32 9
  store i8 1, ptr %197, align 2, !tbaa !417
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_rd_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #12 !prof !181 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !409
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  store ptr null, ptr %1, align 8, !tbaa !409
  %6 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !411
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  store ptr null, ptr %6, align 8, !tbaa !411
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !412
  tail call void @bitmap_obstack_free(ptr noundef %9) #20
  store ptr null, ptr %8, align 8, !tbaa !412
  %10 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !414
  tail call void @bitmap_obstack_free(ptr noundef %11) #20
  store ptr null, ptr %10, align 8, !tbaa !414
  %12 = getelementptr inbounds %struct.df_rd_bb_info, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !415
  tail call void @bitmap_obstack_free(ptr noundef %13) #20
  store ptr null, ptr %12, align 8, !tbaa !415
  %14 = load ptr, ptr @df, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 3
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !309
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %1) #20
  br label %19

19:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_rd_local_compute(ptr nocapture noundef readonly %0) #13 !prof !250 !PGOFuncName !418 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !314
  %7 = load ptr, ptr %6, align 8, !tbaa !386
  %8 = getelementptr inbounds %struct.df_rd_problem_data, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !388
  %10 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #20
  store ptr %10, ptr @seen_in_block, align 8, !tbaa !182
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #20
  store ptr %11, ptr @seen_in_insn, align 8, !tbaa !182
  tail call void @df_maybe_reorganize_def_refs(i32 noundef 3) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !390
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @bitmap_zero_bits, ptr %12, !prof !392
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !393
  %17 = shl i32 %16, 7
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3, i64 0
  %19 = load i64, ptr %18, align 8, !tbaa !395
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = or disjoint i32 %17, %21
  br label %23

23:                                               ; preds = %377, %1
  %24 = phi i64 [ %19, %1 ], [ %378, %377 ]
  %25 = phi i32 [ %22, %1 ], [ %379, %377 ]
  %26 = phi i32 [ 0, %1 ], [ %81, %377 ]
  %27 = phi ptr [ %14, %1 ], [ %82, %377 ]
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %43, label %29, !prof !396

29:                                               ; preds = %57, %23
  %30 = phi i64 [ %24, %23 ], [ %62, %57 ]
  %31 = phi i32 [ %25, %23 ], [ %59, %57 ]
  %32 = phi i32 [ %26, %23 ], [ %58, %57 ]
  %33 = phi ptr [ %27, %23 ], [ %50, %57 ]
  %34 = and i64 %30, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %78, !prof !397

36:                                               ; preds = %29, %36
  %37 = phi i32 [ %40, %36 ], [ %31, %29 ]
  %38 = phi i64 [ %39, %36 ], [ %30, %29 ]
  %39 = lshr exact i64 %38, 1
  %40 = add i32 %37, 1
  %41 = and i64 %38, 2
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %36, label %78, !prof !398, !llvm.loop !399

43:                                               ; preds = %23
  %44 = add i32 %25, 63
  %45 = and i32 %44, -64
  %46 = add i32 %26, 1
  br label %47

47:                                               ; preds = %74, %43
  %48 = phi i64 [ %24, %43 ], [ %69, %74 ]
  %49 = phi i32 [ %45, %43 ], [ %77, %74 ]
  %50 = phi ptr [ %27, %43 ], [ %72, %74 ]
  %51 = phi i32 [ %46, %43 ], [ 0, %74 ]
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %68, label %53, !prof !400

53:                                               ; preds = %47
  %54 = add i32 %49, 128
  %55 = shl i32 %51, 6
  %56 = sub i32 %54, %55
  br label %57

57:                                               ; preds = %53, %64
  %58 = phi i32 [ %66, %64 ], [ %51, %53 ]
  %59 = phi i32 [ %65, %64 ], [ %49, %53 ]
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !395
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %29, !prof !401

64:                                               ; preds = %57
  %65 = add i32 %59, 64
  %66 = add i32 %58, 1
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %57, !prof !402, !llvm.loop !403

68:                                               ; preds = %64, %47
  %69 = phi i64 [ %48, %47 ], [ %62, %64 ]
  %70 = phi i32 [ %49, %47 ], [ %56, %64 ]
  %71 = phi i32 [ %51, %47 ], [ 2, %64 ]
  %72 = load ptr, ptr %50, align 8, !tbaa !404
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74, !prof !405

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !393
  %77 = shl i32 %76, 7
  br label %47, !llvm.loop !406

78:                                               ; preds = %68, %36, %29
  %79 = phi i64 [ %30, %29 ], [ %39, %36 ], [ %69, %68 ]
  %80 = phi i32 [ %31, %29 ], [ %40, %36 ], [ %70, %68 ]
  %81 = phi i32 [ %32, %29 ], [ %32, %36 ], [ %71, %68 ]
  %82 = phi ptr [ %33, %29 ], [ %33, %36 ], [ %72, %68 ]
  %83 = phi i1 [ false, %29 ], [ false, %36 ], [ true, %68 ]
  br i1 %83, label %380, label %84, !prof !407

84:                                               ; preds = %78
  %85 = load ptr, ptr @cfun, align 8, !tbaa !182
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !213
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !257
  %90 = zext i32 %80 to i64
  %91 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %89, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !182
  %93 = load ptr, ptr @df, align 8, !tbaa !182
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 1, i64 3
  %95 = load ptr, ptr %94, align 8, !tbaa !182
  %96 = getelementptr inbounds %struct.dataflow, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !205
  %98 = icmp ugt i32 %97, %80
  br i1 %98, label %99, label %104, !prof !408

99:                                               ; preds = %84
  %100 = getelementptr inbounds %struct.dataflow, ptr %95, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !208
  %102 = getelementptr inbounds ptr, ptr %101, i64 %90
  %103 = load ptr, ptr %102, align 8, !tbaa !182
  br label %104

104:                                              ; preds = %99, %84
  %105 = phi ptr [ %103, %99 ], [ null, %84 ]
  %106 = load ptr, ptr @seen_in_block, align 8, !tbaa !182
  tail call void @bitmap_clear(ptr noundef %106) #20
  %107 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  tail call void @bitmap_clear(ptr noundef %107) #20
  %108 = load ptr, ptr @df, align 8, !tbaa !182
  %109 = getelementptr inbounds %struct.df, ptr %108, i64 0, i32 27
  %110 = load i8, ptr %109, align 4
  %111 = and i8 %110, 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %190, !prof !408

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.df, ptr %108, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !182
  %116 = getelementptr inbounds %struct.dataflow, ptr %115, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !205
  %118 = icmp ugt i32 %117, %80
  tail call void @llvm.assume(i1 %118)
  %119 = getelementptr inbounds %struct.dataflow, ptr %115, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !208
  %121 = getelementptr inbounds ptr, ptr %120, i64 %90
  %122 = load ptr, ptr %121, align 8, !tbaa !182
  %123 = load ptr, ptr %122, align 8, !tbaa !233
  %124 = load ptr, ptr %123, align 8, !tbaa !182
  %125 = icmp eq ptr %124, null
  br i1 %125, label %190, label %126, !prof !419

126:                                              ; preds = %113, %186
  %127 = phi ptr [ %188, %186 ], [ %124, %113 ]
  %128 = phi ptr [ %187, %186 ], [ %123, %113 ]
  %129 = load i32, ptr %127, align 8
  %130 = and i32 %129, 131072
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %186, !prof !420

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.df_base_ref, ptr %127, i64 0, i32 6
  %134 = load i32, ptr %133, align 8, !tbaa !193
  %135 = load ptr, ptr @df, align 8, !tbaa !182
  %136 = getelementptr inbounds %struct.df, ptr %135, i64 0, i32 3, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !237
  %138 = zext i32 %134 to i64
  %139 = getelementptr inbounds i32, ptr %137, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !197
  %141 = getelementptr inbounds %struct.df, ptr %135, i64 0, i32 3, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !240
  %143 = getelementptr inbounds i32, ptr %142, i64 %138
  %144 = load i32, ptr %143, align 4, !tbaa !197
  %145 = getelementptr inbounds %struct.df, ptr %135, i64 0, i32 27
  %146 = load i8, ptr %145, align 4
  %147 = and i8 %146, 2
  %148 = icmp eq i8 %147, 0
  %149 = icmp ugt i32 %134, 52
  %150 = or i1 %149, %148
  br i1 %150, label %151, label %186, !prof !421

151:                                              ; preds = %132
  %152 = load ptr, ptr @seen_in_block, align 8, !tbaa !182
  %153 = tail call i32 @bitmap_bit_p(ptr noundef %152, i32 noundef %134) #20
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %186, !prof !422

155:                                              ; preds = %151
  %156 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %157 = tail call i32 @bitmap_bit_p(ptr noundef %156, i32 noundef %134) #20
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %174, !prof !423

159:                                              ; preds = %155
  %160 = load i32, ptr %127, align 8
  %161 = and i32 %160, 5308416
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %174, !prof !424

163:                                              ; preds = %159
  %164 = icmp ugt i32 %144, 32
  br i1 %164, label %165, label %169, !prof !425

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.df_rd_bb_info, ptr %105, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !411
  %168 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %167, i32 noundef %134) #20
  br label %171

169:                                              ; preds = %163
  %170 = load ptr, ptr %105, align 8, !tbaa !409
  tail call void @bitmap_set_range(ptr noundef %170, i32 noundef %140, i32 noundef %144) #20
  br label %171

171:                                              ; preds = %165, %169
  %172 = getelementptr inbounds %struct.df_rd_bb_info, ptr %105, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !412
  tail call void @bitmap_clear_range(ptr noundef %173, i32 noundef %140, i32 noundef %144) #20
  br label %174

174:                                              ; preds = %171, %159, %155
  %175 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %176 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %175, i32 noundef %134) #20
  %177 = load i32, ptr %127, align 8
  %178 = and i32 %177, 12582912
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %186, !prof !426

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.df_rd_bb_info, ptr %105, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !412
  %183 = getelementptr inbounds %struct.df_base_ref, ptr %127, i64 0, i32 7
  %184 = load i32, ptr %183, align 4, !tbaa !193
  %185 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %182, i32 noundef %184) #20
  br label %186

186:                                              ; preds = %180, %174, %151, %132, %126
  %187 = getelementptr inbounds ptr, ptr %128, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !182
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %126, !prof !427, !llvm.loop !428

190:                                              ; preds = %186, %113, %104
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !193
  %193 = getelementptr inbounds %struct.rtl_bb_info, ptr %192, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !193
  %195 = icmp eq ptr %194, null
  br i1 %195, label %294, label %196, !prof !429

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.df_rd_bb_info, ptr %105, i64 0, i32 2
  %198 = getelementptr inbounds %struct.df_rd_bb_info, ptr %105, i64 0, i32 1
  br label %199

199:                                              ; preds = %196, %290
  %200 = phi ptr [ %194, %196 ], [ %292, %290 ]
  %201 = load ptr, ptr %191, align 8, !tbaa !193
  %202 = load ptr, ptr %201, align 8, !tbaa !268
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !193
  %205 = icmp eq ptr %200, %204
  br i1 %205, label %294, label %206, !prof !430

206:                                              ; preds = %199
  %207 = load i32, ptr %200, align 8
  %208 = and i32 %207, 65535
  %209 = add nsw i32 %208, -7
  %210 = icmp ult i32 %209, 4
  br i1 %210, label %211, label %290, !prof !431

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %213 = load i32, ptr %212, align 8, !tbaa !193
  %214 = load ptr, ptr @df, align 8, !tbaa !182
  %215 = getelementptr inbounds %struct.df, ptr %214, i64 0, i32 10
  %216 = load ptr, ptr %215, align 8, !tbaa !243
  %217 = zext i32 %213 to i64
  %218 = getelementptr inbounds ptr, ptr %216, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !182
  %220 = getelementptr inbounds %struct.df_insn_info, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !244
  %222 = load ptr, ptr %221, align 8, !tbaa !182
  %223 = icmp eq ptr %222, null
  br i1 %223, label %285, label %224, !prof !419

224:                                              ; preds = %211, %281
  %225 = phi ptr [ %283, %281 ], [ %222, %211 ]
  %226 = phi ptr [ %282, %281 ], [ %221, %211 ]
  %227 = load i32, ptr %225, align 8
  %228 = and i32 %227, 131072
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %281, !prof !420

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.df_base_ref, ptr %225, i64 0, i32 6
  %232 = load i32, ptr %231, align 8, !tbaa !193
  %233 = load ptr, ptr @df, align 8, !tbaa !182
  %234 = getelementptr inbounds %struct.df, ptr %233, i64 0, i32 3, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !237
  %236 = zext i32 %232 to i64
  %237 = getelementptr inbounds i32, ptr %235, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !197
  %239 = getelementptr inbounds %struct.df, ptr %233, i64 0, i32 3, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !240
  %241 = getelementptr inbounds i32, ptr %240, i64 %236
  %242 = load i32, ptr %241, align 4, !tbaa !197
  %243 = getelementptr inbounds %struct.df, ptr %233, i64 0, i32 27
  %244 = load i8, ptr %243, align 4
  %245 = and i8 %244, 2
  %246 = icmp eq i8 %245, 0
  %247 = icmp ugt i32 %232, 52
  %248 = or i1 %247, %246
  br i1 %248, label %249, label %281, !prof !421

249:                                              ; preds = %230
  %250 = load ptr, ptr @seen_in_block, align 8, !tbaa !182
  %251 = tail call i32 @bitmap_bit_p(ptr noundef %250, i32 noundef %232) #20
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %281, !prof !422

253:                                              ; preds = %249
  %254 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %255 = tail call i32 @bitmap_bit_p(ptr noundef %254, i32 noundef %232) #20
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %270, !prof !423

257:                                              ; preds = %253
  %258 = load i32, ptr %225, align 8
  %259 = and i32 %258, 5308416
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %270, !prof !424

261:                                              ; preds = %257
  %262 = icmp ugt i32 %242, 32
  br i1 %262, label %263, label %266, !prof !425

263:                                              ; preds = %261
  %264 = load ptr, ptr %198, align 8, !tbaa !411
  %265 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %264, i32 noundef %232) #20
  br label %268

266:                                              ; preds = %261
  %267 = load ptr, ptr %105, align 8, !tbaa !409
  tail call void @bitmap_set_range(ptr noundef %267, i32 noundef %238, i32 noundef %242) #20
  br label %268

268:                                              ; preds = %263, %266
  %269 = load ptr, ptr %197, align 8, !tbaa !412
  tail call void @bitmap_clear_range(ptr noundef %269, i32 noundef %238, i32 noundef %242) #20
  br label %270

270:                                              ; preds = %268, %257, %253
  %271 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %272 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %271, i32 noundef %232) #20
  %273 = load i32, ptr %225, align 8
  %274 = and i32 %273, 12582912
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %281, !prof !426

276:                                              ; preds = %270
  %277 = load ptr, ptr %197, align 8, !tbaa !412
  %278 = getelementptr inbounds %struct.df_base_ref, ptr %225, i64 0, i32 7
  %279 = load i32, ptr %278, align 4, !tbaa !193
  %280 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %277, i32 noundef %279) #20
  br label %281

281:                                              ; preds = %276, %270, %249, %230, %224
  %282 = getelementptr inbounds ptr, ptr %226, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !182
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %224, !prof !427, !llvm.loop !428

285:                                              ; preds = %281, %211
  %286 = load ptr, ptr @seen_in_block, align 8, !tbaa !182
  %287 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %288 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %286, ptr noundef %287) #20
  %289 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  tail call void @bitmap_clear(ptr noundef %289) #20
  br label %290

290:                                              ; preds = %285, %206
  %291 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !193
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %199, !prof !432, !llvm.loop !433

294:                                              ; preds = %290, %199, %190
  %295 = load ptr, ptr @df, align 8, !tbaa !182
  %296 = getelementptr inbounds %struct.df, ptr %295, i64 0, i32 27
  %297 = load i8, ptr %296, align 4
  %298 = and i8 %297, 2
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %377, !prof !408

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.df, ptr %295, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !182
  %303 = getelementptr inbounds %struct.dataflow, ptr %302, i64 0, i32 2
  %304 = load i32, ptr %303, align 8, !tbaa !205
  %305 = icmp ugt i32 %304, %80
  tail call void @llvm.assume(i1 %305)
  %306 = getelementptr inbounds %struct.dataflow, ptr %302, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !208
  %308 = getelementptr inbounds ptr, ptr %307, i64 %90
  %309 = load ptr, ptr %308, align 8, !tbaa !182
  %310 = load ptr, ptr %309, align 8, !tbaa !233
  %311 = load ptr, ptr %310, align 8, !tbaa !182
  %312 = icmp eq ptr %311, null
  br i1 %312, label %377, label %313, !prof !419

313:                                              ; preds = %300, %373
  %314 = phi ptr [ %375, %373 ], [ %311, %300 ]
  %315 = phi ptr [ %374, %373 ], [ %310, %300 ]
  %316 = load i32, ptr %314, align 8
  %317 = and i32 %316, 131072
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %373, label %319, !prof !434

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.df_base_ref, ptr %314, i64 0, i32 6
  %321 = load i32, ptr %320, align 8, !tbaa !193
  %322 = load ptr, ptr @df, align 8, !tbaa !182
  %323 = getelementptr inbounds %struct.df, ptr %322, i64 0, i32 3, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !237
  %325 = zext i32 %321 to i64
  %326 = getelementptr inbounds i32, ptr %324, i64 %325
  %327 = load i32, ptr %326, align 4, !tbaa !197
  %328 = getelementptr inbounds %struct.df, ptr %322, i64 0, i32 3, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !240
  %330 = getelementptr inbounds i32, ptr %329, i64 %325
  %331 = load i32, ptr %330, align 4, !tbaa !197
  %332 = getelementptr inbounds %struct.df, ptr %322, i64 0, i32 27
  %333 = load i8, ptr %332, align 4
  %334 = and i8 %333, 2
  %335 = icmp eq i8 %334, 0
  %336 = icmp ugt i32 %321, 52
  %337 = or i1 %336, %335
  br i1 %337, label %338, label %373, !prof !421

338:                                              ; preds = %319
  %339 = load ptr, ptr @seen_in_block, align 8, !tbaa !182
  %340 = tail call i32 @bitmap_bit_p(ptr noundef %339, i32 noundef %321) #20
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %373, !prof !422

342:                                              ; preds = %338
  %343 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %344 = tail call i32 @bitmap_bit_p(ptr noundef %343, i32 noundef %321) #20
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %361, !prof !423

346:                                              ; preds = %342
  %347 = load i32, ptr %314, align 8
  %348 = and i32 %347, 5308416
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %361, !prof !424

350:                                              ; preds = %346
  %351 = icmp ugt i32 %331, 32
  br i1 %351, label %352, label %356, !prof !425

352:                                              ; preds = %350
  %353 = getelementptr inbounds %struct.df_rd_bb_info, ptr %105, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !411
  %355 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %354, i32 noundef %321) #20
  br label %358

356:                                              ; preds = %350
  %357 = load ptr, ptr %105, align 8, !tbaa !409
  tail call void @bitmap_set_range(ptr noundef %357, i32 noundef %327, i32 noundef %331) #20
  br label %358

358:                                              ; preds = %352, %356
  %359 = getelementptr inbounds %struct.df_rd_bb_info, ptr %105, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !412
  tail call void @bitmap_clear_range(ptr noundef %360, i32 noundef %327, i32 noundef %331) #20
  br label %361

361:                                              ; preds = %358, %346, %342
  %362 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %363 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %362, i32 noundef %321) #20
  %364 = load i32, ptr %314, align 8
  %365 = and i32 %364, 12582912
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %373, !prof !426

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.df_rd_bb_info, ptr %105, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !412
  %370 = getelementptr inbounds %struct.df_base_ref, ptr %314, i64 0, i32 7
  %371 = load i32, ptr %370, align 4, !tbaa !193
  %372 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %369, i32 noundef %371) #20
  br label %373

373:                                              ; preds = %367, %361, %338, %319, %313
  %374 = getelementptr inbounds ptr, ptr %315, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !182
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %313, !prof !427, !llvm.loop !428

377:                                              ; preds = %373, %300, %294
  %378 = lshr i64 %79, 1
  %379 = add i32 %80, 1
  br label %23, !llvm.loop !435

380:                                              ; preds = %78
  %381 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !182
  %382 = load ptr, ptr %381, align 8, !tbaa !390
  %383 = icmp eq ptr %382, null
  %384 = select i1 %383, ptr @bitmap_zero_bits, ptr %382, !prof !392
  %385 = getelementptr inbounds %struct.bitmap_element_def, ptr %384, i64 0, i32 2
  %386 = load i32, ptr %385, align 8, !tbaa !393
  %387 = shl i32 %386, 7
  %388 = getelementptr inbounds %struct.bitmap_element_def, ptr %384, i64 0, i32 3, i64 0
  %389 = load i64, ptr %388, align 8, !tbaa !395
  %390 = icmp eq i64 %389, 0
  %391 = zext i1 %390 to i32
  %392 = or disjoint i32 %387, %391
  br label %393

393:                                              ; preds = %469, %380
  %394 = phi i64 [ %389, %380 ], [ %470, %469 ]
  %395 = phi i32 [ 0, %380 ], [ %450, %469 ]
  %396 = phi ptr [ %384, %380 ], [ %451, %469 ]
  %397 = phi i32 [ %392, %380 ], [ %471, %469 ]
  %398 = icmp eq i64 %394, 0
  br i1 %398, label %413, label %399, !prof !436

399:                                              ; preds = %427, %393
  %400 = phi i64 [ %394, %393 ], [ %432, %427 ]
  %401 = phi i32 [ %395, %393 ], [ %428, %427 ]
  %402 = phi ptr [ %396, %393 ], [ %419, %427 ]
  %403 = phi i32 [ %397, %393 ], [ %429, %427 ]
  %404 = and i64 %400, 1
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %448, !prof !437

406:                                              ; preds = %399, %406
  %407 = phi i32 [ %410, %406 ], [ %403, %399 ]
  %408 = phi i64 [ %409, %406 ], [ %400, %399 ]
  %409 = lshr exact i64 %408, 1
  %410 = add i32 %407, 1
  %411 = and i64 %408, 2
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %406, label %448, !prof !438, !llvm.loop !399

413:                                              ; preds = %393
  %414 = add i32 %397, 63
  %415 = and i32 %414, -64
  %416 = add i32 %395, 1
  br label %417

417:                                              ; preds = %444, %413
  %418 = phi i64 [ %394, %413 ], [ %439, %444 ]
  %419 = phi ptr [ %396, %413 ], [ %442, %444 ]
  %420 = phi i32 [ %415, %413 ], [ %447, %444 ]
  %421 = phi i32 [ %416, %413 ], [ 0, %444 ]
  %422 = icmp eq i32 %421, 2
  br i1 %422, label %438, label %423, !prof !267

423:                                              ; preds = %417
  %424 = add i32 %420, 128
  %425 = shl i32 %421, 6
  %426 = sub i32 %424, %425
  br label %427

427:                                              ; preds = %423, %434
  %428 = phi i32 [ %436, %434 ], [ %421, %423 ]
  %429 = phi i32 [ %435, %434 ], [ %420, %423 ]
  %430 = zext i32 %428 to i64
  %431 = getelementptr inbounds %struct.bitmap_element_def, ptr %419, i64 0, i32 3, i64 %430
  %432 = load i64, ptr %431, align 8, !tbaa !395
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %434, label %399, !prof !385

434:                                              ; preds = %427
  %435 = add i32 %429, 64
  %436 = add i32 %428, 1
  %437 = icmp eq i32 %436, 2
  br i1 %437, label %438, label %427, !prof !439, !llvm.loop !403

438:                                              ; preds = %434, %417
  %439 = phi i64 [ %418, %417 ], [ %432, %434 ]
  %440 = phi i32 [ %420, %417 ], [ %426, %434 ]
  %441 = phi i32 [ %421, %417 ], [ 2, %434 ]
  %442 = load ptr, ptr %419, align 8, !tbaa !404
  %443 = icmp eq ptr %442, null
  br i1 %443, label %448, label %444, !prof !385

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.bitmap_element_def, ptr %442, i64 0, i32 2
  %446 = load i32, ptr %445, align 8, !tbaa !393
  %447 = shl i32 %446, 7
  br label %417, !llvm.loop !406

448:                                              ; preds = %438, %406, %399
  %449 = phi i64 [ %400, %399 ], [ %409, %406 ], [ %439, %438 ]
  %450 = phi i32 [ %401, %399 ], [ %401, %406 ], [ %441, %438 ]
  %451 = phi ptr [ %402, %399 ], [ %402, %406 ], [ %442, %438 ]
  %452 = phi i32 [ %403, %399 ], [ %410, %406 ], [ %440, %438 ]
  %453 = phi i1 [ false, %399 ], [ false, %406 ], [ true, %438 ]
  br i1 %453, label %472, label %454, !prof !436

454:                                              ; preds = %448
  %455 = load ptr, ptr @df, align 8, !tbaa !182
  %456 = getelementptr inbounds %struct.df, ptr %455, i64 0, i32 3, i32 2
  %457 = load ptr, ptr %456, align 8, !tbaa !240
  %458 = zext i32 %452 to i64
  %459 = getelementptr inbounds i32, ptr %457, i64 %458
  %460 = load i32, ptr %459, align 4, !tbaa !197
  %461 = icmp ugt i32 %460, 32
  br i1 %461, label %462, label %464, !prof !440

462:                                              ; preds = %454
  %463 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %452) #20
  br label %469

464:                                              ; preds = %454
  %465 = getelementptr inbounds %struct.df, ptr %455, i64 0, i32 3, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !237
  %467 = getelementptr inbounds i32, ptr %466, i64 %458
  %468 = load i32, ptr %467, align 4, !tbaa !197
  tail call void @bitmap_set_range(ptr noundef %9, i32 noundef %468, i32 noundef %460) #20
  br label %469

469:                                              ; preds = %462, %464
  %470 = lshr i64 %449, 1
  %471 = add i32 %452, 1
  br label %393, !llvm.loop !441

472:                                              ; preds = %448
  %473 = load ptr, ptr @seen_in_block, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %473) #20
  store ptr null, ptr @seen_in_block, align 8, !tbaa !182
  %474 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %474) #20
  store ptr null, ptr @seen_in_insn, align 8, !tbaa !182
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_rd_init_solution(ptr nocapture noundef readonly %0) #13 !prof !250 !PGOFuncName !442 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2, !prof !392
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %87, %1
  %14 = phi i64 [ %9, %1 ], [ %95, %87 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %87 ]
  %16 = phi i32 [ %12, %1 ], [ %96, %87 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %87 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19, !prof !396

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68, !prof !397

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !prof !398, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43, !prof !400

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19, !prof !401

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !prof !402, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64, !prof !405

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %97, label %74, !prof !407

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  br i1 %80, label %81, label %87, !prof !408

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !208
  %84 = zext i32 %71 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ null, %74 ]
  %89 = getelementptr inbounds %struct.df_rd_bb_info, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !415
  %91 = getelementptr inbounds %struct.df_rd_bb_info, ptr %88, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !412
  tail call void @bitmap_copy(ptr noundef %90, ptr noundef %92) #20
  %93 = getelementptr inbounds %struct.df_rd_bb_info, ptr %88, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !414
  tail call void @bitmap_clear(ptr noundef %94) #20
  %95 = lshr i64 %69, 1
  %96 = add i32 %71, 1
  br label %13, !llvm.loop !443

97:                                               ; preds = %68
  ret void
}

declare void @df_worklist_dataflow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @df_rd_confluence_n(ptr nocapture noundef readonly %0) #9 !prof !444 !PGOFuncName !445 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !203
  %6 = load ptr, ptr @df, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 3
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !205
  %11 = icmp ugt i32 %10, %5
  tail call void @llvm.assume(i1 %11)
  %12 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.df_rd_bb_info, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !414
  %19 = load ptr, ptr %0, align 8, !tbaa !227
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !203
  %22 = icmp ugt i32 %10, %21
  tail call void @llvm.assume(i1 %22)
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %13, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  %26 = getelementptr inbounds %struct.df_rd_bb_info, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !415
  %28 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !229
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %132, !prof !446

32:                                               ; preds = %1
  %33 = and i32 %29, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %130, label %35, !prof !446

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !314
  %38 = load ptr, ptr %37, align 8, !tbaa !386
  %39 = getelementptr inbounds %struct.df_rd_problem_data, ptr %37, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !388
  %41 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #20
  tail call void @bitmap_copy(ptr noundef %41, ptr noundef %27) #20
  %42 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %41, ptr noundef %40) #20
  %43 = load ptr, ptr %38, align 8, !tbaa !390
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @bitmap_zero_bits, ptr %43
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !393
  %48 = shl i32 %47, 7
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 3, i64 0
  %50 = load i64, ptr %49, align 8, !tbaa !395
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = or disjoint i32 %48, %52
  br label %54

54:                                               ; preds = %115, %35
  %55 = phi i32 [ 0, %35 ], [ %110, %115 ]
  %56 = phi i64 [ %50, %35 ], [ %126, %115 ]
  %57 = phi ptr [ %45, %35 ], [ %112, %115 ]
  %58 = phi i32 [ %53, %35 ], [ %127, %115 ]
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %88, %54
  %61 = phi i32 [ %55, %54 ], [ %89, %88 ]
  %62 = phi i64 [ %56, %54 ], [ %93, %88 ]
  %63 = phi ptr [ %57, %54 ], [ %80, %88 ]
  %64 = phi i32 [ %58, %54 ], [ %90, %88 ]
  %65 = and i64 %62, 1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %60, %67
  %68 = phi i32 [ %71, %67 ], [ %64, %60 ]
  %69 = phi i64 [ %70, %67 ], [ %62, %60 ]
  %70 = lshr exact i64 %69, 1
  %71 = add i32 %68, 1
  %72 = and i64 %69, 2
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %67, label %109, !llvm.loop !399

74:                                               ; preds = %54
  %75 = add i32 %58, 63
  %76 = and i32 %75, -64
  %77 = add i32 %55, 1
  br label %78

78:                                               ; preds = %105, %74
  %79 = phi i64 [ %56, %74 ], [ %100, %105 ]
  %80 = phi ptr [ %57, %74 ], [ %103, %105 ]
  %81 = phi i32 [ %76, %74 ], [ %108, %105 ]
  %82 = phi i32 [ %77, %74 ], [ 0, %105 ]
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %99, label %84

84:                                               ; preds = %78
  %85 = add i32 %81, 128
  %86 = shl i32 %82, 6
  %87 = sub i32 %85, %86
  br label %88

88:                                               ; preds = %84, %95
  %89 = phi i32 [ %97, %95 ], [ %82, %84 ]
  %90 = phi i32 [ %96, %95 ], [ %81, %84 ]
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds %struct.bitmap_element_def, ptr %80, i64 0, i32 3, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !395
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %60

95:                                               ; preds = %88
  %96 = add i32 %90, 64
  %97 = add i32 %89, 1
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %88, !llvm.loop !403

99:                                               ; preds = %95, %78
  %100 = phi i64 [ %79, %78 ], [ %93, %95 ]
  %101 = phi i32 [ %81, %78 ], [ %87, %95 ]
  %102 = phi i32 [ %82, %78 ], [ 2, %95 ]
  %103 = load ptr, ptr %80, align 8, !tbaa !404
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.bitmap_element_def, ptr %103, i64 0, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !393
  %108 = shl i32 %107, 7
  br label %78, !llvm.loop !406

109:                                              ; preds = %99, %67, %60
  %110 = phi i32 [ %61, %60 ], [ %61, %67 ], [ %102, %99 ]
  %111 = phi i64 [ %62, %60 ], [ %70, %67 ], [ %100, %99 ]
  %112 = phi ptr [ %63, %60 ], [ %63, %67 ], [ %103, %99 ]
  %113 = phi i32 [ %64, %60 ], [ %71, %67 ], [ %101, %99 ]
  %114 = phi i1 [ false, %60 ], [ false, %67 ], [ true, %99 ]
  br i1 %114, label %128, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr @df, align 8, !tbaa !182
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 3, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !237
  %119 = zext i32 %113 to i64
  %120 = getelementptr inbounds i32, ptr %118, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !197
  %122 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 3, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !240
  %124 = getelementptr inbounds i32, ptr %123, i64 %119
  %125 = load i32, ptr %124, align 4, !tbaa !197
  tail call void @bitmap_clear_range(ptr noundef %41, i32 noundef %121, i32 noundef %125) #20
  %126 = lshr i64 %111, 1
  %127 = add i32 %113, 1
  br label %54, !llvm.loop !447

128:                                              ; preds = %109
  %129 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %18, ptr noundef %41) #20
  tail call void @bitmap_obstack_free(ptr noundef %41) #20
  br label %132

130:                                              ; preds = %32
  %131 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %18, ptr noundef %27) #20
  br label %132

132:                                              ; preds = %128, %130, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @df_rd_transfer_function(i32 noundef %0) #9 !prof !448 !PGOFuncName !449 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !205
  %7 = icmp ugt i32 %6, %0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !208
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df_rd_bb_info, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !414
  %15 = getelementptr inbounds %struct.df_rd_bb_info, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !415
  %17 = getelementptr inbounds %struct.df_rd_bb_info, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !412
  %19 = load ptr, ptr %12, align 8, !tbaa !409
  %20 = getelementptr inbounds %struct.df_rd_bb_info, ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !411
  %22 = load ptr, ptr %21, align 8, !tbaa !390
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26, !prof !450

24:                                               ; preds = %1
  %25 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %16, ptr noundef %18, ptr noundef %14, ptr noundef %19) #20
  br label %124

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !314
  %29 = getelementptr inbounds %struct.df_rd_problem_data, ptr %28, i64 0, i32 2
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %29) #20
  tail call void @bitmap_copy(ptr noundef %30, ptr noundef %14) #20
  %31 = load ptr, ptr %21, align 8, !tbaa !390
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @bitmap_zero_bits, ptr %31, !prof !451
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !393
  %36 = shl i32 %35, 7
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 0
  %38 = load i64, ptr %37, align 8, !tbaa !395
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = or disjoint i32 %36, %40
  br label %42

42:                                               ; preds = %103, %26
  %43 = phi i64 [ %38, %26 ], [ %114, %103 ]
  %44 = phi i32 [ 0, %26 ], [ %99, %103 ]
  %45 = phi i32 [ %41, %26 ], [ %115, %103 ]
  %46 = phi ptr [ %33, %26 ], [ %101, %103 ]
  %47 = icmp eq i64 %43, 0
  br i1 %47, label %62, label %48, !prof !452

48:                                               ; preds = %76, %42
  %49 = phi i64 [ %43, %42 ], [ %81, %76 ]
  %50 = phi i32 [ %44, %42 ], [ %77, %76 ]
  %51 = phi i32 [ %45, %42 ], [ %78, %76 ]
  %52 = phi ptr [ %46, %42 ], [ %69, %76 ]
  %53 = and i64 %49, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %97, !prof !453

55:                                               ; preds = %48, %55
  %56 = phi i32 [ %59, %55 ], [ %51, %48 ]
  %57 = phi i64 [ %58, %55 ], [ %49, %48 ]
  %58 = lshr exact i64 %57, 1
  %59 = add i32 %56, 1
  %60 = and i64 %57, 2
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %55, label %97, !prof !454, !llvm.loop !399

62:                                               ; preds = %42
  %63 = add i32 %45, 63
  %64 = and i32 %63, -64
  %65 = add i32 %44, 1
  br label %66

66:                                               ; preds = %93, %62
  %67 = phi i64 [ %43, %62 ], [ %88, %93 ]
  %68 = phi i32 [ %64, %62 ], [ %96, %93 ]
  %69 = phi ptr [ %46, %62 ], [ %91, %93 ]
  %70 = phi i32 [ %65, %62 ], [ 0, %93 ]
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %87, label %72, !prof !455

72:                                               ; preds = %66
  %73 = add i32 %68, 128
  %74 = shl i32 %70, 6
  %75 = sub i32 %73, %74
  br label %76

76:                                               ; preds = %72, %83
  %77 = phi i32 [ %85, %83 ], [ %70, %72 ]
  %78 = phi i32 [ %84, %83 ], [ %68, %72 ]
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 3, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !395
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %48, !prof !456

83:                                               ; preds = %76
  %84 = add i32 %78, 64
  %85 = add i32 %77, 1
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %76, !prof !457, !llvm.loop !403

87:                                               ; preds = %83, %66
  %88 = phi i64 [ %67, %66 ], [ %81, %83 ]
  %89 = phi i32 [ %68, %66 ], [ %75, %83 ]
  %90 = phi i32 [ %70, %66 ], [ 2, %83 ]
  %91 = load ptr, ptr %69, align 8, !tbaa !404
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93, !prof !456

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.bitmap_element_def, ptr %91, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !393
  %96 = shl i32 %95, 7
  br label %66, !llvm.loop !406

97:                                               ; preds = %87, %55, %48
  %98 = phi i64 [ %49, %48 ], [ %58, %55 ], [ %88, %87 ]
  %99 = phi i32 [ %50, %48 ], [ %50, %55 ], [ %90, %87 ]
  %100 = phi i32 [ %51, %48 ], [ %59, %55 ], [ %89, %87 ]
  %101 = phi ptr [ %52, %48 ], [ %52, %55 ], [ %91, %87 ]
  %102 = phi i1 [ false, %48 ], [ false, %55 ], [ true, %87 ]
  br i1 %102, label %116, label %103, !prof !452

103:                                              ; preds = %97
  %104 = load ptr, ptr @df, align 8, !tbaa !182
  %105 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 3, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !237
  %107 = zext i32 %100 to i64
  %108 = getelementptr inbounds i32, ptr %106, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !197
  %110 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 3, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !240
  %112 = getelementptr inbounds i32, ptr %111, i64 %107
  %113 = load i32, ptr %112, align 4, !tbaa !197
  tail call void @bitmap_clear_range(ptr noundef %30, i32 noundef %109, i32 noundef %113) #20
  %114 = lshr i64 %98, 1
  %115 = add i32 %100, 1
  br label %42, !llvm.loop !458

116:                                              ; preds = %97
  %117 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %30, ptr noundef %19) #20
  %118 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %30, ptr noundef %18) #20
  %119 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %30, ptr noundef %16) #20
  %120 = icmp eq i8 %119, 0
  %121 = zext i1 %120 to i8
  br i1 %120, label %122, label %123, !prof !459

122:                                              ; preds = %116
  tail call void @bitmap_obstack_free(ptr noundef %16) #20
  store ptr %30, ptr %15, align 8, !tbaa !415
  br label %124

123:                                              ; preds = %116
  tail call void @bitmap_obstack_free(ptr noundef %30) #20
  br label %124

124:                                              ; preds = %122, %123, %24
  %125 = phi i8 [ %25, %24 ], [ %121, %123 ], [ %121, %122 ]
  ret i8 %125
}

; Function Attrs: nounwind uwtable
define internal void @df_rd_free() #13 !prof !250 !PGOFuncName !460 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 3
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7, !prof !392

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !309
  tail call void @free_alloc_pool(ptr noundef %9) #20
  %10 = getelementptr inbounds %struct.df_rd_problem_data, ptr %5, i64 0, i32 2
  tail call void @bitmap_obstack_release(ptr noundef nonnull %10) #20
  %11 = load ptr, ptr @df, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !205
  %15 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !208
  tail call void @free(ptr noundef %16)
  %17 = load ptr, ptr @df, align 8, !tbaa !182
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !314
  tail call void @free(ptr noundef %21)
  br label %22

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @df, align 8, !tbaa !182
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 1, i64 3
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  tail call void @free(ptr noundef %25)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_rd_start_dump(ptr noundef %0) #12 !prof !181 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !461
  %7 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !314
  %13 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %0)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 22, i64 1, ptr %0)
  %15 = load ptr, ptr %12, align 8, !tbaa !386
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #20
  %16 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 21, i64 1, ptr %0)
  %17 = getelementptr inbounds %struct.df_rd_problem_data, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !388
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #20
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %10
  %21 = zext i32 %6 to i64
  br label %22

22:                                               ; preds = %20, %37
  %23 = phi i64 [ 0, %20 ], [ %38, %37 ]
  %24 = load ptr, ptr @df, align 8, !tbaa !182
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 3, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !240
  %27 = getelementptr inbounds i32, ptr %26, i64 %23
  %28 = load i32, ptr %27, align 4, !tbaa !197
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 3, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !237
  %33 = getelementptr inbounds i32, ptr %32, i64 %23
  %34 = load i32, ptr %33, align 4, !tbaa !197
  %35 = trunc i64 %23 to i32
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %35, i32 noundef %34, i32 noundef %28)
  br label %37

37:                                               ; preds = %22, %30
  %38 = add nuw nsw i64 %23, 1
  %39 = icmp eq i64 %38, %21
  br i1 %39, label %40, label %22, !llvm.loop !462

40:                                               ; preds = %37, %10
  %41 = tail call i32 @fputc(i32 10, ptr %0)
  br label %42

42:                                               ; preds = %1, %40
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_rd_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_rd_bb_info, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !414
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @bitmap_count_bits(ptr noundef nonnull %22) #20
  %26 = trunc i64 %25 to i32
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %26)
  %28 = load ptr, ptr %21, align 8, !tbaa !414
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #20
  %29 = getelementptr inbounds %struct.df_rd_bb_info, ptr %18, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !412
  %31 = tail call i64 @bitmap_count_bits(ptr noundef %30) #20
  %32 = trunc i64 %31 to i32
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %32)
  %34 = load ptr, ptr %29, align 8, !tbaa !412
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %34, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #20
  %35 = load ptr, ptr %18, align 8, !tbaa !409
  %36 = tail call i64 @bitmap_count_bits(ptr noundef %35) #20
  %37 = trunc i64 %36 to i32
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %37)
  %39 = load ptr, ptr %18, align 8, !tbaa !409
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %39, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #20
  br label %40

40:                                               ; preds = %17, %20, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_rd_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 3
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_rd_bb_info, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !415
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @bitmap_count_bits(ptr noundef nonnull %22) #20
  %26 = trunc i64 %25 to i32
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %26)
  %28 = load ptr, ptr %21, align 8, !tbaa !415
  tail call void @bitmap_print(ptr noundef %1, ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #20
  br label %29

29:                                               ; preds = %17, %20, %24
  ret void
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare void @df_maybe_reorganize_def_refs(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_and_compl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @df_lr_alloc(ptr nocapture readnone %0) #13 !prof !463 !PGOFuncName !464 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !309
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14, !prof !465

8:                                                ; preds = %1
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.22, i64 noundef 32, i64 noundef 50) #20
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 3
  store ptr %9, ptr %13, align 8, !tbaa !309
  br label %14

14:                                               ; preds = %8, %1
  %15 = load ptr, ptr @df, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 1, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = load ptr, ptr @cfun, align 8, !tbaa !182
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !215
  %23 = add nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !205
  %26 = icmp ult i32 %25, %23
  br i1 %26, label %27, label %41, !prof !217

27:                                               ; preds = %14
  %28 = lshr i32 %23, 2
  %29 = add i32 %28, %23
  %30 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !208
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = tail call ptr @xrealloc(ptr noundef %31, i64 noundef %33) #20
  store ptr %34, ptr %30, align 8, !tbaa !208
  %35 = load i32, ptr %24, align 8, !tbaa !205
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = sub i32 %29, %35
  %39 = zext i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %37, i8 0, i64 %40, i1 false), !prof !389
  store i32 %29, ptr %24, align 8, !tbaa !205
  br label %41

41:                                               ; preds = %14, %27
  %42 = load ptr, ptr @df, align 8, !tbaa !182
  %43 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 1, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  %45 = getelementptr inbounds %struct.dataflow, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !251
  %47 = load ptr, ptr %46, align 8, !tbaa !390
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr @bitmap_zero_bits, ptr %47, !prof !466
  %50 = getelementptr inbounds %struct.bitmap_element_def, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !393
  %52 = shl i32 %51, 7
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %49, i64 0, i32 3, i64 0
  %54 = load i64, ptr %53, align 8, !tbaa !395
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = or disjoint i32 %52, %56
  br label %58

58:                                               ; preds = %171, %41
  %59 = phi i64 [ %54, %41 ], [ %172, %171 ]
  %60 = phi i32 [ 0, %41 ], [ %115, %171 ]
  %61 = phi i32 [ %57, %41 ], [ %173, %171 ]
  %62 = phi ptr [ %49, %41 ], [ %117, %171 ]
  %63 = icmp eq i64 %59, 0
  br i1 %63, label %78, label %64, !prof !467

64:                                               ; preds = %92, %58
  %65 = phi i64 [ %59, %58 ], [ %97, %92 ]
  %66 = phi i32 [ %60, %58 ], [ %93, %92 ]
  %67 = phi i32 [ %61, %58 ], [ %94, %92 ]
  %68 = phi ptr [ %62, %58 ], [ %85, %92 ]
  %69 = and i64 %65, 1
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %113, !prof !468

71:                                               ; preds = %64, %71
  %72 = phi i32 [ %75, %71 ], [ %67, %64 ]
  %73 = phi i64 [ %74, %71 ], [ %65, %64 ]
  %74 = lshr exact i64 %73, 1
  %75 = add i32 %72, 1
  %76 = and i64 %73, 2
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %71, label %113, !prof !469, !llvm.loop !399

78:                                               ; preds = %58
  %79 = add i32 %61, 63
  %80 = and i32 %79, -64
  %81 = add i32 %60, 1
  br label %82

82:                                               ; preds = %109, %78
  %83 = phi i64 [ %59, %78 ], [ %104, %109 ]
  %84 = phi i32 [ %80, %78 ], [ %112, %109 ]
  %85 = phi ptr [ %62, %78 ], [ %107, %109 ]
  %86 = phi i32 [ %81, %78 ], [ 0, %109 ]
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %103, label %88, !prof !470

88:                                               ; preds = %82
  %89 = add i32 %84, 128
  %90 = shl i32 %86, 6
  %91 = sub i32 %89, %90
  br label %92

92:                                               ; preds = %88, %99
  %93 = phi i32 [ %101, %99 ], [ %86, %88 ]
  %94 = phi i32 [ %100, %99 ], [ %84, %88 ]
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds %struct.bitmap_element_def, ptr %85, i64 0, i32 3, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !395
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %64, !prof !471

99:                                               ; preds = %92
  %100 = add i32 %94, 64
  %101 = add i32 %93, 1
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %92, !prof !472, !llvm.loop !403

103:                                              ; preds = %99, %82
  %104 = phi i64 [ %83, %82 ], [ %97, %99 ]
  %105 = phi i32 [ %84, %82 ], [ %91, %99 ]
  %106 = phi i32 [ %86, %82 ], [ 2, %99 ]
  %107 = load ptr, ptr %85, align 8, !tbaa !404
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109, !prof !473

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.bitmap_element_def, ptr %107, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !393
  %112 = shl i32 %111, 7
  br label %82, !llvm.loop !406

113:                                              ; preds = %103, %71, %64
  %114 = phi i64 [ %65, %64 ], [ %74, %71 ], [ %104, %103 ]
  %115 = phi i32 [ %66, %64 ], [ %66, %71 ], [ %106, %103 ]
  %116 = phi i32 [ %67, %64 ], [ %75, %71 ], [ %105, %103 ]
  %117 = phi ptr [ %68, %64 ], [ %68, %71 ], [ %107, %103 ]
  %118 = phi i1 [ false, %64 ], [ false, %71 ], [ true, %103 ]
  %119 = load ptr, ptr @df, align 8, !tbaa !182
  %120 = getelementptr inbounds %struct.df, ptr %119, i64 0, i32 1, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !182
  br i1 %118, label %174, label %122, !prof !474

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.dataflow, ptr %121, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !205
  %125 = icmp ugt i32 %124, %116
  br i1 %125, label %126, label %132, !prof !475

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.dataflow, ptr %121, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !208
  %129 = zext i32 %116 to i64
  %130 = getelementptr inbounds ptr, ptr %128, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !182
  br label %132

132:                                              ; preds = %122, %126
  %133 = phi ptr [ %131, %126 ], [ null, %122 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135, !prof !476

135:                                              ; preds = %132
  %136 = load ptr, ptr %133, align 8, !tbaa !252
  tail call void @bitmap_clear(ptr noundef %136) #20
  %137 = getelementptr inbounds %struct.df_lr_bb_info, ptr %133, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !254
  tail call void @bitmap_clear(ptr noundef %138) #20
  br label %171

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.dataflow, ptr %121, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !309
  %142 = tail call ptr @pool_alloc(ptr noundef %141) #20
  %143 = load ptr, ptr @df, align 8, !tbaa !182
  %144 = getelementptr inbounds %struct.df, ptr %143, i64 0, i32 1, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !182
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %148, !prof !477

147:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 745, ptr noundef nonnull @.str.1) #20
  br label %148

148:                                              ; preds = %147, %139
  %149 = load ptr, ptr @df, align 8, !tbaa !182
  %150 = getelementptr inbounds %struct.df, ptr %149, i64 0, i32 1, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !182
  %152 = getelementptr inbounds %struct.dataflow, ptr %151, i64 0, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !205
  %154 = icmp ugt i32 %153, %116
  br i1 %154, label %156, label %155, !prof !478

155:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @.str.1) #20
  br label %156

156:                                              ; preds = %148, %155
  %157 = load ptr, ptr @df, align 8, !tbaa !182
  %158 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 1, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !182
  %160 = getelementptr inbounds %struct.dataflow, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !208
  %162 = zext i32 %116 to i64
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162
  store ptr %142, ptr %163, align 8, !tbaa !182
  %164 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %165 = getelementptr inbounds %struct.df_lr_bb_info, ptr %142, i64 0, i32 1
  store ptr %164, ptr %165, align 8, !tbaa !254
  %166 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %166, ptr %142, align 8, !tbaa !252
  %167 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %168 = getelementptr inbounds %struct.df_lr_bb_info, ptr %142, i64 0, i32 2
  store ptr %167, ptr %168, align 8, !tbaa !479
  %169 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %170 = getelementptr inbounds %struct.df_lr_bb_info, ptr %142, i64 0, i32 3
  store ptr %169, ptr %170, align 8, !tbaa !480
  br label %171

171:                                              ; preds = %156, %135
  %172 = lshr i64 %114, 1
  %173 = add i32 %116, 1
  br label %58, !llvm.loop !481

174:                                              ; preds = %113
  %175 = getelementptr inbounds %struct.dataflow, ptr %121, i64 0, i32 9
  store i8 0, ptr %175, align 2, !tbaa !417
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_lr_reset(ptr nocapture noundef readonly %0) #12 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %91, %1
  %14 = phi i64 [ %9, %1 ], [ %96, %91 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %91 ]
  %16 = phi i32 [ %12, %1 ], [ %97, %91 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %91 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %98, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !208
  %84 = zext i32 %71 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ null, %74 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @.str.1) #20
  br label %91

91:                                               ; preds = %87, %90
  %92 = getelementptr inbounds %struct.df_lr_bb_info, ptr %88, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !479
  tail call void @bitmap_clear(ptr noundef %93) #20
  %94 = getelementptr inbounds %struct.df_lr_bb_info, ptr %88, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !480
  tail call void @bitmap_clear(ptr noundef %95) #20
  %96 = lshr i64 %69, 1
  %97 = add i32 %71, 1
  br label %13, !llvm.loop !482

98:                                               ; preds = %68
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @df_lr_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #9 !prof !483 !PGOFuncName !484 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4, !prof !485

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !254
  tail call void @bitmap_obstack_free(ptr noundef %6) #20
  store ptr null, ptr %5, align 8, !tbaa !254
  %7 = load ptr, ptr %1, align 8, !tbaa !252
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  store ptr null, ptr %1, align 8, !tbaa !252
  %8 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !479
  tail call void @bitmap_obstack_free(ptr noundef %9) #20
  store ptr null, ptr %8, align 8, !tbaa !479
  %10 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !480
  tail call void @bitmap_obstack_free(ptr noundef %11) #20
  store ptr null, ptr %10, align 8, !tbaa !480
  %12 = load ptr, ptr @df, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !309
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #20
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_lr_local_compute(ptr nocapture readnone %0) #13 !prof !463 !PGOFuncName !486 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !487
  tail call void @bitmap_clear(ptr noundef %4) #20
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !487
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef 7) #20
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !197
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %56, !prof !488

11:                                               ; preds = %1
  %12 = load ptr, ptr @df, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !487
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef 20) #20
  %16 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !193
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18, !prof !489

18:                                               ; preds = %11
  %19 = load ptr, ptr @df, align 8, !tbaa !182
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !487
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef 16) #20
  br label %23

23:                                               ; preds = %18, %11
  %24 = load i32, ptr @flag_pic, align 4, !tbaa !197
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %56, label %26, !prof !490

26:                                               ; preds = %23
  %27 = load i32, ptr @reload_completed, align 4, !tbaa !197
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !182
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !193
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  br i1 %28, label %40, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !182
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !193
  %39 = zext i32 %38 to i64
  br label %40

40:                                               ; preds = %26, %35, %34
  %41 = phi i64 [ %39, %35 ], [ 3, %34 ], [ 3, %26 ]
  %42 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !193
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @df, align 8, !tbaa !182
  %47 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !487
  br i1 %28, label %53, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !182
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !193
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %52, %49 ], [ 3, %45 ]
  %55 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %54) #20
  br label %56

56:                                               ; preds = %29, %23, %40, %53, %1
  %57 = load ptr, ptr @df, align 8, !tbaa !182
  %58 = getelementptr inbounds %struct.df, ptr %57, i64 0, i32 1, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !182
  %60 = getelementptr inbounds %struct.dataflow, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !251
  %62 = load ptr, ptr %61, align 8, !tbaa !390
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, ptr @bitmap_zero_bits, ptr %62, !prof !466
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  %68 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 3, i64 0
  %69 = load i64, ptr %68, align 8, !tbaa !395
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = or disjoint i32 %67, %71
  br label %73

73:                                               ; preds = %347, %56
  %74 = phi i64 [ %69, %56 ], [ %348, %347 ]
  %75 = phi i32 [ 0, %56 ], [ %130, %347 ]
  %76 = phi i32 [ %72, %56 ], [ %349, %347 ]
  %77 = phi ptr [ %64, %56 ], [ %132, %347 ]
  %78 = icmp eq i64 %74, 0
  br i1 %78, label %93, label %79, !prof !467

79:                                               ; preds = %107, %73
  %80 = phi i64 [ %74, %73 ], [ %112, %107 ]
  %81 = phi i32 [ %75, %73 ], [ %108, %107 ]
  %82 = phi i32 [ %76, %73 ], [ %109, %107 ]
  %83 = phi ptr [ %77, %73 ], [ %100, %107 ]
  %84 = and i64 %80, 1
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %128, !prof !468

86:                                               ; preds = %79, %86
  %87 = phi i32 [ %90, %86 ], [ %82, %79 ]
  %88 = phi i64 [ %89, %86 ], [ %80, %79 ]
  %89 = lshr exact i64 %88, 1
  %90 = add i32 %87, 1
  %91 = and i64 %88, 2
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %86, label %128, !prof !469, !llvm.loop !399

93:                                               ; preds = %73
  %94 = add i32 %76, 63
  %95 = and i32 %94, -64
  %96 = add i32 %75, 1
  br label %97

97:                                               ; preds = %124, %93
  %98 = phi i64 [ %74, %93 ], [ %119, %124 ]
  %99 = phi i32 [ %95, %93 ], [ %127, %124 ]
  %100 = phi ptr [ %77, %93 ], [ %122, %124 ]
  %101 = phi i32 [ %96, %93 ], [ 0, %124 ]
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %118, label %103, !prof !470

103:                                              ; preds = %97
  %104 = add i32 %99, 128
  %105 = shl i32 %101, 6
  %106 = sub i32 %104, %105
  br label %107

107:                                              ; preds = %103, %114
  %108 = phi i32 [ %116, %114 ], [ %101, %103 ]
  %109 = phi i32 [ %115, %114 ], [ %99, %103 ]
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds %struct.bitmap_element_def, ptr %100, i64 0, i32 3, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !395
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %79, !prof !471

114:                                              ; preds = %107
  %115 = add i32 %109, 64
  %116 = add i32 %108, 1
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %107, !prof !472, !llvm.loop !403

118:                                              ; preds = %114, %97
  %119 = phi i64 [ %98, %97 ], [ %112, %114 ]
  %120 = phi i32 [ %99, %97 ], [ %106, %114 ]
  %121 = phi i32 [ %101, %97 ], [ 2, %114 ]
  %122 = load ptr, ptr %100, align 8, !tbaa !404
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124, !prof !473

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.bitmap_element_def, ptr %122, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !393
  %127 = shl i32 %126, 7
  br label %97, !llvm.loop !406

128:                                              ; preds = %118, %86, %79
  %129 = phi i64 [ %80, %79 ], [ %89, %86 ], [ %119, %118 ]
  %130 = phi i32 [ %81, %79 ], [ %81, %86 ], [ %121, %118 ]
  %131 = phi i32 [ %82, %79 ], [ %90, %86 ], [ %120, %118 ]
  %132 = phi ptr [ %83, %79 ], [ %83, %86 ], [ %122, %118 ]
  %133 = phi i1 [ false, %79 ], [ false, %86 ], [ true, %118 ]
  br i1 %133, label %350, label %134, !prof !474

134:                                              ; preds = %128
  %135 = icmp eq i32 %131, 1
  br i1 %135, label %136, label %151, !prof !491

136:                                              ; preds = %134
  %137 = load ptr, ptr @df, align 8, !tbaa !182
  %138 = getelementptr inbounds %struct.df, ptr %137, i64 0, i32 1, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !182
  %140 = getelementptr inbounds %struct.dataflow, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !205
  %142 = icmp ugt i32 %141, 1
  tail call void @llvm.assume(i1 %142)
  %143 = getelementptr inbounds %struct.dataflow, ptr %139, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !208
  %145 = getelementptr inbounds ptr, ptr %144, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !182
  %147 = getelementptr inbounds %struct.df_lr_bb_info, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !254
  %149 = getelementptr inbounds %struct.df, ptr %137, i64 0, i32 17
  %150 = load ptr, ptr %149, align 8, !tbaa !492
  tail call void @bitmap_copy(ptr noundef %148, ptr noundef %150) #20
  br label %347

151:                                              ; preds = %134
  %152 = load ptr, ptr @cfun, align 8, !tbaa !182
  %153 = getelementptr inbounds %struct.function, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !213
  %155 = getelementptr inbounds %struct.control_flow_graph, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !257
  %157 = zext i32 %131 to i64
  %158 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %156, i64 0, i32 2, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !182
  %160 = load ptr, ptr @df, align 8, !tbaa !182
  %161 = getelementptr inbounds %struct.df, ptr %160, i64 0, i32 1, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !182
  %163 = getelementptr inbounds %struct.dataflow, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 8, !tbaa !205
  %165 = icmp ugt i32 %164, %131
  br i1 %165, label %166, label %171, !prof !258

166:                                              ; preds = %151
  %167 = getelementptr inbounds %struct.dataflow, ptr %162, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !208
  %169 = getelementptr inbounds ptr, ptr %168, i64 %157
  %170 = load ptr, ptr %169, align 8, !tbaa !182
  br label %171

171:                                              ; preds = %166, %151
  %172 = phi ptr [ %170, %166 ], [ null, %151 ]
  %173 = getelementptr inbounds %struct.df, ptr %160, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !182
  %175 = getelementptr inbounds %struct.dataflow, ptr %174, i64 0, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !205
  %177 = icmp ugt i32 %176, %131
  tail call void @llvm.assume(i1 %177)
  %178 = getelementptr inbounds %struct.dataflow, ptr %174, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !208
  %180 = getelementptr inbounds ptr, ptr %179, i64 %157
  %181 = load ptr, ptr %180, align 8, !tbaa !182
  %182 = load ptr, ptr %181, align 8, !tbaa !233
  %183 = load ptr, ptr %182, align 8, !tbaa !182
  %184 = icmp eq ptr %183, null
  br i1 %184, label %203, label %185, !prof !259

185:                                              ; preds = %171, %199
  %186 = phi ptr [ %201, %199 ], [ %183, %171 ]
  %187 = phi ptr [ %200, %199 ], [ %182, %171 ]
  %188 = load i32, ptr %186, align 8
  %189 = and i32 %188, 131072
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %199, !prof !260

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.df_lr_bb_info, ptr %172, i64 0, i32 1
  %193 = getelementptr inbounds %struct.df_base_ref, ptr %186, i64 0, i32 6
  %194 = load i32, ptr %193, align 8, !tbaa !193
  %195 = load ptr, ptr %172, align 8, !tbaa !252
  %196 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %195, i32 noundef %194) #20
  %197 = load ptr, ptr %192, align 8, !tbaa !254
  %198 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %197, i32 noundef %194) #20
  br label %199

199:                                              ; preds = %191, %185
  %200 = getelementptr inbounds ptr, ptr %187, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !182
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %185, !prof !260, !llvm.loop !261

203:                                              ; preds = %199, %171
  %204 = load ptr, ptr @df, align 8, !tbaa !182
  %205 = getelementptr inbounds %struct.df, ptr %204, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !182
  %207 = getelementptr inbounds %struct.dataflow, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 8, !tbaa !205
  %209 = icmp ugt i32 %208, %131
  tail call void @llvm.assume(i1 %209)
  %210 = getelementptr inbounds %struct.dataflow, ptr %206, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !208
  %212 = getelementptr inbounds ptr, ptr %211, i64 %157
  %213 = load ptr, ptr %212, align 8, !tbaa !182
  %214 = getelementptr inbounds %struct.df_scan_bb_info, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !262
  %216 = load ptr, ptr %215, align 8, !tbaa !182
  %217 = icmp eq ptr %216, null
  br i1 %217, label %235, label %218, !prof !263

218:                                              ; preds = %203
  %219 = getelementptr inbounds %struct.df_lr_bb_info, ptr %172, i64 0, i32 1
  br label %220

220:                                              ; preds = %231, %218
  %221 = phi ptr [ %216, %218 ], [ %233, %231 ]
  %222 = phi ptr [ %215, %218 ], [ %232, %231 ]
  %223 = load i32, ptr %221, align 8
  %224 = and i32 %223, 131072
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %231, !prof !264

226:                                              ; preds = %220
  %227 = load ptr, ptr %219, align 8, !tbaa !254
  %228 = getelementptr inbounds %struct.df_base_ref, ptr %221, i64 0, i32 6
  %229 = load i32, ptr %228, align 8, !tbaa !193
  %230 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %227, i32 noundef %229) #20
  br label %231

231:                                              ; preds = %226, %220
  %232 = getelementptr inbounds ptr, ptr %222, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !182
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %220, !prof !265, !llvm.loop !266

235:                                              ; preds = %231, %203
  %236 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 7
  %237 = load ptr, ptr %236, align 8, !tbaa !193
  %238 = getelementptr inbounds %struct.rtl_bb_info, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !193
  %240 = icmp eq ptr %239, null
  br i1 %240, label %309, label %241, !prof !267

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.df_lr_bb_info, ptr %172, i64 0, i32 1
  br label %243

243:                                              ; preds = %305, %241
  %244 = phi ptr [ %239, %241 ], [ %307, %305 ]
  %245 = load ptr, ptr %236, align 8, !tbaa !193
  %246 = load ptr, ptr %245, align 8, !tbaa !268
  %247 = getelementptr inbounds %struct.rtx_def, ptr %246, i64 0, i32 1, i32 0, i32 0, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !193
  %249 = icmp eq ptr %244, %248
  br i1 %249, label %309, label %250, !prof !270

250:                                              ; preds = %243
  %251 = load i32, ptr %244, align 8
  %252 = and i32 %251, 65535
  %253 = add nsw i32 %252, -11
  %254 = icmp ult i32 %253, -3
  br i1 %254, label %305, label %255, !prof !271

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %257 = load i32, ptr %256, align 8, !tbaa !193
  %258 = load ptr, ptr @df, align 8, !tbaa !182
  %259 = getelementptr inbounds %struct.df, ptr %258, i64 0, i32 10
  %260 = load ptr, ptr %259, align 8, !tbaa !243
  %261 = zext i32 %257 to i64
  %262 = getelementptr inbounds ptr, ptr %260, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !182
  %264 = getelementptr inbounds %struct.df_insn_info, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !244
  %266 = load ptr, ptr %265, align 8, !tbaa !182
  %267 = icmp eq ptr %266, null
  br i1 %267, label %285, label %268, !prof !272

268:                                              ; preds = %255, %281
  %269 = phi ptr [ %283, %281 ], [ %266, %255 ]
  %270 = phi ptr [ %282, %281 ], [ %265, %255 ]
  %271 = load i32, ptr %269, align 8
  %272 = and i32 %271, 1114112
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %281, !prof !273

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.df_base_ref, ptr %269, i64 0, i32 6
  %276 = load i32, ptr %275, align 8, !tbaa !193
  %277 = load ptr, ptr %172, align 8, !tbaa !252
  %278 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %277, i32 noundef %276) #20
  %279 = load ptr, ptr %242, align 8, !tbaa !254
  %280 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %279, i32 noundef %276) #20
  br label %281

281:                                              ; preds = %274, %268
  %282 = getelementptr inbounds ptr, ptr %270, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !182
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %268, !prof !274, !llvm.loop !275

285:                                              ; preds = %281, %255
  %286 = load ptr, ptr @df, align 8, !tbaa !182
  %287 = getelementptr inbounds %struct.df, ptr %286, i64 0, i32 10
  %288 = load ptr, ptr %287, align 8, !tbaa !243
  %289 = getelementptr inbounds ptr, ptr %288, i64 %261
  %290 = load ptr, ptr %289, align 8, !tbaa !182
  %291 = getelementptr inbounds %struct.df_insn_info, ptr %290, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !276
  %293 = load ptr, ptr %292, align 8, !tbaa !182
  %294 = icmp eq ptr %293, null
  br i1 %294, label %305, label %295, !prof !277

295:                                              ; preds = %285, %295
  %296 = phi ptr [ %303, %295 ], [ %293, %285 ]
  %297 = phi ptr [ %302, %295 ], [ %292, %285 ]
  %298 = load ptr, ptr %242, align 8, !tbaa !254
  %299 = getelementptr inbounds %struct.df_base_ref, ptr %296, i64 0, i32 6
  %300 = load i32, ptr %299, align 8, !tbaa !193
  %301 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %298, i32 noundef %300) #20
  %302 = getelementptr inbounds ptr, ptr %297, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !182
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %295, !prof !278, !llvm.loop !279

305:                                              ; preds = %295, %285, %250
  %306 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1, i32 0, i32 0, i64 1
  %307 = load ptr, ptr %306, align 8, !tbaa !193
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %243, !prof !280, !llvm.loop !281

309:                                              ; preds = %305, %243, %235
  %310 = load ptr, ptr @df, align 8, !tbaa !182
  %311 = getelementptr inbounds %struct.df, ptr %310, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !182
  %313 = getelementptr inbounds %struct.dataflow, ptr %312, i64 0, i32 2
  %314 = load i32, ptr %313, align 8, !tbaa !205
  %315 = icmp ugt i32 %314, %131
  tail call void @llvm.assume(i1 %315)
  %316 = getelementptr inbounds %struct.dataflow, ptr %312, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !208
  %318 = getelementptr inbounds ptr, ptr %317, i64 %157
  %319 = load ptr, ptr %318, align 8, !tbaa !182
  %320 = load ptr, ptr %319, align 8, !tbaa !233
  %321 = load ptr, ptr %320, align 8, !tbaa !182
  %322 = icmp eq ptr %321, null
  br i1 %322, label %341, label %323, !prof !259

323:                                              ; preds = %309, %337
  %324 = phi ptr [ %339, %337 ], [ %321, %309 ]
  %325 = phi ptr [ %338, %337 ], [ %320, %309 ]
  %326 = load i32, ptr %324, align 8
  %327 = and i32 %326, 131072
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %337, label %329, !prof !260

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.df_lr_bb_info, ptr %172, i64 0, i32 1
  %331 = getelementptr inbounds %struct.df_base_ref, ptr %324, i64 0, i32 6
  %332 = load i32, ptr %331, align 8, !tbaa !193
  %333 = load ptr, ptr %172, align 8, !tbaa !252
  %334 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %333, i32 noundef %332) #20
  %335 = load ptr, ptr %330, align 8, !tbaa !254
  %336 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %335, i32 noundef %332) #20
  br label %337

337:                                              ; preds = %329, %323
  %338 = getelementptr inbounds ptr, ptr %325, i64 1
  %339 = load ptr, ptr %338, align 8, !tbaa !182
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %323, !prof !260, !llvm.loop !282

341:                                              ; preds = %337, %309
  %342 = load ptr, ptr @df, align 8, !tbaa !182
  %343 = getelementptr inbounds %struct.df, ptr %342, i64 0, i32 1, i64 2
  %344 = load ptr, ptr %343, align 8, !tbaa !182
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %347, !prof !283

346:                                              ; preds = %341
  tail call void @df_recompute_luids(ptr noundef %159) #20
  br label %347

347:                                              ; preds = %346, %341, %136
  %348 = lshr i64 %129, 1
  %349 = add i32 %131, 1
  br label %73, !llvm.loop !493

350:                                              ; preds = %128
  %351 = load ptr, ptr @df, align 8, !tbaa !182
  %352 = getelementptr inbounds %struct.df, ptr %351, i64 0, i32 1, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !182
  %354 = getelementptr inbounds %struct.dataflow, ptr %353, i64 0, i32 4
  %355 = load ptr, ptr %354, align 8, !tbaa !251
  tail call void @bitmap_clear(ptr noundef %355) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_lr_init(ptr nocapture noundef readonly %0) #13 !prof !463 !PGOFuncName !494 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2, !prof !495
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %87, %1
  %14 = phi i64 [ %9, %1 ], [ %95, %87 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %87 ]
  %16 = phi i32 [ %12, %1 ], [ %96, %87 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %87 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19, !prof !496

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68, !prof !497

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !prof !498, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43, !prof !499

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19, !prof !500

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !prof !501, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64, !prof !502

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %97, label %74, !prof !503

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  br i1 %80, label %81, label %87, !prof !504

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !208
  %84 = zext i32 %71 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ null, %74 ]
  %89 = getelementptr inbounds %struct.df_lr_bb_info, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !479
  %91 = getelementptr inbounds %struct.df_lr_bb_info, ptr %88, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !254
  tail call void @bitmap_copy(ptr noundef %90, ptr noundef %92) #20
  %93 = getelementptr inbounds %struct.df_lr_bb_info, ptr %88, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !480
  tail call void @bitmap_clear(ptr noundef %94) #20
  %95 = lshr i64 %69, 1
  %96 = add i32 %71, 1
  br label %13, !llvm.loop !505

97:                                               ; preds = %68
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_lr_confluence_0(ptr noundef readonly %0) #13 !prof !506 !PGOFuncName !507 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !203
  %4 = load ptr, ptr @df, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !205
  %9 = icmp ugt i32 %8, %3
  br i1 %9, label %10, label %16, !prof !508

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = zext i32 %3 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  br label %16

16:                                               ; preds = %1, %10
  %17 = phi ptr [ %15, %10 ], [ null, %1 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !182
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !509
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %29, label %24, !prof !510

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.df_lr_bb_info, ptr %17, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !480
  %27 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !487
  tail call void @bitmap_copy(ptr noundef %26, ptr noundef %28) #20
  br label %29

29:                                               ; preds = %24, %16
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @df_lr_confluence_n(ptr nocapture noundef readonly %0) #9 !prof !511 !PGOFuncName !512 {
  %2 = load ptr, ptr %0, align 8, !tbaa !227
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.df_lr_bb_info, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !231
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !203
  %22 = icmp ugt i32 %9, %21
  tail call void @llvm.assume(i1 %22)
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %12, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  %26 = getelementptr inbounds %struct.df_lr_bb_info, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !479
  %28 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !229
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !513

32:                                               ; preds = %1
  %33 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !182
  %34 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %17, ptr noundef %27, ptr noundef %33) #20
  br label %37

35:                                               ; preds = %1
  %36 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %17, ptr noundef %27) #20
  br label %37

37:                                               ; preds = %35, %32
  %38 = load ptr, ptr @df, align 8, !tbaa !182
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !487
  %41 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %17, ptr noundef %40) #20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @df_lr_transfer_function(i32 noundef %0) #9 !prof !514 !PGOFuncName !515 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !205
  %7 = icmp ugt i32 %6, %0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !208
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df_lr_bb_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !479
  %15 = getelementptr inbounds %struct.df_lr_bb_info, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !480
  %17 = getelementptr inbounds %struct.df_lr_bb_info, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !254
  %19 = load ptr, ptr %12, align 8, !tbaa !252
  %20 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %14, ptr noundef %18, ptr noundef %16, ptr noundef %19) #20
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define internal void @df_lr_finalize(ptr noundef %0) #13 !prof !463 !PGOFuncName !516 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 8
  store i8 0, ptr %5, align 1, !tbaa !517
  %6 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 27
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10, !prof !518

10:                                               ; preds = %1
  tail call void @run_fast_df_dce() #20
  %11 = load ptr, ptr @df, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !517
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18, !prof !519

17:                                               ; preds = %1, %10, %18
  ret void

18:                                               ; preds = %10
  %19 = tail call i32 @df_clear_flags(i32 noundef 1) #20
  tail call void @df_lr_alloc(ptr poison)
  tail call void @df_lr_local_compute(ptr poison)
  %20 = load ptr, ptr @df, align 8, !tbaa !182
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !520
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !521
  tail call void @df_worklist_dataflow(ptr noundef %22, ptr noundef %0, ptr noundef %24, i32 noundef %26) #20
  tail call void @df_lr_finalize(ptr noundef %0)
  %27 = tail call i32 @df_set_flags(i32 noundef 1) #20
  br label %17
}

; Function Attrs: nounwind uwtable
define internal void @df_lr_free() #13 !prof !250 !PGOFuncName !522 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7, !prof !392

7:                                                ; preds = %0
  %8 = load ptr, ptr @df, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !205
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %39, label %14, !prof !267

14:                                               ; preds = %7, %30
  %15 = phi i64 [ %31, %30 ], [ 0, %7 ]
  %16 = phi ptr [ %34, %30 ], [ %10, %7 ]
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !208
  %19 = getelementptr inbounds ptr, ptr %18, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22, !prof !523

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.df_lr_bb_info, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !254
  tail call void @bitmap_obstack_free(ptr noundef %24) #20
  store ptr null, ptr %23, align 8, !tbaa !254
  %25 = load ptr, ptr %20, align 8, !tbaa !252
  tail call void @bitmap_obstack_free(ptr noundef %25) #20
  store ptr null, ptr %20, align 8, !tbaa !252
  %26 = getelementptr inbounds %struct.df_lr_bb_info, ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !479
  tail call void @bitmap_obstack_free(ptr noundef %27) #20
  store ptr null, ptr %26, align 8, !tbaa !479
  %28 = getelementptr inbounds %struct.df_lr_bb_info, ptr %20, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !480
  tail call void @bitmap_obstack_free(ptr noundef %29) #20
  store ptr null, ptr %28, align 8, !tbaa !480
  br label %30

30:                                               ; preds = %22, %14
  %31 = add nuw nsw i64 %15, 1
  %32 = load ptr, ptr @df, align 8, !tbaa !182
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 1, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !205
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %14, label %39, !prof !524, !llvm.loop !525

39:                                               ; preds = %30, %7
  %40 = phi ptr [ %10, %7 ], [ %34, %30 ]
  %41 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !309
  tail call void @free_alloc_pool(ptr noundef %42) #20
  %43 = load ptr, ptr @df, align 8, !tbaa !182
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !182
  %46 = getelementptr inbounds %struct.dataflow, ptr %45, i64 0, i32 2
  store i32 0, ptr %46, align 8, !tbaa !205
  %47 = getelementptr inbounds %struct.dataflow, ptr %45, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !208
  tail call void @free(ptr noundef %48)
  br label %49

49:                                               ; preds = %39, %0
  %50 = load ptr, ptr @df, align 8, !tbaa !182
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 1, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !182
  %53 = getelementptr inbounds %struct.dataflow, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !251
  tail call void @bitmap_obstack_free(ptr noundef %54) #20
  %55 = load ptr, ptr @df, align 8, !tbaa !182
  %56 = getelementptr inbounds %struct.df, ptr %55, i64 0, i32 1, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !182
  %58 = getelementptr inbounds %struct.dataflow, ptr %57, i64 0, i32 4
  store ptr null, ptr %58, align 8, !tbaa !251
  %59 = load ptr, ptr %56, align 8, !tbaa !182
  tail call void @free(ptr noundef %59)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_lr_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_lr_bb_info, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !479
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %1)
  %26 = load ptr, ptr %21, align 8, !tbaa !479
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #20
  %27 = load ptr, ptr @df, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !314
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 13, i64 1, ptr %1)
  %35 = load ptr, ptr %31, align 8, !tbaa !526
  %36 = load i32, ptr %3, align 8, !tbaa !203
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !182
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %39) #20
  br label %40

40:                                               ; preds = %33, %24
  %41 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr %1)
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %18, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !254
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %43) #20
  %44 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 12, i64 1, ptr %1)
  %45 = load ptr, ptr %18, align 8, !tbaa !252
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %45) #20
  br label %46

46:                                               ; preds = %17, %20, %40
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_lr_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_lr_bb_info, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !480
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 12, i64 1, ptr %1)
  %26 = load ptr, ptr %21, align 8, !tbaa !480
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #20
  %27 = load ptr, ptr @df, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !314
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %1)
  %35 = getelementptr inbounds %struct.df_lr_problem_data, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !528
  %37 = load i32, ptr %3, align 8, !tbaa !203
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !182
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %40) #20
  br label %41

41:                                               ; preds = %24, %33, %17, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_lr_verify_solution_start() #12 !prof !181 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !517
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !314
  br label %87

9:                                                ; preds = %0
  store i8 1, ptr %4, align 1, !tbaa !517
  %10 = tail call ptr @xmalloc(i64 noundef 16) #20
  %11 = load ptr, ptr @df, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 5
  store ptr %10, ptr %14, align 8, !tbaa !314
  %15 = load ptr, ptr @cfun, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !213
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !215
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xmalloc(i64 noundef %21) #20
  store ptr %22, ptr %10, align 8, !tbaa !526
  %23 = load ptr, ptr @cfun, align 8, !tbaa !182
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !213
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !215
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #20
  %31 = getelementptr inbounds %struct.df_lr_problem_data, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !528
  %32 = load ptr, ptr @cfun, align 8, !tbaa !182
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !213
  %35 = load ptr, ptr %34, align 8, !tbaa !182
  %36 = icmp eq ptr %35, null
  br i1 %36, label %87, label %37

37:                                               ; preds = %9, %37
  %38 = phi ptr [ %85, %37 ], [ %35, %9 ]
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %40 = load ptr, ptr %10, align 8, !tbaa !526
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !203
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %39, ptr %44, align 8, !tbaa !182
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %46 = load ptr, ptr %31, align 8, !tbaa !528
  %47 = load i32, ptr %41, align 8, !tbaa !203
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !182
  %50 = load ptr, ptr %10, align 8, !tbaa !526
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !182
  %53 = load ptr, ptr @df, align 8, !tbaa !182
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 1, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !182
  %56 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !205
  %58 = icmp ugt i32 %57, %47
  tail call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !208
  %61 = zext i32 %47 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !182
  %64 = getelementptr inbounds %struct.df_lr_bb_info, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !479
  tail call void @bitmap_copy(ptr noundef %52, ptr noundef %65) #20
  %66 = load ptr, ptr %31, align 8, !tbaa !528
  %67 = load i32, ptr %41, align 8, !tbaa !203
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !182
  %71 = load ptr, ptr @df, align 8, !tbaa !182
  %72 = getelementptr inbounds %struct.df, ptr %71, i64 0, i32 1, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !182
  %74 = getelementptr inbounds %struct.dataflow, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !205
  %76 = icmp ugt i32 %75, %67
  tail call void @llvm.assume(i1 %76)
  %77 = getelementptr inbounds %struct.dataflow, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !208
  %79 = zext i32 %67 to i64
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !182
  %82 = getelementptr inbounds %struct.df_lr_bb_info, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !480
  tail call void @bitmap_copy(ptr noundef %70, ptr noundef %83) #20
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !182
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %37, !llvm.loop !529

87:                                               ; preds = %37, %9, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_lr_verify_solution_end() #12 !prof !181 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  %6 = icmp eq ptr %5, null
  br i1 %6, label %107, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %9 = load i8, ptr %8, align 1, !tbaa !517
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i8 0, ptr %8, align 1, !tbaa !517
  br label %69

12:                                               ; preds = %7
  %13 = load ptr, ptr @cfun, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = icmp eq ptr %16, null
  br i1 %17, label %69, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %65
  %21 = phi ptr [ %16, %18 ], [ %67, %65 ]
  %22 = load ptr, ptr %5, align 8, !tbaa !526
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !203
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !182
  %28 = load ptr, ptr @df, align 8, !tbaa !182
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !182
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !205
  %33 = icmp ugt i32 %32, %24
  tail call void @llvm.assume(i1 %33)
  %34 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !208
  %36 = zext i32 %24 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  %39 = getelementptr inbounds %struct.df_lr_bb_info, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !479
  %41 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %27, ptr noundef %40) #20
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %20
  %44 = load ptr, ptr %19, align 8, !tbaa !528
  %45 = load i32, ptr %23, align 8, !tbaa !203
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !182
  %49 = load ptr, ptr @df, align 8, !tbaa !182
  %50 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 1, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !182
  %52 = getelementptr inbounds %struct.dataflow, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !205
  %54 = icmp ugt i32 %53, %45
  tail call void @llvm.assume(i1 %54)
  %55 = getelementptr inbounds %struct.dataflow, ptr %51, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !208
  %57 = zext i32 %45 to i64
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !182
  %60 = getelementptr inbounds %struct.df_lr_bb_info, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !480
  %62 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %48, ptr noundef %61) #20
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %43, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1203, ptr noundef nonnull @.str.1) #20
  br label %65

65:                                               ; preds = %43, %64
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !182
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %20, !llvm.loop !530

69:                                               ; preds = %65, %12, %11
  %70 = load ptr, ptr @cfun, align 8, !tbaa !182
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !213
  %73 = load ptr, ptr %72, align 8, !tbaa !182
  %74 = icmp eq ptr %73, null
  br i1 %74, label %99, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi ptr [ %73, %75 ], [ %97, %77 ]
  %79 = load ptr, ptr %5, align 8, !tbaa !526
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !203
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %79, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %84) #20
  %85 = load ptr, ptr %5, align 8, !tbaa !526
  %86 = load i32, ptr %80, align 8, !tbaa !203
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %85, i64 %87
  store ptr null, ptr %88, align 8, !tbaa !182
  %89 = load ptr, ptr %76, align 8, !tbaa !528
  %90 = getelementptr inbounds ptr, ptr %89, i64 %87
  %91 = load ptr, ptr %90, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %91) #20
  %92 = load ptr, ptr %76, align 8, !tbaa !528
  %93 = load i32, ptr %80, align 8, !tbaa !203
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  store ptr null, ptr %95, align 8, !tbaa !182
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !182
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %77, !llvm.loop !531

99:                                               ; preds = %77, %69
  %100 = load ptr, ptr %5, align 8, !tbaa !526
  tail call void @free(ptr noundef %100)
  %101 = getelementptr inbounds %struct.df_lr_problem_data, ptr %5, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !528
  tail call void @free(ptr noundef %102)
  tail call void @free(ptr noundef %5)
  %103 = load ptr, ptr @df, align 8, !tbaa !182
  %104 = getelementptr inbounds %struct.df, ptr %103, i64 0, i32 1, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !182
  %106 = getelementptr inbounds %struct.dataflow, ptr %105, i64 0, i32 5
  store ptr null, ptr %106, align 8, !tbaa !314
  br label %107

107:                                              ; preds = %0, %99
  ret void
}

declare zeroext i8 @bitmap_ior_and_compl_into(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @run_fast_df_dce() local_unnamed_addr #3

declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_print_regset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_recompute_luids(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @df_live_alloc(ptr nocapture readnone %0) #13 !prof !532 !PGOFuncName !533 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !309
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14, !prof !534

8:                                                ; preds = %1
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.29, i64 noundef 32, i64 noundef 100) #20
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 3
  store ptr %9, ptr %13, align 8, !tbaa !309
  br label %14

14:                                               ; preds = %8, %1
  %15 = load ptr, ptr @df_live_scratch, align 8, !tbaa !182
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !534

17:                                               ; preds = %14
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %18, ptr @df_live_scratch, align 8, !tbaa !182
  br label %19

19:                                               ; preds = %17, %14
  %20 = load ptr, ptr @df, align 8, !tbaa !182
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 1, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = load ptr, ptr @cfun, align 8, !tbaa !182
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !213
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !215
  %28 = add nsw i32 %27, 1
  %29 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !205
  %31 = icmp ult i32 %30, %28
  br i1 %31, label %32, label %46, !prof !217

32:                                               ; preds = %19
  %33 = lshr i32 %28, 2
  %34 = add i32 %33, %28
  %35 = getelementptr inbounds %struct.dataflow, ptr %22, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !208
  %37 = zext i32 %34 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = tail call ptr @xrealloc(ptr noundef %36, i64 noundef %38) #20
  store ptr %39, ptr %35, align 8, !tbaa !208
  %40 = load i32, ptr %29, align 8, !tbaa !205
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = sub i32 %34, %40
  %44 = zext i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %42, i8 0, i64 %45, i1 false), !prof !389
  store i32 %34, ptr %29, align 8, !tbaa !205
  br label %46

46:                                               ; preds = %19, %32
  %47 = load ptr, ptr @df, align 8, !tbaa !182
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  %50 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !251
  %52 = load ptr, ptr %51, align 8, !tbaa !390
  %53 = icmp eq ptr %52, null
  %54 = select i1 %53, ptr @bitmap_zero_bits, ptr %52, !prof !535
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !393
  %57 = shl i32 %56, 7
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %54, i64 0, i32 3, i64 0
  %59 = load i64, ptr %58, align 8, !tbaa !395
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = or disjoint i32 %57, %61
  br label %63

63:                                               ; preds = %176, %46
  %64 = phi i64 [ %59, %46 ], [ %177, %176 ]
  %65 = phi i32 [ 0, %46 ], [ %120, %176 ]
  %66 = phi i32 [ %62, %46 ], [ %178, %176 ]
  %67 = phi ptr [ %54, %46 ], [ %122, %176 ]
  %68 = icmp eq i64 %64, 0
  br i1 %68, label %83, label %69, !prof !536

69:                                               ; preds = %97, %63
  %70 = phi i64 [ %64, %63 ], [ %102, %97 ]
  %71 = phi i32 [ %65, %63 ], [ %98, %97 ]
  %72 = phi i32 [ %66, %63 ], [ %99, %97 ]
  %73 = phi ptr [ %67, %63 ], [ %90, %97 ]
  %74 = and i64 %70, 1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %118, !prof !537

76:                                               ; preds = %69, %76
  %77 = phi i32 [ %80, %76 ], [ %72, %69 ]
  %78 = phi i64 [ %79, %76 ], [ %70, %69 ]
  %79 = lshr exact i64 %78, 1
  %80 = add i32 %77, 1
  %81 = and i64 %78, 2
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %76, label %118, !prof !538, !llvm.loop !399

83:                                               ; preds = %63
  %84 = add i32 %66, 63
  %85 = and i32 %84, -64
  %86 = add i32 %65, 1
  br label %87

87:                                               ; preds = %114, %83
  %88 = phi i64 [ %64, %83 ], [ %109, %114 ]
  %89 = phi i32 [ %85, %83 ], [ %117, %114 ]
  %90 = phi ptr [ %67, %83 ], [ %112, %114 ]
  %91 = phi i32 [ %86, %83 ], [ 0, %114 ]
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %108, label %93, !prof !539

93:                                               ; preds = %87
  %94 = add i32 %89, 128
  %95 = shl i32 %91, 6
  %96 = sub i32 %94, %95
  br label %97

97:                                               ; preds = %93, %104
  %98 = phi i32 [ %106, %104 ], [ %91, %93 ]
  %99 = phi i32 [ %105, %104 ], [ %89, %93 ]
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds %struct.bitmap_element_def, ptr %90, i64 0, i32 3, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !395
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %69, !prof !540

104:                                              ; preds = %97
  %105 = add i32 %99, 64
  %106 = add i32 %98, 1
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %97, !prof !541, !llvm.loop !403

108:                                              ; preds = %104, %87
  %109 = phi i64 [ %88, %87 ], [ %102, %104 ]
  %110 = phi i32 [ %89, %87 ], [ %96, %104 ]
  %111 = phi i32 [ %91, %87 ], [ 2, %104 ]
  %112 = load ptr, ptr %90, align 8, !tbaa !404
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114, !prof !542

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.bitmap_element_def, ptr %112, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !393
  %117 = shl i32 %116, 7
  br label %87, !llvm.loop !406

118:                                              ; preds = %108, %76, %69
  %119 = phi i64 [ %70, %69 ], [ %79, %76 ], [ %109, %108 ]
  %120 = phi i32 [ %71, %69 ], [ %71, %76 ], [ %111, %108 ]
  %121 = phi i32 [ %72, %69 ], [ %80, %76 ], [ %110, %108 ]
  %122 = phi ptr [ %73, %69 ], [ %73, %76 ], [ %112, %108 ]
  %123 = phi i1 [ false, %69 ], [ false, %76 ], [ true, %108 ]
  br i1 %123, label %179, label %124, !prof !543

124:                                              ; preds = %118
  %125 = load ptr, ptr @df, align 8, !tbaa !182
  %126 = getelementptr inbounds %struct.df, ptr %125, i64 0, i32 1, i64 2
  %127 = load ptr, ptr %126, align 8, !tbaa !182
  %128 = getelementptr inbounds %struct.dataflow, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !205
  %130 = icmp ugt i32 %129, %121
  br i1 %130, label %131, label %137, !prof !291

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.dataflow, ptr %127, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !208
  %134 = zext i32 %121 to i64
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !182
  br label %137

137:                                              ; preds = %124, %131
  %138 = phi ptr [ %136, %131 ], [ null, %124 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140, !prof !544

140:                                              ; preds = %137
  %141 = load ptr, ptr %138, align 8, !tbaa !288
  tail call void @bitmap_clear(ptr noundef %141) #20
  %142 = getelementptr inbounds %struct.df_live_bb_info, ptr %138, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !286
  tail call void @bitmap_clear(ptr noundef %143) #20
  br label %176

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.dataflow, ptr %127, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !309
  %147 = tail call ptr @pool_alloc(ptr noundef %146) #20
  %148 = load ptr, ptr @df, align 8, !tbaa !182
  %149 = getelementptr inbounds %struct.df, ptr %148, i64 0, i32 1, i64 2
  %150 = load ptr, ptr %149, align 8, !tbaa !182
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %153, !prof !477

152:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1373, ptr noundef nonnull @.str.1) #20
  br label %153

153:                                              ; preds = %152, %144
  %154 = load ptr, ptr @df, align 8, !tbaa !182
  %155 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 1, i64 2
  %156 = load ptr, ptr %155, align 8, !tbaa !182
  %157 = getelementptr inbounds %struct.dataflow, ptr %156, i64 0, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !205
  %159 = icmp ugt i32 %158, %121
  br i1 %159, label %161, label %160, !prof !478

160:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1374, ptr noundef nonnull @.str.1) #20
  br label %161

161:                                              ; preds = %153, %160
  %162 = load ptr, ptr @df, align 8, !tbaa !182
  %163 = getelementptr inbounds %struct.df, ptr %162, i64 0, i32 1, i64 2
  %164 = load ptr, ptr %163, align 8, !tbaa !182
  %165 = getelementptr inbounds %struct.dataflow, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !208
  %167 = zext i32 %121 to i64
  %168 = getelementptr inbounds ptr, ptr %166, i64 %167
  store ptr %147, ptr %168, align 8, !tbaa !182
  %169 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %169, ptr %147, align 8, !tbaa !288
  %170 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %171 = getelementptr inbounds %struct.df_live_bb_info, ptr %147, i64 0, i32 1
  store ptr %170, ptr %171, align 8, !tbaa !286
  %172 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %173 = getelementptr inbounds %struct.df_live_bb_info, ptr %147, i64 0, i32 2
  store ptr %172, ptr %173, align 8, !tbaa !545
  %174 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %175 = getelementptr inbounds %struct.df_live_bb_info, ptr %147, i64 0, i32 3
  store ptr %174, ptr %175, align 8, !tbaa !546
  br label %176

176:                                              ; preds = %161, %140
  %177 = lshr i64 %119, 1
  %178 = add i32 %121, 1
  br label %63, !llvm.loop !547

179:                                              ; preds = %118
  %180 = load i32, ptr @optimize, align 4, !tbaa !197
  %181 = icmp slt i32 %180, 2
  %182 = zext i1 %181 to i8
  %183 = load ptr, ptr @df, align 8, !tbaa !182
  %184 = getelementptr inbounds %struct.df, ptr %183, i64 0, i32 1, i64 2
  %185 = load ptr, ptr %184, align 8, !tbaa !182
  %186 = getelementptr inbounds %struct.dataflow, ptr %185, i64 0, i32 9
  store i8 %182, ptr %186, align 2, !tbaa !417
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_live_reset(ptr nocapture noundef readonly %0) #12 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %91, %1
  %14 = phi i64 [ %9, %1 ], [ %96, %91 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %91 ]
  %16 = phi i32 [ %12, %1 ], [ %97, %91 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %91 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %98, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !208
  %84 = zext i32 %71 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ null, %74 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1447, ptr noundef nonnull @.str.1) #20
  br label %91

91:                                               ; preds = %87, %90
  %92 = getelementptr inbounds %struct.df_live_bb_info, ptr %88, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !545
  tail call void @bitmap_clear(ptr noundef %93) #20
  %94 = getelementptr inbounds %struct.df_live_bb_info, ptr %88, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !546
  tail call void @bitmap_clear(ptr noundef %95) #20
  %96 = lshr i64 %69, 1
  %97 = add i32 %71, 1
  br label %13, !llvm.loop !548

98:                                               ; preds = %68
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @df_live_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #9 !prof !483 !PGOFuncName !549 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4, !prof !485

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  tail call void @bitmap_obstack_free(ptr noundef %6) #20
  store ptr null, ptr %5, align 8, !tbaa !286
  %7 = load ptr, ptr %1, align 8, !tbaa !288
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  store ptr null, ptr %1, align 8, !tbaa !288
  %8 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !545
  tail call void @bitmap_obstack_free(ptr noundef %9) #20
  store ptr null, ptr %8, align 8, !tbaa !545
  %10 = getelementptr inbounds %struct.df_live_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !546
  tail call void @bitmap_obstack_free(ptr noundef %11) #20
  store ptr null, ptr %10, align 8, !tbaa !546
  %12 = load ptr, ptr @df, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !309
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #20
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_live_local_compute(ptr nocapture readnone %0) #13 !prof !532 !PGOFuncName !550 {
  tail call void @df_grow_insn_info() #20
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  %7 = load ptr, ptr %6, align 8, !tbaa !390
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @bitmap_zero_bits, ptr %7, !prof !535
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !393
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 0
  %14 = load i64, ptr %13, align 8, !tbaa !395
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = or disjoint i32 %12, %16
  br label %18

18:                                               ; preds = %200, %1
  %19 = phi i64 [ %14, %1 ], [ %201, %200 ]
  %20 = phi i32 [ 0, %1 ], [ %75, %200 ]
  %21 = phi i32 [ %17, %1 ], [ %202, %200 ]
  %22 = phi ptr [ %9, %1 ], [ %77, %200 ]
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %38, label %24, !prof !536

24:                                               ; preds = %52, %18
  %25 = phi i64 [ %19, %18 ], [ %57, %52 ]
  %26 = phi i32 [ %20, %18 ], [ %53, %52 ]
  %27 = phi i32 [ %21, %18 ], [ %54, %52 ]
  %28 = phi ptr [ %22, %18 ], [ %45, %52 ]
  %29 = and i64 %25, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %73, !prof !537

31:                                               ; preds = %24, %31
  %32 = phi i32 [ %35, %31 ], [ %27, %24 ]
  %33 = phi i64 [ %34, %31 ], [ %25, %24 ]
  %34 = lshr exact i64 %33, 1
  %35 = add i32 %32, 1
  %36 = and i64 %33, 2
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %31, label %73, !prof !538, !llvm.loop !399

38:                                               ; preds = %18
  %39 = add i32 %21, 63
  %40 = and i32 %39, -64
  %41 = add i32 %20, 1
  br label %42

42:                                               ; preds = %69, %38
  %43 = phi i64 [ %19, %38 ], [ %64, %69 ]
  %44 = phi i32 [ %40, %38 ], [ %72, %69 ]
  %45 = phi ptr [ %22, %38 ], [ %67, %69 ]
  %46 = phi i32 [ %41, %38 ], [ 0, %69 ]
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %63, label %48, !prof !539

48:                                               ; preds = %42
  %49 = add i32 %44, 128
  %50 = shl i32 %46, 6
  %51 = sub i32 %49, %50
  br label %52

52:                                               ; preds = %48, %59
  %53 = phi i32 [ %61, %59 ], [ %46, %48 ]
  %54 = phi i32 [ %60, %59 ], [ %44, %48 ]
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !395
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %24, !prof !540

59:                                               ; preds = %52
  %60 = add i32 %54, 64
  %61 = add i32 %53, 1
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %52, !prof !541, !llvm.loop !403

63:                                               ; preds = %59, %42
  %64 = phi i64 [ %43, %42 ], [ %57, %59 ]
  %65 = phi i32 [ %44, %42 ], [ %51, %59 ]
  %66 = phi i32 [ %46, %42 ], [ 2, %59 ]
  %67 = load ptr, ptr %45, align 8, !tbaa !404
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69, !prof !542

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !393
  %72 = shl i32 %71, 7
  br label %42, !llvm.loop !406

73:                                               ; preds = %63, %31, %24
  %74 = phi i64 [ %25, %24 ], [ %34, %31 ], [ %64, %63 ]
  %75 = phi i32 [ %26, %24 ], [ %26, %31 ], [ %66, %63 ]
  %76 = phi i32 [ %27, %24 ], [ %35, %31 ], [ %65, %63 ]
  %77 = phi ptr [ %28, %24 ], [ %28, %31 ], [ %67, %63 ]
  %78 = phi i1 [ false, %24 ], [ false, %31 ], [ true, %63 ]
  br i1 %78, label %203, label %79, !prof !543

79:                                               ; preds = %73
  %80 = load ptr, ptr @cfun, align 8, !tbaa !182
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !213
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !257
  %85 = zext i32 %76 to i64
  %86 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %84, i64 0, i32 2, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !182
  %88 = load ptr, ptr @df, align 8, !tbaa !182
  %89 = getelementptr inbounds %struct.df, ptr %88, i64 0, i32 1, i64 2
  %90 = load ptr, ptr %89, align 8, !tbaa !182
  %91 = getelementptr inbounds %struct.dataflow, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !205
  %93 = icmp ugt i32 %92, %76
  br i1 %93, label %94, label %99, !prof !291

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.dataflow, ptr %90, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !208
  %97 = getelementptr inbounds ptr, ptr %96, i64 %85
  %98 = load ptr, ptr %97, align 8, !tbaa !182
  br label %99

99:                                               ; preds = %94, %79
  %100 = phi ptr [ %98, %94 ], [ null, %79 ]
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !193
  %103 = load ptr, ptr %102, align 8, !tbaa !193
  %104 = icmp eq ptr %103, null
  br i1 %104, label %174, label %105, !prof !292

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.df_live_bb_info, ptr %100, i64 0, i32 1
  br label %107

107:                                              ; preds = %169, %105
  %108 = phi ptr [ %103, %105 ], [ %172, %169 ]
  %109 = phi i32 [ 0, %105 ], [ %170, %169 ]
  %110 = load ptr, ptr %101, align 8, !tbaa !193
  %111 = getelementptr inbounds %struct.rtl_bb_info, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !293
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 0, i64 2
  %114 = load ptr, ptr %113, align 8, !tbaa !193
  %115 = icmp eq ptr %108, %114
  br i1 %115, label %174, label %116, !prof !294

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !193
  %119 = load ptr, ptr @df, align 8, !tbaa !182
  %120 = getelementptr inbounds %struct.df, ptr %119, i64 0, i32 10
  %121 = load ptr, ptr %120, align 8, !tbaa !243
  %122 = zext i32 %118 to i64
  %123 = getelementptr inbounds ptr, ptr %121, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !182
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %134, !prof !295

126:                                              ; preds = %116
  %127 = load i32, ptr %108, align 8
  %128 = and i32 %127, 65535
  %129 = add nsw i32 %128, -7
  %130 = icmp ult i32 %129, 4
  br i1 %130, label %131, label %132, !prof !296

131:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1474, ptr noundef nonnull @.str.1) #20
  br label %132

132:                                              ; preds = %131, %126
  %133 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %108) #20
  br label %134

134:                                              ; preds = %132, %116
  %135 = phi ptr [ %124, %116 ], [ %133, %132 ]
  %136 = getelementptr inbounds %struct.df_insn_info, ptr %135, i64 0, i32 5
  store i32 %109, ptr %136, align 8, !tbaa !297
  %137 = load i32, ptr %108, align 8
  %138 = and i32 %137, 65535
  %139 = add nsw i32 %138, -7
  %140 = icmp ult i32 %139, 4
  br i1 %140, label %141, label %169, !prof !298

141:                                              ; preds = %134
  %142 = add nsw i32 %109, 1
  %143 = getelementptr inbounds %struct.df_insn_info, ptr %135, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !244
  %145 = load ptr, ptr %144, align 8, !tbaa !182
  %146 = icmp eq ptr %145, null
  br i1 %146, label %169, label %147, !prof !299

147:                                              ; preds = %141, %165
  %148 = phi ptr [ %167, %165 ], [ %145, %141 ]
  %149 = phi ptr [ %166, %165 ], [ %144, %141 ]
  %150 = getelementptr inbounds %struct.df_base_ref, ptr %148, i64 0, i32 6
  %151 = load i32, ptr %150, align 8, !tbaa !193
  %152 = load i32, ptr %148, align 8
  %153 = and i32 %152, 1114112
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161, !prof !300

155:                                              ; preds = %147
  %156 = and i32 %152, 8388608
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161, !prof !301

158:                                              ; preds = %155
  %159 = and i32 %152, 4194304
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165, !prof !302

161:                                              ; preds = %158, %155, %147
  %162 = phi ptr [ %106, %147 ], [ %100, %155 ], [ %106, %158 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !182
  %164 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %163, i32 noundef %151) #20
  br label %165

165:                                              ; preds = %161, %158
  %166 = getelementptr inbounds ptr, ptr %149, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !182
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %147, !prof !303, !llvm.loop !304

169:                                              ; preds = %165, %141, %134
  %170 = phi i32 [ %109, %134 ], [ %142, %141 ], [ %142, %165 ]
  %171 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 2
  %172 = load ptr, ptr %171, align 8, !tbaa !193
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %107, !prof !305, !llvm.loop !306

174:                                              ; preds = %169, %107, %99
  %175 = load ptr, ptr @df, align 8, !tbaa !182
  %176 = getelementptr inbounds %struct.df, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !182
  %178 = getelementptr inbounds %struct.dataflow, ptr %177, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !205
  %180 = icmp ugt i32 %179, %76
  tail call void @llvm.assume(i1 %180)
  %181 = getelementptr inbounds %struct.dataflow, ptr %177, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !208
  %183 = getelementptr inbounds ptr, ptr %182, i64 %85
  %184 = load ptr, ptr %183, align 8, !tbaa !182
  %185 = load ptr, ptr %184, align 8, !tbaa !233
  %186 = load ptr, ptr %185, align 8, !tbaa !182
  %187 = icmp eq ptr %186, null
  br i1 %187, label %200, label %188, !prof !307

188:                                              ; preds = %174
  %189 = getelementptr inbounds %struct.df_live_bb_info, ptr %100, i64 0, i32 1
  br label %190

190:                                              ; preds = %190, %188
  %191 = phi ptr [ %186, %188 ], [ %198, %190 ]
  %192 = phi ptr [ %185, %188 ], [ %197, %190 ]
  %193 = load ptr, ptr %189, align 8, !tbaa !286
  %194 = getelementptr inbounds %struct.df_base_ref, ptr %191, i64 0, i32 6
  %195 = load i32, ptr %194, align 8, !tbaa !193
  %196 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %193, i32 noundef %195) #20
  %197 = getelementptr inbounds ptr, ptr %192, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !182
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %190, !prof !260, !llvm.loop !308

200:                                              ; preds = %190, %174
  %201 = lshr i64 %74, 1
  %202 = add i32 %76, 1
  br label %18, !llvm.loop !551

203:                                              ; preds = %73
  %204 = load ptr, ptr @df, align 8, !tbaa !182
  %205 = getelementptr inbounds %struct.df, ptr %204, i64 0, i32 1, i64 2
  %206 = load ptr, ptr %205, align 8, !tbaa !182
  %207 = getelementptr inbounds %struct.dataflow, ptr %206, i64 0, i32 4
  %208 = load ptr, ptr %207, align 8, !tbaa !251
  tail call void @bitmap_clear(ptr noundef %208) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_live_init(ptr nocapture noundef readonly %0) #13 !prof !532 !PGOFuncName !552 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2, !prof !553
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %87, %1
  %14 = phi i64 [ %9, %1 ], [ %107, %87 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %87 ]
  %16 = phi i32 [ %12, %1 ], [ %108, %87 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %87 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19, !prof !554

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68, !prof !555

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !prof !498, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43, !prof !556

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19, !prof !557

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !prof !558, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64, !prof !559

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %109, label %74, !prof !560

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  br i1 %80, label %81, label %87, !prof !561

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !208
  %84 = zext i32 %71 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ null, %74 ]
  %89 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !182
  %91 = getelementptr inbounds %struct.dataflow, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !205
  %93 = icmp ugt i32 %92, %71
  tail call void @llvm.assume(i1 %93)
  %94 = getelementptr inbounds %struct.dataflow, ptr %90, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !208
  %96 = zext i32 %71 to i64
  %97 = getelementptr inbounds ptr, ptr %95, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !182
  %99 = getelementptr inbounds %struct.df_live_bb_info, ptr %88, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !546
  %101 = getelementptr inbounds %struct.df_live_bb_info, ptr %88, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !286
  %103 = getelementptr inbounds %struct.df_lr_bb_info, ptr %98, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !480
  tail call void @bitmap_and(ptr noundef %100, ptr noundef %102, ptr noundef %104) #20
  %105 = getelementptr inbounds %struct.df_live_bb_info, ptr %88, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !545
  tail call void @bitmap_clear(ptr noundef %106) #20
  %107 = lshr i64 %69, 1
  %108 = add i32 %71, 1
  br label %13, !llvm.loop !562

109:                                              ; preds = %68
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @df_live_confluence_n(ptr nocapture noundef readonly %0) #9 !prof !563 !PGOFuncName !564 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !203
  %6 = load ptr, ptr @df, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !205
  %11 = icmp ugt i32 %10, %5
  tail call void @llvm.assume(i1 %11)
  %12 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.df_live_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !545
  %19 = load ptr, ptr %0, align 8, !tbaa !227
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !203
  %22 = icmp ugt i32 %10, %21
  br i1 %22, label %23, label %27, !prof !565

23:                                               ; preds = %1
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds ptr, ptr %13, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !182
  br label %27

27:                                               ; preds = %1, %23
  %28 = phi ptr [ %26, %23 ], [ null, %1 ]
  %29 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !229
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !566

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.df_live_bb_info, ptr %28, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !546
  %36 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %18, ptr noundef %35) #20
  br label %37

37:                                               ; preds = %27, %33
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @df_live_transfer_function(i32 noundef %0) #9 !prof !567 !PGOFuncName !568 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !205
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !569

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  %16 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !205
  %20 = icmp ugt i32 %19, %0
  br i1 %20, label %21, label %27, !prof !569

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !208
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !182
  br label %27

27:                                               ; preds = %14, %21
  %28 = phi ptr [ %26, %21 ], [ null, %14 ]
  %29 = getelementptr inbounds %struct.df_live_bb_info, ptr %15, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !545
  %31 = getelementptr inbounds %struct.df_live_bb_info, ptr %15, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !546
  %33 = getelementptr inbounds %struct.df_live_bb_info, ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !286
  %35 = load ptr, ptr %15, align 8, !tbaa !288
  %36 = load ptr, ptr @df_live_scratch, align 8, !tbaa !182
  %37 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !480
  tail call void @bitmap_and(ptr noundef %36, ptr noundef %34, ptr noundef %38) #20
  %39 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !479
  tail call void @bitmap_and_into(ptr noundef %30, ptr noundef %40) #20
  %41 = load ptr, ptr @df_live_scratch, align 8, !tbaa !182
  %42 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %32, ptr noundef %41, ptr noundef %30, ptr noundef %35) #20
  ret i8 %42
}

; Function Attrs: nounwind uwtable
define internal void @df_live_finalize(ptr nocapture noundef readonly %0) #13 !prof !532 !PGOFuncName !570 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !517
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %123, label %8, !prof !553

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !390
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @bitmap_zero_bits, ptr %9, !prof !553
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !393
  %14 = shl i32 %13, 7
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3, i64 0
  %16 = load i64, ptr %15, align 8, !tbaa !395
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %14, %18
  br label %20

20:                                               ; preds = %107, %8
  %21 = phi i32 [ 0, %8 ], [ %76, %107 ]
  %22 = phi i64 [ %16, %8 ], [ %117, %107 ]
  %23 = phi ptr [ %11, %8 ], [ %78, %107 ]
  %24 = phi i32 [ %19, %8 ], [ %118, %107 ]
  %25 = icmp eq i64 %22, 0
  br i1 %25, label %40, label %26, !prof !554

26:                                               ; preds = %54, %20
  %27 = phi i32 [ %21, %20 ], [ %55, %54 ]
  %28 = phi i64 [ %22, %20 ], [ %59, %54 ]
  %29 = phi ptr [ %23, %20 ], [ %46, %54 ]
  %30 = phi i32 [ %24, %20 ], [ %56, %54 ]
  %31 = and i64 %28, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %75, !prof !555

33:                                               ; preds = %26, %33
  %34 = phi i32 [ %37, %33 ], [ %30, %26 ]
  %35 = phi i64 [ %36, %33 ], [ %28, %26 ]
  %36 = lshr exact i64 %35, 1
  %37 = add i32 %34, 1
  %38 = and i64 %35, 2
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %33, label %75, !prof !498, !llvm.loop !399

40:                                               ; preds = %20
  %41 = add i32 %24, 63
  %42 = and i32 %41, -64
  %43 = add i32 %21, 1
  br label %44

44:                                               ; preds = %71, %40
  %45 = phi i64 [ %22, %40 ], [ %66, %71 ]
  %46 = phi ptr [ %23, %40 ], [ %69, %71 ]
  %47 = phi i32 [ %42, %40 ], [ %74, %71 ]
  %48 = phi i32 [ %43, %40 ], [ 0, %71 ]
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %65, label %50, !prof !556

50:                                               ; preds = %44
  %51 = add i32 %47, 128
  %52 = shl i32 %48, 6
  %53 = sub i32 %51, %52
  br label %54

54:                                               ; preds = %50, %61
  %55 = phi i32 [ %63, %61 ], [ %48, %50 ]
  %56 = phi i32 [ %62, %61 ], [ %47, %50 ]
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %46, i64 0, i32 3, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !395
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %26, !prof !557

61:                                               ; preds = %54
  %62 = add i32 %56, 64
  %63 = add i32 %55, 1
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %54, !prof !558, !llvm.loop !403

65:                                               ; preds = %61, %44
  %66 = phi i64 [ %45, %44 ], [ %59, %61 ]
  %67 = phi i32 [ %47, %44 ], [ %53, %61 ]
  %68 = phi i32 [ %48, %44 ], [ 2, %61 ]
  %69 = load ptr, ptr %46, align 8, !tbaa !404
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71, !prof !559

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !393
  %74 = shl i32 %73, 7
  br label %44, !llvm.loop !406

75:                                               ; preds = %65, %33, %26
  %76 = phi i32 [ %27, %26 ], [ %27, %33 ], [ %68, %65 ]
  %77 = phi i64 [ %28, %26 ], [ %36, %33 ], [ %66, %65 ]
  %78 = phi ptr [ %29, %26 ], [ %29, %33 ], [ %69, %65 ]
  %79 = phi i32 [ %30, %26 ], [ %37, %33 ], [ %67, %65 ]
  %80 = phi i1 [ false, %26 ], [ false, %33 ], [ true, %65 ]
  %81 = load ptr, ptr @df, align 8, !tbaa !182
  br i1 %80, label %119, label %82, !prof !560

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 1, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !182
  %85 = getelementptr inbounds %struct.dataflow, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !205
  %87 = icmp ugt i32 %86, %79
  br i1 %87, label %88, label %94, !prof !561

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.dataflow, ptr %84, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !208
  %91 = zext i32 %79 to i64
  %92 = getelementptr inbounds ptr, ptr %90, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !182
  br label %94

94:                                               ; preds = %82, %88
  %95 = phi ptr [ %93, %88 ], [ null, %82 ]
  %96 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 1, i64 2
  %97 = load ptr, ptr %96, align 8, !tbaa !182
  %98 = getelementptr inbounds %struct.dataflow, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !205
  %100 = icmp ugt i32 %99, %79
  br i1 %100, label %101, label %107, !prof !561

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.dataflow, ptr %97, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !208
  %104 = zext i32 %79 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !182
  br label %107

107:                                              ; preds = %94, %101
  %108 = phi ptr [ %106, %101 ], [ null, %94 ]
  %109 = getelementptr inbounds %struct.df_live_bb_info, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !545
  %111 = getelementptr inbounds %struct.df_lr_bb_info, ptr %95, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !479
  tail call void @bitmap_and_into(ptr noundef %110, ptr noundef %112) #20
  %113 = getelementptr inbounds %struct.df_live_bb_info, ptr %108, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !546
  %115 = getelementptr inbounds %struct.df_lr_bb_info, ptr %95, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !480
  tail call void @bitmap_and_into(ptr noundef %114, ptr noundef %116) #20
  %117 = lshr i64 %77, 1
  %118 = add i32 %79, 1
  br label %20, !llvm.loop !571

119:                                              ; preds = %75
  %120 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 1, i64 2
  %121 = load ptr, ptr %120, align 8, !tbaa !182
  %122 = getelementptr inbounds %struct.dataflow, ptr %121, i64 0, i32 8
  store i8 0, ptr %122, align 1, !tbaa !517
  br label %123

123:                                              ; preds = %119, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_live_free() #13 !prof !250 !PGOFuncName !572 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7, !prof !392

7:                                                ; preds = %0
  %8 = load ptr, ptr @df, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 1, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.dataflow, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !205
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %39, label %14, !prof !267

14:                                               ; preds = %7, %30
  %15 = phi i64 [ %31, %30 ], [ 0, %7 ]
  %16 = phi ptr [ %34, %30 ], [ %10, %7 ]
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !208
  %19 = getelementptr inbounds ptr, ptr %18, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22, !prof !523

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.df_live_bb_info, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !286
  tail call void @bitmap_obstack_free(ptr noundef %24) #20
  store ptr null, ptr %23, align 8, !tbaa !286
  %25 = load ptr, ptr %20, align 8, !tbaa !288
  tail call void @bitmap_obstack_free(ptr noundef %25) #20
  store ptr null, ptr %20, align 8, !tbaa !288
  %26 = getelementptr inbounds %struct.df_live_bb_info, ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !545
  tail call void @bitmap_obstack_free(ptr noundef %27) #20
  store ptr null, ptr %26, align 8, !tbaa !545
  %28 = getelementptr inbounds %struct.df_live_bb_info, ptr %20, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !546
  tail call void @bitmap_obstack_free(ptr noundef %29) #20
  store ptr null, ptr %28, align 8, !tbaa !546
  br label %30

30:                                               ; preds = %22, %14
  %31 = add nuw nsw i64 %15, 1
  %32 = load ptr, ptr @df, align 8, !tbaa !182
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 1, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !205
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %14, label %39, !prof !524, !llvm.loop !573

39:                                               ; preds = %30, %7
  %40 = phi ptr [ %10, %7 ], [ %34, %30 ]
  %41 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !309
  tail call void @free_alloc_pool(ptr noundef %42) #20
  %43 = load ptr, ptr @df, align 8, !tbaa !182
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 1, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !182
  %46 = getelementptr inbounds %struct.dataflow, ptr %45, i64 0, i32 2
  store i32 0, ptr %46, align 8, !tbaa !205
  %47 = getelementptr inbounds %struct.dataflow, ptr %45, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !208
  tail call void @free(ptr noundef %48)
  %49 = load ptr, ptr @df_live_scratch, align 8, !tbaa !182
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !392

51:                                               ; preds = %39
  tail call void @bitmap_obstack_free(ptr noundef nonnull %49) #20
  store ptr null, ptr @df_live_scratch, align 8, !tbaa !182
  br label %52

52:                                               ; preds = %39, %51, %0
  %53 = load ptr, ptr @df, align 8, !tbaa !182
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 1, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !182
  %56 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !251
  tail call void @bitmap_obstack_free(ptr noundef %57) #20
  %58 = load ptr, ptr @df, align 8, !tbaa !182
  %59 = getelementptr inbounds %struct.df, ptr %58, i64 0, i32 1, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !182
  %61 = getelementptr inbounds %struct.dataflow, ptr %60, i64 0, i32 4
  store ptr null, ptr %61, align 8, !tbaa !251
  %62 = load ptr, ptr %59, align 8, !tbaa !182
  tail call void @free(ptr noundef %62)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_live_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_live_bb_info, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !545
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 14, i64 1, ptr %1)
  %26 = load ptr, ptr %21, align 8, !tbaa !545
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #20
  %27 = load ptr, ptr @df, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !314
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 13, i64 1, ptr %1)
  %35 = load ptr, ptr %31, align 8, !tbaa !574
  %36 = load i32, ptr %3, align 8, !tbaa !203
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !182
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %39) #20
  br label %40

40:                                               ; preds = %33, %24
  %41 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %1)
  %42 = getelementptr inbounds %struct.df_live_bb_info, ptr %18, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !286
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %43) #20
  %44 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 14, i64 1, ptr %1)
  %45 = load ptr, ptr %18, align 8, !tbaa !288
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %45) #20
  br label %46

46:                                               ; preds = %17, %20, %40
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_live_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_live_bb_info, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !546
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr %1)
  %26 = load ptr, ptr %21, align 8, !tbaa !546
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #20
  %27 = load ptr, ptr @df, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !314
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %1)
  %35 = getelementptr inbounds %struct.df_live_problem_data, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !576
  %37 = load i32, ptr %3, align 8, !tbaa !203
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !182
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %40) #20
  br label %41

41:                                               ; preds = %24, %33, %17, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_live_verify_solution_start() #12 !prof !181 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !517
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !314
  br label %87

9:                                                ; preds = %0
  store i8 1, ptr %4, align 1, !tbaa !517
  %10 = tail call ptr @xmalloc(i64 noundef 16) #20
  %11 = load ptr, ptr @df, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 5
  store ptr %10, ptr %14, align 8, !tbaa !314
  %15 = load ptr, ptr @cfun, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !213
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !215
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @xmalloc(i64 noundef %21) #20
  store ptr %22, ptr %10, align 8, !tbaa !574
  %23 = load ptr, ptr @cfun, align 8, !tbaa !182
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !213
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !215
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #20
  %31 = getelementptr inbounds %struct.df_live_problem_data, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !576
  %32 = load ptr, ptr @cfun, align 8, !tbaa !182
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !213
  %35 = load ptr, ptr %34, align 8, !tbaa !182
  %36 = icmp eq ptr %35, null
  br i1 %36, label %87, label %37

37:                                               ; preds = %9, %37
  %38 = phi ptr [ %85, %37 ], [ %35, %9 ]
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %40 = load ptr, ptr %10, align 8, !tbaa !574
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !203
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  store ptr %39, ptr %44, align 8, !tbaa !182
  %45 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %46 = load ptr, ptr %31, align 8, !tbaa !576
  %47 = load i32, ptr %41, align 8, !tbaa !203
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !182
  %50 = load ptr, ptr %10, align 8, !tbaa !574
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !182
  %53 = load ptr, ptr @df, align 8, !tbaa !182
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 1, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !182
  %56 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !205
  %58 = icmp ugt i32 %57, %47
  tail call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !208
  %61 = zext i32 %47 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !182
  %64 = getelementptr inbounds %struct.df_live_bb_info, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !545
  tail call void @bitmap_copy(ptr noundef %52, ptr noundef %65) #20
  %66 = load ptr, ptr %31, align 8, !tbaa !576
  %67 = load i32, ptr %41, align 8, !tbaa !203
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !182
  %71 = load ptr, ptr @df, align 8, !tbaa !182
  %72 = getelementptr inbounds %struct.df, ptr %71, i64 0, i32 1, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !182
  %74 = getelementptr inbounds %struct.dataflow, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !205
  %76 = icmp ugt i32 %75, %67
  tail call void @llvm.assume(i1 %76)
  %77 = getelementptr inbounds %struct.dataflow, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !208
  %79 = zext i32 %67 to i64
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !182
  %82 = getelementptr inbounds %struct.df_live_bb_info, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !546
  tail call void @bitmap_copy(ptr noundef %70, ptr noundef %83) #20
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !182
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %37, !llvm.loop !577

87:                                               ; preds = %37, %9, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_live_verify_solution_end() #12 !prof !181 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  %6 = icmp eq ptr %5, null
  br i1 %6, label %102, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @cfun, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = icmp eq ptr %11, null
  br i1 %12, label %64, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %60
  %16 = phi ptr [ %11, %13 ], [ %62, %60 ]
  %17 = load ptr, ptr %5, align 8, !tbaa !574
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !203
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = load ptr, ptr @df, align 8, !tbaa !182
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 1, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  %26 = getelementptr inbounds %struct.dataflow, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !205
  %28 = icmp ugt i32 %27, %19
  tail call void @llvm.assume(i1 %28)
  %29 = getelementptr inbounds %struct.dataflow, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !208
  %31 = zext i32 %19 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !182
  %34 = getelementptr inbounds %struct.df_live_bb_info, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !545
  %36 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %22, ptr noundef %35) #20
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %15
  %39 = load ptr, ptr %14, align 8, !tbaa !576
  %40 = load i32, ptr %18, align 8, !tbaa !203
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !182
  %44 = load ptr, ptr @df, align 8, !tbaa !182
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 1, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !182
  %47 = getelementptr inbounds %struct.dataflow, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !205
  %49 = icmp ugt i32 %48, %40
  tail call void @llvm.assume(i1 %49)
  %50 = getelementptr inbounds %struct.dataflow, ptr %46, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !208
  %52 = zext i32 %40 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !182
  %55 = getelementptr inbounds %struct.df_live_bb_info, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !546
  %57 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %43, ptr noundef %56) #20
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %38, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1749, ptr noundef nonnull @.str.1) #20
  br label %60

60:                                               ; preds = %38, %59
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !182
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %15, !llvm.loop !578

64:                                               ; preds = %60, %7
  %65 = load ptr, ptr @cfun, align 8, !tbaa !182
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !213
  %68 = load ptr, ptr %67, align 8, !tbaa !182
  %69 = icmp eq ptr %68, null
  br i1 %69, label %94, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi ptr [ %68, %70 ], [ %92, %72 ]
  %74 = load ptr, ptr %5, align 8, !tbaa !574
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !203
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %74, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %79) #20
  %80 = load ptr, ptr %5, align 8, !tbaa !574
  %81 = load i32, ptr %75, align 8, !tbaa !203
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  store ptr null, ptr %83, align 8, !tbaa !182
  %84 = load ptr, ptr %71, align 8, !tbaa !576
  %85 = getelementptr inbounds ptr, ptr %84, i64 %82
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %86) #20
  %87 = load ptr, ptr %71, align 8, !tbaa !576
  %88 = load i32, ptr %75, align 8, !tbaa !203
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  store ptr null, ptr %90, align 8, !tbaa !182
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !182
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %72, !llvm.loop !579

94:                                               ; preds = %72, %64
  %95 = load ptr, ptr %5, align 8, !tbaa !574
  tail call void @free(ptr noundef %95)
  %96 = getelementptr inbounds %struct.df_live_problem_data, ptr %5, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !576
  tail call void @free(ptr noundef %97)
  tail call void @free(ptr noundef %5)
  %98 = load ptr, ptr @df, align 8, !tbaa !182
  %99 = getelementptr inbounds %struct.df, ptr %98, i64 0, i32 1, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !182
  %101 = getelementptr inbounds %struct.dataflow, ptr %100, i64 0, i32 5
  store ptr null, ptr %101, align 8, !tbaa !314
  br label %102

102:                                              ; preds = %0, %94
  ret void
}

declare void @bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_insn_create_insn_record(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @df_chain_alloc(ptr nocapture readnone %0) #13 !prof !250 !PGOFuncName !580 {
  tail call fastcc void @df_chain_remove_problem()
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.34, i64 noundef 16, i64 noundef 50) #20
  %3 = load ptr, ptr @df, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !309
  %7 = load ptr, ptr %4, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 9
  store i8 1, ptr %8, align 2, !tbaa !417
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_chain_reset(ptr nocapture readnone %0) #12 !prof !181 {
  tail call fastcc void @df_chain_remove_problem()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_chain_finalize(ptr nocapture noundef readonly %0) #13 !prof !250 !PGOFuncName !581 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2, !prof !392
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %595, %1
  %14 = phi i64 [ %9, %1 ], [ %596, %595 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %595 ]
  %16 = phi i32 [ %12, %1 ], [ %597, %595 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %595 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19, !prof !396

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68, !prof !397

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !prof !398, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43, !prof !400

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19, !prof !401

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !prof !402, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64, !prof !405

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %598, label %74, !prof !407

74:                                               ; preds = %68
  %75 = load ptr, ptr @cfun, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !213
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !257
  %80 = zext i32 %71 to i64
  %81 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %79, i64 0, i32 2, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !182
  %83 = load ptr, ptr @df, align 8, !tbaa !182
  %84 = getelementptr inbounds %struct.df, ptr %83, i64 0, i32 1, i64 3
  %85 = load ptr, ptr %84, align 8, !tbaa !182
  %86 = getelementptr inbounds %struct.dataflow, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !205
  %88 = icmp ugt i32 %87, %71
  br i1 %88, label %89, label %94, !prof !408

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.dataflow, ptr %85, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !208
  %92 = getelementptr inbounds ptr, ptr %91, i64 %80
  %93 = load ptr, ptr %92, align 8, !tbaa !182
  br label %94

94:                                               ; preds = %89, %74
  %95 = phi ptr [ %93, %89 ], [ null, %74 ]
  %96 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %97 = getelementptr inbounds %struct.df_rd_bb_info, ptr %95, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !414
  tail call void @bitmap_copy(ptr noundef %96, ptr noundef %98) #20
  %99 = load ptr, ptr @df, align 8, !tbaa !182
  %100 = getelementptr inbounds %struct.df, ptr %99, i64 0, i32 1, i64 4
  %101 = load ptr, ptr %100, align 8, !tbaa !182
  %102 = getelementptr inbounds %struct.dataflow, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !251
  %104 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %103, i32 noundef %71) #20
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %106 = load i32, ptr %105, align 8, !tbaa !203
  %107 = load ptr, ptr @df, align 8, !tbaa !182
  %108 = getelementptr inbounds %struct.df, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !182
  %110 = getelementptr inbounds %struct.dataflow, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !205
  %112 = icmp ugt i32 %111, %106
  tail call void @llvm.assume(i1 %112)
  %113 = getelementptr inbounds %struct.dataflow, ptr %109, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !208
  %115 = zext i32 %106 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !182
  %118 = load ptr, ptr %117, align 8, !tbaa !233
  %119 = load ptr, ptr %118, align 8, !tbaa !182
  %120 = icmp eq ptr %119, null
  br i1 %120, label %151, label %121, !prof !235

121:                                              ; preds = %94, %147
  %122 = phi ptr [ %149, %147 ], [ %119, %94 ]
  %123 = phi ptr [ %148, %147 ], [ %118, %94 ]
  %124 = load i32, ptr %122, align 8
  %125 = and i32 %124, 131072
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %147, label %127, !prof !236

127:                                              ; preds = %121
  %128 = and i32 %124, 1114112
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.df_base_ref, ptr %122, i64 0, i32 6
  %132 = load i32, ptr %131, align 8, !tbaa !193
  %133 = load ptr, ptr @df, align 8, !tbaa !182
  %134 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 3, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !237
  %136 = zext i32 %132 to i64
  %137 = getelementptr inbounds i32, ptr %135, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !197
  %139 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 3, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !240
  %141 = getelementptr inbounds i32, ptr %140, i64 %136
  %142 = load i32, ptr %141, align 4, !tbaa !197
  tail call void @bitmap_clear_range(ptr noundef %96, i32 noundef %138, i32 noundef %142) #20
  br label %143

143:                                              ; preds = %130, %127
  %144 = getelementptr inbounds %struct.df_base_ref, ptr %122, i64 0, i32 7
  %145 = load i32, ptr %144, align 4, !tbaa !193
  %146 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %96, i32 noundef %145) #20
  br label %147

147:                                              ; preds = %143, %121
  %148 = getelementptr inbounds ptr, ptr %123, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !182
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %121, !prof !236, !llvm.loop !241

151:                                              ; preds = %147, %94
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !193
  %154 = load ptr, ptr %153, align 8, !tbaa !193
  %155 = icmp eq ptr %154, null
  br i1 %155, label %411, label %156, !prof !429

156:                                              ; preds = %151, %407
  %157 = phi ptr [ %409, %407 ], [ %154, %151 ]
  %158 = load ptr, ptr %152, align 8, !tbaa !193
  %159 = getelementptr inbounds %struct.rtl_bb_info, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !293
  %161 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 0, i64 2
  %162 = load ptr, ptr %161, align 8, !tbaa !193
  %163 = icmp eq ptr %157, %162
  br i1 %163, label %411, label %164, !prof !430

164:                                              ; preds = %156
  %165 = load i32, ptr %157, align 8
  %166 = and i32 %165, 65535
  %167 = add nsw i32 %166, -7
  %168 = icmp ult i32 %167, 4
  br i1 %168, label %169, label %407, !prof !431

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !193
  %172 = load ptr, ptr @df, align 8, !tbaa !182
  %173 = getelementptr inbounds %struct.df, ptr %172, i64 0, i32 10
  %174 = load ptr, ptr %173, align 8, !tbaa !243
  %175 = zext i32 %171 to i64
  %176 = getelementptr inbounds ptr, ptr %174, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !182
  %178 = getelementptr inbounds %struct.df_insn_info, ptr %177, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !276
  %180 = load ptr, ptr %179, align 8, !tbaa !182
  %181 = icmp eq ptr %180, null
  br i1 %181, label %344, label %182, !prof !582

182:                                              ; preds = %169, %340
  %183 = phi ptr [ %342, %340 ], [ %180, %169 ]
  %184 = phi ptr [ %341, %340 ], [ %179, %169 ]
  %185 = getelementptr inbounds %struct.df_base_ref, ptr %183, i64 0, i32 6
  %186 = load i32, ptr %185, align 8, !tbaa !193
  %187 = load ptr, ptr @df, align 8, !tbaa !182
  %188 = getelementptr inbounds %struct.df, ptr %187, i64 0, i32 27
  %189 = load i8, ptr %188, align 4
  %190 = and i8 %189, 2
  %191 = icmp eq i8 %190, 0
  %192 = icmp ugt i32 %186, 52
  %193 = select i1 %191, i1 true, i1 %192, !prof !583
  br i1 %193, label %194, label %340, !prof !583

194:                                              ; preds = %182
  %195 = getelementptr inbounds %struct.df, ptr %187, i64 0, i32 3, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !240
  %197 = zext i32 %186 to i64
  %198 = getelementptr inbounds i32, ptr %196, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !197
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %340, label %201, !prof !584

201:                                              ; preds = %194
  %202 = load i32, ptr %183, align 8
  %203 = and i32 %202, 131072
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %340, !prof !583

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.df, ptr %187, i64 0, i32 3, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !237
  %208 = getelementptr inbounds i32, ptr %207, i64 %197
  %209 = load i32, ptr %208, align 4, !tbaa !197
  %210 = add i32 %199, -1
  %211 = add i32 %210, %209
  %212 = lshr i32 %209, 7
  br label %213

213:                                              ; preds = %217, %205
  %214 = phi ptr [ %96, %205 ], [ %215, %217 ]
  %215 = load ptr, ptr %214, align 8, !tbaa !182
  %216 = icmp eq ptr %215, null
  br i1 %216, label %221, label %217, !prof !585

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.bitmap_element_def, ptr %215, i64 0, i32 2
  %219 = load i32, ptr %218, align 8, !tbaa !393
  %220 = icmp ult i32 %219, %212
  br i1 %220, label %213, label %221, !prof !586, !llvm.loop !587

221:                                              ; preds = %217, %213
  %222 = phi ptr [ %215, %217 ], [ @bitmap_zero_bits, %213 ]
  %223 = getelementptr inbounds %struct.bitmap_element_def, ptr %222, i64 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !393
  %225 = icmp eq i32 %224, %212
  %226 = shl i32 %224, 7
  %227 = select i1 %225, i32 %209, i32 %226, !prof !588
  %228 = lshr i32 %227, 6
  %229 = and i32 %228, 1
  %230 = zext nneg i32 %229 to i64
  %231 = getelementptr inbounds %struct.bitmap_element_def, ptr %222, i64 0, i32 3, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !395
  %233 = and i32 %227, 63
  %234 = zext nneg i32 %233 to i64
  %235 = lshr i64 %232, %234
  %236 = icmp eq i64 %235, 0
  %237 = zext i1 %236 to i32
  %238 = add i32 %227, %237
  %239 = getelementptr inbounds %struct.df_base_ref, ptr %183, i64 0, i32 2
  br label %240

240:                                              ; preds = %337, %221
  %241 = phi i32 [ %229, %221 ], [ %296, %337 ]
  %242 = phi i64 [ %235, %221 ], [ %338, %337 ]
  %243 = phi ptr [ %222, %221 ], [ %298, %337 ]
  %244 = phi i32 [ %238, %221 ], [ %339, %337 ]
  %245 = icmp eq i64 %242, 0
  br i1 %245, label %260, label %246, !prof !589

246:                                              ; preds = %274, %240
  %247 = phi i32 [ %241, %240 ], [ %275, %274 ]
  %248 = phi i64 [ %242, %240 ], [ %279, %274 ]
  %249 = phi ptr [ %243, %240 ], [ %266, %274 ]
  %250 = phi i32 [ %244, %240 ], [ %276, %274 ]
  %251 = and i64 %248, 1
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %295, !prof !590

253:                                              ; preds = %246, %253
  %254 = phi i32 [ %257, %253 ], [ %250, %246 ]
  %255 = phi i64 [ %256, %253 ], [ %248, %246 ]
  %256 = lshr exact i64 %255, 1
  %257 = add i32 %254, 1
  %258 = and i64 %255, 2
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %253, label %295, !prof !591, !llvm.loop !399

260:                                              ; preds = %240
  %261 = add i32 %244, 63
  %262 = and i32 %261, -64
  %263 = add i32 %241, 1
  br label %264

264:                                              ; preds = %291, %260
  %265 = phi i64 [ %242, %260 ], [ %286, %291 ]
  %266 = phi ptr [ %243, %260 ], [ %289, %291 ]
  %267 = phi i32 [ %262, %260 ], [ %294, %291 ]
  %268 = phi i32 [ %263, %260 ], [ 0, %291 ]
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %285, label %270, !prof !592

270:                                              ; preds = %264
  %271 = add i32 %267, 128
  %272 = shl i32 %268, 6
  %273 = sub i32 %271, %272
  br label %274

274:                                              ; preds = %281, %270
  %275 = phi i32 [ %283, %281 ], [ %268, %270 ]
  %276 = phi i32 [ %282, %281 ], [ %267, %270 ]
  %277 = zext i32 %275 to i64
  %278 = getelementptr inbounds %struct.bitmap_element_def, ptr %266, i64 0, i32 3, i64 %277
  %279 = load i64, ptr %278, align 8, !tbaa !395
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %246, !prof !593

281:                                              ; preds = %274
  %282 = add i32 %276, 64
  %283 = add i32 %275, 1
  %284 = icmp eq i32 %283, 2
  br i1 %284, label %285, label %274, !prof !594, !llvm.loop !403

285:                                              ; preds = %281, %264
  %286 = phi i64 [ %265, %264 ], [ %279, %281 ]
  %287 = phi i32 [ %267, %264 ], [ %273, %281 ]
  %288 = phi i32 [ %268, %264 ], [ 2, %281 ]
  %289 = load ptr, ptr %266, align 8, !tbaa !404
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %291, !prof !595

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.bitmap_element_def, ptr %289, i64 0, i32 2
  %293 = load i32, ptr %292, align 8, !tbaa !393
  %294 = shl i32 %293, 7
  br label %264, !llvm.loop !406

295:                                              ; preds = %285, %253, %246
  %296 = phi i32 [ %247, %246 ], [ %247, %253 ], [ %288, %285 ]
  %297 = phi i64 [ %248, %246 ], [ %256, %253 ], [ %286, %285 ]
  %298 = phi ptr [ %249, %246 ], [ %249, %253 ], [ %289, %285 ]
  %299 = phi i32 [ %250, %246 ], [ %257, %253 ], [ %287, %285 ]
  %300 = phi i1 [ false, %246 ], [ false, %253 ], [ true, %285 ]
  %301 = icmp ugt i32 %299, %211
  %302 = select i1 %300, i1 true, i1 %301
  br i1 %302, label %340, label %303, !prof !596

303:                                              ; preds = %295
  %304 = load ptr, ptr @df, align 8, !tbaa !182
  %305 = getelementptr inbounds %struct.df, ptr %304, i64 0, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !597
  %307 = zext i32 %299 to i64
  %308 = getelementptr inbounds ptr, ptr %306, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !182
  %310 = getelementptr inbounds %struct.df, ptr %304, i64 0, i32 1, i64 4
  %311 = load ptr, ptr %310, align 8, !tbaa !182
  %312 = getelementptr inbounds %struct.dataflow, ptr %311, i64 0, i32 6
  %313 = load i32, ptr %312, align 8, !tbaa !313
  %314 = and i32 %313, 1
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %323, label %316, !prof !598

316:                                              ; preds = %303
  %317 = getelementptr inbounds %struct.df_base_ref, ptr %309, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !193
  %319 = getelementptr inbounds %struct.dataflow, ptr %311, i64 0, i32 3
  %320 = load ptr, ptr %319, align 8, !tbaa !309
  %321 = tail call ptr @pool_alloc(ptr noundef %320) #20
  store ptr %321, ptr %317, align 8, !tbaa !193
  %322 = getelementptr inbounds %struct.df_link, ptr %321, i64 0, i32 1
  store ptr %318, ptr %322, align 8, !tbaa !223
  store ptr %183, ptr %321, align 8, !tbaa !219
  br label %323

323:                                              ; preds = %316, %303
  %324 = load ptr, ptr @df, align 8, !tbaa !182
  %325 = getelementptr inbounds %struct.df, ptr %324, i64 0, i32 1, i64 4
  %326 = load ptr, ptr %325, align 8, !tbaa !182
  %327 = getelementptr inbounds %struct.dataflow, ptr %326, i64 0, i32 6
  %328 = load i32, ptr %327, align 8, !tbaa !313
  %329 = and i32 %328, 2
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %337, label %331, !prof !599

331:                                              ; preds = %323
  %332 = load ptr, ptr %239, align 8, !tbaa !193
  %333 = getelementptr inbounds %struct.dataflow, ptr %326, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !309
  %335 = tail call ptr @pool_alloc(ptr noundef %334) #20
  store ptr %335, ptr %239, align 8, !tbaa !193
  %336 = getelementptr inbounds %struct.df_link, ptr %335, i64 0, i32 1
  store ptr %332, ptr %336, align 8, !tbaa !223
  store ptr %309, ptr %335, align 8, !tbaa !219
  br label %337

337:                                              ; preds = %323, %331
  %338 = lshr i64 %297, 1
  %339 = add i32 %299, 1
  br label %240, !llvm.loop !600

340:                                              ; preds = %295, %201, %194, %182
  %341 = getelementptr inbounds ptr, ptr %184, i64 1
  %342 = load ptr, ptr %341, align 8, !tbaa !182
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %182, !prof !601, !llvm.loop !602

344:                                              ; preds = %340, %169
  %345 = load ptr, ptr @df, align 8, !tbaa !182
  %346 = getelementptr inbounds %struct.df, ptr %345, i64 0, i32 27
  %347 = load i8, ptr %346, align 4
  %348 = and i8 %347, 4
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %357, label %350, !prof !603

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.df, ptr %345, i64 0, i32 10
  %352 = load ptr, ptr %351, align 8, !tbaa !243
  %353 = getelementptr inbounds ptr, ptr %352, i64 %175
  %354 = load ptr, ptr %353, align 8, !tbaa !182
  %355 = getelementptr inbounds %struct.df_insn_info, ptr %354, i64 0, i32 3
  %356 = load ptr, ptr %355, align 8, !tbaa !604
  tail call fastcc void @df_chain_create_bb_process_use(ptr noundef %96, ptr noundef %356)
  br label %357

357:                                              ; preds = %350, %344
  %358 = load i32, ptr %170, align 8, !tbaa !193
  %359 = load ptr, ptr @df, align 8, !tbaa !182
  %360 = getelementptr inbounds %struct.df, ptr %359, i64 0, i32 10
  %361 = load ptr, ptr %360, align 8, !tbaa !243
  %362 = zext i32 %358 to i64
  %363 = getelementptr inbounds ptr, ptr %361, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !182
  %365 = getelementptr inbounds %struct.df_insn_info, ptr %364, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !244
  %367 = load ptr, ptr %366, align 8, !tbaa !182
  %368 = icmp eq ptr %367, null
  br i1 %368, label %407, label %369, !prof !245

369:                                              ; preds = %357, %403
  %370 = phi ptr [ %405, %403 ], [ %367, %357 ]
  %371 = phi ptr [ %404, %403 ], [ %366, %357 ]
  %372 = getelementptr inbounds %struct.df_base_ref, ptr %370, i64 0, i32 6
  %373 = load i32, ptr %372, align 8, !tbaa !193
  %374 = load ptr, ptr @df, align 8, !tbaa !182
  %375 = getelementptr inbounds %struct.df, ptr %374, i64 0, i32 27
  %376 = load i8, ptr %375, align 4
  %377 = and i8 %376, 2
  %378 = icmp eq i8 %377, 0
  %379 = icmp ugt i32 %373, 52
  %380 = select i1 %378, i1 true, i1 %379, !prof !246
  br i1 %380, label %381, label %403, !prof !246

381:                                              ; preds = %369
  %382 = load i32, ptr %370, align 8
  %383 = and i32 %382, 1114112
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %395, !prof !246

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.df, ptr %374, i64 0, i32 3, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !237
  %388 = zext i32 %373 to i64
  %389 = getelementptr inbounds i32, ptr %387, i64 %388
  %390 = load i32, ptr %389, align 4, !tbaa !197
  %391 = getelementptr inbounds %struct.df, ptr %374, i64 0, i32 3, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !240
  %393 = getelementptr inbounds i32, ptr %392, i64 %388
  %394 = load i32, ptr %393, align 4, !tbaa !197
  tail call void @bitmap_clear_range(ptr noundef %96, i32 noundef %390, i32 noundef %394) #20
  br label %395

395:                                              ; preds = %385, %381
  %396 = load i32, ptr %370, align 8
  %397 = and i32 %396, 12582912
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %403, !prof !247

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.df_base_ref, ptr %370, i64 0, i32 7
  %401 = load i32, ptr %400, align 4, !tbaa !193
  %402 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %96, i32 noundef %401) #20
  br label %403

403:                                              ; preds = %399, %395, %369
  %404 = getelementptr inbounds ptr, ptr %371, i64 1
  %405 = load ptr, ptr %404, align 8, !tbaa !182
  %406 = icmp eq ptr %405, null
  br i1 %406, label %407, label %369, !prof !248, !llvm.loop !249

407:                                              ; preds = %403, %357, %164
  %408 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1, i32 0, i32 0, i64 2
  %409 = load ptr, ptr %408, align 8, !tbaa !193
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %156, !prof !432, !llvm.loop !605

411:                                              ; preds = %407, %156, %151
  %412 = load ptr, ptr @df, align 8, !tbaa !182
  %413 = getelementptr inbounds %struct.df, ptr %412, i64 0, i32 27
  %414 = load i8, ptr %413, align 4
  %415 = and i8 %414, 2
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %417, label %595, !prof !408

417:                                              ; preds = %411
  %418 = load i32, ptr %105, align 8, !tbaa !203
  %419 = getelementptr inbounds %struct.df, ptr %412, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !182
  %421 = getelementptr inbounds %struct.dataflow, ptr %420, i64 0, i32 2
  %422 = load i32, ptr %421, align 8, !tbaa !205
  %423 = icmp ugt i32 %422, %418
  tail call void @llvm.assume(i1 %423)
  %424 = getelementptr inbounds %struct.dataflow, ptr %420, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !208
  %426 = zext i32 %418 to i64
  %427 = getelementptr inbounds ptr, ptr %425, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !182
  %429 = getelementptr inbounds %struct.df_scan_bb_info, ptr %428, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !262
  %431 = load ptr, ptr %430, align 8, !tbaa !182
  %432 = icmp eq ptr %431, null
  br i1 %432, label %595, label %433, !prof !582

433:                                              ; preds = %417, %591
  %434 = phi ptr [ %593, %591 ], [ %431, %417 ]
  %435 = phi ptr [ %592, %591 ], [ %430, %417 ]
  %436 = getelementptr inbounds %struct.df_base_ref, ptr %434, i64 0, i32 6
  %437 = load i32, ptr %436, align 8, !tbaa !193
  %438 = load ptr, ptr @df, align 8, !tbaa !182
  %439 = getelementptr inbounds %struct.df, ptr %438, i64 0, i32 27
  %440 = load i8, ptr %439, align 4
  %441 = and i8 %440, 2
  %442 = icmp eq i8 %441, 0
  %443 = icmp ugt i32 %437, 52
  %444 = select i1 %442, i1 true, i1 %443, !prof !583
  br i1 %444, label %445, label %591, !prof !583

445:                                              ; preds = %433
  %446 = getelementptr inbounds %struct.df, ptr %438, i64 0, i32 3, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !240
  %448 = zext i32 %437 to i64
  %449 = getelementptr inbounds i32, ptr %447, i64 %448
  %450 = load i32, ptr %449, align 4, !tbaa !197
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %591, label %452, !prof !584

452:                                              ; preds = %445
  %453 = load i32, ptr %434, align 8
  %454 = and i32 %453, 131072
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %591, !prof !583

456:                                              ; preds = %452
  %457 = getelementptr inbounds %struct.df, ptr %438, i64 0, i32 3, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !237
  %459 = getelementptr inbounds i32, ptr %458, i64 %448
  %460 = load i32, ptr %459, align 4, !tbaa !197
  %461 = add i32 %450, -1
  %462 = add i32 %461, %460
  %463 = lshr i32 %460, 7
  br label %464

464:                                              ; preds = %468, %456
  %465 = phi ptr [ %96, %456 ], [ %466, %468 ]
  %466 = load ptr, ptr %465, align 8, !tbaa !182
  %467 = icmp eq ptr %466, null
  br i1 %467, label %472, label %468, !prof !585

468:                                              ; preds = %464
  %469 = getelementptr inbounds %struct.bitmap_element_def, ptr %466, i64 0, i32 2
  %470 = load i32, ptr %469, align 8, !tbaa !393
  %471 = icmp ult i32 %470, %463
  br i1 %471, label %464, label %472, !prof !586, !llvm.loop !587

472:                                              ; preds = %468, %464
  %473 = phi ptr [ %466, %468 ], [ @bitmap_zero_bits, %464 ]
  %474 = getelementptr inbounds %struct.bitmap_element_def, ptr %473, i64 0, i32 2
  %475 = load i32, ptr %474, align 8, !tbaa !393
  %476 = icmp eq i32 %475, %463
  %477 = shl i32 %475, 7
  %478 = select i1 %476, i32 %460, i32 %477, !prof !588
  %479 = lshr i32 %478, 6
  %480 = and i32 %479, 1
  %481 = zext nneg i32 %480 to i64
  %482 = getelementptr inbounds %struct.bitmap_element_def, ptr %473, i64 0, i32 3, i64 %481
  %483 = load i64, ptr %482, align 8, !tbaa !395
  %484 = and i32 %478, 63
  %485 = zext nneg i32 %484 to i64
  %486 = lshr i64 %483, %485
  %487 = icmp eq i64 %486, 0
  %488 = zext i1 %487 to i32
  %489 = add i32 %478, %488
  %490 = getelementptr inbounds %struct.df_base_ref, ptr %434, i64 0, i32 2
  br label %491

491:                                              ; preds = %588, %472
  %492 = phi i32 [ %480, %472 ], [ %547, %588 ]
  %493 = phi i64 [ %486, %472 ], [ %589, %588 ]
  %494 = phi ptr [ %473, %472 ], [ %549, %588 ]
  %495 = phi i32 [ %489, %472 ], [ %590, %588 ]
  %496 = icmp eq i64 %493, 0
  br i1 %496, label %511, label %497, !prof !589

497:                                              ; preds = %525, %491
  %498 = phi i32 [ %492, %491 ], [ %526, %525 ]
  %499 = phi i64 [ %493, %491 ], [ %530, %525 ]
  %500 = phi ptr [ %494, %491 ], [ %517, %525 ]
  %501 = phi i32 [ %495, %491 ], [ %527, %525 ]
  %502 = and i64 %499, 1
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %504, label %546, !prof !590

504:                                              ; preds = %497, %504
  %505 = phi i32 [ %508, %504 ], [ %501, %497 ]
  %506 = phi i64 [ %507, %504 ], [ %499, %497 ]
  %507 = lshr exact i64 %506, 1
  %508 = add i32 %505, 1
  %509 = and i64 %506, 2
  %510 = icmp eq i64 %509, 0
  br i1 %510, label %504, label %546, !prof !591, !llvm.loop !399

511:                                              ; preds = %491
  %512 = add i32 %495, 63
  %513 = and i32 %512, -64
  %514 = add i32 %492, 1
  br label %515

515:                                              ; preds = %542, %511
  %516 = phi i64 [ %493, %511 ], [ %537, %542 ]
  %517 = phi ptr [ %494, %511 ], [ %540, %542 ]
  %518 = phi i32 [ %513, %511 ], [ %545, %542 ]
  %519 = phi i32 [ %514, %511 ], [ 0, %542 ]
  %520 = icmp eq i32 %519, 2
  br i1 %520, label %536, label %521, !prof !592

521:                                              ; preds = %515
  %522 = add i32 %518, 128
  %523 = shl i32 %519, 6
  %524 = sub i32 %522, %523
  br label %525

525:                                              ; preds = %532, %521
  %526 = phi i32 [ %534, %532 ], [ %519, %521 ]
  %527 = phi i32 [ %533, %532 ], [ %518, %521 ]
  %528 = zext i32 %526 to i64
  %529 = getelementptr inbounds %struct.bitmap_element_def, ptr %517, i64 0, i32 3, i64 %528
  %530 = load i64, ptr %529, align 8, !tbaa !395
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %532, label %497, !prof !593

532:                                              ; preds = %525
  %533 = add i32 %527, 64
  %534 = add i32 %526, 1
  %535 = icmp eq i32 %534, 2
  br i1 %535, label %536, label %525, !prof !594, !llvm.loop !403

536:                                              ; preds = %532, %515
  %537 = phi i64 [ %516, %515 ], [ %530, %532 ]
  %538 = phi i32 [ %518, %515 ], [ %524, %532 ]
  %539 = phi i32 [ %519, %515 ], [ 2, %532 ]
  %540 = load ptr, ptr %517, align 8, !tbaa !404
  %541 = icmp eq ptr %540, null
  br i1 %541, label %546, label %542, !prof !595

542:                                              ; preds = %536
  %543 = getelementptr inbounds %struct.bitmap_element_def, ptr %540, i64 0, i32 2
  %544 = load i32, ptr %543, align 8, !tbaa !393
  %545 = shl i32 %544, 7
  br label %515, !llvm.loop !406

546:                                              ; preds = %536, %504, %497
  %547 = phi i32 [ %498, %497 ], [ %498, %504 ], [ %539, %536 ]
  %548 = phi i64 [ %499, %497 ], [ %507, %504 ], [ %537, %536 ]
  %549 = phi ptr [ %500, %497 ], [ %500, %504 ], [ %540, %536 ]
  %550 = phi i32 [ %501, %497 ], [ %508, %504 ], [ %538, %536 ]
  %551 = phi i1 [ false, %497 ], [ false, %504 ], [ true, %536 ]
  %552 = icmp ugt i32 %550, %462
  %553 = select i1 %551, i1 true, i1 %552
  br i1 %553, label %591, label %554, !prof !596

554:                                              ; preds = %546
  %555 = load ptr, ptr @df, align 8, !tbaa !182
  %556 = getelementptr inbounds %struct.df, ptr %555, i64 0, i32 3
  %557 = load ptr, ptr %556, align 8, !tbaa !597
  %558 = zext i32 %550 to i64
  %559 = getelementptr inbounds ptr, ptr %557, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !182
  %561 = getelementptr inbounds %struct.df, ptr %555, i64 0, i32 1, i64 4
  %562 = load ptr, ptr %561, align 8, !tbaa !182
  %563 = getelementptr inbounds %struct.dataflow, ptr %562, i64 0, i32 6
  %564 = load i32, ptr %563, align 8, !tbaa !313
  %565 = and i32 %564, 1
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %574, label %567, !prof !598

567:                                              ; preds = %554
  %568 = getelementptr inbounds %struct.df_base_ref, ptr %560, i64 0, i32 2
  %569 = load ptr, ptr %568, align 8, !tbaa !193
  %570 = getelementptr inbounds %struct.dataflow, ptr %562, i64 0, i32 3
  %571 = load ptr, ptr %570, align 8, !tbaa !309
  %572 = tail call ptr @pool_alloc(ptr noundef %571) #20
  store ptr %572, ptr %568, align 8, !tbaa !193
  %573 = getelementptr inbounds %struct.df_link, ptr %572, i64 0, i32 1
  store ptr %569, ptr %573, align 8, !tbaa !223
  store ptr %434, ptr %572, align 8, !tbaa !219
  br label %574

574:                                              ; preds = %567, %554
  %575 = load ptr, ptr @df, align 8, !tbaa !182
  %576 = getelementptr inbounds %struct.df, ptr %575, i64 0, i32 1, i64 4
  %577 = load ptr, ptr %576, align 8, !tbaa !182
  %578 = getelementptr inbounds %struct.dataflow, ptr %577, i64 0, i32 6
  %579 = load i32, ptr %578, align 8, !tbaa !313
  %580 = and i32 %579, 2
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %588, label %582, !prof !599

582:                                              ; preds = %574
  %583 = load ptr, ptr %490, align 8, !tbaa !193
  %584 = getelementptr inbounds %struct.dataflow, ptr %577, i64 0, i32 3
  %585 = load ptr, ptr %584, align 8, !tbaa !309
  %586 = tail call ptr @pool_alloc(ptr noundef %585) #20
  store ptr %586, ptr %490, align 8, !tbaa !193
  %587 = getelementptr inbounds %struct.df_link, ptr %586, i64 0, i32 1
  store ptr %583, ptr %587, align 8, !tbaa !223
  store ptr %560, ptr %586, align 8, !tbaa !219
  br label %588

588:                                              ; preds = %574, %582
  %589 = lshr i64 %548, 1
  %590 = add i32 %550, 1
  br label %491, !llvm.loop !600

591:                                              ; preds = %546, %452, %445, %433
  %592 = getelementptr inbounds ptr, ptr %435, i64 1
  %593 = load ptr, ptr %592, align 8, !tbaa !182
  %594 = icmp eq ptr %593, null
  br i1 %594, label %595, label %433, !prof !601, !llvm.loop !602

595:                                              ; preds = %591, %417, %411
  tail call void @bitmap_obstack_free(ptr noundef %96) #20
  %596 = lshr i64 %69, 1
  %597 = add i32 %71, 1
  br label %13, !llvm.loop !606

598:                                              ; preds = %68
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_chain_free() #12 !prof !181 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !309
  tail call void @free_alloc_pool(ptr noundef %5) #20
  %6 = load ptr, ptr @df, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 4
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !251
  tail call void @bitmap_obstack_free(ptr noundef %10) #20
  %11 = load ptr, ptr @df, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 4
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = getelementptr inbounds %struct.dataflow, ptr %13, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !251
  %15 = load ptr, ptr %12, align 8, !tbaa !182
  tail call void @free(ptr noundef %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_chain_fully_remove_problem() #13 !prof !250 !PGOFuncName !607 {
  tail call fastcc void @df_chain_remove_problem()
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !251
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  %6 = load ptr, ptr @df, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 4
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !251
  %10 = load ptr, ptr %7, align 8, !tbaa !182
  tail call void @free(ptr noundef %10)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal void @df_chain_top_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #11 !prof !181 {
  %3 = load ptr, ptr @df, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !313
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %101, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !203
  %13 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !205
  %17 = icmp ugt i32 %16, %12
  tail call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !208
  %20 = zext i32 %12 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = load ptr, ptr %22, align 8, !tbaa !233
  %24 = load ptr, ptr %23, align 8, !tbaa !182
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %10
  %27 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 34, i64 1, ptr %1)
  %28 = load ptr, ptr %23, align 8, !tbaa !182
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %40, %30 ], [ %28, %26 ]
  %32 = phi ptr [ %39, %30 ], [ %23, %26 ]
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %31, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !193
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %34)
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !193
  tail call void @df_chain_dump(ptr noundef %37, ptr noundef %1)
  %38 = tail call i32 @fputc(i32 10, ptr %1)
  %39 = getelementptr inbounds ptr, ptr %32, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !182
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !608

42:                                               ; preds = %30, %26, %10
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !193
  %45 = load ptr, ptr %44, align 8, !tbaa !193
  %46 = icmp eq ptr %45, null
  br i1 %46, label %101, label %47

47:                                               ; preds = %42, %97
  %48 = phi ptr [ %99, %97 ], [ %45, %42 ]
  %49 = load ptr, ptr %43, align 8, !tbaa !193
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !293
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !193
  %54 = icmp eq ptr %48, %53
  br i1 %54, label %101, label %55

55:                                               ; preds = %47
  %56 = load i32, ptr %48, align 8
  %57 = and i32 %56, 65535
  %58 = add nsw i32 %57, -7
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %60, label %97

60:                                               ; preds = %55
  %61 = load ptr, ptr @df, align 8, !tbaa !182
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !243
  %64 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !193
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !182
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !244
  %71 = load ptr, ptr %70, align 8, !tbaa !182
  %72 = icmp eq ptr %71, null
  br i1 %72, label %97, label %73

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.df_insn_info, ptr %68, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !297
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %75, i32 noundef %65)
  %77 = load ptr, ptr %70, align 8, !tbaa !182
  %78 = icmp eq ptr %77, null
  br i1 %78, label %97, label %79

79:                                               ; preds = %73, %90
  %80 = phi ptr [ %95, %90 ], [ %77, %73 ]
  %81 = phi ptr [ %94, %90 ], [ %70, %73 ]
  %82 = getelementptr inbounds %struct.df_base_ref, ptr %80, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !193
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %83)
  %85 = load i32, ptr %80, align 8
  %86 = and i32 %85, 2097152
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 11, i64 1, ptr %1)
  br label %90

90:                                               ; preds = %88, %79
  %91 = getelementptr inbounds %struct.df_base_ref, ptr %80, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !193
  tail call void @df_chain_dump(ptr noundef %92, ptr noundef %1)
  %93 = tail call i32 @fputc(i32 10, ptr %1)
  %94 = getelementptr inbounds ptr, ptr %81, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !182
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %79, !llvm.loop !609

97:                                               ; preds = %90, %73, %55, %60
  %98 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 2
  %99 = load ptr, ptr %98, align 8, !tbaa !193
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %47, !llvm.loop !610

101:                                              ; preds = %97, %47, %42, %2
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal void @df_chain_bottom_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #11 !prof !181 {
  %3 = load ptr, ptr @df, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 4
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !313
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %122, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !203
  %13 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !205
  %17 = icmp ugt i32 %16, %12
  tail call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !208
  %20 = zext i32 %12 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !182
  %23 = getelementptr inbounds %struct.df_scan_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !262
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %10
  %28 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 34, i64 1, ptr %1)
  %29 = load ptr, ptr %24, align 8, !tbaa !182
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %41, %31 ], [ %29, %27 ]
  %33 = phi ptr [ %40, %31 ], [ %24, %27 ]
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %32, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !193
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %35)
  %37 = getelementptr inbounds %struct.df_base_ref, ptr %32, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  tail call void @df_chain_dump(ptr noundef %38, ptr noundef %1)
  %39 = tail call i32 @fputc(i32 10, ptr %1)
  %40 = getelementptr inbounds ptr, ptr %33, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !182
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %31, !llvm.loop !611

43:                                               ; preds = %31, %27, %10
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !193
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = icmp eq ptr %46, null
  br i1 %47, label %122, label %48

48:                                               ; preds = %43, %118
  %49 = phi ptr [ %120, %118 ], [ %46, %43 ]
  %50 = load ptr, ptr %44, align 8, !tbaa !193
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !293
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !193
  %55 = icmp eq ptr %49, %54
  br i1 %55, label %122, label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %49, align 8
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -7
  %60 = icmp ult i32 %59, 4
  br i1 %60, label %61, label %118

61:                                               ; preds = %56
  %62 = load ptr, ptr @df, align 8, !tbaa !182
  %63 = getelementptr inbounds %struct.df, ptr %62, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !243
  %65 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !193
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !182
  %70 = getelementptr inbounds %struct.df_insn_info, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !604
  %72 = getelementptr inbounds %struct.df_insn_info, ptr %69, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !276
  %74 = load ptr, ptr %73, align 8, !tbaa !182
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load ptr, ptr %71, align 8, !tbaa !182
  %78 = icmp eq ptr %77, null
  br i1 %78, label %118, label %79

79:                                               ; preds = %76, %61
  %80 = getelementptr inbounds %struct.df_insn_info, ptr %69, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !297
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %81, i32 noundef %66)
  %83 = load ptr, ptr %73, align 8, !tbaa !182
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %99, %79
  %86 = load ptr, ptr %71, align 8, !tbaa !182
  %87 = icmp eq ptr %86, null
  br i1 %87, label %118, label %106

88:                                               ; preds = %79, %99
  %89 = phi ptr [ %104, %99 ], [ %83, %79 ]
  %90 = phi ptr [ %103, %99 ], [ %73, %79 ]
  %91 = getelementptr inbounds %struct.df_base_ref, ptr %89, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !193
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %92)
  %94 = load i32, ptr %89, align 8
  %95 = and i32 %94, 2097152
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %88
  %98 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 11, i64 1, ptr %1)
  br label %99

99:                                               ; preds = %97, %88
  %100 = getelementptr inbounds %struct.df_base_ref, ptr %89, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !193
  tail call void @df_chain_dump(ptr noundef %101, ptr noundef %1)
  %102 = tail call i32 @fputc(i32 10, ptr %1)
  %103 = getelementptr inbounds ptr, ptr %90, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !182
  %105 = icmp eq ptr %104, null
  br i1 %105, label %85, label %88, !llvm.loop !612

106:                                              ; preds = %85, %106
  %107 = phi ptr [ %116, %106 ], [ %86, %85 ]
  %108 = phi ptr [ %115, %106 ], [ %71, %85 ]
  %109 = getelementptr inbounds %struct.df_base_ref, ptr %107, i64 0, i32 6
  %110 = load i32, ptr %109, align 8, !tbaa !193
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %110)
  %112 = getelementptr inbounds %struct.df_base_ref, ptr %107, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !193
  tail call void @df_chain_dump(ptr noundef %113, ptr noundef %1)
  %114 = tail call i32 @fputc(i32 10, ptr %1)
  %115 = getelementptr inbounds ptr, ptr %108, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !182
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %106, !llvm.loop !613

118:                                              ; preds = %106, %85, %56, %76
  %119 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !193
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %48, !llvm.loop !614

122:                                              ; preds = %118, %48, %43, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @df_chain_remove_problem() unnamed_addr #13 !prof !284 !PGOFuncName !615 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 4
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !309
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !616

7:                                                ; preds = %0
  tail call void @free_alloc_pool(ptr noundef nonnull %5) #20
  br label %8

8:                                                ; preds = %7, %0
  %9 = load ptr, ptr @df, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 4
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.dataflow, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  %14 = load ptr, ptr %13, align 8, !tbaa !390
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @bitmap_zero_bits, ptr %14, !prof !616
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !393
  %19 = shl i32 %18, 7
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 3, i64 0
  %21 = load i64, ptr %20, align 8, !tbaa !395
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = or disjoint i32 %19, %23
  %25 = load ptr, ptr @cfun, align 8
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1
  %28 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 10
  br label %29

29:                                               ; preds = %238, %8
  %30 = phi i32 [ 0, %8 ], [ %85, %238 ]
  %31 = phi i64 [ %21, %8 ], [ %239, %238 ]
  %32 = phi ptr [ %16, %8 ], [ %87, %238 ]
  %33 = phi i32 [ %24, %8 ], [ %240, %238 ]
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %49, label %35, !prof !617

35:                                               ; preds = %63, %29
  %36 = phi i32 [ %30, %29 ], [ %64, %63 ]
  %37 = phi i64 [ %31, %29 ], [ %68, %63 ]
  %38 = phi ptr [ %32, %29 ], [ %55, %63 ]
  %39 = phi i32 [ %33, %29 ], [ %65, %63 ]
  %40 = and i64 %37, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %84, !prof !397

42:                                               ; preds = %35, %42
  %43 = phi i32 [ %46, %42 ], [ %39, %35 ]
  %44 = phi i64 [ %45, %42 ], [ %37, %35 ]
  %45 = lshr exact i64 %44, 1
  %46 = add i32 %43, 1
  %47 = and i64 %44, 2
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %42, label %84, !prof !398, !llvm.loop !399

49:                                               ; preds = %29
  %50 = add i32 %33, 63
  %51 = and i32 %50, -64
  %52 = add i32 %30, 1
  br label %53

53:                                               ; preds = %80, %49
  %54 = phi i64 [ %31, %49 ], [ %75, %80 ]
  %55 = phi ptr [ %32, %49 ], [ %78, %80 ]
  %56 = phi i32 [ %51, %49 ], [ %83, %80 ]
  %57 = phi i32 [ %52, %49 ], [ 0, %80 ]
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %74, label %59, !prof !618

59:                                               ; preds = %53
  %60 = add i32 %56, 128
  %61 = shl i32 %57, 6
  %62 = sub i32 %60, %61
  br label %63

63:                                               ; preds = %59, %70
  %64 = phi i32 [ %72, %70 ], [ %57, %59 ]
  %65 = phi i32 [ %71, %70 ], [ %56, %59 ]
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %55, i64 0, i32 3, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !395
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %35, !prof !619

70:                                               ; preds = %63
  %71 = add i32 %65, 64
  %72 = add i32 %64, 1
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %63, !prof !620, !llvm.loop !403

74:                                               ; preds = %70, %53
  %75 = phi i64 [ %54, %53 ], [ %68, %70 ]
  %76 = phi i32 [ %56, %53 ], [ %62, %70 ]
  %77 = phi i32 [ %57, %53 ], [ 2, %70 ]
  %78 = load ptr, ptr %55, align 8, !tbaa !404
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80, !prof !621

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !393
  %83 = shl i32 %82, 7
  br label %53, !llvm.loop !406

84:                                               ; preds = %74, %42, %35
  %85 = phi i32 [ %36, %35 ], [ %36, %42 ], [ %77, %74 ]
  %86 = phi i64 [ %37, %35 ], [ %45, %42 ], [ %75, %74 ]
  %87 = phi ptr [ %38, %35 ], [ %38, %42 ], [ %78, %74 ]
  %88 = phi i32 [ %39, %35 ], [ %46, %42 ], [ %76, %74 ]
  %89 = phi i1 [ false, %35 ], [ false, %42 ], [ true, %74 ]
  br i1 %89, label %241, label %90, !prof !622

90:                                               ; preds = %84
  %91 = load ptr, ptr %26, align 8, !tbaa !213
  %92 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !257
  %94 = zext i32 %88 to i64
  %95 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %93, i64 0, i32 2, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !182
  %97 = load ptr, ptr %10, align 8, !tbaa !182
  %98 = getelementptr inbounds %struct.dataflow, ptr %97, i64 0, i32 6
  %99 = load i32, ptr %98, align 8, !tbaa !313
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %125, label %102, !prof !408

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %105 = load i32, ptr %104, align 8, !tbaa !203
  %106 = load ptr, ptr %103, align 8, !tbaa !182
  %107 = getelementptr inbounds %struct.dataflow, ptr %106, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !205
  %109 = icmp ugt i32 %108, %105
  tail call void @llvm.assume(i1 %109)
  %110 = getelementptr inbounds %struct.dataflow, ptr %106, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !208
  %112 = zext i32 %105 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !182
  %115 = load ptr, ptr %114, align 8, !tbaa !233
  %116 = load ptr, ptr %115, align 8, !tbaa !182
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %102, %118
  %119 = phi ptr [ %123, %118 ], [ %116, %102 ]
  %120 = phi ptr [ %122, %118 ], [ %115, %102 ]
  %121 = getelementptr inbounds %struct.df_base_ref, ptr %119, i64 0, i32 2
  store ptr null, ptr %121, align 8, !tbaa !193
  %122 = getelementptr inbounds ptr, ptr %120, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !182
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %118, !llvm.loop !623

125:                                              ; preds = %118, %102, %90
  %126 = load ptr, ptr %10, align 8, !tbaa !182
  %127 = getelementptr inbounds %struct.dataflow, ptr %126, i64 0, i32 6
  %128 = load i32, ptr %127, align 8, !tbaa !313
  %129 = and i32 %128, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %154, label %131, !prof !413

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %133 = load i32, ptr %132, align 8, !tbaa !203
  %134 = load ptr, ptr %27, align 8, !tbaa !182
  %135 = getelementptr inbounds %struct.dataflow, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !205
  %137 = icmp ugt i32 %136, %133
  tail call void @llvm.assume(i1 %137)
  %138 = getelementptr inbounds %struct.dataflow, ptr %134, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !208
  %140 = zext i32 %133 to i64
  %141 = getelementptr inbounds ptr, ptr %139, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !182
  %143 = getelementptr inbounds %struct.df_scan_bb_info, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !262
  %145 = load ptr, ptr %144, align 8, !tbaa !182
  %146 = icmp eq ptr %145, null
  br i1 %146, label %154, label %147, !prof !624

147:                                              ; preds = %131, %147
  %148 = phi ptr [ %152, %147 ], [ %145, %131 ]
  %149 = phi ptr [ %151, %147 ], [ %144, %131 ]
  %150 = getelementptr inbounds %struct.df_base_ref, ptr %148, i64 0, i32 2
  store ptr null, ptr %150, align 8, !tbaa !193
  %151 = getelementptr inbounds ptr, ptr %149, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !182
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %147, !prof !625, !llvm.loop !626

154:                                              ; preds = %147, %131, %125
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 7
  %156 = load ptr, ptr %155, align 8, !tbaa !193
  %157 = load ptr, ptr %156, align 8, !tbaa !193
  %158 = icmp eq ptr %157, null
  br i1 %158, label %238, label %159, !prof !429

159:                                              ; preds = %154, %234
  %160 = phi ptr [ %236, %234 ], [ %157, %154 ]
  %161 = load ptr, ptr %155, align 8, !tbaa !193
  %162 = getelementptr inbounds %struct.rtl_bb_info, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !293
  %164 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1, i32 0, i32 0, i64 2
  %165 = load ptr, ptr %164, align 8, !tbaa !193
  %166 = icmp eq ptr %160, %165
  br i1 %166, label %238, label %167, !prof !430

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !193
  %170 = load i32, ptr %160, align 8
  %171 = and i32 %170, 65535
  %172 = add nsw i32 %171, -7
  %173 = icmp ult i32 %172, 4
  br i1 %173, label %174, label %234, !prof !431

174:                                              ; preds = %167
  %175 = load ptr, ptr %10, align 8, !tbaa !182
  %176 = getelementptr inbounds %struct.dataflow, ptr %175, i64 0, i32 6
  %177 = load i32, ptr %176, align 8, !tbaa !313
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %197, label %180, !prof !603

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 10
  %182 = load ptr, ptr %181, align 8, !tbaa !243
  %183 = zext i32 %169 to i64
  %184 = getelementptr inbounds ptr, ptr %182, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !182
  %186 = getelementptr inbounds %struct.df_insn_info, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !244
  %188 = load ptr, ptr %187, align 8, !tbaa !182
  %189 = icmp eq ptr %188, null
  br i1 %189, label %197, label %190

190:                                              ; preds = %180, %190
  %191 = phi ptr [ %195, %190 ], [ %188, %180 ]
  %192 = phi ptr [ %194, %190 ], [ %187, %180 ]
  %193 = getelementptr inbounds %struct.df_base_ref, ptr %191, i64 0, i32 2
  store ptr null, ptr %193, align 8, !tbaa !193
  %194 = getelementptr inbounds ptr, ptr %192, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !182
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %190, !llvm.loop !627

197:                                              ; preds = %190, %180, %174
  %198 = load ptr, ptr %10, align 8, !tbaa !182
  %199 = getelementptr inbounds %struct.dataflow, ptr %198, i64 0, i32 6
  %200 = load i32, ptr %199, align 8, !tbaa !313
  %201 = and i32 %200, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %234, label %203, !prof !628

203:                                              ; preds = %197
  %204 = load ptr, ptr %28, align 8, !tbaa !243
  %205 = zext i32 %169 to i64
  %206 = getelementptr inbounds ptr, ptr %204, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !182
  %208 = getelementptr inbounds %struct.df_insn_info, ptr %207, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !276
  %210 = load ptr, ptr %209, align 8, !tbaa !182
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212, !prof !629

212:                                              ; preds = %203, %212
  %213 = phi ptr [ %217, %212 ], [ %210, %203 ]
  %214 = phi ptr [ %216, %212 ], [ %209, %203 ]
  %215 = getelementptr inbounds %struct.df_base_ref, ptr %213, i64 0, i32 2
  store ptr null, ptr %215, align 8, !tbaa !193
  %216 = getelementptr inbounds ptr, ptr %214, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !182
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %212, !prof !630, !llvm.loop !631

219:                                              ; preds = %212, %203
  %220 = load ptr, ptr %28, align 8, !tbaa !243
  %221 = getelementptr inbounds ptr, ptr %220, i64 %205
  %222 = load ptr, ptr %221, align 8, !tbaa !182
  %223 = getelementptr inbounds %struct.df_insn_info, ptr %222, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !604
  %225 = load ptr, ptr %224, align 8, !tbaa !182
  %226 = icmp eq ptr %225, null
  br i1 %226, label %234, label %227, !prof !632

227:                                              ; preds = %219, %227
  %228 = phi ptr [ %232, %227 ], [ %225, %219 ]
  %229 = phi ptr [ %231, %227 ], [ %224, %219 ]
  %230 = getelementptr inbounds %struct.df_base_ref, ptr %228, i64 0, i32 2
  store ptr null, ptr %230, align 8, !tbaa !193
  %231 = getelementptr inbounds ptr, ptr %229, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !182
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %227, !prof !633, !llvm.loop !634

234:                                              ; preds = %227, %219, %167, %197
  %235 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 0, i64 2
  %236 = load ptr, ptr %235, align 8, !tbaa !193
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %159, !prof !432, !llvm.loop !635

238:                                              ; preds = %159, %234, %154
  %239 = lshr i64 %86, 1
  %240 = add i32 %88, 1
  br label %29, !llvm.loop !636

241:                                              ; preds = %84
  %242 = load ptr, ptr %10, align 8, !tbaa !182
  %243 = getelementptr inbounds %struct.dataflow, ptr %242, i64 0, i32 4
  %244 = load ptr, ptr %243, align 8, !tbaa !251
  tail call void @bitmap_clear(ptr noundef %244) #20
  %245 = load ptr, ptr @df, align 8, !tbaa !182
  %246 = getelementptr inbounds %struct.df, ptr %245, i64 0, i32 1, i64 4
  %247 = load ptr, ptr %246, align 8, !tbaa !182
  %248 = getelementptr inbounds %struct.dataflow, ptr %247, i64 0, i32 3
  store ptr null, ptr %248, align 8, !tbaa !309
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @df_chain_create_bb_process_use(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !242 !PGOFuncName !637 {
  %3 = load ptr, ptr %1, align 8, !tbaa !182
  %4 = icmp eq ptr %3, null
  br i1 %4, label %169, label %5, !prof !582

5:                                                ; preds = %2, %165
  %6 = phi ptr [ %167, %165 ], [ %3, %2 ]
  %7 = phi ptr [ %166, %165 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !193
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 27
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  %15 = icmp ugt i32 %9, 52
  %16 = select i1 %14, i1 true, i1 %15, !prof !583
  br i1 %16, label %17, label %165, !prof !583

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 3, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !240
  %20 = zext i32 %9 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !197
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %165, label %24, !prof !584

24:                                               ; preds = %17
  %25 = load i32, ptr %6, align 8
  %26 = and i32 %25, 131072
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %165, !prof !583

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 3, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !237
  %31 = getelementptr inbounds i32, ptr %30, i64 %20
  %32 = load i32, ptr %31, align 4, !tbaa !197
  %33 = add i32 %22, -1
  %34 = add i32 %33, %32
  %35 = lshr i32 %32, 7
  br label %36

36:                                               ; preds = %40, %28
  %37 = phi ptr [ %0, %28 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !585

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bitmap_element_def, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !393
  %43 = icmp ult i32 %42, %35
  br i1 %43, label %36, label %44, !prof !586, !llvm.loop !587

44:                                               ; preds = %36, %40
  %45 = phi ptr [ %38, %40 ], [ @bitmap_zero_bits, %36 ]
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !393
  %48 = lshr i32 %32, 7
  %49 = icmp eq i32 %47, %48
  %50 = shl i32 %47, 7
  %51 = select i1 %49, i32 %32, i32 %50, !prof !588
  %52 = lshr i32 %51, 6
  %53 = and i32 %52, 1
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !395
  %57 = and i32 %51, 63
  %58 = zext nneg i32 %57 to i64
  %59 = lshr i64 %56, %58
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = add i32 %51, %61
  br label %63

63:                                               ; preds = %162, %44
  %64 = phi i32 [ %53, %44 ], [ %119, %162 ]
  %65 = phi i64 [ %59, %44 ], [ %163, %162 ]
  %66 = phi ptr [ %45, %44 ], [ %121, %162 ]
  %67 = phi i32 [ %62, %44 ], [ %164, %162 ]
  %68 = icmp eq i64 %65, 0
  br i1 %68, label %83, label %69, !prof !589

69:                                               ; preds = %97, %63
  %70 = phi i32 [ %64, %63 ], [ %98, %97 ]
  %71 = phi i64 [ %65, %63 ], [ %102, %97 ]
  %72 = phi ptr [ %66, %63 ], [ %89, %97 ]
  %73 = phi i32 [ %67, %63 ], [ %99, %97 ]
  %74 = and i64 %71, 1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %118, !prof !590

76:                                               ; preds = %69, %76
  %77 = phi i32 [ %80, %76 ], [ %73, %69 ]
  %78 = phi i64 [ %79, %76 ], [ %71, %69 ]
  %79 = lshr exact i64 %78, 1
  %80 = add i32 %77, 1
  %81 = and i64 %78, 2
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %76, label %118, !prof !591, !llvm.loop !399

83:                                               ; preds = %63
  %84 = add i32 %67, 63
  %85 = and i32 %84, -64
  %86 = add i32 %64, 1
  br label %87

87:                                               ; preds = %114, %83
  %88 = phi i64 [ %65, %83 ], [ %109, %114 ]
  %89 = phi ptr [ %66, %83 ], [ %112, %114 ]
  %90 = phi i32 [ %85, %83 ], [ %117, %114 ]
  %91 = phi i32 [ %86, %83 ], [ 0, %114 ]
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %108, label %93, !prof !592

93:                                               ; preds = %87
  %94 = add i32 %90, 128
  %95 = shl i32 %91, 6
  %96 = sub i32 %94, %95
  br label %97

97:                                               ; preds = %93, %104
  %98 = phi i32 [ %106, %104 ], [ %91, %93 ]
  %99 = phi i32 [ %105, %104 ], [ %90, %93 ]
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds %struct.bitmap_element_def, ptr %89, i64 0, i32 3, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !395
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %69, !prof !593

104:                                              ; preds = %97
  %105 = add i32 %99, 64
  %106 = add i32 %98, 1
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %97, !prof !594, !llvm.loop !403

108:                                              ; preds = %104, %87
  %109 = phi i64 [ %88, %87 ], [ %102, %104 ]
  %110 = phi i32 [ %90, %87 ], [ %96, %104 ]
  %111 = phi i32 [ %91, %87 ], [ 2, %104 ]
  %112 = load ptr, ptr %89, align 8, !tbaa !404
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114, !prof !595

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.bitmap_element_def, ptr %112, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !393
  %117 = shl i32 %116, 7
  br label %87, !llvm.loop !406

118:                                              ; preds = %108, %76, %69
  %119 = phi i32 [ %70, %69 ], [ %70, %76 ], [ %111, %108 ]
  %120 = phi i64 [ %71, %69 ], [ %79, %76 ], [ %109, %108 ]
  %121 = phi ptr [ %72, %69 ], [ %72, %76 ], [ %112, %108 ]
  %122 = phi i32 [ %73, %69 ], [ %80, %76 ], [ %110, %108 ]
  %123 = phi i1 [ false, %69 ], [ false, %76 ], [ true, %108 ]
  br i1 %123, label %165, label %124, !prof !638

124:                                              ; preds = %118
  %125 = icmp ugt i32 %122, %34
  br i1 %125, label %165, label %126, !prof !639

126:                                              ; preds = %124
  %127 = load ptr, ptr @df, align 8, !tbaa !182
  %128 = getelementptr inbounds %struct.df, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !597
  %130 = zext i32 %122 to i64
  %131 = getelementptr inbounds ptr, ptr %129, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !182
  %133 = getelementptr inbounds %struct.df, ptr %127, i64 0, i32 1, i64 4
  %134 = load ptr, ptr %133, align 8, !tbaa !182
  %135 = getelementptr inbounds %struct.dataflow, ptr %134, i64 0, i32 6
  %136 = load i32, ptr %135, align 8, !tbaa !313
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %146, label %139, !prof !598

139:                                              ; preds = %126
  %140 = getelementptr inbounds %struct.df_base_ref, ptr %132, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !193
  %142 = getelementptr inbounds %struct.dataflow, ptr %134, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !309
  %144 = tail call ptr @pool_alloc(ptr noundef %143) #20
  store ptr %144, ptr %140, align 8, !tbaa !193
  %145 = getelementptr inbounds %struct.df_link, ptr %144, i64 0, i32 1
  store ptr %141, ptr %145, align 8, !tbaa !223
  store ptr %6, ptr %144, align 8, !tbaa !219
  br label %146

146:                                              ; preds = %139, %126
  %147 = load ptr, ptr @df, align 8, !tbaa !182
  %148 = getelementptr inbounds %struct.df, ptr %147, i64 0, i32 1, i64 4
  %149 = load ptr, ptr %148, align 8, !tbaa !182
  %150 = getelementptr inbounds %struct.dataflow, ptr %149, i64 0, i32 6
  %151 = load i32, ptr %150, align 8, !tbaa !313
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154, !prof !599

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !193
  %157 = getelementptr inbounds %struct.dataflow, ptr %149, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !309
  %159 = tail call ptr @pool_alloc(ptr noundef %158) #20
  store ptr %159, ptr %155, align 8, !tbaa !193
  %160 = getelementptr inbounds %struct.df_link, ptr %159, i64 0, i32 1
  store ptr %156, ptr %160, align 8, !tbaa !223
  store ptr %132, ptr %159, align 8, !tbaa !219
  br label %161

161:                                              ; preds = %146, %154
  br i1 %125, label %165, label %162, !prof !639

162:                                              ; preds = %161
  %163 = lshr i64 %120, 1
  %164 = add i32 %122, 1
  br label %63, !llvm.loop !600

165:                                              ; preds = %124, %161, %118, %17, %24, %5
  %166 = getelementptr inbounds ptr, ptr %7, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !182
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %5, !prof !601, !llvm.loop !602

169:                                              ; preds = %165, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_alloc(ptr nocapture readnone %0) #12 !prof !181 {
  %2 = tail call i32 @max_reg_num() #20
  %3 = tail call ptr @xmalloc(i64 noundef 144) #20
  %4 = load ptr, ptr @df, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 5
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 5
  store ptr %3, ptr %7, align 8, !tbaa !314
  %8 = load ptr, ptr %5, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !309
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.43, i64 noundef 32, i64 noundef 50) #20
  %14 = load ptr, ptr @df, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 5
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  store ptr %13, ptr %17, align 8, !tbaa !309
  br label %18

18:                                               ; preds = %12, %1
  %19 = load ptr, ptr @df, align 8, !tbaa !182
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 5
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  tail call void @df_grow_bb_info(ptr noundef %21)
  %22 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %3, i64 0, i32 5
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %22) #20
  %23 = zext i32 %2 to i64
  %24 = shl nuw nsw i64 %23, 2
  %25 = tail call ptr @xmalloc(i64 noundef %24) #20
  %26 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %3, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !315
  %27 = tail call ptr @xmalloc(i64 noundef %24) #20
  %28 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %3, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !319
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %22) #20
  %30 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %3, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !640
  %31 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %22) #20
  store ptr %31, ptr %3, align 8, !tbaa !641
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %22) #20
  %33 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %3, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !642
  %34 = load ptr, ptr @cfun, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !213
  %37 = load ptr, ptr %36, align 8, !tbaa !643
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !644
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !509
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %96, label %43

43:                                               ; preds = %18, %79
  %44 = phi ptr [ %89, %79 ], [ %39, %18 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = load ptr, ptr %46, align 8, !tbaa !193
  %48 = icmp eq ptr %47, null
  br i1 %48, label %79, label %49

49:                                               ; preds = %43, %75
  %50 = phi ptr [ %77, %75 ], [ %47, %43 ]
  %51 = load ptr, ptr %45, align 8, !tbaa !193
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !293
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !193
  %56 = icmp eq ptr %50, %55
  br i1 %56, label %79, label %57

57:                                               ; preds = %49
  %58 = load i32, ptr %50, align 8
  %59 = and i32 %58, 65535
  %60 = add nsw i32 %59, -7
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load ptr, ptr @df, align 8, !tbaa !182
  %64 = getelementptr inbounds %struct.df, ptr %63, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !243
  %66 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !193
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %65, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !182
  %71 = getelementptr inbounds %struct.df_insn_info, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !244
  tail call fastcc void @df_byte_lr_check_regs(ptr noundef %72)
  %73 = getelementptr inbounds %struct.df_insn_info, ptr %70, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !276
  tail call fastcc void @df_byte_lr_check_regs(ptr noundef %74)
  br label %75

75:                                               ; preds = %57, %62
  %76 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !193
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %49, !llvm.loop !645

79:                                               ; preds = %49, %75, %43
  %80 = load ptr, ptr @df, align 8, !tbaa !182
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 1, i64 5
  %82 = load ptr, ptr %81, align 8, !tbaa !182
  %83 = getelementptr inbounds %struct.dataflow, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !251
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !203
  %87 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %84, i32 noundef %86) #20
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !644
  %90 = load ptr, ptr @cfun, align 8, !tbaa !182
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !213
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !509
  %95 = icmp eq ptr %89, %94
  br i1 %95, label %96, label %43, !llvm.loop !646

96:                                               ; preds = %79, %18
  %97 = load ptr, ptr @df, align 8, !tbaa !182
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 1, i64 5
  %99 = load ptr, ptr %98, align 8, !tbaa !182
  %100 = getelementptr inbounds %struct.dataflow, ptr %99, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !251
  %102 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %101, i32 noundef 0) #20
  %103 = load ptr, ptr @df, align 8, !tbaa !182
  %104 = getelementptr inbounds %struct.df, ptr %103, i64 0, i32 1, i64 5
  %105 = load ptr, ptr %104, align 8, !tbaa !182
  %106 = getelementptr inbounds %struct.dataflow, ptr %105, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !251
  %108 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %107, i32 noundef 1) #20
  %109 = icmp eq i32 %2, 0
  br i1 %109, label %139, label %110

110:                                              ; preds = %96
  %111 = zext i32 %2 to i64
  br label %112

112:                                              ; preds = %110, %132
  %113 = phi i64 [ 0, %110 ], [ %137, %132 ]
  %114 = phi i32 [ 0, %110 ], [ %136, %132 ]
  %115 = load ptr, ptr %26, align 8, !tbaa !315
  %116 = getelementptr inbounds i32, ptr %115, i64 %113
  store i32 %114, ptr %116, align 4, !tbaa !197
  %117 = load ptr, ptr %33, align 8, !tbaa !642
  %118 = trunc i64 %113 to i32
  %119 = tail call i32 @bitmap_bit_p(ptr noundef %117, i32 noundef %118) #20
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %112
  %122 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !182
  %123 = getelementptr inbounds ptr, ptr %122, i64 %113
  %124 = load ptr, ptr %123, align 8, !tbaa !182
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !193
  %131 = zext i8 %130 to i32
  br label %132

132:                                              ; preds = %112, %121
  %133 = phi i32 [ %131, %121 ], [ 1, %112 ]
  %134 = load ptr, ptr %28, align 8, !tbaa !319
  %135 = getelementptr inbounds i32, ptr %134, i64 %113
  store i32 %133, ptr %135, align 4, !tbaa !197
  %136 = add i32 %133, %114
  %137 = add nuw nsw i64 %113, 1
  %138 = icmp eq i64 %137, %111
  br i1 %138, label %139, label %112, !llvm.loop !647

139:                                              ; preds = %132, %96
  %140 = load ptr, ptr %30, align 8, !tbaa !640
  %141 = load ptr, ptr @df, align 8, !tbaa !182
  %142 = getelementptr inbounds %struct.df, ptr %141, i64 0, i32 13
  %143 = load ptr, ptr %142, align 8, !tbaa !487
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %140, ptr noundef %143)
  %144 = load ptr, ptr %3, align 8, !tbaa !641
  %145 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !182
  tail call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %144, ptr noundef %145)
  %146 = load ptr, ptr @df, align 8, !tbaa !182
  %147 = getelementptr inbounds %struct.df, ptr %146, i64 0, i32 1, i64 5
  %148 = load ptr, ptr %147, align 8, !tbaa !182
  %149 = getelementptr inbounds %struct.dataflow, ptr %148, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !251
  %151 = load ptr, ptr %150, align 8, !tbaa !390
  %152 = icmp eq ptr %151, null
  %153 = select i1 %152, ptr @bitmap_zero_bits, ptr %151
  %154 = getelementptr inbounds %struct.bitmap_element_def, ptr %153, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !393
  %156 = shl i32 %155, 7
  %157 = getelementptr inbounds %struct.bitmap_element_def, ptr %153, i64 0, i32 3, i64 0
  %158 = load i64, ptr %157, align 8, !tbaa !395
  %159 = icmp eq i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = or disjoint i32 %156, %160
  br label %162

162:                                              ; preds = %275, %139
  %163 = phi i64 [ %158, %139 ], [ %276, %275 ]
  %164 = phi i32 [ 0, %139 ], [ %219, %275 ]
  %165 = phi i32 [ %161, %139 ], [ %277, %275 ]
  %166 = phi ptr [ %153, %139 ], [ %221, %275 ]
  %167 = icmp eq i64 %163, 0
  br i1 %167, label %182, label %168

168:                                              ; preds = %196, %162
  %169 = phi i64 [ %163, %162 ], [ %201, %196 ]
  %170 = phi i32 [ %164, %162 ], [ %197, %196 ]
  %171 = phi i32 [ %165, %162 ], [ %198, %196 ]
  %172 = phi ptr [ %166, %162 ], [ %189, %196 ]
  %173 = and i64 %169, 1
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %217

175:                                              ; preds = %168, %175
  %176 = phi i32 [ %179, %175 ], [ %171, %168 ]
  %177 = phi i64 [ %178, %175 ], [ %169, %168 ]
  %178 = lshr exact i64 %177, 1
  %179 = add i32 %176, 1
  %180 = and i64 %177, 2
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %175, label %217, !llvm.loop !399

182:                                              ; preds = %162
  %183 = add i32 %165, 63
  %184 = and i32 %183, -64
  %185 = add i32 %164, 1
  br label %186

186:                                              ; preds = %213, %182
  %187 = phi i64 [ %163, %182 ], [ %208, %213 ]
  %188 = phi i32 [ %184, %182 ], [ %216, %213 ]
  %189 = phi ptr [ %166, %182 ], [ %211, %213 ]
  %190 = phi i32 [ %185, %182 ], [ 0, %213 ]
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %207, label %192

192:                                              ; preds = %186
  %193 = add i32 %188, 128
  %194 = shl i32 %190, 6
  %195 = sub i32 %193, %194
  br label %196

196:                                              ; preds = %192, %203
  %197 = phi i32 [ %205, %203 ], [ %190, %192 ]
  %198 = phi i32 [ %204, %203 ], [ %188, %192 ]
  %199 = zext i32 %197 to i64
  %200 = getelementptr inbounds %struct.bitmap_element_def, ptr %189, i64 0, i32 3, i64 %199
  %201 = load i64, ptr %200, align 8, !tbaa !395
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %168

203:                                              ; preds = %196
  %204 = add i32 %198, 64
  %205 = add i32 %197, 1
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %196, !llvm.loop !403

207:                                              ; preds = %203, %186
  %208 = phi i64 [ %187, %186 ], [ %201, %203 ]
  %209 = phi i32 [ %188, %186 ], [ %195, %203 ]
  %210 = phi i32 [ %190, %186 ], [ 2, %203 ]
  %211 = load ptr, ptr %189, align 8, !tbaa !404
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.bitmap_element_def, ptr %211, i64 0, i32 2
  %215 = load i32, ptr %214, align 8, !tbaa !393
  %216 = shl i32 %215, 7
  br label %186, !llvm.loop !406

217:                                              ; preds = %207, %175, %168
  %218 = phi i64 [ %169, %168 ], [ %178, %175 ], [ %208, %207 ]
  %219 = phi i32 [ %170, %168 ], [ %170, %175 ], [ %210, %207 ]
  %220 = phi i32 [ %171, %168 ], [ %179, %175 ], [ %209, %207 ]
  %221 = phi ptr [ %172, %168 ], [ %172, %175 ], [ %211, %207 ]
  %222 = phi i1 [ false, %168 ], [ false, %175 ], [ true, %207 ]
  %223 = load ptr, ptr @df, align 8, !tbaa !182
  %224 = getelementptr inbounds %struct.df, ptr %223, i64 0, i32 1, i64 5
  %225 = load ptr, ptr %224, align 8, !tbaa !182
  br i1 %222, label %278, label %226

226:                                              ; preds = %217
  %227 = getelementptr inbounds %struct.dataflow, ptr %225, i64 0, i32 2
  %228 = load i32, ptr %227, align 8, !tbaa !205
  %229 = icmp ugt i32 %228, %220
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.dataflow, ptr %225, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !208
  %233 = zext i32 %220 to i64
  %234 = getelementptr inbounds ptr, ptr %232, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !182
  br label %236

236:                                              ; preds = %226, %230
  %237 = phi ptr [ %235, %230 ], [ null, %226 ]
  %238 = icmp eq ptr %237, null
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr %237, align 8, !tbaa !648
  tail call void @bitmap_clear(ptr noundef %240) #20
  %241 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %237, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !650
  tail call void @bitmap_clear(ptr noundef %242) #20
  br label %275

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.dataflow, ptr %225, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !309
  %246 = tail call ptr @pool_alloc(ptr noundef %245) #20
  %247 = load ptr, ptr @df, align 8, !tbaa !182
  %248 = getelementptr inbounds %struct.df, ptr %247, i64 0, i32 1, i64 5
  %249 = load ptr, ptr %248, align 8, !tbaa !182
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2415, ptr noundef nonnull @.str.1) #20
  br label %252

252:                                              ; preds = %251, %243
  %253 = load ptr, ptr @df, align 8, !tbaa !182
  %254 = getelementptr inbounds %struct.df, ptr %253, i64 0, i32 1, i64 5
  %255 = load ptr, ptr %254, align 8, !tbaa !182
  %256 = getelementptr inbounds %struct.dataflow, ptr %255, i64 0, i32 2
  %257 = load i32, ptr %256, align 8, !tbaa !205
  %258 = icmp ugt i32 %257, %220
  br i1 %258, label %260, label %259

259:                                              ; preds = %252
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2416, ptr noundef nonnull @.str.1) #20
  br label %260

260:                                              ; preds = %252, %259
  %261 = load ptr, ptr @df, align 8, !tbaa !182
  %262 = getelementptr inbounds %struct.df, ptr %261, i64 0, i32 1, i64 5
  %263 = load ptr, ptr %262, align 8, !tbaa !182
  %264 = getelementptr inbounds %struct.dataflow, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !208
  %266 = zext i32 %220 to i64
  %267 = getelementptr inbounds ptr, ptr %265, i64 %266
  store ptr %246, ptr %267, align 8, !tbaa !182
  %268 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %22) #20
  %269 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %246, i64 0, i32 1
  store ptr %268, ptr %269, align 8, !tbaa !650
  %270 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %22) #20
  store ptr %270, ptr %246, align 8, !tbaa !648
  %271 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %22) #20
  %272 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %246, i64 0, i32 2
  store ptr %271, ptr %272, align 8, !tbaa !651
  %273 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %22) #20
  %274 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %246, i64 0, i32 3
  store ptr %273, ptr %274, align 8, !tbaa !652
  br label %275

275:                                              ; preds = %260, %239
  %276 = lshr i64 %218, 1
  %277 = add i32 %220, 1
  br label %162, !llvm.loop !653

278:                                              ; preds = %217
  %279 = getelementptr inbounds %struct.dataflow, ptr %225, i64 0, i32 9
  store i8 1, ptr %279, align 2, !tbaa !417
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_reset(ptr nocapture noundef readonly %0) #12 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %91, %1
  %14 = phi i64 [ %9, %1 ], [ %96, %91 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %91 ]
  %16 = phi i32 [ %12, %1 ], [ %97, %91 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %91 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %98, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 5
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !208
  %84 = zext i32 %71 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ null, %74 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2589, ptr noundef nonnull @.str.1) #20
  br label %91

91:                                               ; preds = %87, %90
  %92 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %88, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !651
  tail call void @bitmap_clear(ptr noundef %93) #20
  %94 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %88, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !652
  tail call void @bitmap_clear(ptr noundef %95) #20
  %96 = lshr i64 %69, 1
  %97 = add i32 %71, 1
  br label %13, !llvm.loop !654

98:                                               ; preds = %68
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #12 !prof !181 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !650
  tail call void @bitmap_obstack_free(ptr noundef %6) #20
  store ptr null, ptr %5, align 8, !tbaa !650
  %7 = load ptr, ptr %1, align 8, !tbaa !648
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  store ptr null, ptr %1, align 8, !tbaa !648
  %8 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !651
  tail call void @bitmap_obstack_free(ptr noundef %9) #20
  store ptr null, ptr %8, align 8, !tbaa !651
  %10 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !652
  tail call void @bitmap_obstack_free(ptr noundef %11) #20
  store ptr null, ptr %10, align 8, !tbaa !652
  %12 = load ptr, ptr @df, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !309
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %1) #20
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_local_compute(ptr nocapture readnone %0) #12 !prof !181 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @df, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 5
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !251
  %11 = load ptr, ptr %10, align 8, !tbaa !390
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @bitmap_zero_bits, ptr %11
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !393
  %16 = shl i32 %15, 7
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 3, i64 0
  %18 = load i64, ptr %17, align 8, !tbaa !395
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = or disjoint i32 %16, %20
  br label %22

22:                                               ; preds = %351, %1
  %23 = phi i64 [ %18, %1 ], [ %352, %351 ]
  %24 = phi i32 [ 0, %1 ], [ %79, %351 ]
  %25 = phi i32 [ %21, %1 ], [ %353, %351 ]
  %26 = phi ptr [ %13, %1 ], [ %81, %351 ]
  %27 = icmp eq i64 %23, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %56, %22
  %29 = phi i64 [ %23, %22 ], [ %61, %56 ]
  %30 = phi i32 [ %24, %22 ], [ %57, %56 ]
  %31 = phi i32 [ %25, %22 ], [ %58, %56 ]
  %32 = phi ptr [ %26, %22 ], [ %49, %56 ]
  %33 = and i64 %29, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %28, %35
  %36 = phi i32 [ %39, %35 ], [ %31, %28 ]
  %37 = phi i64 [ %38, %35 ], [ %29, %28 ]
  %38 = lshr exact i64 %37, 1
  %39 = add i32 %36, 1
  %40 = and i64 %37, 2
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %35, label %77, !llvm.loop !399

42:                                               ; preds = %22
  %43 = add i32 %25, 63
  %44 = and i32 %43, -64
  %45 = add i32 %24, 1
  br label %46

46:                                               ; preds = %73, %42
  %47 = phi i64 [ %23, %42 ], [ %68, %73 ]
  %48 = phi i32 [ %44, %42 ], [ %76, %73 ]
  %49 = phi ptr [ %26, %42 ], [ %71, %73 ]
  %50 = phi i32 [ %45, %42 ], [ 0, %73 ]
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %67, label %52

52:                                               ; preds = %46
  %53 = add i32 %48, 128
  %54 = shl i32 %50, 6
  %55 = sub i32 %53, %54
  br label %56

56:                                               ; preds = %52, %63
  %57 = phi i32 [ %65, %63 ], [ %50, %52 ]
  %58 = phi i32 [ %64, %63 ], [ %48, %52 ]
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds %struct.bitmap_element_def, ptr %49, i64 0, i32 3, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !395
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %28

63:                                               ; preds = %56
  %64 = add i32 %58, 64
  %65 = add i32 %57, 1
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %56, !llvm.loop !403

67:                                               ; preds = %63, %46
  %68 = phi i64 [ %47, %46 ], [ %61, %63 ]
  %69 = phi i32 [ %48, %46 ], [ %55, %63 ]
  %70 = phi i32 [ %50, %46 ], [ 2, %63 ]
  %71 = load ptr, ptr %49, align 8, !tbaa !404
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %71, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !393
  %76 = shl i32 %75, 7
  br label %46, !llvm.loop !406

77:                                               ; preds = %67, %35, %28
  %78 = phi i64 [ %29, %28 ], [ %38, %35 ], [ %68, %67 ]
  %79 = phi i32 [ %30, %28 ], [ %30, %35 ], [ %70, %67 ]
  %80 = phi i32 [ %31, %28 ], [ %39, %35 ], [ %69, %67 ]
  %81 = phi ptr [ %32, %28 ], [ %32, %35 ], [ %71, %67 ]
  %82 = phi i1 [ false, %28 ], [ false, %35 ], [ true, %67 ]
  br i1 %82, label %354, label %83

83:                                               ; preds = %77
  %84 = icmp eq i32 %80, 1
  %85 = load ptr, ptr @df, align 8, !tbaa !182
  %86 = getelementptr inbounds %struct.df, ptr %85, i64 0, i32 1, i64 5
  %87 = load ptr, ptr %86, align 8, !tbaa !182
  br i1 %84, label %88, label %100

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.dataflow, ptr %87, i64 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !205
  %91 = icmp ugt i32 %90, 1
  call void @llvm.assume(i1 %91)
  %92 = getelementptr inbounds %struct.dataflow, ptr %87, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !208
  %94 = getelementptr inbounds ptr, ptr %93, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !182
  %96 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !650
  %98 = getelementptr inbounds %struct.df, ptr %85, i64 0, i32 17
  %99 = load ptr, ptr %98, align 8, !tbaa !492
  call fastcc void @df_byte_lr_expand_bitmap(ptr noundef %97, ptr noundef %99)
  br label %351

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.dataflow, ptr %87, i64 0, i32 5
  %102 = load ptr, ptr %101, align 8, !tbaa !314
  %103 = load ptr, ptr @cfun, align 8, !tbaa !182
  %104 = getelementptr inbounds %struct.function, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !213
  %106 = getelementptr inbounds %struct.control_flow_graph, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !257
  %108 = zext i32 %80 to i64
  %109 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %107, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !182
  %111 = getelementptr inbounds %struct.dataflow, ptr %87, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !205
  %113 = icmp ugt i32 %112, %80
  br i1 %113, label %114, label %119

114:                                              ; preds = %100
  %115 = getelementptr inbounds %struct.dataflow, ptr %87, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !208
  %117 = getelementptr inbounds ptr, ptr %116, i64 %108
  %118 = load ptr, ptr %117, align 8, !tbaa !182
  br label %119

119:                                              ; preds = %114, %100
  %120 = phi ptr [ %118, %114 ], [ null, %100 ]
  %121 = getelementptr inbounds %struct.df, ptr %85, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !182
  %123 = getelementptr inbounds %struct.dataflow, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !205
  %125 = icmp ugt i32 %124, %80
  call void @llvm.assume(i1 %125)
  %126 = getelementptr inbounds %struct.dataflow, ptr %122, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !208
  %128 = getelementptr inbounds ptr, ptr %127, i64 %108
  %129 = load ptr, ptr %128, align 8, !tbaa !182
  %130 = load ptr, ptr %129, align 8, !tbaa !233
  %131 = load ptr, ptr %130, align 8, !tbaa !182
  %132 = icmp eq ptr %131, null
  br i1 %132, label %159, label %133

133:                                              ; preds = %119
  %134 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 3
  %135 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 4
  %136 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %120, i64 0, i32 1
  br label %137

137:                                              ; preds = %133, %155
  %138 = phi ptr [ %131, %133 ], [ %157, %155 ]
  %139 = phi ptr [ %130, %133 ], [ %156, %155 ]
  %140 = load i32, ptr %138, align 8
  %141 = and i32 %140, 131072
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.df_base_ref, ptr %138, i64 0, i32 6
  %145 = load i32, ptr %144, align 8, !tbaa !193
  %146 = load ptr, ptr %134, align 8, !tbaa !315
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds i32, ptr %146, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !197
  %150 = load ptr, ptr %135, align 8, !tbaa !319
  %151 = getelementptr inbounds i32, ptr %150, i64 %147
  %152 = load i32, ptr %151, align 4, !tbaa !197
  %153 = load ptr, ptr %120, align 8, !tbaa !648
  call void @bitmap_set_range(ptr noundef %153, i32 noundef %149, i32 noundef %152) #20
  %154 = load ptr, ptr %136, align 8, !tbaa !650
  call void @bitmap_clear_range(ptr noundef %154, i32 noundef %149, i32 noundef %152) #20
  br label %155

155:                                              ; preds = %143, %137
  %156 = getelementptr inbounds ptr, ptr %139, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !182
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %137, !llvm.loop !655

159:                                              ; preds = %155, %119
  %160 = load ptr, ptr @df, align 8, !tbaa !182
  %161 = getelementptr inbounds %struct.df, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !182
  %163 = getelementptr inbounds %struct.dataflow, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 8, !tbaa !205
  %165 = icmp ugt i32 %164, %80
  call void @llvm.assume(i1 %165)
  %166 = getelementptr inbounds %struct.dataflow, ptr %162, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !208
  %168 = getelementptr inbounds ptr, ptr %167, i64 %108
  %169 = load ptr, ptr %168, align 8, !tbaa !182
  %170 = getelementptr inbounds %struct.df_scan_bb_info, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !262
  %172 = load ptr, ptr %171, align 8, !tbaa !182
  %173 = icmp eq ptr %172, null
  br i1 %173, label %199, label %174

174:                                              ; preds = %159
  %175 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 3
  %176 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 4
  %177 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %120, i64 0, i32 1
  br label %178

178:                                              ; preds = %174, %195
  %179 = phi ptr [ %172, %174 ], [ %197, %195 ]
  %180 = phi ptr [ %171, %174 ], [ %196, %195 ]
  %181 = load i32, ptr %179, align 8
  %182 = and i32 %181, 131072
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.df_base_ref, ptr %179, i64 0, i32 6
  %186 = load i32, ptr %185, align 8, !tbaa !193
  %187 = load ptr, ptr %175, align 8, !tbaa !315
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds i32, ptr %187, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !197
  %191 = load ptr, ptr %176, align 8, !tbaa !319
  %192 = getelementptr inbounds i32, ptr %191, i64 %188
  %193 = load i32, ptr %192, align 4, !tbaa !197
  %194 = load ptr, ptr %177, align 8, !tbaa !650
  call void @bitmap_set_range(ptr noundef %194, i32 noundef %190, i32 noundef %193) #20
  br label %195

195:                                              ; preds = %184, %178
  %196 = getelementptr inbounds ptr, ptr %180, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !182
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %178, !llvm.loop !656

199:                                              ; preds = %195, %159
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 7
  %201 = load ptr, ptr %200, align 8, !tbaa !193
  %202 = getelementptr inbounds %struct.rtl_bb_info, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !193
  %204 = icmp eq ptr %203, null
  br i1 %204, label %311, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 3
  %207 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 4
  %208 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %120, i64 0, i32 1
  %209 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 3
  %210 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 4
  %211 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %120, i64 0, i32 1
  br label %212

212:                                              ; preds = %205, %307
  %213 = phi ptr [ %203, %205 ], [ %309, %307 ]
  %214 = load ptr, ptr %200, align 8, !tbaa !193
  %215 = load ptr, ptr %214, align 8, !tbaa !268
  %216 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1, i32 0, i32 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !193
  %218 = icmp eq ptr %213, %217
  br i1 %218, label %311, label %219

219:                                              ; preds = %212
  %220 = load i32, ptr %213, align 8
  %221 = and i32 %220, 65535
  %222 = add nsw i32 %221, -7
  %223 = icmp ult i32 %222, 4
  br i1 %223, label %224, label %307

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !193
  %227 = load ptr, ptr @df, align 8, !tbaa !182
  %228 = getelementptr inbounds %struct.df, ptr %227, i64 0, i32 10
  %229 = load ptr, ptr %228, align 8, !tbaa !243
  %230 = zext i32 %226 to i64
  %231 = getelementptr inbounds ptr, ptr %229, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !182
  %233 = getelementptr inbounds %struct.df_insn_info, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !244
  %235 = load ptr, ptr %234, align 8, !tbaa !182
  %236 = icmp eq ptr %235, null
  br i1 %236, label %270, label %237

237:                                              ; preds = %224, %266
  %238 = phi ptr [ %268, %266 ], [ %235, %224 ]
  %239 = phi ptr [ %267, %266 ], [ %234, %224 ]
  %240 = load i32, ptr %238, align 8
  %241 = and i32 %240, 65536
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %266

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.df_base_ref, ptr %238, i64 0, i32 6
  %245 = load i32, ptr %244, align 8, !tbaa !193
  %246 = load ptr, ptr %206, align 8, !tbaa !315
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds i32, ptr %246, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !197
  %250 = load ptr, ptr %207, align 8, !tbaa !319
  %251 = getelementptr inbounds i32, ptr %250, i64 %247
  %252 = load i32, ptr %251, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %253 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %238, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %254 = icmp eq i8 %253, 0
  %255 = load i32, ptr %2, align 4
  %256 = load i32, ptr %3, align 4
  %257 = sub i32 %256, %255
  %258 = select i1 %254, i32 %257, i32 %252
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %243
  %261 = select i1 %254, i32 %255, i32 0
  %262 = add i32 %261, %249
  %263 = load ptr, ptr %120, align 8, !tbaa !648
  call void @bitmap_set_range(ptr noundef %263, i32 noundef %262, i32 noundef %258) #20
  %264 = load ptr, ptr %208, align 8, !tbaa !650
  call void @bitmap_clear_range(ptr noundef %264, i32 noundef %262, i32 noundef %258) #20
  br label %265

265:                                              ; preds = %260, %243
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %266

266:                                              ; preds = %265, %237
  %267 = getelementptr inbounds ptr, ptr %239, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !182
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %237, !llvm.loop !657

270:                                              ; preds = %266, %224
  %271 = load ptr, ptr @df, align 8, !tbaa !182
  %272 = getelementptr inbounds %struct.df, ptr %271, i64 0, i32 10
  %273 = load ptr, ptr %272, align 8, !tbaa !243
  %274 = getelementptr inbounds ptr, ptr %273, i64 %230
  %275 = load ptr, ptr %274, align 8, !tbaa !182
  %276 = getelementptr inbounds %struct.df_insn_info, ptr %275, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !276
  %278 = load ptr, ptr %277, align 8, !tbaa !182
  %279 = icmp eq ptr %278, null
  br i1 %279, label %307, label %280

280:                                              ; preds = %270, %303
  %281 = phi ptr [ %305, %303 ], [ %278, %270 ]
  %282 = phi ptr [ %304, %303 ], [ %277, %270 ]
  %283 = getelementptr inbounds %struct.df_base_ref, ptr %281, i64 0, i32 6
  %284 = load i32, ptr %283, align 8, !tbaa !193
  %285 = load ptr, ptr %209, align 8, !tbaa !315
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds i32, ptr %285, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !197
  %289 = load ptr, ptr %210, align 8, !tbaa !319
  %290 = getelementptr inbounds i32, ptr %289, i64 %286
  %291 = load i32, ptr %290, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %292 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %281, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %293 = icmp eq i8 %292, 0
  %294 = load i32, ptr %4, align 4
  %295 = load i32, ptr %5, align 4
  %296 = sub i32 %295, %294
  %297 = select i1 %293, i32 %296, i32 %291
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %280
  %300 = select i1 %293, i32 %294, i32 0
  %301 = add i32 %300, %288
  %302 = load ptr, ptr %211, align 8, !tbaa !650
  call void @bitmap_set_range(ptr noundef %302, i32 noundef %301, i32 noundef %297) #20
  br label %303

303:                                              ; preds = %299, %280
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %304 = getelementptr inbounds ptr, ptr %282, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !182
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %280, !llvm.loop !658

307:                                              ; preds = %303, %270, %219
  %308 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1, i32 0, i32 0, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !193
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %212, !llvm.loop !659

311:                                              ; preds = %307, %212, %199
  %312 = load ptr, ptr @df, align 8, !tbaa !182
  %313 = getelementptr inbounds %struct.df, ptr %312, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !182
  %315 = getelementptr inbounds %struct.dataflow, ptr %314, i64 0, i32 2
  %316 = load i32, ptr %315, align 8, !tbaa !205
  %317 = icmp ugt i32 %316, %80
  call void @llvm.assume(i1 %317)
  %318 = getelementptr inbounds %struct.dataflow, ptr %314, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !208
  %320 = getelementptr inbounds ptr, ptr %319, i64 %108
  %321 = load ptr, ptr %320, align 8, !tbaa !182
  %322 = load ptr, ptr %321, align 8, !tbaa !233
  %323 = load ptr, ptr %322, align 8, !tbaa !182
  %324 = icmp eq ptr %323, null
  br i1 %324, label %351, label %325

325:                                              ; preds = %311
  %326 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 3
  %327 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %102, i64 0, i32 4
  %328 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %120, i64 0, i32 1
  br label %329

329:                                              ; preds = %325, %347
  %330 = phi ptr [ %323, %325 ], [ %349, %347 ]
  %331 = phi ptr [ %322, %325 ], [ %348, %347 ]
  %332 = load i32, ptr %330, align 8
  %333 = and i32 %332, 131072
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %347, label %335

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.df_base_ref, ptr %330, i64 0, i32 6
  %337 = load i32, ptr %336, align 8, !tbaa !193
  %338 = load ptr, ptr %326, align 8, !tbaa !315
  %339 = zext i32 %337 to i64
  %340 = getelementptr inbounds i32, ptr %338, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !197
  %342 = load ptr, ptr %327, align 8, !tbaa !319
  %343 = getelementptr inbounds i32, ptr %342, i64 %339
  %344 = load i32, ptr %343, align 4, !tbaa !197
  %345 = load ptr, ptr %120, align 8, !tbaa !648
  call void @bitmap_set_range(ptr noundef %345, i32 noundef %341, i32 noundef %344) #20
  %346 = load ptr, ptr %328, align 8, !tbaa !650
  call void @bitmap_clear_range(ptr noundef %346, i32 noundef %341, i32 noundef %344) #20
  br label %347

347:                                              ; preds = %335, %329
  %348 = getelementptr inbounds ptr, ptr %331, i64 1
  %349 = load ptr, ptr %348, align 8, !tbaa !182
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %329, !llvm.loop !660

351:                                              ; preds = %347, %311, %88
  %352 = lshr i64 %78, 1
  %353 = add i32 %80, 1
  br label %22, !llvm.loop !661

354:                                              ; preds = %77
  %355 = load ptr, ptr @df, align 8, !tbaa !182
  %356 = getelementptr inbounds %struct.df, ptr %355, i64 0, i32 1, i64 5
  %357 = load ptr, ptr %356, align 8, !tbaa !182
  %358 = getelementptr inbounds %struct.dataflow, ptr %357, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !251
  call void @bitmap_clear(ptr noundef %359) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_init(ptr nocapture noundef readonly %0) #12 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %87, %1
  %14 = phi i64 [ %9, %1 ], [ %95, %87 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %87 ]
  %16 = phi i32 [ %12, %1 ], [ %96, %87 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %87 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %97, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 5
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !208
  %84 = zext i32 %71 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ null, %74 ]
  %89 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !651
  %91 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %88, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !650
  tail call void @bitmap_copy(ptr noundef %90, ptr noundef %92) #20
  %93 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %88, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !652
  tail call void @bitmap_clear(ptr noundef %94) #20
  %95 = lshr i64 %69, 1
  %96 = add i32 %71, 1
  br label %13, !llvm.loop !662

97:                                               ; preds = %68
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_confluence_0(ptr noundef readonly %0) #12 !prof !181 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !314
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !203
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !205
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !208
  %15 = zext i32 %8 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  br label %18

18:                                               ; preds = %1, %12
  %19 = phi ptr [ %17, %12 ], [ null, %1 ]
  %20 = load ptr, ptr @cfun, align 8, !tbaa !182
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !213
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !509
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %19, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !652
  %29 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !640
  tail call void @bitmap_copy(ptr noundef %28, ptr noundef %30) #20
  br label %31

31:                                               ; preds = %26, %18
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_confluence_n(ptr nocapture noundef readonly %0) #12 !prof !181 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !314
  %7 = load ptr, ptr %0, align 8, !tbaa !227
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !203
  %10 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !205
  %12 = icmp ugt i32 %11, %9
  tail call void @llvm.assume(i1 %12)
  %13 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !208
  %15 = zext i32 %9 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !652
  %20 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !231
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !203
  %24 = icmp ugt i32 %11, %23
  tail call void @llvm.assume(i1 %24)
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds ptr, ptr %14, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !651
  %30 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !229
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load ptr, ptr %6, align 8, !tbaa !641
  %36 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %19, ptr noundef %29, ptr noundef %35) #20
  br label %39

37:                                               ; preds = %1
  %38 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %19, ptr noundef %29) #20
  br label %39

39:                                               ; preds = %37, %34
  %40 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %6, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !640
  %42 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %19, ptr noundef %41) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @df_byte_lr_transfer_function(i32 noundef %0) #12 !prof !181 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !205
  %7 = icmp ugt i32 %6, %0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !208
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !651
  %15 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !652
  %17 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !650
  %19 = load ptr, ptr %12, align 8, !tbaa !648
  %20 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %14, ptr noundef %18, ptr noundef %16, ptr noundef %19) #20
  ret i8 %20
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_free() #12 !prof !181 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 5
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  %6 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !309
  tail call void @free_alloc_pool(ptr noundef %11) #20
  %12 = load ptr, ptr @df, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 5
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !205
  %16 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !208
  tail call void @free(ptr noundef %17)
  br label %18

18:                                               ; preds = %9, %0
  %19 = load ptr, ptr @df, align 8, !tbaa !182
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 5
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !251
  tail call void @bitmap_obstack_free(ptr noundef %23) #20
  %24 = load ptr, ptr @df, align 8, !tbaa !182
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 1, i64 5
  %26 = load ptr, ptr %25, align 8, !tbaa !182
  %27 = getelementptr inbounds %struct.dataflow, ptr %26, i64 0, i32 4
  store ptr null, ptr %27, align 8, !tbaa !251
  %28 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 5
  tail call void @bitmap_obstack_release(ptr noundef nonnull %28) #20
  %29 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !315
  tail call void @free(ptr noundef %30)
  %31 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %5, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !319
  tail call void @free(ptr noundef %32)
  tail call void @free(ptr noundef %5)
  %33 = load ptr, ptr @df, align 8, !tbaa !182
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 1, i64 5
  %35 = load ptr, ptr %34, align 8, !tbaa !182
  tail call void @free(ptr noundef %35)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !651
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 13, i64 1, ptr %1)
  %26 = load ptr, ptr %21, align 8, !tbaa !651
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %26) #20
  %27 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 13, i64 1, ptr %1)
  %28 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %18, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !650
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %29) #20
  %30 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 13, i64 1, ptr %1)
  %31 = load ptr, ptr %18, align 8, !tbaa !648
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %31) #20
  br label %32

32:                                               ; preds = %17, %20, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_byte_lr_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !652
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 13, i64 1, ptr %1)
  %26 = load ptr, ptr %21, align 8, !tbaa !652
  tail call void @df_print_byte_regset(ptr noundef %1, ptr noundef %26) #20
  br label %27

27:                                               ; preds = %17, %20, %24
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @df_byte_lr_check_regs(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 5
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !314
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
  %19 = load ptr, ptr %18, align 8, !tbaa !193
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 39
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %11
  %24 = load ptr, ptr %10, align 8, !tbaa !642
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !193
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %26) #20
  br label %28

28:                                               ; preds = %23, %17
  %29 = getelementptr inbounds ptr, ptr %13, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !182
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !663

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @df_byte_lr_expand_bitmap(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !181 {
  %3 = load ptr, ptr @df, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1, i64 5
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !314
  tail call void @bitmap_clear(ptr noundef %0) #20
  %8 = load ptr, ptr %1, align 8, !tbaa !390
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @bitmap_zero_bits, ptr %8
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !393
  %13 = shl i32 %12, 7
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 0
  %15 = load i64, ptr %14, align 8, !tbaa !395
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = or disjoint i32 %13, %17
  %19 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 3
  %20 = getelementptr inbounds %struct.df_byte_lr_problem_data, ptr %7, i64 0, i32 4
  br label %21

21:                                               ; preds = %82, %2
  %22 = phi i32 [ 0, %2 ], [ %77, %82 ]
  %23 = phi i64 [ %15, %2 ], [ %90, %82 ]
  %24 = phi ptr [ %10, %2 ], [ %79, %82 ]
  %25 = phi i32 [ %18, %2 ], [ %91, %82 ]
  %26 = icmp eq i64 %23, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %55, %21
  %28 = phi i32 [ %22, %21 ], [ %56, %55 ]
  %29 = phi i64 [ %23, %21 ], [ %60, %55 ]
  %30 = phi ptr [ %24, %21 ], [ %47, %55 ]
  %31 = phi i32 [ %25, %21 ], [ %57, %55 ]
  %32 = and i64 %29, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %38, %34 ], [ %31, %27 ]
  %36 = phi i64 [ %37, %34 ], [ %29, %27 ]
  %37 = lshr exact i64 %36, 1
  %38 = add i32 %35, 1
  %39 = and i64 %36, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %34, label %76, !llvm.loop !399

41:                                               ; preds = %21
  %42 = add i32 %25, 63
  %43 = and i32 %42, -64
  %44 = add i32 %22, 1
  br label %45

45:                                               ; preds = %72, %41
  %46 = phi i64 [ %23, %41 ], [ %67, %72 ]
  %47 = phi ptr [ %24, %41 ], [ %70, %72 ]
  %48 = phi i32 [ %43, %41 ], [ %75, %72 ]
  %49 = phi i32 [ %44, %41 ], [ 0, %72 ]
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = add i32 %48, 128
  %53 = shl i32 %49, 6
  %54 = sub i32 %52, %53
  br label %55

55:                                               ; preds = %51, %62
  %56 = phi i32 [ %64, %62 ], [ %49, %51 ]
  %57 = phi i32 [ %63, %62 ], [ %48, %51 ]
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !395
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %27

62:                                               ; preds = %55
  %63 = add i32 %57, 64
  %64 = add i32 %56, 1
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %55, !llvm.loop !403

66:                                               ; preds = %62, %45
  %67 = phi i64 [ %46, %45 ], [ %60, %62 ]
  %68 = phi i32 [ %48, %45 ], [ %54, %62 ]
  %69 = phi i32 [ %49, %45 ], [ 2, %62 ]
  %70 = load ptr, ptr %47, align 8, !tbaa !404
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !393
  %75 = shl i32 %74, 7
  br label %45, !llvm.loop !406

76:                                               ; preds = %66, %34, %27
  %77 = phi i32 [ %28, %27 ], [ %28, %34 ], [ %69, %66 ]
  %78 = phi i64 [ %29, %27 ], [ %37, %34 ], [ %67, %66 ]
  %79 = phi ptr [ %30, %27 ], [ %30, %34 ], [ %70, %66 ]
  %80 = phi i32 [ %31, %27 ], [ %38, %34 ], [ %68, %66 ]
  %81 = phi i1 [ false, %27 ], [ false, %34 ], [ true, %66 ]
  br i1 %81, label %92, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %19, align 8, !tbaa !315
  %84 = zext i32 %80 to i64
  %85 = getelementptr inbounds i32, ptr %83, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !197
  %87 = load ptr, ptr %20, align 8, !tbaa !319
  %88 = getelementptr inbounds i32, ptr %87, i64 %84
  %89 = load i32, ptr %88, align 4, !tbaa !197
  tail call void @bitmap_set_range(ptr noundef %0, i32 noundef %86, i32 noundef %89) #20
  %90 = lshr i64 %78, 1
  %91 = add i32 %80, 1
  br label %21, !llvm.loop !664

92:                                               ; preds = %76
  ret void
}

declare void @df_print_byte_regset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @df_note_alloc(ptr nocapture readnone %0) #16 !prof !665 !PGOFuncName !666 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 6
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 9
  store i8 1, ptr %5, align 2, !tbaa !417
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_note_compute(ptr nocapture noundef readonly %0) #13 !prof !665 !PGOFuncName !667 {
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #20
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #20
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !390
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @bitmap_zero_bits, ptr %5, !prof !668
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !393
  %10 = shl i32 %9, 7
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %7, i64 0, i32 3, i64 0
  %12 = load i64, ptr %11, align 8, !tbaa !395
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = or disjoint i32 %10, %14
  br label %16

16:                                               ; preds = %805, %1
  %17 = phi i64 [ %12, %1 ], [ %806, %805 ]
  %18 = phi i32 [ 0, %1 ], [ %73, %805 ]
  %19 = phi i32 [ %15, %1 ], [ %807, %805 ]
  %20 = phi ptr [ %7, %1 ], [ %75, %805 ]
  %21 = icmp eq i64 %17, 0
  br i1 %21, label %36, label %22, !prof !669

22:                                               ; preds = %50, %16
  %23 = phi i64 [ %17, %16 ], [ %55, %50 ]
  %24 = phi i32 [ %18, %16 ], [ %51, %50 ]
  %25 = phi i32 [ %19, %16 ], [ %52, %50 ]
  %26 = phi ptr [ %20, %16 ], [ %43, %50 ]
  %27 = and i64 %23, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %71, !prof !670

29:                                               ; preds = %22, %29
  %30 = phi i32 [ %33, %29 ], [ %25, %22 ]
  %31 = phi i64 [ %32, %29 ], [ %23, %22 ]
  %32 = lshr exact i64 %31, 1
  %33 = add i32 %30, 1
  %34 = and i64 %31, 2
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %29, label %71, !prof !671, !llvm.loop !399

36:                                               ; preds = %16
  %37 = add i32 %19, 63
  %38 = and i32 %37, -64
  %39 = add i32 %18, 1
  br label %40

40:                                               ; preds = %67, %36
  %41 = phi i64 [ %17, %36 ], [ %62, %67 ]
  %42 = phi i32 [ %38, %36 ], [ %70, %67 ]
  %43 = phi ptr [ %20, %36 ], [ %65, %67 ]
  %44 = phi i32 [ %39, %36 ], [ 0, %67 ]
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %61, label %46, !prof !672

46:                                               ; preds = %40
  %47 = add i32 %42, 128
  %48 = shl i32 %44, 6
  %49 = sub i32 %47, %48
  br label %50

50:                                               ; preds = %46, %57
  %51 = phi i32 [ %59, %57 ], [ %44, %46 ]
  %52 = phi i32 [ %58, %57 ], [ %42, %46 ]
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 3, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !395
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %22, !prof !673

57:                                               ; preds = %50
  %58 = add i32 %52, 64
  %59 = add i32 %51, 1
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %50, !prof !674, !llvm.loop !403

61:                                               ; preds = %57, %40
  %62 = phi i64 [ %41, %40 ], [ %55, %57 ]
  %63 = phi i32 [ %42, %40 ], [ %49, %57 ]
  %64 = phi i32 [ %44, %40 ], [ 2, %57 ]
  %65 = load ptr, ptr %43, align 8, !tbaa !404
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67, !prof !675

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.bitmap_element_def, ptr %65, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !393
  %70 = shl i32 %69, 7
  br label %40, !llvm.loop !406

71:                                               ; preds = %61, %29, %22
  %72 = phi i64 [ %23, %22 ], [ %32, %29 ], [ %62, %61 ]
  %73 = phi i32 [ %24, %22 ], [ %24, %29 ], [ %64, %61 ]
  %74 = phi i32 [ %25, %22 ], [ %33, %29 ], [ %63, %61 ]
  %75 = phi ptr [ %26, %22 ], [ %26, %29 ], [ %65, %61 ]
  %76 = phi i1 [ false, %22 ], [ false, %29 ], [ true, %61 ]
  br i1 %76, label %808, label %77, !prof !676

77:                                               ; preds = %71
  %78 = load ptr, ptr @cfun, align 8, !tbaa !182
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !213
  %81 = getelementptr inbounds %struct.control_flow_graph, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !257
  %83 = zext i32 %74 to i64
  %84 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %82, i64 0, i32 2, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !182
  %86 = load ptr, ptr @df, align 8, !tbaa !182
  %87 = getelementptr inbounds %struct.df, ptr %86, i64 0, i32 1, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !182
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91, !prof !202

90:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #20
  br label %91

91:                                               ; preds = %90, %77
  %92 = load ptr, ptr @df, align 8, !tbaa !182
  %93 = getelementptr inbounds %struct.df, ptr %92, i64 0, i32 1, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !182
  %95 = icmp eq ptr %94, null
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !203
  br i1 %95, label %111, label %98, !prof !202

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.dataflow, ptr %94, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !205
  %101 = icmp ugt i32 %100, %97
  br i1 %101, label %102, label %108, !prof !207

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.dataflow, ptr %94, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !208
  %105 = zext i32 %97 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !182
  br label %108

108:                                              ; preds = %102, %98
  %109 = phi ptr [ %107, %102 ], [ null, %98 ]
  %110 = getelementptr inbounds %struct.df_live_bb_info, ptr %109, i64 0, i32 3
  br label %126

111:                                              ; preds = %91
  %112 = getelementptr inbounds %struct.df, ptr %92, i64 0, i32 1, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !182
  %114 = getelementptr inbounds %struct.dataflow, ptr %113, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !205
  %116 = icmp ugt i32 %115, %97
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.dataflow, ptr %113, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !208
  %120 = zext i32 %97 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !182
  br label %123

123:                                              ; preds = %117, %111
  %124 = phi ptr [ %122, %117 ], [ null, %111 ]
  %125 = getelementptr inbounds %struct.df_lr_bb_info, ptr %124, i64 0, i32 3
  br label %126

126:                                              ; preds = %108, %123
  %127 = phi ptr [ %110, %108 ], [ %125, %123 ]
  %128 = load ptr, ptr %127, align 8, !tbaa !182
  tail call void @bitmap_copy(ptr noundef %2, ptr noundef %128) #20
  tail call void @bitmap_clear(ptr noundef %4) #20
  %129 = load ptr, ptr @df, align 8, !tbaa !182
  %130 = getelementptr inbounds %struct.df, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !182
  %132 = getelementptr inbounds %struct.dataflow, ptr %131, i64 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !205
  %134 = icmp ugt i32 %133, %74
  tail call void @llvm.assume(i1 %134)
  %135 = getelementptr inbounds %struct.dataflow, ptr %131, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !208
  %137 = getelementptr inbounds ptr, ptr %136, i64 %83
  %138 = load ptr, ptr %137, align 8, !tbaa !182
  %139 = load ptr, ptr %138, align 8, !tbaa !233
  %140 = load ptr, ptr %139, align 8, !tbaa !182
  %141 = icmp eq ptr %140, null
  br i1 %141, label %156, label %142, !prof !677

142:                                              ; preds = %126, %152
  %143 = phi ptr [ %154, %152 ], [ %140, %126 ]
  %144 = phi ptr [ %153, %152 ], [ %139, %126 ]
  %145 = load i32, ptr %143, align 8
  %146 = and i32 %145, 131072
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152, !prof !678

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.df_base_ref, ptr %143, i64 0, i32 6
  %150 = load i32, ptr %149, align 8, !tbaa !193
  %151 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %150) #20
  br label %152

152:                                              ; preds = %148, %142
  %153 = getelementptr inbounds ptr, ptr %144, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !182
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %142, !prof !678, !llvm.loop !679

156:                                              ; preds = %152, %126
  %157 = load ptr, ptr @df, align 8, !tbaa !182
  %158 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !182
  %160 = getelementptr inbounds %struct.dataflow, ptr %159, i64 0, i32 2
  %161 = load i32, ptr %160, align 8, !tbaa !205
  %162 = icmp ugt i32 %161, %74
  tail call void @llvm.assume(i1 %162)
  %163 = getelementptr inbounds %struct.dataflow, ptr %159, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !208
  %165 = getelementptr inbounds ptr, ptr %164, i64 %83
  %166 = load ptr, ptr %165, align 8, !tbaa !182
  %167 = getelementptr inbounds %struct.df_scan_bb_info, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !262
  %169 = load ptr, ptr %168, align 8, !tbaa !182
  %170 = icmp eq ptr %169, null
  br i1 %170, label %186, label %171, !prof !680

171:                                              ; preds = %156, %182
  %172 = phi ptr [ %184, %182 ], [ %169, %156 ]
  %173 = phi ptr [ %183, %182 ], [ %168, %156 ]
  %174 = load i32, ptr %172, align 8
  %175 = and i32 %174, 131072
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182, !prof !681

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.df_base_ref, ptr %172, i64 0, i32 6
  %179 = load i32, ptr %178, align 8, !tbaa !193
  %180 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %179) #20
  %181 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %179) #20
  br label %182

182:                                              ; preds = %177, %171
  %183 = getelementptr inbounds ptr, ptr %173, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !182
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %171, !prof !682, !llvm.loop !683

186:                                              ; preds = %182, %156
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 7
  %188 = load ptr, ptr %187, align 8, !tbaa !193
  %189 = getelementptr inbounds %struct.rtl_bb_info, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !193
  %191 = icmp eq ptr %190, null
  br i1 %191, label %805, label %192, !prof !684

192:                                              ; preds = %186, %801
  %193 = phi ptr [ %803, %801 ], [ %190, %186 ]
  %194 = load ptr, ptr %187, align 8, !tbaa !193
  %195 = load ptr, ptr %194, align 8, !tbaa !268
  %196 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1, i32 0, i32 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !193
  %198 = icmp eq ptr %193, %197
  br i1 %198, label %805, label %199, !prof !685

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %201 = load i32, ptr %200, align 8, !tbaa !193
  %202 = load i32, ptr %193, align 8
  %203 = and i32 %202, 65535
  %204 = add nsw i32 %203, -7
  %205 = icmp ult i32 %204, 4
  br i1 %205, label %206, label %801, !prof !686

206:                                              ; preds = %199
  %207 = icmp eq i32 %203, 7
  %208 = zext i1 %207 to i32
  tail call void @bitmap_clear(ptr noundef %3) #20
  %209 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 1, i32 1, i32 0, i32 0, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !182
  %211 = icmp eq ptr %210, null
  br i1 %211, label %255, label %212, !prof !687

212:                                              ; preds = %206
  %213 = load i32, ptr @regstack_completed, align 4
  br label %214

214:                                              ; preds = %212, %249
  %215 = phi ptr [ %209, %212 ], [ %253, %249 ]
  %216 = phi ptr [ %210, %212 ], [ %252, %249 ]
  %217 = phi ptr [ null, %212 ], [ %251, %249 ]
  %218 = phi ptr [ null, %212 ], [ %250, %249 ]
  %219 = load i32, ptr %216, align 8
  %220 = lshr i32 %219, 16
  %221 = trunc i32 %220 to i8
  switch i8 %221, label %246 [
    i8 1, label %222
    i8 6, label %234
  ], !prof !688

222:                                              ; preds = %214
  %223 = icmp eq i32 %213, 0
  %224 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !193
  %226 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1
  %227 = load i32, ptr %226, align 8, !tbaa !193
  %228 = and i32 %227, -8
  %229 = icmp ne i32 %228, 8
  %230 = or i1 %223, %229
  %231 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1, i32 0, i32 0, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !193
  br i1 %230, label %233, label %249, !prof !689

233:                                              ; preds = %222
  store ptr %218, ptr %231, align 8, !tbaa !193
  store ptr %232, ptr %215, align 8, !tbaa !182
  br label %249

234:                                              ; preds = %214
  %235 = icmp eq i32 %213, 0
  %236 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !193
  %238 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !193
  %240 = and i32 %239, -8
  %241 = icmp ne i32 %240, 8
  %242 = or i1 %235, %241
  %243 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1, i32 0, i32 0, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !193
  br i1 %242, label %245, label %249, !prof !690

245:                                              ; preds = %234
  store ptr %217, ptr %243, align 8, !tbaa !193
  store ptr %244, ptr %215, align 8, !tbaa !182
  br label %249

246:                                              ; preds = %214
  %247 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1, i32 0, i32 0, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !182
  br label %249

249:                                              ; preds = %234, %222, %246, %245, %233
  %250 = phi ptr [ %218, %246 ], [ %218, %245 ], [ %216, %233 ], [ %218, %222 ], [ %218, %234 ]
  %251 = phi ptr [ %217, %246 ], [ %216, %245 ], [ %217, %233 ], [ %217, %222 ], [ %217, %234 ]
  %252 = phi ptr [ %248, %246 ], [ %244, %245 ], [ %232, %233 ], [ %232, %222 ], [ %244, %234 ]
  %253 = phi ptr [ %247, %246 ], [ %215, %245 ], [ %215, %233 ], [ %231, %222 ], [ %243, %234 ]
  %254 = icmp eq ptr %252, null
  br i1 %254, label %255, label %214, !prof !691, !llvm.loop !692

255:                                              ; preds = %249, %206
  %256 = phi ptr [ null, %206 ], [ %250, %249 ]
  %257 = phi ptr [ null, %206 ], [ %251, %249 ]
  %258 = load i32, ptr %193, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 10
  %261 = load ptr, ptr @df, align 8, !tbaa !182
  %262 = getelementptr inbounds %struct.df, ptr %261, i64 0, i32 10
  %263 = load ptr, ptr %262, align 8, !tbaa !243
  %264 = zext i32 %201 to i64
  %265 = getelementptr inbounds ptr, ptr %263, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !182
  %267 = getelementptr inbounds %struct.df_insn_info, ptr %266, i64 0, i32 4
  %268 = load ptr, ptr %267, align 8, !tbaa !693
  %269 = load ptr, ptr %268, align 8, !tbaa !182
  %270 = icmp eq ptr %269, null
  br i1 %260, label %271, label %397, !prof !694

271:                                              ; preds = %255
  br i1 %270, label %295, label %272, !prof !341

272:                                              ; preds = %271, %290
  %273 = phi ptr [ %293, %290 ], [ %269, %271 ]
  %274 = phi ptr [ %292, %290 ], [ %268, %271 ]
  %275 = phi ptr [ %291, %290 ], [ %257, %271 ]
  %276 = getelementptr inbounds %struct.df_mw_hardreg, ptr %273, i64 0, i32 1
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 65535
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %272
  %281 = getelementptr inbounds %struct.df_mw_hardreg, ptr %273, i64 0, i32 2
  %282 = load i32, ptr %281, align 4, !tbaa !695
  %283 = load i32, ptr @regstack_completed, align 4, !tbaa !197
  %284 = icmp eq i32 %283, 0
  %285 = and i32 %282, -8
  %286 = icmp ne i32 %285, 8
  %287 = or i1 %284, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %280
  %289 = tail call fastcc ptr @df_set_unused_notes_for_mw(ptr noundef nonnull %193, ptr noundef %275, ptr noundef nonnull %273, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %290

290:                                              ; preds = %288, %280, %272
  %291 = phi ptr [ %289, %288 ], [ %275, %280 ], [ %275, %272 ]
  %292 = getelementptr inbounds ptr, ptr %274, i64 1
  %293 = load ptr, ptr %292, align 8, !tbaa !182
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %272, !prof !341, !llvm.loop !697

295:                                              ; preds = %290, %271
  %296 = phi ptr [ %257, %271 ], [ %291, %290 ]
  %297 = load ptr, ptr @df, align 8, !tbaa !182
  %298 = getelementptr inbounds %struct.df, ptr %297, i64 0, i32 10
  %299 = load ptr, ptr %298, align 8, !tbaa !243
  %300 = getelementptr inbounds ptr, ptr %299, i64 %264
  %301 = load ptr, ptr %300, align 8, !tbaa !182
  %302 = getelementptr inbounds %struct.df_insn_info, ptr %301, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !244
  %304 = load ptr, ptr %303, align 8, !tbaa !182
  %305 = icmp eq ptr %304, null
  br i1 %305, label %514, label %306, !prof !698

306:                                              ; preds = %295, %393
  %307 = phi ptr [ %395, %393 ], [ %304, %295 ]
  %308 = phi ptr [ %394, %393 ], [ %303, %295 ]
  %309 = phi ptr [ %387, %393 ], [ %296, %295 ]
  %310 = getelementptr inbounds %struct.df_base_ref, ptr %307, i64 0, i32 6
  %311 = load i32, ptr %310, align 8, !tbaa !193
  %312 = load i32, ptr %307, align 8
  %313 = and i32 %312, 12582912
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %386, !prof !699

315:                                              ; preds = %306
  %316 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %311) #20
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %383, !prof !700

318:                                              ; preds = %315
  %319 = load i32, ptr %307, align 8
  %320 = and i32 %319, 268435456
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %383, !prof !701

322:                                              ; preds = %318
  %323 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %311) #20
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %383, !prof !701

325:                                              ; preds = %322
  %326 = load i32, ptr @regstack_completed, align 4, !tbaa !197
  %327 = icmp eq i32 %326, 0
  %328 = and i32 %311, -8
  %329 = icmp ne i32 %328, 8
  %330 = or i1 %329, %327
  br i1 %330, label %331, label %383, !prof !701

331:                                              ; preds = %325
  %332 = load i32, ptr %307, align 8
  %333 = and i32 %332, 254
  %334 = icmp eq i32 %333, 2
  br i1 %334, label %335, label %346, !prof !701

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.df_regular_ref, ptr %307, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !193
  %338 = icmp eq ptr %337, null
  br i1 %338, label %346, label %339, !prof !702

339:                                              ; preds = %335
  %340 = load ptr, ptr %337, align 8, !tbaa !182
  %341 = load i32, ptr %340, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 39
  %344 = getelementptr inbounds %struct.rtx_def, ptr %340, i64 0, i32 1
  %345 = select i1 %343, ptr %344, ptr %337, !prof !702
  br label %348

346:                                              ; preds = %335, %331
  %347 = getelementptr inbounds %struct.df_base_ref, ptr %307, i64 0, i32 1
  br label %348

348:                                              ; preds = %346, %339
  %349 = phi ptr [ %345, %339 ], [ %347, %346 ]
  %350 = load ptr, ptr %349, align 8, !tbaa !193
  %351 = load i32, ptr %193, align 8
  %352 = and i32 %351, 65535
  %353 = icmp eq i32 %352, 7
  br i1 %353, label %354, label %355, !prof !702

354:                                              ; preds = %348
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #20
  br label %355

355:                                              ; preds = %354, %348
  %356 = icmp eq ptr %309, null
  br i1 %356, label %382, label %357, !prof !703

357:                                              ; preds = %355
  %358 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !193
  %360 = icmp eq ptr %359, %350
  br i1 %360, label %365, label %377, !prof !341

361:                                              ; preds = %377
  %362 = getelementptr inbounds %struct.rtx_def, ptr %380, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !193
  %364 = icmp eq ptr %363, %350
  br i1 %364, label %365, label %377, !prof !341, !llvm.loop !704

365:                                              ; preds = %361, %357
  %366 = phi ptr [ null, %357 ], [ %378, %361 ]
  %367 = phi ptr [ %309, %357 ], [ %380, %361 ]
  %368 = icmp eq ptr %366, null
  %369 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1, i32 0, i32 0, i64 1
  %370 = load ptr, ptr %369, align 8, !tbaa !193
  br i1 %368, label %373, label %371, !prof !690

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.rtx_def, ptr %366, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %370, ptr %372, align 8, !tbaa !193
  br label %373

373:                                              ; preds = %365, %371
  %374 = phi ptr [ %309, %371 ], [ %370, %365 ]
  %375 = load ptr, ptr %209, align 8, !tbaa !193
  %376 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %375, ptr %376, align 8, !tbaa !193
  store ptr %367, ptr %209, align 8, !tbaa !193
  br label %383

377:                                              ; preds = %357, %361
  %378 = phi ptr [ %380, %361 ], [ %309, %357 ]
  %379 = getelementptr inbounds %struct.rtx_def, ptr %378, i64 0, i32 1, i32 0, i32 0, i64 1
  %380 = load ptr, ptr %379, align 8, !tbaa !193
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %361, !prof !705, !llvm.loop !704

382:                                              ; preds = %377, %355
  tail call void @add_reg_note(ptr noundef nonnull %193, i32 noundef 6, ptr noundef %350) #20
  br label %383

383:                                              ; preds = %315, %318, %322, %325, %373, %382
  %384 = phi ptr [ %309, %315 ], [ %309, %318 ], [ %309, %322 ], [ %309, %325 ], [ %374, %373 ], [ %309, %382 ]
  %385 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %311) #20
  br label %386

386:                                              ; preds = %383, %306
  %387 = phi ptr [ %384, %383 ], [ %309, %306 ]
  %388 = load i32, ptr %307, align 8
  %389 = and i32 %388, 1114112
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %393, !prof !706

391:                                              ; preds = %386
  %392 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %311) #20
  br label %393

393:                                              ; preds = %391, %386
  %394 = getelementptr inbounds ptr, ptr %308, i64 1
  %395 = load ptr, ptr %394, align 8, !tbaa !182
  %396 = icmp eq ptr %395, null
  br i1 %396, label %514, label %306, !prof !707, !llvm.loop !708

397:                                              ; preds = %255
  br i1 %270, label %413, label %398, !prof !341

398:                                              ; preds = %397, %408
  %399 = phi ptr [ %411, %408 ], [ %269, %397 ]
  %400 = phi ptr [ %410, %408 ], [ %268, %397 ]
  %401 = phi ptr [ %409, %408 ], [ %257, %397 ]
  %402 = getelementptr inbounds %struct.df_mw_hardreg, ptr %399, i64 0, i32 1
  %403 = load i32, ptr %402, align 8
  %404 = and i32 %403, 65535
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %398
  %407 = tail call fastcc ptr @df_set_unused_notes_for_mw(ptr noundef nonnull %193, ptr noundef %401, ptr noundef nonnull %399, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %408

408:                                              ; preds = %406, %398
  %409 = phi ptr [ %407, %406 ], [ %401, %398 ]
  %410 = getelementptr inbounds ptr, ptr %400, i64 1
  %411 = load ptr, ptr %410, align 8, !tbaa !182
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %398, !prof !341, !llvm.loop !709

413:                                              ; preds = %408, %397
  %414 = phi ptr [ %257, %397 ], [ %409, %408 ]
  %415 = load ptr, ptr @df, align 8, !tbaa !182
  %416 = getelementptr inbounds %struct.df, ptr %415, i64 0, i32 10
  %417 = load ptr, ptr %416, align 8, !tbaa !243
  %418 = getelementptr inbounds ptr, ptr %417, i64 %264
  %419 = load ptr, ptr %418, align 8, !tbaa !182
  %420 = getelementptr inbounds %struct.df_insn_info, ptr %419, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !244
  %422 = load ptr, ptr %421, align 8, !tbaa !182
  %423 = icmp eq ptr %422, null
  br i1 %423, label %514, label %424, !prof !710

424:                                              ; preds = %413, %510
  %425 = phi ptr [ %512, %510 ], [ %422, %413 ]
  %426 = phi ptr [ %511, %510 ], [ %421, %413 ]
  %427 = phi ptr [ %498, %510 ], [ %414, %413 ]
  %428 = getelementptr inbounds %struct.df_base_ref, ptr %425, i64 0, i32 6
  %429 = load i32, ptr %428, align 8, !tbaa !193
  %430 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %429) #20
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %497, !prof !700

432:                                              ; preds = %424
  %433 = load i32, ptr %425, align 8
  %434 = and i32 %433, 268435456
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %497, !prof !701

436:                                              ; preds = %432
  %437 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %429) #20
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %497, !prof !701

439:                                              ; preds = %436
  %440 = load i32, ptr @regstack_completed, align 4, !tbaa !197
  %441 = icmp eq i32 %440, 0
  %442 = and i32 %429, -8
  %443 = icmp ne i32 %442, 8
  %444 = or i1 %443, %441
  br i1 %444, label %445, label %497, !prof !701

445:                                              ; preds = %439
  %446 = load i32, ptr %425, align 8
  %447 = and i32 %446, 254
  %448 = icmp eq i32 %447, 2
  br i1 %448, label %449, label %460, !prof !701

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.df_regular_ref, ptr %425, i64 0, i32 1
  %451 = load ptr, ptr %450, align 8, !tbaa !193
  %452 = icmp eq ptr %451, null
  br i1 %452, label %460, label %453, !prof !702

453:                                              ; preds = %449
  %454 = load ptr, ptr %451, align 8, !tbaa !182
  %455 = load i32, ptr %454, align 8
  %456 = and i32 %455, 65535
  %457 = icmp eq i32 %456, 39
  %458 = getelementptr inbounds %struct.rtx_def, ptr %454, i64 0, i32 1
  %459 = select i1 %457, ptr %458, ptr %451, !prof !702
  br label %462

460:                                              ; preds = %449, %445
  %461 = getelementptr inbounds %struct.df_base_ref, ptr %425, i64 0, i32 1
  br label %462

462:                                              ; preds = %460, %453
  %463 = phi ptr [ %459, %453 ], [ %461, %460 ]
  %464 = load ptr, ptr %463, align 8, !tbaa !193
  %465 = load i32, ptr %193, align 8
  %466 = and i32 %465, 65535
  %467 = icmp eq i32 %466, 7
  br i1 %467, label %468, label %469, !prof !702

468:                                              ; preds = %462
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #20
  br label %469

469:                                              ; preds = %468, %462
  %470 = icmp eq ptr %427, null
  br i1 %470, label %496, label %471, !prof !703

471:                                              ; preds = %469
  %472 = getelementptr inbounds %struct.rtx_def, ptr %427, i64 0, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !193
  %474 = icmp eq ptr %473, %464
  br i1 %474, label %479, label %491, !prof !341

475:                                              ; preds = %491
  %476 = getelementptr inbounds %struct.rtx_def, ptr %494, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !193
  %478 = icmp eq ptr %477, %464
  br i1 %478, label %479, label %491, !prof !341, !llvm.loop !704

479:                                              ; preds = %475, %471
  %480 = phi ptr [ null, %471 ], [ %492, %475 ]
  %481 = phi ptr [ %427, %471 ], [ %494, %475 ]
  %482 = icmp eq ptr %480, null
  %483 = getelementptr inbounds %struct.rtx_def, ptr %481, i64 0, i32 1, i32 0, i32 0, i64 1
  %484 = load ptr, ptr %483, align 8, !tbaa !193
  br i1 %482, label %487, label %485, !prof !690

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.rtx_def, ptr %480, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %484, ptr %486, align 8, !tbaa !193
  br label %487

487:                                              ; preds = %479, %485
  %488 = phi ptr [ %427, %485 ], [ %484, %479 ]
  %489 = load ptr, ptr %209, align 8, !tbaa !193
  %490 = getelementptr inbounds %struct.rtx_def, ptr %481, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %489, ptr %490, align 8, !tbaa !193
  store ptr %481, ptr %209, align 8, !tbaa !193
  br label %497

491:                                              ; preds = %471, %475
  %492 = phi ptr [ %494, %475 ], [ %427, %471 ]
  %493 = getelementptr inbounds %struct.rtx_def, ptr %492, i64 0, i32 1, i32 0, i32 0, i64 1
  %494 = load ptr, ptr %493, align 8, !tbaa !193
  %495 = icmp eq ptr %494, null
  br i1 %495, label %496, label %475, !prof !705, !llvm.loop !704

496:                                              ; preds = %491, %469
  tail call void @add_reg_note(ptr noundef nonnull %193, i32 noundef 6, ptr noundef %464) #20
  br label %497

497:                                              ; preds = %424, %432, %436, %439, %487, %496
  %498 = phi ptr [ %427, %424 ], [ %427, %432 ], [ %427, %436 ], [ %427, %439 ], [ %488, %487 ], [ %427, %496 ]
  %499 = load i32, ptr %425, align 8
  %500 = and i32 %499, 12582912
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %504, !prof !711

502:                                              ; preds = %497
  %503 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %429) #20
  br label %504

504:                                              ; preds = %502, %497
  %505 = load i32, ptr %425, align 8
  %506 = and i32 %505, 1114112
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %510, !prof !712

508:                                              ; preds = %504
  %509 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %429) #20
  br label %510

510:                                              ; preds = %508, %504
  %511 = getelementptr inbounds ptr, ptr %426, i64 1
  %512 = load ptr, ptr %511, align 8, !tbaa !182
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %424, !prof !713, !llvm.loop !714

514:                                              ; preds = %510, %393, %413, %295
  %515 = phi ptr [ %296, %295 ], [ %414, %413 ], [ %387, %393 ], [ %498, %510 ]
  %516 = load ptr, ptr @df, align 8, !tbaa !182
  %517 = getelementptr inbounds %struct.df, ptr %516, i64 0, i32 10
  %518 = load ptr, ptr %517, align 8, !tbaa !243
  %519 = zext i32 %201 to i64
  %520 = getelementptr inbounds ptr, ptr %518, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !182
  %522 = getelementptr inbounds %struct.df_insn_info, ptr %521, i64 0, i32 4
  %523 = load ptr, ptr %522, align 8, !tbaa !693
  %524 = load ptr, ptr %523, align 8, !tbaa !182
  %525 = icmp eq ptr %524, null
  br i1 %525, label %671, label %526, !prof !341

526:                                              ; preds = %514, %665
  %527 = phi ptr [ %669, %665 ], [ %524, %514 ]
  %528 = phi ptr [ %668, %665 ], [ %523, %514 ]
  %529 = phi i32 [ %667, %665 ], [ %208, %514 ]
  %530 = phi ptr [ %666, %665 ], [ %256, %514 ]
  %531 = getelementptr inbounds %struct.df_mw_hardreg, ptr %527, i64 0, i32 1
  %532 = load i32, ptr %531, align 8
  %533 = and i32 %532, 65535
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %665

535:                                              ; preds = %526
  %536 = getelementptr inbounds %struct.df_mw_hardreg, ptr %527, i64 0, i32 2
  %537 = load i32, ptr %536, align 4, !tbaa !695
  %538 = load i32, ptr @regstack_completed, align 4, !tbaa !197
  %539 = icmp eq i32 %538, 0
  %540 = and i32 %537, -8
  %541 = icmp ne i32 %540, 8
  %542 = or i1 %539, %541
  br i1 %542, label %543, label %665

543:                                              ; preds = %535
  %544 = icmp eq i32 %529, 0
  %545 = and i32 %532, 1048576
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %606

547:                                              ; preds = %543
  %548 = getelementptr inbounds %struct.df_mw_hardreg, ptr %527, i64 0, i32 3
  %549 = load i32, ptr %548, align 8, !tbaa !715
  %550 = icmp ugt i32 %537, %549
  br i1 %550, label %565, label %555

551:                                              ; preds = %562
  %552 = add i32 %556, 1
  %553 = load i32, ptr %548, align 8, !tbaa !715
  %554 = icmp ugt i32 %552, %553
  br i1 %554, label %565, label %555, !llvm.loop !716

555:                                              ; preds = %547, %551
  %556 = phi i32 [ %552, %551 ], [ %537, %547 ]
  %557 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %556) #20
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %606

559:                                              ; preds = %555
  %560 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %556) #20
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %606

562:                                              ; preds = %559
  %563 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %556) #20
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %551, label %606

565:                                              ; preds = %551, %547
  %566 = load ptr, ptr %527, align 8, !tbaa !717
  %567 = load i32, ptr %566, align 8
  %568 = and i32 %567, 65535
  %569 = icmp eq i32 %568, 37
  br i1 %569, label %571, label %570

570:                                              ; preds = %565
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3306, ptr noundef nonnull @.str.1) #20
  br label %571

571:                                              ; preds = %570, %565
  br i1 %544, label %572, label %665

572:                                              ; preds = %571
  %573 = load ptr, ptr %527, align 8, !tbaa !717
  %574 = load i32, ptr %193, align 8
  %575 = and i32 %574, 65535
  %576 = icmp eq i32 %575, 7
  br i1 %576, label %577, label %578

577:                                              ; preds = %572
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #20
  br label %578

578:                                              ; preds = %577, %572
  %579 = icmp eq ptr %530, null
  br i1 %579, label %605, label %580

580:                                              ; preds = %578
  %581 = getelementptr inbounds %struct.rtx_def, ptr %530, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !193
  %583 = icmp eq ptr %582, %573
  br i1 %583, label %588, label %600

584:                                              ; preds = %600
  %585 = getelementptr inbounds %struct.rtx_def, ptr %603, i64 0, i32 1
  %586 = load ptr, ptr %585, align 8, !tbaa !193
  %587 = icmp eq ptr %586, %573
  br i1 %587, label %588, label %600, !llvm.loop !704

588:                                              ; preds = %584, %580
  %589 = phi ptr [ null, %580 ], [ %601, %584 ]
  %590 = phi ptr [ %530, %580 ], [ %603, %584 ]
  %591 = icmp eq ptr %589, null
  %592 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1, i32 0, i32 0, i64 1
  %593 = load ptr, ptr %592, align 8, !tbaa !193
  br i1 %591, label %596, label %594

594:                                              ; preds = %588
  %595 = getelementptr inbounds %struct.rtx_def, ptr %589, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %593, ptr %595, align 8, !tbaa !193
  br label %596

596:                                              ; preds = %588, %594
  %597 = phi ptr [ %530, %594 ], [ %593, %588 ]
  %598 = load ptr, ptr %209, align 8, !tbaa !193
  %599 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %598, ptr %599, align 8, !tbaa !193
  store ptr %590, ptr %209, align 8, !tbaa !193
  br label %665

600:                                              ; preds = %580, %584
  %601 = phi ptr [ %603, %584 ], [ %530, %580 ]
  %602 = getelementptr inbounds %struct.rtx_def, ptr %601, i64 0, i32 1, i32 0, i32 0, i64 1
  %603 = load ptr, ptr %602, align 8, !tbaa !193
  %604 = icmp eq ptr %603, null
  br i1 %604, label %605, label %584, !llvm.loop !704

605:                                              ; preds = %600, %578
  tail call void @add_reg_note(ptr noundef nonnull %193, i32 noundef 1, ptr noundef %573) #20
  br label %665

606:                                              ; preds = %562, %559, %555, %543
  %607 = load i32, ptr %536, align 4, !tbaa !695
  %608 = getelementptr inbounds %struct.df_mw_hardreg, ptr %527, i64 0, i32 3
  %609 = load i32, ptr %608, align 8, !tbaa !715
  %610 = icmp ugt i32 %607, %609
  br i1 %610, label %665, label %611

611:                                              ; preds = %606, %660
  %612 = phi i32 [ %662, %660 ], [ %607, %606 ]
  %613 = phi ptr [ %661, %660 ], [ %530, %606 ]
  %614 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %612) #20
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %660

616:                                              ; preds = %611
  %617 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %612) #20
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %660

619:                                              ; preds = %616
  %620 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %612) #20
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %660

622:                                              ; preds = %619
  br i1 %544, label %623, label %665

623:                                              ; preds = %622
  %624 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !182
  %625 = zext i32 %612 to i64
  %626 = getelementptr inbounds ptr, ptr %624, i64 %625
  %627 = load ptr, ptr %626, align 8, !tbaa !182
  %628 = load i32, ptr %193, align 8
  %629 = and i32 %628, 65535
  %630 = icmp eq i32 %629, 7
  br i1 %630, label %631, label %632

631:                                              ; preds = %623
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #20
  br label %632

632:                                              ; preds = %631, %623
  %633 = icmp eq ptr %613, null
  br i1 %633, label %659, label %634

634:                                              ; preds = %632
  %635 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %636 = load ptr, ptr %635, align 8, !tbaa !193
  %637 = icmp eq ptr %636, %627
  br i1 %637, label %642, label %654

638:                                              ; preds = %654
  %639 = getelementptr inbounds %struct.rtx_def, ptr %657, i64 0, i32 1
  %640 = load ptr, ptr %639, align 8, !tbaa !193
  %641 = icmp eq ptr %640, %627
  br i1 %641, label %642, label %654, !llvm.loop !704

642:                                              ; preds = %638, %634
  %643 = phi ptr [ null, %634 ], [ %655, %638 ]
  %644 = phi ptr [ %613, %634 ], [ %657, %638 ]
  %645 = icmp eq ptr %643, null
  %646 = getelementptr inbounds %struct.rtx_def, ptr %644, i64 0, i32 1, i32 0, i32 0, i64 1
  %647 = load ptr, ptr %646, align 8, !tbaa !193
  br i1 %645, label %650, label %648

648:                                              ; preds = %642
  %649 = getelementptr inbounds %struct.rtx_def, ptr %643, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %647, ptr %649, align 8, !tbaa !193
  br label %650

650:                                              ; preds = %642, %648
  %651 = phi ptr [ %613, %648 ], [ %647, %642 ]
  %652 = load ptr, ptr %209, align 8, !tbaa !193
  %653 = getelementptr inbounds %struct.rtx_def, ptr %644, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %652, ptr %653, align 8, !tbaa !193
  store ptr %644, ptr %209, align 8, !tbaa !193
  br label %660

654:                                              ; preds = %634, %638
  %655 = phi ptr [ %657, %638 ], [ %613, %634 ]
  %656 = getelementptr inbounds %struct.rtx_def, ptr %655, i64 0, i32 1, i32 0, i32 0, i64 1
  %657 = load ptr, ptr %656, align 8, !tbaa !193
  %658 = icmp eq ptr %657, null
  br i1 %658, label %659, label %638, !llvm.loop !704

659:                                              ; preds = %654, %632
  tail call void @add_reg_note(ptr noundef nonnull %193, i32 noundef 1, ptr noundef %627) #20
  br label %660

660:                                              ; preds = %659, %650, %619, %616, %611
  %661 = phi ptr [ %613, %611 ], [ %613, %616 ], [ %613, %619 ], [ %651, %650 ], [ %613, %659 ]
  %662 = add i32 %612, 1
  %663 = load i32, ptr %608, align 8, !tbaa !715
  %664 = icmp ugt i32 %662, %663
  br i1 %664, label %665, label %611, !llvm.loop !718

665:                                              ; preds = %622, %660, %606, %571, %596, %605, %535, %526
  %666 = phi ptr [ %530, %535 ], [ %530, %526 ], [ %530, %605 ], [ %597, %596 ], [ %530, %571 ], [ %530, %606 ], [ %661, %660 ], [ %613, %622 ]
  %667 = phi i32 [ %529, %535 ], [ %529, %526 ], [ %529, %605 ], [ %529, %596 ], [ -1, %571 ], [ %529, %606 ], [ %529, %660 ], [ -1, %622 ]
  %668 = getelementptr inbounds ptr, ptr %528, i64 1
  %669 = load ptr, ptr %668, align 8, !tbaa !182
  %670 = icmp eq ptr %669, null
  br i1 %670, label %671, label %526, !prof !341, !llvm.loop !719

671:                                              ; preds = %665, %514
  %672 = phi ptr [ %256, %514 ], [ %666, %665 ]
  %673 = phi i32 [ %208, %514 ], [ %667, %665 ]
  %674 = load ptr, ptr @df, align 8, !tbaa !182
  %675 = getelementptr inbounds %struct.df, ptr %674, i64 0, i32 10
  %676 = load ptr, ptr %675, align 8, !tbaa !243
  %677 = getelementptr inbounds ptr, ptr %676, i64 %519
  %678 = load ptr, ptr %677, align 8, !tbaa !182
  %679 = getelementptr inbounds %struct.df_insn_info, ptr %678, i64 0, i32 2
  %680 = load ptr, ptr %679, align 8, !tbaa !276
  %681 = load ptr, ptr %680, align 8, !tbaa !182
  %682 = icmp eq ptr %681, null
  br i1 %682, label %776, label %687, !prof !720

683:                                              ; preds = %772
  %684 = getelementptr inbounds ptr, ptr %689, i64 1
  %685 = load ptr, ptr %684, align 8, !tbaa !182
  %686 = icmp eq ptr %685, null
  br i1 %686, label %776, label %687, !prof !721, !llvm.loop !722

687:                                              ; preds = %671, %683
  %688 = phi ptr [ %685, %683 ], [ %681, %671 ]
  %689 = phi ptr [ %684, %683 ], [ %680, %671 ]
  %690 = phi i32 [ %775, %683 ], [ %673, %671 ]
  %691 = phi ptr [ %773, %683 ], [ %672, %671 ]
  %692 = getelementptr inbounds %struct.df_base_ref, ptr %688, i64 0, i32 6
  %693 = load i32, ptr %692, align 8, !tbaa !193
  %694 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %693) #20
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %772, !prof !723

696:                                              ; preds = %687
  %697 = icmp eq i32 %690, 0
  br i1 %697, label %698, label %772, !prof !724

698:                                              ; preds = %696
  %699 = load i32, ptr %688, align 8
  %700 = and i32 %699, 268435456
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %702, label %769, !prof !724

702:                                              ; preds = %698
  %703 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %693) #20
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %769, !prof !725

705:                                              ; preds = %702
  %706 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %693) #20
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %769, !prof !726

708:                                              ; preds = %705
  %709 = load i32, ptr %688, align 8
  %710 = and i32 %709, 2097152
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %769, !prof !727

712:                                              ; preds = %708
  %713 = load i32, ptr @regstack_completed, align 4, !tbaa !197
  %714 = icmp eq i32 %713, 0
  %715 = and i32 %693, -8
  %716 = icmp ne i32 %715, 8
  %717 = or i1 %716, %714
  br i1 %717, label %718, label %769, !prof !727

718:                                              ; preds = %712
  %719 = and i32 %709, 254
  %720 = icmp eq i32 %719, 2
  br i1 %720, label %721, label %732, !prof !727

721:                                              ; preds = %718
  %722 = getelementptr inbounds %struct.df_regular_ref, ptr %688, i64 0, i32 1
  %723 = load ptr, ptr %722, align 8, !tbaa !193
  %724 = icmp eq ptr %723, null
  br i1 %724, label %732, label %725, !prof !728

725:                                              ; preds = %721
  %726 = load ptr, ptr %723, align 8, !tbaa !182
  %727 = load i32, ptr %726, align 8
  %728 = and i32 %727, 65535
  %729 = icmp eq i32 %728, 39
  %730 = getelementptr inbounds %struct.rtx_def, ptr %726, i64 0, i32 1
  %731 = select i1 %729, ptr %730, ptr %723, !prof !729
  br label %734

732:                                              ; preds = %721, %718
  %733 = getelementptr inbounds %struct.df_base_ref, ptr %688, i64 0, i32 1
  br label %734

734:                                              ; preds = %732, %725
  %735 = phi ptr [ %731, %725 ], [ %733, %732 ]
  %736 = load ptr, ptr %735, align 8, !tbaa !193
  %737 = load i32, ptr %193, align 8
  %738 = and i32 %737, 65535
  %739 = icmp eq i32 %738, 7
  br i1 %739, label %740, label %741, !prof !728

740:                                              ; preds = %734
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #20
  br label %741

741:                                              ; preds = %740, %734
  %742 = icmp eq ptr %691, null
  br i1 %742, label %768, label %743, !prof !730

743:                                              ; preds = %741
  %744 = getelementptr inbounds %struct.rtx_def, ptr %691, i64 0, i32 1
  %745 = load ptr, ptr %744, align 8, !tbaa !193
  %746 = icmp eq ptr %745, %736
  br i1 %746, label %751, label %763, !prof !731

747:                                              ; preds = %763
  %748 = getelementptr inbounds %struct.rtx_def, ptr %766, i64 0, i32 1
  %749 = load ptr, ptr %748, align 8, !tbaa !193
  %750 = icmp eq ptr %749, %736
  br i1 %750, label %751, label %763, !prof !732, !llvm.loop !704

751:                                              ; preds = %747, %743
  %752 = phi ptr [ null, %743 ], [ %764, %747 ]
  %753 = phi ptr [ %691, %743 ], [ %766, %747 ]
  %754 = icmp eq ptr %752, null
  %755 = getelementptr inbounds %struct.rtx_def, ptr %753, i64 0, i32 1, i32 0, i32 0, i64 1
  %756 = load ptr, ptr %755, align 8, !tbaa !193
  br i1 %754, label %759, label %757, !prof !733

757:                                              ; preds = %751
  %758 = getelementptr inbounds %struct.rtx_def, ptr %752, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %756, ptr %758, align 8, !tbaa !193
  br label %759

759:                                              ; preds = %751, %757
  %760 = phi ptr [ %691, %757 ], [ %756, %751 ]
  %761 = load ptr, ptr %209, align 8, !tbaa !193
  %762 = getelementptr inbounds %struct.rtx_def, ptr %753, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %761, ptr %762, align 8, !tbaa !193
  store ptr %753, ptr %209, align 8, !tbaa !193
  br label %769

763:                                              ; preds = %743, %747
  %764 = phi ptr [ %766, %747 ], [ %691, %743 ]
  %765 = getelementptr inbounds %struct.rtx_def, ptr %764, i64 0, i32 1, i32 0, i32 0, i64 1
  %766 = load ptr, ptr %765, align 8, !tbaa !193
  %767 = icmp eq ptr %766, null
  br i1 %767, label %768, label %747, !prof !734, !llvm.loop !704

768:                                              ; preds = %763, %741
  tail call void @add_reg_note(ptr noundef nonnull %193, i32 noundef 1, ptr noundef %736) #20
  br label %769

769:                                              ; preds = %768, %759, %712, %708, %705, %702, %698
  %770 = phi ptr [ %691, %712 ], [ %691, %708 ], [ %691, %705 ], [ %691, %702 ], [ %691, %698 ], [ %760, %759 ], [ %691, %768 ]
  %771 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %693) #20
  br label %772

772:                                              ; preds = %769, %696, %687
  %773 = phi ptr [ %770, %769 ], [ %691, %696 ], [ %691, %687 ]
  %774 = phi i1 [ true, %769 ], [ false, %696 ], [ true, %687 ]
  %775 = phi i32 [ %690, %769 ], [ -1, %696 ], [ %690, %687 ]
  br i1 %774, label %683, label %776, !prof !721

776:                                              ; preds = %683, %772, %671
  %777 = phi ptr [ %672, %671 ], [ %773, %772 ], [ %773, %683 ]
  %778 = phi i32 [ %673, %671 ], [ %775, %772 ], [ %775, %683 ]
  %779 = icmp eq ptr %515, null
  br i1 %779, label %780, label %782, !prof !341

780:                                              ; preds = %782, %776
  %781 = icmp eq ptr %777, null
  br i1 %781, label %792, label %787, !prof !735

782:                                              ; preds = %776, %782
  %783 = phi ptr [ %785, %782 ], [ %515, %776 ]
  %784 = getelementptr inbounds %struct.rtx_def, ptr %783, i64 0, i32 1, i32 0, i32 0, i64 1
  %785 = load ptr, ptr %784, align 8, !tbaa !193
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %783) #20
  %786 = icmp eq ptr %785, null
  br i1 %786, label %780, label %782, !prof !341, !llvm.loop !736

787:                                              ; preds = %780, %787
  %788 = phi ptr [ %790, %787 ], [ %777, %780 ]
  %789 = getelementptr inbounds %struct.rtx_def, ptr %788, i64 0, i32 1, i32 0, i32 0, i64 1
  %790 = load ptr, ptr %789, align 8, !tbaa !193
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %788) #20
  %791 = icmp eq ptr %790, null
  br i1 %791, label %792, label %787, !prof !737, !llvm.loop !738

792:                                              ; preds = %787, %780
  %793 = icmp eq i32 %778, -1
  br i1 %793, label %794, label %801, !prof !739

794:                                              ; preds = %792
  %795 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !182
  %796 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %795) #20
  %797 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 1
  %798 = load ptr, ptr %797, align 8, !tbaa !193
  %799 = getelementptr inbounds %struct.rtx_def, ptr %798, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %796, ptr %799, align 8, !tbaa !193
  %800 = tail call zeroext i8 @df_insn_rescan_debug_internal(ptr noundef nonnull %193) #20
  br label %801

801:                                              ; preds = %794, %792, %199
  %802 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 1
  %803 = load ptr, ptr %802, align 8, !tbaa !193
  %804 = icmp eq ptr %803, null
  br i1 %804, label %805, label %192, !prof !740, !llvm.loop !741

805:                                              ; preds = %192, %801, %186
  %806 = lshr i64 %72, 1
  %807 = add i32 %74, 1
  br label %16, !llvm.loop !742

808:                                              ; preds = %71
  tail call void @bitmap_obstack_free(ptr noundef %2) #20
  tail call void @bitmap_obstack_free(ptr noundef %3) #20
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define internal void @df_note_free() #17 !prof !325 !PGOFuncName !743 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 6
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  tail call void @free(ptr noundef %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @df_set_unused_notes_for_mw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #12 !prof !181 {
  %7 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1048576
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !695
  %14 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !715
  %16 = icmp ugt i32 %13, %15
  br i1 %16, label %28, label %21

17:                                               ; preds = %25
  %18 = add i32 %22, 1
  %19 = load i32, ptr %14, align 8, !tbaa !715
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %28, label %21, !llvm.loop !744

21:                                               ; preds = %11, %17
  %22 = phi i32 [ %18, %17 ], [ %13, %11 ]
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %22) #20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %22) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %17, label %74

28:                                               ; preds = %17, %11
  %29 = load ptr, ptr %2, align 8, !tbaa !717
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3230, ptr noundef nonnull @.str.1) #20
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !695
  %37 = load ptr, ptr %2, align 8, !tbaa !717
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #20
  br label %42

42:                                               ; preds = %41, %34
  %43 = icmp eq ptr %1, null
  br i1 %43, label %70, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = icmp eq ptr %46, %37
  br i1 %47, label %52, label %65

48:                                               ; preds = %65
  %49 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !193
  %51 = icmp eq ptr %50, %37
  br i1 %51, label %52, label %65, !llvm.loop !704

52:                                               ; preds = %48, %44
  %53 = phi ptr [ null, %44 ], [ %66, %48 ]
  %54 = phi ptr [ %1, %44 ], [ %68, %48 ]
  %55 = icmp eq ptr %53, null
  %56 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !193
  br i1 %55, label %60, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %57, ptr %59, align 8, !tbaa !193
  br label %60

60:                                               ; preds = %52, %58
  %61 = phi ptr [ %1, %58 ], [ %57, %52 ]
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !193
  %64 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %63, ptr %64, align 8, !tbaa !193
  store ptr %54, ptr %62, align 8, !tbaa !193
  br label %71

65:                                               ; preds = %44, %48
  %66 = phi ptr [ %68, %48 ], [ %1, %44 ]
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !193
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %48, !llvm.loop !704

70:                                               ; preds = %65, %42
  tail call void @add_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %37) #20
  br label %71

71:                                               ; preds = %60, %70
  %72 = phi ptr [ %61, %60 ], [ %1, %70 ]
  %73 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %36) #20
  br label %133

74:                                               ; preds = %25, %21, %6
  %75 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !695
  %77 = getelementptr inbounds %struct.df_mw_hardreg, ptr %2, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !715
  %79 = icmp ugt i32 %76, %78
  br i1 %79, label %133, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  br label %82

82:                                               ; preds = %80, %127
  %83 = phi ptr [ %1, %80 ], [ %128, %127 ]
  %84 = phi i32 [ %76, %80 ], [ %130, %127 ]
  %85 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %84) #20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %82
  %88 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %84) #20
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %127

90:                                               ; preds = %87
  %91 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !182
  %92 = zext i32 %84 to i64
  %93 = getelementptr inbounds ptr, ptr %91, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !182
  %95 = load i32, ptr %0, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 7
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3184, ptr noundef nonnull @.str.1) #20
  br label %99

99:                                               ; preds = %98, %90
  %100 = icmp eq ptr %83, null
  br i1 %100, label %126, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !193
  %104 = icmp eq ptr %103, %94
  br i1 %104, label %109, label %121

105:                                              ; preds = %121
  %106 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !193
  %108 = icmp eq ptr %107, %94
  br i1 %108, label %109, label %121, !llvm.loop !704

109:                                              ; preds = %105, %101
  %110 = phi ptr [ null, %101 ], [ %122, %105 ]
  %111 = phi ptr [ %83, %101 ], [ %124, %105 ]
  %112 = icmp eq ptr %110, null
  %113 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !193
  br i1 %112, label %117, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %114, ptr %116, align 8, !tbaa !193
  br label %117

117:                                              ; preds = %109, %115
  %118 = phi ptr [ %83, %115 ], [ %114, %109 ]
  %119 = load ptr, ptr %81, align 8, !tbaa !193
  %120 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %119, ptr %120, align 8, !tbaa !193
  store ptr %111, ptr %81, align 8, !tbaa !193
  br label %127

121:                                              ; preds = %101, %105
  %122 = phi ptr [ %124, %105 ], [ %83, %101 ]
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !193
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %105, !llvm.loop !704

126:                                              ; preds = %121, %99
  tail call void @add_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %94) #20
  br label %127

127:                                              ; preds = %126, %117, %87, %82
  %128 = phi ptr [ %83, %82 ], [ %83, %87 ], [ %118, %117 ], [ %83, %126 ]
  %129 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %84) #20
  %130 = add i32 %84, 1
  %131 = load i32, ptr %77, align 8, !tbaa !715
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %133, label %82, !llvm.loop !745

133:                                              ; preds = %127, %74, %71
  %134 = phi ptr [ %72, %71 ], [ %1, %74 ], [ %128, %127 ]
  ret ptr %134
}

declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan_debug_internal(ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @df_md_alloc(ptr nocapture noundef readonly %0) #13 !prof !284 !PGOFuncName !746 {
  %2 = load ptr, ptr @df, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 7
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !309
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14, !prof !747

8:                                                ; preds = %1
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.48, i64 noundef 40, i64 noundef 50) #20
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 7
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 3
  store ptr %9, ptr %13, align 8, !tbaa !309
  br label %14

14:                                               ; preds = %8, %1
  %15 = load ptr, ptr @df, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 1, i64 7
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = load ptr, ptr @cfun, align 8, !tbaa !182
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !215
  %23 = add nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !205
  %26 = icmp ult i32 %25, %23
  br i1 %26, label %27, label %41, !prof !217

27:                                               ; preds = %14
  %28 = lshr i32 %23, 2
  %29 = add i32 %28, %23
  %30 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !208
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = tail call ptr @xrealloc(ptr noundef %31, i64 noundef %33) #20
  store ptr %34, ptr %30, align 8, !tbaa !208
  %35 = load i32, ptr %24, align 8, !tbaa !205
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = sub i32 %29, %35
  %39 = zext i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %37, i8 0, i64 %40, i1 false), !prof !389
  store i32 %29, ptr %24, align 8, !tbaa !205
  br label %41

41:                                               ; preds = %14, %27
  %42 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %42, ptr @df_md_scratch, align 8, !tbaa !182
  %43 = load ptr, ptr %0, align 8, !tbaa !390
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @bitmap_zero_bits, ptr %43, !prof !748
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !393
  %48 = shl i32 %47, 7
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 3, i64 0
  %50 = load i64, ptr %49, align 8, !tbaa !395
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = or disjoint i32 %48, %52
  br label %54

54:                                               ; preds = %175, %41
  %55 = phi i64 [ %50, %41 ], [ %176, %175 ]
  %56 = phi i32 [ 0, %41 ], [ %111, %175 ]
  %57 = phi i32 [ %53, %41 ], [ %177, %175 ]
  %58 = phi ptr [ %45, %41 ], [ %113, %175 ]
  %59 = icmp eq i64 %55, 0
  br i1 %59, label %74, label %60, !prof !749

60:                                               ; preds = %88, %54
  %61 = phi i64 [ %55, %54 ], [ %93, %88 ]
  %62 = phi i32 [ %56, %54 ], [ %89, %88 ]
  %63 = phi i32 [ %57, %54 ], [ %90, %88 ]
  %64 = phi ptr [ %58, %54 ], [ %81, %88 ]
  %65 = and i64 %61, 1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %109, !prof !750

67:                                               ; preds = %60, %67
  %68 = phi i32 [ %71, %67 ], [ %63, %60 ]
  %69 = phi i64 [ %70, %67 ], [ %61, %60 ]
  %70 = lshr exact i64 %69, 1
  %71 = add i32 %68, 1
  %72 = and i64 %69, 2
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %67, label %109, !prof !751, !llvm.loop !399

74:                                               ; preds = %54
  %75 = add i32 %57, 63
  %76 = and i32 %75, -64
  %77 = add i32 %56, 1
  br label %78

78:                                               ; preds = %105, %74
  %79 = phi i64 [ %55, %74 ], [ %100, %105 ]
  %80 = phi i32 [ %76, %74 ], [ %108, %105 ]
  %81 = phi ptr [ %58, %74 ], [ %103, %105 ]
  %82 = phi i32 [ %77, %74 ], [ 0, %105 ]
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %99, label %84, !prof !752

84:                                               ; preds = %78
  %85 = add i32 %80, 128
  %86 = shl i32 %82, 6
  %87 = sub i32 %85, %86
  br label %88

88:                                               ; preds = %84, %95
  %89 = phi i32 [ %97, %95 ], [ %82, %84 ]
  %90 = phi i32 [ %96, %95 ], [ %80, %84 ]
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds %struct.bitmap_element_def, ptr %81, i64 0, i32 3, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !395
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %60, !prof !753

95:                                               ; preds = %88
  %96 = add i32 %90, 64
  %97 = add i32 %89, 1
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %88, !prof !754, !llvm.loop !403

99:                                               ; preds = %95, %78
  %100 = phi i64 [ %79, %78 ], [ %93, %95 ]
  %101 = phi i32 [ %80, %78 ], [ %87, %95 ]
  %102 = phi i32 [ %82, %78 ], [ 2, %95 ]
  %103 = load ptr, ptr %81, align 8, !tbaa !404
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105, !prof !755

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.bitmap_element_def, ptr %103, i64 0, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !393
  %108 = shl i32 %107, 7
  br label %78, !llvm.loop !406

109:                                              ; preds = %99, %67, %60
  %110 = phi i64 [ %61, %60 ], [ %70, %67 ], [ %100, %99 ]
  %111 = phi i32 [ %62, %60 ], [ %62, %67 ], [ %102, %99 ]
  %112 = phi i32 [ %63, %60 ], [ %71, %67 ], [ %101, %99 ]
  %113 = phi ptr [ %64, %60 ], [ %64, %67 ], [ %103, %99 ]
  %114 = phi i1 [ false, %60 ], [ false, %67 ], [ true, %99 ]
  %115 = load ptr, ptr @df, align 8, !tbaa !182
  %116 = getelementptr inbounds %struct.df, ptr %115, i64 0, i32 1, i64 7
  %117 = load ptr, ptr %116, align 8, !tbaa !182
  br i1 %114, label %178, label %118, !prof !756

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.dataflow, ptr %117, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !205
  %121 = icmp ugt i32 %120, %112
  br i1 %121, label %122, label %128, !prof !757

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.dataflow, ptr %117, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !208
  %125 = zext i32 %112 to i64
  %126 = getelementptr inbounds ptr, ptr %124, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !182
  br label %128

128:                                              ; preds = %118, %122
  %129 = phi ptr [ %127, %122 ], [ null, %118 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %141, label %131, !prof !757

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.df_md_bb_info, ptr %129, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !758
  tail call void @bitmap_clear(ptr noundef %133) #20
  %134 = load ptr, ptr %129, align 8, !tbaa !760
  tail call void @bitmap_clear(ptr noundef %134) #20
  %135 = getelementptr inbounds %struct.df_md_bb_info, ptr %129, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !761
  tail call void @bitmap_clear(ptr noundef %136) #20
  %137 = getelementptr inbounds %struct.df_md_bb_info, ptr %129, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !762
  tail call void @bitmap_clear(ptr noundef %138) #20
  %139 = getelementptr inbounds %struct.df_md_bb_info, ptr %129, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !763
  tail call void @bitmap_clear(ptr noundef %140) #20
  br label %175

141:                                              ; preds = %128
  %142 = getelementptr inbounds %struct.dataflow, ptr %117, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !309
  %144 = tail call ptr @pool_alloc(ptr noundef %143) #20
  %145 = load ptr, ptr @df, align 8, !tbaa !182
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 1, i64 7
  %147 = load ptr, ptr %146, align 8, !tbaa !182
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %150, !prof !764

149:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4030, ptr noundef nonnull @.str.1) #20
  br label %150

150:                                              ; preds = %149, %141
  %151 = load ptr, ptr @df, align 8, !tbaa !182
  %152 = getelementptr inbounds %struct.df, ptr %151, i64 0, i32 1, i64 7
  %153 = load ptr, ptr %152, align 8, !tbaa !182
  %154 = getelementptr inbounds %struct.dataflow, ptr %153, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !205
  %156 = icmp ugt i32 %155, %112
  br i1 %156, label %158, label %157, !prof !757

157:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4031, ptr noundef nonnull @.str.1) #20
  br label %158

158:                                              ; preds = %150, %157
  %159 = load ptr, ptr @df, align 8, !tbaa !182
  %160 = getelementptr inbounds %struct.df, ptr %159, i64 0, i32 1, i64 7
  %161 = load ptr, ptr %160, align 8, !tbaa !182
  %162 = getelementptr inbounds %struct.dataflow, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !208
  %164 = zext i32 %112 to i64
  %165 = getelementptr inbounds ptr, ptr %163, i64 %164
  store ptr %144, ptr %165, align 8, !tbaa !182
  %166 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %167 = getelementptr inbounds %struct.df_md_bb_info, ptr %144, i64 0, i32 2
  store ptr %166, ptr %167, align 8, !tbaa !758
  %168 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %168, ptr %144, align 8, !tbaa !760
  %169 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %170 = getelementptr inbounds %struct.df_md_bb_info, ptr %144, i64 0, i32 1
  store ptr %169, ptr %170, align 8, !tbaa !761
  %171 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %172 = getelementptr inbounds %struct.df_md_bb_info, ptr %144, i64 0, i32 3
  store ptr %171, ptr %172, align 8, !tbaa !762
  %173 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %174 = getelementptr inbounds %struct.df_md_bb_info, ptr %144, i64 0, i32 4
  store ptr %173, ptr %174, align 8, !tbaa !763
  br label %175

175:                                              ; preds = %158, %131
  %176 = lshr i64 %110, 1
  %177 = add i32 %112, 1
  br label %54, !llvm.loop !765

178:                                              ; preds = %109
  %179 = getelementptr inbounds %struct.dataflow, ptr %117, i64 0, i32 9
  store i8 1, ptr %179, align 2, !tbaa !417
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_md_reset(ptr nocapture noundef readonly %0) #12 !prof !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %91, %1
  %14 = phi i64 [ %9, %1 ], [ %96, %91 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %91 ]
  %16 = phi i32 [ %12, %1 ], [ %97, %91 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %91 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %98, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 7
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !208
  %84 = zext i32 %71 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  br label %87

87:                                               ; preds = %74, %81
  %88 = phi ptr [ %86, %81 ], [ null, %74 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4267, ptr noundef nonnull @.str.1) #20
  br label %91

91:                                               ; preds = %87, %90
  %92 = getelementptr inbounds %struct.df_md_bb_info, ptr %88, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !762
  tail call void @bitmap_clear(ptr noundef %93) #20
  %94 = getelementptr inbounds %struct.df_md_bb_info, ptr %88, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !763
  tail call void @bitmap_clear(ptr noundef %95) #20
  %96 = lshr i64 %69, 1
  %97 = add i32 %71, 1
  br label %13, !llvm.loop !766

98:                                               ; preds = %68
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_md_free_bb_info(ptr nocapture readnone %0, ptr noundef %1) #12 !prof !767 !PGOFuncName !768 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4, !prof !398

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !761
  tail call void @bitmap_obstack_free(ptr noundef %6) #20
  store ptr null, ptr %5, align 8, !tbaa !761
  %7 = load ptr, ptr %1, align 8, !tbaa !760
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  store ptr null, ptr %1, align 8, !tbaa !760
  %8 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !758
  tail call void @bitmap_obstack_free(ptr noundef %9) #20
  store ptr null, ptr %8, align 8, !tbaa !758
  %10 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !762
  tail call void @bitmap_obstack_free(ptr noundef %11) #20
  store ptr null, ptr %10, align 8, !tbaa !762
  %12 = getelementptr inbounds %struct.df_md_bb_info, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !763
  tail call void @bitmap_obstack_free(ptr noundef %13) #20
  store ptr null, ptr %12, align 8, !tbaa !763
  %14 = load ptr, ptr @df, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 1, i64 7
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !309
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %1) #20
  br label %19

19:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_md_local_compute(ptr noundef %0) #13 !prof !284 !PGOFuncName !769 {
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %2, ptr @seen_in_insn, align 8, !tbaa !182
  %3 = load ptr, ptr %0, align 8, !tbaa !390
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @bitmap_zero_bits, ptr %3, !prof !748
  %6 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !393
  %8 = shl i32 %7, 7
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3, i64 0
  %10 = load i64, ptr %9, align 8, !tbaa !395
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = or disjoint i32 %8, %12
  br label %14

14:                                               ; preds = %291, %1
  %15 = phi i64 [ %10, %1 ], [ %292, %291 ]
  %16 = phi i32 [ 0, %1 ], [ %71, %291 ]
  %17 = phi ptr [ %5, %1 ], [ %72, %291 ]
  %18 = phi i32 [ %13, %1 ], [ %293, %291 ]
  %19 = icmp eq i64 %15, 0
  br i1 %19, label %34, label %20, !prof !749

20:                                               ; preds = %48, %14
  %21 = phi i64 [ %15, %14 ], [ %53, %48 ]
  %22 = phi i32 [ %16, %14 ], [ %49, %48 ]
  %23 = phi ptr [ %17, %14 ], [ %40, %48 ]
  %24 = phi i32 [ %18, %14 ], [ %50, %48 ]
  %25 = and i64 %21, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %69, !prof !750

27:                                               ; preds = %20, %27
  %28 = phi i32 [ %31, %27 ], [ %24, %20 ]
  %29 = phi i64 [ %30, %27 ], [ %21, %20 ]
  %30 = lshr exact i64 %29, 1
  %31 = add i32 %28, 1
  %32 = and i64 %29, 2
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %27, label %69, !prof !751, !llvm.loop !399

34:                                               ; preds = %14
  %35 = add i32 %18, 63
  %36 = and i32 %35, -64
  %37 = add i32 %16, 1
  br label %38

38:                                               ; preds = %65, %34
  %39 = phi i64 [ %15, %34 ], [ %60, %65 ]
  %40 = phi ptr [ %17, %34 ], [ %63, %65 ]
  %41 = phi i32 [ %36, %34 ], [ %68, %65 ]
  %42 = phi i32 [ %37, %34 ], [ 0, %65 ]
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %59, label %44, !prof !752

44:                                               ; preds = %38
  %45 = add i32 %41, 128
  %46 = shl i32 %42, 6
  %47 = sub i32 %45, %46
  br label %48

48:                                               ; preds = %44, %55
  %49 = phi i32 [ %57, %55 ], [ %42, %44 ]
  %50 = phi i32 [ %56, %55 ], [ %41, %44 ]
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !395
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %20, !prof !753

55:                                               ; preds = %48
  %56 = add i32 %50, 64
  %57 = add i32 %49, 1
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %48, !prof !754, !llvm.loop !403

59:                                               ; preds = %55, %38
  %60 = phi i64 [ %39, %38 ], [ %53, %55 ]
  %61 = phi i32 [ %41, %38 ], [ %47, %55 ]
  %62 = phi i32 [ %42, %38 ], [ 2, %55 ]
  %63 = load ptr, ptr %40, align 8, !tbaa !404
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65, !prof !755

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !393
  %68 = shl i32 %67, 7
  br label %38, !llvm.loop !406

69:                                               ; preds = %59, %27, %20
  %70 = phi i64 [ %21, %20 ], [ %30, %27 ], [ %60, %59 ]
  %71 = phi i32 [ %22, %20 ], [ %22, %27 ], [ %62, %59 ]
  %72 = phi ptr [ %23, %20 ], [ %23, %27 ], [ %63, %59 ]
  %73 = phi i32 [ %24, %20 ], [ %31, %27 ], [ %61, %59 ]
  %74 = phi i1 [ false, %20 ], [ false, %27 ], [ true, %59 ]
  br i1 %74, label %294, label %75, !prof !756

75:                                               ; preds = %69
  %76 = load ptr, ptr @cfun, align 8, !tbaa !182
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !213
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !257
  %81 = zext i32 %73 to i64
  %82 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %80, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !182
  %84 = load ptr, ptr @df, align 8, !tbaa !182
  %85 = getelementptr inbounds %struct.df, ptr %84, i64 0, i32 1, i64 7
  %86 = load ptr, ptr %85, align 8, !tbaa !182
  %87 = getelementptr inbounds %struct.dataflow, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !205
  %89 = icmp ugt i32 %88, %73
  br i1 %89, label %90, label %95, !prof !757

90:                                               ; preds = %75
  %91 = getelementptr inbounds %struct.dataflow, ptr %86, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !208
  %93 = getelementptr inbounds ptr, ptr %92, i64 %81
  %94 = load ptr, ptr %93, align 8, !tbaa !182
  br label %95

95:                                               ; preds = %90, %75
  %96 = phi ptr [ %94, %90 ], [ null, %75 ]
  %97 = getelementptr inbounds %struct.df, ptr %84, i64 0, i32 27
  %98 = load i8, ptr %97, align 4
  %99 = and i8 %98, 2
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %155, !prof !757

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.df, ptr %84, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !182
  %104 = getelementptr inbounds %struct.dataflow, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !205
  %106 = icmp ugt i32 %105, %73
  tail call void @llvm.assume(i1 %106)
  %107 = getelementptr inbounds %struct.dataflow, ptr %103, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !208
  %109 = getelementptr inbounds ptr, ptr %108, i64 %81
  %110 = load ptr, ptr %109, align 8, !tbaa !182
  %111 = load ptr, ptr %110, align 8, !tbaa !233
  %112 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  tail call void @bitmap_clear(ptr noundef %112) #20
  %113 = load ptr, ptr %111, align 8, !tbaa !182
  %114 = icmp eq ptr %113, null
  br i1 %114, label %155, label %115, !prof !770

115:                                              ; preds = %101
  %116 = getelementptr inbounds %struct.df_md_bb_info, ptr %96, i64 0, i32 1
  br label %117

117:                                              ; preds = %152, %115
  %118 = phi ptr [ %113, %115 ], [ %153, %152 ]
  %119 = phi ptr [ %111, %115 ], [ %120, %152 ]
  %120 = getelementptr inbounds ptr, ptr %119, i64 1
  %121 = getelementptr inbounds %struct.df_base_ref, ptr %118, i64 0, i32 6
  %122 = load i32, ptr %121, align 8, !tbaa !193
  %123 = load ptr, ptr @df, align 8, !tbaa !182
  %124 = getelementptr inbounds %struct.df, ptr %123, i64 0, i32 27
  %125 = load i8, ptr %124, align 4
  %126 = and i8 %125, 2
  %127 = icmp eq i8 %126, 0
  %128 = icmp ugt i32 %122, 52
  %129 = select i1 %127, i1 true, i1 %128, !prof !771
  br i1 %129, label %130, label %152, !prof !771

130:                                              ; preds = %117
  %131 = load i32, ptr %118, align 8
  %132 = and i32 %131, 131072
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %152, label %134, !prof !772

134:                                              ; preds = %130
  %135 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %136 = tail call i32 @bitmap_bit_p(ptr noundef %135, i32 noundef %122) #20
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %152, !prof !773

138:                                              ; preds = %134
  %139 = load i32, ptr %118, align 8
  %140 = and i32 %139, 5308416
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145, !prof !774

142:                                              ; preds = %138
  %143 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %144 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %143, i32 noundef %122) #20
  br label %145

145:                                              ; preds = %138, %142
  %146 = phi ptr [ %116, %142 ], [ %96, %138 ]
  %147 = phi ptr [ %96, %142 ], [ %116, %138 ]
  %148 = load ptr, ptr %146, align 8, !tbaa !182
  %149 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %148, i32 noundef %122) #20
  %150 = load ptr, ptr %147, align 8, !tbaa !182
  %151 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %150, i32 noundef %122) #20
  br label %152

152:                                              ; preds = %145, %134, %130, %117
  %153 = load ptr, ptr %120, align 8, !tbaa !182
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %117, !prof !775, !llvm.loop !776

155:                                              ; preds = %152, %101, %95
  %156 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !193
  %158 = load ptr, ptr %157, align 8, !tbaa !193
  %159 = icmp eq ptr %158, null
  br i1 %159, label %231, label %160, !prof !429

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.df_md_bb_info, ptr %96, i64 0, i32 1
  br label %162

162:                                              ; preds = %160, %227
  %163 = phi ptr [ %158, %160 ], [ %229, %227 ]
  %164 = load ptr, ptr %156, align 8, !tbaa !193
  %165 = getelementptr inbounds %struct.rtl_bb_info, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !293
  %167 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1, i32 0, i32 0, i64 2
  %168 = load ptr, ptr %167, align 8, !tbaa !193
  %169 = icmp eq ptr %163, %168
  br i1 %169, label %231, label %170, !prof !777

170:                                              ; preds = %162
  %171 = load i32, ptr %163, align 8
  %172 = and i32 %171, 65535
  %173 = add nsw i32 %172, -7
  %174 = icmp ult i32 %173, 4
  br i1 %174, label %175, label %227, !prof !778

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !193
  %178 = load ptr, ptr @df, align 8, !tbaa !182
  %179 = getelementptr inbounds %struct.df, ptr %178, i64 0, i32 10
  %180 = load ptr, ptr %179, align 8, !tbaa !243
  %181 = zext i32 %177 to i64
  %182 = getelementptr inbounds ptr, ptr %180, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !182
  %184 = getelementptr inbounds %struct.df_insn_info, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !244
  %186 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  tail call void @bitmap_clear(ptr noundef %186) #20
  %187 = load ptr, ptr %185, align 8, !tbaa !182
  %188 = icmp eq ptr %187, null
  br i1 %188, label %227, label %189, !prof !770

189:                                              ; preds = %175, %224
  %190 = phi ptr [ %225, %224 ], [ %187, %175 ]
  %191 = phi ptr [ %192, %224 ], [ %185, %175 ]
  %192 = getelementptr inbounds ptr, ptr %191, i64 1
  %193 = getelementptr inbounds %struct.df_base_ref, ptr %190, i64 0, i32 6
  %194 = load i32, ptr %193, align 8, !tbaa !193
  %195 = load ptr, ptr @df, align 8, !tbaa !182
  %196 = getelementptr inbounds %struct.df, ptr %195, i64 0, i32 27
  %197 = load i8, ptr %196, align 4
  %198 = and i8 %197, 2
  %199 = icmp eq i8 %198, 0
  %200 = icmp ugt i32 %194, 52
  %201 = select i1 %199, i1 true, i1 %200, !prof !771
  br i1 %201, label %202, label %224, !prof !771

202:                                              ; preds = %189
  %203 = load i32, ptr %190, align 8
  %204 = and i32 %203, 131072
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %224, !prof !779

206:                                              ; preds = %202
  %207 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %208 = tail call i32 @bitmap_bit_p(ptr noundef %207, i32 noundef %194) #20
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %224, !prof !773

210:                                              ; preds = %206
  %211 = load i32, ptr %190, align 8
  %212 = and i32 %211, 5308416
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217, !prof !774

214:                                              ; preds = %210
  %215 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %216 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %215, i32 noundef %194) #20
  br label %217

217:                                              ; preds = %210, %214
  %218 = phi ptr [ %161, %214 ], [ %96, %210 ]
  %219 = phi ptr [ %96, %214 ], [ %161, %210 ]
  %220 = load ptr, ptr %218, align 8, !tbaa !182
  %221 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %220, i32 noundef %194) #20
  %222 = load ptr, ptr %219, align 8, !tbaa !182
  %223 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %222, i32 noundef %194) #20
  br label %224

224:                                              ; preds = %217, %206, %202, %189
  %225 = load ptr, ptr %192, align 8, !tbaa !182
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %189, !prof !775, !llvm.loop !776

227:                                              ; preds = %224, %175, %170
  %228 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1, i32 0, i32 0, i64 2
  %229 = load ptr, ptr %228, align 8, !tbaa !193
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %162, !prof !780, !llvm.loop !781

231:                                              ; preds = %227, %162, %155
  %232 = load ptr, ptr @df, align 8, !tbaa !182
  %233 = getelementptr inbounds %struct.df, ptr %232, i64 0, i32 27
  %234 = load i8, ptr %233, align 4
  %235 = and i8 %234, 2
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %291, !prof !757

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.df, ptr %232, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !182
  %240 = getelementptr inbounds %struct.dataflow, ptr %239, i64 0, i32 2
  %241 = load i32, ptr %240, align 8, !tbaa !205
  %242 = icmp ugt i32 %241, %73
  tail call void @llvm.assume(i1 %242)
  %243 = getelementptr inbounds %struct.dataflow, ptr %239, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !208
  %245 = getelementptr inbounds ptr, ptr %244, i64 %81
  %246 = load ptr, ptr %245, align 8, !tbaa !182
  %247 = load ptr, ptr %246, align 8, !tbaa !233
  %248 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  tail call void @bitmap_clear(ptr noundef %248) #20
  %249 = load ptr, ptr %247, align 8, !tbaa !182
  %250 = icmp eq ptr %249, null
  br i1 %250, label %291, label %251, !prof !770

251:                                              ; preds = %237
  %252 = getelementptr inbounds %struct.df_md_bb_info, ptr %96, i64 0, i32 1
  br label %253

253:                                              ; preds = %288, %251
  %254 = phi ptr [ %249, %251 ], [ %289, %288 ]
  %255 = phi ptr [ %247, %251 ], [ %256, %288 ]
  %256 = getelementptr inbounds ptr, ptr %255, i64 1
  %257 = getelementptr inbounds %struct.df_base_ref, ptr %254, i64 0, i32 6
  %258 = load i32, ptr %257, align 8, !tbaa !193
  %259 = load ptr, ptr @df, align 8, !tbaa !182
  %260 = getelementptr inbounds %struct.df, ptr %259, i64 0, i32 27
  %261 = load i8, ptr %260, align 4
  %262 = and i8 %261, 2
  %263 = icmp eq i8 %262, 0
  %264 = icmp ugt i32 %258, 52
  %265 = select i1 %263, i1 true, i1 %264, !prof !771
  br i1 %265, label %266, label %288, !prof !771

266:                                              ; preds = %253
  %267 = load i32, ptr %254, align 8
  %268 = and i32 %267, 131072
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %288, !prof !779

270:                                              ; preds = %266
  %271 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %272 = tail call i32 @bitmap_bit_p(ptr noundef %271, i32 noundef %258) #20
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %288, !prof !773

274:                                              ; preds = %270
  %275 = load i32, ptr %254, align 8
  %276 = and i32 %275, 5308416
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %281, !prof !774

278:                                              ; preds = %274
  %279 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  %280 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %279, i32 noundef %258) #20
  br label %281

281:                                              ; preds = %274, %278
  %282 = phi ptr [ %252, %278 ], [ %96, %274 ]
  %283 = phi ptr [ %96, %278 ], [ %252, %274 ]
  %284 = load ptr, ptr %282, align 8, !tbaa !182
  %285 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %284, i32 noundef %258) #20
  %286 = load ptr, ptr %283, align 8, !tbaa !182
  %287 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %286, i32 noundef %258) #20
  br label %288

288:                                              ; preds = %281, %270, %266, %253
  %289 = load ptr, ptr %256, align 8, !tbaa !182
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %253, !prof !775, !llvm.loop !776

291:                                              ; preds = %288, %237, %231
  %292 = lshr i64 %70, 1
  %293 = add i32 %73, 1
  br label %14, !llvm.loop !782

294:                                              ; preds = %69
  %295 = load ptr, ptr @seen_in_insn, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %295) #20
  store ptr null, ptr @seen_in_insn, align 8, !tbaa !182
  %296 = load ptr, ptr @cfun, align 8, !tbaa !182
  %297 = getelementptr inbounds %struct.function, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !213
  %299 = getelementptr inbounds %struct.control_flow_graph, ptr %298, i64 0, i32 5
  %300 = load i32, ptr %299, align 8, !tbaa !215
  %301 = sext i32 %300 to i64
  %302 = shl nsw i64 %301, 3
  %303 = tail call ptr @xmalloc(i64 noundef %302) #20
  %304 = load ptr, ptr @cfun, align 8, !tbaa !182
  %305 = getelementptr inbounds %struct.function, ptr %304, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !213
  %307 = load ptr, ptr %306, align 8, !tbaa !182
  %308 = icmp eq ptr %307, null
  br i1 %308, label %319, label %309, !prof !267

309:                                              ; preds = %294, %309
  %310 = phi ptr [ %317, %309 ], [ %307, %294 ]
  %311 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  %312 = getelementptr inbounds %struct.basic_block_def, ptr %310, i64 0, i32 9
  %313 = load i32, ptr %312, align 8, !tbaa !203
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds ptr, ptr %303, i64 %314
  store ptr %311, ptr %315, align 8, !tbaa !182
  %316 = getelementptr inbounds %struct.basic_block_def, ptr %310, i64 0, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !182
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %309, !prof !783, !llvm.loop !784

319:                                              ; preds = %309, %294
  tail call void @compute_dominance_frontiers(ptr noundef %303) #20
  %320 = load ptr, ptr %0, align 8, !tbaa !390
  %321 = icmp eq ptr %320, null
  %322 = select i1 %321, ptr @bitmap_zero_bits, ptr %320, !prof !748
  %323 = getelementptr inbounds %struct.bitmap_element_def, ptr %322, i64 0, i32 2
  %324 = load i32, ptr %323, align 8, !tbaa !393
  %325 = shl i32 %324, 7
  %326 = getelementptr inbounds %struct.bitmap_element_def, ptr %322, i64 0, i32 3, i64 0
  %327 = load i64, ptr %326, align 8, !tbaa !395
  %328 = icmp eq i64 %327, 0
  %329 = zext i1 %328 to i32
  %330 = or disjoint i32 %325, %329
  br label %331

331:                                              ; preds = %550, %319
  %332 = phi i64 [ %327, %319 ], [ %551, %550 ]
  %333 = phi i32 [ 0, %319 ], [ %388, %550 ]
  %334 = phi ptr [ %322, %319 ], [ %389, %550 ]
  %335 = phi i32 [ %330, %319 ], [ %552, %550 ]
  %336 = icmp eq i64 %332, 0
  br i1 %336, label %351, label %337, !prof !749

337:                                              ; preds = %365, %331
  %338 = phi i64 [ %332, %331 ], [ %370, %365 ]
  %339 = phi i32 [ %333, %331 ], [ %366, %365 ]
  %340 = phi ptr [ %334, %331 ], [ %357, %365 ]
  %341 = phi i32 [ %335, %331 ], [ %367, %365 ]
  %342 = and i64 %338, 1
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %386, !prof !750

344:                                              ; preds = %337, %344
  %345 = phi i32 [ %348, %344 ], [ %341, %337 ]
  %346 = phi i64 [ %347, %344 ], [ %338, %337 ]
  %347 = lshr exact i64 %346, 1
  %348 = add i32 %345, 1
  %349 = and i64 %346, 2
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %344, label %386, !prof !751, !llvm.loop !399

351:                                              ; preds = %331
  %352 = add i32 %335, 63
  %353 = and i32 %352, -64
  %354 = add i32 %333, 1
  br label %355

355:                                              ; preds = %382, %351
  %356 = phi i64 [ %332, %351 ], [ %377, %382 ]
  %357 = phi ptr [ %334, %351 ], [ %380, %382 ]
  %358 = phi i32 [ %353, %351 ], [ %385, %382 ]
  %359 = phi i32 [ %354, %351 ], [ 0, %382 ]
  %360 = icmp eq i32 %359, 2
  br i1 %360, label %376, label %361, !prof !752

361:                                              ; preds = %355
  %362 = add i32 %358, 128
  %363 = shl i32 %359, 6
  %364 = sub i32 %362, %363
  br label %365

365:                                              ; preds = %361, %372
  %366 = phi i32 [ %374, %372 ], [ %359, %361 ]
  %367 = phi i32 [ %373, %372 ], [ %358, %361 ]
  %368 = zext i32 %366 to i64
  %369 = getelementptr inbounds %struct.bitmap_element_def, ptr %357, i64 0, i32 3, i64 %368
  %370 = load i64, ptr %369, align 8, !tbaa !395
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %372, label %337, !prof !753

372:                                              ; preds = %365
  %373 = add i32 %367, 64
  %374 = add i32 %366, 1
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %376, label %365, !prof !754, !llvm.loop !403

376:                                              ; preds = %372, %355
  %377 = phi i64 [ %356, %355 ], [ %370, %372 ]
  %378 = phi i32 [ %358, %355 ], [ %364, %372 ]
  %379 = phi i32 [ %359, %355 ], [ 2, %372 ]
  %380 = load ptr, ptr %357, align 8, !tbaa !404
  %381 = icmp eq ptr %380, null
  br i1 %381, label %386, label %382, !prof !755

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.bitmap_element_def, ptr %380, i64 0, i32 2
  %384 = load i32, ptr %383, align 8, !tbaa !393
  %385 = shl i32 %384, 7
  br label %355, !llvm.loop !406

386:                                              ; preds = %376, %344, %337
  %387 = phi i64 [ %338, %337 ], [ %347, %344 ], [ %377, %376 ]
  %388 = phi i32 [ %339, %337 ], [ %339, %344 ], [ %379, %376 ]
  %389 = phi ptr [ %340, %337 ], [ %340, %344 ], [ %380, %376 ]
  %390 = phi i32 [ %341, %337 ], [ %348, %344 ], [ %378, %376 ]
  %391 = phi i1 [ false, %337 ], [ false, %344 ], [ true, %376 ]
  br i1 %391, label %553, label %392, !prof !756

392:                                              ; preds = %386
  %393 = load ptr, ptr @df, align 8, !tbaa !182
  %394 = getelementptr inbounds %struct.df, ptr %393, i64 0, i32 1, i64 7
  %395 = load ptr, ptr %394, align 8, !tbaa !182
  %396 = getelementptr inbounds %struct.dataflow, ptr %395, i64 0, i32 2
  %397 = load i32, ptr %396, align 8, !tbaa !205
  %398 = icmp ugt i32 %397, %390
  tail call void @llvm.assume(i1 %398)
  %399 = getelementptr inbounds %struct.dataflow, ptr %395, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !208
  %401 = zext i32 %390 to i64
  %402 = getelementptr inbounds ptr, ptr %400, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !182
  %404 = getelementptr inbounds %struct.df_md_bb_info, ptr %403, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !761
  %406 = getelementptr inbounds ptr, ptr %303, i64 %401
  %407 = load ptr, ptr %406, align 8, !tbaa !182
  %408 = load ptr, ptr %407, align 8, !tbaa !390
  %409 = icmp eq ptr %408, null
  %410 = select i1 %409, ptr @bitmap_zero_bits, ptr %408, !prof !785
  %411 = getelementptr inbounds %struct.bitmap_element_def, ptr %410, i64 0, i32 2
  %412 = load i32, ptr %411, align 8, !tbaa !393
  %413 = shl i32 %412, 7
  %414 = getelementptr inbounds %struct.bitmap_element_def, ptr %410, i64 0, i32 3, i64 0
  %415 = load i64, ptr %414, align 8, !tbaa !395
  %416 = icmp eq i64 %415, 0
  %417 = zext i1 %416 to i32
  %418 = or disjoint i32 %413, %417
  br label %419

419:                                              ; preds = %547, %392
  %420 = phi i64 [ %415, %392 ], [ %548, %547 ]
  %421 = phi i32 [ %418, %392 ], [ %549, %547 ]
  %422 = phi i32 [ 0, %392 ], [ %477, %547 ]
  %423 = phi ptr [ %410, %392 ], [ %478, %547 ]
  %424 = icmp eq i64 %420, 0
  br i1 %424, label %439, label %425, !prof !786

425:                                              ; preds = %453, %419
  %426 = phi i64 [ %420, %419 ], [ %458, %453 ]
  %427 = phi i32 [ %421, %419 ], [ %455, %453 ]
  %428 = phi i32 [ %422, %419 ], [ %454, %453 ]
  %429 = phi ptr [ %423, %419 ], [ %446, %453 ]
  %430 = and i64 %426, 1
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %432, label %474, !prof !787

432:                                              ; preds = %425, %432
  %433 = phi i32 [ %436, %432 ], [ %427, %425 ]
  %434 = phi i64 [ %435, %432 ], [ %426, %425 ]
  %435 = lshr exact i64 %434, 1
  %436 = add i32 %433, 1
  %437 = and i64 %434, 2
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %432, label %474, !prof !788, !llvm.loop !399

439:                                              ; preds = %419
  %440 = add i32 %421, 63
  %441 = and i32 %440, -64
  %442 = add i32 %422, 1
  br label %443

443:                                              ; preds = %470, %439
  %444 = phi i64 [ %420, %439 ], [ %465, %470 ]
  %445 = phi i32 [ %441, %439 ], [ %473, %470 ]
  %446 = phi ptr [ %423, %439 ], [ %468, %470 ]
  %447 = phi i32 [ %442, %439 ], [ 0, %470 ]
  %448 = icmp eq i32 %447, 2
  br i1 %448, label %464, label %449, !prof !789

449:                                              ; preds = %443
  %450 = add i32 %445, 128
  %451 = shl i32 %447, 6
  %452 = sub i32 %450, %451
  br label %453

453:                                              ; preds = %449, %460
  %454 = phi i32 [ %462, %460 ], [ %447, %449 ]
  %455 = phi i32 [ %461, %460 ], [ %445, %449 ]
  %456 = zext i32 %454 to i64
  %457 = getelementptr inbounds %struct.bitmap_element_def, ptr %446, i64 0, i32 3, i64 %456
  %458 = load i64, ptr %457, align 8, !tbaa !395
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %425, !prof !790

460:                                              ; preds = %453
  %461 = add i32 %455, 64
  %462 = add i32 %454, 1
  %463 = icmp eq i32 %462, 2
  br i1 %463, label %464, label %453, !prof !791, !llvm.loop !403

464:                                              ; preds = %460, %443
  %465 = phi i64 [ %444, %443 ], [ %458, %460 ]
  %466 = phi i32 [ %445, %443 ], [ %452, %460 ]
  %467 = phi i32 [ %447, %443 ], [ 2, %460 ]
  %468 = load ptr, ptr %446, align 8, !tbaa !404
  %469 = icmp eq ptr %468, null
  br i1 %469, label %474, label %470, !prof !792

470:                                              ; preds = %464
  %471 = getelementptr inbounds %struct.bitmap_element_def, ptr %468, i64 0, i32 2
  %472 = load i32, ptr %471, align 8, !tbaa !393
  %473 = shl i32 %472, 7
  br label %443, !llvm.loop !406

474:                                              ; preds = %464, %432, %425
  %475 = phi i64 [ %426, %425 ], [ %435, %432 ], [ %465, %464 ]
  %476 = phi i32 [ %427, %425 ], [ %436, %432 ], [ %466, %464 ]
  %477 = phi i32 [ %428, %425 ], [ %428, %432 ], [ %467, %464 ]
  %478 = phi ptr [ %429, %425 ], [ %429, %432 ], [ %468, %464 ]
  %479 = phi i1 [ false, %425 ], [ false, %432 ], [ true, %464 ]
  br i1 %479, label %550, label %480, !prof !793

480:                                              ; preds = %474
  %481 = load ptr, ptr @cfun, align 8, !tbaa !182
  %482 = getelementptr inbounds %struct.function, ptr %481, i64 0, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !213
  %484 = getelementptr inbounds %struct.control_flow_graph, ptr %483, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !257
  %486 = zext i32 %476 to i64
  %487 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %485, i64 0, i32 2, i64 %486
  %488 = load ptr, ptr %487, align 8, !tbaa !182
  %489 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %476) #20
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %547, label %491, !prof !794

491:                                              ; preds = %480
  %492 = load ptr, ptr @df, align 8, !tbaa !182
  %493 = getelementptr inbounds %struct.df, ptr %492, i64 0, i32 1, i64 7
  %494 = load ptr, ptr %493, align 8, !tbaa !182
  %495 = getelementptr inbounds %struct.dataflow, ptr %494, i64 0, i32 2
  %496 = load i32, ptr %495, align 8, !tbaa !205
  %497 = icmp ugt i32 %496, %476
  tail call void @llvm.assume(i1 %497)
  %498 = getelementptr inbounds %struct.dataflow, ptr %494, i64 0, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !208
  %500 = getelementptr inbounds ptr, ptr %499, i64 %486
  %501 = load ptr, ptr %500, align 8, !tbaa !182
  %502 = getelementptr inbounds %struct.df_md_bb_info, ptr %501, i64 0, i32 2
  %503 = load ptr, ptr %502, align 8, !tbaa !758
  %504 = getelementptr inbounds %struct.df, ptr %492, i64 0, i32 1, i64 1
  %505 = load ptr, ptr %504, align 8, !tbaa !182
  %506 = icmp eq ptr %505, null
  br i1 %506, label %507, label %508, !prof !210

507:                                              ; preds = %491
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1) #20
  br label %508

508:                                              ; preds = %507, %491
  %509 = load ptr, ptr @df, align 8, !tbaa !182
  %510 = getelementptr inbounds %struct.df, ptr %509, i64 0, i32 1, i64 2
  %511 = load ptr, ptr %510, align 8, !tbaa !182
  %512 = icmp eq ptr %511, null
  %513 = getelementptr inbounds %struct.basic_block_def, ptr %488, i64 0, i32 9
  %514 = load i32, ptr %513, align 8, !tbaa !203
  br i1 %512, label %528, label %515, !prof !210

515:                                              ; preds = %508
  %516 = getelementptr inbounds %struct.dataflow, ptr %511, i64 0, i32 2
  %517 = load i32, ptr %516, align 8, !tbaa !205
  %518 = icmp ugt i32 %517, %514
  br i1 %518, label %519, label %525, !prof !211

519:                                              ; preds = %515
  %520 = getelementptr inbounds %struct.dataflow, ptr %511, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !208
  %522 = zext i32 %514 to i64
  %523 = getelementptr inbounds ptr, ptr %521, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !182
  br label %525

525:                                              ; preds = %519, %515
  %526 = phi ptr [ %524, %519 ], [ null, %515 ]
  %527 = getelementptr inbounds %struct.df_live_bb_info, ptr %526, i64 0, i32 2
  br label %543

528:                                              ; preds = %508
  %529 = getelementptr inbounds %struct.df, ptr %509, i64 0, i32 1, i64 1
  %530 = load ptr, ptr %529, align 8, !tbaa !182
  %531 = getelementptr inbounds %struct.dataflow, ptr %530, i64 0, i32 2
  %532 = load i32, ptr %531, align 8, !tbaa !205
  %533 = icmp ugt i32 %532, %514
  br i1 %533, label %534, label %540

534:                                              ; preds = %528
  %535 = getelementptr inbounds %struct.dataflow, ptr %530, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !208
  %537 = zext i32 %514 to i64
  %538 = getelementptr inbounds ptr, ptr %536, i64 %537
  %539 = load ptr, ptr %538, align 8, !tbaa !182
  br label %540

540:                                              ; preds = %534, %528
  %541 = phi ptr [ %539, %534 ], [ null, %528 ]
  %542 = getelementptr inbounds %struct.df_lr_bb_info, ptr %541, i64 0, i32 2
  br label %543

543:                                              ; preds = %525, %540
  %544 = phi ptr [ %527, %525 ], [ %542, %540 ]
  %545 = load ptr, ptr %544, align 8, !tbaa !182
  %546 = tail call zeroext i8 @bitmap_ior_and_into(ptr noundef %503, ptr noundef %405, ptr noundef %545) #20
  br label %547

547:                                              ; preds = %543, %480
  %548 = lshr i64 %475, 1
  %549 = add i32 %476, 1
  br label %419, !llvm.loop !795

550:                                              ; preds = %474
  %551 = lshr i64 %387, 1
  %552 = add i32 %390, 1
  br label %331, !llvm.loop !796

553:                                              ; preds = %386
  %554 = load ptr, ptr @cfun, align 8, !tbaa !182
  %555 = getelementptr inbounds %struct.function, ptr %554, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !213
  %557 = load ptr, ptr %556, align 8, !tbaa !182
  %558 = icmp eq ptr %557, null
  br i1 %558, label %572, label %559, !prof !267

559:                                              ; preds = %553, %559
  %560 = phi ptr [ %570, %559 ], [ %557, %553 ]
  %561 = getelementptr inbounds %struct.basic_block_def, ptr %560, i64 0, i32 9
  %562 = load i32, ptr %561, align 8, !tbaa !203
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds ptr, ptr %303, i64 %563
  %565 = load ptr, ptr %564, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %565) #20
  %566 = load i32, ptr %561, align 8, !tbaa !203
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds ptr, ptr %303, i64 %567
  store ptr null, ptr %568, align 8, !tbaa !182
  %569 = getelementptr inbounds %struct.basic_block_def, ptr %560, i64 0, i32 6
  %570 = load ptr, ptr %569, align 8, !tbaa !182
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %559, !prof !783, !llvm.loop !797

572:                                              ; preds = %559, %553
  tail call void @free(ptr noundef %303)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_md_init(ptr nocapture noundef readonly %0) #13 !prof !284 !PGOFuncName !798 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2, !prof !748
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !393
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3, i64 0
  %9 = load i64, ptr %8, align 8, !tbaa !395
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %197, %1
  %14 = phi i64 [ %9, %1 ], [ %202, %197 ]
  %15 = phi i32 [ 0, %1 ], [ %70, %197 ]
  %16 = phi i32 [ %12, %1 ], [ %203, %197 ]
  %17 = phi ptr [ %4, %1 ], [ %72, %197 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19, !prof !749

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68, !prof !750

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !prof !751, !llvm.loop !399

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43, !prof !752

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !395
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19, !prof !753

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !prof !754, !llvm.loop !403

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !404
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64, !prof !755

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !393
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !406

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %204, label %74, !prof !756

74:                                               ; preds = %68
  %75 = load ptr, ptr @df, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 7
  %77 = load ptr, ptr %76, align 8, !tbaa !182
  %78 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !205
  %80 = icmp ugt i32 %79, %71
  tail call void @llvm.assume(i1 %80)
  %81 = getelementptr inbounds %struct.dataflow, ptr %77, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !208
  %83 = zext i32 %71 to i64
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !182
  %86 = getelementptr inbounds %struct.df_md_bb_info, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !762
  %88 = getelementptr inbounds %struct.df_md_bb_info, ptr %85, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !758
  tail call void @bitmap_copy(ptr noundef %87, ptr noundef %89) #20
  %90 = load ptr, ptr @cfun, align 8, !tbaa !182
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !213
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !257
  %95 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %94, i64 0, i32 2, i64 %83
  %96 = load ptr, ptr %95, align 8, !tbaa !182
  %97 = load ptr, ptr @df, align 8, !tbaa !182
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 1, i64 7
  %99 = load ptr, ptr %98, align 8, !tbaa !182
  %100 = getelementptr inbounds %struct.dataflow, ptr %99, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !205
  %102 = icmp ugt i32 %101, %71
  tail call void @llvm.assume(i1 %102)
  %103 = getelementptr inbounds %struct.dataflow, ptr %99, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !208
  %105 = getelementptr inbounds ptr, ptr %104, i64 %83
  %106 = load ptr, ptr %105, align 8, !tbaa !182
  %107 = getelementptr inbounds %struct.df_md_bb_info, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !762
  %109 = getelementptr inbounds %struct.df_md_bb_info, ptr %106, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !763
  %111 = load ptr, ptr %106, align 8, !tbaa !760
  %112 = getelementptr inbounds %struct.df_md_bb_info, ptr %106, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !761
  %114 = load ptr, ptr @df_md_scratch, align 8, !tbaa !182
  %115 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 1, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !182
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %119, !prof !202

118:                                              ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #20
  br label %119

119:                                              ; preds = %118, %74
  %120 = load ptr, ptr @df, align 8, !tbaa !182
  %121 = getelementptr inbounds %struct.df, ptr %120, i64 0, i32 1, i64 2
  %122 = load ptr, ptr %121, align 8, !tbaa !182
  %123 = icmp eq ptr %122, null
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !203
  br i1 %123, label %139, label %126, !prof !202

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.dataflow, ptr %122, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !205
  %129 = icmp ugt i32 %128, %125
  br i1 %129, label %130, label %136, !prof !207

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.dataflow, ptr %122, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !208
  %133 = zext i32 %125 to i64
  %134 = getelementptr inbounds ptr, ptr %132, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !182
  br label %136

136:                                              ; preds = %130, %126
  %137 = phi ptr [ %135, %130 ], [ null, %126 ]
  %138 = getelementptr inbounds %struct.df_live_bb_info, ptr %137, i64 0, i32 3
  br label %154

139:                                              ; preds = %119
  %140 = getelementptr inbounds %struct.df, ptr %120, i64 0, i32 1, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !182
  %142 = getelementptr inbounds %struct.dataflow, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !205
  %144 = icmp ugt i32 %143, %125
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.dataflow, ptr %141, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !208
  %148 = zext i32 %125 to i64
  %149 = getelementptr inbounds ptr, ptr %147, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !182
  br label %151

151:                                              ; preds = %145, %139
  %152 = phi ptr [ %150, %145 ], [ null, %139 ]
  %153 = getelementptr inbounds %struct.df_lr_bb_info, ptr %152, i64 0, i32 3
  br label %154

154:                                              ; preds = %151, %136
  %155 = phi ptr [ %138, %136 ], [ %153, %151 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !182
  tail call void @bitmap_and(ptr noundef %114, ptr noundef %111, ptr noundef %156) #20
  %157 = load ptr, ptr @df, align 8, !tbaa !182
  %158 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 1, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !182
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %162, !prof !210

161:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1) #20
  br label %162

162:                                              ; preds = %161, %154
  %163 = load ptr, ptr @df, align 8, !tbaa !182
  %164 = getelementptr inbounds %struct.df, ptr %163, i64 0, i32 1, i64 2
  %165 = load ptr, ptr %164, align 8, !tbaa !182
  %166 = icmp eq ptr %165, null
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 9
  %168 = load i32, ptr %167, align 8, !tbaa !203
  br i1 %166, label %182, label %169, !prof !210

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.dataflow, ptr %165, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !205
  %172 = icmp ugt i32 %171, %168
  br i1 %172, label %173, label %179, !prof !211

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.dataflow, ptr %165, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !208
  %176 = zext i32 %168 to i64
  %177 = getelementptr inbounds ptr, ptr %175, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !182
  br label %179

179:                                              ; preds = %173, %169
  %180 = phi ptr [ %178, %173 ], [ null, %169 ]
  %181 = getelementptr inbounds %struct.df_live_bb_info, ptr %180, i64 0, i32 2
  br label %197

182:                                              ; preds = %162
  %183 = getelementptr inbounds %struct.df, ptr %163, i64 0, i32 1, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !182
  %185 = getelementptr inbounds %struct.dataflow, ptr %184, i64 0, i32 2
  %186 = load i32, ptr %185, align 8, !tbaa !205
  %187 = icmp ugt i32 %186, %168
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.dataflow, ptr %184, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !208
  %191 = zext i32 %168 to i64
  %192 = getelementptr inbounds ptr, ptr %190, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !182
  br label %194

194:                                              ; preds = %188, %182
  %195 = phi ptr [ %193, %188 ], [ null, %182 ]
  %196 = getelementptr inbounds %struct.df_lr_bb_info, ptr %195, i64 0, i32 2
  br label %197

197:                                              ; preds = %179, %194
  %198 = phi ptr [ %181, %179 ], [ %196, %194 ]
  %199 = load ptr, ptr %198, align 8, !tbaa !182
  tail call void @bitmap_and_into(ptr noundef %108, ptr noundef %199) #20
  %200 = load ptr, ptr @df_md_scratch, align 8, !tbaa !182
  %201 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %110, ptr noundef %200, ptr noundef %108, ptr noundef %113) #20
  %202 = lshr i64 %69, 1
  %203 = add i32 %71, 1
  br label %13, !llvm.loop !799

204:                                              ; preds = %68
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_md_confluence_0(ptr nocapture noundef readonly %0) #13 !prof !284 !PGOFuncName !800 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !203
  %4 = load ptr, ptr @df, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1, i64 7
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !205
  %9 = icmp ugt i32 %8, %3
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !208
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.df_md_bb_info, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !762
  %17 = getelementptr inbounds %struct.df_md_bb_info, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !758
  tail call void @bitmap_copy(ptr noundef %16, ptr noundef %18) #20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @df_md_confluence_n(ptr nocapture noundef readonly %0) #9 !prof !801 !PGOFuncName !802 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !203
  %6 = load ptr, ptr @df, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 7
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !205
  %11 = icmp ugt i32 %10, %5
  tail call void @llvm.assume(i1 %11)
  %12 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.df_md_bb_info, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !762
  %19 = load ptr, ptr %0, align 8, !tbaa !227
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !203
  %22 = icmp ugt i32 %10, %21
  tail call void @llvm.assume(i1 %22)
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %13, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  %26 = getelementptr inbounds %struct.df_md_bb_info, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !763
  %28 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !229
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40, !prof !803

32:                                               ; preds = %1
  %33 = and i32 %29, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !803

35:                                               ; preds = %32
  %36 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !182
  %37 = tail call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %18, ptr noundef %27, ptr noundef %36) #20
  br label %40

38:                                               ; preds = %32
  %39 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %18, ptr noundef %27) #20
  br label %40

40:                                               ; preds = %35, %38, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @df_md_transfer_function(i32 noundef %0) #9 !prof !804 !PGOFuncName !805 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = load ptr, ptr @df, align 8, !tbaa !182
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 7
  %12 = load ptr, ptr %11, align 8, !tbaa !182
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !205
  %15 = icmp ugt i32 %14, %0
  tail call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !208
  %18 = getelementptr inbounds ptr, ptr %17, i64 %7
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = getelementptr inbounds %struct.df_md_bb_info, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !762
  %22 = getelementptr inbounds %struct.df_md_bb_info, ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !763
  %24 = load ptr, ptr %19, align 8, !tbaa !760
  %25 = getelementptr inbounds %struct.df_md_bb_info, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !761
  %27 = load ptr, ptr @df_md_scratch, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !202

31:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.1) #20
  br label %32

32:                                               ; preds = %31, %1
  %33 = load ptr, ptr @df, align 8, !tbaa !182
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 1, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !182
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !203
  br i1 %36, label %52, label %39, !prof !202

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.dataflow, ptr %35, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !205
  %42 = icmp ugt i32 %41, %38
  br i1 %42, label %43, label %49, !prof !207

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.dataflow, ptr %35, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !208
  %46 = zext i32 %38 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !182
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi ptr [ %48, %43 ], [ null, %39 ]
  %51 = getelementptr inbounds %struct.df_live_bb_info, ptr %50, i64 0, i32 3
  br label %67

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 1, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !182
  %55 = getelementptr inbounds %struct.dataflow, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !205
  %57 = icmp ugt i32 %56, %38
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.dataflow, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !208
  %61 = zext i32 %38 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !182
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi ptr [ %63, %58 ], [ null, %52 ]
  %66 = getelementptr inbounds %struct.df_lr_bb_info, ptr %65, i64 0, i32 3
  br label %67

67:                                               ; preds = %49, %64
  %68 = phi ptr [ %51, %49 ], [ %66, %64 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !182
  tail call void @bitmap_and(ptr noundef %27, ptr noundef %24, ptr noundef %69) #20
  %70 = load ptr, ptr @df, align 8, !tbaa !182
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 1, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !182
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75, !prof !210

74:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1) #20
  br label %75

75:                                               ; preds = %74, %67
  %76 = load ptr, ptr @df, align 8, !tbaa !182
  %77 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 1, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !182
  %79 = icmp eq ptr %78, null
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !203
  br i1 %79, label %95, label %82, !prof !210

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.dataflow, ptr %78, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !205
  %85 = icmp ugt i32 %84, %81
  br i1 %85, label %86, label %92, !prof !211

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.dataflow, ptr %78, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !208
  %89 = zext i32 %81 to i64
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !182
  br label %92

92:                                               ; preds = %86, %82
  %93 = phi ptr [ %91, %86 ], [ null, %82 ]
  %94 = getelementptr inbounds %struct.df_live_bb_info, ptr %93, i64 0, i32 2
  br label %110

95:                                               ; preds = %75
  %96 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 1, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !182
  %98 = getelementptr inbounds %struct.dataflow, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !205
  %100 = icmp ugt i32 %99, %81
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.dataflow, ptr %97, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !208
  %104 = zext i32 %81 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !182
  br label %107

107:                                              ; preds = %101, %95
  %108 = phi ptr [ %106, %101 ], [ null, %95 ]
  %109 = getelementptr inbounds %struct.df_lr_bb_info, ptr %108, i64 0, i32 2
  br label %110

110:                                              ; preds = %92, %107
  %111 = phi ptr [ %94, %92 ], [ %109, %107 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !182
  tail call void @bitmap_and_into(ptr noundef %21, ptr noundef %112) #20
  %113 = load ptr, ptr @df_md_scratch, align 8, !tbaa !182
  %114 = tail call zeroext i8 @bitmap_ior_and_compl(ptr noundef %23, ptr noundef %113, ptr noundef %21, ptr noundef %26) #20
  ret i8 %114
}

; Function Attrs: nounwind uwtable
define internal void @df_md_free() #13 !prof !284 !PGOFuncName !806 {
  %1 = load ptr, ptr @df, align 8, !tbaa !182
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1, i64 7
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !205
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7, !prof !267

7:                                                ; preds = %0, %25
  %8 = phi i64 [ %26, %25 ], [ 0, %0 ]
  %9 = phi ptr [ %29, %25 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !208
  %12 = getelementptr inbounds ptr, ptr %11, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15, !prof !807

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.df_md_bb_info, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !761
  tail call void @bitmap_obstack_free(ptr noundef %17) #20
  store ptr null, ptr %16, align 8, !tbaa !761
  %18 = load ptr, ptr %13, align 8, !tbaa !760
  tail call void @bitmap_obstack_free(ptr noundef %18) #20
  store ptr null, ptr %13, align 8, !tbaa !760
  %19 = getelementptr inbounds %struct.df_md_bb_info, ptr %13, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !758
  tail call void @bitmap_obstack_free(ptr noundef %20) #20
  store ptr null, ptr %19, align 8, !tbaa !758
  %21 = getelementptr inbounds %struct.df_md_bb_info, ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !762
  tail call void @bitmap_obstack_free(ptr noundef %22) #20
  store ptr null, ptr %21, align 8, !tbaa !762
  %23 = getelementptr inbounds %struct.df_md_bb_info, ptr %13, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !763
  tail call void @bitmap_obstack_free(ptr noundef %24) #20
  store ptr null, ptr %23, align 8, !tbaa !763
  br label %25

25:                                               ; preds = %15, %7
  %26 = add nuw nsw i64 %8, 1
  %27 = load ptr, ptr @df, align 8, !tbaa !182
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 1, i64 7
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !205
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %26, %32
  br i1 %33, label %7, label %34, !prof !808, !llvm.loop !809

34:                                               ; preds = %25, %0
  %35 = load ptr, ptr @df_md_scratch, align 8, !tbaa !182
  tail call void @bitmap_obstack_free(ptr noundef %35) #20
  store ptr null, ptr @df_md_scratch, align 8, !tbaa !182
  %36 = load ptr, ptr @df, align 8, !tbaa !182
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 1, i64 7
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  %39 = getelementptr inbounds %struct.dataflow, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !309
  tail call void @free_alloc_pool(ptr noundef %40) #20
  %41 = load ptr, ptr @df, align 8, !tbaa !182
  %42 = getelementptr inbounds %struct.df, ptr %41, i64 0, i32 1, i64 7
  %43 = load ptr, ptr %42, align 8, !tbaa !182
  %44 = getelementptr inbounds %struct.dataflow, ptr %43, i64 0, i32 2
  store i32 0, ptr %44, align 8, !tbaa !205
  %45 = getelementptr inbounds %struct.dataflow, ptr %43, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !208
  tail call void @free(ptr noundef %46)
  %47 = load ptr, ptr @df, align 8, !tbaa !182
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1, i64 7
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  tail call void @free(ptr noundef %49)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_md_top_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 7
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_md_bb_info, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !762
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 12, i64 1, ptr %1)
  %26 = load ptr, ptr %21, align 8, !tbaa !762
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #20
  %27 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 14, i64 1, ptr %1)
  %28 = getelementptr inbounds %struct.df_md_bb_info, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !758
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %29) #20
  %30 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 12, i64 1, ptr %1)
  %31 = load ptr, ptr %18, align 8, !tbaa !760
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %31) #20
  %32 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 13, i64 1, ptr %1)
  %33 = getelementptr inbounds %struct.df_md_bb_info, ptr %18, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !761
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %34) #20
  br label %35

35:                                               ; preds = %17, %20, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @df_md_bottom_dump(ptr nocapture noundef readonly %0, ptr noundef %1) #12 !prof !181 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !203
  %5 = load ptr, ptr @df, align 8, !tbaa !182
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 7
  %7 = load ptr, ptr %6, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !205
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_md_bb_info, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !763
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 12, i64 1, ptr %1)
  %26 = load ptr, ptr %21, align 8, !tbaa !763
  tail call void @df_print_regset(ptr noundef %1, ptr noundef %26) #20
  br label %27

27:                                               ; preds = %17, %20, %24
  ret void
}

declare void @compute_dominance_frontiers(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_and_into(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!180}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!35 = !{ptr @df_grow_bb_info, ptr @xrealloc, i64 283}
!36 = !{ptr @df_rd_simulate_one_insn, ptr @bitmap_clear_range, i64 5}
!37 = !{ptr @df_rd_simulate_one_insn, ptr @bitmap_set_bit, i64 1}
!38 = !{ptr @df_lr_add_problem, ptr @df_add_problem, i64 38}
!39 = !{ptr @df_lr_add_problem, ptr @bitmap_obstack_alloc_stat, i64 38}
!40 = !{ptr @df_live_add_problem, ptr @df_add_problem, i64 76}
!41 = !{ptr @df_live_add_problem, ptr @bitmap_obstack_alloc_stat, i64 76}
!42 = !{ptr @df_chain_add_problem, ptr @df_add_problem, i64 38}
!43 = !{ptr @df_chain_add_problem, ptr @bitmap_obstack_alloc_stat, i64 38}
!44 = !{ptr @df_note_add_problem, ptr @df_add_problem, i64 342}
!45 = !{ptr @df_simulate_find_defs, ptr @bitmap_set_bit, i64 59629}
!46 = !{ptr @df_simulate_defs, ptr @bitmap_clear_bit, i64 27958037}
!47 = !{ptr @df_simulate_uses, ptr @bitmap_set_bit, i64 4437405}
!48 = !{ptr @df_simulate_initialize_backwards, ptr @bitmap_set_bit, i64 4840668}
!49 = !{ptr @df_simulate_one_insn_backwards, ptr @bitmap_clear_bit, i64 7045735}
!50 = !{ptr @df_simulate_one_insn_backwards, ptr @bitmap_set_bit, i64 1035085}
!51 = !{ptr @df_simulate_one_insn_backwards, ptr @bitmap_ior_into, i64 1077324}
!52 = !{ptr @df_simulate_one_insn_forwards, ptr @bitmap_set_bit, i64 14146836}
!53 = !{ptr @df_simulate_one_insn_forwards, ptr @bitmap_clear_bit, i64 1503633}
!54 = !{ptr @df_simulate_one_insn_forwards, ptr @bitmap_ior_into, i64 2601470}
!55 = !{ptr @df_md_add_problem, ptr @df_add_problem, i64 76}
!56 = !{ptr @df_rd_alloc, ptr @create_alloc_pool, i64 38}
!57 = !{ptr @df_rd_alloc, ptr @xmalloc, i64 38}
!58 = !{ptr @df_rd_alloc, ptr @bitmap_obstack_initialize, i64 38}
!59 = !{ptr @df_rd_alloc, ptr @bitmap_obstack_alloc_stat, i64 768511}
!60 = !{ptr @df_rd_alloc, ptr @pool_alloc, i64 153687}
!61 = !{ptr @df_rd_local_compute, ptr @bitmap_obstack_alloc_stat, i64 76}
!62 = !{ptr @df_rd_local_compute, ptr @df_maybe_reorganize_def_refs, i64 38}
!63 = !{ptr @df_rd_local_compute, ptr @bitmap_clear, i64 977559}
!64 = !{ptr @df_rd_local_compute, ptr @bitmap_bit_p, i64 6965080}
!65 = !{ptr @df_rd_local_compute, ptr @bitmap_set_bit, i64 4087435}
!66 = !{ptr @df_rd_local_compute, ptr @bitmap_set_range, i64 146373}
!67 = !{ptr @df_rd_local_compute, ptr @bitmap_clear_range, i64 415280}
!68 = !{ptr @df_rd_local_compute, ptr @bitmap_ior_into, i64 670185}
!69 = !{ptr @df_rd_local_compute, ptr @bitmap_obstack_free, i64 76}
!70 = !{ptr @df_rd_init_solution, ptr @bitmap_copy, i64 153687}
!71 = !{ptr @df_rd_init_solution, ptr @bitmap_clear, i64 153687}
!72 = !{ptr @df_rd_confluence_n, ptr @bitmap_ior_into, i64 608972}
!73 = !{ptr @df_rd_transfer_function, ptr @bitmap_ior_and_compl, i64 2087}
!74 = !{ptr @df_rd_transfer_function, ptr @bitmap_obstack_alloc_stat, i64 305211}
!75 = !{ptr @df_rd_transfer_function, ptr @bitmap_copy, i64 305211}
!76 = !{ptr @df_rd_transfer_function, ptr @bitmap_clear_range, i64 540475}
!77 = !{ptr @df_rd_transfer_function, ptr @bitmap_and_compl_into, i64 305211}
!78 = !{ptr @df_rd_transfer_function, ptr @bitmap_ior_into, i64 305211}
!79 = !{ptr @df_rd_transfer_function, ptr @bitmap_equal_p, i64 305211}
!80 = !{ptr @df_rd_transfer_function, ptr @bitmap_obstack_free, i64 305211}
!81 = !{ptr @df_rd_free, ptr @free_alloc_pool, i64 38}
!82 = !{ptr @df_rd_free, ptr @bitmap_obstack_release, i64 38}
!83 = !{ptr @df_rd_free, ptr @free, i64 114}
!84 = !{ptr @df_lr_alloc, ptr @create_alloc_pool, i64 38}
!85 = !{ptr @df_lr_alloc, ptr @bitmap_clear, i64 1089906}
!86 = !{ptr @df_lr_alloc, ptr @pool_alloc, i64 252776}
!87 = !{ptr @df_lr_alloc, ptr @bitmap_obstack_alloc_stat, i64 1011104}
!88 = !{ptr @df_lr_free_bb_info, ptr @bitmap_obstack_free, i64 396920}
!89 = !{ptr @df_lr_free_bb_info, ptr @pool_free, i64 99230}
!90 = !{ptr @df_lr_local_compute, ptr @bitmap_clear, i64 1202}
!91 = !{ptr @df_lr_local_compute, ptr @bitmap_set_bit, i64 21478362}
!92 = !{ptr @df_lr_local_compute, ptr @bitmap_copy, i64 114}
!93 = !{ptr @df_lr_local_compute, ptr @bitmap_clear_bit, i64 16450161}
!94 = !{ptr @df_lr_init, ptr @bitmap_copy, i64 2866145}
!95 = !{ptr @df_lr_init, ptr @bitmap_clear, i64 2866145}
!96 = !{ptr @df_lr_confluence_0, ptr @bitmap_copy, i64 898}
!97 = !{ptr @df_lr_confluence_n, ptr @bitmap_ior_into, i64 20233182}
!98 = !{ptr @df_lr_transfer_function, ptr @bitmap_ior_and_compl, i64 5230141}
!99 = !{ptr @df_lr_finalize, ptr @run_fast_df_dce, i64 240}
!100 = !{ptr @df_lr_finalize, ptr @df_clear_flags, i64 2}
!101 = !{ptr @df_lr_finalize, ptr @df_lr_alloc, i64 2}
!102 = !{ptr @df_lr_finalize, ptr @df_lr_local_compute, i64 2}
!103 = !{ptr @df_lr_finalize, ptr @df_worklist_dataflow, i64 2}
!104 = !{ptr @df_lr_finalize, ptr @df_lr_finalize, i64 2}
!105 = !{ptr @df_lr_finalize, ptr @df_set_flags, i64 2}
!106 = !{ptr @df_lr_free, ptr @bitmap_obstack_free, i64 614222}
!107 = !{ptr @df_lr_free, ptr @free_alloc_pool, i64 38}
!108 = !{ptr @df_lr_free, ptr @free, i64 76}
!109 = !{ptr @df_live_alloc, ptr @create_alloc_pool, i64 38}
!110 = !{ptr @df_live_alloc, ptr @bitmap_obstack_alloc_stat, i64 1011142}
!111 = !{ptr @df_live_alloc, ptr @bitmap_clear, i64 1089898}
!112 = !{ptr @df_live_alloc, ptr @pool_alloc, i64 252776}
!113 = !{ptr @df_live_free_bb_info, ptr @bitmap_obstack_free, i64 396920}
!114 = !{ptr @df_live_free_bb_info, ptr @pool_free, i64 99230}
!115 = !{ptr @df_live_local_compute, ptr @df_grow_insn_info, i64 599}
!116 = !{ptr @df_live_local_compute, ptr @df_insn_create_insn_record, i64 129675}
!117 = !{ptr @df_live_local_compute, ptr @bitmap_set_bit, i64 1901371}
!118 = !{ptr @df_live_local_compute, ptr @bitmap_clear, i64 599}
!119 = !{ptr @df_live_init, ptr @bitmap_and, i64 2865794}
!120 = !{ptr @df_live_init, ptr @bitmap_clear, i64 2865794}
!121 = !{ptr @df_live_confluence_n, ptr @bitmap_ior_into, i64 10869979}
!122 = !{ptr @df_live_transfer_function, ptr @bitmap_and, i64 5730394}
!123 = !{ptr @df_live_transfer_function, ptr @bitmap_and_into, i64 5730394}
!124 = !{ptr @df_live_transfer_function, ptr @bitmap_ior_and_compl, i64 5730394}
!125 = !{ptr @df_live_finalize, ptr @bitmap_and_into, i64 5731588}
!126 = !{ptr @df_live_free, ptr @bitmap_obstack_free, i64 614260}
!127 = !{ptr @df_live_free, ptr @free_alloc_pool, i64 38}
!128 = !{ptr @df_live_free, ptr @free, i64 76}
!129 = !{ptr @df_chain_alloc, ptr @df_chain_remove_problem, i64 38}
!130 = !{ptr @df_chain_alloc, ptr @create_alloc_pool, i64 38}
!131 = !{ptr @df_chain_finalize, ptr @bitmap_obstack_alloc_stat, i64 153687}
!132 = !{ptr @df_chain_finalize, ptr @bitmap_copy, i64 153687}
!133 = !{ptr @df_chain_finalize, ptr @bitmap_set_bit, i64 592716}
!134 = !{ptr @df_chain_finalize, ptr @pool_alloc, i64 1282727}
!135 = !{ptr @df_chain_finalize, ptr @bitmap_clear_range, i64 3555705}
!136 = !{ptr @df_chain_finalize, ptr @bitmap_obstack_free, i64 153687}
!137 = !{ptr @df_chain_fully_remove_problem, ptr @df_chain_remove_problem, i64 38}
!138 = !{ptr @df_chain_fully_remove_problem, ptr @bitmap_obstack_free, i64 38}
!139 = !{ptr @df_chain_fully_remove_problem, ptr @free, i64 38}
!140 = !{ptr @df_chain_remove_problem, ptr @free_alloc_pool, i64 38}
!141 = !{ptr @df_chain_remove_problem, ptr @bitmap_clear, i64 76}
!142 = !{ptr @df_chain_create_bb_process_use, ptr @pool_alloc, i64 1}
!143 = !{ptr @df_note_compute, ptr @bitmap_obstack_alloc_stat, i64 1185}
!144 = !{ptr @df_note_compute, ptr @bitmap_copy, i64 1644185}
!145 = !{ptr @df_note_compute, ptr @bitmap_clear, i64 7930298}
!146 = !{ptr @df_note_compute, ptr @bitmap_clear_bit, i64 35119864}
!147 = !{ptr @df_note_compute, ptr @bitmap_set_bit, i64 18394358}
!148 = !{ptr @df_note_compute, ptr @bitmap_bit_p, i64 16557860}
!149 = !{ptr @df_note_compute, ptr @add_reg_note, i64 3226}
!150 = !{ptr @df_note_compute, ptr @free_EXPR_LIST_node, i64 19324}
!151 = !{ptr @df_note_compute, ptr @bitmap_obstack_free, i64 1185}
!152 = !{ptr @df_note_free, ptr @free, i64 342}
!153 = !{ptr @df_md_alloc, ptr @create_alloc_pool, i64 76}
!154 = !{ptr @df_md_alloc, ptr @bitmap_obstack_alloc_stat, i64 1853631}
!155 = !{ptr @df_md_alloc, ptr @pool_alloc, i64 370711}
!156 = !{ptr @df_md_free_bb_info, ptr @bitmap_obstack_free, i64 35}
!157 = !{ptr @df_md_free_bb_info, ptr @pool_free, i64 7}
!158 = !{ptr @df_md_local_compute, ptr @bitmap_obstack_alloc_stat, i64 370787}
!159 = !{ptr @df_md_local_compute, ptr @bitmap_clear, i64 2104531}
!160 = !{ptr @df_md_local_compute, ptr @bitmap_bit_p, i64 7801469}
!161 = !{ptr @df_md_local_compute, ptr @bitmap_set_bit, i64 8083719}
!162 = !{ptr @df_md_local_compute, ptr @bitmap_clear_bit, i64 7138543}
!163 = !{ptr @df_md_local_compute, ptr @bitmap_obstack_free, i64 370787}
!164 = !{ptr @df_md_local_compute, ptr @xmalloc, i64 76}
!165 = !{ptr @df_md_local_compute, ptr @compute_dominance_frontiers, i64 76}
!166 = !{ptr @df_md_local_compute, ptr @bitmap_ior_and_into, i64 662926}
!167 = !{ptr @df_md_local_compute, ptr @free, i64 76}
!168 = !{ptr @df_md_init, ptr @bitmap_copy, i64 370711}
!169 = !{ptr @df_md_init, ptr @bitmap_and, i64 370711}
!170 = !{ptr @df_md_init, ptr @bitmap_and_into, i64 370711}
!171 = !{ptr @df_md_init, ptr @bitmap_ior_and_compl, i64 370711}
!172 = !{ptr @df_md_confluence_0, ptr @bitmap_copy, i64 76}
!173 = !{ptr @df_md_confluence_n, ptr @bitmap_ior_into, i64 788242}
!174 = !{ptr @df_md_transfer_function, ptr @bitmap_and, i64 378978}
!175 = !{ptr @df_md_transfer_function, ptr @bitmap_and_into, i64 378978}
!176 = !{ptr @df_md_transfer_function, ptr @bitmap_ior_and_compl, i64 378978}
!177 = !{ptr @df_md_free, ptr @bitmap_obstack_free, i64 1853596}
!178 = !{ptr @df_md_free, ptr @free_alloc_pool, i64 76}
!179 = !{ptr @df_md_free, ptr @free, i64 152}
!180 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!181 = !{!"function_entry_count", i64 0}
!182 = !{!183, !183, i64 0}
!183 = !{!"any pointer", !184, i64 0}
!184 = !{!"omnipotent char", !185, i64 0}
!185 = !{!"Simple C/C++ TBAA"}
!186 = !{!187, !183, i64 8}
!187 = !{!"_IO_FILE", !188, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !183, i64 32, !183, i64 40, !183, i64 48, !183, i64 56, !183, i64 64, !183, i64 72, !183, i64 80, !183, i64 88, !183, i64 96, !183, i64 104, !188, i64 112, !188, i64 116, !189, i64 120, !190, i64 128, !184, i64 130, !184, i64 131, !183, i64 136, !189, i64 144, !183, i64 152, !183, i64 160, !183, i64 168, !183, i64 176, !189, i64 184, !188, i64 192, !184, i64 196}
!188 = !{!"int", !184, i64 0}
!189 = !{!"long", !184, i64 0}
!190 = !{!"short", !184, i64 0}
!191 = !{!187, !183, i64 16}
!192 = !{!"branch_weights", i32 2000, i32 1}
!193 = !{!184, !184, i64 0}
!194 = !{!187, !183, i64 40}
!195 = !{!187, !183, i64 48}
!196 = !{!187, !188, i64 0}
!197 = !{!188, !188, i64 0}
!198 = distinct !{!198, !199, !200}
!199 = !{!"llvm.loop.mustprogress"}
!200 = !{!"llvm.loop.unroll.disable"}
!201 = !{!"function_entry_count", i64 631218}
!202 = !{!"branch_weights", i32 0, i32 3025092}
!203 = !{!204, !188, i64 80}
!204 = !{!"basic_block_def", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !184, i64 32, !183, i64 48, !183, i64 56, !184, i64 64, !189, i64 72, !188, i64 80, !188, i64 84, !188, i64 88, !188, i64 92, !188, i64 96}
!205 = !{!206, !188, i64 16}
!206 = !{!"dataflow", !183, i64 0, !183, i64 8, !188, i64 16, !183, i64 24, !183, i64 32, !183, i64 40, !188, i64 48, !184, i64 52, !184, i64 53, !184, i64 54}
!207 = !{!"branch_weights", i32 3025092, i32 0}
!208 = !{!206, !183, i64 8}
!209 = !{!"function_entry_count", i64 258189}
!210 = !{!"branch_weights", i32 0, i32 1670804}
!211 = !{!"branch_weights", i32 1670804, i32 0}
!212 = !{!"function_entry_count", i64 3314649}
!213 = !{!214, !183, i64 8}
!214 = !{!"function", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !183, i64 32, !183, i64 40, !183, i64 48, !183, i64 56, !183, i64 64, !183, i64 72, !183, i64 80, !183, i64 88, !183, i64 96, !188, i64 104, !188, i64 108, !188, i64 112, !188, i64 116, !188, i64 120, !188, i64 124, !183, i64 128, !188, i64 136, !188, i64 137, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139}
!215 = !{!216, !188, i64 32}
!216 = !{!"control_flow_graph", !183, i64 0, !183, i64 8, !183, i64 16, !188, i64 24, !188, i64 28, !188, i64 32, !183, i64 40, !188, i64 48, !184, i64 52, !184, i64 60, !188, i64 68, !188, i64 72}
!217 = !{!"branch_weights", i32 283, i32 3315680}
!218 = !{!"VP", i32 1, i64 279, i64 513, i64 205, i64 129, i64 33, i64 257, i64 26, i64 65, i64 3}
!219 = !{!220, !183, i64 0}
!220 = !{!"df_link", !183, i64 0, !183, i64 8}
!221 = !{!222, !183, i64 0}
!222 = !{!"df_insn_info", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !183, i64 32, !188, i64 40}
!223 = !{!220, !183, i64 8}
!224 = distinct !{!224, !199, !200}
!225 = !{!226, !188, i64 0}
!226 = !{!"VEC_edge_base", !188, i64 0, !188, i64 4, !184, i64 8}
!227 = !{!228, !183, i64 0}
!228 = !{!"edge_def", !183, i64 0, !183, i64 8, !184, i64 16, !183, i64 24, !183, i64 32, !188, i64 40, !188, i64 44, !188, i64 48, !188, i64 52, !189, i64 56}
!229 = !{!228, !188, i64 48}
!230 = distinct !{!230, !199, !200}
!231 = !{!228, !183, i64 8}
!232 = distinct !{!232, !199, !200}
!233 = !{!234, !183, i64 0}
!234 = !{!"df_scan_bb_info", !183, i64 0, !183, i64 8}
!235 = !{!"branch_weights", i32 153421, i32 266}
!236 = !{!"branch_weights", i32 266, i32 0}
!237 = !{!238, !183, i64 144}
!238 = !{!"df", !184, i64 0, !184, i64 64, !183, i64 128, !239, i64 136, !239, i64 176, !183, i64 216, !183, i64 224, !183, i64 232, !188, i64 240, !188, i64 244, !183, i64 248, !188, i64 256, !188, i64 260, !183, i64 264, !183, i64 272, !183, i64 280, !183, i64 288, !183, i64 296, !183, i64 304, !183, i64 312, !183, i64 320, !183, i64 328, !183, i64 336, !188, i64 344, !188, i64 348, !183, i64 352, !188, i64 360, !188, i64 364, !184, i64 365, !184, i64 366}
!239 = !{!"df_ref_info", !183, i64 0, !183, i64 8, !183, i64 16, !188, i64 24, !188, i64 28, !188, i64 32, !188, i64 36}
!240 = !{!238, !183, i64 152}
!241 = distinct !{!241, !199, !200}
!242 = !{!"function_entry_count", i64 1}
!243 = !{!238, !183, i64 248}
!244 = !{!222, !183, i64 8}
!245 = !{!"branch_weights", i32 1, i32 673061}
!246 = !{!"branch_weights", i32 3570968, i32 0}
!247 = !{!"branch_weights", i32 440914, i32 3130054}
!248 = !{!"branch_weights", i32 673061, i32 2897907}
!249 = distinct !{!249, !199, !200}
!250 = !{!"function_entry_count", i64 38}
!251 = !{!206, !183, i64 32}
!252 = !{!253, !183, i64 0}
!253 = !{!"df_lr_bb_info", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24}
!254 = !{!253, !183, i64 8}
!255 = distinct !{!255, !199, !200}
!256 = !{!"df-problems.c;df_lr_bb_local_compute"}
!257 = !{!216, !183, i64 16}
!258 = !{!"branch_weights", i32 797615, i32 0}
!259 = !{!"branch_weights", i32 796818, i32 797}
!260 = !{!"branch_weights", i32 797, i32 0}
!261 = distinct !{!261, !199, !200}
!262 = !{!234, !183, i64 8}
!263 = !{!"branch_weights", i32 1, i32 797614}
!264 = !{!"branch_weights", i32 2430052, i32 0}
!265 = !{!"branch_weights", i32 797614, i32 1632438}
!266 = distinct !{!266, !199, !200}
!267 = !{!"branch_weights", i32 1, i32 151}
!268 = !{!269, !183, i64 0}
!269 = !{!"rtl_bb_info", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !188, i64 32}
!270 = !{!"branch_weights", i32 797463, i32 4269534}
!271 = !{!"branch_weights", i32 1355730, i32 2913804}
!272 = !{!"branch_weights", i32 1, i32 2913803}
!273 = !{!"branch_weights", i32 16557787, i32 31451}
!274 = !{!"branch_weights", i32 2913803, i32 13675435}
!275 = distinct !{!275, !199, !200}
!276 = !{!222, !183, i64 16}
!277 = !{!"branch_weights", i32 299898, i32 2613906}
!278 = !{!"branch_weights", i32 2613906, i32 0}
!279 = distinct !{!279, !199, !200}
!280 = !{!"branch_weights", i32 151, i32 5066846}
!281 = distinct !{!281, !199, !200}
!282 = distinct !{!282, !199, !200}
!283 = !{!"branch_weights", i32 0, i32 797615}
!284 = !{!"function_entry_count", i64 76}
!285 = distinct !{!285, !199, !200}
!286 = !{!287, !183, i64 8}
!287 = !{!"df_live_bb_info", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24}
!288 = !{!287, !183, i64 0}
!289 = distinct !{!289, !199, !200}
!290 = !{!"df-problems.c;df_live_bb_local_compute"}
!291 = !{!"branch_weights", i32 797725, i32 0}
!292 = !{!"branch_weights", i32 1, i32 327}
!293 = !{!269, !183, i64 8}
!294 = !{!"branch_weights", i32 797397, i32 4269516}
!295 = !{!"branch_weights", i32 130063, i32 4139453}
!296 = !{!"branch_weights", i32 0, i32 130063}
!297 = !{!222, !188, i64 40}
!298 = !{!"branch_weights", i32 2913790, i32 1355726}
!299 = !{!"branch_weights", i32 1, i32 2913789}
!300 = !{!"branch_weights", i32 16557771, i32 31451}
!301 = !{!"branch_weights", i32 16441036, i32 116735}
!302 = !{!"branch_weights", i32 1758075, i32 14682961}
!303 = !{!"branch_weights", i32 2913789, i32 13675433}
!304 = distinct !{!304, !199, !200}
!305 = !{!"branch_weights", i32 327, i32 5066586}
!306 = distinct !{!306, !199, !200}
!307 = !{!"branch_weights", i32 796928, i32 797}
!308 = distinct !{!308, !199, !200}
!309 = !{!206, !183, i64 24}
!310 = distinct !{!310, !199, !200}
!311 = distinct !{!311, !199, !200}
!312 = distinct !{!312, !199, !200}
!313 = !{!206, !188, i64 48}
!314 = !{!206, !183, i64 40}
!315 = !{!316, !183, i64 24}
!316 = !{!"df_byte_lr_problem_data", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !183, i64 32, !317, i64 40}
!317 = !{!"bitmap_obstack", !183, i64 0, !183, i64 8, !318, i64 16}
!318 = !{!"obstack", !189, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !183, i64 32, !189, i64 40, !188, i64 48, !183, i64 56, !183, i64 64, !183, i64 72, !188, i64 80, !188, i64 80, !188, i64 80}
!319 = !{!316, !183, i64 32}
!320 = distinct !{!320, !199, !200}
!321 = distinct !{!321, !199, !200}
!322 = distinct !{!322, !199, !200}
!323 = distinct !{!323, !199, !200}
!324 = distinct !{!324, !199, !200}
!325 = !{!"function_entry_count", i64 342}
!326 = !{!"function_entry_count", i64 119256}
!327 = !{!"branch_weights", i32 59627, i32 59629}
!328 = !{!"branch_weights", i32 59629, i32 0}
!329 = distinct !{!329, !199, !200}
!330 = !{!"function_entry_count", i64 4932929}
!331 = !{!"branch_weights", i32 1, i32 4932928}
!332 = !{!"branch_weights", i32 27958037, i32 55206}
!333 = !{!"branch_weights", i32 4932928, i32 23080315}
!334 = distinct !{!334, !199, !200}
!335 = !{!"function_entry_count", i64 4932857}
!336 = !{!"branch_weights", i32 0, i32 4932857}
!337 = !{!"branch_weights", i32 495452, i32 4437405}
!338 = !{!"branch_weights", i32 4437405, i32 0}
!339 = distinct !{!339, !199, !200}
!340 = !{!"function_entry_count", i64 1613940}
!341 = !{!"branch_weights", i32 1, i32 0}
!342 = distinct !{!342, !199, !200}
!343 = !{!"branch_weights", i32 1, i32 1613939}
!344 = !{!"branch_weights", i32 4840668, i32 0}
!345 = !{!"branch_weights", i32 1613939, i32 3226729}
!346 = distinct !{!346, !199, !200}
!347 = !{!"function_entry_count", i64 1077324}
!348 = !{!"branch_weights", i32 0, i32 1077324}
!349 = !{!"branch_weights", i32 1, i32 1077323}
!350 = !{!"branch_weights", i32 7045735, i32 19713}
!351 = !{!"branch_weights", i32 1077323, i32 5988125}
!352 = !{!"branch_weights", i32 42239, i32 1035085}
!353 = !{!"branch_weights", i32 1035085, i32 0}
!354 = !{!"branch_weights", i32 0, i32 3046492}
!355 = !{!"branch_weights", i32 1077324, i32 1969168}
!356 = !{!"branch_weights", i32 1969168, i32 0}
!357 = !{!"branch_weights", i32 0, i32 1969168}
!358 = distinct !{!358, !199, !200}
!359 = !{!"function_entry_count", i64 1398846}
!360 = distinct !{!360, !199, !200}
!361 = !{!"function_entry_count", i64 680059}
!362 = !{!"branch_weights", i32 678958, i32 1101}
!363 = !{!"branch_weights", i32 1101, i32 0}
!364 = distinct !{!364, !199, !200}
!365 = !{!"function_entry_count", i64 2601470}
!366 = !{!"branch_weights", i32 2601470, i32 0}
!367 = !{!"branch_weights", i32 0, i32 2601470}
!368 = !{!"branch_weights", i32 1, i32 2601469}
!369 = !{!"branch_weights", i32 14146836, i32 12954}
!370 = !{!"branch_weights", i32 2601469, i32 11558321}
!371 = !{!"branch_weights", i32 248321, i32 2353149}
!372 = !{!"branch_weights", i32 849516, i32 1423838, i32 79795}
!373 = !{!"branch_weights", i32 1047770, i32 455863}
!374 = !{!"branch_weights", i32 1, i32 1047769}
!375 = distinct !{!375, !199, !200}
!376 = !{!"branch_weights", i32 2353149, i32 0}
!377 = distinct !{!377, !199, !200}
!378 = !{!"branch_weights", i32 0, i32 7263897}
!379 = !{!"branch_weights", i32 2601470, i32 4662427}
!380 = !{!"branch_weights", i32 4662427, i32 0}
!381 = !{!"branch_weights", i32 0, i32 4662427}
!382 = distinct !{!382, !199, !200}
!383 = distinct !{!383, !199, !200}
!384 = !{!"df-problems.c;df_rd_alloc"}
!385 = !{!"branch_weights", i32 38, i32 0}
!386 = !{!387, !183, i64 0}
!387 = !{!"df_rd_problem_data", !183, i64 0, !183, i64 8, !317, i64 16}
!388 = !{!387, !183, i64 8}
!389 = !{!"VP", i32 1, i64 0, i64 513, i64 0, i64 129, i64 0, i64 257, i64 0, i64 65, i64 0}
!390 = !{!391, !183, i64 0}
!391 = !{!"bitmap_head_def", !183, i64 0, !183, i64 8, !188, i64 16, !183, i64 24}
!392 = !{!"branch_weights", i32 0, i32 38}
!393 = !{!394, !188, i64 16}
!394 = !{!"bitmap_element_def", !183, i64 0, !183, i64 8, !188, i64 16, !184, i64 24}
!395 = !{!189, !189, i64 0}
!396 = !{!"branch_weights", i32 2420, i32 151305}
!397 = !{!"branch_weights", i32 7, i32 153680}
!398 = !{!"branch_weights", i32 0, i32 7}
!399 = distinct !{!399, !199, !200}
!400 = !{!"branch_weights", i32 1, i32 1224}
!401 = !{!"branch_weights", i32 30, i32 2382}
!402 = !{!"branch_weights", i32 1224, i32 1188}
!403 = distinct !{!403, !199, !200}
!404 = !{!394, !183, i64 0}
!405 = !{!"branch_weights", i32 38, i32 1187}
!406 = distinct !{!406, !200}
!407 = !{!"branch_weights", i32 38, i32 153687}
!408 = !{!"branch_weights", i32 153687, i32 0}
!409 = !{!410, !183, i64 0}
!410 = !{!"df_rd_bb_info", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !183, i64 32}
!411 = !{!410, !183, i64 8}
!412 = !{!410, !183, i64 16}
!413 = !{!"branch_weights", i32 0, i32 153687}
!414 = !{!410, !183, i64 24}
!415 = !{!410, !183, i64 32}
!416 = distinct !{!416, !199, !200}
!417 = !{!206, !184, i64 54}
!418 = !{!"df-problems.c;df_rd_local_compute"}
!419 = !{!"branch_weights", i32 1, i32 980435}
!420 = !{!"branch_weights", i32 3571234, i32 266}
!421 = !{!"branch_weights", i32 3571234, i32 0}
!422 = !{!"branch_weights", i32 3414345, i32 156889}
!423 = !{!"branch_weights", i32 3414345, i32 0}
!424 = !{!"branch_weights", i32 416503, i32 2997842}
!425 = !{!"branch_weights", i32 270291, i32 146212}
!426 = !{!"branch_weights", i32 413668, i32 3000677}
!427 = !{!"branch_weights", i32 980435, i32 2591065}
!428 = distinct !{!428, !199, !200}
!429 = !{!"branch_weights", i32 1, i32 227}
!430 = !{!"branch_weights", i32 153573, i32 879263}
!431 = !{!"branch_weights", i32 673062, i32 206201}
!432 = !{!"branch_weights", i32 227, i32 2065445}
!433 = distinct !{!433, !199, !200}
!434 = !{!"branch_weights", i32 266, i32 3571234}
!435 = distinct !{!435, !199, !200}
!436 = !{!"branch_weights", i32 38, i32 1748}
!437 = !{!"branch_weights", i32 266, i32 1482}
!438 = !{!"branch_weights", i32 0, i32 266}
!439 = !{!"branch_weights", i32 151, i32 1}
!440 = !{!"branch_weights", i32 1157, i32 591}
!441 = distinct !{!441, !199, !200}
!442 = !{!"df-problems.c;df_rd_init_solution"}
!443 = distinct !{!443, !199, !200}
!444 = !{!"function_entry_count", i64 608972}
!445 = !{!"df-problems.c;df_rd_confluence_n"}
!446 = !{!"branch_weights", i32 608972, i32 0}
!447 = distinct !{!447, !199, !200}
!448 = !{!"function_entry_count", i64 307298}
!449 = !{!"df-problems.c;df_rd_transfer_function"}
!450 = !{!"branch_weights", i32 2087, i32 305211}
!451 = !{!"branch_weights", i32 0, i32 305211}
!452 = !{!"branch_weights", i32 305211, i32 540475}
!453 = !{!"branch_weights", i32 540474, i32 1}
!454 = !{!"branch_weights", i32 8776967, i32 540474}
!455 = !{!"branch_weights", i32 1, i32 305210}
!456 = !{!"branch_weights", i32 305211, i32 0}
!457 = !{!"branch_weights", i32 305210, i32 1}
!458 = distinct !{!458, !199, !200}
!459 = !{!"branch_weights", i32 152608, i32 152603}
!460 = !{!"df-problems.c;df_rd_free"}
!461 = !{!238, !188, i64 244}
!462 = distinct !{!462, !199, !200}
!463 = !{!"function_entry_count", i64 601}
!464 = !{!"df-problems.c;df_lr_alloc"}
!465 = !{!"branch_weights", i32 38, i32 563}
!466 = !{!"branch_weights", i32 67, i32 534}
!467 = !{!"branch_weights", i32 29569, i32 768761}
!468 = !{!"branch_weights", i32 797728, i32 1}
!469 = !{!"branch_weights", i32 12994, i32 797728}
!470 = !{!"branch_weights", i32 1, i32 16034}
!471 = !{!"branch_weights", i32 2501, i32 28968}
!472 = !{!"branch_weights", i32 16034, i32 15435}
!473 = !{!"branch_weights", i32 601, i32 15434}
!474 = !{!"branch_weights", i32 601, i32 797729}
!475 = !{!"branch_weights", i32 797729, i32 0}
!476 = !{!"branch_weights", i32 252776, i32 544953}
!477 = !{!"branch_weights", i32 0, i32 252776}
!478 = !{!"branch_weights", i32 252776, i32 0}
!479 = !{!253, !183, i64 16}
!480 = !{!253, !183, i64 24}
!481 = distinct !{!481, !199, !200}
!482 = distinct !{!482, !199, !200}
!483 = !{!"function_entry_count", i64 99230}
!484 = !{!"df-problems.c;df_lr_free_bb_info"}
!485 = !{!"branch_weights", i32 0, i32 99230}
!486 = !{!"df-problems.c;df_lr_local_compute"}
!487 = !{!238, !183, i64 264}
!488 = !{!"branch_weights", i32 379, i32 222}
!489 = !{!"branch_weights", i32 0, i32 379}
!490 = !{!"branch_weights", i32 379, i32 0}
!491 = !{!"branch_weights", i32 114, i32 797615}
!492 = !{!238, !183, i64 296}
!493 = distinct !{!493, !199, !200}
!494 = !{!"df-problems.c;df_lr_init"}
!495 = !{!"branch_weights", i32 0, i32 601}
!496 = !{!"branch_weights", i32 46607, i32 2820136}
!497 = !{!"branch_weights", i32 76099, i32 2790043}
!498 = !{!"branch_weights", i32 0, i32 76099}
!499 = !{!"branch_weights", i32 1, i32 23646}
!500 = !{!"branch_weights", i32 687, i32 46006}
!501 = !{!"branch_weights", i32 23646, i32 23047}
!502 = !{!"branch_weights", i32 601, i32 23046}
!503 = !{!"branch_weights", i32 601, i32 2866142}
!504 = !{!"branch_weights", i32 2866142, i32 0}
!505 = distinct !{!505, !199, !200}
!506 = !{!"function_entry_count", i64 1499}
!507 = !{!"df-problems.c;df_lr_confluence_0"}
!508 = !{!"branch_weights", i32 1499, i32 0}
!509 = !{!216, !183, i64 8}
!510 = !{!"branch_weights", i32 601, i32 898}
!511 = !{!"function_entry_count", i64 10116591}
!512 = !{!"df-problems.c;df_lr_confluence_n"}
!513 = !{!"branch_weights", i32 10116591, i32 0}
!514 = !{!"function_entry_count", i64 5230141}
!515 = !{!"df-problems.c;df_lr_transfer_function"}
!516 = !{!"df-problems.c;df_lr_finalize"}
!517 = !{!206, !184, i64 53}
!518 = !{!"branch_weights", i32 361, i32 240}
!519 = !{!"branch_weights", i32 238, i32 2}
!520 = !{!238, !183, i64 328}
!521 = !{!238, !188, i64 344}
!522 = !{!"df-problems.c;df_lr_free"}
!523 = !{!"branch_weights", i32 117875, i32 153546}
!524 = !{!"branch_weights", i32 1085533, i32 151}
!525 = distinct !{!525, !199, !200}
!526 = !{!527, !183, i64 0}
!527 = !{!"df_lr_problem_data", !183, i64 0, !183, i64 8}
!528 = !{!527, !183, i64 8}
!529 = distinct !{!529, !199, !200}
!530 = distinct !{!530, !199, !200}
!531 = distinct !{!531, !199, !200}
!532 = !{!"function_entry_count", i64 599}
!533 = !{!"df-problems.c;df_live_alloc"}
!534 = !{!"branch_weights", i32 38, i32 561}
!535 = !{!"branch_weights", i32 67, i32 532}
!536 = !{!"branch_weights", i32 29566, i32 768758}
!537 = !{!"branch_weights", i32 797724, i32 1}
!538 = !{!"branch_weights", i32 12879, i32 797724}
!539 = !{!"branch_weights", i32 1, i32 16032}
!540 = !{!"branch_weights", i32 2500, i32 28967}
!541 = !{!"branch_weights", i32 16032, i32 15435}
!542 = !{!"branch_weights", i32 599, i32 15434}
!543 = !{!"branch_weights", i32 599, i32 797725}
!544 = !{!"branch_weights", i32 252776, i32 544949}
!545 = !{!287, !183, i64 16}
!546 = !{!287, !183, i64 24}
!547 = distinct !{!547, !199, !200}
!548 = distinct !{!548, !199, !200}
!549 = !{!"df-problems.c;df_live_free_bb_info"}
!550 = !{!"df-problems.c;df_live_local_compute"}
!551 = distinct !{!551, !199, !200}
!552 = !{!"df-problems.c;df_live_init"}
!553 = !{!"branch_weights", i32 0, i32 599}
!554 = !{!"branch_weights", i32 46601, i32 2819794}
!555 = !{!"branch_weights", i32 76099, i32 2789697}
!556 = !{!"branch_weights", i32 1, i32 23642}
!557 = !{!"branch_weights", i32 685, i32 46002}
!558 = !{!"branch_weights", i32 23642, i32 23045}
!559 = !{!"branch_weights", i32 599, i32 23044}
!560 = !{!"branch_weights", i32 599, i32 2865796}
!561 = !{!"branch_weights", i32 2865796, i32 0}
!562 = distinct !{!562, !199, !200}
!563 = !{!"function_entry_count", i64 10870043}
!564 = !{!"df-problems.c;df_live_confluence_n"}
!565 = !{!"branch_weights", i32 10870043, i32 0}
!566 = !{!"branch_weights", i32 10869979, i32 64}
!567 = !{!"function_entry_count", i64 5730394}
!568 = !{!"df-problems.c;df_live_transfer_function"}
!569 = !{!"branch_weights", i32 5730394, i32 0}
!570 = !{!"df-problems.c;df_live_finalize"}
!571 = distinct !{!571, !199, !200}
!572 = !{!"df-problems.c;df_live_free"}
!573 = distinct !{!573, !199, !200}
!574 = !{!575, !183, i64 0}
!575 = !{!"df_live_problem_data", !183, i64 0, !183, i64 8}
!576 = !{!575, !183, i64 8}
!577 = distinct !{!577, !199, !200}
!578 = distinct !{!578, !199, !200}
!579 = distinct !{!579, !199, !200}
!580 = !{!"df-problems.c;df_chain_alloc"}
!581 = !{!"df-problems.c;df_chain_finalize"}
!582 = !{!"branch_weights", i32 1, i32 826748}
!583 = !{!"branch_weights", i32 1229789, i32 0}
!584 = !{!"branch_weights", i32 0, i32 1229789}
!585 = !{!"branch_weights", i32 0, i32 5923205}
!586 = !{!"branch_weights", i32 4693416, i32 1229789}
!587 = distinct !{!587, !200}
!588 = !{!"branch_weights", i32 1161731, i32 68058}
!589 = !{!"branch_weights", i32 1205253, i32 1311742}
!590 = !{!"branch_weights", i32 2465558, i32 1}
!591 = !{!"branch_weights", i32 37815638, i32 2465558}
!592 = !{!"branch_weights", i32 1, i32 1168748}
!593 = !{!"branch_weights", i32 1187997, i32 1153817}
!594 = !{!"branch_weights", i32 1168748, i32 1173066}
!595 = !{!"branch_weights", i32 51436, i32 1117313}
!596 = !{!"branch_weights", i32 -1333915210, i32 -1195668138}
!597 = !{!238, !183, i64 136}
!598 = !{!"branch_weights", i32 1287206, i32 0}
!599 = !{!"branch_weights", i32 0, i32 1287206}
!600 = distinct !{!600, !199, !200}
!601 = !{!"branch_weights", i32 826748, i32 403041}
!602 = distinct !{!602, !199, !200}
!603 = !{!"branch_weights", i32 673062, i32 0}
!604 = !{!222, !183, i64 24}
!605 = distinct !{!605, !199, !200}
!606 = distinct !{!606, !199, !200}
!607 = !{!"df-problems.c;df_chain_fully_remove_problem"}
!608 = distinct !{!608, !199, !200}
!609 = distinct !{!609, !199, !200}
!610 = distinct !{!610, !199, !200}
!611 = distinct !{!611, !199, !200}
!612 = distinct !{!612, !199, !200}
!613 = distinct !{!613, !199, !200}
!614 = distinct !{!614, !199, !200}
!615 = !{!"df-problems.c;df_chain_remove_problem"}
!616 = !{!"branch_weights", i32 38, i32 38}
!617 = !{!"branch_weights", i32 2458, i32 151305}
!618 = !{!"branch_weights", i32 1, i32 1262}
!619 = !{!"branch_weights", i32 68, i32 2382}
!620 = !{!"branch_weights", i32 1262, i32 1188}
!621 = !{!"branch_weights", i32 76, i32 1187}
!622 = !{!"branch_weights", i32 76, i32 153687}
!623 = distinct !{!623, !199, !200}
!624 = !{!"branch_weights", i32 1, i32 153686}
!625 = !{!"branch_weights", i32 153686, i32 460910}
!626 = distinct !{!626, !199, !200}
!627 = distinct !{!627, !199, !200}
!628 = !{!"branch_weights", i32 0, i32 673062}
!629 = !{!"branch_weights", i32 57869, i32 615193}
!630 = !{!"branch_weights", i32 615193, i32 0}
!631 = distinct !{!631, !199, !200}
!632 = !{!"branch_weights", i32 666047, i32 7015}
!633 = !{!"branch_weights", i32 7015, i32 0}
!634 = distinct !{!634, !199, !200}
!635 = distinct !{!635, !199, !200}
!636 = distinct !{!636, !199, !200}
!637 = !{!"df-problems.c;df_chain_create_bb_process_use"}
!638 = !{!"branch_weights", i32 51436, i32 2465559}
!639 = !{!"branch_weights", i32 1178353, i32 1287206}
!640 = !{!316, !183, i64 8}
!641 = !{!316, !183, i64 0}
!642 = !{!316, !183, i64 16}
!643 = !{!216, !183, i64 0}
!644 = !{!204, !183, i64 56}
!645 = distinct !{!645, !199, !200}
!646 = distinct !{!646, !199, !200}
!647 = distinct !{!647, !199, !200}
!648 = !{!649, !183, i64 0}
!649 = !{!"df_byte_lr_bb_info", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24}
!650 = !{!649, !183, i64 8}
!651 = !{!649, !183, i64 16}
!652 = !{!649, !183, i64 24}
!653 = distinct !{!653, !199, !200}
!654 = distinct !{!654, !199, !200}
!655 = distinct !{!655, !199, !200}
!656 = distinct !{!656, !199, !200}
!657 = distinct !{!657, !199, !200}
!658 = distinct !{!658, !199, !200}
!659 = distinct !{!659, !199, !200}
!660 = distinct !{!660, !199, !200}
!661 = distinct !{!661, !199, !200}
!662 = distinct !{!662, !199, !200}
!663 = distinct !{!663, !199, !200}
!664 = distinct !{!664, !199, !200}
!665 = !{!"function_entry_count", i64 395}
!666 = !{!"df-problems.c;df_note_alloc"}
!667 = !{!"df-problems.c;df_note_compute"}
!668 = !{!"branch_weights", i32 0, i32 395}
!669 = !{!"branch_weights", i32 25910, i32 1618671}
!670 = !{!"branch_weights", i32 369, i32 1643817}
!671 = !{!"branch_weights", i32 0, i32 369}
!672 = !{!"branch_weights", i32 1, i32 13099}
!673 = !{!"branch_weights", i32 290, i32 25515}
!674 = !{!"branch_weights", i32 13099, i32 12706}
!675 = !{!"branch_weights", i32 395, i32 12705}
!676 = !{!"branch_weights", i32 395, i32 1644186}
!677 = !{!"branch_weights", i32 1641295, i32 2891}
!678 = !{!"branch_weights", i32 2891, i32 0}
!679 = distinct !{!679, !199, !200}
!680 = !{!"branch_weights", i32 1, i32 1644185}
!681 = !{!"branch_weights", i32 5574352, i32 0}
!682 = !{!"branch_weights", i32 1644185, i32 3930167}
!683 = distinct !{!683, !199, !200}
!684 = !{!"branch_weights", i32 1, i32 980}
!685 = !{!"branch_weights", i32 1643205, i32 8925318}
!686 = !{!"branch_weights", i32 6291946, i32 2633372}
!687 = !{!"branch_weights", i32 1401199, i32 4890747}
!688 = !{!"branch_weights", i32 2146370, i32 2629264, i32 115113}
!689 = !{!"branch_weights", i32 2629264, i32 0}
!690 = !{!"branch_weights", i32 115113, i32 0}
!691 = !{!"branch_weights", i32 4890747, i32 0}
!692 = distinct !{!692, !199, !200}
!693 = !{!222, !183, i64 32}
!694 = !{!"branch_weights", i32 691284, i32 5600662}
!695 = !{!696, !188, i64 12}
!696 = !{!"df_mw_hardreg", !183, i64 0, !188, i64 8, !188, i64 10, !188, i64 12, !188, i64 16, !188, i64 20}
!697 = distinct !{!697, !199, !200}
!698 = !{!"branch_weights", i32 1, i32 691283}
!699 = !{!"branch_weights", i32 668972, i32 31130092}
!700 = !{!"branch_weights", i32 168317, i32 3891334}
!701 = !{!"branch_weights", i32 168317, i32 0}
!702 = !{!"branch_weights", i32 0, i32 168317}
!703 = !{!"branch_weights", i32 1, i32 53203}
!704 = distinct !{!704, !199, !200}
!705 = !{!"branch_weights", i32 53203, i32 61910}
!706 = !{!"branch_weights", i32 31799064, i32 0}
!707 = !{!"branch_weights", i32 691283, i32 31107781}
!708 = distinct !{!708, !199, !200}
!709 = distinct !{!709, !199, !200}
!710 = !{!"branch_weights", i32 2209983, i32 3390679}
!711 = !{!"branch_weights", i32 3227823, i32 162856}
!712 = !{!"branch_weights", i32 3350495, i32 40184}
!713 = !{!"branch_weights", i32 3390679, i32 0}
!714 = distinct !{!714, !199, !200}
!715 = !{!696, !188, i64 16}
!716 = distinct !{!716, !199, !200}
!717 = !{!696, !183, i64 0}
!718 = distinct !{!718, !199, !200}
!719 = distinct !{!719, !199, !200}
!720 = !{!"branch_weights", i32 614617, i32 5677329}
!721 = !{!"branch_weights", i32 5677329, i32 0}
!722 = distinct !{!722, !199, !200}
!723 = !{!"branch_weights", i32 3355592, i32 2321737}
!724 = !{!"branch_weights", i32 3355592, i32 0}
!725 = !{!"branch_weights", i32 3312335, i32 43257}
!726 = !{!"branch_weights", i32 3312110, i32 225}
!727 = !{!"branch_weights", i32 3312110, i32 0}
!728 = !{!"branch_weights", i32 0, i32 3312110}
!729 = !{!"branch_weights", i32 29699, i32 3282411}
!730 = !{!"branch_weights", i32 1, i32 702187}
!731 = !{!"branch_weights", i32 2600455, i32 9467}
!732 = !{!"branch_weights", i32 9467, i32 0}
!733 = !{!"branch_weights", i32 2604282, i32 5640}
!734 = !{!"branch_weights", i32 702187, i32 1917202}
!735 = !{!"branch_weights", i32 6272604, i32 19342}
!736 = distinct !{!736, !199, !200}
!737 = !{!"branch_weights", i32 19342, i32 0}
!738 = distinct !{!738, !199, !200}
!739 = !{!"branch_weights", i32 0, i32 6291946}
!740 = !{!"branch_weights", i32 980, i32 10567543}
!741 = distinct !{!741, !199, !200}
!742 = distinct !{!742, !199, !200}
!743 = !{!"df-problems.c;df_note_free"}
!744 = distinct !{!744, !199, !200}
!745 = distinct !{!745, !199, !200}
!746 = !{!"df-problems.c;df_md_alloc"}
!747 = !{!"branch_weights", i32 76, i32 0}
!748 = !{!"branch_weights", i32 0, i32 76}
!749 = !{!"branch_weights", i32 5830, i32 364957}
!750 = !{!"branch_weights", i32 19, i32 370692}
!751 = !{!"branch_weights", i32 0, i32 19}
!752 = !{!"branch_weights", i32 1, i32 2944}
!753 = !{!"branch_weights", i32 60, i32 5754}
!754 = !{!"branch_weights", i32 2944, i32 2870}
!755 = !{!"branch_weights", i32 76, i32 2869}
!756 = !{!"branch_weights", i32 76, i32 370711}
!757 = !{!"branch_weights", i32 370711, i32 0}
!758 = !{!759, !183, i64 16}
!759 = !{!"df_md_bb_info", !183, i64 0, !183, i64 8, !183, i64 16, !183, i64 24, !183, i64 32}
!760 = !{!759, !183, i64 0}
!761 = !{!759, !183, i64 8}
!762 = !{!759, !183, i64 24}
!763 = !{!759, !183, i64 32}
!764 = !{!"branch_weights", i32 0, i32 370711}
!765 = distinct !{!765, !199, !200}
!766 = distinct !{!766, !199, !200}
!767 = !{!"function_entry_count", i64 7}
!768 = !{!"df-problems.c;df_md_free_bb_info"}
!769 = !{!"df-problems.c;df_md_local_compute"}
!770 = !{!"branch_weights", i32 1, i32 2110393}
!771 = !{!"branch_weights", i32 7158960, i32 0}
!772 = !{!"branch_weights", i32 532, i32 7158428}
!773 = !{!"branch_weights", i32 7158428, i32 0}
!774 = !{!"branch_weights", i32 947808, i32 6210620}
!775 = !{!"branch_weights", i32 2110393, i32 5048567}
!776 = distinct !{!776, !199, !200}
!777 = !{!"branch_weights", i32 370483, i32 1906196}
!778 = !{!"branch_weights", i32 1368972, i32 537224}
!779 = !{!"branch_weights", i32 7158428, i32 532}
!780 = !{!"branch_weights", i32 227, i32 2276452}
!781 = distinct !{!781, !199, !200}
!782 = distinct !{!782, !199, !200}
!783 = !{!"branch_weights", i32 151, i32 741271}
!784 = distinct !{!784, !199, !200}
!785 = !{!"branch_weights", i32 544, i32 370167}
!786 = !{!"branch_weights", i32 785553, i32 248083}
!787 = !{!"branch_weights", i32 662924, i32 1}
!788 = !{!"branch_weights", i32 14924140, i32 662924}
!789 = !{!"branch_weights", i32 1, i32 578687}
!790 = !{!"branch_weights", i32 371823, i32 414842}
!791 = !{!"branch_weights", i32 578687, i32 207978}
!792 = !{!"branch_weights", i32 370711, i32 207977}
!793 = !{!"branch_weights", i32 370711, i32 662925}
!794 = !{!"branch_weights", i32 0, i32 662925}
!795 = distinct !{!795, !199, !200}
!796 = distinct !{!796, !199, !200}
!797 = distinct !{!797, !199, !200}
!798 = !{!"df-problems.c;df_md_init"}
!799 = distinct !{!799, !199, !200}
!800 = !{!"df-problems.c;df_md_confluence_0"}
!801 = !{!"function_entry_count", i64 788242}
!802 = !{!"df-problems.c;df_md_confluence_n"}
!803 = !{!"branch_weights", i32 788242, i32 0}
!804 = !{!"function_entry_count", i64 378978}
!805 = !{!"df-problems.c;df_md_transfer_function"}
!806 = !{!"df-problems.c;df_md_free"}
!807 = !{!"branch_weights", i32 92773, i32 370704}
!808 = !{!"branch_weights", i32 926803, i32 151}
!809 = distinct !{!809, !199, !200}
