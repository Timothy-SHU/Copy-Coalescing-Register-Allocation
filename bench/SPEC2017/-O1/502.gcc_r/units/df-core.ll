; ModuleID = 'df-core.c'
source_filename = "df-core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.df_problem = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_mw_hardreg = type { ptr, i32, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@df = dso_local local_unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"setting blocks to analyze \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@df_bitmap_obstack = dso_local global %struct.bitmap_obstack zeroinitializer, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"clearing blocks_to_analyze\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"df-core.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dfinit\00", align 1
@pass_df_initialize_opt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr @gate_opt, ptr @rest_of_handle_df_initialize, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"no-opt dfinit\00", align 1
@pass_df_initialize_no_opt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr @gate_no_opt, ptr @rest_of_handle_df_initialize, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"dfinish\00", align 1
@pass_df_finish = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.7, ptr null, ptr @rest_of_handle_df_finish, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"df_analyze called\0A\00", align 1
@user_problem = internal global %struct.df_problem zeroinitializer, align 8
@user_dflow = internal global %struct.dataflow zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"shoving block %d into %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" (nil)\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"\0A\0Astarting region dump\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"\0A\0A%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\0ADataflow summary:\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"def_info->table_size = %d, use_info->table_size = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%c%d(%d)\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"%c%d(%d) \00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"insn %d bb %d luid %d defs \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" uses \00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c" eq_uses \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"reg %d defs \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%c%d \00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"reg %d bb %d insn %d flag 0x%x type 0x%x \00", align 1
@flag_dump_noaddr = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"loc #(#) chain \00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"loc %p(%p) chain \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"chain \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@optimize = external local_unnamed_addr global i32, align 4
@current_function_sp_is_unchanging = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [80 x i8] c"df_worklist_dataflow_doublequeue:n_basic_blocks %d n_edges %d count %d (%5.2g)\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"insn %d luid %d\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" defs \00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c" eq uses \00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" mws \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"mw %c r[%d..%d]\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !90 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !91
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !90 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !91
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !90 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !90 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !91
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !90 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !90 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !90 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !90 {
  %2 = load i32, ptr %0, align 8, !tbaa !105
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !90 {
  %2 = load i32, ptr %0, align 8, !tbaa !105
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !90 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !106
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !90 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !106
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !90 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
  br i1 %23, label %7, label %24, !llvm.loop !107

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @df_add_problem(ptr noundef %0) local_unnamed_addr #8 !prof !110 {
  %2 = getelementptr inbounds %struct.df_problem, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !113

5:                                                ; preds = %1
  tail call void @df_add_problem(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @df, align 8, !tbaa !91
  %8 = load i32, ptr %0, align 8, !tbaa !114
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %47, !prof !113

13:                                               ; preds = %6
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #21
  store ptr %0, ptr %14, align 8, !tbaa !115
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 7
  store i8 0, ptr %15, align 4, !tbaa !117
  %16 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 8
  store i8 1, ptr %16, align 1, !tbaa !118
  %17 = load ptr, ptr @df, align 8, !tbaa !91
  %18 = load i32, ptr %0, align 8, !tbaa !114
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 %19
  store ptr %14, ptr %20, align 8, !tbaa !91
  %21 = load ptr, ptr @df, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !119
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !119
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %43, !prof !122

26:                                               ; preds = %13
  %27 = zext nneg i32 %23 to i64
  br label %28

28:                                               ; preds = %26, %37
  %29 = phi i64 [ %27, %26 ], [ %30, %37 ]
  %30 = add nsw i64 %29, -1
  %31 = load ptr, ptr @df, align 8, !tbaa !91
  %32 = getelementptr inbounds [8 x ptr], ptr %31, i64 0, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = load i32, ptr %34, align 8, !tbaa !114
  %36 = icmp ult i32 %18, %35
  br i1 %36, label %37, label %40, !prof !123

37:                                               ; preds = %28
  %38 = getelementptr inbounds [8 x ptr], ptr %31, i64 0, i64 %29
  store ptr %33, ptr %38, align 8, !tbaa !91
  %39 = icmp sgt i64 %29, 1
  br i1 %39, label %28, label %43, !prof !124, !llvm.loop !125

40:                                               ; preds = %28
  %41 = and i64 %29, 4294967295
  %42 = getelementptr inbounds [8 x ptr], ptr %31, i64 0, i64 %41
  br label %45

43:                                               ; preds = %37, %13
  %44 = load ptr, ptr @df, align 8, !tbaa !91
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi ptr [ %44, %43 ], [ %42, %40 ]
  store ptr %14, ptr %46, align 8, !tbaa !91
  br label %47

47:                                               ; preds = %45, %6
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @df_set_flags(i32 noundef %0) local_unnamed_addr #9 !prof !126 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 27
  %4 = load i8, ptr %3, align 4
  %5 = sext i8 %4 to i32
  %6 = trunc i32 %0 to i8
  %7 = or i8 %4, %6
  store i8 %7, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @df_clear_flags(i32 noundef %0) local_unnamed_addr #9 !prof !127 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 27
  %4 = load i8, ptr %3, align 4
  %5 = sext i8 %4 to i32
  %6 = trunc i32 %0 to i8
  %7 = xor i8 %6, -1
  %8 = and i8 %4, %7
  store i8 %8, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_set_blocks(ptr noundef %0) local_unnamed_addr #10 !prof !90 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %2, label %222, label %5

5:                                                ; preds = %1
  br i1 %4, label %7, label %6

6:                                                ; preds = %5
  tail call void @bitmap_print(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %6, %5
  %8 = load ptr, ptr @df, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load ptr, ptr @df, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !119
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %166, label %210

17:                                               ; preds = %7
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %19 = load ptr, ptr @df, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !128
  %22 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %18, ptr noundef %21, ptr noundef nonnull %0) #21
  %23 = load ptr, ptr @df, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 12
  %25 = load i32, ptr %24, align 4, !tbaa !119
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %165

27:                                               ; preds = %17, %158
  %28 = phi i64 [ %159, %158 ], [ 0, %17 ]
  %29 = phi ptr [ %160, %158 ], [ %23, %17 ]
  %30 = getelementptr inbounds [8 x ptr], ptr %29, i64 0, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.dataflow, ptr %31, i64 0, i32 9
  %33 = load i8, ptr %32, align 2, !tbaa !129
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %31, align 8, !tbaa !115
  %37 = getelementptr inbounds %struct.df_problem, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !130
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !128
  tail call void %38(ptr noundef %42) #21
  br label %158

43:                                               ; preds = %35, %27
  %44 = load ptr, ptr %31, align 8, !tbaa !115
  %45 = getelementptr inbounds %struct.df_problem, ptr %44, i64 0, i32 21
  %46 = load i8, ptr %45, align 4, !tbaa !131
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %158, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %18, align 8, !tbaa !132
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr @bitmap_zero_bits, ptr %49
  %52 = getelementptr inbounds %struct.bitmap_element_def, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !134
  %54 = shl i32 %53, 7
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %51, i64 0, i32 3, i64 0
  %56 = load i64, ptr %55, align 8, !tbaa !136
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = or disjoint i32 %54, %58
  %60 = getelementptr inbounds %struct.dataflow, ptr %31, i64 0, i32 1
  %61 = getelementptr inbounds %struct.dataflow, ptr %31, i64 0, i32 2
  br label %62

62:                                               ; preds = %155, %48
  %63 = phi i32 [ 0, %48 ], [ %118, %155 ]
  %64 = phi i64 [ %56, %48 ], [ %156, %155 ]
  %65 = phi ptr [ %51, %48 ], [ %120, %155 ]
  %66 = phi i32 [ %59, %48 ], [ %157, %155 ]
  %67 = icmp eq i64 %64, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %96, %62
  %69 = phi i32 [ %63, %62 ], [ %97, %96 ]
  %70 = phi i64 [ %64, %62 ], [ %101, %96 ]
  %71 = phi ptr [ %65, %62 ], [ %88, %96 ]
  %72 = phi i32 [ %66, %62 ], [ %98, %96 ]
  %73 = and i64 %70, 1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %68, %75
  %76 = phi i32 [ %79, %75 ], [ %72, %68 ]
  %77 = phi i64 [ %78, %75 ], [ %70, %68 ]
  %78 = lshr exact i64 %77, 1
  %79 = add i32 %76, 1
  %80 = and i64 %77, 2
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %75, label %117, !llvm.loop !137

82:                                               ; preds = %62
  %83 = add i32 %66, 63
  %84 = and i32 %83, -64
  %85 = add i32 %63, 1
  br label %86

86:                                               ; preds = %113, %82
  %87 = phi i64 [ %64, %82 ], [ %108, %113 ]
  %88 = phi ptr [ %65, %82 ], [ %111, %113 ]
  %89 = phi i32 [ %84, %82 ], [ %116, %113 ]
  %90 = phi i32 [ %85, %82 ], [ 0, %113 ]
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %107, label %92

92:                                               ; preds = %86
  %93 = add i32 %89, 128
  %94 = shl i32 %90, 6
  %95 = sub i32 %93, %94
  br label %96

96:                                               ; preds = %92, %103
  %97 = phi i32 [ %105, %103 ], [ %90, %92 ]
  %98 = phi i32 [ %104, %103 ], [ %89, %92 ]
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds %struct.bitmap_element_def, ptr %88, i64 0, i32 3, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !136
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %68

103:                                              ; preds = %96
  %104 = add i32 %98, 64
  %105 = add i32 %97, 1
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %96, !llvm.loop !138

107:                                              ; preds = %103, %86
  %108 = phi i64 [ %87, %86 ], [ %101, %103 ]
  %109 = phi i32 [ %89, %86 ], [ %95, %103 ]
  %110 = phi i32 [ %90, %86 ], [ 2, %103 ]
  %111 = load ptr, ptr %88, align 8, !tbaa !139
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.bitmap_element_def, ptr %111, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !134
  %116 = shl i32 %115, 7
  br label %86, !llvm.loop !140

117:                                              ; preds = %107, %75, %68
  %118 = phi i32 [ %69, %68 ], [ %69, %75 ], [ %110, %107 ]
  %119 = phi i64 [ %70, %68 ], [ %78, %75 ], [ %108, %107 ]
  %120 = phi ptr [ %71, %68 ], [ %71, %75 ], [ %111, %107 ]
  %121 = phi i32 [ %72, %68 ], [ %79, %75 ], [ %109, %107 ]
  %122 = phi i1 [ false, %68 ], [ false, %75 ], [ true, %107 ]
  br i1 %122, label %158, label %123

123:                                              ; preds = %117
  %124 = load ptr, ptr @cfun, align 8, !tbaa !91
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !141
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !143
  %129 = zext i32 %121 to i64
  %130 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %128, i64 0, i32 2, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !91
  %132 = icmp eq ptr %131, null
  br i1 %132, label %155, label %133

133:                                              ; preds = %123
  %134 = load ptr, ptr %60, align 8, !tbaa !145
  %135 = icmp eq ptr %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr %61, align 8, !tbaa !146
  %138 = icmp ugt i32 %137, %121
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = getelementptr inbounds ptr, ptr %134, i64 %129
  %141 = load ptr, ptr %140, align 8, !tbaa !91
  br label %142

142:                                              ; preds = %133, %136, %139
  %143 = phi ptr [ %141, %139 ], [ null, %133 ], [ null, %136 ]
  %144 = icmp eq ptr %143, null
  br i1 %144, label %155, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %31, align 8, !tbaa !115
  %147 = getelementptr inbounds %struct.df_problem, ptr %146, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !147
  tail call void %148(ptr noundef nonnull %131, ptr noundef nonnull %143) #21
  %149 = load ptr, ptr %60, align 8, !tbaa !145
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1306, ptr noundef nonnull @.str.4) #21
  br label %152

152:                                              ; preds = %145, %151
  %153 = load ptr, ptr %60, align 8, !tbaa !145
  %154 = getelementptr inbounds ptr, ptr %153, i64 %129
  store ptr null, ptr %154, align 8, !tbaa !91
  br label %155

155:                                              ; preds = %142, %152, %123
  %156 = lshr i64 %119, 1
  %157 = add i32 %121, 1
  br label %62, !llvm.loop !148

158:                                              ; preds = %117, %43, %40
  %159 = add nuw nsw i64 %28, 1
  %160 = load ptr, ptr @df, align 8, !tbaa !91
  %161 = getelementptr inbounds %struct.df, ptr %160, i64 0, i32 12
  %162 = load i32, ptr %161, align 4, !tbaa !119
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %159, %163
  br i1 %164, label %27, label %165, !llvm.loop !149

165:                                              ; preds = %158, %17
  tail call void @bitmap_obstack_free(ptr noundef %18) #21
  br label %218

166:                                              ; preds = %12, %202
  %167 = phi i64 [ %204, %202 ], [ 0, %12 ]
  %168 = phi ptr [ %205, %202 ], [ %13, %12 ]
  %169 = phi ptr [ %203, %202 ], [ null, %12 ]
  %170 = getelementptr inbounds [8 x ptr], ptr %168, i64 0, i64 %167
  %171 = load ptr, ptr %170, align 8, !tbaa !91
  %172 = getelementptr inbounds %struct.dataflow, ptr %171, i64 0, i32 9
  %173 = load i8, ptr %172, align 2, !tbaa !129
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %202, label %175

175:                                              ; preds = %166
  %176 = load ptr, ptr %171, align 8, !tbaa !115
  %177 = getelementptr inbounds %struct.df_problem, ptr %176, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !130
  %179 = icmp eq ptr %178, null
  br i1 %179, label %202, label %180

180:                                              ; preds = %175
  %181 = icmp eq ptr %169, null
  br i1 %181, label %182, label %197

182:                                              ; preds = %180
  %183 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %184 = load ptr, ptr @cfun, align 8, !tbaa !91
  %185 = getelementptr inbounds %struct.function, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !141
  %187 = load ptr, ptr %186, align 8, !tbaa !91
  %188 = icmp eq ptr %187, null
  br i1 %188, label %197, label %189

189:                                              ; preds = %182, %189
  %190 = phi ptr [ %195, %189 ], [ %187, %182 ]
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %190, i64 0, i32 9
  %192 = load i32, ptr %191, align 8, !tbaa !150
  %193 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %183, i32 noundef %192) #21
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %190, i64 0, i32 6
  %195 = load ptr, ptr %194, align 8, !tbaa !91
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %189, !llvm.loop !152

197:                                              ; preds = %189, %182, %180
  %198 = phi ptr [ %169, %180 ], [ %183, %182 ], [ %183, %189 ]
  %199 = load ptr, ptr %171, align 8, !tbaa !115
  %200 = getelementptr inbounds %struct.df_problem, ptr %199, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !130
  tail call void %201(ptr noundef %198) #21
  br label %202

202:                                              ; preds = %197, %175, %166
  %203 = phi ptr [ %198, %197 ], [ %169, %175 ], [ %169, %166 ]
  %204 = add nuw nsw i64 %167, 1
  %205 = load ptr, ptr @df, align 8, !tbaa !91
  %206 = getelementptr inbounds %struct.df, ptr %205, i64 0, i32 12
  %207 = load i32, ptr %206, align 4, !tbaa !119
  %208 = sext i32 %207 to i64
  %209 = icmp slt i64 %204, %208
  br i1 %209, label %166, label %210, !llvm.loop !153

210:                                              ; preds = %202, %12
  %211 = phi ptr [ null, %12 ], [ %203, %202 ]
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  tail call void @bitmap_obstack_free(ptr noundef nonnull %211) #21
  br label %214

214:                                              ; preds = %213, %210
  %215 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %216 = load ptr, ptr @df, align 8, !tbaa !91
  %217 = getelementptr inbounds %struct.df, ptr %216, i64 0, i32 2
  store ptr %215, ptr %217, align 8, !tbaa !128
  br label %218

218:                                              ; preds = %214, %165
  %219 = load ptr, ptr @df, align 8, !tbaa !91
  %220 = getelementptr inbounds %struct.df, ptr %219, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !128
  tail call void @bitmap_copy(ptr noundef %221, ptr noundef nonnull %0) #21
  br label %233

222:                                              ; preds = %1
  br i1 %4, label %225, label %223

223:                                              ; preds = %222
  %224 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr nonnull %3)
  br label %225

225:                                              ; preds = %223, %222
  %226 = load ptr, ptr @df, align 8, !tbaa !91
  %227 = getelementptr inbounds %struct.df, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !128
  %229 = icmp eq ptr %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %225
  tail call void @bitmap_obstack_free(ptr noundef nonnull %228) #21
  %231 = load ptr, ptr @df, align 8, !tbaa !91
  %232 = getelementptr inbounds %struct.df, ptr %231, i64 0, i32 2
  store ptr null, ptr %232, align 8, !tbaa !128
  br label %233

233:                                              ; preds = %225, %230, %218
  %234 = phi i8 [ 1, %218 ], [ 0, %230 ], [ 0, %225 ]
  %235 = load ptr, ptr @df, align 8, !tbaa !91
  %236 = getelementptr inbounds %struct.df, ptr %235, i64 0, i32 28
  store i8 %234, ptr %236, align 1, !tbaa !154
  tail call void @df_maybe_reorganize_def_refs(i32 noundef 0) #21
  tail call void @df_maybe_reorganize_use_refs(i32 noundef 0) #21
  %237 = load ptr, ptr @df, align 8, !tbaa !91
  %238 = icmp eq ptr %237, null
  br i1 %238, label %252, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.df, ptr %237, i64 0, i32 12
  %241 = load i32, ptr %240, align 4, !tbaa !119
  %242 = icmp sgt i32 %241, 1
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  %244 = zext nneg i32 %241 to i64
  br label %245

245:                                              ; preds = %243, %245
  %246 = phi i64 [ 1, %243 ], [ %250, %245 ]
  %247 = getelementptr inbounds [8 x ptr], ptr %237, i64 0, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !91
  %249 = getelementptr inbounds %struct.dataflow, ptr %248, i64 0, i32 8
  store i8 1, ptr %249, align 1, !tbaa !118
  %250 = add nuw nsw i64 %246, 1
  %251 = icmp eq i64 %250, %244
  br i1 %251, label %252, label %245, !llvm.loop !155

252:                                              ; preds = %245, %239, %233
  ret void
}

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @df_maybe_reorganize_def_refs(i32 noundef) local_unnamed_addr #3

declare void @df_maybe_reorganize_use_refs(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @df_mark_solutions_dirty() local_unnamed_addr #11 !prof !156 {
  %1 = load ptr, ptr @df, align 8, !tbaa !91
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3, !prof !157

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !119
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %16, !prof !158

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 1, %7 ], [ %14, %9 ]
  %11 = getelementptr inbounds [8 x ptr], ptr %1, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 8
  store i8 1, ptr %13, align 1, !tbaa !118
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !prof !159, !llvm.loop !155

16:                                               ; preds = %9, %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @df_remove_problem(ptr noundef readonly %0) local_unnamed_addr #8 !prof !160 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3, !prof !161

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.df_problem, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !161

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 604, ptr noundef nonnull @.str.4) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr @df, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !119
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %20, label %14, !prof !122

14:                                               ; preds = %30, %9
  %15 = phi ptr [ %10, %9 ], [ %32, %30 ]
  %16 = phi i32 [ %12, %9 ], [ %34, %30 ]
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %77, !prof !163

18:                                               ; preds = %14
  %19 = zext nneg i32 %16 to i64
  br label %37

20:                                               ; preds = %9, %30
  %21 = phi i64 [ %31, %30 ], [ 0, %9 ]
  %22 = phi ptr [ %32, %30 ], [ %10, %9 ]
  %23 = getelementptr inbounds [8 x ptr], ptr %22, i64 0, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  %26 = getelementptr inbounds %struct.df_problem, ptr %25, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %29, label %30, !prof !164

29:                                               ; preds = %20
  tail call void @df_remove_problem(ptr noundef nonnull %24)
  br label %30

30:                                               ; preds = %20, %29
  %31 = add nuw nsw i64 %21, 1
  %32 = load ptr, ptr @df, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !119
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %20, label %14, !prof !165, !llvm.loop !166

37:                                               ; preds = %18, %73
  %38 = phi i64 [ 1, %18 ], [ %76, %73 ]
  %39 = phi i64 [ 0, %18 ], [ %74, %73 ]
  %40 = getelementptr inbounds [8 x ptr], ptr %15, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %73, !prof !167

43:                                               ; preds = %37
  %44 = trunc i64 %39 to i32
  %45 = add nuw nsw i32 %44, 1
  %46 = load ptr, ptr @df, align 8, !tbaa !91
  %47 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 12
  %48 = load i32, ptr %47, align 4, !tbaa !119
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %64, !prof !168

50:                                               ; preds = %43, %50
  %51 = phi i64 [ %63, %50 ], [ %39, %43 ]
  %52 = phi i64 [ %57, %50 ], [ %38, %43 ]
  %53 = phi ptr [ %58, %50 ], [ %46, %43 ]
  %54 = getelementptr inbounds [8 x ptr], ptr %53, i64 0, i64 %52
  %55 = load ptr, ptr %54, align 8, !tbaa !91
  %56 = getelementptr inbounds [8 x ptr], ptr %53, i64 0, i64 %51
  store ptr %55, ptr %56, align 8, !tbaa !91
  %57 = add nuw nsw i64 %52, 1
  %58 = load ptr, ptr @df, align 8, !tbaa !91
  %59 = getelementptr inbounds %struct.df, ptr %58, i64 0, i32 12
  %60 = load i32, ptr %59, align 4, !tbaa !119
  %61 = trunc i64 %57 to i32
  %62 = icmp sgt i32 %60, %61
  %63 = add nuw nsw i64 %51, 1
  br i1 %62, label %50, label %64, !prof !168, !llvm.loop !169

64:                                               ; preds = %50, %43
  %65 = phi i64 [ %39, %43 ], [ %52, %50 ]
  %66 = phi ptr [ %46, %43 ], [ %58, %50 ]
  %67 = and i64 %65, 4294967295
  %68 = getelementptr inbounds [8 x ptr], ptr %66, i64 0, i64 %67
  store ptr null, ptr %68, align 8, !tbaa !91
  %69 = load ptr, ptr @df, align 8, !tbaa !91
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 12
  %71 = load i32, ptr %70, align 4, !tbaa !119
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr %70, align 4, !tbaa !119
  br label %77

73:                                               ; preds = %37
  %74 = add nuw nsw i64 %39, 1
  %75 = icmp eq i64 %74, %19
  %76 = add nuw nsw i64 %38, 1
  br i1 %75, label %77, label %37, !prof !164, !llvm.loop !170

77:                                               ; preds = %73, %14, %64
  %78 = load ptr, ptr %5, align 8, !tbaa !162
  tail call void %78() #21, !prof !171
  %79 = load ptr, ptr @df, align 8, !tbaa !91
  %80 = load i32, ptr %4, align 8, !tbaa !114
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.df, ptr %79, i64 0, i32 1, i64 %81
  store ptr null, ptr %82, align 8, !tbaa !91
  br label %83

83:                                               ; preds = %1, %77
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @df_finish_pass(i8 noundef zeroext %0) local_unnamed_addr #8 !prof !172 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = icmp eq ptr %2, null
  br i1 %3, label %71, label %4, !prof !173

4:                                                ; preds = %1
  tail call void @df_maybe_reorganize_def_refs(i32 noundef 0) #21
  tail call void @df_maybe_reorganize_use_refs(i32 noundef 0) #21
  %5 = load ptr, ptr @df, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !119
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41, !prof !174

9:                                                ; preds = %4, %33
  %10 = phi i64 [ %35, %33 ], [ 0, %4 ]
  %11 = phi ptr [ %36, %33 ], [ %5, %4 ]
  %12 = phi i32 [ %34, %33 ], [ 0, %4 ]
  %13 = getelementptr inbounds [8 x ptr], ptr %11, i64 0, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 9
  %17 = load i8, ptr %16, align 2, !tbaa !129
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %33, label %19, !prof !175

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.df_problem, ptr %15, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !162
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !176

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 659, ptr noundef nonnull @.str.4) #21
  br label %24

24:                                               ; preds = %19, %23
  %25 = load ptr, ptr %20, align 8, !tbaa !162
  tail call void %25() #21, !prof !177
  %26 = load ptr, ptr @df, align 8, !tbaa !91
  %27 = getelementptr inbounds [8 x ptr], ptr %26, i64 0, i64 %10
  store ptr null, ptr %27, align 8, !tbaa !91
  %28 = load ptr, ptr @df, align 8, !tbaa !91
  %29 = load i32, ptr %15, align 8, !tbaa !114
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !91
  %32 = add nsw i32 %12, 1
  br label %33

33:                                               ; preds = %24, %9
  %34 = phi i32 [ %32, %24 ], [ %12, %9 ]
  %35 = add nuw nsw i64 %10, 1
  %36 = load ptr, ptr @df, align 8, !tbaa !91
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !119
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %9, label %41, !prof !178, !llvm.loop !179

41:                                               ; preds = %33, %4
  %42 = phi ptr [ %5, %4 ], [ %36, %33 ]
  %43 = phi i32 [ 0, %4 ], [ %34, %33 ]
  %44 = phi i32 [ %7, %4 ], [ %38, %33 ]
  %45 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 12
  %46 = sub nsw i32 %44, %43
  store i32 %46, ptr %45, align 4, !tbaa !119
  %47 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 27
  store i8 0, ptr %47, align 4
  tail call void @df_process_deferred_rescans() #21
  %48 = load ptr, ptr @df, align 8, !tbaa !91
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !128
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52, !prof !180

52:                                               ; preds = %41
  tail call void @bitmap_obstack_free(ptr noundef nonnull %50) #21
  %53 = load ptr, ptr @df, align 8, !tbaa !91
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 2
  store ptr null, ptr %54, align 8, !tbaa !128
  %55 = icmp eq ptr %53, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 12
  %58 = load i32, ptr %57, align 4, !tbaa !119
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = zext nneg i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 1, %60 ], [ %67, %62 ]
  %64 = getelementptr inbounds [8 x ptr], ptr %53, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  %66 = getelementptr inbounds %struct.dataflow, ptr %65, i64 0, i32 8
  store i8 1, ptr %66, align 1, !tbaa !118
  %67 = add nuw nsw i64 %63, 1
  %68 = icmp eq i64 %67, %61
  br i1 %68, label %69, label %62, !llvm.loop !155

69:                                               ; preds = %62, %56, %52
  %70 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 28
  store i8 0, ptr %70, align 1, !tbaa !154
  br label %71

71:                                               ; preds = %41, %69, %1
  ret void
}

declare void @df_process_deferred_rescans() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_opt() #12 !prof !160 !PGOFuncName !181 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !106
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_df_initialize() #8 !prof !160 !PGOFuncName !182 {
  %1 = load ptr, ptr @df, align 8, !tbaa !91
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !183

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 707, ptr noundef nonnull @.str.4) #21
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 368) #21
  store ptr %5, ptr @df, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 27
  store i8 0, ptr %6, align 4
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @df_bitmap_obstack) #21
  store i32 0, ptr @current_function_sp_is_unchanging, align 4, !tbaa !106
  tail call void @df_scan_add_problem() #21
  tail call void @df_scan_alloc(ptr noundef null) #21
  tail call void @df_lr_add_problem() #21
  %7 = load i32, ptr @optimize, align 4, !tbaa !106
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %10, !prof !183

9:                                                ; preds = %4
  tail call void @df_live_add_problem() #21
  br label %10

10:                                               ; preds = %9, %4
  %11 = load ptr, ptr @cfun, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !141
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !184
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr @xmalloc(i64 noundef %17) #21
  %19 = load ptr, ptr @df, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 21
  store ptr %18, ptr %20, align 8, !tbaa !185
  %21 = load ptr, ptr @cfun, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !184
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr @xmalloc(i64 noundef %27) #21
  %29 = load ptr, ptr @df, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 22
  store ptr %28, ptr %30, align 8, !tbaa !186
  %31 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 21
  %32 = load ptr, ptr %31, align 8, !tbaa !185
  %33 = tail call i32 @post_order_compute(ptr noundef %32, i8 noundef zeroext 1, i8 noundef zeroext 1) #21
  %34 = load ptr, ptr @df, align 8, !tbaa !91
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 23
  store i32 %33, ptr %35, align 8, !tbaa !187
  %36 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 22
  %37 = load ptr, ptr %36, align 8, !tbaa !186
  %38 = tail call i32 @inverted_post_order_compute(ptr noundef %37) #21
  %39 = load ptr, ptr @df, align 8, !tbaa !91
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 24
  store i32 %38, ptr %40, align 4, !tbaa !188
  %41 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 23
  %42 = load i32, ptr %41, align 8, !tbaa !187
  %43 = icmp eq i32 %42, %38
  br i1 %43, label %45, label %44, !prof !183

44:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 729, ptr noundef nonnull @.str.4) #21
  br label %45

45:                                               ; preds = %10, %44
  %46 = tail call ptr @xmalloc(i64 noundef 212) #21
  %47 = load ptr, ptr @df, align 8, !tbaa !91
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 25
  store ptr %46, ptr %48, align 8, !tbaa !189
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %46, i8 0, i64 212, i1 false)
  tail call void @df_hard_reg_init() #21
  tail call void @df_compute_regs_ever_live(i8 noundef zeroext 1) #21
  tail call void @df_scan_blocks() #21
  tail call void @df_compute_regs_ever_live(i8 noundef zeroext 0) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_no_opt() #12 !prof !160 !PGOFuncName !190 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !106
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_df_finish() #8 !prof !160 !PGOFuncName !191 {
  %1 = load ptr, ptr @df, align 8, !tbaa !91
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !161

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 807, ptr noundef nonnull @.str.4) #21
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @df, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !119
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23, !prof !122

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %17, %9 ], [ 0, %4 ]
  %11 = phi ptr [ %18, %9 ], [ %5, %4 ]
  %12 = getelementptr inbounds [8 x ptr], ptr %11, i64 0, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = getelementptr inbounds %struct.df_problem, ptr %14, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !192
  tail call void %16() #21, !prof !193
  %17 = add nuw nsw i64 %10, 1
  %18 = load ptr, ptr @df, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 12
  %20 = load i32, ptr %19, align 4, !tbaa !119
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %9, label %23, !prof !194, !llvm.loop !195

23:                                               ; preds = %9, %4
  %24 = phi ptr [ %5, %4 ], [ %18, %9 ]
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !185
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !161

28:                                               ; preds = %23
  tail call void @free(ptr noundef %26)
  br label %29

29:                                               ; preds = %28, %23
  %30 = load ptr, ptr @df, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.df, ptr %30, i64 0, i32 22
  %32 = load ptr, ptr %31, align 8, !tbaa !186
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !161

34:                                               ; preds = %29
  tail call void @free(ptr noundef %32)
  br label %35

35:                                               ; preds = %34, %29
  %36 = load ptr, ptr @df, align 8, !tbaa !91
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 25
  %38 = load ptr, ptr %37, align 8, !tbaa !189
  tail call void @free(ptr noundef %38)
  %39 = load ptr, ptr @df, align 8, !tbaa !91
  tail call void @free(ptr noundef %39)
  store ptr null, ptr @df, align 8, !tbaa !91
  tail call void @bitmap_obstack_release(ptr noundef nonnull @df_bitmap_obstack) #21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @df_worklist_dataflow(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #8 !prof !196 {
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %6 = load ptr, ptr @cfun, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !184
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %10) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.df_problem, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !197
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !198

16:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1016, ptr noundef nonnull @.str.4) #21
  br label %17

17:                                               ; preds = %4, %16
  %18 = load ptr, ptr @cfun, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !141
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !184
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr @xmalloc(i64 noundef %24) #21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !141
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !184
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %40, !prof !199

32:                                               ; preds = %17, %32
  %33 = phi i64 [ %36, %32 ], [ 0, %17 ]
  %34 = phi i32 [ %37, %32 ], [ %30, %17 ]
  %35 = getelementptr inbounds i32, ptr %25, i64 %33
  store i32 %34, ptr %35, align 4, !tbaa !106
  %36 = add nuw nsw i64 %33, 1
  %37 = load i32, ptr %29, align 8, !tbaa !184
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %32, label %40, !prof !200, !llvm.loop !201

40:                                               ; preds = %32, %17
  tail call void @sbitmap_zero(ptr noundef %11) #21
  %41 = load ptr, ptr %1, align 8, !tbaa !132
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr @bitmap_zero_bits, ptr %41, !prof !198
  %44 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !134
  %46 = shl i32 %45, 7
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %43, i64 0, i32 3, i64 0
  %48 = load i64, ptr %47, align 8, !tbaa !136
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = or disjoint i32 %46, %50
  br label %52

52:                                               ; preds = %134, %40
  %53 = phi i32 [ 0, %40 ], [ %108, %134 ]
  %54 = phi i64 [ %48, %40 ], [ %143, %134 ]
  %55 = phi ptr [ %43, %40 ], [ %110, %134 ]
  %56 = phi i32 [ %51, %40 ], [ %144, %134 ]
  %57 = icmp eq i64 %54, 0
  br i1 %57, label %72, label %58, !prof !202

58:                                               ; preds = %86, %52
  %59 = phi i32 [ %53, %52 ], [ %87, %86 ]
  %60 = phi i64 [ %54, %52 ], [ %91, %86 ]
  %61 = phi ptr [ %55, %52 ], [ %78, %86 ]
  %62 = phi i32 [ %56, %52 ], [ %88, %86 ]
  %63 = and i64 %60, 1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %107, !prof !203

65:                                               ; preds = %58, %65
  %66 = phi i32 [ %69, %65 ], [ %62, %58 ]
  %67 = phi i64 [ %68, %65 ], [ %60, %58 ]
  %68 = lshr exact i64 %67, 1
  %69 = add i32 %66, 1
  %70 = and i64 %67, 2
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %65, label %107, !prof !204, !llvm.loop !137

72:                                               ; preds = %52
  %73 = add i32 %56, 63
  %74 = and i32 %73, -64
  %75 = add i32 %53, 1
  br label %76

76:                                               ; preds = %103, %72
  %77 = phi i64 [ %54, %72 ], [ %98, %103 ]
  %78 = phi ptr [ %55, %72 ], [ %101, %103 ]
  %79 = phi i32 [ %74, %72 ], [ %106, %103 ]
  %80 = phi i32 [ %75, %72 ], [ 0, %103 ]
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %97, label %82, !prof !205

82:                                               ; preds = %76
  %83 = add i32 %79, 128
  %84 = shl i32 %80, 6
  %85 = sub i32 %83, %84
  br label %86

86:                                               ; preds = %82, %93
  %87 = phi i32 [ %95, %93 ], [ %80, %82 ]
  %88 = phi i32 [ %94, %93 ], [ %79, %82 ]
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds %struct.bitmap_element_def, ptr %78, i64 0, i32 3, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !136
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %58, !prof !206

93:                                               ; preds = %86
  %94 = add i32 %88, 64
  %95 = add i32 %87, 1
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %86, !prof !207, !llvm.loop !138

97:                                               ; preds = %93, %76
  %98 = phi i64 [ %77, %76 ], [ %91, %93 ]
  %99 = phi i32 [ %79, %76 ], [ %85, %93 ]
  %100 = phi i32 [ %80, %76 ], [ 2, %93 ]
  %101 = load ptr, ptr %78, align 8, !tbaa !139
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103, !prof !208

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.bitmap_element_def, ptr %101, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !134
  %106 = shl i32 %105, 7
  br label %76, !llvm.loop !140

107:                                              ; preds = %97, %65, %58
  %108 = phi i32 [ %59, %58 ], [ %59, %65 ], [ %100, %97 ]
  %109 = phi i64 [ %60, %58 ], [ %68, %65 ], [ %98, %97 ]
  %110 = phi ptr [ %61, %58 ], [ %61, %65 ], [ %101, %97 ]
  %111 = phi i32 [ %62, %58 ], [ %69, %65 ], [ %99, %97 ]
  %112 = phi i1 [ false, %58 ], [ false, %65 ], [ true, %97 ]
  br i1 %112, label %113, label %117, !prof !209

113:                                              ; preds = %107
  %114 = icmp sgt i32 %3, 0
  br i1 %114, label %115, label %156, !prof !199

115:                                              ; preds = %113
  %116 = zext nneg i32 %3 to i64
  br label %145

117:                                              ; preds = %107
  %118 = load ptr, ptr %11, align 8, !tbaa !210
  %119 = icmp eq ptr %118, null
  br i1 %119, label %134, label %120, !prof !212

120:                                              ; preds = %117
  %121 = lshr i32 %111, 6
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !136
  %125 = and i32 %111, 63
  %126 = zext nneg i32 %125 to i64
  %127 = shl nuw i64 1, %126
  %128 = and i64 %124, %127
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = getelementptr inbounds i8, ptr %118, i64 %122
  %132 = load i8, ptr %131, align 1, !tbaa !102
  %133 = add i8 %132, 1
  store i8 %133, ptr %131, align 1, !tbaa !102
  br label %134

134:                                              ; preds = %117, %120, %130
  %135 = and i32 %111, 63
  %136 = zext nneg i32 %135 to i64
  %137 = shl nuw i64 1, %136
  %138 = lshr i32 %111, 6
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !136
  %142 = or i64 %141, %137
  store i64 %142, ptr %140, align 8, !tbaa !136
  %143 = lshr i64 %109, 1
  %144 = add i32 %111, 1
  br label %52, !llvm.loop !213

145:                                              ; preds = %115, %145
  %146 = phi i64 [ 0, %115 ], [ %154, %145 ]
  %147 = getelementptr inbounds i32, ptr %2, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !106
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %25, i64 %149
  %151 = trunc i64 %146 to i32
  store i32 %151, ptr %150, align 4, !tbaa !106
  %152 = trunc i64 %146 to i32
  %153 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %152) #21
  %154 = add nuw nsw i64 %146, 1
  %155 = icmp eq i64 %154, %116
  br i1 %155, label %156, label %145, !prof !214, !llvm.loop !215

156:                                              ; preds = %145, %113
  %157 = load ptr, ptr %0, align 8, !tbaa !115
  %158 = getelementptr inbounds %struct.df_problem, ptr %157, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !216
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161, !prof !217

161:                                              ; preds = %156
  tail call void %159(ptr noundef nonnull %1) #21, !prof !218
  br label %162

162:                                              ; preds = %161, %156
  %163 = load ptr, ptr %0, align 8, !tbaa !115
  %164 = getelementptr inbounds %struct.df_problem, ptr %163, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !197
  %166 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %167 = load ptr, ptr %5, align 8, !tbaa !132
  %168 = icmp eq ptr %167, null
  br i1 %168, label %420, label %169, !prof !219

169:                                              ; preds = %162
  %170 = icmp eq i32 %165, 1
  br label %171

171:                                              ; preds = %169, %417
  %172 = phi ptr [ %5, %169 ], [ %174, %417 ]
  %173 = phi i32 [ 0, %169 ], [ %177, %417 ]
  %174 = phi ptr [ %166, %169 ], [ %172, %417 ]
  br label %175

175:                                              ; preds = %171, %414
  %176 = phi i32 [ %177, %414 ], [ %173, %171 ]
  %177 = add nsw i32 %176, 1
  %178 = tail call i32 @bitmap_first_set_bit(ptr noundef nonnull %172) #21
  %179 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %172, i32 noundef %178) #21
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, ptr %2, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !106
  %183 = load ptr, ptr @cfun, align 8, !tbaa !91
  %184 = getelementptr inbounds %struct.function, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !141
  %186 = getelementptr inbounds %struct.control_flow_graph, ptr %185, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !143
  %188 = zext i32 %182 to i64
  %189 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %187, i64 0, i32 2, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !91
  br i1 %170, label %191, label %301, !prof !220

191:                                              ; preds = %175
  %192 = load ptr, ptr %190, align 8, !tbaa !221
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194, !prof !222

194:                                              ; preds = %191
  %195 = load i32, ptr %192, align 8, !tbaa !223
  br label %196

196:                                              ; preds = %194, %191
  %197 = phi i32 [ %195, %194 ], [ 0, %191 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %242, label %199, !prof !222

199:                                              ; preds = %196, %240
  %200 = phi i32 [ %241, %240 ], [ 0, %196 ]
  %201 = load ptr, ptr %190, align 8, !tbaa !91
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203, !prof !225

203:                                              ; preds = %199
  %204 = load i32, ptr %201, align 8, !tbaa !223
  br label %205

205:                                              ; preds = %203, %199
  %206 = phi i32 [ %204, %203 ], [ 0, %199 ]
  %207 = icmp eq i32 %206, %200
  br i1 %207, label %212, label %208, !prof !226

208:                                              ; preds = %205
  %209 = zext i32 %200 to i64
  %210 = getelementptr inbounds %struct.VEC_edge_base, ptr %201, i64 0, i32 2, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !91
  br label %212

212:                                              ; preds = %208, %205
  %213 = phi ptr [ %211, %208 ], [ null, %205 ]
  br i1 %207, label %248, label %214, !prof !226

214:                                              ; preds = %212
  %215 = load ptr, ptr %213, align 8, !tbaa !227
  %216 = getelementptr inbounds %struct.basic_block_def, ptr %215, i64 0, i32 9
  %217 = load i32, ptr %216, align 8, !tbaa !150
  %218 = lshr i32 %217, 6
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !136
  %222 = and i32 %217, 63
  %223 = zext nneg i32 %222 to i64
  %224 = shl nuw i64 1, %223
  %225 = and i64 %224, %221
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %231, label %227, !prof !229

227:                                              ; preds = %214
  %228 = load ptr, ptr %0, align 8, !tbaa !115
  %229 = getelementptr inbounds %struct.df_problem, ptr %228, i64 0, i32 9
  %230 = load ptr, ptr %229, align 8, !tbaa !230
  tail call void %230(ptr noundef nonnull %213) #21, !prof !231
  br label %231

231:                                              ; preds = %227, %214
  %232 = load ptr, ptr %190, align 8, !tbaa !91
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234, !prof !229

234:                                              ; preds = %231
  %235 = load i32, ptr %232, align 8, !tbaa !223
  br label %236

236:                                              ; preds = %234, %231
  %237 = phi i32 [ %235, %234 ], [ 0, %231 ]
  %238 = icmp ult i32 %200, %237
  br i1 %238, label %240, label %239, !prof !232

239:                                              ; preds = %236
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %240

240:                                              ; preds = %239, %236
  %241 = add i32 %200, 1
  br label %199, !llvm.loop !233

242:                                              ; preds = %196
  %243 = load ptr, ptr %0, align 8, !tbaa !115
  %244 = getelementptr inbounds %struct.df_problem, ptr %243, i64 0, i32 8
  %245 = load ptr, ptr %244, align 8, !tbaa !234
  %246 = icmp eq ptr %245, null
  br i1 %246, label %248, label %247, !prof !235

247:                                              ; preds = %242
  tail call void %245(ptr noundef nonnull %190) #21, !prof !236
  br label %248

248:                                              ; preds = %212, %247, %242
  %249 = load ptr, ptr %0, align 8, !tbaa !115
  %250 = getelementptr inbounds %struct.df_problem, ptr %249, i64 0, i32 10
  %251 = load ptr, ptr %250, align 8, !tbaa !237
  %252 = tail call zeroext i8 %251(i32 noundef %182) #21, !prof !238
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %414, label %254, !prof !239

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %190, i64 0, i32 1
  br label %256

256:                                              ; preds = %299, %254
  %257 = phi i32 [ 0, %254 ], [ %300, %299 ]
  %258 = load ptr, ptr %255, align 8, !tbaa !91
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260, !prof !240

260:                                              ; preds = %256
  %261 = load i32, ptr %258, align 8, !tbaa !223
  br label %262

262:                                              ; preds = %260, %256
  %263 = phi i32 [ %261, %260 ], [ 0, %256 ]
  %264 = icmp eq i32 %263, %257
  br i1 %264, label %269, label %265, !prof !241

265:                                              ; preds = %262
  %266 = zext i32 %257 to i64
  %267 = getelementptr inbounds %struct.VEC_edge_base, ptr %258, i64 0, i32 2, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !91
  br label %269

269:                                              ; preds = %265, %262
  %270 = phi ptr [ %268, %265 ], [ null, %262 ]
  br i1 %264, label %414, label %271, !prof !241

271:                                              ; preds = %269
  %272 = getelementptr inbounds %struct.edge_def, ptr %270, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !242
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %273, i64 0, i32 9
  %275 = load i32, ptr %274, align 8, !tbaa !150
  %276 = lshr i32 %275, 6
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %277
  %279 = load i64, ptr %278, align 8, !tbaa !136
  %280 = and i32 %275, 63
  %281 = zext nneg i32 %280 to i64
  %282 = shl nuw i64 1, %281
  %283 = and i64 %282, %279
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %290, label %285, !prof !243

285:                                              ; preds = %271
  %286 = zext i32 %275 to i64
  %287 = getelementptr inbounds i32, ptr %25, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !106
  %289 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %174, i32 noundef %288) #21
  br label %290

290:                                              ; preds = %285, %271
  %291 = load ptr, ptr %255, align 8, !tbaa !91
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293, !prof !243

293:                                              ; preds = %290
  %294 = load i32, ptr %291, align 8, !tbaa !223
  br label %295

295:                                              ; preds = %293, %290
  %296 = phi i32 [ %294, %293 ], [ 0, %290 ]
  %297 = icmp ult i32 %257, %296
  br i1 %297, label %299, label %298, !prof !244

298:                                              ; preds = %295
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %299

299:                                              ; preds = %298, %295
  %300 = add i32 %257, 1
  br label %256, !llvm.loop !245

301:                                              ; preds = %175
  %302 = getelementptr inbounds %struct.basic_block_def, ptr %190, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !246
  %304 = icmp eq ptr %303, null
  br i1 %304, label %307, label %305, !prof !247

305:                                              ; preds = %301
  %306 = load i32, ptr %303, align 8, !tbaa !223
  br label %307

307:                                              ; preds = %305, %301
  %308 = phi i32 [ %306, %305 ], [ 0, %301 ]
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %354, label %310, !prof !248

310:                                              ; preds = %307, %352
  %311 = phi i32 [ %353, %352 ], [ 0, %307 ]
  %312 = load ptr, ptr %302, align 8, !tbaa !91
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314, !prof !249

314:                                              ; preds = %310
  %315 = load i32, ptr %312, align 8, !tbaa !223
  br label %316

316:                                              ; preds = %314, %310
  %317 = phi i32 [ %315, %314 ], [ 0, %310 ]
  %318 = icmp eq i32 %317, %311
  br i1 %318, label %323, label %319, !prof !250

319:                                              ; preds = %316
  %320 = zext i32 %311 to i64
  %321 = getelementptr inbounds %struct.VEC_edge_base, ptr %312, i64 0, i32 2, i64 %320
  %322 = load ptr, ptr %321, align 8, !tbaa !91
  br label %323

323:                                              ; preds = %319, %316
  %324 = phi ptr [ %322, %319 ], [ null, %316 ]
  br i1 %318, label %360, label %325, !prof !250

325:                                              ; preds = %323
  %326 = getelementptr inbounds %struct.edge_def, ptr %324, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !242
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 9
  %329 = load i32, ptr %328, align 8, !tbaa !150
  %330 = lshr i32 %329, 6
  %331 = zext nneg i32 %330 to i64
  %332 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %331
  %333 = load i64, ptr %332, align 8, !tbaa !136
  %334 = and i32 %329, 63
  %335 = zext nneg i32 %334 to i64
  %336 = shl nuw i64 1, %335
  %337 = and i64 %336, %333
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %343, label %339, !prof !251

339:                                              ; preds = %325
  %340 = load ptr, ptr %0, align 8, !tbaa !115
  %341 = getelementptr inbounds %struct.df_problem, ptr %340, i64 0, i32 9
  %342 = load ptr, ptr %341, align 8, !tbaa !230
  tail call void %342(ptr noundef %324) #21, !prof !252
  br label %343

343:                                              ; preds = %339, %325
  %344 = load ptr, ptr %302, align 8, !tbaa !91
  %345 = icmp eq ptr %344, null
  br i1 %345, label %348, label %346, !prof !251

346:                                              ; preds = %343
  %347 = load i32, ptr %344, align 8, !tbaa !223
  br label %348

348:                                              ; preds = %346, %343
  %349 = phi i32 [ %347, %346 ], [ 0, %343 ]
  %350 = icmp ult i32 %311, %349
  br i1 %350, label %352, label %351, !prof !253

351:                                              ; preds = %348
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %352

352:                                              ; preds = %351, %348
  %353 = add i32 %311, 1
  br label %310, !llvm.loop !254

354:                                              ; preds = %307
  %355 = load ptr, ptr %0, align 8, !tbaa !115
  %356 = getelementptr inbounds %struct.df_problem, ptr %355, i64 0, i32 8
  %357 = load ptr, ptr %356, align 8, !tbaa !234
  %358 = icmp eq ptr %357, null
  br i1 %358, label %360, label %359, !prof !255

359:                                              ; preds = %354
  tail call void %357(ptr noundef %190) #21, !prof !256
  br label %360

360:                                              ; preds = %323, %359, %354
  %361 = load ptr, ptr %0, align 8, !tbaa !115
  %362 = getelementptr inbounds %struct.df_problem, ptr %361, i64 0, i32 10
  %363 = load ptr, ptr %362, align 8, !tbaa !237
  %364 = tail call zeroext i8 %363(i32 noundef %182) #21, !prof !257
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %414, label %366, !prof !258

366:                                              ; preds = %360
  %367 = icmp eq ptr %190, null
  br label %368

368:                                              ; preds = %366, %412
  %369 = phi i32 [ %413, %412 ], [ 0, %366 ]
  br i1 %367, label %370, label %371, !prof !259

370:                                              ; preds = %368
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 687, ptr noundef nonnull @.str.4) #21
  br label %371

371:                                              ; preds = %370, %368
  %372 = load ptr, ptr %190, align 8, !tbaa !91
  %373 = icmp eq ptr %372, null
  br i1 %373, label %376, label %374, !prof !260

374:                                              ; preds = %371
  %375 = load i32, ptr %372, align 8, !tbaa !223
  br label %376

376:                                              ; preds = %374, %371
  %377 = phi i32 [ %375, %374 ], [ 0, %371 ]
  %378 = icmp eq i32 %377, %369
  br i1 %378, label %383, label %379, !prof !261

379:                                              ; preds = %376
  %380 = zext i32 %369 to i64
  %381 = getelementptr inbounds %struct.VEC_edge_base, ptr %372, i64 0, i32 2, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !91
  br label %383

383:                                              ; preds = %379, %376
  %384 = phi ptr [ %382, %379 ], [ null, %376 ]
  br i1 %378, label %414, label %385, !prof !261

385:                                              ; preds = %383
  %386 = load ptr, ptr %384, align 8, !tbaa !227
  %387 = getelementptr inbounds %struct.basic_block_def, ptr %386, i64 0, i32 9
  %388 = load i32, ptr %387, align 8, !tbaa !150
  %389 = lshr i32 %388, 6
  %390 = zext nneg i32 %389 to i64
  %391 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %390
  %392 = load i64, ptr %391, align 8, !tbaa !136
  %393 = and i32 %388, 63
  %394 = zext nneg i32 %393 to i64
  %395 = shl nuw i64 1, %394
  %396 = and i64 %395, %392
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %403, label %398, !prof !262

398:                                              ; preds = %385
  %399 = zext i32 %388 to i64
  %400 = getelementptr inbounds i32, ptr %25, i64 %399
  %401 = load i32, ptr %400, align 4, !tbaa !106
  %402 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %174, i32 noundef %401) #21
  br label %403

403:                                              ; preds = %398, %385
  %404 = load ptr, ptr %190, align 8, !tbaa !91
  %405 = icmp eq ptr %404, null
  br i1 %405, label %408, label %406, !prof !262

406:                                              ; preds = %403
  %407 = load i32, ptr %404, align 8, !tbaa !223
  br label %408

408:                                              ; preds = %406, %403
  %409 = phi i32 [ %407, %406 ], [ 0, %403 ]
  %410 = icmp ult i32 %369, %409
  br i1 %410, label %412, label %411, !prof !263

411:                                              ; preds = %408
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %412

412:                                              ; preds = %411, %408
  %413 = add i32 %369, 1
  br label %368, !llvm.loop !264

414:                                              ; preds = %383, %269, %360, %248
  %415 = load ptr, ptr %172, align 8, !tbaa !132
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %175, !prof !265, !llvm.loop !266

417:                                              ; preds = %414
  %418 = load ptr, ptr %174, align 8, !tbaa !132
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %171, !prof !267, !llvm.loop !268

420:                                              ; preds = %417, %162
  %421 = phi ptr [ %166, %162 ], [ %172, %417 ]
  %422 = phi i32 [ 0, %162 ], [ %177, %417 ]
  %423 = phi ptr [ %5, %162 ], [ %174, %417 ]
  tail call void @bitmap_obstack_free(ptr noundef %421) #21
  tail call void @bitmap_obstack_free(ptr noundef nonnull %423) #21
  %424 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %425 = icmp eq ptr %424, null
  br i1 %425, label %439, label %426, !prof !269

426:                                              ; preds = %420
  %427 = load ptr, ptr @cfun, align 8, !tbaa !91
  %428 = getelementptr inbounds %struct.function, ptr %427, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !141
  %430 = getelementptr inbounds %struct.control_flow_graph, ptr %429, i64 0, i32 3
  %431 = load i32, ptr %430, align 8, !tbaa !270
  %432 = getelementptr inbounds %struct.control_flow_graph, ptr %429, i64 0, i32 4
  %433 = load i32, ptr %432, align 4, !tbaa !271
  %434 = sitofp i32 %422 to float
  %435 = sitofp i32 %431 to float
  %436 = fdiv float %434, %435
  %437 = fpext float %436 to double
  %438 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %424, ptr noundef nonnull @.str.35, i32 noundef %431, i32 noundef %433, i32 noundef %422, double noundef %437)
  br label %439

439:                                              ; preds = %420, %426
  %440 = load ptr, ptr %11, align 8, !tbaa !210
  tail call void @free(ptr noundef %440)
  tail call void @free(ptr noundef %11)
  tail call void @free(ptr noundef %25)
  ret void
}

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @df_analyze_problem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #8 !prof !90 {
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !102
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !272

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.df_problem, ptr %8, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !273
  tail call void @timevar_push_1(i32 noundef %10) #21
  br label %11

11:                                               ; preds = %4, %7
  %12 = load ptr, ptr %0, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.df_problem, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !274
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !275

16:                                               ; preds = %11
  tail call void %14(ptr noundef %1) #21, !prof !276
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr %0, align 8, !tbaa !115
  %19 = getelementptr inbounds %struct.df_problem, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !277
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !278

22:                                               ; preds = %17
  tail call void %20(ptr noundef %1) #21, !prof !279
  br label %23

23:                                               ; preds = %22, %17
  %24 = load ptr, ptr %0, align 8, !tbaa !115
  %25 = getelementptr inbounds %struct.df_problem, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !280
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !281

28:                                               ; preds = %23
  tail call void %26(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #21, !prof !282
  br label %29

29:                                               ; preds = %28, %23
  %30 = load ptr, ptr %0, align 8, !tbaa !115
  %31 = getelementptr inbounds %struct.df_problem, ptr %30, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !283
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !284

34:                                               ; preds = %29
  tail call void %32(ptr noundef %1) #21, !prof !285
  br label %35

35:                                               ; preds = %29, %34
  %36 = load i8, ptr @timevar_enable, align 1, !tbaa !102
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38, !prof !272

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !115
  %40 = getelementptr inbounds %struct.df_problem, ptr %39, i64 0, i32 20
  %41 = load i32, ptr %40, align 8, !tbaa !273
  tail call void @timevar_pop_1(i32 noundef %41) #21
  br label %42

42:                                               ; preds = %35, %38
  %43 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 7
  store i8 1, ptr %43, align 4, !tbaa !117
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @df_analyze() local_unnamed_addr #8 !prof !286 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !287

6:                                                ; preds = %0
  tail call void @free(ptr noundef %4)
  br label %7

7:                                                ; preds = %6, %0
  %8 = load ptr, ptr @df, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !186
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !287

12:                                               ; preds = %7
  tail call void @free(ptr noundef %10)
  br label %13

13:                                               ; preds = %12, %7
  %14 = load ptr, ptr @cfun, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !184
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr @xmalloc(i64 noundef %20) #21
  %22 = load ptr, ptr @df, align 8, !tbaa !91
  %23 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 21
  store ptr %21, ptr %23, align 8, !tbaa !185
  %24 = load ptr, ptr @cfun, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !141
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !184
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr @xmalloc(i64 noundef %30) #21
  %32 = load ptr, ptr @df, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 22
  store ptr %31, ptr %33, align 8, !tbaa !186
  %34 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 21
  %35 = load ptr, ptr %34, align 8, !tbaa !185
  %36 = tail call i32 @post_order_compute(ptr noundef %35, i8 noundef zeroext 1, i8 noundef zeroext 1) #21
  %37 = load ptr, ptr @df, align 8, !tbaa !91
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 23
  store i32 %36, ptr %38, align 8, !tbaa !187
  %39 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 22
  %40 = load ptr, ptr %39, align 8, !tbaa !186
  %41 = tail call i32 @inverted_post_order_compute(ptr noundef %40) #21
  %42 = load ptr, ptr @df, align 8, !tbaa !91
  %43 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 24
  store i32 %41, ptr %43, align 4, !tbaa !188
  %44 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 23
  %45 = load i32, ptr %44, align 8, !tbaa !187
  %46 = icmp eq i32 %45, %41
  br i1 %46, label %48, label %47, !prof !288

47:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1139, ptr noundef nonnull @.str.4) #21
  br label %48

48:                                               ; preds = %13, %47
  tail call void @df_compute_regs_ever_live(i8 noundef zeroext 0) #21
  tail call void @df_process_deferred_rescans() #21
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !288

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr nonnull %49)
  br label %53

53:                                               ; preds = %51, %48
  %54 = load ptr, ptr @df, align 8, !tbaa !91
  %55 = getelementptr inbounds %struct.df, ptr %54, i64 0, i32 27
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 64
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59, !prof !288

59:                                               ; preds = %53
  tail call void @df_scan_verify() #21
  br label %60

60:                                               ; preds = %59, %53
  %61 = load ptr, ptr @df, align 8, !tbaa !91
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 23
  %63 = load i32, ptr %62, align 8, !tbaa !187
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %79, !prof !289

65:                                               ; preds = %60, %65
  %66 = phi i64 [ %73, %65 ], [ 0, %60 ]
  %67 = phi ptr [ %74, %65 ], [ %61, %60 ]
  %68 = getelementptr inbounds %struct.df, ptr %67, i64 0, i32 21
  %69 = load ptr, ptr %68, align 8, !tbaa !185
  %70 = getelementptr inbounds i32, ptr %69, i64 %66
  %71 = load i32, ptr %70, align 4, !tbaa !106
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %71) #21
  %73 = add nuw nsw i64 %66, 1
  %74 = load ptr, ptr @df, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 23
  %76 = load i32, ptr %75, align 8, !tbaa !187
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %65, label %79, !prof !290, !llvm.loop !291

79:                                               ; preds = %65, %60
  %80 = phi ptr [ %61, %60 ], [ %74, %65 ]
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 28
  %82 = load i8, ptr %81, align 1, !tbaa !154
  %83 = icmp eq i8 %82, 0
  %84 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 2
  br i1 %83, label %146, label %85, !prof !288

85:                                               ; preds = %79
  %86 = load ptr, ptr %84, align 8, !tbaa !128
  tail call void @bitmap_and_into(ptr noundef %86, ptr noundef %1) #21
  %87 = load ptr, ptr @df, align 8, !tbaa !91
  %88 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 21
  %89 = load ptr, ptr %88, align 8, !tbaa !185
  %90 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 23
  %91 = load i32, ptr %90, align 8, !tbaa !187
  %92 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !128
  %94 = icmp eq i32 %91, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %85
  %96 = zext i32 %91 to i64
  br label %97

97:                                               ; preds = %95, %109
  %98 = phi i64 [ 0, %95 ], [ %111, %109 ]
  %99 = phi i32 [ 0, %95 ], [ %110, %109 ]
  %100 = getelementptr inbounds i32, ptr %89, i64 %98
  %101 = load i32, ptr %100, align 4, !tbaa !106
  %102 = tail call i32 @bitmap_bit_p(ptr noundef %93, i32 noundef %101) #21
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %97
  %105 = load i32, ptr %100, align 4, !tbaa !106
  %106 = add i32 %99, 1
  %107 = zext i32 %99 to i64
  %108 = getelementptr inbounds i32, ptr %89, i64 %107
  store i32 %105, ptr %108, align 4, !tbaa !106
  br label %109

109:                                              ; preds = %104, %97
  %110 = phi i32 [ %106, %104 ], [ %99, %97 ]
  %111 = add nuw nsw i64 %98, 1
  %112 = icmp eq i64 %111, %96
  br i1 %112, label %113, label %97, !llvm.loop !292

113:                                              ; preds = %109, %85
  %114 = phi i32 [ 0, %85 ], [ %110, %109 ]
  %115 = load ptr, ptr @df, align 8, !tbaa !91
  %116 = getelementptr inbounds %struct.df, ptr %115, i64 0, i32 23
  store i32 %114, ptr %116, align 8, !tbaa !187
  %117 = getelementptr inbounds %struct.df, ptr %115, i64 0, i32 22
  %118 = load ptr, ptr %117, align 8, !tbaa !186
  %119 = getelementptr inbounds %struct.df, ptr %115, i64 0, i32 24
  %120 = load i32, ptr %119, align 4, !tbaa !188
  %121 = getelementptr inbounds %struct.df, ptr %115, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !128
  %123 = icmp eq i32 %120, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %113
  %125 = zext i32 %120 to i64
  br label %126

126:                                              ; preds = %124, %138
  %127 = phi i64 [ 0, %124 ], [ %140, %138 ]
  %128 = phi i32 [ 0, %124 ], [ %139, %138 ]
  %129 = getelementptr inbounds i32, ptr %118, i64 %127
  %130 = load i32, ptr %129, align 4, !tbaa !106
  %131 = tail call i32 @bitmap_bit_p(ptr noundef %122, i32 noundef %130) #21
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %126
  %134 = load i32, ptr %129, align 4, !tbaa !106
  %135 = add i32 %128, 1
  %136 = zext i32 %128 to i64
  %137 = getelementptr inbounds i32, ptr %118, i64 %136
  store i32 %134, ptr %137, align 4, !tbaa !106
  br label %138

138:                                              ; preds = %133, %126
  %139 = phi i32 [ %135, %133 ], [ %128, %126 ]
  %140 = add nuw nsw i64 %127, 1
  %141 = icmp eq i64 %140, %125
  br i1 %141, label %142, label %126, !llvm.loop !292

142:                                              ; preds = %138, %113
  %143 = phi i32 [ 0, %113 ], [ %139, %138 ]
  %144 = load ptr, ptr @df, align 8, !tbaa !91
  %145 = getelementptr inbounds %struct.df, ptr %144, i64 0, i32 24
  store i32 %143, ptr %145, align 4, !tbaa !188
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  br label %147

146:                                              ; preds = %79
  store ptr %1, ptr %84, align 8, !tbaa !128
  br label %147

147:                                              ; preds = %146, %142
  %148 = load ptr, ptr @df, align 8, !tbaa !91
  %149 = getelementptr inbounds %struct.df, ptr %148, i64 0, i32 12
  %150 = load i32, ptr %149, align 4, !tbaa !119
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %252, !prof !289

152:                                              ; preds = %147, %245
  %153 = phi i64 [ %246, %245 ], [ 1, %147 ]
  %154 = phi ptr [ %247, %245 ], [ %148, %147 ]
  %155 = getelementptr inbounds [8 x ptr], ptr %154, i64 0, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !91
  %157 = getelementptr inbounds %struct.dataflow, ptr %156, i64 0, i32 8
  %158 = load i8, ptr %157, align 1, !tbaa !118
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %245, label %160, !prof !293

160:                                              ; preds = %152
  %161 = load ptr, ptr %156, align 8, !tbaa !115
  %162 = getelementptr inbounds %struct.df_problem, ptr %161, i64 0, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !197
  %164 = icmp eq i32 %163, 1
  %165 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !128
  %167 = load i8, ptr @timevar_enable, align 1, !tbaa !102
  %168 = icmp eq i8 %167, 0
  br i1 %164, label %169, label %204, !prof !294

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 22
  %171 = load ptr, ptr %170, align 8, !tbaa !186
  %172 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 24
  %173 = load i32, ptr %172, align 4, !tbaa !188
  br i1 %168, label %177, label %174, !prof !272

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.df_problem, ptr %161, i64 0, i32 20
  %176 = load i32, ptr %175, align 8, !tbaa !273
  tail call void @timevar_push_1(i32 noundef %176) #21
  br label %177

177:                                              ; preds = %174, %169
  %178 = load ptr, ptr %156, align 8, !tbaa !115
  %179 = getelementptr inbounds %struct.df_problem, ptr %178, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !274
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182, !prof !275

182:                                              ; preds = %177
  tail call void %180(ptr noundef %166) #21, !prof !295
  br label %183

183:                                              ; preds = %182, %177
  %184 = load ptr, ptr %156, align 8, !tbaa !115
  %185 = getelementptr inbounds %struct.df_problem, ptr %184, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !277
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188, !prof !278

188:                                              ; preds = %183
  tail call void %186(ptr noundef %166) #21, !prof !296
  br label %189

189:                                              ; preds = %188, %183
  %190 = load ptr, ptr %156, align 8, !tbaa !115
  %191 = getelementptr inbounds %struct.df_problem, ptr %190, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !280
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194, !prof !281

194:                                              ; preds = %189
  tail call void %192(ptr noundef nonnull %156, ptr noundef %166, ptr noundef %171, i32 noundef %173) #21, !prof !297
  br label %195

195:                                              ; preds = %194, %189
  %196 = load ptr, ptr %156, align 8, !tbaa !115
  %197 = getelementptr inbounds %struct.df_problem, ptr %196, i64 0, i32 11
  %198 = load ptr, ptr %197, align 8, !tbaa !283
  %199 = icmp eq ptr %198, null
  br i1 %199, label %201, label %200, !prof !284

200:                                              ; preds = %195
  tail call void %198(ptr noundef %166) #21, !prof !298
  br label %201

201:                                              ; preds = %200, %195
  %202 = load i8, ptr @timevar_enable, align 1, !tbaa !102
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %243, label %239, !prof !272

204:                                              ; preds = %160
  %205 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 21
  %206 = load ptr, ptr %205, align 8, !tbaa !185
  %207 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 23
  %208 = load i32, ptr %207, align 8, !tbaa !187
  br i1 %168, label %212, label %209, !prof !272

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.df_problem, ptr %161, i64 0, i32 20
  %211 = load i32, ptr %210, align 8, !tbaa !273
  tail call void @timevar_push_1(i32 noundef %211) #21
  br label %212

212:                                              ; preds = %209, %204
  %213 = load ptr, ptr %156, align 8, !tbaa !115
  %214 = getelementptr inbounds %struct.df_problem, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !274
  %216 = icmp eq ptr %215, null
  br i1 %216, label %218, label %217, !prof !275

217:                                              ; preds = %212
  tail call void %215(ptr noundef %166) #21, !prof !299
  br label %218

218:                                              ; preds = %217, %212
  %219 = load ptr, ptr %156, align 8, !tbaa !115
  %220 = getelementptr inbounds %struct.df_problem, ptr %219, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !277
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223, !prof !278

223:                                              ; preds = %218
  tail call void %221(ptr noundef %166) #21, !prof !300
  br label %224

224:                                              ; preds = %223, %218
  %225 = load ptr, ptr %156, align 8, !tbaa !115
  %226 = getelementptr inbounds %struct.df_problem, ptr %225, i64 0, i32 7
  %227 = load ptr, ptr %226, align 8, !tbaa !280
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229, !prof !281

229:                                              ; preds = %224
  tail call void %227(ptr noundef nonnull %156, ptr noundef %166, ptr noundef %206, i32 noundef %208) #21, !prof !301
  br label %230

230:                                              ; preds = %229, %224
  %231 = load ptr, ptr %156, align 8, !tbaa !115
  %232 = getelementptr inbounds %struct.df_problem, ptr %231, i64 0, i32 11
  %233 = load ptr, ptr %232, align 8, !tbaa !283
  %234 = icmp eq ptr %233, null
  br i1 %234, label %236, label %235, !prof !284

235:                                              ; preds = %230
  tail call void %233(ptr noundef %166) #21, !prof !302
  br label %236

236:                                              ; preds = %235, %230
  %237 = load i8, ptr @timevar_enable, align 1, !tbaa !102
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %243, label %239, !prof !272

239:                                              ; preds = %236, %201
  %240 = load ptr, ptr %156, align 8, !tbaa !115
  %241 = getelementptr inbounds %struct.df_problem, ptr %240, i64 0, i32 20
  %242 = load i32, ptr %241, align 8, !tbaa !273
  tail call void @timevar_pop_1(i32 noundef %242) #21
  br label %243

243:                                              ; preds = %239, %236, %201
  %244 = getelementptr inbounds %struct.dataflow, ptr %156, i64 0, i32 7
  store i8 1, ptr %244, align 4, !tbaa !117
  br label %245

245:                                              ; preds = %243, %152
  %246 = add nuw nsw i64 %153, 1
  %247 = load ptr, ptr @df, align 8, !tbaa !91
  %248 = getelementptr inbounds %struct.df, ptr %247, i64 0, i32 12
  %249 = load i32, ptr %248, align 4, !tbaa !119
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %246, %250
  br i1 %251, label %152, label %252, !prof !303, !llvm.loop !304

252:                                              ; preds = %245, %147
  %253 = phi ptr [ %148, %147 ], [ %247, %245 ]
  br i1 %83, label %254, label %259, !prof !288

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.df, ptr %253, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !128
  tail call void @bitmap_obstack_free(ptr noundef %256) #21
  %257 = load ptr, ptr @df, align 8, !tbaa !91
  %258 = getelementptr inbounds %struct.df, ptr %257, i64 0, i32 2
  store ptr null, ptr %258, align 8, !tbaa !128
  br label %259

259:                                              ; preds = %254, %252
  ret void
}

declare i32 @post_order_compute(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @inverted_post_order_compute(ptr noundef) local_unnamed_addr #3

declare void @df_compute_regs_ever_live(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_verify() local_unnamed_addr #10 !prof !90 {
  tail call void @df_scan_verify() #21
  ret void
}

declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @df_get_n_blocks(i32 noundef %0) local_unnamed_addr #8 !prof !305 {
  switch i32 %0, label %12 [
    i32 0, label %2
    i32 1, label %3
  ], !prof !306

2:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1220, ptr noundef nonnull @.str.4) #21
  br label %12

3:                                                ; preds = %1
  %4 = load ptr, ptr @df, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1224, ptr noundef nonnull @.str.4) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr @df, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 24
  br label %21

12:                                               ; preds = %2, %1
  %13 = load ptr, ptr @df, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !307

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1228, ptr noundef nonnull @.str.4) #21
  br label %18

18:                                               ; preds = %12, %17
  %19 = load ptr, ptr @df, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 23
  br label %21

21:                                               ; preds = %18, %9
  %22 = phi ptr [ %11, %9 ], [ %20, %18 ]
  %23 = load i32, ptr %22, align 4, !tbaa !106
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local ptr @df_get_postorder(i32 noundef %0) local_unnamed_addr #8 !prof !305 {
  switch i32 %0, label %12 [
    i32 0, label %2
    i32 1, label %3
  ], !prof !306

2:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1240, ptr noundef nonnull @.str.4) #21
  br label %12

3:                                                ; preds = %1
  %4 = load ptr, ptr @df, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1244, ptr noundef nonnull @.str.4) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr @df, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 22
  br label %21

12:                                               ; preds = %2, %1
  %13 = load ptr, ptr @df, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !307

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1247, ptr noundef nonnull @.str.4) #21
  br label %18

18:                                               ; preds = %12, %17
  %19 = load ptr, ptr @df, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 21
  br label %21

21:                                               ; preds = %18, %9
  %22 = phi ptr [ %11, %9 ], [ %20, %18 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  ret ptr %23
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_simple_dataflow(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) local_unnamed_addr #10 !prof !308 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @user_problem, i8 0, i64 160, i1 false)
  store i32 %0, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 1), align 4, !tbaa !197
  store ptr %1, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 6), align 8, !tbaa !216
  store ptr %2, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 8), align 8, !tbaa !234
  store ptr %3, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 9), align 8, !tbaa !230
  store ptr %4, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 10), align 8, !tbaa !237
  store ptr @user_problem, ptr @user_dflow, align 8, !tbaa !115
  tail call void @df_worklist_dataflow(ptr noundef nonnull @user_dflow, ptr noundef %5, ptr noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @df_get_bb_dirty(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !309 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !310

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !311

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !312
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !150
  %13 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %12) #21
  %14 = trunc i32 %13 to i8
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i8 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i8 %16
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_set_bb_dirty(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !313 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = icmp eq ptr %2, null
  br i1 %3, label %44, label %4, !prof !314

4:                                                ; preds = %1
  %5 = load ptr, ptr @df, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !119
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %29, !prof !315

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi i64 [ 1, %9 ], [ %23, %22 ]
  %13 = phi ptr [ %5, %9 ], [ %24, %22 ]
  %14 = getelementptr inbounds [8 x ptr], ptr %13, i64 0, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !312
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !316

19:                                               ; preds = %11
  %20 = load i32, ptr %10, align 8, !tbaa !150
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %17, i32 noundef %20) #21
  br label %22

22:                                               ; preds = %19, %11
  %23 = add nuw nsw i64 %12, 1
  %24 = load ptr, ptr @df, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !119
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %11, label %29, !prof !317, !llvm.loop !318

29:                                               ; preds = %22, %4
  %30 = phi ptr [ %5, %4 ], [ %24, %22 ]
  %31 = phi i32 [ %7, %4 ], [ %26, %22 ]
  %32 = icmp ne ptr %30, null
  %33 = icmp sgt i32 %31, 1
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %44, !prof !319

35:                                               ; preds = %29
  %36 = zext i32 %31 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 1, %35 ], [ %42, %37 ]
  %39 = getelementptr inbounds [8 x ptr], ptr %30, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 8
  store i8 1, ptr %41, align 1, !tbaa !118
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, %36
  br i1 %43, label %44, label %37, !prof !320, !llvm.loop !155

44:                                               ; preds = %37, %29, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_set_bb_dirty_nonlr(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !90 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @df, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !119
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  br label %11

11:                                               ; preds = %9, %28
  %12 = phi i64 [ 1, %9 ], [ %29, %28 ]
  %13 = phi ptr [ %5, %9 ], [ %30, %28 ]
  %14 = getelementptr inbounds [8 x ptr], ptr %13, i64 0, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 1, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !312
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %10, align 8, !tbaa !150
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %21, i32 noundef %24) #21
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 8
  store i8 1, ptr %27, align 1, !tbaa !118
  br label %28

28:                                               ; preds = %11, %26
  %29 = add nuw nsw i64 %12, 1
  %30 = load ptr, ptr @df, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.df, ptr %30, i64 0, i32 12
  %32 = load i32, ptr %31, align 4, !tbaa !119
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %11, label %35, !llvm.loop !321

35:                                               ; preds = %28, %4, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @df_compact_blocks() local_unnamed_addr #8 !prof !322 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !184
  %6 = shl i32 %5, 3
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %8 = sext i32 %6 to i64
  %9 = tail call ptr @xmalloc(i64 noundef %8) #21
  %10 = load ptr, ptr @df, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !119
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %159, !prof !323

14:                                               ; preds = %0, %152
  %15 = phi i64 [ %153, %152 ], [ 0, %0 ]
  %16 = phi ptr [ %154, %152 ], [ %10, %0 ]
  %17 = getelementptr inbounds [8 x ptr], ptr %16, i64 0, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !312
  %21 = icmp eq ptr %20, null
  br i1 %21, label %65, label %22, !prof !324

22:                                               ; preds = %14
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef nonnull %20) #21
  %23 = load ptr, ptr %19, align 8, !tbaa !312
  tail call void @bitmap_clear(ptr noundef %23) #21
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef 0) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !325

26:                                               ; preds = %22
  %27 = load ptr, ptr %19, align 8, !tbaa !312
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %27, i32 noundef 0) #21
  br label %29

29:                                               ; preds = %26, %22
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef 1) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !325

32:                                               ; preds = %29
  %33 = load ptr, ptr %19, align 8, !tbaa !312
  %34 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef 1) #21
  br label %35

35:                                               ; preds = %32, %29
  %36 = load ptr, ptr @cfun, align 8, !tbaa !91
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !141
  %39 = load ptr, ptr %38, align 8, !tbaa !326
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !327
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !328
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %65, label %45, !prof !329

45:                                               ; preds = %35, %55
  %46 = phi ptr [ %58, %55 ], [ %41, %35 ]
  %47 = phi i32 [ %56, %55 ], [ 2, %35 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !150
  %50 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %49) #21
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52, !prof !330

52:                                               ; preds = %45
  %53 = load ptr, ptr %19, align 8, !tbaa !312
  %54 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %53, i32 noundef %47) #21
  br label %55

55:                                               ; preds = %52, %45
  %56 = add nuw nsw i32 %47, 1
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !327
  %59 = load ptr, ptr @cfun, align 8, !tbaa !91
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !141
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !328
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %65, label %45, !prof !331, !llvm.loop !332

65:                                               ; preds = %55, %35, %14
  %66 = load ptr, ptr %18, align 8, !tbaa !115
  %67 = getelementptr inbounds %struct.df_problem, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !147
  %69 = icmp eq ptr %68, null
  br i1 %69, label %152, label %70, !prof !333

70:                                               ; preds = %65
  tail call void @df_grow_bb_info(ptr noundef nonnull %18) #21
  %71 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !145
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %72, i64 %8, i1 false), !prof !334
  %73 = load ptr, ptr @cfun, align 8, !tbaa !91
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !141
  %76 = load ptr, ptr %75, align 8, !tbaa !326
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !327
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %75, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !328
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %110, label %82, !prof !335

82:                                               ; preds = %70, %93
  %83 = phi i64 [ %99, %93 ], [ 2, %70 ]
  %84 = phi ptr [ %101, %93 ], [ %78, %70 ]
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !150
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %9, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !91
  %90 = load ptr, ptr %71, align 8, !tbaa !145
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93, !prof !336

92:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1306, ptr noundef nonnull @.str.4) #21
  br label %93

93:                                               ; preds = %82, %92
  %94 = load ptr, ptr %71, align 8, !tbaa !145
  %95 = getelementptr inbounds ptr, ptr %94, i64 %83
  store ptr %89, ptr %95, align 8, !tbaa !91
  %96 = load i32, ptr %85, align 8, !tbaa !150
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %9, i64 %97
  store ptr null, ptr %98, align 8, !tbaa !91
  %99 = add nuw i64 %83, 1
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !327
  %102 = load ptr, ptr @cfun, align 8, !tbaa !91
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !141
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !328
  %107 = icmp eq ptr %101, %106
  br i1 %107, label %108, label %82, !prof !337, !llvm.loop !338

108:                                              ; preds = %93
  %109 = trunc i64 %99 to i32
  br label %110

110:                                              ; preds = %108, %70
  %111 = phi i32 [ 2, %70 ], [ %109, %108 ]
  %112 = phi ptr [ %75, %70 ], [ %104, %108 ]
  %113 = load ptr, ptr %71, align 8, !tbaa !145
  %114 = zext nneg i32 %111 to i64
  %115 = getelementptr inbounds ptr, ptr %113, i64 %114
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 5
  %117 = load i32, ptr %116, align 8, !tbaa !184
  %118 = sub nsw i32 %117, %111
  %119 = sext i32 %118 to i64
  %120 = shl nsw i64 %119, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %115, i8 0, i64 %120, i1 false), !prof !339
  %121 = load ptr, ptr @cfun, align 8, !tbaa !91
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !141
  %124 = getelementptr inbounds %struct.control_flow_graph, ptr %123, i64 0, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !184
  %126 = icmp sgt i32 %125, 2
  br i1 %126, label %127, label %152, !prof !340

127:                                              ; preds = %110, %143
  %128 = phi i64 [ %144, %143 ], [ 2, %110 ]
  %129 = phi ptr [ %147, %143 ], [ %123, %110 ]
  %130 = getelementptr inbounds %struct.control_flow_graph, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !143
  %132 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %131, i64 0, i32 2, i64 %128
  %133 = load ptr, ptr %132, align 8, !tbaa !91
  %134 = getelementptr inbounds ptr, ptr %9, i64 %128
  %135 = load ptr, ptr %134, align 8, !tbaa !91
  %136 = icmp ne ptr %135, null
  %137 = icmp ne ptr %133, null
  %138 = select i1 %136, i1 %137, i1 false, !prof !341
  br i1 %138, label %139, label %143, !prof !342

139:                                              ; preds = %127
  %140 = load ptr, ptr %18, align 8, !tbaa !115
  %141 = getelementptr inbounds %struct.df_problem, ptr %140, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !147
  tail call void %142(ptr noundef nonnull %133, ptr noundef nonnull %135) #21
  br label %143

143:                                              ; preds = %139, %127
  %144 = add nuw nsw i64 %128, 1
  %145 = load ptr, ptr @cfun, align 8, !tbaa !91
  %146 = getelementptr inbounds %struct.function, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !141
  %148 = getelementptr inbounds %struct.control_flow_graph, ptr %147, i64 0, i32 5
  %149 = load i32, ptr %148, align 8, !tbaa !184
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %144, %150
  br i1 %151, label %127, label %152, !prof !343, !llvm.loop !344

152:                                              ; preds = %143, %110, %65
  %153 = add nuw nsw i64 %15, 1
  %154 = load ptr, ptr @df, align 8, !tbaa !91
  %155 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 12
  %156 = load i32, ptr %155, align 4, !tbaa !119
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %153, %157
  br i1 %158, label %14, label %159, !prof !345, !llvm.loop !346

159:                                              ; preds = %152, %0
  %160 = phi ptr [ %10, %0 ], [ %154, %152 ]
  %161 = getelementptr inbounds %struct.df, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !128
  %163 = icmp eq ptr %162, null
  br i1 %163, label %218, label %164, !prof !347

164:                                              ; preds = %159
  %165 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef 0) #21
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr @df, align 8, !tbaa !91
  %169 = getelementptr inbounds %struct.df, ptr %168, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !128
  %171 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %170, i32 noundef 0) #21
  br label %172

172:                                              ; preds = %167, %164
  %173 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef 1) #21
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %172
  %176 = load ptr, ptr @df, align 8, !tbaa !91
  %177 = getelementptr inbounds %struct.df, ptr %176, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !128
  %179 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %178, i32 noundef 1) #21
  br label %180

180:                                              ; preds = %175, %172
  %181 = load ptr, ptr @df, align 8, !tbaa !91
  %182 = getelementptr inbounds %struct.df, ptr %181, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !128
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef %183) #21
  %184 = load ptr, ptr @df, align 8, !tbaa !91
  %185 = getelementptr inbounds %struct.df, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !128
  tail call void @bitmap_clear(ptr noundef %186) #21
  %187 = load ptr, ptr @cfun, align 8, !tbaa !91
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !141
  %190 = load ptr, ptr %189, align 8, !tbaa !326
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %190, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !327
  %193 = getelementptr inbounds %struct.control_flow_graph, ptr %189, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !328
  %195 = icmp eq ptr %192, %194
  br i1 %195, label %218, label %196

196:                                              ; preds = %180, %208
  %197 = phi ptr [ %211, %208 ], [ %192, %180 ]
  %198 = phi i32 [ %209, %208 ], [ 2, %180 ]
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %197, i64 0, i32 9
  %200 = load i32, ptr %199, align 8, !tbaa !150
  %201 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %200) #21
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %196
  %204 = load ptr, ptr @df, align 8, !tbaa !91
  %205 = getelementptr inbounds %struct.df, ptr %204, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !128
  %207 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %206, i32 noundef %198) #21
  br label %208

208:                                              ; preds = %203, %196
  %209 = add nuw nsw i32 %198, 1
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %197, i64 0, i32 6
  %211 = load ptr, ptr %210, align 8, !tbaa !327
  %212 = load ptr, ptr @cfun, align 8, !tbaa !91
  %213 = getelementptr inbounds %struct.function, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !141
  %215 = getelementptr inbounds %struct.control_flow_graph, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !328
  %217 = icmp eq ptr %211, %216
  br i1 %217, label %218, label %196, !llvm.loop !348

218:                                              ; preds = %208, %180, %159
  tail call void @bitmap_obstack_free(ptr noundef %7) #21
  tail call void @free(ptr noundef %9)
  %219 = load ptr, ptr @cfun, align 8, !tbaa !91
  %220 = getelementptr inbounds %struct.function, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !141
  %222 = load ptr, ptr %221, align 8, !tbaa !326
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %222, i64 0, i32 6
  %224 = load ptr, ptr %223, align 8, !tbaa !327
  %225 = getelementptr inbounds %struct.control_flow_graph, ptr %221, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !328
  %227 = icmp eq ptr %224, %226
  br i1 %227, label %248, label %228, !prof !349

228:                                              ; preds = %218, %228
  %229 = phi i64 [ %237, %228 ], [ 2, %218 ]
  %230 = phi ptr [ %242, %228 ], [ %221, %218 ]
  %231 = phi ptr [ %239, %228 ], [ %224, %218 ]
  %232 = getelementptr inbounds %struct.control_flow_graph, ptr %230, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !143
  %234 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %233, i64 0, i32 2, i64 %229
  store ptr %231, ptr %234, align 8, !tbaa !91
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 9
  %236 = trunc i64 %229 to i32
  store i32 %236, ptr %235, align 8, !tbaa !150
  %237 = add nuw i64 %229, 1
  %238 = getelementptr inbounds %struct.basic_block_def, ptr %231, i64 0, i32 6
  %239 = load ptr, ptr %238, align 8, !tbaa !327
  %240 = load ptr, ptr @cfun, align 8, !tbaa !91
  %241 = getelementptr inbounds %struct.function, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !141
  %243 = getelementptr inbounds %struct.control_flow_graph, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !328
  %245 = icmp eq ptr %239, %244
  br i1 %245, label %246, label %228, !prof !350, !llvm.loop !351

246:                                              ; preds = %228
  %247 = trunc i64 %237 to i32
  br label %248

248:                                              ; preds = %246, %218
  %249 = phi i32 [ 2, %218 ], [ %247, %246 ]
  %250 = phi ptr [ %221, %218 ], [ %242, %246 ]
  %251 = getelementptr inbounds %struct.control_flow_graph, ptr %250, i64 0, i32 3
  %252 = load i32, ptr %251, align 8, !tbaa !270
  %253 = icmp eq i32 %249, %252
  br i1 %253, label %255, label %254, !prof !347

254:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1493, ptr noundef nonnull @.str.4) #21
  br label %255

255:                                              ; preds = %248, %254
  %256 = load ptr, ptr @cfun, align 8, !tbaa !91
  %257 = getelementptr inbounds %struct.function, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !141
  %259 = getelementptr inbounds %struct.control_flow_graph, ptr %258, i64 0, i32 5
  %260 = load i32, ptr %259, align 8, !tbaa !184
  %261 = icmp slt i32 %249, %260
  br i1 %261, label %262, label %278, !prof !323

262:                                              ; preds = %255
  %263 = zext i32 %249 to i64
  br label %264

264:                                              ; preds = %262, %264
  %265 = phi i64 [ %263, %262 ], [ %270, %264 ]
  %266 = phi ptr [ %258, %262 ], [ %273, %264 ]
  %267 = getelementptr inbounds %struct.control_flow_graph, ptr %266, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !143
  %269 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %268, i64 0, i32 2, i64 %265
  store ptr null, ptr %269, align 8, !tbaa !91
  %270 = add nuw nsw i64 %265, 1
  %271 = load ptr, ptr @cfun, align 8, !tbaa !91
  %272 = getelementptr inbounds %struct.function, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !141
  %274 = getelementptr inbounds %struct.control_flow_graph, ptr %273, i64 0, i32 5
  %275 = load i32, ptr %274, align 8, !tbaa !184
  %276 = trunc i64 %270 to i32
  %277 = icmp sgt i32 %275, %276
  br i1 %277, label %264, label %278, !prof !352, !llvm.loop !353

278:                                              ; preds = %264, %255
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @df_grow_bb_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: cold nounwind uwtable
define dso_local void @df_bb_replace(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !354 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !150
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !163

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, i32 noundef %4, i32 noundef %0)
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @df, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !168

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1517, ptr noundef nonnull @.str.4) #21
  br label %13

13:                                               ; preds = %9, %12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  %19 = zext i32 %0 to i64
  %20 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %18, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !163

23:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1518, ptr noundef nonnull @.str.4) #21
  br label %24

24:                                               ; preds = %13, %23
  %25 = load ptr, ptr @df, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 12
  %27 = load i32, ptr %26, align 4, !tbaa !119
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %31, !prof !355

29:                                               ; preds = %24
  %30 = zext i32 %4 to i64
  br label %36

31:                                               ; preds = %74, %24
  %32 = load ptr, ptr @df, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !119
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %81, label %99, !prof !355

36:                                               ; preds = %29, %74
  %37 = phi i64 [ 0, %29 ], [ %75, %74 ]
  %38 = phi ptr [ %25, %29 ], [ %76, %74 ]
  %39 = getelementptr inbounds [8 x ptr], ptr %38, i64 0, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !145
  %43 = icmp eq ptr %42, null
  br i1 %43, label %74, label %44, !prof !356

44:                                               ; preds = %36
  tail call void @df_grow_bb_info(ptr noundef %40) #21
  %45 = load ptr, ptr %41, align 8, !tbaa !145
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47, !prof !356

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !146
  %50 = icmp ugt i32 %49, %0
  br i1 %50, label %51, label %54, !prof !357

51:                                               ; preds = %47
  %52 = getelementptr inbounds ptr, ptr %45, i64 %19
  %53 = load ptr, ptr %52, align 8, !tbaa !91
  br label %54

54:                                               ; preds = %44, %47, %51
  %55 = phi ptr [ %53, %51 ], [ null, %44 ], [ null, %47 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !357

57:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1526, ptr noundef nonnull @.str.4) #21
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %41, align 8, !tbaa !145
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61, !prof !356

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.dataflow, ptr %40, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !146
  %64 = icmp ugt i32 %63, %4
  br i1 %64, label %65, label %68, !prof !357

65:                                               ; preds = %61
  %66 = getelementptr inbounds ptr, ptr %59, i64 %30
  %67 = load ptr, ptr %66, align 8, !tbaa !91
  br label %68

68:                                               ; preds = %58, %61, %65
  %69 = phi ptr [ %67, %65 ], [ null, %58 ], [ null, %61 ]
  br i1 %60, label %70, label %71, !prof !356

70:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1306, ptr noundef nonnull @.str.4) #21
  br label %71

71:                                               ; preds = %68, %70
  %72 = load ptr, ptr %41, align 8, !tbaa !145
  %73 = getelementptr inbounds ptr, ptr %72, i64 %19
  store ptr %69, ptr %73, align 8, !tbaa !91
  br label %74

74:                                               ; preds = %71, %36
  %75 = add nuw nsw i64 %37, 1
  %76 = load ptr, ptr @df, align 8, !tbaa !91
  %77 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 12
  %78 = load i32, ptr %77, align 4, !tbaa !119
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %36, label %31, !prof !358, !llvm.loop !359

81:                                               ; preds = %31, %92
  %82 = phi i64 [ %93, %92 ], [ 1, %31 ]
  %83 = phi ptr [ %94, %92 ], [ %32, %31 ]
  %84 = getelementptr inbounds [8 x ptr], ptr %83, i64 0, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !91
  %86 = getelementptr inbounds %struct.dataflow, ptr %85, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !312
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89, !prof !360

89:                                               ; preds = %81
  %90 = load i32, ptr %3, align 8, !tbaa !150
  %91 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %87, i32 noundef %90) #21
  br label %92

92:                                               ; preds = %89, %81
  %93 = add nuw nsw i64 %82, 1
  %94 = load ptr, ptr @df, align 8, !tbaa !91
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 12
  %96 = load i32, ptr %95, align 4, !tbaa !119
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %81, label %99, !prof !361, !llvm.loop !362

99:                                               ; preds = %92, %31
  %100 = load ptr, ptr @cfun, align 8, !tbaa !91
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !141
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !143
  %105 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %104, i64 0, i32 2, i64 %19
  store ptr %1, ptr %105, align 8, !tbaa !91
  store i32 %0, ptr %3, align 8, !tbaa !150
  %106 = load ptr, ptr @cfun, align 8, !tbaa !91
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !141
  %109 = getelementptr inbounds %struct.control_flow_graph, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !143
  %111 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %110, i64 0, i32 2, i64 %19
  %112 = load ptr, ptr %111, align 8, !tbaa !91
  tail call void @df_set_bb_dirty(ptr noundef %112)
  %113 = load ptr, ptr @cfun, align 8, !tbaa !91
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !141
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !143
  %118 = zext i32 %4 to i64
  %119 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %117, i64 0, i32 2, i64 %118
  store ptr null, ptr %119, align 8, !tbaa !91
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @df_bb_delete(i32 noundef %0) local_unnamed_addr #15 !prof !363 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = load ptr, ptr @df, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %94, label %12, !prof !364

12:                                               ; preds = %1
  %13 = load ptr, ptr @df, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !119
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %24, label %17, !prof !365

17:                                               ; preds = %54, %12
  %18 = load ptr, ptr @df, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 12
  %20 = load i32, ptr %19, align 4, !tbaa !119
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %79, !prof !365

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  br label %61

24:                                               ; preds = %12, %54
  %25 = phi i64 [ %55, %54 ], [ 0, %12 ]
  %26 = phi ptr [ %56, %54 ], [ %13, %12 ]
  %27 = getelementptr inbounds [8 x ptr], ptr %26, i64 0, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  %30 = getelementptr inbounds %struct.df_problem, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33, !prof !366

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.dataflow, ptr %28, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !145
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !367

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dataflow, ptr %28, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !146
  %40 = icmp ugt i32 %39, %0
  br i1 %40, label %41, label %44, !prof !368

41:                                               ; preds = %37
  %42 = getelementptr inbounds ptr, ptr %35, i64 %7
  %43 = load ptr, ptr %42, align 8, !tbaa !91
  br label %44

44:                                               ; preds = %33, %37, %41
  %45 = phi ptr [ %43, %41 ], [ null, %33 ], [ null, %37 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47, !prof !369

47:                                               ; preds = %44
  tail call void %31(ptr noundef %9, ptr noundef nonnull %45) #21, !prof !370
  %48 = load ptr, ptr %34, align 8, !tbaa !145
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !371

50:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1306, ptr noundef nonnull @.str.4) #21
  br label %51

51:                                               ; preds = %47, %50
  %52 = load ptr, ptr %34, align 8, !tbaa !145
  %53 = getelementptr inbounds ptr, ptr %52, i64 %7
  store ptr null, ptr %53, align 8, !tbaa !91
  br label %54

54:                                               ; preds = %44, %51, %24
  %55 = add nuw nsw i64 %25, 1
  %56 = load ptr, ptr @df, align 8, !tbaa !91
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 12
  %58 = load i32, ptr %57, align 4, !tbaa !119
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %24, label %17, !prof !372, !llvm.loop !373

61:                                               ; preds = %22, %72
  %62 = phi i64 [ 1, %22 ], [ %73, %72 ]
  %63 = phi ptr [ %18, %22 ], [ %74, %72 ]
  %64 = getelementptr inbounds [8 x ptr], ptr %63, i64 0, i64 %62
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  %66 = getelementptr inbounds %struct.dataflow, ptr %65, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !312
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69, !prof !374

69:                                               ; preds = %61
  %70 = load i32, ptr %23, align 8, !tbaa !150
  %71 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %67, i32 noundef %70) #21
  br label %72

72:                                               ; preds = %69, %61
  %73 = add nuw nsw i64 %62, 1
  %74 = load ptr, ptr @df, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 12
  %76 = load i32, ptr %75, align 4, !tbaa !119
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %61, label %79, !prof !375, !llvm.loop !362

79:                                               ; preds = %72, %17
  %80 = phi ptr [ %18, %17 ], [ %74, %72 ]
  %81 = phi i32 [ %20, %17 ], [ %76, %72 ]
  %82 = icmp ne ptr %80, null
  %83 = icmp sgt i32 %81, 1
  %84 = and i1 %82, %83
  br i1 %84, label %85, label %94, !prof !376

85:                                               ; preds = %79
  %86 = zext i32 %81 to i64
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi i64 [ 1, %85 ], [ %92, %87 ]
  %89 = getelementptr inbounds [8 x ptr], ptr %80, i64 0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !91
  %91 = getelementptr inbounds %struct.dataflow, ptr %90, i64 0, i32 8
  store i8 1, ptr %91, align 1, !tbaa !118
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, %86
  br i1 %93, label %94, label %87, !prof !377, !llvm.loop !155

94:                                               ; preds = %87, %79, %1
  ret void
}

declare void @df_scan_verify() local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @df_bb_regno_first_def_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !378 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7, !prof !168

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !379
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = load ptr, ptr @df, align 8
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  br label %14

14:                                               ; preds = %7, %46
  %15 = phi ptr [ %5, %7 ], [ %49, %46 ]
  %16 = phi ptr [ undef, %7 ], [ %47, %46 ]
  %17 = icmp eq ptr %15, %11
  br i1 %17, label %51, label %18, !prof !381

18:                                               ; preds = %14
  %19 = load i32, ptr %15, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %46, !prof !382

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !102
  %26 = load ptr, ptr %13, align 8, !tbaa !383
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !384
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %38, !prof !386

34:                                               ; preds = %38
  %35 = getelementptr inbounds ptr, ptr %41, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38, !prof !387, !llvm.loop !388

38:                                               ; preds = %23, %34
  %39 = phi ptr [ %36, %34 ], [ %32, %23 ]
  %40 = phi ptr [ %45, %34 ], [ %16, %23 ]
  %41 = phi ptr [ %35, %34 ], [ %31, %23 ]
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %39, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !102
  %44 = icmp eq i32 %43, %1
  %45 = select i1 %44, ptr %39, ptr %40, !prof !389
  br i1 %44, label %51, label %34, !prof !389

46:                                               ; preds = %34, %23, %18
  %47 = phi ptr [ %16, %18 ], [ %16, %23 ], [ %45, %34 ]
  %48 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !102
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %14, !prof !390, !llvm.loop !391

51:                                               ; preds = %46, %14, %38, %2
  %52 = phi ptr [ null, %2 ], [ %45, %38 ], [ null, %14 ], [ null, %46 ]
  ret ptr %52
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @df_bb_regno_last_def_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !378 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8, !prof !392

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !393
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = load ptr, ptr @df, align 8
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  br label %14

14:                                               ; preds = %8, %46
  %15 = phi ptr [ %6, %8 ], [ %49, %46 ]
  %16 = phi ptr [ undef, %8 ], [ %47, %46 ]
  %17 = icmp eq ptr %15, %11
  br i1 %17, label %51, label %18, !prof !394

18:                                               ; preds = %14
  %19 = load i32, ptr %15, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %46, !prof !395

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !102
  %26 = load ptr, ptr %13, align 8, !tbaa !383
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !384
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %38, !prof !396

34:                                               ; preds = %38
  %35 = getelementptr inbounds ptr, ptr %41, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38, !prof !397, !llvm.loop !398

38:                                               ; preds = %23, %34
  %39 = phi ptr [ %36, %34 ], [ %32, %23 ]
  %40 = phi ptr [ %45, %34 ], [ %16, %23 ]
  %41 = phi ptr [ %35, %34 ], [ %31, %23 ]
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %39, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !102
  %44 = icmp eq i32 %43, %1
  %45 = select i1 %44, ptr %39, ptr %40, !prof !399
  br i1 %44, label %51, label %34, !prof !399

46:                                               ; preds = %34, %23, %18
  %47 = phi ptr [ %16, %18 ], [ %16, %23 ], [ %45, %34 ]
  %48 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !102
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %14, !prof !400, !llvm.loop !401

51:                                               ; preds = %46, %14, %38, %2
  %52 = phi ptr [ null, %2 ], [ %45, %38 ], [ null, %14 ], [ null, %46 ]
  ret ptr %52
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @df_find_def(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1736, ptr noundef nonnull @.str.4) #21
  br label %15

15:                                               ; preds = %9, %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !102
  %18 = load ptr, ptr @df, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !383
  %21 = zext i32 %17 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.df_insn_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !384
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %32

28:                                               ; preds = %44
  %29 = getelementptr inbounds ptr, ptr %35, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32, !llvm.loop !402

32:                                               ; preds = %15, %28
  %33 = phi ptr [ %30, %28 ], [ %26, %15 ]
  %34 = phi ptr [ %48, %28 ], [ undef, %15 ]
  %35 = phi ptr [ %29, %28 ], [ %25, %15 ]
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !102
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  br label %44

44:                                               ; preds = %32, %41
  %45 = phi ptr [ %43, %41 ], [ %37, %32 ]
  %46 = tail call i32 @rtx_equal_p(ptr noundef %45, ptr noundef nonnull %10) #21
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, ptr %34, ptr %33
  br i1 %47, label %28, label %49

49:                                               ; preds = %44, %28, %15
  %50 = phi ptr [ null, %15 ], [ %48, %44 ], [ null, %28 ]
  ret ptr %50
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @df_reg_defined(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = tail call ptr @df_find_def(ptr noundef %0, ptr noundef %1)
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @df_find_use(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1770, ptr noundef nonnull @.str.4) #21
  br label %15

15:                                               ; preds = %9, %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !102
  %18 = load ptr, ptr @df, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !383
  %21 = zext i32 %17 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.df_insn_info, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !403
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %32

28:                                               ; preds = %44
  %29 = getelementptr inbounds ptr, ptr %35, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32, !llvm.loop !404

32:                                               ; preds = %15, %28
  %33 = phi ptr [ %30, %28 ], [ %26, %15 ]
  %34 = phi ptr [ %48, %28 ], [ undef, %15 ]
  %35 = phi ptr [ %29, %28 ], [ %25, %15 ]
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !102
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  br label %44

44:                                               ; preds = %32, %41
  %45 = phi ptr [ %43, %41 ], [ %37, %32 ]
  %46 = tail call i32 @rtx_equal_p(ptr noundef %45, ptr noundef nonnull %10) #21
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, ptr %34, ptr %33
  br i1 %47, label %28, label %86

49:                                               ; preds = %28, %15
  %50 = phi ptr [ undef, %15 ], [ %48, %28 ]
  %51 = load ptr, ptr @df, align 8, !tbaa !91
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 27
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !383
  %59 = getelementptr inbounds ptr, ptr %58, i64 %21
  %60 = load ptr, ptr %59, align 8, !tbaa !91
  %61 = getelementptr inbounds %struct.df_insn_info, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !405
  %63 = load ptr, ptr %62, align 8, !tbaa !91
  %64 = icmp eq ptr %63, null
  br i1 %64, label %86, label %69

65:                                               ; preds = %81
  %66 = getelementptr inbounds ptr, ptr %72, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !91
  %68 = icmp eq ptr %67, null
  br i1 %68, label %86, label %69, !llvm.loop !406

69:                                               ; preds = %56, %65
  %70 = phi ptr [ %67, %65 ], [ %63, %56 ]
  %71 = phi ptr [ %85, %65 ], [ %50, %56 ]
  %72 = phi ptr [ %66, %65 ], [ %62, %56 ]
  %73 = getelementptr inbounds %struct.df_base_ref, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !102
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 39
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !102
  br label %81

81:                                               ; preds = %69, %78
  %82 = phi ptr [ %80, %78 ], [ %74, %69 ]
  %83 = tail call i32 @rtx_equal_p(ptr noundef %82, ptr noundef nonnull %10) #21
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, ptr %71, ptr %70
  br i1 %84, label %65, label %86

86:                                               ; preds = %44, %81, %65, %56, %49
  %87 = phi ptr [ null, %49 ], [ null, %56 ], [ null, %65 ], [ %85, %81 ], [ %48, %44 ]
  ret ptr %87
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @df_reg_used(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef %1)
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @df_print_regset(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #18 !prof !90 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 6, i64 1, ptr %0)
  br label %90

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @bitmap_zero_bits, ptr %7
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !134
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 0
  %14 = load i64, ptr %13, align 8, !tbaa !136
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = or disjoint i32 %12, %16
  br label %18

18:                                               ; preds = %87, %6
  %19 = phi i64 [ %14, %6 ], [ %88, %87 ]
  %20 = phi i32 [ 0, %6 ], [ %75, %87 ]
  %21 = phi i32 [ %17, %6 ], [ %89, %87 ]
  %22 = phi ptr [ %9, %6 ], [ %77, %87 ]
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %52, %18
  %25 = phi i64 [ %19, %18 ], [ %57, %52 ]
  %26 = phi i32 [ %20, %18 ], [ %53, %52 ]
  %27 = phi i32 [ %21, %18 ], [ %54, %52 ]
  %28 = phi ptr [ %22, %18 ], [ %45, %52 ]
  %29 = and i64 %25, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %24, %31
  %32 = phi i32 [ %35, %31 ], [ %27, %24 ]
  %33 = phi i64 [ %34, %31 ], [ %25, %24 ]
  %34 = lshr exact i64 %33, 1
  %35 = add i32 %32, 1
  %36 = and i64 %33, 2
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %31, label %73, !llvm.loop !137

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
  br i1 %47, label %63, label %48

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
  %57 = load i64, ptr %56, align 8, !tbaa !136
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %24

59:                                               ; preds = %52
  %60 = add i32 %54, 64
  %61 = add i32 %53, 1
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %52, !llvm.loop !138

63:                                               ; preds = %59, %42
  %64 = phi i64 [ %43, %42 ], [ %57, %59 ]
  %65 = phi i32 [ %44, %42 ], [ %51, %59 ]
  %66 = phi i32 [ %46, %42 ], [ 2, %59 ]
  %67 = load ptr, ptr %45, align 8, !tbaa !139
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !134
  %72 = shl i32 %71, 7
  br label %42, !llvm.loop !140

73:                                               ; preds = %63, %31, %24
  %74 = phi i64 [ %25, %24 ], [ %34, %31 ], [ %64, %63 ]
  %75 = phi i32 [ %26, %24 ], [ %26, %31 ], [ %66, %63 ]
  %76 = phi i32 [ %27, %24 ], [ %35, %31 ], [ %65, %63 ]
  %77 = phi ptr [ %28, %24 ], [ %28, %31 ], [ %67, %63 ]
  %78 = phi i1 [ false, %24 ], [ false, %31 ], [ true, %63 ]
  br i1 %78, label %90, label %79

79:                                               ; preds = %73
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %76)
  %81 = icmp ult i32 %76, 53
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = zext nneg i32 %76 to i64
  %84 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !91
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %85)
  br label %87

87:                                               ; preds = %79, %82
  %88 = lshr i64 %74, 1
  %89 = add i32 %76, 1
  br label %18, !llvm.loop !407

90:                                               ; preds = %73, %4
  %91 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_print_byte_regset(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = tail call i32 @max_reg_num() #21
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %219, label %7

7:                                                ; preds = %5
  %8 = zext i32 %3 to i64
  br label %11

9:                                                ; preds = %2
  %10 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 6, i64 1, ptr %0)
  br label %219

11:                                               ; preds = %7, %216
  %12 = phi i64 [ 0, %7 ], [ %217, %216 ]
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 @df_byte_lr_get_regno_start(i32 noundef %13) #21
  %15 = trunc i64 %12 to i32
  %16 = tail call i32 @df_byte_lr_get_regno_len(i32 noundef %15) #21
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %205

18:                                               ; preds = %11
  %19 = lshr i32 %14, 7
  br label %20

20:                                               ; preds = %18, %24
  %21 = phi ptr [ %22, %24 ], [ %1, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !91
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bitmap_element_def, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !134
  %27 = icmp ult i32 %26, %19
  br i1 %27, label %20, label %28, !llvm.loop !408

28:                                               ; preds = %20, %24
  %29 = phi ptr [ %22, %24 ], [ @bitmap_zero_bits, %20 ]
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !134
  %32 = lshr i32 %14, 7
  %33 = icmp eq i32 %31, %32
  %34 = shl i32 %31, 7
  %35 = select i1 %33, i32 %14, i32 %34
  %36 = lshr i32 %35, 6
  %37 = and i32 %36, 1
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !136
  %41 = and i32 %35, 63
  %42 = zext nneg i32 %41 to i64
  %43 = lshr i64 %40, %42
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = add i32 %35, %45
  br i1 %44, label %59, label %47

47:                                               ; preds = %72, %28
  %48 = phi i64 [ %43, %28 ], [ %77, %72 ]
  %49 = phi i32 [ %46, %28 ], [ %74, %72 ]
  %50 = and i64 %48, 1
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %47, %52
  %53 = phi i32 [ %56, %52 ], [ %49, %47 ]
  %54 = phi i64 [ %55, %52 ], [ %48, %47 ]
  %55 = lshr exact i64 %54, 1
  %56 = add i32 %53, 1
  %57 = and i64 %54, 2
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %52, label %91, !llvm.loop !137

59:                                               ; preds = %28
  %60 = add i32 %46, 63
  %61 = and i32 %60, -64
  %62 = add nuw nsw i32 %37, 1
  br label %63

63:                                               ; preds = %87, %59
  %64 = phi ptr [ %29, %59 ], [ %85, %87 ]
  %65 = phi i32 [ %61, %59 ], [ %90, %87 ]
  %66 = phi i32 [ %62, %59 ], [ 0, %87 ]
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %83, label %68

68:                                               ; preds = %63
  %69 = add i32 %65, 128
  %70 = shl nuw nsw i32 %66, 6
  %71 = sub i32 %69, %70
  br label %72

72:                                               ; preds = %68, %79
  %73 = phi i32 [ %81, %79 ], [ %66, %68 ]
  %74 = phi i32 [ %80, %79 ], [ %65, %68 ]
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 3, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !136
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %47

79:                                               ; preds = %72
  %80 = add i32 %74, 64
  %81 = add i32 %73, 1
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %72, !llvm.loop !138

83:                                               ; preds = %79, %63
  %84 = phi i32 [ %65, %63 ], [ %71, %79 ]
  %85 = load ptr, ptr %64, align 8, !tbaa !139
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.bitmap_element_def, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !134
  %90 = shl i32 %89, 7
  br label %63, !llvm.loop !140

91:                                               ; preds = %83, %52, %47
  %92 = phi i32 [ %49, %47 ], [ %56, %52 ], [ %84, %83 ]
  %93 = phi i1 [ false, %47 ], [ false, %52 ], [ true, %83 ]
  %94 = add i32 %16, %14
  %95 = icmp uge i32 %92, %94
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %216, label %97

97:                                               ; preds = %91
  %98 = trunc i64 %12 to i32
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %98)
  %100 = icmp ult i64 %12, 53
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %12
  %103 = load ptr, ptr %102, align 8, !tbaa !91
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %103)
  br label %105

105:                                              ; preds = %101, %97
  %106 = tail call i32 @fputc(i32 40, ptr %0)
  br label %107

107:                                              ; preds = %111, %105
  %108 = phi ptr [ %1, %105 ], [ %109, %111 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !91
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.bitmap_element_def, ptr %109, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !134
  %114 = icmp ult i32 %113, %32
  br i1 %114, label %107, label %115, !llvm.loop !408

115:                                              ; preds = %107, %111
  %116 = phi ptr [ %109, %111 ], [ @bitmap_zero_bits, %107 ]
  %117 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !134
  %119 = icmp eq i32 %118, %32
  %120 = shl i32 %118, 7
  %121 = select i1 %119, i32 %14, i32 %120
  %122 = lshr i32 %121, 6
  %123 = and i32 %122, 1
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds %struct.bitmap_element_def, ptr %116, i64 0, i32 3, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !136
  %127 = and i32 %121, 63
  %128 = zext nneg i32 %127 to i64
  %129 = lshr i64 %126, %128
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = add i32 %121, %131
  %133 = add i32 %94, -1
  br label %134

134:                                              ; preds = %198, %115
  %135 = phi i64 [ %129, %115 ], [ %201, %198 ]
  %136 = phi i32 [ %123, %115 ], [ %192, %198 ]
  %137 = phi ptr [ %116, %115 ], [ %193, %198 ]
  %138 = phi i32 [ %132, %115 ], [ %202, %198 ]
  %139 = phi ptr [ @.str.13, %115 ], [ @.str.16, %198 ]
  %140 = icmp eq i64 %135, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %169, %134
  %142 = phi i64 [ %135, %134 ], [ %174, %169 ]
  %143 = phi i32 [ %136, %134 ], [ %170, %169 ]
  %144 = phi ptr [ %137, %134 ], [ %161, %169 ]
  %145 = phi i32 [ %138, %134 ], [ %171, %169 ]
  %146 = and i64 %142, 1
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %141, %148
  %149 = phi i32 [ %152, %148 ], [ %145, %141 ]
  %150 = phi i64 [ %151, %148 ], [ %142, %141 ]
  %151 = lshr exact i64 %150, 1
  %152 = add i32 %149, 1
  %153 = and i64 %150, 2
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %148, label %190, !llvm.loop !137

155:                                              ; preds = %134
  %156 = add i32 %138, 63
  %157 = and i32 %156, -64
  %158 = add i32 %136, 1
  br label %159

159:                                              ; preds = %186, %155
  %160 = phi i64 [ %135, %155 ], [ %181, %186 ]
  %161 = phi ptr [ %137, %155 ], [ %184, %186 ]
  %162 = phi i32 [ %157, %155 ], [ %189, %186 ]
  %163 = phi i32 [ %158, %155 ], [ 0, %186 ]
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %180, label %165

165:                                              ; preds = %159
  %166 = add i32 %162, 128
  %167 = shl i32 %163, 6
  %168 = sub i32 %166, %167
  br label %169

169:                                              ; preds = %165, %176
  %170 = phi i32 [ %178, %176 ], [ %163, %165 ]
  %171 = phi i32 [ %177, %176 ], [ %162, %165 ]
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds %struct.bitmap_element_def, ptr %161, i64 0, i32 3, i64 %172
  %174 = load i64, ptr %173, align 8, !tbaa !136
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %141

176:                                              ; preds = %169
  %177 = add i32 %171, 64
  %178 = add i32 %170, 1
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %169, !llvm.loop !138

180:                                              ; preds = %176, %159
  %181 = phi i64 [ %160, %159 ], [ %174, %176 ]
  %182 = phi i32 [ %162, %159 ], [ %168, %176 ]
  %183 = phi i32 [ %163, %159 ], [ 2, %176 ]
  %184 = load ptr, ptr %161, align 8, !tbaa !139
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.bitmap_element_def, ptr %184, i64 0, i32 2
  %188 = load i32, ptr %187, align 8, !tbaa !134
  %189 = shl i32 %188, 7
  br label %159, !llvm.loop !140

190:                                              ; preds = %180, %148, %141
  %191 = phi i64 [ %142, %141 ], [ %151, %148 ], [ %181, %180 ]
  %192 = phi i32 [ %143, %141 ], [ %143, %148 ], [ %183, %180 ]
  %193 = phi ptr [ %144, %141 ], [ %144, %148 ], [ %184, %180 ]
  %194 = phi i32 [ %145, %141 ], [ %152, %148 ], [ %182, %180 ]
  %195 = phi i1 [ false, %141 ], [ false, %148 ], [ true, %180 ]
  %196 = icmp ugt i32 %194, %133
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %203, label %198

198:                                              ; preds = %190
  %199 = sub i32 %194, %14
  %200 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %139, i32 noundef %199)
  %201 = lshr i64 %191, 1
  %202 = add i32 %194, 1
  br label %134, !llvm.loop !409

203:                                              ; preds = %190
  %204 = tail call i32 @fputc(i32 41, ptr %0)
  br label %216

205:                                              ; preds = %11
  %206 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %1, i32 noundef %14) #21
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %205
  %209 = trunc i64 %12 to i32
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %209)
  %211 = icmp ult i64 %12, 53
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %12
  %214 = load ptr, ptr %213, align 8, !tbaa !91
  %215 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %214)
  br label %216

216:                                              ; preds = %91, %203, %205, %212, %208
  %217 = add nuw nsw i64 %12, 1
  %218 = icmp eq i64 %217, %8
  br i1 %218, label %219, label %11, !llvm.loop !410

219:                                              ; preds = %216, %5, %9
  %220 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare i32 @df_byte_lr_get_regno_start(i32 noundef) local_unnamed_addr #3

declare i32 @df_byte_lr_get_regno_len(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_dump(ptr noundef %0) local_unnamed_addr #10 !prof !90 {
  tail call void @df_dump_start(ptr noundef %0)
  %2 = load ptr, ptr @cfun, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %1
  %8 = icmp ne ptr %0, null
  br label %9

9:                                                ; preds = %7, %70
  %10 = phi ptr [ %5, %7 ], [ %72, %70 ]
  tail call void @df_print_bb_index(ptr noundef nonnull %10, ptr noundef %0) #21
  %11 = load ptr, ptr @df, align 8, !tbaa !91
  %12 = icmp ne ptr %11, null
  %13 = and i1 %8, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load ptr, ptr @df, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !119
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %14, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %14 ]
  %21 = phi ptr [ %35, %33 ], [ %15, %14 ]
  %22 = getelementptr inbounds [8 x ptr], ptr %21, i64 0, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 7
  %25 = load i8, ptr %24, align 4, !tbaa !117
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %23, align 8, !tbaa !115
  %29 = getelementptr inbounds %struct.df_problem, ptr %28, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !411
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %30(ptr noundef nonnull %10, ptr noundef nonnull %0) #21
  br label %33

33:                                               ; preds = %32, %27, %19
  %34 = add nuw nsw i64 %20, 1
  %35 = load ptr, ptr @df, align 8, !tbaa !91
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 12
  %37 = load i32, ptr %36, align 4, !tbaa !119
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %19, label %40, !llvm.loop !412

40:                                               ; preds = %33, %14, %9
  %41 = load ptr, ptr @df, align 8, !tbaa !91
  %42 = icmp ne ptr %41, null
  %43 = and i1 %8, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load ptr, ptr @df, align 8, !tbaa !91
  %46 = getelementptr inbounds %struct.df, ptr %45, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !119
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44, %63
  %50 = phi i64 [ %64, %63 ], [ 0, %44 ]
  %51 = phi ptr [ %65, %63 ], [ %45, %44 ]
  %52 = getelementptr inbounds [8 x ptr], ptr %51, i64 0, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !91
  %54 = getelementptr inbounds %struct.dataflow, ptr %53, i64 0, i32 7
  %55 = load i8, ptr %54, align 4, !tbaa !117
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %53, align 8, !tbaa !115
  %59 = getelementptr inbounds %struct.df_problem, ptr %58, i64 0, i32 16
  %60 = load ptr, ptr %59, align 8, !tbaa !413
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void %60(ptr noundef nonnull %10, ptr noundef nonnull %0) #21
  br label %63

63:                                               ; preds = %62, %57, %49
  %64 = add nuw nsw i64 %50, 1
  %65 = load ptr, ptr @df, align 8, !tbaa !91
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 12
  %67 = load i32, ptr %66, align 4, !tbaa !119
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %64, %68
  br i1 %69, label %49, label %70, !llvm.loop !414

70:                                               ; preds = %63, %44, %40
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !91
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %9, !llvm.loop !415

74:                                               ; preds = %70, %1
  %75 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_dump_start(ptr noundef %0) local_unnamed_addr #10 !prof !90 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = icmp ne ptr %2, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  %7 = tail call ptr @current_function_name() #21
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef %7)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 19, i64 1, ptr nonnull %0)
  %10 = load ptr, ptr @df, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !416
  %17 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 4, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !417
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %16, i32 noundef %18)
  br label %20

20:                                               ; preds = %14, %6
  %21 = load ptr, ptr @df, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !119
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20, %39
  %26 = phi i64 [ %40, %39 ], [ 0, %20 ]
  %27 = phi ptr [ %41, %39 ], [ %21, %20 ]
  %28 = getelementptr inbounds [8 x ptr], ptr %27, i64 0, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.dataflow, ptr %29, i64 0, i32 7
  %31 = load i8, ptr %30, align 4, !tbaa !117
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %29, align 8, !tbaa !115
  %35 = getelementptr inbounds %struct.df_problem, ptr %34, i64 0, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !418
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void %36(ptr noundef nonnull %0) #21
  br label %39

39:                                               ; preds = %33, %38, %25
  %40 = add nuw nsw i64 %26, 1
  %41 = load ptr, ptr @df, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.df, ptr %41, i64 0, i32 12
  %43 = load i32, ptr %42, align 4, !tbaa !119
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %25, label %46, !llvm.loop !419

46:                                               ; preds = %39, %20, %1
  ret void
}

declare void @df_print_bb_index(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_dump_top(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = load ptr, ptr @df, align 8, !tbaa !91
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load ptr, ptr @df, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 4, !tbaa !119
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %7, %26
  %13 = phi i64 [ %27, %26 ], [ 0, %7 ]
  %14 = phi ptr [ %28, %26 ], [ %8, %7 ]
  %15 = getelementptr inbounds [8 x ptr], ptr %14, i64 0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 7
  %18 = load i8, ptr %17, align 4, !tbaa !117
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %16, align 8, !tbaa !115
  %22 = getelementptr inbounds %struct.df_problem, ptr %21, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !411
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void %23(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %26

26:                                               ; preds = %20, %25, %12
  %27 = add nuw nsw i64 %13, 1
  %28 = load ptr, ptr @df, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 12
  %30 = load i32, ptr %29, align 4, !tbaa !119
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %12, label %33, !llvm.loop !412

33:                                               ; preds = %26, %7, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_dump_bottom(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = load ptr, ptr @df, align 8, !tbaa !91
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load ptr, ptr @df, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 4, !tbaa !119
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %7, %26
  %13 = phi i64 [ %27, %26 ], [ 0, %7 ]
  %14 = phi ptr [ %28, %26 ], [ %8, %7 ]
  %15 = getelementptr inbounds [8 x ptr], ptr %14, i64 0, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 7
  %18 = load i8, ptr %17, align 4, !tbaa !117
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %16, align 8, !tbaa !115
  %22 = getelementptr inbounds %struct.df_problem, ptr %21, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !413
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void %23(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %26

26:                                               ; preds = %20, %25, %12
  %27 = add nuw nsw i64 %13, 1
  %28 = load ptr, ptr @df, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 12
  %30 = load i32, ptr %29, align 4, !tbaa !119
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %12, label %33, !llvm.loop !414

33:                                               ; preds = %26, %7, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_dump_region(ptr noundef %0) local_unnamed_addr #10 !prof !90 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, null
  br i1 %5, label %157, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 23, i64 1, ptr %0)
  tail call void @df_dump_start(ptr noundef %0)
  %8 = load ptr, ptr @df, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @bitmap_zero_bits, ptr %11
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !134
  %16 = shl i32 %15, 7
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %13, i64 0, i32 3, i64 0
  %18 = load i64, ptr %17, align 8, !tbaa !136
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = or disjoint i32 %16, %20
  %22 = icmp ne ptr %0, null
  br label %23

23:                                               ; preds = %152, %6
  %24 = phi i32 [ 0, %6 ], [ %79, %152 ]
  %25 = phi i64 [ %18, %6 ], [ %153, %152 ]
  %26 = phi ptr [ %13, %6 ], [ %81, %152 ]
  %27 = phi i32 [ %21, %6 ], [ %154, %152 ]
  %28 = icmp eq i64 %25, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %57, %23
  %30 = phi i32 [ %24, %23 ], [ %58, %57 ]
  %31 = phi i64 [ %25, %23 ], [ %62, %57 ]
  %32 = phi ptr [ %26, %23 ], [ %49, %57 ]
  %33 = phi i32 [ %27, %23 ], [ %59, %57 ]
  %34 = and i64 %31, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %29, %36
  %37 = phi i32 [ %40, %36 ], [ %33, %29 ]
  %38 = phi i64 [ %39, %36 ], [ %31, %29 ]
  %39 = lshr exact i64 %38, 1
  %40 = add i32 %37, 1
  %41 = and i64 %38, 2
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %36, label %78, !llvm.loop !137

43:                                               ; preds = %23
  %44 = add i32 %27, 63
  %45 = and i32 %44, -64
  %46 = add i32 %24, 1
  br label %47

47:                                               ; preds = %74, %43
  %48 = phi i64 [ %25, %43 ], [ %69, %74 ]
  %49 = phi ptr [ %26, %43 ], [ %72, %74 ]
  %50 = phi i32 [ %45, %43 ], [ %77, %74 ]
  %51 = phi i32 [ %46, %43 ], [ 0, %74 ]
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %68, label %53

53:                                               ; preds = %47
  %54 = add i32 %50, 128
  %55 = shl i32 %51, 6
  %56 = sub i32 %54, %55
  br label %57

57:                                               ; preds = %53, %64
  %58 = phi i32 [ %66, %64 ], [ %51, %53 ]
  %59 = phi i32 [ %65, %64 ], [ %50, %53 ]
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %49, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !136
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %29

64:                                               ; preds = %57
  %65 = add i32 %59, 64
  %66 = add i32 %58, 1
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %57, !llvm.loop !138

68:                                               ; preds = %64, %47
  %69 = phi i64 [ %48, %47 ], [ %62, %64 ]
  %70 = phi i32 [ %50, %47 ], [ %56, %64 ]
  %71 = phi i32 [ %51, %47 ], [ 2, %64 ]
  %72 = load ptr, ptr %49, align 8, !tbaa !139
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !134
  %77 = shl i32 %76, 7
  br label %47, !llvm.loop !140

78:                                               ; preds = %68, %36, %29
  %79 = phi i32 [ %30, %29 ], [ %30, %36 ], [ %71, %68 ]
  %80 = phi i64 [ %31, %29 ], [ %39, %36 ], [ %69, %68 ]
  %81 = phi ptr [ %32, %29 ], [ %32, %36 ], [ %72, %68 ]
  %82 = phi i32 [ %33, %29 ], [ %40, %36 ], [ %70, %68 ]
  %83 = phi i1 [ false, %29 ], [ false, %36 ], [ true, %68 ]
  br i1 %83, label %155, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr @cfun, align 8, !tbaa !91
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !141
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !143
  %90 = zext i32 %82 to i64
  %91 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %89, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !91
  tail call void @df_print_bb_index(ptr noundef %92, ptr noundef %0) #21
  %93 = load ptr, ptr @df, align 8, !tbaa !91
  %94 = icmp ne ptr %93, null
  %95 = and i1 %22, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %84
  %97 = load ptr, ptr @df, align 8, !tbaa !91
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 12
  %99 = load i32, ptr %98, align 4, !tbaa !119
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %96, %115
  %102 = phi i64 [ %116, %115 ], [ 0, %96 ]
  %103 = phi ptr [ %117, %115 ], [ %97, %96 ]
  %104 = getelementptr inbounds [8 x ptr], ptr %103, i64 0, i64 %102
  %105 = load ptr, ptr %104, align 8, !tbaa !91
  %106 = getelementptr inbounds %struct.dataflow, ptr %105, i64 0, i32 7
  %107 = load i8, ptr %106, align 4, !tbaa !117
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %101
  %110 = load ptr, ptr %105, align 8, !tbaa !115
  %111 = getelementptr inbounds %struct.df_problem, ptr %110, i64 0, i32 15
  %112 = load ptr, ptr %111, align 8, !tbaa !411
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  tail call void %112(ptr noundef %92, ptr noundef nonnull %0) #21
  br label %115

115:                                              ; preds = %114, %109, %101
  %116 = add nuw nsw i64 %102, 1
  %117 = load ptr, ptr @df, align 8, !tbaa !91
  %118 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 12
  %119 = load i32, ptr %118, align 4, !tbaa !119
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %116, %120
  br i1 %121, label %101, label %122, !llvm.loop !412

122:                                              ; preds = %115, %96, %84
  %123 = load ptr, ptr @df, align 8, !tbaa !91
  %124 = icmp ne ptr %123, null
  %125 = and i1 %22, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %122
  %127 = load ptr, ptr @df, align 8, !tbaa !91
  %128 = getelementptr inbounds %struct.df, ptr %127, i64 0, i32 12
  %129 = load i32, ptr %128, align 4, !tbaa !119
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %126, %145
  %132 = phi i64 [ %146, %145 ], [ 0, %126 ]
  %133 = phi ptr [ %147, %145 ], [ %127, %126 ]
  %134 = getelementptr inbounds [8 x ptr], ptr %133, i64 0, i64 %132
  %135 = load ptr, ptr %134, align 8, !tbaa !91
  %136 = getelementptr inbounds %struct.dataflow, ptr %135, i64 0, i32 7
  %137 = load i8, ptr %136, align 4, !tbaa !117
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %131
  %140 = load ptr, ptr %135, align 8, !tbaa !115
  %141 = getelementptr inbounds %struct.df_problem, ptr %140, i64 0, i32 16
  %142 = load ptr, ptr %141, align 8, !tbaa !413
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  tail call void %142(ptr noundef %92, ptr noundef nonnull %0) #21
  br label %145

145:                                              ; preds = %144, %139, %131
  %146 = add nuw nsw i64 %132, 1
  %147 = load ptr, ptr @df, align 8, !tbaa !91
  %148 = getelementptr inbounds %struct.df, ptr %147, i64 0, i32 12
  %149 = load i32, ptr %148, align 4, !tbaa !119
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %146, %150
  br i1 %151, label %131, label %152, !llvm.loop !414

152:                                              ; preds = %145, %126, %122
  %153 = lshr i64 %80, 1
  %154 = add i32 %82, 1
  br label %23, !llvm.loop !420

155:                                              ; preds = %78
  %156 = tail call i32 @fputc(i32 10, ptr %0)
  br label %158

157:                                              ; preds = %1
  tail call void @df_dump(ptr noundef %0)
  br label %158

158:                                              ; preds = %157, %155
  ret void
}

declare ptr @current_function_name() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @df_refs_chain_dump(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #10 !prof !90 {
  %4 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %2)
  %5 = load ptr, ptr %0, align 8, !tbaa !91
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %1, 0
  br label %9

9:                                                ; preds = %7, %27
  %10 = phi ptr [ %5, %7 ], [ %29, %27 ]
  %11 = phi ptr [ %0, %7 ], [ %28, %27 ]
  %12 = load i32, ptr %10, align 8
  %13 = and i32 %12, 65280
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 262144
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 117, i32 101
  %18 = select i1 %14, i32 100, i32 %17
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !102
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !102
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %18, i32 noundef %20, i32 noundef %22)
  br i1 %8, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  tail call void @df_chain_dump(ptr noundef %26, ptr noundef %2) #21
  br label %27

27:                                               ; preds = %24, %9
  %28 = getelementptr inbounds ptr, ptr %11, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9, !llvm.loop !421

31:                                               ; preds = %27, %3
  %32 = tail call i32 @fputc(i32 125, ptr %2)
  ret void
}

declare void @df_chain_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @df_regs_chain_dump(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #18 !prof !90 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %1)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %17, %5 ], [ %0, %2 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 100, i32 117
  %11 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !102
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !102
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %10, i32 noundef %12, i32 noundef %14)
  %16 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !422

19:                                               ; preds = %5, %2
  %20 = tail call i32 @fputc(i32 125, ptr %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_insn_debug(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #10 !prof !90 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !102
  %6 = load ptr, ptr @df, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !383
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.df_insn_info, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !423
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %5, i32 noundef %13)
  %15 = load ptr, ptr @df, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !383
  %18 = getelementptr inbounds ptr, ptr %17, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.df_insn_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !384
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %3
  %24 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 6, i64 1, ptr %2)
  %25 = load ptr, ptr @df, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !383
  %28 = getelementptr inbounds ptr, ptr %27, i64 %9
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !384
  tail call void @df_refs_chain_dump(ptr noundef %31, i8 noundef zeroext %1, ptr noundef %2)
  br label %32

32:                                               ; preds = %23, %3
  %33 = load ptr, ptr @df, align 8, !tbaa !91
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !383
  %36 = getelementptr inbounds ptr, ptr %35, i64 %9
  %37 = load ptr, ptr %36, align 8, !tbaa !91
  %38 = getelementptr inbounds %struct.df_insn_info, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !403
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 6, i64 1, ptr %2)
  %43 = load ptr, ptr @df, align 8, !tbaa !91
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !383
  %46 = getelementptr inbounds ptr, ptr %45, i64 %9
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  %48 = getelementptr inbounds %struct.df_insn_info, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !403
  tail call void @df_refs_chain_dump(ptr noundef %49, i8 noundef zeroext %1, ptr noundef %2)
  br label %50

50:                                               ; preds = %41, %32
  %51 = load ptr, ptr @df, align 8, !tbaa !91
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !383
  %54 = getelementptr inbounds ptr, ptr %53, i64 %9
  %55 = load ptr, ptr %54, align 8, !tbaa !91
  %56 = getelementptr inbounds %struct.df_insn_info, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !405
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 9, i64 1, ptr %2)
  %61 = load ptr, ptr @df, align 8, !tbaa !91
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !383
  %64 = getelementptr inbounds ptr, ptr %63, i64 %9
  %65 = load ptr, ptr %64, align 8, !tbaa !91
  %66 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !405
  tail call void @df_refs_chain_dump(ptr noundef %67, i8 noundef zeroext %1, ptr noundef %2)
  br label %68

68:                                               ; preds = %59, %50
  %69 = load ptr, ptr @df, align 8, !tbaa !91
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !383
  %72 = getelementptr inbounds ptr, ptr %71, i64 %9
  %73 = load ptr, ptr %72, align 8, !tbaa !91
  %74 = getelementptr inbounds %struct.df_insn_info, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !424
  %76 = icmp eq ptr %75, null
  br i1 %76, label %104, label %77

77:                                               ; preds = %68
  %78 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr %2)
  %79 = load ptr, ptr @df, align 8, !tbaa !91
  %80 = getelementptr inbounds %struct.df, ptr %79, i64 0, i32 10
  %81 = load ptr, ptr %80, align 8, !tbaa !383
  %82 = getelementptr inbounds ptr, ptr %81, i64 %9
  %83 = load ptr, ptr %82, align 8, !tbaa !91
  %84 = getelementptr inbounds %struct.df_insn_info, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !424
  %86 = load ptr, ptr %85, align 8, !tbaa !91
  %87 = icmp eq ptr %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %77, %88
  %89 = phi ptr [ %102, %88 ], [ %86, %77 ]
  %90 = phi ptr [ %101, %88 ], [ %85, %77 ]
  %91 = getelementptr inbounds %struct.df_mw_hardreg, ptr %89, i64 0, i32 1
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 100, i32 117
  %96 = getelementptr inbounds %struct.df_mw_hardreg, ptr %89, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !425
  %98 = getelementptr inbounds %struct.df_mw_hardreg, ptr %89, i64 0, i32 3
  %99 = load i32, ptr %98, align 8, !tbaa !427
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %95, i32 noundef %97, i32 noundef %99)
  %101 = getelementptr inbounds ptr, ptr %90, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !91
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %88, !llvm.loop !428

104:                                              ; preds = %88, %77, %68
  %105 = tail call i32 @fputc(i32 10, ptr %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_insn_debug_regno(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = load ptr, ptr @df, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !383
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !102
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !150
  %15 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !423
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %7, i32 noundef %14, i32 noundef %16)
  %18 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !384
  tail call void @df_refs_chain_dump(ptr noundef %19, i8 noundef zeroext 0, ptr noundef %1)
  %20 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 6, i64 1, ptr %1)
  %21 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !403
  tail call void @df_refs_chain_dump(ptr noundef %22, i8 noundef zeroext 0, ptr noundef %1)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 9, i64 1, ptr %1)
  %24 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !405
  tail call void @df_refs_chain_dump(ptr noundef %25, i8 noundef zeroext 0, ptr noundef %1)
  %26 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @df_regno_debug(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #18 !prof !90 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %0)
  %4 = load ptr, ptr @df, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !429
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = load ptr, ptr %9, align 8, !tbaa !430
  tail call void @df_regs_chain_dump(ptr noundef %10, ptr noundef %1)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 6, i64 1, ptr %1)
  %12 = load ptr, ptr @df, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !432
  %15 = getelementptr inbounds ptr, ptr %14, i64 %7
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = load ptr, ptr %16, align 8, !tbaa !430
  tail call void @df_regs_chain_dump(ptr noundef %17, ptr noundef %1)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 9, i64 1, ptr %1)
  %19 = load ptr, ptr @df, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !433
  %22 = getelementptr inbounds ptr, ptr %21, i64 %7
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = load ptr, ptr %23, align 8, !tbaa !430
  tail call void @df_regs_chain_dump(ptr noundef %24, ptr noundef %1)
  %25 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @df_ref_debug(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !90 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65280
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 100, i32 117
  %7 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %6, i32 noundef %8)
  %10 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !102
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = load ptr, ptr %19, align 8, !tbaa !434
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 1
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi ptr [ %16, %15 ], [ %21, %17 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !150
  br i1 %14, label %33, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !102
  %30 = load ptr, ptr %29, align 8, !tbaa !434
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !102
  br label %33

33:                                               ; preds = %22, %27
  %34 = phi i32 [ %32, %27 ], [ -1, %22 ]
  %35 = ashr i32 %12, 16
  %36 = lshr i32 %12, 8
  %37 = and i32 %36, 255
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %11, i32 noundef %26, i32 noundef %34, i32 noundef %35, i32 noundef %37)
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 254
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %59

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !106
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 15, i64 1, ptr %1)
  br label %61

51:                                               ; preds = %46
  %52 = and i32 %39, 3
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = icmp eq i32 %52, 3
  tail call void @llvm.assume(i1 %55)
  br label %56

56:                                               ; preds = %54, %51
  %57 = load ptr, ptr %44, align 8, !tbaa !91
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %44, ptr noundef %57)
  br label %61

59:                                               ; preds = %33, %42
  %60 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 6, i64 1, ptr %1)
  br label %61

61:                                               ; preds = %49, %56, %59
  %62 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !102
  tail call void @df_chain_dump(ptr noundef %63, ptr noundef %1) #21
  %64 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_df_insn(ptr noundef %0) local_unnamed_addr #10 !prof !90 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !91
  tail call void @df_insn_debug(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %2)
  tail call void @debug_rtx(ptr noundef %0) #21
  ret void
}

declare void @debug_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_df_reg(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !90 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !102
  %4 = load ptr, ptr @stderr, align 8, !tbaa !91
  tail call void @df_regno_debug(i32 noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_df_regno(i32 noundef %0) local_unnamed_addr #18 !prof !90 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !91
  tail call void @df_regno_debug(i32 noundef %0, ptr noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_df_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !90 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !91
  tail call void @df_ref_debug(ptr noundef %0, ptr noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_df_defno(i32 noundef %0) local_unnamed_addr #10 !prof !90 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !435
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = load ptr, ptr @stderr, align 8, !tbaa !91
  tail call void @df_ref_debug(ptr noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_df_useno(i32 noundef %0) local_unnamed_addr #10 !prof !90 {
  %2 = load ptr, ptr @df, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !436
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = load ptr, ptr @stderr, align 8, !tbaa !91
  tail call void @df_ref_debug(ptr noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_df_chain(ptr noundef %0) local_unnamed_addr #10 !prof !90 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !91
  tail call void @df_chain_dump(ptr noundef %0, ptr noundef %2) #21
  %3 = load ptr, ptr @stderr, align 8, !tbaa !91
  %4 = tail call i32 @fputc(i32 noundef 10, ptr noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare void @df_scan_add_problem() local_unnamed_addr #3

declare void @df_scan_alloc(ptr noundef) local_unnamed_addr #3

declare void @df_lr_add_problem() local_unnamed_addr #3

declare void @df_live_add_problem() local_unnamed_addr #3

declare void @df_hard_reg_init() local_unnamed_addr #3

declare void @df_scan_blocks() local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!89}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!35 = !{ptr @df_add_problem, ptr @df_add_problem, i64 456}
!36 = !{ptr @df_add_problem, ptr @xcalloc, i64 608}
!37 = !{ptr @df_finish_pass, ptr @df_maybe_reorganize_def_refs, i64 1104}
!38 = !{ptr @df_finish_pass, ptr @df_maybe_reorganize_use_refs, i64 1104}
!39 = !{ptr @df_finish_pass, ptr @df_process_deferred_rescans, i64 1104}
!40 = !{ptr @rest_of_handle_df_initialize, ptr @xcalloc, i64 38}
!41 = !{ptr @rest_of_handle_df_initialize, ptr @bitmap_obstack_initialize, i64 38}
!42 = !{ptr @rest_of_handle_df_initialize, ptr @df_scan_add_problem, i64 38}
!43 = !{ptr @rest_of_handle_df_initialize, ptr @df_scan_alloc, i64 38}
!44 = !{ptr @rest_of_handle_df_initialize, ptr @df_lr_add_problem, i64 38}
!45 = !{ptr @rest_of_handle_df_initialize, ptr @df_live_add_problem, i64 38}
!46 = !{ptr @rest_of_handle_df_initialize, ptr @xmalloc, i64 114}
!47 = !{ptr @rest_of_handle_df_initialize, ptr @post_order_compute, i64 38}
!48 = !{ptr @rest_of_handle_df_initialize, ptr @inverted_post_order_compute, i64 38}
!49 = !{ptr @rest_of_handle_df_initialize, ptr @df_hard_reg_init, i64 38}
!50 = !{ptr @rest_of_handle_df_initialize, ptr @df_compute_regs_ever_live, i64 76}
!51 = !{ptr @rest_of_handle_df_initialize, ptr @df_scan_blocks, i64 38}
!52 = !{ptr @rest_of_handle_df_finish, ptr @free, i64 152}
!53 = !{ptr @rest_of_handle_df_finish, ptr @bitmap_obstack_release, i64 38}
!54 = !{ptr @df_worklist_dataflow, ptr @bitmap_obstack_alloc_stat, i64 2658}
!55 = !{ptr @df_worklist_dataflow, ptr @sbitmap_alloc, i64 1329}
!56 = !{ptr @df_worklist_dataflow, ptr @xmalloc, i64 1329}
!57 = !{ptr @df_worklist_dataflow, ptr @sbitmap_zero, i64 1329}
!58 = !{ptr @df_worklist_dataflow, ptr @bitmap_set_bit, i64 15646916}
!59 = !{ptr @df_worklist_dataflow, ptr @bitmap_first_set_bit, i64 11651902}
!60 = !{ptr @df_worklist_dataflow, ptr @bitmap_clear_bit, i64 11651902}
!61 = !{ptr @df_worklist_dataflow, ptr @bitmap_obstack_free, i64 2658}
!62 = !{ptr @df_worklist_dataflow, ptr @free, i64 3987}
!63 = !{ptr @df_analyze, ptr @bitmap_obstack_alloc_stat, i64 1033}
!64 = !{ptr @df_analyze, ptr @free, i64 2066}
!65 = !{ptr @df_analyze, ptr @xmalloc, i64 2066}
!66 = !{ptr @df_analyze, ptr @post_order_compute, i64 1033}
!67 = !{ptr @df_analyze, ptr @inverted_post_order_compute, i64 1033}
!68 = !{ptr @df_analyze, ptr @df_compute_regs_ever_live, i64 1033}
!69 = !{ptr @df_analyze, ptr @df_process_deferred_rescans, i64 1033}
!70 = !{ptr @df_analyze, ptr @bitmap_set_bit, i64 4748281}
!71 = !{ptr @df_analyze, ptr @df_worklist_dataflow, i64 1311}
!72 = !{ptr @df_analyze, ptr @bitmap_obstack_free, i64 1033}
!73 = !{ptr @df_simple_dataflow, ptr @df_worklist_dataflow, i64 15}
!74 = !{ptr @df_get_bb_dirty, ptr @bitmap_bit_p, i64 17281817}
!75 = !{ptr @df_set_bb_dirty, ptr @bitmap_set_bit, i64 5661142}
!76 = !{ptr @df_compact_blocks, ptr @bitmap_obstack_alloc_stat, i64 629}
!77 = !{ptr @df_compact_blocks, ptr @xmalloc, i64 629}
!78 = !{ptr @df_compact_blocks, ptr @bitmap_copy, i64 1258}
!79 = !{ptr @df_compact_blocks, ptr @bitmap_clear, i64 1258}
!80 = !{ptr @df_compact_blocks, ptr @bitmap_bit_p, i64 5823008}
!81 = !{ptr @df_compact_blocks, ptr @bitmap_set_bit, i64 2068152}
!82 = !{ptr @df_compact_blocks, ptr @df_grow_bb_info, i64 1963}
!83 = !{ptr @df_compact_blocks, ptr @bitmap_obstack_free, i64 629}
!84 = !{ptr @df_compact_blocks, ptr @free, i64 629}
!85 = !{ptr @df_bb_replace, ptr @df_grow_bb_info, i64 3}
!86 = !{ptr @df_bb_replace, ptr @bitmap_clear_bit, i64 2}
!87 = !{ptr @df_bb_replace, ptr @df_set_bb_dirty, i64 1}
!88 = !{ptr @df_bb_delete, ptr @bitmap_clear_bit, i64 199186}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = !{!"function_entry_count", i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"any pointer", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!96, !92, i64 8}
!96 = !{!"_IO_FILE", !97, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !97, i64 112, !97, i64 116, !98, i64 120, !99, i64 128, !93, i64 130, !93, i64 131, !92, i64 136, !98, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !98, i64 184, !97, i64 192, !93, i64 196}
!97 = !{!"int", !93, i64 0}
!98 = !{!"long", !93, i64 0}
!99 = !{!"short", !93, i64 0}
!100 = !{!96, !92, i64 16}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{!93, !93, i64 0}
!103 = !{!96, !92, i64 40}
!104 = !{!96, !92, i64 48}
!105 = !{!96, !97, i64 0}
!106 = !{!97, !97, i64 0}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"function_entry_count", i64 1064}
!111 = !{!112, !92, i64 144}
!112 = !{!"df_problem", !97, i64 0, !97, i64 4, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !97, i64 152, !93, i64 156}
!113 = !{!"branch_weights", i32 608, i32 456}
!114 = !{!112, !97, i64 0}
!115 = !{!116, !92, i64 0}
!116 = !{!"dataflow", !92, i64 0, !92, i64 8, !97, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !97, i64 48, !93, i64 52, !93, i64 53, !93, i64 54}
!117 = !{!116, !93, i64 52}
!118 = !{!116, !93, i64 53}
!119 = !{!120, !97, i64 260}
!120 = !{!"df", !93, i64 0, !93, i64 64, !92, i64 128, !121, i64 136, !121, i64 176, !92, i64 216, !92, i64 224, !92, i64 232, !97, i64 240, !97, i64 244, !92, i64 248, !97, i64 256, !97, i64 260, !92, i64 264, !92, i64 272, !92, i64 280, !92, i64 288, !92, i64 296, !92, i64 304, !92, i64 312, !92, i64 320, !92, i64 328, !92, i64 336, !97, i64 344, !97, i64 348, !92, i64 352, !97, i64 360, !97, i64 364, !93, i64 365, !93, i64 366}
!121 = !{!"df_ref_info", !92, i64 0, !92, i64 8, !92, i64 16, !97, i64 24, !97, i64 28, !97, i64 32, !97, i64 36}
!122 = !{!"branch_weights", i32 151, i32 1}
!123 = !{!"branch_weights", i32 76, i32 570}
!124 = !{!"branch_weights", i32 2433, i32 151}
!125 = distinct !{!125, !108, !109}
!126 = !{!"function_entry_count", i64 1188}
!127 = !{!"function_entry_count", i64 634}
!128 = !{!120, !92, i64 128}
!129 = !{!116, !93, i64 54}
!130 = !{!112, !92, i64 16}
!131 = !{!112, !93, i64 156}
!132 = !{!133, !92, i64 0}
!133 = !{!"bitmap_head_def", !92, i64 0, !92, i64 8, !97, i64 16, !92, i64 24}
!134 = !{!135, !97, i64 16}
!135 = !{!"bitmap_element_def", !92, i64 0, !92, i64 8, !97, i64 16, !93, i64 24}
!136 = !{!98, !98, i64 0}
!137 = distinct !{!137, !108, !109}
!138 = distinct !{!138, !108, !109}
!139 = !{!135, !92, i64 0}
!140 = distinct !{!140, !109}
!141 = !{!142, !92, i64 8}
!142 = !{!"function", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !97, i64 104, !97, i64 108, !97, i64 112, !97, i64 116, !97, i64 120, !97, i64 124, !92, i64 128, !97, i64 136, !97, i64 137, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139}
!143 = !{!144, !92, i64 16}
!144 = !{!"control_flow_graph", !92, i64 0, !92, i64 8, !92, i64 16, !97, i64 24, !97, i64 28, !97, i64 32, !92, i64 40, !97, i64 48, !93, i64 52, !93, i64 60, !97, i64 68, !97, i64 72}
!145 = !{!116, !92, i64 8}
!146 = !{!116, !97, i64 16}
!147 = !{!112, !92, i64 24}
!148 = distinct !{!148, !108, !109}
!149 = distinct !{!149, !108, !109}
!150 = !{!151, !97, i64 80}
!151 = !{!"basic_block_def", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !93, i64 32, !92, i64 48, !92, i64 56, !93, i64 64, !98, i64 72, !97, i64 80, !97, i64 84, !97, i64 88, !97, i64 92, !97, i64 96}
!152 = distinct !{!152, !108, !109}
!153 = distinct !{!153, !108, !109}
!154 = !{!120, !93, i64 365}
!155 = distinct !{!155, !108, !109}
!156 = !{!"function_entry_count", i64 4168441}
!157 = !{!"branch_weights", i32 3409194, i32 759247}
!158 = !{!"branch_weights", i32 759246, i32 1}
!159 = !{!"branch_weights", i32 759246, i32 759305}
!160 = !{!"function_entry_count", i64 38}
!161 = !{!"branch_weights", i32 0, i32 38}
!162 = !{!112, !92, i64 96}
!163 = !{!"branch_weights", i32 1, i32 0}
!164 = !{!"branch_weights", i32 0, i32 190}
!165 = !{!"branch_weights", i32 609, i32 151}
!166 = distinct !{!166, !108, !109}
!167 = !{!"branch_weights", i32 38, i32 152}
!168 = !{!"branch_weights", i32 0, i32 1}
!169 = distinct !{!169, !108, !109}
!170 = distinct !{!170, !108, !109}
!171 = !{!"VP", i32 0, i64 38, i64 -1337806042304999980, i64 38}
!172 = !{!"function_entry_count", i64 1104}
!173 = !{!"branch_weights", i32 0, i32 1104}
!174 = !{!"branch_weights", i32 1103, i32 1}
!175 = !{!"branch_weights", i32 3312, i32 456}
!176 = !{!"branch_weights", i32 0, i32 456}
!177 = !{!"VP", i32 0, i64 456, i64 3753140131749356603, i64 342, i64 -2171793810252448550, i64 76, i64 7682131958580360381, i64 38}
!178 = !{!"branch_weights", i32 2665, i32 1103}
!179 = distinct !{!179, !108, !109}
!180 = !{!"branch_weights", i32 1104, i32 0}
!181 = !{!"df-core.c;gate_opt"}
!182 = !{!"df-core.c;rest_of_handle_df_initialize"}
!183 = !{!"branch_weights", i32 38, i32 0}
!184 = !{!144, !97, i64 32}
!185 = !{!120, !92, i64 328}
!186 = !{!120, !92, i64 336}
!187 = !{!120, !97, i64 344}
!188 = !{!120, !97, i64 348}
!189 = !{!120, !92, i64 352}
!190 = !{!"df-core.c;gate_no_opt"}
!191 = !{!"df-core.c;rest_of_handle_df_finish"}
!192 = !{!112, !92, i64 88}
!193 = !{!"VP", i32 0, i64 114, i64 -1595896690190284855, i64 38, i64 6989202800977377210, i64 38, i64 -1083545389689099343, i64 38}
!194 = !{!"branch_weights", i32 305, i32 151}
!195 = distinct !{!195, !108, !109}
!196 = !{!"function_entry_count", i64 1329}
!197 = !{!112, !97, i64 4}
!198 = !{!"branch_weights", i32 0, i32 1329}
!199 = !{!"branch_weights", i32 1328, i32 1}
!200 = !{!"branch_weights", i32 6609216, i32 1328}
!201 = distinct !{!201, !108, !109}
!202 = !{!"branch_weights", i32 101506, i32 6158731}
!203 = !{!"branch_weights", i32 152224, i32 6106684}
!204 = !{!"branch_weights", i32 0, i32 152224}
!205 = !{!"branch_weights", i32 1, i32 51489}
!206 = !{!"branch_weights", i32 1474, i32 100177}
!207 = !{!"branch_weights", i32 51489, i32 50162}
!208 = !{!"branch_weights", i32 1329, i32 50161}
!209 = !{!"branch_weights", i32 1329, i32 6258908}
!210 = !{!211, !92, i64 0}
!211 = !{!"simple_bitmap_def", !92, i64 0, !97, i64 8, !97, i64 12, !93, i64 16}
!212 = !{!"branch_weights", i32 6258908, i32 0}
!213 = distinct !{!213, !108, !109}
!214 = !{!"branch_weights", i32 1328, i32 6257580}
!215 = distinct !{!215, !108, !109}
!216 = !{!112, !92, i64 40}
!217 = !{!"branch_weights", i32 15, i32 1314}
!218 = !{!"VP", i32 0, i64 1314, i64 -2219566631478780422, i64 601, i64 1236492953044910179, i64 599, i64 6096974408097501252, i64 76}
!219 = !{!"branch_weights", i32 1, i32 1328}
!220 = !{!"branch_weights", i32 6416670, i32 5235232}
!221 = !{!151, !92, i64 0}
!222 = !{!"branch_weights", i32 713, i32 6415957}
!223 = !{!224, !97, i64 0}
!224 = !{!"VEC_edge_base", !97, i64 0, !97, i64 4, !93, i64 8}
!225 = !{!"branch_weights", i32 0, i32 18683214}
!226 = !{!"branch_weights", i32 6415957, i32 12267257}
!227 = !{!228, !92, i64 0}
!228 = !{!"edge_def", !92, i64 0, !92, i64 8, !93, i64 16, !92, i64 24, !92, i64 32, !97, i64 40, !97, i64 44, !97, i64 48, !97, i64 52, !98, i64 56}
!229 = !{!"branch_weights", i32 0, i32 12267257}
!230 = !{!112, !92, i64 64}
!231 = !{!"VP", i32 0, i64 12267257, i64 -3707615395775858497, i64 10870043, i64 -7116083766528007027, i64 788242, i64 369662481788444659, i64 608972}
!232 = !{!"branch_weights", i32 12267257, i32 0}
!233 = distinct !{!233, !108, !109}
!234 = !{!112, !92, i64 56}
!235 = !{!"branch_weights", i32 637, i32 76}
!236 = !{!"VP", i32 0, i64 76, i64 1466421173694439161, i64 76}
!237 = !{!112, !92, i64 72}
!238 = !{!"VP", i32 0, i64 6416670, i64 3487645055144806458, i64 5730394, i64 1227488626988865275, i64 378978, i64 1558544731800263949, i64 307298}
!239 = !{!"branch_weights", i32 3392609, i32 3024061}
!240 = !{!"branch_weights", i32 637, i32 8772981}
!241 = !{!"branch_weights", i32 3024061, i32 5749557}
!242 = !{!228, !92, i64 8}
!243 = !{!"branch_weights", i32 0, i32 5749557}
!244 = !{!"branch_weights", i32 5749557, i32 0}
!245 = distinct !{!245, !108, !109}
!246 = !{!151, !92, i64 8}
!247 = !{!"branch_weights", i32 616, i32 5234616}
!248 = !{!"branch_weights", i32 1552, i32 5233680}
!249 = !{!"branch_weights", i32 0, i32 15359523}
!250 = !{!"branch_weights", i32 5233680, i32 10125843}
!251 = !{!"branch_weights", i32 0, i32 10125843}
!252 = !{!"VP", i32 0, i64 10125843, i64 6630140501144042061, i64 10116591, i64 5648752615170823477, i64 9252}
!253 = !{!"branch_weights", i32 10125843, i32 0}
!254 = distinct !{!254, !108, !109}
!255 = !{!"branch_weights", i32 0, i32 1552}
!256 = !{!"VP", i32 0, i64 1552, i64 2372371657840674395, i64 1499, i64 5817698320658243880, i64 53}
!257 = !{!"VP", i32 0, i64 5235232, i64 3650154297696287405, i64 5230141, i64 776393647031544398, i64 5091}
!258 = !{!"branch_weights", i32 3248377, i32 1986855}
!259 = !{!"branch_weights", i32 0, i32 5625307}
!260 = !{!"branch_weights", i32 15, i32 5625292}
!261 = !{!"branch_weights", i32 1986855, i32 3638452}
!262 = !{!"branch_weights", i32 0, i32 3638452}
!263 = !{!"branch_weights", i32 3638452, i32 0}
!264 = distinct !{!264, !108, !109}
!265 = !{!"branch_weights", i32 2628, i32 11649274}
!266 = distinct !{!266, !108, !109}
!267 = !{!"branch_weights", i32 1328, i32 1300}
!268 = distinct !{!268, !108, !109}
!269 = !{!"branch_weights", i32 1329, i32 0}
!270 = !{!144, !97, i64 24}
!271 = !{!144, !97, i64 28}
!272 = !{!"branch_weights", i32 1745, i32 0}
!273 = !{!112, !97, i64 152}
!274 = !{!112, !92, i64 8}
!275 = !{!"branch_weights", i32 0, i32 1745}
!276 = !{!"VP", i32 0, i64 0, i64 8512439608609484521, i64 0, i64 5001444568398278369, i64 0, i64 2405441119609660297, i64 0}
!277 = !{!112, !92, i64 32}
!278 = !{!"branch_weights", i32 38, i32 1707}
!279 = !{!"VP", i32 0, i64 0, i64 -3271606782638330555, i64 0, i64 -1369376930255352023, i64 0, i64 -4641290994392421674, i64 0}
!280 = !{!112, !92, i64 48}
!281 = !{!"branch_weights", i32 433, i32 1312}
!282 = !{!"VP", i32 0, i64 0, i64 -4393478861004500448, i64 0}
!283 = !{!112, !92, i64 80}
!284 = !{!"branch_weights", i32 509, i32 1236}
!285 = !{!"VP", i32 0, i64 0, i64 -1175718865263767576, i64 0, i64 810288964747351882, i64 0, i64 278035078838349151, i64 0}
!286 = !{!"function_entry_count", i64 1033}
!287 = !{!"branch_weights", i32 0, i32 1033}
!288 = !{!"branch_weights", i32 1033, i32 0}
!289 = !{!"branch_weights", i32 1032, i32 1}
!290 = !{!"branch_weights", i32 4747246, i32 1032}
!291 = distinct !{!291, !108, !109}
!292 = distinct !{!292, !108, !109}
!293 = !{!"branch_weights", i32 868, i32 1745}
!294 = !{!"branch_weights", i32 713, i32 1032}
!295 = !{!"VP", i32 0, i64 713, i64 8512439608609484521, i64 244, i64 5001444568398278369, i64 244, i64 2405441119609660297, i64 161}
!296 = !{!"VP", i32 0, i64 697, i64 -3271606782638330555, i64 244, i64 -1369376930255352023, i64 244, i64 -4641290994392421674, i64 161}
!297 = !{!"VP", i32 0, i64 536, i64 -4393478861004500448, i64 536}
!298 = !{!"VP", i32 0, i64 505, i64 -1175718865263767576, i64 244, i64 810288964747351882, i64 244, i64 278035078838349151, i64 15}
!299 = !{!"VP", i32 0, i64 1032, i64 8512439608609484521, i64 354, i64 5001444568398278369, i64 354, i64 2405441119609660297, i64 233}
!300 = !{!"VP", i32 0, i64 1009, i64 -3271606782638330555, i64 354, i64 -1369376930255352023, i64 354, i64 -4641290994392421674, i64 233}
!301 = !{!"VP", i32 0, i64 775, i64 -4393478861004500448, i64 775}
!302 = !{!"VP", i32 0, i64 730, i64 -1175718865263767576, i64 354, i64 810288964747351882, i64 354, i64 278035078838349151, i64 22}
!303 = !{!"branch_weights", i32 1581, i32 1032}
!304 = distinct !{!304, !108, !109}
!305 = !{!"function_entry_count", i64 322}
!306 = !{!"branch_weights", i32 322, i32 0, i32 0}
!307 = !{!"branch_weights", i32 0, i32 322}
!308 = !{!"function_entry_count", i64 15}
!309 = !{!"function_entry_count", i64 21411040}
!310 = !{!"branch_weights", i32 4129223, i32 17281817}
!311 = !{!"branch_weights", i32 0, i32 17281817}
!312 = !{!116, !92, i64 32}
!313 = !{!"function_entry_count", i64 3086315}
!314 = !{!"branch_weights", i32 255744, i32 2830571}
!315 = !{!"branch_weights", i32 2830570, i32 1}
!316 = !{!"branch_weights", i32 1311691, i32 5661142}
!317 = !{!"branch_weights", i32 4142263, i32 2830570}
!318 = distinct !{!318, !108, !109}
!319 = !{!"branch_weights", i32 -382794760, i32 1382}
!320 = !{!"branch_weights", i32 2830570, i32 4142263}
!321 = distinct !{!321, !108, !109}
!322 = !{!"function_entry_count", i64 629}
!323 = !{!"branch_weights", i32 628, i32 1}
!324 = !{!"branch_weights", i32 819, i32 1258}
!325 = !{!"branch_weights", i32 1258, i32 0}
!326 = !{!144, !92, i64 0}
!327 = !{!151, !92, i64 56}
!328 = !{!144, !92, i64 8}
!329 = !{!"branch_weights", i32 1, i32 1257}
!330 = !{!"branch_weights", i32 3752340, i32 2068152}
!331 = !{!"branch_weights", i32 1257, i32 5819235}
!332 = distinct !{!332, !108, !109}
!333 = !{!"branch_weights", i32 114, i32 1963}
!334 = !{!"VP", i32 1, i64 1963, i64 513, i64 1400, i64 129, i64 251, i64 257, i64 177, i64 65, i64 74}
!335 = !{!"branch_weights", i32 1, i32 1962}
!336 = !{!"branch_weights", i32 0, i32 9101297}
!337 = !{!"branch_weights", i32 1962, i32 9099335}
!338 = distinct !{!338, !108, !109}
!339 = !{!"VP", i32 1, i64 1963, i64 0, i64 1471, i64 8, i64 121, i64 513, i64 102, i64 16, i64 60}
!340 = !{!"branch_weights", i32 1962, i32 1}
!341 = !{!"branch_weights", i32 1, i32 9400094}
!342 = !{!"branch_weights", i32 0, i32 9400095}
!343 = !{!"branch_weights", i32 9398133, i32 1962}
!344 = distinct !{!344, !108, !109}
!345 = !{!"branch_weights", i32 1449, i32 628}
!346 = distinct !{!346, !108, !109}
!347 = !{!"branch_weights", i32 629, i32 0}
!348 = distinct !{!348, !108, !109}
!349 = !{!"branch_weights", i32 1, i32 628}
!350 = !{!"branch_weights", i32 628, i32 2909618}
!351 = distinct !{!351, !108, !109}
!352 = !{!"branch_weights", i32 98965, i32 628}
!353 = distinct !{!353, !108, !109}
!354 = !{!"function_entry_count", i64 1}
!355 = !{!"branch_weights", i32 127, i32 1}
!356 = !{!"branch_weights", i32 0, i32 3}
!357 = !{!"branch_weights", i32 3, i32 0}
!358 = !{!"branch_weights", i32 257, i32 127}
!359 = distinct !{!359, !108, !109}
!360 = !{!"branch_weights", i32 0, i32 2}
!361 = !{!"branch_weights", i32 129, i32 127}
!362 = distinct !{!362, !108, !109}
!363 = !{!"function_entry_count", i64 119395}
!364 = !{!"branch_weights", i32 19802, i32 99593}
!365 = !{!"branch_weights", i32 99592, i32 1}
!366 = !{!"branch_weights", i32 12, i32 298786}
!367 = !{!"branch_weights", i32 0, i32 298786}
!368 = !{!"branch_weights", i32 298690, i32 96}
!369 = !{!"branch_weights", i32 726, i32 298060}
!370 = !{!"VP", i32 0, i64 298060, i64 7829865813223954641, i64 99593, i64 7179636736624380763, i64 99230, i64 -3645261385341360516, i64 99230}
!371 = !{!"branch_weights", i32 0, i32 298060}
!372 = !{!"branch_weights", i32 199206, i32 99592}
!373 = distinct !{!373, !108, !109}
!374 = !{!"branch_weights", i32 19, i32 199186}
!375 = !{!"branch_weights", i32 99613, i32 99592}
!376 = !{!"branch_weights", i32 -1815300782, i32 24898}
!377 = !{!"branch_weights", i32 99592, i32 99613}
!378 = !{!"function_entry_count", i64 258}
!379 = !{!380, !92, i64 8}
!380 = !{!"rtl_bb_info", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !97, i64 32}
!381 = !{!"branch_weights", i32 258, i32 1983}
!382 = !{!"branch_weights", i32 1725, i32 258}
!383 = !{!120, !92, i64 248}
!384 = !{!385, !92, i64 8}
!385 = !{!"df_insn_info", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !97, i64 40}
!386 = !{!"branch_weights", i32 1, i32 1724}
!387 = !{!"branch_weights", i32 1724, i32 9227}
!388 = distinct !{!388, !108, !109}
!389 = !{!"branch_weights", i32 0, i32 10951}
!390 = !{!"branch_weights", i32 0, i32 2241}
!391 = distinct !{!391, !108, !109}
!392 = !{!"branch_weights", i32 1, i32 224}
!393 = !{!380, !92, i64 0}
!394 = !{!"branch_weights", i32 16, i32 1456}
!395 = !{!"branch_weights", i32 974, i32 482}
!396 = !{!"branch_weights", i32 1, i32 956}
!397 = !{!"branch_weights", i32 956, i32 541}
!398 = distinct !{!398, !108, !109}
!399 = !{!"branch_weights", i32 17, i32 1480}
!400 = !{!"branch_weights", i32 224, i32 1248}
!401 = distinct !{!401, !108, !109}
!402 = distinct !{!402, !108, !109}
!403 = !{!385, !92, i64 16}
!404 = distinct !{!404, !108, !109}
!405 = !{!385, !92, i64 24}
!406 = distinct !{!406, !108, !109}
!407 = distinct !{!407, !108, !109}
!408 = distinct !{!408, !109}
!409 = distinct !{!409, !108, !109}
!410 = distinct !{!410, !108, !109}
!411 = !{!112, !92, i64 112}
!412 = distinct !{!412, !108, !109}
!413 = !{!112, !92, i64 120}
!414 = distinct !{!414, !108, !109}
!415 = distinct !{!415, !108, !109}
!416 = !{!120, !97, i64 164}
!417 = !{!120, !97, i64 204}
!418 = !{!112, !92, i64 104}
!419 = distinct !{!419, !108, !109}
!420 = distinct !{!420, !108, !109}
!421 = distinct !{!421, !108, !109}
!422 = distinct !{!422, !108, !109}
!423 = !{!385, !97, i64 40}
!424 = !{!385, !92, i64 32}
!425 = !{!426, !97, i64 12}
!426 = !{!"df_mw_hardreg", !92, i64 0, !97, i64 8, !97, i64 10, !97, i64 12, !97, i64 16, !97, i64 20}
!427 = !{!426, !97, i64 16}
!428 = distinct !{!428, !108, !109}
!429 = !{!120, !92, i64 216}
!430 = !{!431, !92, i64 0}
!431 = !{!"df_reg_info", !92, i64 0, !97, i64 8}
!432 = !{!120, !92, i64 224}
!433 = !{!120, !92, i64 232}
!434 = !{!385, !92, i64 0}
!435 = !{!120, !92, i64 136}
!436 = !{!120, !92, i64 176}
