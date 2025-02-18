; ModuleID = 'bb-reorder.c'
source_filename = "bb-reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.bbro_basic_block_data_def = type { i32, i32, i32, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.trace = type { ptr, ptr, i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.fibnode = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"bb-reorder.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@uncond_jump_length = internal unnamed_addr global i32 0, align 4
@array_size = internal unnamed_addr global i32 0, align 4
@bbd = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"compgotos\00", align 1
@pass_duplicate_computed_gotos = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_duplicate_computed_gotos, ptr @duplicate_computed_gotos, ptr null, ptr null, i32 0, i32 162, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"bbro\00", align 1
@pass_reorder_blocks = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr @gate_handle_reorder_blocks, ptr @rest_of_handle_reorder_blocks, ptr null, ptr null, i32 0, i32 162, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"bbpart\00", align 1
@pass_partition_blocks = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr @gate_handle_partition_blocks, ptr @rest_of_handle_partition_blocks, ptr null, ptr null, i32 0, i32 162, i32 512, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@max_entry_frequency = internal unnamed_addr global i32 0, align 4
@max_entry_count = internal unnamed_addr global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"STC - round %d\0A\00", align 1
@exec_threshold = internal unnamed_addr constant [5 x i32] [i32 500, i32 200, i32 50, i32 0, i32 0], align 16
@branch_threshold = internal unnamed_addr constant [5 x i32] [i32 400, i32 200, i32 100, i32 0, i32 0], align 16
@.str.6 = private unnamed_addr constant [23 x i8] c"Trace %d (round %d):  \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d [%d] \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%d [%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Getting bb %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"  Possible start point of next round: %d (key: %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Basic block %d was visited in trace %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Changing key for bb %d from %ld to %ld.\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"  Possible start of %s round: %d (key: %ld)\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Rotating loop %d - %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Selecting BB %d\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [49 x i8] c"Block %d can't be copied because its size = %d.\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Duplicated bb %d (created bb %d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Growing the dynamic array to %d elements.\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Connection: %d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Connection: %d %d \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Final order:\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"multiple hot/cold transitions found (bb %i)\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@user_defined_section_attribute = external local_unnamed_addr global i8, align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !80 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !81
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !80 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !81
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !80 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !91

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !85
  %11 = load i8, ptr %3, align 1, !tbaa !92
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !80 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !91

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !85
  %11 = load i8, ptr %3, align 1, !tbaa !92
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !80 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !91

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !85
  %11 = load i8, ptr %3, align 1, !tbaa !92
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !80 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !81
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !80 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !91

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !93
  store i8 %12, ptr %4, align 1, !tbaa !92
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !80 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !91

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !93
  store i8 %12, ptr %4, align 1, !tbaa !92
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !80 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !91

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !93
  store i8 %12, ptr %4, align 1, !tbaa !92
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !80 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !80 {
  %2 = load i32, ptr %0, align 8, !tbaa !95
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !80 {
  %2 = load i32, ptr %0, align 8, !tbaa !95
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !80 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !96
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !80 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !96
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !80 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !80 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !80 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !80 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !97

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !80 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @reorder_basic_blocks() local_unnamed_addr #8 !prof !100 {
  %1 = tail call i32 @current_ir_type() #15
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %4, label %3, !prof !101

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1900, ptr noundef nonnull @.str.1) #15
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @cfun, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !104
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %1720, label %11, !prof !106

11:                                               ; preds = %4
  tail call void @set_edge_can_fallthru_flag() #15
  %12 = tail call zeroext i8 @mark_dfs_back_edges() #15
  %13 = load i32, ptr @uncond_jump_length, align 4, !tbaa !96
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !107

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @get_uncond_jump_length()
  store i32 %16, ptr @uncond_jump_length, align 4, !tbaa !96
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr @cfun, align 8, !tbaa !81
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !108
  %23 = sdiv i32 %22, 4
  %24 = mul i32 %23, 5
  %25 = add i32 %24, 5
  store i32 %25, ptr @array_size, align 4, !tbaa !96
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 5
  %28 = tail call ptr @xmalloc(i64 noundef %27) #15
  store ptr %28, ptr @bbd, align 8, !tbaa !81
  %29 = load i32, ptr @array_size, align 4, !tbaa !96
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %41, !prof !109

31:                                               ; preds = %17
  %32 = zext nneg i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %39, %33 ]
  %35 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %28, i64 %34
  store i32 -1, ptr %35, align 8, !tbaa !110
  %36 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %28, i64 %34, i32 2
  store i32 -1, ptr %36, align 8, !tbaa !112
  %37 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %28, i64 %34, i32 1
  store i32 -1, ptr %37, align 4, !tbaa !113
  %38 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %28, i64 %34, i32 3
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, %32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  br i1 %40, label %41, label %33, !prof !114, !llvm.loop !115

41:                                               ; preds = %33, %17
  %42 = load ptr, ptr @cfun, align 8, !tbaa !81
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !104
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, 24
  %49 = tail call ptr @xmalloc(i64 noundef %48) #15
  %50 = tail call ptr @fibheap_new() #15
  store i32 0, ptr @max_entry_frequency, align 4, !tbaa !96
  store i64 0, ptr @max_entry_count, align 8, !tbaa !116
  %51 = load ptr, ptr @cfun, align 8, !tbaa !81
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !102
  %54 = load ptr, ptr %53, align 8, !tbaa !117
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 1
  br label %56

56:                                               ; preds = %108, %41
  %57 = phi i32 [ 0, %41 ], [ %109, %108 ]
  %58 = load ptr, ptr %55, align 8, !tbaa !81
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60, !prof !118

60:                                               ; preds = %56
  %61 = load i32, ptr %58, align 8, !tbaa !119
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ 0, %56 ]
  %64 = icmp eq i32 %63, %57
  br i1 %64, label %69, label %65, !prof !121

65:                                               ; preds = %62
  %66 = zext i32 %57 to i64
  %67 = getelementptr inbounds %struct.VEC_edge_base, ptr %58, i64 0, i32 2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !81
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi ptr [ %68, %65 ], [ null, %62 ]
  br i1 %64, label %110, label %71, !prof !121

71:                                               ; preds = %69
  %72 = load ptr, ptr @bbd, align 8, !tbaa !81
  %73 = getelementptr inbounds %struct.edge_def, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !122
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !124
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %72, i64 %77, i32 3
  store ptr %50, ptr %78, align 8, !tbaa !126
  %79 = tail call fastcc i64 @bb_to_key(ptr noundef %74), !range !127
  %80 = load ptr, ptr %73, align 8, !tbaa !122
  %81 = tail call ptr @fibheap_insert(ptr noundef %50, i64 noundef %79, ptr noundef %80) #15
  %82 = load ptr, ptr @bbd, align 8, !tbaa !81
  %83 = load ptr, ptr %73, align 8, !tbaa !122
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !124
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %82, i64 %86, i32 4
  store ptr %81, ptr %87, align 8, !tbaa !128
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 11
  %89 = load i32, ptr %88, align 8, !tbaa !129
  %90 = load i32, ptr @max_entry_frequency, align 4, !tbaa !96
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93, !prof !101

92:                                               ; preds = %71
  store i32 %89, ptr @max_entry_frequency, align 4, !tbaa !96
  br label %93

93:                                               ; preds = %92, %71
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 8
  %95 = load i64, ptr %94, align 8, !tbaa !130
  %96 = load i64, ptr @max_entry_count, align 8, !tbaa !116
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %99, !prof !106

98:                                               ; preds = %93
  store i64 %95, ptr @max_entry_count, align 8, !tbaa !116
  br label %99

99:                                               ; preds = %98, %93
  %100 = load ptr, ptr %55, align 8, !tbaa !81
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !106

102:                                              ; preds = %99
  %103 = load i32, ptr %100, align 8, !tbaa !119
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i32 [ %103, %102 ], [ 0, %99 ]
  %106 = icmp ult i32 %57, %105
  br i1 %106, label %108, label %107, !prof !101

107:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %108

108:                                              ; preds = %107, %104
  %109 = add i32 %57, 1
  br label %56, !llvm.loop !131

110:                                              ; preds = %69, %1017
  %111 = phi i64 [ %1019, %1017 ], [ 0, %69 ]
  %112 = phi ptr [ %145, %1017 ], [ %50, %69 ]
  %113 = phi i32 [ %1018, %1017 ], [ 0, %69 ]
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116, !prof !132

116:                                              ; preds = %110
  %117 = trunc i64 %111 to i32
  %118 = add i32 %117, 1
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %114, ptr noundef nonnull @.str.5, i32 noundef %118)
  br label %120

120:                                              ; preds = %116, %110
  %121 = load i64, ptr @max_entry_count, align 8, !tbaa !116
  %122 = icmp slt i64 %121, 2147483
  br i1 %122, label %123, label %129, !prof !132

123:                                              ; preds = %120
  %124 = getelementptr inbounds [5 x i32], ptr @exec_threshold, i64 0, i64 %111
  %125 = load i32, ptr %124, align 4, !tbaa !96
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %121, %126
  %128 = sdiv i64 %127, 1000
  br label %135

129:                                              ; preds = %120
  %130 = udiv i64 %121, 1000
  %131 = getelementptr inbounds [5 x i32], ptr @exec_threshold, i64 0, i64 %111
  %132 = load i32, ptr %131, align 4, !tbaa !96
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %130, %133
  br label %135

135:                                              ; preds = %129, %123
  %136 = phi i64 [ %128, %123 ], [ %134, %129 ]
  %137 = getelementptr inbounds [5 x i32], ptr @branch_threshold, i64 0, i64 %111
  %138 = load i32, ptr %137, align 4, !tbaa !96
  %139 = mul nsw i32 %138, 10
  %140 = load i32, ptr @max_entry_frequency, align 4, !tbaa !96
  %141 = getelementptr inbounds [5 x i32], ptr @exec_threshold, i64 0, i64 %111
  %142 = load i32, ptr %141, align 4, !tbaa !96
  %143 = mul nsw i32 %142, %140
  %144 = sdiv i32 %143, 1000
  %145 = tail call ptr @fibheap_new() #15
  %146 = tail call i32 @fibheap_empty(ptr noundef %112) #15
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %1017, !prof !109

148:                                              ; preds = %135
  %149 = icmp ne i64 %111, 3
  %150 = trunc i64 %111 to i32
  br label %151

151:                                              ; preds = %148, %1013
  %152 = phi i32 [ %113, %148 ], [ %1014, %1013 ]
  %153 = tail call ptr @fibheap_extract_min(ptr noundef %112) #15
  %154 = load ptr, ptr @bbd, align 8, !tbaa !81
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 9
  %156 = load i32, ptr %155, align 8, !tbaa !124
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %154, i64 %157, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %158, i8 0, i64 16, i1 false)
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161, !prof !133

161:                                              ; preds = %151
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %159, ptr noundef nonnull @.str.10, i32 noundef %156)
  br label %163

163:                                              ; preds = %161, %151
  %164 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 11
  %165 = load i32, ptr %164, align 8, !tbaa !129
  %166 = icmp slt i32 %165, %144
  br i1 %166, label %174, label %167, !prof !134

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %153, i64 0, i32 8
  %169 = load i64, ptr %168, align 8, !tbaa !130
  %170 = icmp slt i64 %169, %136
  br i1 %170, label %174, label %171, !prof !135

171:                                              ; preds = %167
  %172 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %153) #15
  %173 = icmp ne i8 %172, 0
  br label %174

174:                                              ; preds = %171, %167, %163
  %175 = phi i1 [ true, %167 ], [ true, %163 ], [ %173, %171 ]
  %176 = select i1 %149, i1 %175, i1 false, !prof !136
  br i1 %176, label %177, label %193, !prof !134

177:                                              ; preds = %174
  %178 = tail call fastcc i64 @bb_to_key(ptr noundef %153), !range !127
  %179 = load ptr, ptr @bbd, align 8, !tbaa !81
  %180 = load i32, ptr %155, align 8, !tbaa !124
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %179, i64 %181, i32 3
  store ptr %145, ptr %182, align 8, !tbaa !126
  %183 = tail call ptr @fibheap_insert(ptr noundef %145, i64 noundef %178, ptr noundef %153) #15
  %184 = load ptr, ptr @bbd, align 8, !tbaa !81
  %185 = load i32, ptr %155, align 8, !tbaa !124
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %184, i64 %186, i32 4
  store ptr %183, ptr %187, align 8, !tbaa !128
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %189 = icmp eq ptr %188, null
  br i1 %189, label %1013, label %190, !prof !137

190:                                              ; preds = %177
  %191 = trunc i64 %178 to i32
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %188, ptr noundef nonnull @.str.11, i32 noundef %185, i32 noundef %191)
  br label %1013

193:                                              ; preds = %174
  %194 = sext i32 %152 to i64
  %195 = getelementptr inbounds %struct.trace, ptr %49, i64 %194
  store ptr %153, ptr %195, align 8, !tbaa !138
  %196 = getelementptr inbounds %struct.trace, ptr %49, i64 %194, i32 2
  store i32 %150, ptr %196, align 8, !tbaa !140
  %197 = getelementptr inbounds %struct.trace, ptr %49, i64 %194, i32 3
  store i32 0, ptr %197, align 4, !tbaa !141
  %198 = load ptr, ptr @bbd, align 8, !tbaa !81
  %199 = load i32, ptr %155, align 8, !tbaa !124
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %198, i64 %200, i32 2
  store i32 %152, ptr %201, align 8, !tbaa !112
  %202 = add nsw i32 %152, 1
  br label %203

203:                                              ; preds = %917, %193
  %204 = phi ptr [ %153, %193 ], [ %920, %917 ]
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 7
  %206 = load ptr, ptr %205, align 8, !tbaa !92
  %207 = getelementptr inbounds %struct.rtl_bb_info, ptr %206, i64 0, i32 4
  store i32 %202, ptr %207, align 8, !tbaa !142
  %208 = load ptr, ptr @bbd, align 8, !tbaa !81
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !124
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %208, i64 %211, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !126
  %214 = icmp eq ptr %213, null
  br i1 %214, label %223, label %215, !prof !144

215:                                              ; preds = %203
  %216 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %208, i64 %211, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !128
  %218 = tail call ptr @fibheap_delete_node(ptr noundef nonnull %213, ptr noundef %217) #15
  %219 = load ptr, ptr @bbd, align 8, !tbaa !81
  %220 = load i32, ptr %209, align 8, !tbaa !124
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %219, i64 %221, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %222, i8 0, i64 16, i1 false)
  br label %223

223:                                              ; preds = %215, %203
  %224 = load i32, ptr %197, align 4, !tbaa !141
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %197, align 4, !tbaa !141
  %226 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228, !prof !145

228:                                              ; preds = %223
  %229 = load i32, ptr %209, align 8, !tbaa !124
  %230 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %226, ptr noundef nonnull @.str.12, i32 noundef %229, i32 noundef %152)
  br label %231

231:                                              ; preds = %228, %223
  %232 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef %204) #15
  %233 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 1
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 13
  %235 = icmp eq i8 %232, 0
  br label %236

236:                                              ; preds = %364, %231
  %237 = phi i32 [ 0, %231 ], [ %365, %364 ]
  %238 = phi i32 [ -1073741824, %231 ], [ %353, %364 ]
  %239 = phi i32 [ -1073741824, %231 ], [ %354, %364 ]
  %240 = phi ptr [ null, %231 ], [ %355, %364 ]
  %241 = load ptr, ptr %233, align 8, !tbaa !81
  %242 = icmp eq ptr %241, null
  br i1 %242, label %245, label %243, !prof !146

243:                                              ; preds = %236
  %244 = load i32, ptr %241, align 8, !tbaa !119
  br label %245

245:                                              ; preds = %243, %236
  %246 = phi i32 [ %244, %243 ], [ 0, %236 ]
  %247 = icmp eq i32 %246, %237
  br i1 %247, label %252, label %248, !prof !147

248:                                              ; preds = %245
  %249 = zext i32 %237 to i64
  %250 = getelementptr inbounds %struct.VEC_edge_base, ptr %241, i64 0, i32 2, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !81
  br label %252

252:                                              ; preds = %248, %245
  %253 = phi ptr [ %251, %248 ], [ null, %245 ]
  br i1 %247, label %366, label %254, !prof !147

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.edge_def, ptr %253, i64 0, i32 7
  %256 = load i32, ptr %255, align 8, !tbaa !148
  %257 = and i32 %256, 16
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %260, label %259, !prof !149

259:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 496, ptr noundef nonnull @.str.1) #15
  br label %260

260:                                              ; preds = %259, %254
  %261 = getelementptr inbounds %struct.edge_def, ptr %253, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !122
  %263 = load ptr, ptr @cfun, align 8, !tbaa !81
  %264 = getelementptr inbounds %struct.function, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !102
  %266 = getelementptr inbounds %struct.control_flow_graph, ptr %265, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !150
  %268 = icmp eq ptr %262, %267
  br i1 %268, label %352, label %269, !prof !151

269:                                              ; preds = %260
  %270 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !92
  %272 = getelementptr inbounds %struct.rtl_bb_info, ptr %271, i64 0, i32 4
  %273 = load i32, ptr %272, align 8, !tbaa !142
  %274 = icmp eq i32 %273, 0
  %275 = icmp eq i32 %273, %202
  %276 = select i1 %274, i1 true, i1 %275, !prof !152
  br i1 %276, label %277, label %352, !prof !152

277:                                              ; preds = %269
  %278 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 13
  %279 = load i32, ptr %278, align 8, !tbaa !153
  %280 = load i32, ptr %234, align 8, !tbaa !153
  %281 = xor i32 %280, %279
  %282 = and i32 %281, 96
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %352, !prof !154

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct.edge_def, ptr %253, i64 0, i32 8
  %286 = load i32, ptr %285, align 4, !tbaa !155
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 11
  %288 = load i32, ptr %287, align 8, !tbaa !129
  %289 = load i32, ptr %255, align 8, !tbaa !148
  br i1 %235, label %294, label %290, !prof !156

290:                                              ; preds = %284
  %291 = and i32 %289, 64
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %352, label %293, !prof !157

293:                                              ; preds = %290
  br label %352

294:                                              ; preds = %284
  %295 = and i32 %289, 78
  %296 = icmp ne i32 %295, 64
  %297 = icmp slt i32 %286, %139
  %298 = select i1 %296, i1 true, i1 %297, !prof !158
  br i1 %298, label %352, label %299, !prof !159

299:                                              ; preds = %294
  %300 = load ptr, ptr %253, align 8, !tbaa !160
  %301 = getelementptr inbounds %struct.basic_block_def, ptr %300, i64 0, i32 11
  %302 = load i32, ptr %301, align 8, !tbaa !129
  %303 = mul nsw i32 %302, %286
  %304 = add nsw i32 %303, 5000
  %305 = sdiv i32 %304, 10000
  %306 = icmp slt i32 %305, %144
  br i1 %306, label %352, label %307, !prof !161

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct.edge_def, ptr %253, i64 0, i32 9
  %309 = load i64, ptr %308, align 8, !tbaa !162
  %310 = icmp slt i64 %309, %136
  br i1 %310, label %352, label %311, !prof !163

311:                                              ; preds = %307
  %312 = sdiv i32 %239, 10
  %313 = sdiv i32 %238, 10
  %314 = add nsw i32 %312, %239
  %315 = icmp slt i32 %314, %286
  br i1 %315, label %331, label %316, !prof !164

316:                                              ; preds = %311
  %317 = sub nsw i32 %239, %312
  %318 = icmp sgt i32 %317, %286
  br i1 %318, label %331, label %319, !prof !165

319:                                              ; preds = %316
  %320 = sub nsw i32 %238, %313
  %321 = icmp sgt i32 %320, %288
  br i1 %321, label %331, label %322, !prof !166

322:                                              ; preds = %319
  %323 = add nsw i32 %313, %238
  %324 = icmp slt i32 %323, %288
  br i1 %324, label %331, label %325, !prof !167

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 5
  %327 = load ptr, ptr %326, align 8, !tbaa !168
  %328 = icmp ne ptr %327, %204
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i8
  br label %331

331:                                              ; preds = %325, %322, %319, %316, %311
  %332 = phi i1 [ false, %311 ], [ true, %316 ], [ false, %319 ], [ true, %322 ], [ %328, %325 ]
  %333 = phi i8 [ 1, %311 ], [ 0, %316 ], [ 1, %319 ], [ 0, %322 ], [ %330, %325 ]
  %334 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %335 = icmp ne i32 %334, 0
  %336 = select i1 %332, i1 %335, i1 false, !prof !169
  %337 = icmp ne ptr %240, null
  %338 = and i1 %337, %336
  br i1 %338, label %339, label %348, !prof !163

339:                                              ; preds = %331
  %340 = getelementptr inbounds %struct.edge_def, ptr %240, i64 0, i32 7
  %341 = load i32, ptr %340, align 8, !tbaa !148
  %342 = and i32 %341, 8192
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %348, label %344

344:                                              ; preds = %339
  %345 = and i32 %289, 8192
  %346 = icmp eq i32 %345, 0
  %347 = zext i1 %346 to i8
  br label %348

348:                                              ; preds = %344, %339, %331
  %349 = phi i8 [ 0, %339 ], [ %333, %331 ], [ %347, %344 ]
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %352, label %351, !prof !169

351:                                              ; preds = %348
  br label %352

352:                                              ; preds = %269, %351, %348, %307, %299, %294, %293, %290, %277, %260
  %353 = phi i32 [ %238, %260 ], [ %238, %277 ], [ %288, %293 ], [ %238, %290 ], [ %238, %299 ], [ %238, %307 ], [ %288, %351 ], [ %238, %348 ], [ %238, %294 ], [ %238, %269 ]
  %354 = phi i32 [ %239, %260 ], [ %239, %277 ], [ %286, %293 ], [ %239, %290 ], [ %239, %299 ], [ %239, %307 ], [ %286, %351 ], [ %239, %348 ], [ %239, %294 ], [ %239, %269 ]
  %355 = phi ptr [ %240, %260 ], [ %240, %277 ], [ %253, %293 ], [ %240, %290 ], [ %240, %299 ], [ %240, %307 ], [ %253, %351 ], [ %240, %348 ], [ %240, %294 ], [ %240, %269 ]
  %356 = load ptr, ptr %233, align 8, !tbaa !81
  %357 = icmp eq ptr %356, null
  br i1 %357, label %360, label %358, !prof !170

358:                                              ; preds = %352
  %359 = load i32, ptr %356, align 8, !tbaa !119
  br label %360

360:                                              ; preds = %358, %352
  %361 = phi i32 [ %359, %358 ], [ 0, %352 ]
  %362 = icmp ult i32 %237, %361
  br i1 %362, label %364, label %363, !prof !149

363:                                              ; preds = %360
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %364

364:                                              ; preds = %363, %360
  %365 = add i32 %237, 1
  br label %236, !llvm.loop !171

366:                                              ; preds = %252
  %367 = icmp eq ptr %240, null
  br i1 %367, label %382, label %368, !prof !172

368:                                              ; preds = %366
  %369 = getelementptr inbounds %struct.edge_def, ptr %240, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !122
  %371 = load ptr, ptr %370, align 8, !tbaa !173
  %372 = icmp eq ptr %371, null
  br i1 %372, label %375, label %373, !prof !174

373:                                              ; preds = %368
  %374 = load i32, ptr %371, align 8, !tbaa !119
  br label %375

375:                                              ; preds = %373, %368
  %376 = phi i32 [ %374, %373 ], [ 0, %368 ]
  %377 = icmp ugt i32 %376, 1
  br i1 %377, label %378, label %382, !prof !175

378:                                              ; preds = %375
  %379 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef nonnull %370, i32 noundef 0), !range !176
  %380 = icmp eq i8 %379, 0
  %381 = select i1 %380, ptr %240, ptr null, !prof !177
  br label %382

382:                                              ; preds = %378, %375, %366
  %383 = phi ptr [ %240, %375 ], [ null, %366 ], [ %381, %378 ]
  br label %384

384:                                              ; preds = %514, %382
  %385 = phi i32 [ 0, %382 ], [ %515, %514 ]
  %386 = load ptr, ptr %233, align 8, !tbaa !81
  %387 = icmp eq ptr %386, null
  br i1 %387, label %390, label %388, !prof !146

388:                                              ; preds = %384
  %389 = load i32, ptr %386, align 8, !tbaa !119
  br label %390

390:                                              ; preds = %388, %384
  %391 = phi i32 [ %389, %388 ], [ 0, %384 ]
  %392 = icmp eq i32 %391, %385
  br i1 %392, label %397, label %393, !prof !147

393:                                              ; preds = %390
  %394 = zext i32 %385 to i64
  %395 = getelementptr inbounds %struct.VEC_edge_base, ptr %386, i64 0, i32 2, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !81
  br label %397

397:                                              ; preds = %393, %390
  %398 = phi ptr [ %396, %393 ], [ null, %390 ]
  br i1 %392, label %516, label %399, !prof !147

399:                                              ; preds = %397
  %400 = icmp eq ptr %398, %383
  br i1 %400, label %505, label %401, !prof !178

401:                                              ; preds = %399
  %402 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !122
  %404 = load ptr, ptr @cfun, align 8, !tbaa !81
  %405 = getelementptr inbounds %struct.function, ptr %404, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !102
  %407 = getelementptr inbounds %struct.control_flow_graph, ptr %406, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !150
  %409 = icmp eq ptr %403, %408
  br i1 %409, label %505, label %410, !prof !179

410:                                              ; preds = %401
  %411 = getelementptr inbounds %struct.basic_block_def, ptr %403, i64 0, i32 7
  %412 = load ptr, ptr %411, align 8, !tbaa !92
  %413 = getelementptr inbounds %struct.rtl_bb_info, ptr %412, i64 0, i32 4
  %414 = load i32, ptr %413, align 8, !tbaa !142
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %505, !prof !180

416:                                              ; preds = %410
  %417 = tail call fastcc i64 @bb_to_key(ptr noundef %403), !range !127
  %418 = load ptr, ptr @bbd, align 8, !tbaa !81
  %419 = load ptr, ptr %402, align 8, !tbaa !122
  %420 = getelementptr inbounds %struct.basic_block_def, ptr %419, i64 0, i32 9
  %421 = load i32, ptr %420, align 8, !tbaa !124
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %418, i64 %422, i32 3
  %424 = load ptr, ptr %423, align 8, !tbaa !126
  %425 = icmp eq ptr %424, null
  br i1 %425, label %448, label %426, !prof !181

426:                                              ; preds = %416
  %427 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %418, i64 %422, i32 4
  %428 = load ptr, ptr %427, align 8, !tbaa !128
  %429 = getelementptr inbounds %struct.fibnode, ptr %428, i64 0, i32 4
  %430 = load i64, ptr %429, align 8, !tbaa !182
  %431 = icmp eq i64 %417, %430
  br i1 %431, label %505, label %432, !prof !184

432:                                              ; preds = %426
  %433 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %434 = icmp eq ptr %433, null
  br i1 %434, label %437, label %435

435:                                              ; preds = %432
  %436 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %433, ptr noundef nonnull @.str.13, i32 noundef %421, i64 noundef %430, i64 noundef %417)
  br label %437

437:                                              ; preds = %435, %432
  %438 = load ptr, ptr @bbd, align 8, !tbaa !81
  %439 = load ptr, ptr %402, align 8, !tbaa !122
  %440 = getelementptr inbounds %struct.basic_block_def, ptr %439, i64 0, i32 9
  %441 = load i32, ptr %440, align 8, !tbaa !124
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %438, i64 %442, i32 3
  %444 = load ptr, ptr %443, align 8, !tbaa !126
  %445 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %438, i64 %442, i32 4
  %446 = load ptr, ptr %445, align 8, !tbaa !128
  %447 = tail call i64 @fibheap_replace_key(ptr noundef %444, ptr noundef %446, i64 noundef %417) #15
  br label %505

448:                                              ; preds = %416
  %449 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 8
  %450 = load i32, ptr %449, align 4, !tbaa !155
  %451 = load ptr, ptr %398, align 8, !tbaa !160
  %452 = getelementptr inbounds %struct.basic_block_def, ptr %451, i64 0, i32 11
  %453 = load i32, ptr %452, align 8, !tbaa !129
  %454 = mul nsw i32 %453, %450
  %455 = add nsw i32 %454, 5000
  %456 = sdiv i32 %455, 10000
  %457 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 7
  %458 = load i32, ptr %457, align 8, !tbaa !148
  %459 = and i32 %458, 78
  %460 = icmp ne i32 %459, 64
  %461 = icmp slt i32 %450, %139
  %462 = select i1 %460, i1 true, i1 %461, !prof !185
  %463 = icmp slt i32 %456, %144
  %464 = select i1 %462, i1 true, i1 %463, !prof !186
  br i1 %464, label %469, label %465, !prof !187

465:                                              ; preds = %448
  %466 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 9
  %467 = load i64, ptr %466, align 8, !tbaa !162
  %468 = icmp slt i64 %467, %136
  br i1 %468, label %469, label %484, !prof !188

469:                                              ; preds = %465, %448
  %470 = getelementptr inbounds %struct.basic_block_def, ptr %419, i64 0, i32 11
  %471 = load i32, ptr %470, align 8, !tbaa !129
  %472 = icmp slt i32 %471, %144
  br i1 %472, label %480, label %473, !prof !189

473:                                              ; preds = %469
  %474 = getelementptr inbounds %struct.basic_block_def, ptr %419, i64 0, i32 8
  %475 = load i64, ptr %474, align 8, !tbaa !130
  %476 = icmp slt i64 %475, %136
  br i1 %476, label %480, label %477, !prof !190

477:                                              ; preds = %473
  %478 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %419) #15
  %479 = icmp ne i8 %478, 0
  br label %480

480:                                              ; preds = %477, %473, %469
  %481 = phi i1 [ true, %473 ], [ true, %469 ], [ %479, %477 ]
  %482 = select i1 %149, i1 %481, i1 false, !prof !191
  %483 = select i1 %482, ptr %145, ptr %112, !prof !189
  br label %484

484:                                              ; preds = %480, %465
  %485 = phi ptr [ %112, %465 ], [ %483, %480 ]
  %486 = load ptr, ptr @bbd, align 8, !tbaa !81
  %487 = load ptr, ptr %402, align 8, !tbaa !122
  %488 = getelementptr inbounds %struct.basic_block_def, ptr %487, i64 0, i32 9
  %489 = load i32, ptr %488, align 8, !tbaa !124
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %486, i64 %490, i32 3
  store ptr %485, ptr %491, align 8, !tbaa !126
  %492 = tail call ptr @fibheap_insert(ptr noundef %485, i64 noundef %417, ptr noundef %487) #15
  %493 = load ptr, ptr @bbd, align 8, !tbaa !81
  %494 = load ptr, ptr %402, align 8, !tbaa !122
  %495 = getelementptr inbounds %struct.basic_block_def, ptr %494, i64 0, i32 9
  %496 = load i32, ptr %495, align 8, !tbaa !124
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %493, i64 %497, i32 4
  store ptr %492, ptr %498, align 8, !tbaa !128
  %499 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %500 = icmp eq ptr %499, null
  br i1 %500, label %505, label %501, !prof !192

501:                                              ; preds = %484
  %502 = icmp eq ptr %485, %145
  %503 = select i1 %502, ptr @.str.15, ptr @.str.16
  %504 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %499, ptr noundef nonnull @.str.14, ptr noundef nonnull %503, i32 noundef %496, i64 noundef %417)
  br label %505

505:                                              ; preds = %501, %484, %437, %426, %410, %401, %399
  %506 = load ptr, ptr %233, align 8, !tbaa !81
  %507 = icmp eq ptr %506, null
  br i1 %507, label %510, label %508, !prof !170

508:                                              ; preds = %505
  %509 = load i32, ptr %506, align 8, !tbaa !119
  br label %510

510:                                              ; preds = %508, %505
  %511 = phi i32 [ %509, %508 ], [ 0, %505 ]
  %512 = icmp ult i32 %385, %511
  br i1 %512, label %514, label %513, !prof !149

513:                                              ; preds = %510
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %514

514:                                              ; preds = %513, %510
  %515 = add i32 %385, 1
  br label %384, !llvm.loop !193

516:                                              ; preds = %397
  %517 = icmp eq ptr %383, null
  br i1 %517, label %917, label %518, !prof !194

518:                                              ; preds = %516
  %519 = getelementptr inbounds %struct.edge_def, ptr %383, i64 0, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !122
  %521 = getelementptr inbounds %struct.basic_block_def, ptr %520, i64 0, i32 7
  %522 = load ptr, ptr %521, align 8, !tbaa !92
  %523 = getelementptr inbounds %struct.rtl_bb_info, ptr %522, i64 0, i32 4
  %524 = load i32, ptr %523, align 8, !tbaa !142
  %525 = icmp eq i32 %524, %202
  br i1 %525, label %526, label %776, !prof !195

526:                                              ; preds = %518
  %527 = icmp eq ptr %520, %204
  br i1 %527, label %917, label %528

528:                                              ; preds = %526
  %529 = load ptr, ptr %383, align 8, !tbaa !160
  %530 = getelementptr inbounds %struct.basic_block_def, ptr %529, i64 0, i32 11
  %531 = load i32, ptr %530, align 8, !tbaa !129
  %532 = getelementptr inbounds %struct.edge_def, ptr %383, i64 0, i32 8
  %533 = load i32, ptr %532, align 4, !tbaa !155
  %534 = mul nsw i32 %533, %531
  %535 = add nsw i32 %534, 5000
  %536 = sdiv i32 %535, 10000
  %537 = getelementptr inbounds %struct.basic_block_def, ptr %520, i64 0, i32 11
  %538 = load i32, ptr %537, align 8, !tbaa !129
  %539 = shl nsw i32 %538, 2
  %540 = sdiv i32 %539, 5
  %541 = icmp sgt i32 %536, %540
  br i1 %541, label %542, label %758

542:                                              ; preds = %528
  %543 = load ptr, ptr @cfun, align 8, !tbaa !81
  %544 = getelementptr inbounds %struct.function, ptr %543, i64 0, i32 1
  %545 = load ptr, ptr %544, align 8, !tbaa !102
  %546 = load ptr, ptr %545, align 8, !tbaa !117
  %547 = getelementptr inbounds %struct.basic_block_def, ptr %546, i64 0, i32 6
  %548 = load ptr, ptr %547, align 8, !tbaa !196
  %549 = icmp eq ptr %520, %548
  br i1 %549, label %917, label %550

550:                                              ; preds = %542
  %551 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %552 = icmp eq ptr %551, null
  br i1 %552, label %558, label %553

553:                                              ; preds = %550
  %554 = getelementptr inbounds %struct.basic_block_def, ptr %520, i64 0, i32 9
  %555 = load i32, ptr %554, align 8, !tbaa !124
  %556 = load i32, ptr %209, align 8, !tbaa !124
  %557 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %551, ptr noundef nonnull @.str.17, i32 noundef %555, i32 noundef %556)
  br label %558

558:                                              ; preds = %553, %550
  %559 = load ptr, ptr %519, align 8, !tbaa !122
  %560 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 2
  store ptr %559, ptr %560, align 8, !tbaa !197
  %561 = load ptr, ptr @bbd, align 8, !tbaa !81
  %562 = getelementptr inbounds %struct.basic_block_def, ptr %559, i64 0, i32 9
  %563 = load i32, ptr %562, align 8, !tbaa !124
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %561, i64 %564, i32 2
  store i32 %152, ptr %565, align 8, !tbaa !112
  br label %566

566:                                              ; preds = %693, %558
  %567 = phi i8 [ 0, %558 ], [ %576, %693 ]
  %568 = phi i64 [ -1, %558 ], [ %577, %693 ]
  %569 = phi i32 [ -1, %558 ], [ %578, %693 ]
  %570 = phi ptr [ null, %558 ], [ %579, %693 ]
  %571 = phi ptr [ null, %558 ], [ %580, %693 ]
  %572 = phi ptr [ %559, %558 ], [ %695, %693 ]
  %573 = getelementptr inbounds %struct.basic_block_def, ptr %572, i64 0, i32 1
  br label %574

574:                                              ; preds = %691, %566
  %575 = phi i32 [ 0, %566 ], [ %692, %691 ]
  %576 = phi i8 [ %567, %566 ], [ %680, %691 ]
  %577 = phi i64 [ %568, %566 ], [ %681, %691 ]
  %578 = phi i32 [ %569, %566 ], [ %682, %691 ]
  %579 = phi ptr [ %570, %566 ], [ %683, %691 ]
  %580 = phi ptr [ %571, %566 ], [ %684, %691 ]
  %581 = load ptr, ptr %573, align 8, !tbaa !81
  %582 = icmp eq ptr %581, null
  br i1 %582, label %585, label %583

583:                                              ; preds = %574
  %584 = load i32, ptr %581, align 8, !tbaa !119
  br label %585

585:                                              ; preds = %583, %574
  %586 = phi i32 [ %584, %583 ], [ 0, %574 ]
  %587 = icmp eq i32 %586, %575
  br i1 %587, label %592, label %588

588:                                              ; preds = %585
  %589 = zext i32 %575 to i64
  %590 = getelementptr inbounds %struct.VEC_edge_base, ptr %581, i64 0, i32 2, i64 %589
  %591 = load ptr, ptr %590, align 8, !tbaa !81
  br label %592

592:                                              ; preds = %588, %585
  %593 = phi ptr [ %591, %588 ], [ null, %585 ]
  br i1 %587, label %693, label %594

594:                                              ; preds = %592
  %595 = getelementptr inbounds %struct.edge_def, ptr %593, i64 0, i32 1
  %596 = load ptr, ptr %595, align 8, !tbaa !122
  %597 = load ptr, ptr @cfun, align 8, !tbaa !81
  %598 = getelementptr inbounds %struct.function, ptr %597, i64 0, i32 1
  %599 = load ptr, ptr %598, align 8, !tbaa !102
  %600 = getelementptr inbounds %struct.control_flow_graph, ptr %599, i64 0, i32 1
  %601 = load ptr, ptr %600, align 8, !tbaa !150
  %602 = icmp eq ptr %596, %601
  br i1 %602, label %679, label %603

603:                                              ; preds = %594
  %604 = getelementptr inbounds %struct.basic_block_def, ptr %596, i64 0, i32 7
  %605 = load ptr, ptr %604, align 8, !tbaa !92
  %606 = getelementptr inbounds %struct.rtl_bb_info, ptr %605, i64 0, i32 4
  %607 = load i32, ptr %606, align 8, !tbaa !142
  %608 = icmp eq i32 %607, %202
  br i1 %608, label %679, label %609

609:                                              ; preds = %603
  %610 = getelementptr inbounds %struct.edge_def, ptr %593, i64 0, i32 7
  %611 = load i32, ptr %610, align 8, !tbaa !148
  %612 = and i32 %611, 78
  %613 = icmp eq i32 %612, 64
  br i1 %613, label %614, label %679

614:                                              ; preds = %609
  %615 = icmp eq i8 %576, 0
  %616 = icmp eq i32 %607, 0
  br i1 %615, label %640, label %617

617:                                              ; preds = %614
  br i1 %616, label %626, label %618

618:                                              ; preds = %617
  %619 = load ptr, ptr @bbd, align 8, !tbaa !81
  %620 = getelementptr inbounds %struct.basic_block_def, ptr %596, i64 0, i32 9
  %621 = load i32, ptr %620, align 8, !tbaa !124
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %619, i64 %622
  %624 = load i32, ptr %623, align 8, !tbaa !110
  %625 = icmp sgt i32 %624, -1
  br i1 %625, label %626, label %679

626:                                              ; preds = %618, %617
  %627 = load ptr, ptr %593, align 8, !tbaa !160
  %628 = getelementptr inbounds %struct.basic_block_def, ptr %627, i64 0, i32 11
  %629 = load i32, ptr %628, align 8, !tbaa !129
  %630 = getelementptr inbounds %struct.edge_def, ptr %593, i64 0, i32 8
  %631 = load i32, ptr %630, align 4, !tbaa !155
  %632 = mul nsw i32 %631, %629
  %633 = add nsw i32 %632, 5000
  %634 = sdiv i32 %633, 10000
  %635 = icmp sgt i32 %634, %578
  br i1 %635, label %674, label %636

636:                                              ; preds = %626
  %637 = getelementptr inbounds %struct.edge_def, ptr %593, i64 0, i32 9
  %638 = load i64, ptr %637, align 8, !tbaa !162
  %639 = icmp sgt i64 %638, %577
  br i1 %639, label %674, label %679

640:                                              ; preds = %614
  br i1 %616, label %649, label %641

641:                                              ; preds = %640
  %642 = load ptr, ptr @bbd, align 8, !tbaa !81
  %643 = getelementptr inbounds %struct.basic_block_def, ptr %596, i64 0, i32 9
  %644 = load i32, ptr %643, align 8, !tbaa !124
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %642, i64 %645
  %647 = load i32, ptr %646, align 8, !tbaa !110
  %648 = icmp sgt i32 %647, -1
  br i1 %648, label %649, label %658

649:                                              ; preds = %641, %640
  %650 = load ptr, ptr %593, align 8, !tbaa !160
  %651 = getelementptr inbounds %struct.basic_block_def, ptr %650, i64 0, i32 11
  %652 = load i32, ptr %651, align 8, !tbaa !129
  %653 = getelementptr inbounds %struct.edge_def, ptr %593, i64 0, i32 8
  %654 = load i32, ptr %653, align 4, !tbaa !155
  %655 = mul nsw i32 %654, %652
  %656 = add nsw i32 %655, 5000
  %657 = sdiv i32 %656, 10000
  br label %674

658:                                              ; preds = %641
  %659 = load ptr, ptr %593, align 8, !tbaa !160
  %660 = getelementptr inbounds %struct.basic_block_def, ptr %659, i64 0, i32 11
  %661 = load i32, ptr %660, align 8, !tbaa !129
  %662 = getelementptr inbounds %struct.edge_def, ptr %593, i64 0, i32 8
  %663 = load i32, ptr %662, align 4, !tbaa !155
  %664 = mul nsw i32 %663, %661
  %665 = add nsw i32 %664, 5000
  %666 = sdiv i32 %665, 10000
  %667 = icmp eq ptr %579, null
  %668 = icmp sgt i32 %666, %578
  %669 = select i1 %667, i1 true, i1 %668
  br i1 %669, label %674, label %670

670:                                              ; preds = %658
  %671 = getelementptr inbounds %struct.edge_def, ptr %593, i64 0, i32 9
  %672 = load i64, ptr %671, align 8, !tbaa !162
  %673 = icmp sgt i64 %672, %577
  br i1 %673, label %674, label %679

674:                                              ; preds = %658, %670, %626, %636, %649
  %675 = phi i8 [ 1, %649 ], [ 1, %636 ], [ 1, %626 ], [ 0, %670 ], [ 0, %658 ]
  %676 = phi i32 [ %657, %649 ], [ %634, %636 ], [ %634, %626 ], [ %666, %670 ], [ %666, %658 ]
  %677 = getelementptr inbounds %struct.edge_def, ptr %593, i64 0, i32 9
  %678 = load i64, ptr %677, align 8, !tbaa !162
  br label %679

679:                                              ; preds = %674, %636, %670, %618, %609, %603, %594
  %680 = phi i8 [ 1, %618 ], [ %576, %609 ], [ %576, %603 ], [ %576, %594 ], [ 0, %670 ], [ 1, %636 ], [ %675, %674 ]
  %681 = phi i64 [ %577, %618 ], [ %577, %609 ], [ %577, %603 ], [ %577, %594 ], [ %577, %670 ], [ %577, %636 ], [ %678, %674 ]
  %682 = phi i32 [ %578, %618 ], [ %578, %609 ], [ %578, %603 ], [ %578, %594 ], [ %578, %670 ], [ %578, %636 ], [ %676, %674 ]
  %683 = phi ptr [ %579, %618 ], [ %579, %609 ], [ %579, %603 ], [ %579, %594 ], [ %579, %670 ], [ %579, %636 ], [ %593, %674 ]
  %684 = phi ptr [ %580, %618 ], [ %580, %609 ], [ %580, %603 ], [ %580, %594 ], [ %580, %670 ], [ %580, %636 ], [ %572, %674 ]
  br i1 %582, label %687, label %685

685:                                              ; preds = %679
  %686 = load i32, ptr %581, align 8, !tbaa !119
  br label %687

687:                                              ; preds = %685, %679
  %688 = phi i32 [ %686, %685 ], [ 0, %679 ]
  %689 = icmp ult i32 %575, %688
  br i1 %689, label %691, label %690

690:                                              ; preds = %687
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %691

691:                                              ; preds = %690, %687
  %692 = add i32 %575, 1
  br label %574, !llvm.loop !198

693:                                              ; preds = %592
  %694 = getelementptr inbounds %struct.basic_block_def, ptr %572, i64 0, i32 2
  %695 = load ptr, ptr %694, align 8, !tbaa !197
  %696 = load ptr, ptr %519, align 8, !tbaa !122
  %697 = icmp eq ptr %695, %696
  br i1 %697, label %698, label %566, !llvm.loop !199

698:                                              ; preds = %693
  %699 = icmp eq ptr %580, null
  br i1 %699, label %753, label %700

700:                                              ; preds = %698
  %701 = load ptr, ptr %195, align 8, !tbaa !138
  %702 = icmp eq ptr %696, %701
  br i1 %702, label %703, label %706

703:                                              ; preds = %700
  %704 = getelementptr inbounds %struct.basic_block_def, ptr %580, i64 0, i32 2
  %705 = load ptr, ptr %704, align 8, !tbaa !197
  store ptr %705, ptr %195, align 8, !tbaa !138
  br label %755

706:                                              ; preds = %700, %706
  %707 = phi ptr [ %709, %706 ], [ %701, %700 ]
  %708 = getelementptr inbounds %struct.basic_block_def, ptr %707, i64 0, i32 2
  %709 = load ptr, ptr %708, align 8, !tbaa !197
  %710 = icmp eq ptr %709, %696
  br i1 %710, label %711, label %706, !llvm.loop !200

711:                                              ; preds = %706
  %712 = getelementptr inbounds %struct.basic_block_def, ptr %707, i64 0, i32 2
  %713 = getelementptr inbounds %struct.basic_block_def, ptr %580, i64 0, i32 2
  %714 = load ptr, ptr %713, align 8, !tbaa !197
  store ptr %714, ptr %712, align 8, !tbaa !197
  %715 = getelementptr inbounds %struct.basic_block_def, ptr %707, i64 0, i32 1
  %716 = load ptr, ptr %715, align 8, !tbaa !201
  %717 = icmp eq ptr %716, null
  br i1 %717, label %755, label %718

718:                                              ; preds = %711
  %719 = load i32, ptr %716, align 8, !tbaa !119
  %720 = icmp eq i32 %719, 1
  br i1 %720, label %721, label %755

721:                                              ; preds = %718
  %722 = getelementptr inbounds %struct.VEC_edge_base, ptr %716, i64 0, i32 2, i64 0
  %723 = load ptr, ptr %722, align 8, !tbaa !81
  %724 = getelementptr inbounds %struct.edge_def, ptr %723, i64 0, i32 1
  %725 = load ptr, ptr %724, align 8, !tbaa !122
  %726 = getelementptr inbounds %struct.basic_block_def, ptr %725, i64 0, i32 7
  %727 = load ptr, ptr %726, align 8, !tbaa !92
  %728 = getelementptr inbounds %struct.rtl_bb_info, ptr %727, i64 0, i32 1
  %729 = load ptr, ptr %728, align 8, !tbaa !202
  %730 = tail call i32 @any_condjump_p(ptr noundef %729) #15
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %755, label %732

732:                                              ; preds = %721
  %733 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef %725, i32 noundef 0), !range !176
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %755, label %735

735:                                              ; preds = %732
  %736 = load ptr, ptr %726, align 8, !tbaa !92
  %737 = getelementptr inbounds %struct.rtl_bb_info, ptr %736, i64 0, i32 1
  %738 = load ptr, ptr %737, align 8, !tbaa !202
  %739 = tail call ptr @find_reg_note(ptr noundef %738, i32 noundef 29, ptr noundef null) #15
  %740 = icmp eq ptr %739, null
  br i1 %740, label %741, label %755

741:                                              ; preds = %735
  %742 = load ptr, ptr %715, align 8, !tbaa !201
  %743 = icmp eq ptr %742, null
  br i1 %743, label %747, label %744

744:                                              ; preds = %741
  %745 = load i32, ptr %742, align 8, !tbaa !119
  %746 = icmp eq i32 %745, 1
  br i1 %746, label %748, label %747

747:                                              ; preds = %744, %741
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %748

748:                                              ; preds = %747, %744
  %749 = load ptr, ptr %715, align 8, !tbaa !201
  %750 = getelementptr inbounds %struct.VEC_edge_base, ptr %749, i64 0, i32 2, i64 0
  %751 = load ptr, ptr %750, align 8, !tbaa !81
  %752 = tail call fastcc ptr @copy_bb(ptr noundef %725, ptr noundef %751, ptr noundef %707, i32 noundef %202)
  br label %755

753:                                              ; preds = %698
  %754 = load ptr, ptr %383, align 8, !tbaa !160
  br label %755

755:                                              ; preds = %753, %748, %735, %732, %721, %718, %711, %703
  %756 = phi ptr [ %580, %703 ], [ %754, %753 ], [ %580, %721 ], [ %580, %732 ], [ %580, %735 ], [ %580, %748 ], [ %580, %718 ], [ %580, %711 ]
  %757 = getelementptr inbounds %struct.basic_block_def, ptr %756, i64 0, i32 2
  store ptr null, ptr %757, align 8, !tbaa !197
  br label %917

758:                                              ; preds = %528
  br i1 %387, label %763, label %759

759:                                              ; preds = %758
  %760 = load i32, ptr %386, align 8, !tbaa !119
  %761 = icmp eq i32 %760, 1
  %762 = zext i1 %761 to i8
  br label %763

763:                                              ; preds = %759, %758
  %764 = phi i8 [ %762, %759 ], [ 0, %758 ]
  %765 = icmp eq i8 %764, 0
  br i1 %765, label %917, label %766

766:                                              ; preds = %763
  %767 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef nonnull %383) #15
  %768 = zext i8 %767 to i32
  %769 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef %520, i32 noundef %768), !range !176
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %917, label %771

771:                                              ; preds = %766
  %772 = load ptr, ptr %519, align 8, !tbaa !122
  %773 = tail call fastcc ptr @copy_bb(ptr noundef %772, ptr noundef nonnull %383, ptr noundef %204, i32 noundef %202)
  %774 = load i32, ptr %197, align 4, !tbaa !141
  %775 = add nsw i32 %774, 1
  store i32 %775, ptr %197, align 4, !tbaa !141
  br label %917

776:                                              ; preds = %518, %905
  %777 = phi i32 [ %906, %905 ], [ 0, %518 ]
  %778 = load ptr, ptr %233, align 8, !tbaa !81
  %779 = icmp eq ptr %778, null
  br i1 %779, label %782, label %780, !prof !203

780:                                              ; preds = %776
  %781 = load i32, ptr %778, align 8, !tbaa !119
  br label %782

782:                                              ; preds = %780, %776
  %783 = phi i32 [ %781, %780 ], [ 0, %776 ]
  %784 = icmp eq i32 %783, %777
  br i1 %784, label %789, label %785, !prof !204

785:                                              ; preds = %782
  %786 = zext i32 %777 to i64
  %787 = getelementptr inbounds %struct.VEC_edge_base, ptr %778, i64 0, i32 2, i64 %786
  %788 = load ptr, ptr %787, align 8, !tbaa !81
  br label %789

789:                                              ; preds = %785, %782
  %790 = phi ptr [ %788, %785 ], [ null, %782 ]
  br i1 %784, label %907, label %791, !prof !204

791:                                              ; preds = %789
  %792 = icmp eq ptr %790, %383
  br i1 %792, label %896, label %793, !prof !205

793:                                              ; preds = %791
  %794 = getelementptr inbounds %struct.edge_def, ptr %790, i64 0, i32 7
  %795 = load i32, ptr %794, align 8, !tbaa !148
  %796 = and i32 %795, 78
  %797 = icmp eq i32 %796, 64
  br i1 %797, label %798, label %896, !prof !206

798:                                              ; preds = %793
  %799 = getelementptr inbounds %struct.edge_def, ptr %790, i64 0, i32 1
  %800 = load ptr, ptr %799, align 8, !tbaa !122
  %801 = getelementptr inbounds %struct.basic_block_def, ptr %800, i64 0, i32 7
  %802 = load ptr, ptr %801, align 8, !tbaa !92
  %803 = getelementptr inbounds %struct.rtl_bb_info, ptr %802, i64 0, i32 4
  %804 = load i32, ptr %803, align 8, !tbaa !142
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %806, label %896, !prof !207

806:                                              ; preds = %798
  %807 = load ptr, ptr %800, align 8, !tbaa !173
  %808 = icmp eq ptr %807, null
  br i1 %808, label %812, label %809, !prof !208

809:                                              ; preds = %806
  %810 = load i32, ptr %807, align 8, !tbaa !119
  %811 = icmp eq i32 %810, 1
  br label %812

812:                                              ; preds = %809, %806
  %813 = phi i1 [ %811, %809 ], [ false, %806 ]
  %814 = and i32 %795, 8192
  %815 = icmp eq i32 %814, 0
  %816 = and i1 %815, %813
  br i1 %816, label %817, label %896, !prof !209

817:                                              ; preds = %812
  %818 = getelementptr inbounds %struct.basic_block_def, ptr %800, i64 0, i32 1
  %819 = load ptr, ptr %818, align 8, !tbaa !201
  %820 = icmp eq ptr %819, null
  br i1 %820, label %825, label %821, !prof !210

821:                                              ; preds = %817
  %822 = load i32, ptr %819, align 8, !tbaa !119
  %823 = icmp eq i32 %822, 1
  %824 = zext i1 %823 to i8
  br label %825

825:                                              ; preds = %821, %817
  %826 = phi i8 [ %824, %821 ], [ 0, %817 ]
  %827 = icmp eq i8 %826, 0
  br i1 %827, label %896, label %828, !prof !211

828:                                              ; preds = %825
  br i1 %820, label %832, label %829, !prof !212

829:                                              ; preds = %828
  %830 = load i32, ptr %819, align 8, !tbaa !119
  %831 = icmp eq i32 %830, 1
  br i1 %831, label %833, label %832, !prof !213

832:                                              ; preds = %829, %828
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %833

833:                                              ; preds = %832, %829
  %834 = load ptr, ptr %818, align 8, !tbaa !201
  %835 = getelementptr inbounds %struct.VEC_edge_base, ptr %834, i64 0, i32 2, i64 0
  %836 = load ptr, ptr %835, align 8, !tbaa !81
  %837 = getelementptr inbounds %struct.edge_def, ptr %836, i64 0, i32 7
  %838 = load i32, ptr %837, align 8, !tbaa !148
  %839 = and i32 %838, 64
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %896, label %841, !prof !212

841:                                              ; preds = %833
  %842 = load ptr, ptr %799, align 8, !tbaa !122
  %843 = getelementptr inbounds %struct.basic_block_def, ptr %842, i64 0, i32 1
  %844 = load ptr, ptr %843, align 8, !tbaa !201
  %845 = icmp eq ptr %844, null
  br i1 %845, label %849, label %846, !prof !212

846:                                              ; preds = %841
  %847 = load i32, ptr %844, align 8, !tbaa !119
  %848 = icmp eq i32 %847, 1
  br i1 %848, label %850, label %849, !prof !213

849:                                              ; preds = %846, %841
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %850

850:                                              ; preds = %849, %846
  %851 = load ptr, ptr %843, align 8, !tbaa !201
  %852 = getelementptr inbounds %struct.VEC_edge_base, ptr %851, i64 0, i32 2, i64 0
  %853 = load ptr, ptr %852, align 8, !tbaa !81
  %854 = getelementptr inbounds %struct.edge_def, ptr %853, i64 0, i32 7
  %855 = load i32, ptr %854, align 8, !tbaa !148
  %856 = and i32 %855, 14
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %896, !prof !213

858:                                              ; preds = %850
  %859 = load ptr, ptr %799, align 8, !tbaa !122
  %860 = getelementptr inbounds %struct.basic_block_def, ptr %859, i64 0, i32 1
  %861 = load ptr, ptr %860, align 8, !tbaa !201
  %862 = icmp eq ptr %861, null
  br i1 %862, label %866, label %863, !prof !212

863:                                              ; preds = %858
  %864 = load i32, ptr %861, align 8, !tbaa !119
  %865 = icmp eq i32 %864, 1
  br i1 %865, label %867, label %866, !prof !213

866:                                              ; preds = %863, %858
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %867

867:                                              ; preds = %866, %863
  %868 = load ptr, ptr %860, align 8, !tbaa !201
  %869 = getelementptr inbounds %struct.VEC_edge_base, ptr %868, i64 0, i32 2, i64 0
  %870 = load ptr, ptr %869, align 8, !tbaa !81
  %871 = getelementptr inbounds %struct.edge_def, ptr %870, i64 0, i32 1
  %872 = load ptr, ptr %871, align 8, !tbaa !122
  %873 = load ptr, ptr %519, align 8, !tbaa !122
  %874 = icmp eq ptr %872, %873
  br i1 %874, label %875, label %896, !prof !214

875:                                              ; preds = %867
  %876 = getelementptr inbounds %struct.edge_def, ptr %383, i64 0, i32 8
  %877 = load ptr, ptr %799, align 8, !tbaa !122
  %878 = getelementptr inbounds %struct.basic_block_def, ptr %877, i64 0, i32 11
  %879 = load i32, ptr %878, align 8, !tbaa !129
  %880 = shl nsw i32 %879, 1
  %881 = load ptr, ptr %383, align 8, !tbaa !160
  %882 = getelementptr inbounds %struct.basic_block_def, ptr %881, i64 0, i32 11
  %883 = load i32, ptr %882, align 8, !tbaa !129
  %884 = load i32, ptr %876, align 4, !tbaa !155
  %885 = mul nsw i32 %884, %883
  %886 = add nsw i32 %885, 5000
  %887 = sdiv i32 %886, 10000
  %888 = icmp slt i32 %880, %887
  br i1 %888, label %896, label %889, !prof !215

889:                                              ; preds = %875
  %890 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %891 = icmp eq ptr %890, null
  br i1 %891, label %907, label %892, !prof !216

892:                                              ; preds = %889
  %893 = getelementptr inbounds %struct.basic_block_def, ptr %877, i64 0, i32 9
  %894 = load i32, ptr %893, align 8, !tbaa !124
  %895 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %890, ptr noundef nonnull @.str.18, i32 noundef %894)
  br label %907

896:                                              ; preds = %875, %867, %850, %833, %825, %812, %798, %793, %791
  %897 = load ptr, ptr %233, align 8, !tbaa !81
  %898 = icmp eq ptr %897, null
  br i1 %898, label %901, label %899, !prof !217

899:                                              ; preds = %896
  %900 = load i32, ptr %897, align 8, !tbaa !119
  br label %901

901:                                              ; preds = %899, %896
  %902 = phi i32 [ %900, %899 ], [ 0, %896 ]
  %903 = icmp ult i32 %777, %902
  br i1 %903, label %905, label %904, !prof !218

904:                                              ; preds = %901
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %905

905:                                              ; preds = %904, %901
  %906 = add i32 %777, 1
  br label %776, !llvm.loop !219

907:                                              ; preds = %789, %892, %889
  %908 = phi ptr [ %790, %892 ], [ %790, %889 ], [ %383, %789 ]
  %909 = getelementptr inbounds %struct.edge_def, ptr %908, i64 0, i32 1
  %910 = load ptr, ptr %909, align 8, !tbaa !122
  %911 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 2
  store ptr %910, ptr %911, align 8, !tbaa !197
  %912 = load ptr, ptr @bbd, align 8, !tbaa !81
  %913 = getelementptr inbounds %struct.basic_block_def, ptr %910, i64 0, i32 9
  %914 = load i32, ptr %913, align 8, !tbaa !124
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %912, i64 %915, i32 2
  store i32 %152, ptr %916, align 8, !tbaa !112
  br label %917

917:                                              ; preds = %907, %771, %766, %763, %755, %542, %526, %516
  %918 = phi i1 [ true, %755 ], [ true, %542 ], [ true, %771 ], [ true, %766 ], [ true, %763 ], [ true, %526 ], [ false, %907 ], [ false, %516 ]
  %919 = phi ptr [ %383, %755 ], [ %383, %542 ], [ %383, %771 ], [ %383, %766 ], [ %383, %763 ], [ %383, %526 ], [ %908, %907 ], [ null, %516 ]
  %920 = phi ptr [ %756, %755 ], [ %204, %542 ], [ %773, %771 ], [ %204, %766 ], [ %204, %763 ], [ %204, %526 ], [ %910, %907 ], [ %204, %516 ]
  %921 = icmp eq ptr %919, null
  %922 = select i1 %918, i1 true, i1 %921, !prof !220
  br i1 %922, label %923, label %203, !prof !194, !llvm.loop !221

923:                                              ; preds = %917
  %924 = getelementptr inbounds %struct.trace, ptr %49, i64 %194, i32 1
  store ptr %920, ptr %924, align 8, !tbaa !222
  %925 = load ptr, ptr @bbd, align 8, !tbaa !81
  %926 = load ptr, ptr %195, align 8, !tbaa !138
  %927 = getelementptr inbounds %struct.basic_block_def, ptr %926, i64 0, i32 9
  %928 = load i32, ptr %927, align 8, !tbaa !124
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %925, i64 %929
  store i32 %152, ptr %930, align 8, !tbaa !110
  %931 = getelementptr inbounds %struct.basic_block_def, ptr %920, i64 0, i32 9
  %932 = load i32, ptr %931, align 8, !tbaa !124
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %925, i64 %933, i32 1
  store i32 %152, ptr %934, align 4, !tbaa !113
  %935 = getelementptr inbounds %struct.basic_block_def, ptr %920, i64 0, i32 1
  br label %936

936:                                              ; preds = %1011, %923
  %937 = phi i32 [ 0, %923 ], [ %1012, %1011 ]
  %938 = load ptr, ptr %935, align 8, !tbaa !81
  %939 = icmp eq ptr %938, null
  br i1 %939, label %942, label %940, !prof !223

940:                                              ; preds = %936
  %941 = load i32, ptr %938, align 8, !tbaa !119
  br label %942

942:                                              ; preds = %940, %936
  %943 = phi i32 [ %941, %940 ], [ 0, %936 ]
  %944 = icmp eq i32 %943, %937
  br i1 %944, label %949, label %945, !prof !224

945:                                              ; preds = %942
  %946 = zext i32 %937 to i64
  %947 = getelementptr inbounds %struct.VEC_edge_base, ptr %938, i64 0, i32 2, i64 %946
  %948 = load ptr, ptr %947, align 8, !tbaa !81
  br label %949

949:                                              ; preds = %945, %942
  %950 = phi ptr [ %948, %945 ], [ null, %942 ]
  br i1 %944, label %1013, label %951, !prof !224

951:                                              ; preds = %949
  %952 = getelementptr inbounds %struct.edge_def, ptr %950, i64 0, i32 1
  %953 = load ptr, ptr %952, align 8, !tbaa !122
  %954 = load ptr, ptr @cfun, align 8, !tbaa !81
  %955 = getelementptr inbounds %struct.function, ptr %954, i64 0, i32 1
  %956 = load ptr, ptr %955, align 8, !tbaa !102
  %957 = getelementptr inbounds %struct.control_flow_graph, ptr %956, i64 0, i32 1
  %958 = load ptr, ptr %957, align 8, !tbaa !150
  %959 = icmp eq ptr %953, %958
  br i1 %959, label %1002, label %960, !prof !225

960:                                              ; preds = %951
  %961 = getelementptr inbounds %struct.basic_block_def, ptr %953, i64 0, i32 7
  %962 = load ptr, ptr %961, align 8, !tbaa !92
  %963 = getelementptr inbounds %struct.rtl_bb_info, ptr %962, i64 0, i32 4
  %964 = load i32, ptr %963, align 8, !tbaa !142
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %1002, !prof !226

966:                                              ; preds = %960
  %967 = load ptr, ptr @bbd, align 8, !tbaa !81
  %968 = getelementptr inbounds %struct.basic_block_def, ptr %953, i64 0, i32 9
  %969 = load i32, ptr %968, align 8, !tbaa !124
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %967, i64 %970, i32 3
  %972 = load ptr, ptr %971, align 8, !tbaa !126
  %973 = icmp eq ptr %972, null
  br i1 %973, label %1002, label %974, !prof !227

974:                                              ; preds = %966
  %975 = tail call fastcc i64 @bb_to_key(ptr noundef %953), !range !127
  %976 = load ptr, ptr @bbd, align 8, !tbaa !81
  %977 = load ptr, ptr %952, align 8, !tbaa !122
  %978 = getelementptr inbounds %struct.basic_block_def, ptr %977, i64 0, i32 9
  %979 = load i32, ptr %978, align 8, !tbaa !124
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %976, i64 %980, i32 4
  %982 = load ptr, ptr %981, align 8, !tbaa !128
  %983 = getelementptr inbounds %struct.fibnode, ptr %982, i64 0, i32 4
  %984 = load i64, ptr %983, align 8, !tbaa !182
  %985 = icmp eq i64 %975, %984
  br i1 %985, label %1002, label %986, !prof !228

986:                                              ; preds = %974
  %987 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %988 = icmp eq ptr %987, null
  br i1 %988, label %991, label %989, !prof !229

989:                                              ; preds = %986
  %990 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %987, ptr noundef nonnull @.str.13, i32 noundef %979, i64 noundef %984, i64 noundef %975)
  br label %991

991:                                              ; preds = %989, %986
  %992 = load ptr, ptr @bbd, align 8, !tbaa !81
  %993 = load ptr, ptr %952, align 8, !tbaa !122
  %994 = getelementptr inbounds %struct.basic_block_def, ptr %993, i64 0, i32 9
  %995 = load i32, ptr %994, align 8, !tbaa !124
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %992, i64 %996, i32 3
  %998 = load ptr, ptr %997, align 8, !tbaa !126
  %999 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %992, i64 %996, i32 4
  %1000 = load ptr, ptr %999, align 8, !tbaa !128
  %1001 = tail call i64 @fibheap_replace_key(ptr noundef %998, ptr noundef %1000, i64 noundef %975) #15
  br label %1002

1002:                                             ; preds = %991, %974, %966, %960, %951
  %1003 = load ptr, ptr %935, align 8, !tbaa !81
  %1004 = icmp eq ptr %1003, null
  br i1 %1004, label %1007, label %1005, !prof !230

1005:                                             ; preds = %1002
  %1006 = load i32, ptr %1003, align 8, !tbaa !119
  br label %1007

1007:                                             ; preds = %1005, %1002
  %1008 = phi i32 [ %1006, %1005 ], [ 0, %1002 ]
  %1009 = icmp ult i32 %937, %1008
  br i1 %1009, label %1011, label %1010, !prof !231

1010:                                             ; preds = %1007
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %1011

1011:                                             ; preds = %1010, %1007
  %1012 = add i32 %937, 1
  br label %936, !llvm.loop !232

1013:                                             ; preds = %949, %190, %177
  %1014 = phi i32 [ %152, %177 ], [ %152, %190 ], [ %202, %949 ]
  %1015 = tail call i32 @fibheap_empty(ptr noundef %112) #15
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %151, label %1017, !prof !233

1017:                                             ; preds = %1013, %135
  %1018 = phi i32 [ %113, %135 ], [ %1014, %1013 ]
  tail call void @fibheap_delete(ptr noundef %112) #15
  %1019 = add nuw nsw i64 %111, 1
  %1020 = icmp eq i64 %1019, 4
  br i1 %1020, label %1021, label %110, !prof !234, !llvm.loop !235

1021:                                             ; preds = %1017
  tail call void @fibheap_delete(ptr noundef %145) #15
  %1022 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1066, label %1024, !prof !101

1024:                                             ; preds = %1021
  %1025 = icmp sgt i32 %1018, 0
  br i1 %1025, label %1026, label %1063

1026:                                             ; preds = %1024
  %1027 = zext nneg i32 %1018 to i64
  br label %1028

1028:                                             ; preds = %1026, %1054
  %1029 = phi i64 [ 0, %1026 ], [ %1031, %1054 ]
  %1030 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1031 = add nuw nsw i64 %1029, 1
  %1032 = getelementptr inbounds %struct.trace, ptr %49, i64 %1029
  %1033 = getelementptr inbounds %struct.trace, ptr %49, i64 %1029, i32 2
  %1034 = load i32, ptr %1033, align 8, !tbaa !140
  %1035 = add nsw i32 %1034, 1
  %1036 = trunc i64 %1031 to i32
  %1037 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1030, ptr noundef nonnull @.str.6, i32 noundef %1036, i32 noundef %1035)
  %1038 = getelementptr inbounds %struct.trace, ptr %49, i64 %1029, i32 1
  %1039 = load ptr, ptr %1032, align 8, !tbaa !81
  %1040 = load ptr, ptr %1038, align 8, !tbaa !222
  %1041 = icmp eq ptr %1039, %1040
  br i1 %1041, label %1054, label %1042

1042:                                             ; preds = %1028, %1042
  %1043 = phi ptr [ %1051, %1042 ], [ %1039, %1028 ]
  %1044 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1045 = getelementptr inbounds %struct.basic_block_def, ptr %1043, i64 0, i32 9
  %1046 = load i32, ptr %1045, align 8, !tbaa !124
  %1047 = getelementptr inbounds %struct.basic_block_def, ptr %1043, i64 0, i32 11
  %1048 = load i32, ptr %1047, align 8, !tbaa !129
  %1049 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1044, ptr noundef nonnull @.str.7, i32 noundef %1046, i32 noundef %1048)
  %1050 = getelementptr inbounds %struct.basic_block_def, ptr %1043, i64 0, i32 2
  %1051 = load ptr, ptr %1050, align 8, !tbaa !81
  %1052 = load ptr, ptr %1038, align 8, !tbaa !222
  %1053 = icmp eq ptr %1051, %1052
  br i1 %1053, label %1054, label %1042, !llvm.loop !236

1054:                                             ; preds = %1042, %1028
  %1055 = phi ptr [ %1039, %1028 ], [ %1051, %1042 ]
  %1056 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1057 = getelementptr inbounds %struct.basic_block_def, ptr %1055, i64 0, i32 9
  %1058 = load i32, ptr %1057, align 8, !tbaa !124
  %1059 = getelementptr inbounds %struct.basic_block_def, ptr %1055, i64 0, i32 11
  %1060 = load i32, ptr %1059, align 8, !tbaa !129
  %1061 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1056, ptr noundef nonnull @.str.8, i32 noundef %1058, i32 noundef %1060)
  %1062 = icmp eq i64 %1031, %1027
  br i1 %1062, label %1063, label %1028, !llvm.loop !237

1063:                                             ; preds = %1054, %1024
  %1064 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1065 = tail call i32 @fflush(ptr noundef %1064)
  br label %1066

1066:                                             ; preds = %1021, %1063
  %1067 = load i32, ptr @max_entry_frequency, align 4, !tbaa !96
  %1068 = sdiv i32 %1067, 10
  %1069 = load i64, ptr @max_entry_count, align 8, !tbaa !116
  %1070 = icmp slt i64 %1069, 2147483
  br i1 %1070, label %1071, label %1073, !prof !101

1071:                                             ; preds = %1066
  %1072 = udiv i64 %1069, 10
  br label %1076

1073:                                             ; preds = %1066
  %1074 = udiv i64 %1069, 1000
  %1075 = mul nuw nsw i64 %1074, 100
  br label %1076

1076:                                             ; preds = %1073, %1071
  %1077 = phi i64 [ %1072, %1071 ], [ %1075, %1073 ]
  %1078 = sext i32 %1018 to i64
  %1079 = tail call ptr @xcalloc(i64 noundef %1078, i64 noundef 1) #15
  %1080 = load ptr, ptr %49, align 8, !tbaa !138
  %1081 = getelementptr inbounds %struct.basic_block_def, ptr %1080, i64 0, i32 13
  %1082 = load i32, ptr %1081, align 8, !tbaa !153
  %1083 = and i32 %1082, 96
  %1084 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !96
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1105, label %1086, !prof !101

1086:                                             ; preds = %1076
  %1087 = icmp sgt i32 %1018, 0
  br i1 %1087, label %1088, label %1105

1088:                                             ; preds = %1086
  %1089 = zext nneg i32 %1018 to i64
  br label %1090

1090:                                             ; preds = %1088, %1090
  %1091 = phi i64 [ 0, %1088 ], [ %1101, %1090 ]
  %1092 = phi i8 [ 0, %1088 ], [ %1100, %1090 ]
  %1093 = getelementptr inbounds %struct.trace, ptr %49, i64 %1091
  %1094 = load ptr, ptr %1093, align 8, !tbaa !138
  %1095 = getelementptr inbounds %struct.basic_block_def, ptr %1094, i64 0, i32 13
  %1096 = load i32, ptr %1095, align 8, !tbaa !153
  %1097 = xor i32 %1096, %1082
  %1098 = and i32 %1097, 96
  %1099 = icmp eq i32 %1098, 0
  %1100 = select i1 %1099, i8 %1092, i8 1
  %1101 = add nuw nsw i64 %1091, 1
  %1102 = icmp ult i64 %1101, %1089
  %1103 = icmp eq i8 %1100, 0
  %1104 = select i1 %1102, i1 %1103, i1 false
  br i1 %1104, label %1090, label %1105, !llvm.loop !238

1105:                                             ; preds = %1090, %1086, %1076
  %1106 = phi i8 [ 0, %1076 ], [ 0, %1086 ], [ %1100, %1090 ]
  %1107 = icmp ne i8 %1106, 0
  %1108 = icmp eq i8 %1106, 0
  br label %1109

1109:                                             ; preds = %1634, %1105
  %1110 = phi i32 [ %1083, %1105 ], [ %1122, %1634 ]
  %1111 = phi i32 [ 1, %1105 ], [ %1123, %1634 ]
  %1112 = phi i32 [ -1, %1105 ], [ %1635, %1634 ]
  %1113 = phi i32 [ 0, %1105 ], [ %1636, %1634 ]
  %1114 = icmp slt i32 %1113, %1018
  br i1 %1114, label %1121, label %1115, !prof !239

1115:                                             ; preds = %1109
  %1116 = icmp eq i32 %1111, 1
  %1117 = select i1 %1107, i1 %1116, i1 false, !prof !106
  br i1 %1117, label %1118, label %1637, !prof !106

1118:                                             ; preds = %1115
  %1119 = icmp eq i32 %1110, 32
  %1120 = select i1 %1119, i32 64, i32 32
  br label %1121

1121:                                             ; preds = %1118, %1109
  %1122 = phi i32 [ %1120, %1118 ], [ %1110, %1109 ]
  %1123 = phi i32 [ 2, %1118 ], [ %1111, %1109 ]
  %1124 = phi i32 [ 0, %1118 ], [ %1113, %1109 ]
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds i8, ptr %1079, i64 %1125
  %1127 = load i8, ptr %1126, align 1, !tbaa !92
  %1128 = icmp eq i8 %1127, 0
  br i1 %1128, label %1129, label %1634, !prof !240

1129:                                             ; preds = %1121
  br i1 %1108, label %1137, label %1130, !prof !241

1130:                                             ; preds = %1129
  %1131 = getelementptr inbounds %struct.trace, ptr %49, i64 %1125
  %1132 = load ptr, ptr %1131, align 8, !tbaa !138
  %1133 = getelementptr inbounds %struct.basic_block_def, ptr %1132, i64 0, i32 13
  %1134 = load i32, ptr %1133, align 8, !tbaa !153
  %1135 = and i32 %1134, 96
  %1136 = icmp eq i32 %1135, %1122
  br i1 %1136, label %1137, label %1634

1137:                                             ; preds = %1130, %1129
  store i8 1, ptr %1126, align 1, !tbaa !92
  br label %1138

1138:                                             ; preds = %1249, %1137
  %1139 = phi i32 [ %1124, %1137 ], [ %1250, %1249 ]
  %1140 = icmp sgt i32 %1139, 0
  br i1 %1140, label %1141, label %1251, !prof !242

1141:                                             ; preds = %1138
  %1142 = zext nneg i32 %1139 to i64
  %1143 = getelementptr inbounds %struct.trace, ptr %49, i64 %1142
  %1144 = load ptr, ptr %1143, align 8, !tbaa !138
  %1145 = icmp eq ptr %1144, null
  br label %1146

1146:                                             ; preds = %1222, %1141
  %1147 = phi i32 [ 0, %1141 ], [ %1223, %1222 ]
  %1148 = phi i32 [ 0, %1141 ], [ %1214, %1222 ]
  %1149 = phi ptr [ null, %1141 ], [ %1215, %1222 ]
  br i1 %1145, label %1150, label %1151, !prof !243

1150:                                             ; preds = %1146
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %1151

1151:                                             ; preds = %1150, %1146
  %1152 = load ptr, ptr %1144, align 8, !tbaa !81
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1156, label %1154, !prof !243

1154:                                             ; preds = %1151
  %1155 = load i32, ptr %1152, align 8, !tbaa !119
  br label %1156

1156:                                             ; preds = %1154, %1151
  %1157 = phi i32 [ %1155, %1154 ], [ 0, %1151 ]
  %1158 = icmp eq i32 %1157, %1147
  br i1 %1158, label %1163, label %1159, !prof !244

1159:                                             ; preds = %1156
  %1160 = zext i32 %1147 to i64
  %1161 = getelementptr inbounds %struct.VEC_edge_base, ptr %1152, i64 0, i32 2, i64 %1160
  %1162 = load ptr, ptr %1161, align 8, !tbaa !81
  br label %1163

1163:                                             ; preds = %1159, %1156
  %1164 = phi ptr [ %1162, %1159 ], [ null, %1156 ]
  br i1 %1158, label %1224, label %1165, !prof !244

1165:                                             ; preds = %1163
  %1166 = load ptr, ptr %1164, align 8, !tbaa !160
  %1167 = getelementptr inbounds %struct.basic_block_def, ptr %1166, i64 0, i32 9
  %1168 = load i32, ptr %1167, align 8, !tbaa !124
  %1169 = load ptr, ptr @cfun, align 8, !tbaa !81
  %1170 = getelementptr inbounds %struct.function, ptr %1169, i64 0, i32 1
  %1171 = load ptr, ptr %1170, align 8, !tbaa !102
  %1172 = load ptr, ptr %1171, align 8, !tbaa !117
  %1173 = icmp eq ptr %1166, %1172
  br i1 %1173, label %1213, label %1174, !prof !245

1174:                                             ; preds = %1165
  %1175 = getelementptr inbounds %struct.edge_def, ptr %1164, i64 0, i32 7
  %1176 = load i32, ptr %1175, align 8, !tbaa !148
  %1177 = and i32 %1176, 78
  %1178 = icmp eq i32 %1177, 64
  br i1 %1178, label %1179, label %1213, !prof !246

1179:                                             ; preds = %1174
  %1180 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1181 = sext i32 %1168 to i64
  %1182 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %1180, i64 %1181, i32 1
  %1183 = load i32, ptr %1182, align 4, !tbaa !113
  %1184 = icmp sgt i32 %1183, -1
  br i1 %1184, label %1185, label %1213, !prof !247

1185:                                             ; preds = %1179
  %1186 = zext nneg i32 %1183 to i64
  %1187 = getelementptr inbounds i8, ptr %1079, i64 %1186
  %1188 = load i8, ptr %1187, align 1, !tbaa !92
  %1189 = icmp eq i8 %1188, 0
  br i1 %1189, label %1190, label %1213, !prof !248

1190:                                             ; preds = %1185
  %1191 = getelementptr inbounds %struct.basic_block_def, ptr %1166, i64 0, i32 13
  %1192 = load i32, ptr %1191, align 8, !tbaa !153
  %1193 = and i32 %1192, 96
  %1194 = icmp eq i32 %1193, %1122
  br i1 %1194, label %1195, label %1213, !prof !249

1195:                                             ; preds = %1190
  %1196 = icmp eq ptr %1149, null
  br i1 %1196, label %1209, label %1197, !prof !250

1197:                                             ; preds = %1195
  %1198 = getelementptr inbounds %struct.edge_def, ptr %1164, i64 0, i32 8
  %1199 = load i32, ptr %1198, align 4, !tbaa !155
  %1200 = getelementptr inbounds %struct.edge_def, ptr %1149, i64 0, i32 8
  %1201 = load i32, ptr %1200, align 4, !tbaa !155
  %1202 = icmp sgt i32 %1199, %1201
  br i1 %1202, label %1209, label %1203, !prof !251

1203:                                             ; preds = %1197
  %1204 = icmp eq i32 %1199, %1201
  br i1 %1204, label %1205, label %1213, !prof !252

1205:                                             ; preds = %1203
  %1206 = getelementptr inbounds %struct.trace, ptr %49, i64 %1186, i32 3
  %1207 = load i32, ptr %1206, align 4, !tbaa !141
  %1208 = icmp sgt i32 %1207, %1148
  br i1 %1208, label %1209, label %1213, !prof !253

1209:                                             ; preds = %1205, %1197, %1195
  %1210 = zext nneg i32 %1183 to i64
  %1211 = getelementptr inbounds %struct.trace, ptr %49, i64 %1210, i32 3
  %1212 = load i32, ptr %1211, align 4, !tbaa !141
  br label %1213

1213:                                             ; preds = %1209, %1205, %1203, %1190, %1185, %1179, %1174, %1165
  %1214 = phi i32 [ %1148, %1185 ], [ %1212, %1209 ], [ %1148, %1205 ], [ %1148, %1203 ], [ %1148, %1190 ], [ %1148, %1179 ], [ %1148, %1174 ], [ %1148, %1165 ]
  %1215 = phi ptr [ %1149, %1185 ], [ %1164, %1209 ], [ %1149, %1205 ], [ %1149, %1203 ], [ %1149, %1190 ], [ %1149, %1179 ], [ %1149, %1174 ], [ %1149, %1165 ]
  br i1 %1153, label %1218, label %1216, !prof !245

1216:                                             ; preds = %1213
  %1217 = load i32, ptr %1152, align 8, !tbaa !119
  br label %1218

1218:                                             ; preds = %1216, %1213
  %1219 = phi i32 [ %1217, %1216 ], [ 0, %1213 ]
  %1220 = icmp ult i32 %1147, %1219
  br i1 %1220, label %1222, label %1221, !prof !254

1221:                                             ; preds = %1218
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %1222

1222:                                             ; preds = %1221, %1218
  %1223 = add i32 %1147, 1
  br label %1146, !llvm.loop !255

1224:                                             ; preds = %1163
  %1225 = icmp eq ptr %1149, null
  br i1 %1225, label %1249, label %1226, !prof !256

1226:                                             ; preds = %1224
  %1227 = getelementptr inbounds %struct.edge_def, ptr %1149, i64 0, i32 1
  %1228 = load ptr, ptr %1227, align 8, !tbaa !122
  %1229 = load ptr, ptr %1149, align 8, !tbaa !160
  %1230 = getelementptr inbounds %struct.basic_block_def, ptr %1229, i64 0, i32 2
  store ptr %1228, ptr %1230, align 8, !tbaa !197
  %1231 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1232 = getelementptr inbounds %struct.basic_block_def, ptr %1229, i64 0, i32 9
  %1233 = load i32, ptr %1232, align 8, !tbaa !124
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %1231, i64 %1234, i32 1
  %1236 = load i32, ptr %1235, align 4, !tbaa !113
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds i8, ptr %1079, i64 %1237
  store i8 1, ptr %1238, align 1, !tbaa !92
  %1239 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1249, label %1241, !prof !257

1241:                                             ; preds = %1226
  %1242 = load ptr, ptr %1149, align 8, !tbaa !160
  %1243 = getelementptr inbounds %struct.basic_block_def, ptr %1242, i64 0, i32 9
  %1244 = load i32, ptr %1243, align 8, !tbaa !124
  %1245 = load ptr, ptr %1227, align 8, !tbaa !122
  %1246 = getelementptr inbounds %struct.basic_block_def, ptr %1245, i64 0, i32 9
  %1247 = load i32, ptr %1246, align 8, !tbaa !124
  %1248 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1239, ptr noundef nonnull @.str.22, i32 noundef %1244, i32 noundef %1247)
  br label %1249

1249:                                             ; preds = %1241, %1226, %1224
  %1250 = phi i32 [ %1139, %1224 ], [ %1236, %1226 ], [ %1236, %1241 ]
  br i1 %1225, label %1251, label %1138, !prof !256

1251:                                             ; preds = %1249, %1138
  %1252 = phi i32 [ %1139, %1138 ], [ %1250, %1249 ]
  %1253 = icmp sgt i32 %1112, -1
  br i1 %1253, label %1254, label %1262, !prof !258

1254:                                             ; preds = %1251
  %1255 = sext i32 %1252 to i64
  %1256 = getelementptr inbounds %struct.trace, ptr %49, i64 %1255
  %1257 = load ptr, ptr %1256, align 8, !tbaa !138
  %1258 = zext nneg i32 %1112 to i64
  %1259 = getelementptr inbounds %struct.trace, ptr %49, i64 %1258, i32 1
  %1260 = load ptr, ptr %1259, align 8, !tbaa !222
  %1261 = getelementptr inbounds %struct.basic_block_def, ptr %1260, i64 0, i32 2
  store ptr %1257, ptr %1261, align 8, !tbaa !197
  br label %1262

1262:                                             ; preds = %1254, %1251
  br label %1263

1263:                                             ; preds = %1262, %1630
  %1264 = phi i32 [ %1632, %1630 ], [ %1124, %1262 ]
  %1265 = phi i32 [ %1633, %1630 ], [ %1124, %1262 ]
  %1266 = sext i32 %1264 to i64
  %1267 = getelementptr inbounds %struct.trace, ptr %49, i64 %1266, i32 1
  %1268 = load ptr, ptr %1267, align 8, !tbaa !222
  %1269 = getelementptr inbounds %struct.basic_block_def, ptr %1268, i64 0, i32 1
  br label %1270

1270:                                             ; preds = %1346, %1263
  %1271 = phi i32 [ 0, %1263 ], [ %1347, %1346 ]
  %1272 = phi i32 [ 0, %1263 ], [ %1338, %1346 ]
  %1273 = phi ptr [ null, %1263 ], [ %1339, %1346 ]
  %1274 = load ptr, ptr %1269, align 8, !tbaa !81
  %1275 = icmp eq ptr %1274, null
  br i1 %1275, label %1278, label %1276, !prof !259

1276:                                             ; preds = %1270
  %1277 = load i32, ptr %1274, align 8, !tbaa !119
  br label %1278

1278:                                             ; preds = %1276, %1270
  %1279 = phi i32 [ %1277, %1276 ], [ 0, %1270 ]
  %1280 = icmp eq i32 %1279, %1271
  br i1 %1280, label %1285, label %1281, !prof !260

1281:                                             ; preds = %1278
  %1282 = zext i32 %1271 to i64
  %1283 = getelementptr inbounds %struct.VEC_edge_base, ptr %1274, i64 0, i32 2, i64 %1282
  %1284 = load ptr, ptr %1283, align 8, !tbaa !81
  br label %1285

1285:                                             ; preds = %1281, %1278
  %1286 = phi ptr [ %1284, %1281 ], [ null, %1278 ]
  br i1 %1280, label %1348, label %1287, !prof !260

1287:                                             ; preds = %1285
  %1288 = getelementptr inbounds %struct.edge_def, ptr %1286, i64 0, i32 1
  %1289 = load ptr, ptr %1288, align 8, !tbaa !122
  %1290 = getelementptr inbounds %struct.basic_block_def, ptr %1289, i64 0, i32 9
  %1291 = load i32, ptr %1290, align 8, !tbaa !124
  %1292 = load ptr, ptr @cfun, align 8, !tbaa !81
  %1293 = getelementptr inbounds %struct.function, ptr %1292, i64 0, i32 1
  %1294 = load ptr, ptr %1293, align 8, !tbaa !102
  %1295 = getelementptr inbounds %struct.control_flow_graph, ptr %1294, i64 0, i32 1
  %1296 = load ptr, ptr %1295, align 8, !tbaa !150
  %1297 = icmp eq ptr %1289, %1296
  br i1 %1297, label %1337, label %1298, !prof !261

1298:                                             ; preds = %1287
  %1299 = getelementptr inbounds %struct.edge_def, ptr %1286, i64 0, i32 7
  %1300 = load i32, ptr %1299, align 8, !tbaa !148
  %1301 = and i32 %1300, 78
  %1302 = icmp eq i32 %1301, 64
  br i1 %1302, label %1303, label %1337, !prof !262

1303:                                             ; preds = %1298
  %1304 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1305 = sext i32 %1291 to i64
  %1306 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %1304, i64 %1305
  %1307 = load i32, ptr %1306, align 8, !tbaa !110
  %1308 = icmp sgt i32 %1307, -1
  br i1 %1308, label %1309, label %1337, !prof !263

1309:                                             ; preds = %1303
  %1310 = zext nneg i32 %1307 to i64
  %1311 = getelementptr inbounds i8, ptr %1079, i64 %1310
  %1312 = load i8, ptr %1311, align 1, !tbaa !92
  %1313 = icmp eq i8 %1312, 0
  br i1 %1313, label %1314, label %1337, !prof !264

1314:                                             ; preds = %1309
  %1315 = getelementptr inbounds %struct.basic_block_def, ptr %1289, i64 0, i32 13
  %1316 = load i32, ptr %1315, align 8, !tbaa !153
  %1317 = and i32 %1316, 96
  %1318 = icmp eq i32 %1317, %1122
  br i1 %1318, label %1319, label %1337, !prof !265

1319:                                             ; preds = %1314
  %1320 = icmp eq ptr %1273, null
  br i1 %1320, label %1333, label %1321, !prof !266

1321:                                             ; preds = %1319
  %1322 = getelementptr inbounds %struct.edge_def, ptr %1286, i64 0, i32 8
  %1323 = load i32, ptr %1322, align 4, !tbaa !155
  %1324 = getelementptr inbounds %struct.edge_def, ptr %1273, i64 0, i32 8
  %1325 = load i32, ptr %1324, align 4, !tbaa !155
  %1326 = icmp sgt i32 %1323, %1325
  br i1 %1326, label %1333, label %1327, !prof !267

1327:                                             ; preds = %1321
  %1328 = icmp eq i32 %1323, %1325
  br i1 %1328, label %1329, label %1337, !prof !268

1329:                                             ; preds = %1327
  %1330 = getelementptr inbounds %struct.trace, ptr %49, i64 %1310, i32 3
  %1331 = load i32, ptr %1330, align 4, !tbaa !141
  %1332 = icmp sgt i32 %1331, %1272
  br i1 %1332, label %1333, label %1337, !prof !269

1333:                                             ; preds = %1329, %1321, %1319
  %1334 = zext nneg i32 %1307 to i64
  %1335 = getelementptr inbounds %struct.trace, ptr %49, i64 %1334, i32 3
  %1336 = load i32, ptr %1335, align 4, !tbaa !141
  br label %1337

1337:                                             ; preds = %1333, %1329, %1327, %1314, %1309, %1303, %1298, %1287
  %1338 = phi i32 [ %1272, %1309 ], [ %1336, %1333 ], [ %1272, %1329 ], [ %1272, %1327 ], [ %1272, %1314 ], [ %1272, %1303 ], [ %1272, %1298 ], [ %1272, %1287 ]
  %1339 = phi ptr [ %1273, %1309 ], [ %1286, %1333 ], [ %1273, %1329 ], [ %1273, %1327 ], [ %1273, %1314 ], [ %1273, %1303 ], [ %1273, %1298 ], [ %1273, %1287 ]
  br i1 %1275, label %1342, label %1340, !prof !270

1340:                                             ; preds = %1337
  %1341 = load i32, ptr %1274, align 8, !tbaa !119
  br label %1342

1342:                                             ; preds = %1340, %1337
  %1343 = phi i32 [ %1341, %1340 ], [ 0, %1337 ]
  %1344 = icmp ult i32 %1271, %1343
  br i1 %1344, label %1346, label %1345, !prof !271

1345:                                             ; preds = %1342
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %1346

1346:                                             ; preds = %1345, %1342
  %1347 = add i32 %1271, 1
  br label %1270, !llvm.loop !272

1348:                                             ; preds = %1285
  %1349 = icmp eq ptr %1273, null
  br i1 %1349, label %1370, label %1350, !prof !273

1350:                                             ; preds = %1348
  %1351 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1352 = icmp eq ptr %1351, null
  br i1 %1352, label %1362, label %1353, !prof !274

1353:                                             ; preds = %1350
  %1354 = load ptr, ptr %1273, align 8, !tbaa !160
  %1355 = getelementptr inbounds %struct.basic_block_def, ptr %1354, i64 0, i32 9
  %1356 = load i32, ptr %1355, align 8, !tbaa !124
  %1357 = getelementptr inbounds %struct.edge_def, ptr %1273, i64 0, i32 1
  %1358 = load ptr, ptr %1357, align 8, !tbaa !122
  %1359 = getelementptr inbounds %struct.basic_block_def, ptr %1358, i64 0, i32 9
  %1360 = load i32, ptr %1359, align 8, !tbaa !124
  %1361 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1351, ptr noundef nonnull @.str.22, i32 noundef %1356, i32 noundef %1360)
  br label %1362

1362:                                             ; preds = %1353, %1350
  %1363 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1364 = getelementptr inbounds %struct.edge_def, ptr %1273, i64 0, i32 1
  %1365 = load ptr, ptr %1364, align 8, !tbaa !122
  %1366 = getelementptr inbounds %struct.basic_block_def, ptr %1365, i64 0, i32 9
  %1367 = load i32, ptr %1366, align 8, !tbaa !124
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %1363, i64 %1368
  br label %1619

1370:                                             ; preds = %1348
  %1371 = load ptr, ptr %1267, align 8, !tbaa !222
  %1372 = getelementptr inbounds %struct.basic_block_def, ptr %1371, i64 0, i32 1
  br label %1373

1373:                                             ; preds = %1541, %1370
  %1374 = phi i32 [ 0, %1370 ], [ %1542, %1541 ]
  %1375 = phi ptr [ null, %1370 ], [ %1530, %1541 ]
  %1376 = phi ptr [ null, %1370 ], [ %1531, %1541 ]
  %1377 = phi i8 [ 0, %1370 ], [ %1532, %1541 ]
  %1378 = load ptr, ptr %1372, align 8, !tbaa !81
  %1379 = icmp eq ptr %1378, null
  br i1 %1379, label %1382, label %1380, !prof !275

1380:                                             ; preds = %1373
  %1381 = load i32, ptr %1378, align 8, !tbaa !119
  br label %1382

1382:                                             ; preds = %1380, %1373
  %1383 = phi i32 [ %1381, %1380 ], [ 0, %1373 ]
  %1384 = icmp eq i32 %1383, %1374
  br i1 %1384, label %1389, label %1385, !prof !276

1385:                                             ; preds = %1382
  %1386 = zext i32 %1374 to i64
  %1387 = getelementptr inbounds %struct.VEC_edge_base, ptr %1378, i64 0, i32 2, i64 %1386
  %1388 = load ptr, ptr %1387, align 8, !tbaa !81
  br label %1389

1389:                                             ; preds = %1385, %1382
  %1390 = phi ptr [ %1388, %1385 ], [ null, %1382 ]
  br i1 %1384, label %1543, label %1391, !prof !276

1391:                                             ; preds = %1389
  %1392 = getelementptr inbounds %struct.edge_def, ptr %1390, i64 0, i32 1
  %1393 = load ptr, ptr %1392, align 8, !tbaa !122
  %1394 = load ptr, ptr @cfun, align 8, !tbaa !81
  %1395 = getelementptr inbounds %struct.function, ptr %1394, i64 0, i32 1
  %1396 = load ptr, ptr %1395, align 8, !tbaa !102
  %1397 = getelementptr inbounds %struct.control_flow_graph, ptr %1396, i64 0, i32 1
  %1398 = load ptr, ptr %1397, align 8, !tbaa !150
  %1399 = icmp eq ptr %1393, %1398
  br i1 %1399, label %1529, label %1400, !prof !277

1400:                                             ; preds = %1391
  %1401 = getelementptr inbounds %struct.edge_def, ptr %1390, i64 0, i32 7
  %1402 = load i32, ptr %1401, align 8, !tbaa !148
  %1403 = and i32 %1402, 78
  %1404 = icmp eq i32 %1403, 64
  br i1 %1404, label %1405, label %1529, !prof !278

1405:                                             ; preds = %1400
  %1406 = icmp eq ptr %1375, null
  br i1 %1406, label %1413, label %1407, !prof !279

1407:                                             ; preds = %1405
  %1408 = getelementptr inbounds %struct.edge_def, ptr %1390, i64 0, i32 8
  %1409 = load i32, ptr %1408, align 4, !tbaa !155
  %1410 = getelementptr inbounds %struct.edge_def, ptr %1375, i64 0, i32 8
  %1411 = load i32, ptr %1410, align 4, !tbaa !155
  %1412 = icmp sgt i32 %1409, %1411
  br i1 %1412, label %1413, label %1529, !prof !280

1413:                                             ; preds = %1407, %1405
  %1414 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1415 = getelementptr inbounds %struct.basic_block_def, ptr %1393, i64 0, i32 9
  %1416 = load i32, ptr %1415, align 8, !tbaa !124
  %1417 = sext i32 %1416 to i64
  %1418 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %1414, i64 %1417
  %1419 = load i32, ptr %1418, align 8, !tbaa !110
  %1420 = icmp sgt i32 %1419, -1
  br i1 %1420, label %1421, label %1426, !prof !281

1421:                                             ; preds = %1413
  %1422 = zext nneg i32 %1419 to i64
  %1423 = getelementptr inbounds %struct.trace, ptr %49, i64 %1422, i32 3
  %1424 = load i32, ptr %1423, align 4, !tbaa !141
  %1425 = icmp eq i32 %1424, 1
  br i1 %1425, label %1529, label %1426, !prof !282

1426:                                             ; preds = %1421, %1413
  %1427 = getelementptr inbounds %struct.basic_block_def, ptr %1393, i64 0, i32 1
  br label %1428

1428:                                             ; preds = %1527, %1426
  %1429 = phi i32 [ 0, %1426 ], [ %1528, %1527 ]
  %1430 = phi ptr [ %1375, %1426 ], [ %1516, %1527 ]
  %1431 = phi ptr [ %1376, %1426 ], [ %1517, %1527 ]
  %1432 = phi i8 [ %1377, %1426 ], [ %1518, %1527 ]
  %1433 = phi ptr [ null, %1426 ], [ %1519, %1527 ]
  %1434 = phi i32 [ 0, %1426 ], [ %1520, %1527 ]
  %1435 = load ptr, ptr %1427, align 8, !tbaa !81
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1439, label %1437, !prof !283

1437:                                             ; preds = %1428
  %1438 = load i32, ptr %1435, align 8, !tbaa !119
  br label %1439

1439:                                             ; preds = %1437, %1428
  %1440 = phi i32 [ %1438, %1437 ], [ 0, %1428 ]
  %1441 = icmp eq i32 %1440, %1429
  br i1 %1441, label %1446, label %1442, !prof !284

1442:                                             ; preds = %1439
  %1443 = zext i32 %1429 to i64
  %1444 = getelementptr inbounds %struct.VEC_edge_base, ptr %1435, i64 0, i32 2, i64 %1443
  %1445 = load ptr, ptr %1444, align 8, !tbaa !81
  br label %1446

1446:                                             ; preds = %1442, %1439
  %1447 = phi ptr [ %1445, %1442 ], [ null, %1439 ]
  br i1 %1441, label %1529, label %1448, !prof !284

1448:                                             ; preds = %1446
  %1449 = getelementptr inbounds %struct.edge_def, ptr %1447, i64 0, i32 1
  %1450 = load ptr, ptr %1449, align 8, !tbaa !122
  %1451 = getelementptr inbounds %struct.basic_block_def, ptr %1450, i64 0, i32 9
  %1452 = load i32, ptr %1451, align 8, !tbaa !124
  %1453 = load ptr, ptr @cfun, align 8, !tbaa !81
  %1454 = getelementptr inbounds %struct.function, ptr %1453, i64 0, i32 1
  %1455 = load ptr, ptr %1454, align 8, !tbaa !102
  %1456 = getelementptr inbounds %struct.control_flow_graph, ptr %1455, i64 0, i32 1
  %1457 = load ptr, ptr %1456, align 8, !tbaa !150
  %1458 = icmp eq ptr %1450, %1457
  br i1 %1458, label %1515, label %1459, !prof !285

1459:                                             ; preds = %1448
  %1460 = getelementptr inbounds %struct.edge_def, ptr %1447, i64 0, i32 7
  %1461 = load i32, ptr %1460, align 8, !tbaa !148
  %1462 = and i32 %1461, 78
  %1463 = icmp eq i32 %1462, 64
  br i1 %1463, label %1464, label %1515, !prof !286

1464:                                             ; preds = %1459
  %1465 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1466 = sext i32 %1452 to i64
  %1467 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %1465, i64 %1466
  %1468 = load i32, ptr %1467, align 8, !tbaa !110
  %1469 = icmp sgt i32 %1468, -1
  br i1 %1469, label %1470, label %1515, !prof !287

1470:                                             ; preds = %1464
  %1471 = zext nneg i32 %1468 to i64
  %1472 = getelementptr inbounds i8, ptr %1079, i64 %1471
  %1473 = load i8, ptr %1472, align 1, !tbaa !92
  %1474 = icmp eq i8 %1473, 0
  br i1 %1474, label %1475, label %1515, !prof !288

1475:                                             ; preds = %1470
  %1476 = getelementptr inbounds %struct.basic_block_def, ptr %1450, i64 0, i32 13
  %1477 = load i32, ptr %1476, align 8, !tbaa !153
  %1478 = and i32 %1477, 96
  %1479 = icmp eq i32 %1478, %1122
  br i1 %1479, label %1480, label %1515, !prof !289

1480:                                             ; preds = %1475
  %1481 = load ptr, ptr %1447, align 8, !tbaa !160
  %1482 = getelementptr inbounds %struct.basic_block_def, ptr %1481, i64 0, i32 11
  %1483 = load i32, ptr %1482, align 8, !tbaa !129
  %1484 = getelementptr inbounds %struct.edge_def, ptr %1447, i64 0, i32 8
  %1485 = load i32, ptr %1484, align 4, !tbaa !155
  %1486 = mul nsw i32 %1485, %1483
  %1487 = add nsw i32 %1486, 5000
  %1488 = sdiv i32 %1487, 10000
  %1489 = icmp slt i32 %1488, %1068
  br i1 %1489, label %1515, label %1490, !prof !289

1490:                                             ; preds = %1480
  %1491 = getelementptr inbounds %struct.edge_def, ptr %1447, i64 0, i32 9
  %1492 = load i64, ptr %1491, align 8, !tbaa !162
  %1493 = icmp slt i64 %1492, %1077
  br i1 %1493, label %1515, label %1494

1494:                                             ; preds = %1490
  %1495 = icmp eq ptr %1433, null
  br i1 %1495, label %1506, label %1496

1496:                                             ; preds = %1494
  %1497 = getelementptr inbounds %struct.edge_def, ptr %1433, i64 0, i32 8
  %1498 = load i32, ptr %1497, align 4, !tbaa !155
  %1499 = icmp sgt i32 %1485, %1498
  br i1 %1499, label %1506, label %1500

1500:                                             ; preds = %1496
  %1501 = icmp eq i32 %1485, %1498
  br i1 %1501, label %1502, label %1515

1502:                                             ; preds = %1500
  %1503 = getelementptr inbounds %struct.trace, ptr %49, i64 %1471, i32 3
  %1504 = load i32, ptr %1503, align 4, !tbaa !141
  %1505 = icmp sgt i32 %1504, %1434
  br i1 %1505, label %1506, label %1515

1506:                                             ; preds = %1502, %1496, %1494
  br i1 %1458, label %1515, label %1507, !prof !290

1507:                                             ; preds = %1506
  %1508 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1509 = sext i32 %1452 to i64
  %1510 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %1508, i64 %1509
  %1511 = load i32, ptr %1510, align 8, !tbaa !110
  %1512 = sext i32 %1511 to i64
  %1513 = getelementptr inbounds %struct.trace, ptr %49, i64 %1512, i32 3
  %1514 = load i32, ptr %1513, align 4, !tbaa !141
  br label %1515

1515:                                             ; preds = %1506, %1507, %1448, %1502, %1500, %1490, %1480, %1475, %1470, %1464, %1459
  %1516 = phi ptr [ %1430, %1470 ], [ %1430, %1500 ], [ %1430, %1490 ], [ %1430, %1480 ], [ %1430, %1475 ], [ %1430, %1464 ], [ %1430, %1459 ], [ %1430, %1502 ], [ %1390, %1448 ], [ %1390, %1507 ], [ %1390, %1506 ]
  %1517 = phi ptr [ %1431, %1470 ], [ %1431, %1500 ], [ %1431, %1490 ], [ %1431, %1480 ], [ %1431, %1475 ], [ %1431, %1464 ], [ %1431, %1459 ], [ %1431, %1502 ], [ %1450, %1448 ], [ %1450, %1507 ], [ %1450, %1506 ]
  %1518 = phi i8 [ %1432, %1470 ], [ %1432, %1500 ], [ %1432, %1490 ], [ %1432, %1480 ], [ %1432, %1475 ], [ %1432, %1464 ], [ %1432, %1459 ], [ %1432, %1502 ], [ 1, %1448 ], [ 1, %1507 ], [ 1, %1506 ]
  %1519 = phi ptr [ %1433, %1470 ], [ %1433, %1500 ], [ %1433, %1490 ], [ %1433, %1480 ], [ %1433, %1475 ], [ %1433, %1464 ], [ %1433, %1459 ], [ %1433, %1502 ], [ %1447, %1448 ], [ %1447, %1507 ], [ %1447, %1506 ]
  %1520 = phi i32 [ %1434, %1470 ], [ %1434, %1500 ], [ %1434, %1490 ], [ %1434, %1480 ], [ %1434, %1475 ], [ %1434, %1464 ], [ %1434, %1459 ], [ %1434, %1502 ], [ 2147483647, %1448 ], [ %1514, %1507 ], [ 2147483647, %1506 ]
  br i1 %1436, label %1523, label %1521, !prof !291

1521:                                             ; preds = %1515
  %1522 = load i32, ptr %1435, align 8, !tbaa !119
  br label %1523

1523:                                             ; preds = %1521, %1515
  %1524 = phi i32 [ %1522, %1521 ], [ 0, %1515 ]
  %1525 = icmp ult i32 %1429, %1524
  br i1 %1525, label %1527, label %1526, !prof !292

1526:                                             ; preds = %1523
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %1527

1527:                                             ; preds = %1526, %1523
  %1528 = add i32 %1429, 1
  br label %1428, !llvm.loop !293

1529:                                             ; preds = %1446, %1421, %1407, %1400, %1391
  %1530 = phi ptr [ %1375, %1407 ], [ %1375, %1400 ], [ %1375, %1391 ], [ %1390, %1421 ], [ %1430, %1446 ]
  %1531 = phi ptr [ %1376, %1407 ], [ %1376, %1400 ], [ %1376, %1391 ], [ %1376, %1421 ], [ %1431, %1446 ]
  %1532 = phi i8 [ %1377, %1407 ], [ %1377, %1400 ], [ %1377, %1391 ], [ 1, %1421 ], [ %1432, %1446 ]
  %1533 = load ptr, ptr %1372, align 8, !tbaa !81
  %1534 = icmp eq ptr %1533, null
  br i1 %1534, label %1537, label %1535, !prof !294

1535:                                             ; preds = %1529
  %1536 = load i32, ptr %1533, align 8, !tbaa !119
  br label %1537

1537:                                             ; preds = %1535, %1529
  %1538 = phi i32 [ %1536, %1535 ], [ 0, %1529 ]
  %1539 = icmp ult i32 %1374, %1538
  br i1 %1539, label %1541, label %1540, !prof !295

1540:                                             ; preds = %1537
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %1541

1541:                                             ; preds = %1540, %1537
  %1542 = add i32 %1374, 1
  br label %1373, !llvm.loop !296

1543:                                             ; preds = %1389
  %1544 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !96
  %1545 = icmp ne i32 %1544, 0
  %1546 = icmp eq i8 %1377, 0
  %1547 = select i1 %1545, i1 true, i1 %1546, !prof !297
  br i1 %1547, label %1630, label %1548, !prof !298

1548:                                             ; preds = %1543
  %1549 = getelementptr inbounds %struct.edge_def, ptr %1375, i64 0, i32 1
  %1550 = load ptr, ptr %1549, align 8, !tbaa !122
  %1551 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef %1375) #15
  %1552 = icmp eq i8 %1551, 0
  br i1 %1552, label %1567, label %1553, !prof !299

1553:                                             ; preds = %1548
  %1554 = load ptr, ptr %1375, align 8, !tbaa !160
  %1555 = getelementptr inbounds %struct.basic_block_def, ptr %1554, i64 0, i32 11
  %1556 = load i32, ptr %1555, align 8, !tbaa !129
  %1557 = getelementptr inbounds %struct.edge_def, ptr %1375, i64 0, i32 8
  %1558 = load i32, ptr %1557, align 4, !tbaa !155
  %1559 = mul nsw i32 %1558, %1556
  %1560 = add nsw i32 %1559, 5000
  %1561 = sdiv i32 %1560, 10000
  %1562 = icmp slt i32 %1561, %1068
  br i1 %1562, label %1567, label %1563, !prof !300

1563:                                             ; preds = %1553
  %1564 = getelementptr inbounds %struct.edge_def, ptr %1375, i64 0, i32 9
  %1565 = load i64, ptr %1564, align 8, !tbaa !162
  %1566 = icmp sge i64 %1565, %1077
  br label %1567

1567:                                             ; preds = %1563, %1553, %1548
  %1568 = phi i1 [ false, %1553 ], [ false, %1548 ], [ %1566, %1563 ]
  %1569 = zext i1 %1568 to i32
  %1570 = tail call fastcc zeroext i8 @copy_bb_p(ptr noundef %1550, i32 noundef %1569), !range !176
  %1571 = icmp eq i8 %1570, 0
  br i1 %1571, label %1630, label %1572, !prof !301

1572:                                             ; preds = %1567
  %1573 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1574 = icmp eq ptr %1573, null
  br i1 %1574, label %1601, label %1575, !prof !302

1575:                                             ; preds = %1572
  %1576 = load ptr, ptr %1267, align 8, !tbaa !222
  %1577 = getelementptr inbounds %struct.basic_block_def, ptr %1576, i64 0, i32 9
  %1578 = load i32, ptr %1577, align 8, !tbaa !124
  %1579 = load ptr, ptr %1549, align 8, !tbaa !122
  %1580 = getelementptr inbounds %struct.basic_block_def, ptr %1579, i64 0, i32 9
  %1581 = load i32, ptr %1580, align 8, !tbaa !124
  %1582 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1573, ptr noundef nonnull @.str.23, i32 noundef %1578, i32 noundef %1581)
  %1583 = icmp eq ptr %1376, null
  br i1 %1583, label %1584, label %1587

1584:                                             ; preds = %1575
  %1585 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1586 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1585)
  br label %1601

1587:                                             ; preds = %1575
  %1588 = load ptr, ptr @cfun, align 8, !tbaa !81
  %1589 = getelementptr inbounds %struct.function, ptr %1588, i64 0, i32 1
  %1590 = load ptr, ptr %1589, align 8, !tbaa !102
  %1591 = getelementptr inbounds %struct.control_flow_graph, ptr %1590, i64 0, i32 1
  %1592 = load ptr, ptr %1591, align 8, !tbaa !150
  %1593 = icmp eq ptr %1376, %1592
  %1594 = load ptr, ptr @dump_file, align 8, !tbaa !81
  br i1 %1593, label %1595, label %1597

1595:                                             ; preds = %1587
  %1596 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 5, i64 1, ptr %1594)
  br label %1601

1597:                                             ; preds = %1587
  %1598 = getelementptr inbounds %struct.basic_block_def, ptr %1376, i64 0, i32 9
  %1599 = load i32, ptr %1598, align 8, !tbaa !124
  %1600 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1594, ptr noundef nonnull @.str.25, i32 noundef %1599)
  br label %1601

1601:                                             ; preds = %1597, %1595, %1584, %1572
  %1602 = load ptr, ptr %1549, align 8, !tbaa !122
  %1603 = load ptr, ptr %1267, align 8, !tbaa !222
  %1604 = tail call fastcc ptr @copy_bb(ptr noundef %1602, ptr noundef %1375, ptr noundef %1603, i32 noundef %1264)
  store ptr %1604, ptr %1267, align 8, !tbaa !222
  %1605 = icmp eq ptr %1376, null
  br i1 %1605, label %1630, label %1606, !prof !303

1606:                                             ; preds = %1601
  %1607 = load ptr, ptr @cfun, align 8, !tbaa !81
  %1608 = getelementptr inbounds %struct.function, ptr %1607, i64 0, i32 1
  %1609 = load ptr, ptr %1608, align 8, !tbaa !102
  %1610 = getelementptr inbounds %struct.control_flow_graph, ptr %1609, i64 0, i32 1
  %1611 = load ptr, ptr %1610, align 8, !tbaa !150
  %1612 = icmp eq ptr %1376, %1611
  br i1 %1612, label %1630, label %1613, !prof !304

1613:                                             ; preds = %1606
  %1614 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1615 = getelementptr inbounds %struct.basic_block_def, ptr %1376, i64 0, i32 9
  %1616 = load i32, ptr %1615, align 8, !tbaa !124
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %1614, i64 %1617
  br label %1619

1619:                                             ; preds = %1362, %1613
  %1620 = phi ptr [ %1369, %1362 ], [ %1618, %1613 ]
  %1621 = load i32, ptr %1620, align 8, !tbaa !110
  %1622 = sext i32 %1621 to i64
  %1623 = getelementptr inbounds %struct.trace, ptr %49, i64 %1622
  %1624 = load ptr, ptr %1623, align 8, !tbaa !138
  %1625 = sext i32 %1265 to i64
  %1626 = getelementptr inbounds %struct.trace, ptr %49, i64 %1625, i32 1
  %1627 = load ptr, ptr %1626, align 8, !tbaa !222
  %1628 = getelementptr inbounds %struct.basic_block_def, ptr %1627, i64 0, i32 2
  store ptr %1624, ptr %1628, align 8, !tbaa !197
  %1629 = getelementptr inbounds i8, ptr %1079, i64 %1622
  store i8 1, ptr %1629, align 1, !tbaa !92
  br label %1630

1630:                                             ; preds = %1619, %1543, %1567, %1601, %1606
  %1631 = phi i1 [ false, %1606 ], [ false, %1601 ], [ false, %1567 ], [ false, %1543 ], [ true, %1619 ]
  %1632 = phi i32 [ %1264, %1606 ], [ %1264, %1601 ], [ %1264, %1567 ], [ %1264, %1543 ], [ %1621, %1619 ]
  %1633 = phi i32 [ %1265, %1606 ], [ %1265, %1601 ], [ %1265, %1567 ], [ %1265, %1543 ], [ %1621, %1619 ]
  br i1 %1631, label %1263, label %1634, !prof !305

1634:                                             ; preds = %1630, %1130, %1121
  %1635 = phi i32 [ %1112, %1121 ], [ %1112, %1130 ], [ %1633, %1630 ]
  %1636 = add nsw i32 %1124, 1
  br label %1109, !llvm.loop !306

1637:                                             ; preds = %1115
  %1638 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1639 = icmp eq ptr %1638, null
  br i1 %1639, label %1658, label %1640, !prof !101

1640:                                             ; preds = %1637
  %1641 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 13, i64 1, ptr nonnull %1638)
  %1642 = load ptr, ptr %49, align 8, !tbaa !81
  %1643 = icmp eq ptr %1642, null
  br i1 %1643, label %1653, label %1644

1644:                                             ; preds = %1640, %1644
  %1645 = phi ptr [ %1651, %1644 ], [ %1642, %1640 ]
  %1646 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1647 = getelementptr inbounds %struct.basic_block_def, ptr %1645, i64 0, i32 9
  %1648 = load i32, ptr %1647, align 8, !tbaa !124
  %1649 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1646, ptr noundef nonnull @.str.27, i32 noundef %1648)
  %1650 = getelementptr inbounds %struct.basic_block_def, ptr %1645, i64 0, i32 2
  %1651 = load ptr, ptr %1650, align 8, !tbaa !81
  %1652 = icmp eq ptr %1651, null
  br i1 %1652, label %1653, label %1644, !llvm.loop !307

1653:                                             ; preds = %1644, %1640
  %1654 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1655 = tail call i32 @fputc(i32 10, ptr %1654)
  %1656 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1657 = tail call i32 @fflush(ptr noundef %1656)
  br label %1658

1658:                                             ; preds = %1653, %1637
  %1659 = icmp eq ptr %1079, null
  br i1 %1659, label %1660, label %1661, !prof !106

1660:                                             ; preds = %1658
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1149, ptr noundef nonnull @.str.1) #15
  br label %1661

1661:                                             ; preds = %1658, %1660
  tail call void @free(ptr noundef %1079)
  tail call void @free(ptr noundef %49)
  %1662 = load ptr, ptr @bbd, align 8, !tbaa !81
  %1663 = icmp eq ptr %1662, null
  br i1 %1663, label %1664, label %1665, !prof !106

1664:                                             ; preds = %1661
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1930, ptr noundef nonnull @.str.1) #15
  br label %1665

1665:                                             ; preds = %1661, %1664
  %1666 = load ptr, ptr @bbd, align 8, !tbaa !81
  tail call void @free(ptr noundef %1666)
  store ptr null, ptr @bbd, align 8, !tbaa !81
  tail call void @relink_block_chain(i8 noundef zeroext 1) #15
  %1667 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %1668 = icmp eq ptr %1667, null
  br i1 %1668, label %1671, label %1669, !prof !101

1669:                                             ; preds = %1665
  %1670 = load i32, ptr @dump_flags, align 4, !tbaa !96
  tail call void @dump_flow_info(ptr noundef nonnull %1667, i32 noundef %1670) #15
  br label %1671

1671:                                             ; preds = %1669, %1665
  %1672 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !96
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1720, label %1674, !prof !101

1674:                                             ; preds = %1671
  %1675 = load ptr, ptr @cfun, align 8, !tbaa !81
  %1676 = getelementptr inbounds %struct.function, ptr %1675, i64 0, i32 1
  %1677 = load ptr, ptr %1676, align 8, !tbaa !102
  %1678 = load ptr, ptr %1677, align 8, !tbaa !117
  %1679 = getelementptr inbounds %struct.basic_block_def, ptr %1678, i64 0, i32 6
  %1680 = load ptr, ptr %1679, align 8, !tbaa !196
  %1681 = getelementptr inbounds %struct.control_flow_graph, ptr %1677, i64 0, i32 1
  %1682 = load ptr, ptr %1681, align 8, !tbaa !150
  %1683 = icmp eq ptr %1680, %1682
  br i1 %1683, label %1720, label %1684

1684:                                             ; preds = %1674, %1705
  %1685 = phi ptr [ %1710, %1705 ], [ %1680, %1674 ]
  %1686 = phi i32 [ %1708, %1705 ], [ 0, %1674 ]
  %1687 = phi i8 [ %1707, %1705 ], [ 0, %1674 ]
  %1688 = phi i32 [ %1706, %1705 ], [ 0, %1674 ]
  %1689 = icmp eq i32 %1686, 0
  br i1 %1689, label %1690, label %1694

1690:                                             ; preds = %1684
  %1691 = getelementptr inbounds %struct.basic_block_def, ptr %1685, i64 0, i32 13
  %1692 = load i32, ptr %1691, align 8, !tbaa !153
  %1693 = and i32 %1692, 96
  br label %1694

1694:                                             ; preds = %1690, %1684
  %1695 = phi i32 [ %1686, %1684 ], [ %1693, %1690 ]
  %1696 = getelementptr inbounds %struct.basic_block_def, ptr %1685, i64 0, i32 13
  %1697 = load i32, ptr %1696, align 8, !tbaa !153
  %1698 = and i32 %1697, 96
  %1699 = icmp eq i32 %1698, %1695
  br i1 %1699, label %1705, label %1700

1700:                                             ; preds = %1694
  %1701 = icmp eq i8 %1687, 0
  br i1 %1701, label %1705, label %1702

1702:                                             ; preds = %1700
  %1703 = getelementptr inbounds %struct.basic_block_def, ptr %1685, i64 0, i32 9
  %1704 = load i32, ptr %1703, align 8, !tbaa !124
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.29, i32 noundef %1704) #15
  br label %1705

1705:                                             ; preds = %1702, %1700, %1694
  %1706 = phi i32 [ 1, %1702 ], [ %1688, %1694 ], [ %1688, %1700 ]
  %1707 = phi i8 [ 1, %1702 ], [ %1687, %1694 ], [ 1, %1700 ]
  %1708 = phi i32 [ %1695, %1702 ], [ %1695, %1694 ], [ %1698, %1700 ]
  %1709 = getelementptr inbounds %struct.basic_block_def, ptr %1685, i64 0, i32 6
  %1710 = load ptr, ptr %1709, align 8, !tbaa !196
  %1711 = load ptr, ptr @cfun, align 8, !tbaa !81
  %1712 = getelementptr inbounds %struct.function, ptr %1711, i64 0, i32 1
  %1713 = load ptr, ptr %1712, align 8, !tbaa !102
  %1714 = getelementptr inbounds %struct.control_flow_graph, ptr %1713, i64 0, i32 1
  %1715 = load ptr, ptr %1714, align 8, !tbaa !150
  %1716 = icmp eq ptr %1710, %1715
  br i1 %1716, label %1717, label %1684, !llvm.loop !308

1717:                                             ; preds = %1705
  %1718 = icmp eq i32 %1706, 0
  br i1 %1718, label %1720, label %1719

1719:                                             ; preds = %1717
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1887, ptr noundef nonnull @.str.1) #15
  br label %1720

1720:                                             ; preds = %1674, %1719, %1717, %1671, %4
  ret void
}

declare i32 @current_ir_type() local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_edge_can_fallthru_flag() local_unnamed_addr #3

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @get_uncond_jump_length() unnamed_addr #9 !prof !309 !PGOFuncName !310 {
  %1 = tail call ptr @gen_label_rtx() #15
  %2 = tail call ptr @get_insns() #15
  %3 = tail call ptr @emit_label_before(ptr noundef %1, ptr noundef %2) #15
  %4 = tail call ptr @gen_jump(ptr noundef %3) #15
  %5 = tail call ptr @emit_jump_insn(ptr noundef %4) #15
  %6 = tail call i32 @get_attr_min_length(ptr noundef %5) #15
  %7 = tail call ptr @delete_insn(ptr noundef %5) #15
  %8 = tail call ptr @delete_insn(ptr noundef %3) #15
  ret i32 %6
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare void @relink_block_chain(i8 noundef zeroext) local_unnamed_addr #3

declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_duplicate_computed_gotos() #8 !prof !100 !PGOFuncName !311 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !312
  %2 = tail call zeroext i8 %1() #15, !prof !324
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !101

4:                                                ; preds = %0
  %5 = load i32, ptr @optimize, align 4, !tbaa !96
  %6 = icmp sgt i32 %5, 0
  %7 = load i32, ptr @flag_expensive_optimizations, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false, !prof !101
  br i1 %9, label %10, label %15, !prof !101

10:                                               ; preds = %4
  %11 = load ptr, ptr @cfun, align 8, !tbaa !81
  %12 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %11) #15
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %10, %0
  %16 = phi i8 [ 0, %0 ], [ 0, %4 ], [ %14, %10 ]
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @duplicate_computed_gotos() #8 !prof !100 !PGOFuncName !325 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %270, label %7, !prof !106

7:                                                ; preds = %0
  tail call void @cfg_layout_initialize(i32 noundef 0) #15
  %8 = load i32, ptr @uncond_jump_length, align 4, !tbaa !96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !106

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @get_uncond_jump_length()
  store i32 %11, ptr @uncond_jump_length, align 4, !tbaa !96
  br label %12

12:                                               ; preds = %10, %7
  %13 = load i32, ptr @uncond_jump_length, align 4, !tbaa !96
  %14 = load ptr, ptr @compiler_params, align 8, !tbaa !81
  %15 = getelementptr inbounds %struct.param_info, ptr %14, i64 56, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !326
  %17 = mul nsw i32 %16, %13
  %18 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %19 = load ptr, ptr @cfun, align 8, !tbaa !81
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = load ptr, ptr %21, align 8, !tbaa !117
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !196
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !150
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %130, label %28, !prof !328

28:                                               ; preds = %12, %122
  %29 = phi ptr [ %128, %122 ], [ %26, %12 ]
  %30 = phi ptr [ %123, %122 ], [ %24, %12 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = icmp eq ptr %32, %29
  br i1 %33, label %36, label %34, !prof !329

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 2
  store ptr %32, ptr %35, align 8, !tbaa !197
  br label %36

36:                                               ; preds = %34, %28
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !202
  %41 = tail call i32 @computed_jump_p(ptr noundef %40) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %122, label %43, !prof !330

43:                                               ; preds = %36
  %44 = load ptr, ptr %37, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !202
  %47 = tail call ptr @find_reg_note(ptr noundef %46, i32 noundef 29, ptr noundef null) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %122

49:                                               ; preds = %43
  %50 = tail call zeroext i8 @can_duplicate_block_p(ptr noundef %30) #15
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %122, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %37, align 8, !tbaa !92
  %54 = load ptr, ptr %53, align 8, !tbaa !92
  %55 = icmp eq ptr %54, null
  br i1 %55, label %79, label %56

56:                                               ; preds = %52, %74
  %57 = phi ptr [ %77, %74 ], [ %54, %52 ]
  %58 = phi i32 [ %75, %74 ], [ 0, %52 ]
  %59 = load ptr, ptr %37, align 8, !tbaa !92
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !202
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !92
  %64 = icmp eq ptr %57, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %56
  %66 = load i32, ptr %57, align 8
  %67 = and i32 %66, 65535
  %68 = add nsw i32 %67, -7
  %69 = icmp ult i32 %68, 4
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = tail call i32 @get_attr_min_length(ptr noundef nonnull %57) #15
  %72 = add nsw i32 %71, %58
  %73 = icmp sgt i32 %72, %17
  br i1 %73, label %79, label %74

74:                                               ; preds = %65, %70
  %75 = phi i32 [ %72, %70 ], [ %58, %65 ]
  %76 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !92
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %56, !llvm.loop !331

79:                                               ; preds = %56, %70, %74, %52
  %80 = phi i32 [ 0, %52 ], [ %58, %56 ], [ %72, %70 ], [ %75, %74 ]
  %81 = icmp sgt i32 %80, %17
  br i1 %81, label %122, label %82

82:                                               ; preds = %79
  %83 = icmp eq ptr %30, null
  br label %84

84:                                               ; preds = %82, %113
  %85 = phi i32 [ %114, %113 ], [ 0, %82 ]
  %86 = phi i32 [ %105, %113 ], [ 0, %82 ]
  br i1 %83, label %87, label %88

87:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %88

88:                                               ; preds = %87, %84
  %89 = load ptr, ptr %30, align 8, !tbaa !81
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %89, align 8, !tbaa !119
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i32 [ %92, %91 ], [ 0, %88 ]
  %95 = icmp eq i32 %94, %85
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = zext i32 %85 to i64
  %98 = getelementptr inbounds %struct.VEC_edge_base, ptr %89, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !81
  br label %100

100:                                              ; preds = %93, %96
  %101 = phi ptr [ %99, %96 ], [ null, %93 ]
  br i1 %95, label %115, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !148
  %105 = or i32 %104, %86
  %106 = icmp eq ptr %89, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %89, align 8, !tbaa !119
  br label %109

109:                                              ; preds = %107, %102
  %110 = phi i32 [ %108, %107 ], [ 0, %102 ]
  %111 = icmp ult i32 %85, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %113

113:                                              ; preds = %109, %112
  %114 = add i32 %85, 1
  br label %84, !llvm.loop !332

115:                                              ; preds = %100
  %116 = and i32 %86, 14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %120 = load i32, ptr %119, align 8, !tbaa !124
  %121 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %120) #15
  br label %122

122:                                              ; preds = %115, %79, %43, %49, %36, %118
  %123 = load ptr, ptr %31, align 8, !tbaa !196
  %124 = load ptr, ptr @cfun, align 8, !tbaa !81
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !102
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !150
  %129 = icmp eq ptr %123, %128
  br i1 %129, label %130, label %28, !prof !333, !llvm.loop !334

130:                                              ; preds = %122, %12
  %131 = phi ptr [ %21, %12 ], [ %126, %122 ]
  %132 = load ptr, ptr %18, align 8, !tbaa !335
  %133 = icmp eq ptr %132, null
  br i1 %133, label %269, label %134, !prof !101

134:                                              ; preds = %130
  %135 = load ptr, ptr %131, align 8, !tbaa !117
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !196
  %138 = load ptr, ptr @cfun, align 8, !tbaa !81
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !102
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !150
  %143 = icmp eq ptr %137, %142
  br i1 %143, label %269, label %144

144:                                              ; preds = %134, %260
  %145 = phi ptr [ %262, %260 ], [ %137, %134 ]
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !92
  %148 = getelementptr inbounds %struct.rtl_bb_info, ptr %147, i64 0, i32 4
  %149 = load i32, ptr %148, align 8, !tbaa !142
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %260

151:                                              ; preds = %144
  store i32 1, ptr %148, align 8, !tbaa !142
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !201
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i32, ptr %153, align 8, !tbaa !119
  %157 = icmp eq i32 %156, 1
  %158 = zext i1 %157 to i8
  br label %159

159:                                              ; preds = %151, %155
  %160 = phi i8 [ %158, %155 ], [ 0, %151 ]
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %260, label %162

162:                                              ; preds = %159
  br i1 %154, label %166, label %163

163:                                              ; preds = %162
  %164 = load i32, ptr %153, align 8, !tbaa !119
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %167, label %166

166:                                              ; preds = %163, %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %167

167:                                              ; preds = %163, %166
  %168 = load ptr, ptr %152, align 8, !tbaa !201
  %169 = getelementptr inbounds %struct.VEC_edge_base, ptr %168, i64 0, i32 2, i64 0
  %170 = load ptr, ptr %169, align 8, !tbaa !81
  %171 = getelementptr inbounds %struct.edge_def, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !122
  %173 = load ptr, ptr @cfun, align 8, !tbaa !81
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !102
  %176 = getelementptr inbounds %struct.control_flow_graph, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !150
  %178 = icmp eq ptr %172, %177
  br i1 %178, label %260, label %179

179:                                              ; preds = %167
  %180 = icmp eq ptr %168, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %179
  %182 = load i32, ptr %168, align 8, !tbaa !119
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %185, label %184

184:                                              ; preds = %181, %179
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %185

185:                                              ; preds = %181, %184
  %186 = load ptr, ptr %152, align 8, !tbaa !201
  %187 = getelementptr inbounds %struct.VEC_edge_base, ptr %186, i64 0, i32 2, i64 0
  %188 = load ptr, ptr %187, align 8, !tbaa !81
  %189 = getelementptr inbounds %struct.edge_def, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !122
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !196
  %193 = icmp eq ptr %190, %192
  br i1 %193, label %260, label %194

194:                                              ; preds = %185
  %195 = icmp eq ptr %186, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %194
  %197 = load i32, ptr %186, align 8, !tbaa !119
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %200, label %199

199:                                              ; preds = %196, %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %200

200:                                              ; preds = %196, %199
  %201 = load ptr, ptr %152, align 8, !tbaa !201
  %202 = getelementptr inbounds %struct.VEC_edge_base, ptr %201, i64 0, i32 2, i64 0
  %203 = load ptr, ptr %202, align 8, !tbaa !81
  %204 = getelementptr inbounds %struct.edge_def, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !122
  %206 = load ptr, ptr %205, align 8, !tbaa !173
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %200
  %209 = load i32, ptr %206, align 8, !tbaa !119
  %210 = icmp eq i32 %209, 1
  %211 = zext i1 %210 to i8
  br label %212

212:                                              ; preds = %200, %208
  %213 = phi i8 [ %211, %208 ], [ 0, %200 ]
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %260

215:                                              ; preds = %212
  %216 = icmp eq ptr %201, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %215
  %218 = load i32, ptr %201, align 8, !tbaa !119
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %221, label %220

220:                                              ; preds = %217, %215
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %221

221:                                              ; preds = %217, %220
  %222 = load ptr, ptr %152, align 8, !tbaa !201
  %223 = getelementptr inbounds %struct.VEC_edge_base, ptr %222, i64 0, i32 2, i64 0
  %224 = load ptr, ptr %223, align 8, !tbaa !81
  %225 = getelementptr inbounds %struct.edge_def, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !122
  %227 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 9
  %228 = load i32, ptr %227, align 8, !tbaa !124
  %229 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %18, i32 noundef %228) #15
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %260, label %231

231:                                              ; preds = %221
  %232 = load ptr, ptr %152, align 8, !tbaa !201
  %233 = icmp eq ptr %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i32, ptr %232, align 8, !tbaa !119
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %238, label %237

237:                                              ; preds = %234, %231
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %238

238:                                              ; preds = %234, %237
  %239 = load ptr, ptr %152, align 8, !tbaa !201
  %240 = getelementptr inbounds %struct.VEC_edge_base, ptr %239, i64 0, i32 2, i64 0
  %241 = load ptr, ptr %240, align 8, !tbaa !81
  %242 = getelementptr inbounds %struct.edge_def, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !122
  %244 = icmp eq ptr %239, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %238
  %246 = load i32, ptr %239, align 8, !tbaa !119
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %249, label %248

248:                                              ; preds = %238, %245
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %249

249:                                              ; preds = %245, %248
  %250 = load ptr, ptr %152, align 8, !tbaa !201
  %251 = getelementptr inbounds %struct.VEC_edge_base, ptr %250, i64 0, i32 2, i64 0
  %252 = load ptr, ptr %251, align 8, !tbaa !81
  %253 = tail call ptr @duplicate_block(ptr noundef %243, ptr noundef %252, ptr noundef %145) #15
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !197
  %256 = getelementptr inbounds %struct.basic_block_def, ptr %253, i64 0, i32 2
  store ptr %255, ptr %256, align 8, !tbaa !197
  store ptr %253, ptr %254, align 8, !tbaa !197
  %257 = getelementptr inbounds %struct.basic_block_def, ptr %253, i64 0, i32 7
  %258 = load ptr, ptr %257, align 8, !tbaa !92
  %259 = getelementptr inbounds %struct.rtl_bb_info, ptr %258, i64 0, i32 4
  store i32 1, ptr %259, align 8, !tbaa !142
  br label %260

260:                                              ; preds = %221, %159, %167, %185, %212, %144, %249
  %261 = getelementptr inbounds %struct.basic_block_def, ptr %145, i64 0, i32 6
  %262 = load ptr, ptr %261, align 8, !tbaa !196
  %263 = load ptr, ptr @cfun, align 8, !tbaa !81
  %264 = getelementptr inbounds %struct.function, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !102
  %266 = getelementptr inbounds %struct.control_flow_graph, ptr %265, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !150
  %268 = icmp eq ptr %262, %267
  br i1 %268, label %269, label %144, !llvm.loop !337

269:                                              ; preds = %260, %134, %130
  tail call void @cfg_layout_finalize() #15
  tail call void @bitmap_obstack_free(ptr noundef nonnull %18) #15
  br label %270

270:                                              ; preds = %0, %269
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_reorder_blocks() #8 !prof !100 !PGOFuncName !338 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !312
  %2 = tail call zeroext i8 %1() #15, !prof !324
  %3 = icmp eq i8 %2, 0
  %4 = load i32, ptr @optimize, align 4
  %5 = icmp sgt i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false, !prof !101
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_reorder_blocks() #8 !prof !100 !PGOFuncName !339 {
  tail call void @cfg_layout_initialize(i32 noundef 1) #15
  %1 = load i32, ptr @flag_reorder_blocks, align 4, !tbaa !96
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !101
  br i1 %5, label %6, label %12, !prof !101

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !81
  %8 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10, !prof !106

10:                                               ; preds = %6
  tail call void @reorder_basic_blocks()
  %11 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #15
  br label %12

12:                                               ; preds = %0, %10, %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !150
  %20 = load ptr, ptr %17, align 8, !tbaa !196
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %32, label %22, !prof !328

22:                                               ; preds = %12, %29
  %23 = phi ptr [ %30, %29 ], [ %20, %12 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %29, label %27, !prof !340

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 2
  store ptr %25, ptr %28, align 8, !tbaa !197
  br label %29

29:                                               ; preds = %22, %27
  %30 = load ptr, ptr %24, align 8, !tbaa !196
  %31 = icmp eq ptr %30, %19
  br i1 %31, label %32, label %22, !prof !341, !llvm.loop !342

32:                                               ; preds = %29, %12
  tail call void @cfg_layout_finalize() #15
  %33 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !96
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %66, label %35, !prof !101

35:                                               ; preds = %32
  %36 = load ptr, ptr @cfun, align 8, !tbaa !81
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = load ptr, ptr %38, align 8, !tbaa !117
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  br label %42

42:                                               ; preds = %54, %35
  %43 = phi ptr [ %39, %35 ], [ %46, %54 ]
  %44 = phi i32 [ 0, %35 ], [ %55, %54 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !196
  %47 = icmp eq ptr %46, %41
  br i1 %47, label %66, label %48

48:                                               ; preds = %42
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 13
  %52 = load i32, ptr %51, align 8, !tbaa !153
  %53 = and i32 %52, 96
  br label %54

54:                                               ; preds = %50, %48
  %55 = phi i32 [ %44, %48 ], [ %53, %50 ]
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 13
  %57 = load i32, ptr %56, align 8, !tbaa !153
  %58 = and i32 %57, 96
  %59 = icmp eq i32 %58, %55
  br i1 %59, label %42, label %60, !llvm.loop !343

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !92
  %63 = load ptr, ptr %62, align 8, !tbaa !344
  %64 = tail call ptr @emit_note_before(i32 noundef 11, ptr noundef %63) #15
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %65, align 8, !tbaa !92
  br label %66

66:                                               ; preds = %42, %32, %60
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_partition_blocks() #11 !prof !100 !PGOFuncName !345 {
  %1 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !96
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3, !prof !101

3:                                                ; preds = %0
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load i8, ptr @user_defined_section_attribute, align 1, !tbaa !92
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %8, %3, %0
  %13 = phi i8 [ 0, %3 ], [ 0, %0 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rest_of_handle_partition_blocks() #9 !prof !80 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !108
  %6 = shl nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !104
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %491, label %10

10:                                               ; preds = %0
  %11 = sext i32 %6 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 8) #15
  %13 = load ptr, ptr @cfun, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !196
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !150
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %39, label %22

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %32, %22 ], [ %18, %10 ]
  %24 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %23) #15
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !153
  %28 = and i32 %27, -97
  %29 = select i1 %25, i32 32, i32 64
  %30 = or disjoint i32 %28, %29
  store i32 %30, ptr %26, align 8, !tbaa !153
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = load ptr, ptr @cfun, align 8, !tbaa !81
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !102
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !150
  %38 = icmp eq ptr %32, %37
  br i1 %38, label %39, label %22, !llvm.loop !346

39:                                               ; preds = %22, %10
  %40 = phi ptr [ %15, %10 ], [ %35, %22 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !117
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !196
  %44 = load ptr, ptr @cfun, align 8, !tbaa !81
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !102
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !150
  %49 = icmp eq ptr %43, %48
  br i1 %49, label %138, label %59

50:                                               ; preds = %81
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !196
  %53 = load ptr, ptr @cfun, align 8, !tbaa !81
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !102
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !150
  %58 = icmp eq ptr %52, %57
  br i1 %58, label %138, label %59, !llvm.loop !347

59:                                               ; preds = %39, %50
  %60 = phi ptr [ %52, %50 ], [ %43, %39 ]
  %61 = phi i32 [ %69, %50 ], [ 0, %39 ]
  %62 = phi i32 [ %67, %50 ], [ %6, %39 ]
  %63 = phi ptr [ %66, %50 ], [ %12, %39 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 1
  br label %65

65:                                               ; preds = %136, %59
  %66 = phi ptr [ %63, %59 ], [ %125, %136 ]
  %67 = phi i32 [ %62, %59 ], [ %126, %136 ]
  %68 = phi i32 [ 0, %59 ], [ %137, %136 ]
  %69 = phi i32 [ %61, %59 ], [ %127, %136 ]
  %70 = load ptr, ptr %64, align 8, !tbaa !81
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = load i32, ptr %70, align 8, !tbaa !119
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi i32 [ %73, %72 ], [ 0, %65 ]
  %76 = icmp eq i32 %75, %68
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = zext i32 %68 to i64
  %79 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !81
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi ptr [ %80, %77 ], [ null, %74 ]
  br i1 %76, label %50, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %82, align 8, !tbaa !160
  %85 = load ptr, ptr @cfun, align 8, !tbaa !81
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !102
  %88 = load ptr, ptr %87, align 8, !tbaa !117
  %89 = icmp eq ptr %84, %88
  br i1 %89, label %120, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.edge_def, ptr %82, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !122
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !150
  %95 = icmp eq ptr %92, %94
  br i1 %95, label %120, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 13
  %98 = load i32, ptr %97, align 8, !tbaa !153
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 13
  %100 = load i32, ptr %99, align 8, !tbaa !153
  %101 = xor i32 %100, %98
  %102 = and i32 %101, 96
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.edge_def, ptr %82, i64 0, i32 7
  %106 = load i32, ptr %105, align 8, !tbaa !148
  %107 = or i32 %106, 8192
  store i32 %107, ptr %105, align 8, !tbaa !148
  %108 = icmp eq i32 %69, %67
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = shl nsw i32 %67, 1
  %111 = sext i32 %110 to i64
  %112 = shl nsw i64 %111, 3
  %113 = tail call ptr @xrealloc(ptr noundef %66, i64 noundef %112) #15
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi ptr [ %113, %109 ], [ %66, %104 ]
  %116 = phi i32 [ %110, %109 ], [ %67, %104 ]
  %117 = add nsw i32 %69, 1
  %118 = sext i32 %69 to i64
  %119 = getelementptr inbounds ptr, ptr %115, i64 %118
  store ptr %82, ptr %119, align 8, !tbaa !81
  br label %124

120:                                              ; preds = %96, %90, %83
  %121 = getelementptr inbounds %struct.edge_def, ptr %82, i64 0, i32 7
  %122 = load i32, ptr %121, align 8, !tbaa !148
  %123 = and i32 %122, -8193
  store i32 %123, ptr %121, align 8, !tbaa !148
  br label %124

124:                                              ; preds = %120, %114
  %125 = phi ptr [ %66, %120 ], [ %115, %114 ]
  %126 = phi i32 [ %67, %120 ], [ %116, %114 ]
  %127 = phi i32 [ %69, %120 ], [ %117, %114 ]
  %128 = load ptr, ptr %64, align 8, !tbaa !81
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = load i32, ptr %128, align 8, !tbaa !119
  br label %132

132:                                              ; preds = %130, %124
  %133 = phi i32 [ %131, %130 ], [ 0, %124 ]
  %134 = icmp ult i32 %68, %133
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %136

136:                                              ; preds = %135, %132
  %137 = add i32 %68, 1
  br label %65, !llvm.loop !348

138:                                              ; preds = %50, %39
  %139 = phi ptr [ %12, %39 ], [ %66, %50 ]
  %140 = phi i32 [ 0, %39 ], [ %69, %50 ]
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %490

142:                                              ; preds = %138
  %143 = zext nneg i32 %140 to i64
  br label %144

144:                                              ; preds = %142, %212
  %145 = phi i64 [ 0, %142 ], [ %213, %212 ]
  %146 = getelementptr inbounds ptr, ptr %139, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !81
  %148 = icmp eq ptr %147, null
  br i1 %148, label %212, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %147, align 8, !tbaa !160
  %151 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !122
  %153 = icmp eq ptr %152, null
  br i1 %153, label %212, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr @cfun, align 8, !tbaa !81
  %156 = getelementptr inbounds %struct.function, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !102
  %158 = getelementptr inbounds %struct.control_flow_graph, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !150
  %160 = icmp eq ptr %152, %159
  br i1 %160, label %212, label %161

161:                                              ; preds = %154
  %162 = tail call ptr @block_label(ptr noundef nonnull %152) #15
  %163 = icmp eq ptr %150, null
  br i1 %163, label %212, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr @cfun, align 8, !tbaa !81
  %166 = getelementptr inbounds %struct.function, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !102
  %168 = load ptr, ptr %167, align 8, !tbaa !117
  %169 = icmp eq ptr %150, %168
  br i1 %169, label %212, label %170

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 7
  %172 = load ptr, ptr %171, align 8, !tbaa !92
  %173 = getelementptr inbounds %struct.rtl_bb_info, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !202
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 65535
  %177 = icmp eq i32 %176, 9
  br i1 %177, label %212, label %178

178:                                              ; preds = %170
  %179 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef nonnull %150) #15
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %212

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !201
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32, ptr %183, align 8, !tbaa !119
  %187 = icmp eq i32 %186, 1
  %188 = zext i1 %187 to i8
  br label %189

189:                                              ; preds = %185, %181
  %190 = phi i8 [ %188, %185 ], [ 0, %181 ]
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1299, ptr noundef nonnull @.str.1) #15
  br label %193

193:                                              ; preds = %192, %189
  %194 = tail call ptr @block_label(ptr noundef nonnull %152) #15
  %195 = tail call ptr @gen_jump(ptr noundef %194) #15
  %196 = load ptr, ptr %171, align 8, !tbaa !92
  %197 = getelementptr inbounds %struct.rtl_bb_info, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !202
  %199 = tail call ptr @emit_jump_insn_after(ptr noundef %195, ptr noundef %198) #15
  %200 = tail call ptr @emit_barrier_after(ptr noundef %199) #15
  %201 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %194, ptr %201, align 8, !tbaa !92
  %202 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1, i32 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !92
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %202, align 8, !tbaa !92
  %205 = tail call ptr @unlink_insn_chain(ptr noundef %200, ptr noundef %200) #15
  %206 = load ptr, ptr %171, align 8, !tbaa !92
  %207 = getelementptr inbounds %struct.rtl_bb_info, ptr %206, i64 0, i32 3
  store ptr %205, ptr %207, align 8, !tbaa !349
  %208 = load ptr, ptr %146, align 8, !tbaa !81
  %209 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 7
  %210 = load i32, ptr %209, align 8, !tbaa !148
  %211 = and i32 %210, -2
  store i32 %211, ptr %209, align 8, !tbaa !148
  br label %212

212:                                              ; preds = %193, %178, %170, %164, %161, %154, %149, %144
  %213 = add nuw nsw i64 %145, 1
  %214 = icmp eq i64 %213, %143
  br i1 %214, label %215, label %144, !llvm.loop !350

215:                                              ; preds = %212
  %216 = load ptr, ptr @cfun, align 8, !tbaa !81
  %217 = getelementptr inbounds %struct.function, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !102
  %219 = load ptr, ptr %218, align 8, !tbaa !117
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %219, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !196
  %222 = getelementptr inbounds %struct.control_flow_graph, ptr %218, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !150
  %224 = icmp eq ptr %221, %223
  br i1 %224, label %426, label %225

225:                                              ; preds = %215, %416
  %226 = phi ptr [ %419, %416 ], [ %221, %215 ]
  %227 = phi ptr [ %417, %416 ], [ null, %215 ]
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !201
  %230 = icmp eq ptr %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %225
  %232 = load i32, ptr %229, align 8, !tbaa !119
  br label %233

233:                                              ; preds = %231, %225
  %234 = phi i32 [ %232, %231 ], [ 0, %225 ]
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.VEC_edge_base, ptr %229, i64 0, i32 2, i64 0
  %238 = load ptr, ptr %237, align 8, !tbaa !81
  br label %239

239:                                              ; preds = %236, %233
  %240 = phi ptr [ %238, %236 ], [ null, %233 ]
  br i1 %230, label %243, label %241

241:                                              ; preds = %239
  %242 = load i32, ptr %229, align 8, !tbaa !119
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %242, %241 ], [ 0, %239 ]
  %245 = icmp ugt i32 %244, 1
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.VEC_edge_base, ptr %229, i64 0, i32 2, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !81
  br label %249

249:                                              ; preds = %246, %243
  %250 = phi ptr [ %248, %246 ], [ null, %243 ]
  %251 = icmp eq ptr %240, null
  br i1 %251, label %257, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.edge_def, ptr %240, i64 0, i32 7
  %254 = load i32, ptr %253, align 8, !tbaa !148
  %255 = and i32 %254, 1
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %300

257:                                              ; preds = %252, %249
  %258 = icmp eq ptr %250, null
  br i1 %258, label %267, label %259

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.edge_def, ptr %250, i64 0, i32 7
  %261 = load i32, ptr %260, align 8, !tbaa !148
  %262 = and i32 %261, 1
  %263 = icmp ne i32 %262, 0
  %264 = or i1 %251, %263
  %265 = select i1 %263, ptr %240, ptr %227
  %266 = select i1 %263, ptr %250, ptr null
  br i1 %264, label %300, label %268

267:                                              ; preds = %257
  br i1 %251, label %300, label %268

268:                                              ; preds = %267, %259
  %269 = tail call zeroext i8 @block_ends_with_call_p(ptr noundef %226) #15
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %300, label %271

271:                                              ; preds = %268, %298
  %272 = phi i32 [ %299, %298 ], [ 0, %268 ]
  %273 = load ptr, ptr %228, align 8, !tbaa !81
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %271
  %276 = load i32, ptr %273, align 8, !tbaa !119
  br label %277

277:                                              ; preds = %275, %271
  %278 = phi i32 [ %276, %275 ], [ 0, %271 ]
  %279 = icmp eq i32 %278, %272
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = zext i32 %272 to i64
  %282 = getelementptr inbounds %struct.VEC_edge_base, ptr %273, i64 0, i32 2, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !81
  br label %284

284:                                              ; preds = %280, %277
  %285 = phi ptr [ %283, %280 ], [ null, %277 ]
  br i1 %279, label %300, label %286

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.edge_def, ptr %285, i64 0, i32 7
  %288 = load i32, ptr %287, align 8, !tbaa !148
  %289 = and i32 %288, 64
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %286
  br i1 %274, label %294, label %292

292:                                              ; preds = %291
  %293 = load i32, ptr %273, align 8, !tbaa !119
  br label %294

294:                                              ; preds = %292, %291
  %295 = phi i32 [ %293, %292 ], [ 0, %291 ]
  %296 = icmp ult i32 %272, %295
  br i1 %296, label %298, label %297

297:                                              ; preds = %294
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %298

298:                                              ; preds = %297, %294
  %299 = add i32 %272, 1
  br label %271, !llvm.loop !351

300:                                              ; preds = %284, %286, %268, %267, %259, %252
  %301 = phi ptr [ %250, %252 ], [ %265, %259 ], [ %227, %267 ], [ %227, %268 ], [ %227, %286 ], [ %227, %284 ]
  %302 = phi ptr [ %240, %252 ], [ %266, %259 ], [ null, %267 ], [ null, %268 ], [ null, %284 ], [ %285, %286 ]
  %303 = icmp eq ptr %302, null
  br i1 %303, label %416, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.edge_def, ptr %302, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !122
  %307 = load ptr, ptr @cfun, align 8, !tbaa !81
  %308 = getelementptr inbounds %struct.function, ptr %307, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !102
  %310 = getelementptr inbounds %struct.control_flow_graph, ptr %309, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !150
  %312 = icmp eq ptr %306, %311
  br i1 %312, label %416, label %313

313:                                              ; preds = %304
  %314 = getelementptr inbounds %struct.edge_def, ptr %302, i64 0, i32 7
  %315 = load i32, ptr %314, align 8, !tbaa !148
  %316 = and i32 %315, 8192
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %416, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 7
  %320 = load ptr, ptr %319, align 8, !tbaa !92
  %321 = getelementptr inbounds %struct.rtl_bb_info, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !202
  %323 = icmp eq ptr %301, null
  br i1 %323, label %358, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.edge_def, ptr %301, i64 0, i32 7
  %326 = load i32, ptr %325, align 8, !tbaa !148
  %327 = and i32 %326, 8192
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %358

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !197
  %332 = getelementptr inbounds %struct.edge_def, ptr %301, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !122
  %334 = icmp eq ptr %331, %333
  br i1 %334, label %335, label %358

335:                                              ; preds = %329
  %336 = tail call ptr @block_label(ptr noundef %306) #15
  %337 = icmp eq ptr %322, null
  br i1 %337, label %346, label %338

338:                                              ; preds = %335
  %339 = load i32, ptr %322, align 8
  %340 = and i32 %339, 65535
  %341 = icmp eq i32 %340, 9
  %342 = icmp ne ptr %336, null
  %343 = select i1 %341, i1 %342, i1 false
  br i1 %343, label %344, label %346

344:                                              ; preds = %338
  %345 = tail call i32 @invert_jump(ptr noundef nonnull %322, ptr noundef nonnull %336, i32 noundef 0) #15
  br label %346

346:                                              ; preds = %344, %338, %335
  %347 = phi i32 [ %345, %344 ], [ 0, %338 ], [ 0, %335 ]
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %358, label %349

349:                                              ; preds = %346
  %350 = load i32, ptr %314, align 8, !tbaa !148
  %351 = and i32 %350, -2
  store i32 %351, ptr %314, align 8, !tbaa !148
  %352 = load i32, ptr %325, align 8, !tbaa !148
  %353 = or i32 %352, 1
  store i32 %353, ptr %325, align 8, !tbaa !148
  tail call void @update_br_prob_note(ptr noundef %226) #15
  %354 = load i32, ptr %314, align 8, !tbaa !148
  %355 = or i32 %354, 8192
  store i32 %355, ptr %314, align 8, !tbaa !148
  %356 = load i32, ptr %325, align 8, !tbaa !148
  %357 = and i32 %356, -8193
  store i32 %357, ptr %325, align 8, !tbaa !148
  br label %358

358:                                              ; preds = %349, %346, %329, %324, %318
  %359 = phi i1 [ false, %324 ], [ true, %349 ], [ false, %346 ], [ false, %329 ], [ false, %318 ]
  %360 = phi i1 [ false, %324 ], [ true, %349 ], [ true, %346 ], [ true, %329 ], [ false, %318 ]
  %361 = phi ptr [ %301, %324 ], [ %302, %349 ], [ %301, %346 ], [ %301, %329 ], [ null, %318 ]
  %362 = phi ptr [ %302, %324 ], [ %301, %349 ], [ %302, %346 ], [ %302, %329 ], [ %302, %318 ]
  %363 = and i1 %359, %360
  br i1 %363, label %416, label %364

364:                                              ; preds = %358
  %365 = getelementptr inbounds %struct.edge_def, ptr %362, i64 0, i32 7
  %366 = load i32, ptr %365, align 8, !tbaa !148
  %367 = and i32 %366, -8193
  store i32 %367, ptr %365, align 8, !tbaa !148
  %368 = tail call ptr @force_nonfallthru(ptr noundef nonnull %362) #15
  %369 = icmp eq ptr %368, null
  br i1 %369, label %402, label %370

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !197
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %368, i64 0, i32 2
  store ptr %372, ptr %373, align 8, !tbaa !197
  store ptr %368, ptr %371, align 8, !tbaa !197
  %374 = getelementptr inbounds %struct.basic_block_def, ptr %368, i64 0, i32 13
  %375 = load i32, ptr %374, align 8, !tbaa !153
  %376 = and i32 %375, -97
  %377 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 13
  %378 = load i32, ptr %377, align 8, !tbaa !153
  %379 = and i32 %378, 96
  %380 = or disjoint i32 %379, %376
  store i32 %380, ptr %374, align 8, !tbaa !153
  %381 = getelementptr inbounds %struct.basic_block_def, ptr %368, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !201
  %383 = icmp eq ptr %382, null
  br i1 %383, label %387, label %384

384:                                              ; preds = %370
  %385 = load i32, ptr %382, align 8, !tbaa !119
  %386 = icmp eq i32 %385, 1
  br i1 %386, label %388, label %387

387:                                              ; preds = %384, %370
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #15
  br label %388

388:                                              ; preds = %387, %384
  %389 = load ptr, ptr %381, align 8, !tbaa !201
  %390 = getelementptr inbounds %struct.VEC_edge_base, ptr %389, i64 0, i32 2, i64 0
  %391 = load ptr, ptr %390, align 8, !tbaa !81
  %392 = getelementptr inbounds %struct.edge_def, ptr %391, i64 0, i32 7
  %393 = load i32, ptr %392, align 8, !tbaa !148
  %394 = or i32 %393, 8192
  store i32 %394, ptr %392, align 8, !tbaa !148
  br i1 %369, label %405, label %395

395:                                              ; preds = %388
  %396 = getelementptr inbounds %struct.basic_block_def, ptr %368, i64 0, i32 7
  %397 = load ptr, ptr %396, align 8, !tbaa !92
  %398 = getelementptr inbounds %struct.rtl_bb_info, ptr %397, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !202
  %400 = tail call ptr @emit_barrier_after(ptr noundef %399) #15
  %401 = tail call ptr @unlink_insn_chain(ptr noundef %400, ptr noundef %400) #15
  br label %411

402:                                              ; preds = %364
  %403 = load i32, ptr %365, align 8, !tbaa !148
  %404 = or i32 %403, 8192
  store i32 %404, ptr %365, align 8, !tbaa !148
  br label %405

405:                                              ; preds = %402, %388
  %406 = load ptr, ptr %319, align 8, !tbaa !92
  %407 = getelementptr inbounds %struct.rtl_bb_info, ptr %406, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !202
  %409 = tail call ptr @emit_barrier_after(ptr noundef %408) #15
  %410 = tail call ptr @unlink_insn_chain(ptr noundef %409, ptr noundef %409) #15
  br label %411

411:                                              ; preds = %395, %405
  %412 = phi ptr [ %319, %405 ], [ %396, %395 ]
  %413 = phi ptr [ %410, %405 ], [ %401, %395 ]
  %414 = load ptr, ptr %412, align 8, !tbaa !92
  %415 = getelementptr inbounds %struct.rtl_bb_info, ptr %414, i64 0, i32 3
  store ptr %413, ptr %415, align 8, !tbaa !349
  br label %416

416:                                              ; preds = %411, %358, %313, %304, %300
  %417 = phi ptr [ %361, %358 ], [ %301, %313 ], [ %301, %304 ], [ %301, %300 ], [ %361, %411 ]
  %418 = getelementptr inbounds %struct.basic_block_def, ptr %226, i64 0, i32 6
  %419 = load ptr, ptr %418, align 8, !tbaa !196
  %420 = load ptr, ptr @cfun, align 8, !tbaa !81
  %421 = getelementptr inbounds %struct.function, ptr %420, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !102
  %423 = getelementptr inbounds %struct.control_flow_graph, ptr %422, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !150
  %425 = icmp eq ptr %419, %424
  br i1 %425, label %426, label %225, !llvm.loop !352

426:                                              ; preds = %416, %215
  %427 = phi ptr [ %218, %215 ], [ %422, %416 ]
  %428 = load ptr, ptr %427, align 8, !tbaa !117
  %429 = getelementptr inbounds %struct.basic_block_def, ptr %428, i64 0, i32 6
  %430 = load ptr, ptr %429, align 8, !tbaa !196
  %431 = load ptr, ptr @cfun, align 8, !tbaa !81
  %432 = getelementptr inbounds %struct.function, ptr %431, i64 0, i32 1
  %433 = load ptr, ptr %432, align 8, !tbaa !102
  %434 = getelementptr inbounds %struct.control_flow_graph, ptr %433, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !150
  %436 = icmp eq ptr %430, %435
  br i1 %436, label %490, label %446

437:                                              ; preds = %462
  %438 = getelementptr inbounds %struct.basic_block_def, ptr %447, i64 0, i32 6
  %439 = load ptr, ptr %438, align 8, !tbaa !196
  %440 = load ptr, ptr @cfun, align 8, !tbaa !81
  %441 = getelementptr inbounds %struct.function, ptr %440, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !102
  %443 = getelementptr inbounds %struct.control_flow_graph, ptr %442, i64 0, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !150
  %445 = icmp eq ptr %439, %444
  br i1 %445, label %490, label %446, !llvm.loop !353

446:                                              ; preds = %426, %437
  %447 = phi ptr [ %439, %437 ], [ %430, %426 ]
  %448 = getelementptr inbounds %struct.basic_block_def, ptr %447, i64 0, i32 1
  br label %449

449:                                              ; preds = %488, %446
  %450 = phi i32 [ 0, %446 ], [ %489, %488 ]
  %451 = load ptr, ptr %448, align 8, !tbaa !81
  %452 = icmp eq ptr %451, null
  br i1 %452, label %455, label %453

453:                                              ; preds = %449
  %454 = load i32, ptr %451, align 8, !tbaa !119
  br label %455

455:                                              ; preds = %453, %449
  %456 = phi i32 [ %454, %453 ], [ 0, %449 ]
  %457 = icmp eq i32 %456, %450
  br i1 %457, label %462, label %458

458:                                              ; preds = %455
  %459 = zext i32 %450 to i64
  %460 = getelementptr inbounds %struct.VEC_edge_base, ptr %451, i64 0, i32 2, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !81
  br label %462

462:                                              ; preds = %458, %455
  %463 = phi ptr [ %461, %458 ], [ null, %455 ]
  br i1 %457, label %437, label %464

464:                                              ; preds = %462
  %465 = getelementptr inbounds %struct.edge_def, ptr %463, i64 0, i32 7
  %466 = load i32, ptr %465, align 8, !tbaa !148
  %467 = and i32 %466, 8192
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %479, label %469

469:                                              ; preds = %464
  %470 = load ptr, ptr %463, align 8, !tbaa !160
  %471 = getelementptr inbounds %struct.basic_block_def, ptr %470, i64 0, i32 7
  %472 = load ptr, ptr %471, align 8, !tbaa !92
  %473 = getelementptr inbounds %struct.rtl_bb_info, ptr %472, i64 0, i32 1
  %474 = load ptr, ptr %473, align 8, !tbaa !202
  %475 = load i32, ptr %474, align 8
  %476 = and i32 %475, 65535
  %477 = icmp eq i32 %476, 9
  br i1 %477, label %478, label %479

478:                                              ; preds = %469
  tail call void @add_reg_note(ptr noundef nonnull %474, i32 noundef 29, ptr noundef null) #15
  br label %479

479:                                              ; preds = %478, %469, %464
  %480 = load ptr, ptr %448, align 8, !tbaa !81
  %481 = icmp eq ptr %480, null
  br i1 %481, label %484, label %482

482:                                              ; preds = %479
  %483 = load i32, ptr %480, align 8, !tbaa !119
  br label %484

484:                                              ; preds = %482, %479
  %485 = phi i32 [ %483, %482 ], [ 0, %479 ]
  %486 = icmp ult i32 %450, %485
  br i1 %486, label %488, label %487

487:                                              ; preds = %484
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %488

488:                                              ; preds = %487, %484
  %489 = add i32 %450, 1
  br label %449, !llvm.loop !354

490:                                              ; preds = %437, %426, %138
  tail call void @free(ptr noundef %139)
  br label %491

491:                                              ; preds = %0, %490
  ret i32 0
}

declare ptr @emit_label_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare i32 @get_attr_min_length(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_new() local_unnamed_addr #3

declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @bb_to_key(ptr noundef %0) unnamed_addr #8 !prof !355 !PGOFuncName !356 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !153
  %4 = and i32 %3, 96
  %5 = icmp eq i32 %4, 64
  br i1 %5, label %78, label %6, !prof !357

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %0) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %78, !prof !358

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, null
  br label %11

11:                                               ; preds = %9, %67
  %12 = phi i32 [ %68, %67 ], [ 0, %9 ]
  %13 = phi i32 [ %59, %67 ], [ 0, %9 ]
  br i1 %10, label %14, label %15, !prof !359

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr %0, align 8, !tbaa !81
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !359

18:                                               ; preds = %15
  %19 = load i32, ptr %16, align 8, !tbaa !119
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = icmp eq i32 %21, %12
  br i1 %22, label %27, label %23, !prof !360

23:                                               ; preds = %20
  %24 = zext i32 %12 to i64
  %25 = getelementptr inbounds %struct.VEC_edge_base, ptr %16, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi ptr [ %26, %23 ], [ null, %20 ]
  br i1 %22, label %69, label %29, !prof !360

29:                                               ; preds = %27
  %30 = load ptr, ptr %28, align 8, !tbaa !160
  %31 = load ptr, ptr @cfun, align 8, !tbaa !81
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = load ptr, ptr %33, align 8, !tbaa !117
  %35 = icmp eq ptr %30, %34
  br i1 %35, label %44, label %36, !prof !361

36:                                               ; preds = %29
  %37 = load ptr, ptr @bbd, align 8, !tbaa !81
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !124
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %37, i64 %40, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !113
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %49, label %44, !prof !362

44:                                               ; preds = %36, %29
  %45 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !148
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49, !prof !363

49:                                               ; preds = %44, %36
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 11
  %51 = load i32, ptr %50, align 8, !tbaa !129
  %52 = getelementptr inbounds %struct.edge_def, ptr %28, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !155
  %54 = mul nsw i32 %53, %51
  %55 = add nsw i32 %54, 5000
  %56 = sdiv i32 %55, 10000
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 %13)
  br label %58

58:                                               ; preds = %49, %44
  %59 = phi i32 [ %57, %49 ], [ %13, %44 ]
  %60 = icmp eq ptr %16, null
  br i1 %60, label %63, label %61, !prof !364

61:                                               ; preds = %58
  %62 = load i32, ptr %16, align 8, !tbaa !119
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i32 [ %62, %61 ], [ 0, %58 ]
  %65 = icmp ult i32 %12, %64
  br i1 %65, label %67, label %66, !prof !365

66:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #15
  br label %67

67:                                               ; preds = %63, %66
  %68 = add i32 %12, 1
  br label %11, !llvm.loop !366

69:                                               ; preds = %27
  %70 = icmp eq i32 %13, 0
  %71 = mul nsw i32 %13, -100
  %72 = add nsw i32 %71, -1000000
  %73 = select i1 %70, i32 0, i32 %72, !prof !367
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %75 = load i32, ptr %74, align 8, !tbaa !129
  %76 = sub i32 %73, %75
  %77 = sext i32 %76 to i64
  br label %78

78:                                               ; preds = %69, %1, %6
  %79 = phi i64 [ 10000, %6 ], [ 10000, %1 ], [ %77, %69 ]
  ret i64 %79
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @fibheap_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

declare zeroext i8 @probably_never_executed_bb_p(ptr noundef) local_unnamed_addr #3

declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @block_ends_with_call_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @copy_bb_p(ptr noundef %0, i32 noundef %1) unnamed_addr #8 !prof !368 !PGOFuncName !369 {
  %3 = load i32, ptr @uncond_jump_length, align 4, !tbaa !96
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %71, label %7, !prof !370

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !173
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10, !prof !371

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !119
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %71, label %13, !prof !371

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @can_duplicate_block_p(ptr noundef nonnull %0) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %71, label %16, !prof !371

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !201
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !371

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8, !tbaa !119
  %22 = icmp ugt i32 %21, 8
  br i1 %22, label %71, label %23, !prof !371

23:                                               ; preds = %16, %20
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %33, label %25, !prof !372

25:                                               ; preds = %23
  %26 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %0) #15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28, !prof !373

28:                                               ; preds = %25
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !81
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 55, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !326
  %32 = mul nsw i32 %31, %3
  br label %33

33:                                               ; preds = %28, %25, %23
  %34 = phi i32 [ %32, %28 ], [ %3, %25 ], [ %3, %23 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  %38 = icmp eq ptr %37, null
  br i1 %38, label %61, label %39, !prof !374

39:                                               ; preds = %33, %56
  %40 = phi ptr [ %59, %56 ], [ %37, %33 ]
  %41 = phi i32 [ %57, %56 ], [ 0, %33 ]
  %42 = load ptr, ptr %35, align 8, !tbaa !92
  %43 = getelementptr inbounds %struct.rtl_bb_info, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !202
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  %47 = icmp eq ptr %40, %46
  br i1 %47, label %61, label %48, !prof !375

48:                                               ; preds = %39
  %49 = load i32, ptr %40, align 8
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -7
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %53, label %56, !prof !376

53:                                               ; preds = %48
  %54 = tail call i32 @get_attr_min_length(ptr noundef nonnull %40) #15
  %55 = add nsw i32 %54, %41
  br label %56

56:                                               ; preds = %48, %53
  %57 = phi i32 [ %55, %53 ], [ %41, %48 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !92
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %39, !prof !377, !llvm.loop !378

61:                                               ; preds = %39, %56, %33
  %62 = phi i32 [ 0, %33 ], [ %41, %39 ], [ %57, %56 ]
  %63 = icmp sgt i32 %62, %34
  br i1 %63, label %64, label %71, !prof !379

64:                                               ; preds = %61
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67, !prof !380

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !124
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %65, ptr noundef nonnull @.str.19, i32 noundef %69, i32 noundef %62)
  br label %71

71:                                               ; preds = %7, %64, %67, %61, %20, %13, %10, %2
  %72 = phi i8 [ 0, %2 ], [ 0, %10 ], [ 0, %13 ], [ 0, %20 ], [ 1, %61 ], [ 0, %67 ], [ 0, %64 ], [ 0, %7 ]
  ret i8 %72
}

declare i64 @fibheap_replace_key(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_edge_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @copy_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 !prof !381 !PGOFuncName !382 {
  %5 = tail call ptr @duplicate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !153
  %8 = and i32 %7, -97
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !153
  %11 = and i32 %10, 96
  %12 = or disjoint i32 %11, %8
  store i32 %12, ptr %6, align 8, !tbaa !153
  %13 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %17, label %16, !prof !302

16:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 762, ptr noundef nonnull @.str.1) #15
  br label %17

17:                                               ; preds = %4, %16
  %18 = load ptr, ptr %13, align 8, !tbaa !122
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !142
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !302

24:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 763, ptr noundef nonnull @.str.1) #15
  br label %25

25:                                               ; preds = %17, %24
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28, !prof !302

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !124
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !124
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.20, i32 noundef %30, i32 noundef %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 4
  store i32 %3, ptr %37, align 8, !tbaa !142
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !197
  store ptr %5, ptr %38, align 8, !tbaa !197
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !124
  %43 = load i32, ptr @array_size, align 4, !tbaa !96
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %52, !prof !302

45:                                               ; preds = %34
  %46 = load ptr, ptr @cfun, align 8, !tbaa !81
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !102
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !108
  %51 = icmp sgt i32 %50, %43
  br i1 %51, label %52, label %85, !prof !383

52:                                               ; preds = %45, %34
  %53 = load ptr, ptr @cfun, align 8, !tbaa !81
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !102
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !108
  %58 = add nsw i32 %42, 1
  %59 = tail call i32 @llvm.smax.i32(i32 %57, i32 %58)
  %60 = sdiv i32 %59, 4
  %61 = mul i32 %60, 5
  %62 = add i32 %61, 5
  %63 = load ptr, ptr @bbd, align 8, !tbaa !81
  %64 = sext i32 %62 to i64
  %65 = shl nsw i64 %64, 5
  %66 = tail call ptr @xrealloc(ptr noundef %63, i64 noundef %65) #15
  store ptr %66, ptr @bbd, align 8, !tbaa !81
  %67 = load i32, ptr @array_size, align 4, !tbaa !96
  %68 = icmp slt i32 %67, %62
  br i1 %68, label %69, label %80

69:                                               ; preds = %52
  %70 = sext i32 %67 to i64
  %71 = sext i32 %62 to i64
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ %70, %69 ], [ %78, %72 ]
  %74 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %66, i64 %73
  store i32 -1, ptr %74, align 8, !tbaa !110
  %75 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %66, i64 %73, i32 2
  store i32 -1, ptr %75, align 8, !tbaa !112
  %76 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %66, i64 %73, i32 1
  store i32 -1, ptr %76, align 4, !tbaa !113
  %77 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %66, i64 %73, i32 3
  %78 = add nsw i64 %73, 1
  %79 = icmp eq i64 %78, %71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  br i1 %79, label %80, label %72, !llvm.loop !384

80:                                               ; preds = %72, %52
  store i32 %62, ptr @array_size, align 4, !tbaa !96
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !81
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %81, ptr noundef nonnull @.str.21, i32 noundef %62)
  br label %85

85:                                               ; preds = %80, %83, %45
  %86 = load ptr, ptr @bbd, align 8, !tbaa !81
  %87 = load i32, ptr %41, align 8, !tbaa !124
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.bbro_basic_block_data_def, ptr %86, i64 %88, i32 2
  store i32 %3, ptr %89, align 8, !tbaa !112
  ret ptr %5
}

declare ptr @fibheap_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_duplicate_block_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

declare void @cfg_layout_initialize(i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cfg_layout_finalize() local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @block_label(ptr noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #3

declare ptr @unlink_insn_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #3

declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!79}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!35 = !{ptr @reorder_basic_blocks, ptr @current_ir_type, i64 38}
!36 = !{ptr @reorder_basic_blocks, ptr @set_edge_can_fallthru_flag, i64 38}
!37 = !{ptr @reorder_basic_blocks, ptr @mark_dfs_back_edges, i64 38}
!38 = !{ptr @reorder_basic_blocks, ptr @get_uncond_jump_length, i64 1}
!39 = !{ptr @reorder_basic_blocks, ptr @xmalloc, i64 76}
!40 = !{ptr @reorder_basic_blocks, ptr @fibheap_new, i64 190}
!41 = !{ptr @reorder_basic_blocks, ptr @bb_to_key, i64 65950}
!42 = !{ptr @reorder_basic_blocks, ptr @fibheap_insert, i64 57256}
!43 = !{ptr @reorder_basic_blocks, ptr @fibheap_empty, i64 45327}
!44 = !{ptr @reorder_basic_blocks, ptr @fibheap_extract_min, i64 45175}
!45 = !{ptr @reorder_basic_blocks, ptr @probably_never_executed_bb_p, i64 39743}
!46 = !{ptr @reorder_basic_blocks, ptr @fibheap_delete_node, i64 12081}
!47 = !{ptr @reorder_basic_blocks, ptr @block_ends_with_call_p, i64 153339}
!48 = !{ptr @reorder_basic_blocks, ptr @copy_bb_p, i64 75064}
!49 = !{ptr @reorder_basic_blocks, ptr @fibheap_replace_key, i64 3271}
!50 = !{ptr @reorder_basic_blocks, ptr @fibheap_delete, i64 190}
!51 = !{ptr @reorder_basic_blocks, ptr @xcalloc, i64 38}
!52 = !{ptr @reorder_basic_blocks, ptr @optimize_edge_for_speed_p, i64 30849}
!53 = !{ptr @reorder_basic_blocks, ptr @copy_bb, i64 258}
!54 = !{ptr @reorder_basic_blocks, ptr @free, i64 114}
!55 = !{ptr @reorder_basic_blocks, ptr @relink_block_chain, i64 38}
!56 = !{ptr @get_uncond_jump_length, ptr @gen_label_rtx, i64 1}
!57 = !{ptr @get_uncond_jump_length, ptr @get_insns, i64 1}
!58 = !{ptr @get_uncond_jump_length, ptr @emit_label_before, i64 1}
!59 = !{ptr @get_uncond_jump_length, ptr @gen_jump, i64 1}
!60 = !{ptr @get_uncond_jump_length, ptr @emit_jump_insn, i64 1}
!61 = !{ptr @get_uncond_jump_length, ptr @get_attr_min_length, i64 1}
!62 = !{ptr @get_uncond_jump_length, ptr @delete_insn, i64 2}
!63 = !{ptr @gate_duplicate_computed_gotos, ptr @optimize_function_for_size_p, i64 38}
!64 = !{ptr @duplicate_computed_gotos, ptr @cfg_layout_initialize, i64 38}
!65 = !{ptr @duplicate_computed_gotos, ptr @bitmap_obstack_alloc_stat, i64 38}
!66 = !{ptr @duplicate_computed_gotos, ptr @computed_jump_p, i64 153470}
!67 = !{ptr @duplicate_computed_gotos, ptr @cfg_layout_finalize, i64 38}
!68 = !{ptr @duplicate_computed_gotos, ptr @bitmap_obstack_free, i64 38}
!69 = !{ptr @rest_of_handle_reorder_blocks, ptr @cfg_layout_initialize, i64 38}
!70 = !{ptr @rest_of_handle_reorder_blocks, ptr @optimize_function_for_speed_p, i64 38}
!71 = !{ptr @rest_of_handle_reorder_blocks, ptr @reorder_basic_blocks, i64 38}
!72 = !{ptr @rest_of_handle_reorder_blocks, ptr @cleanup_cfg, i64 38}
!73 = !{ptr @rest_of_handle_reorder_blocks, ptr @cfg_layout_finalize, i64 38}
!74 = !{ptr @bb_to_key, ptr @probably_never_executed_bb_p, i64 65950}
!75 = !{ptr @copy_bb_p, ptr @can_duplicate_block_p, i64 68417}
!76 = !{ptr @copy_bb_p, ptr @optimize_bb_for_speed_p, i64 29}
!77 = !{ptr @copy_bb_p, ptr @get_attr_min_length, i64 354923}
!78 = !{ptr @copy_bb, ptr @duplicate_block, i64 258}
!79 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!80 = !{!"function_entry_count", i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"any pointer", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = !{!86, !82, i64 8}
!86 = !{!"_IO_FILE", !87, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !82, i64 104, !87, i64 112, !87, i64 116, !88, i64 120, !89, i64 128, !83, i64 130, !83, i64 131, !82, i64 136, !88, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !82, i64 176, !88, i64 184, !87, i64 192, !83, i64 196}
!87 = !{!"int", !83, i64 0}
!88 = !{!"long", !83, i64 0}
!89 = !{!"short", !83, i64 0}
!90 = !{!86, !82, i64 16}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{!83, !83, i64 0}
!93 = !{!86, !82, i64 40}
!94 = !{!86, !82, i64 48}
!95 = !{!86, !87, i64 0}
!96 = !{!87, !87, i64 0}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!"function_entry_count", i64 38}
!101 = !{!"branch_weights", i32 38, i32 0}
!102 = !{!103, !82, i64 8}
!103 = !{!"function", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !87, i64 104, !87, i64 108, !87, i64 112, !87, i64 116, !87, i64 120, !87, i64 124, !82, i64 128, !87, i64 136, !87, i64 137, !87, i64 138, !87, i64 138, !87, i64 138, !87, i64 138, !87, i64 138, !87, i64 138, !87, i64 138, !87, i64 139, !87, i64 139, !87, i64 139, !87, i64 139, !87, i64 139, !87, i64 139, !87, i64 139}
!104 = !{!105, !87, i64 24}
!105 = !{!"control_flow_graph", !82, i64 0, !82, i64 8, !82, i64 16, !87, i64 24, !87, i64 28, !87, i64 32, !82, i64 40, !87, i64 48, !83, i64 52, !83, i64 60, !87, i64 68, !87, i64 72}
!106 = !{!"branch_weights", i32 0, i32 38}
!107 = !{!"branch_weights", i32 1, i32 37}
!108 = !{!105, !87, i64 32}
!109 = !{!"branch_weights", i32 151, i32 1}
!110 = !{!111, !87, i64 0}
!111 = !{!"bbro_basic_block_data_def", !87, i64 0, !87, i64 4, !87, i64 8, !82, i64 16, !82, i64 24}
!112 = !{!111, !87, i64 8}
!113 = !{!111, !87, i64 4}
!114 = !{!"branch_weights", i32 151, i32 778009}
!115 = distinct !{!115, !98, !99}
!116 = !{!88, !88, i64 0}
!117 = !{!105, !82, i64 0}
!118 = !{!"branch_weights", i32 0, i32 76}
!119 = !{!120, !87, i64 0}
!120 = !{!"VEC_edge_base", !87, i64 0, !87, i64 4, !83, i64 8}
!121 = !{!"branch_weights", i32 38, i32 38}
!122 = !{!123, !82, i64 8}
!123 = !{!"edge_def", !82, i64 0, !82, i64 8, !83, i64 16, !82, i64 24, !82, i64 32, !87, i64 40, !87, i64 44, !87, i64 48, !87, i64 52, !88, i64 56}
!124 = !{!125, !87, i64 80}
!125 = !{!"basic_block_def", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !83, i64 32, !82, i64 48, !82, i64 56, !83, i64 64, !88, i64 72, !87, i64 80, !87, i64 84, !87, i64 88, !87, i64 92, !87, i64 96}
!126 = !{!111, !82, i64 16}
!127 = !{i64 -2147483648, i64 2147483648}
!128 = !{!111, !82, i64 24}
!129 = !{!125, !87, i64 88}
!130 = !{!125, !88, i64 72}
!131 = distinct !{!131, !98, !99}
!132 = !{!"branch_weights", i32 152, i32 0}
!133 = !{!"branch_weights", i32 45175, i32 0}
!134 = !{!"branch_weights", i32 5469, i32 39706}
!135 = !{!"branch_weights", i32 0, i32 39706}
!136 = !{!"branch_weights", i32 5746, i32 39429}
!137 = !{!"branch_weights", i32 5469, i32 0}
!138 = !{!139, !82, i64 0}
!139 = !{!"trace", !82, i64 0, !82, i64 8, !87, i64 16, !87, i64 20}
!140 = !{!139, !87, i64 16}
!141 = !{!139, !87, i64 20}
!142 = !{!143, !87, i64 32}
!143 = !{!"rtl_bb_info", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !87, i64 32}
!144 = !{!"branch_weights", i32 141258, i32 12081}
!145 = !{!"branch_weights", i32 153339, i32 0}
!146 = !{!"branch_weights", i32 0, i32 457450}
!147 = !{!"branch_weights", i32 153339, i32 304111}
!148 = !{!123, !87, i64 48}
!149 = !{!"branch_weights", i32 304111, i32 0}
!150 = !{!105, !82, i64 8}
!151 = !{!"branch_weights", i32 40, i32 304071}
!152 = !{!"branch_weights", i32 170635, i32 133436}
!153 = !{!125, !87, i64 96}
!154 = !{!"branch_weights", i32 170635, i32 0}
!155 = !{!123, !87, i64 52}
!156 = !{!"branch_weights", i32 170631, i32 4}
!157 = !{!"branch_weights", i32 0, i32 4}
!158 = !{!"branch_weights", i32 2700, i32 167931}
!159 = !{!"branch_weights", i32 2762, i32 167869}
!160 = !{!123, !82, i64 0}
!161 = !{!"branch_weights", i32 235, i32 167634}
!162 = !{!123, !88, i64 56}
!163 = !{!"branch_weights", i32 0, i32 167634}
!164 = !{!"branch_weights", i32 149390, i32 18244}
!165 = !{!"branch_weights", i32 10702, i32 7542}
!166 = !{!"branch_weights", i32 3696, i32 3846}
!167 = !{!"branch_weights", i32 1589, i32 2257}
!168 = !{!125, !82, i64 48}
!169 = !{!"branch_weights", i32 13252, i32 154382}
!170 = !{!"branch_weights", i32 0, i32 304111}
!171 = distinct !{!171, !98, !99}
!172 = !{!"branch_weights", i32 39376, i32 113963}
!173 = !{!125, !82, i64 0}
!174 = !{!"branch_weights", i32 0, i32 113963}
!175 = !{!"branch_weights", i32 44215, i32 69748}
!176 = !{i8 0, i8 2}
!177 = !{!"branch_weights", i32 43885, i32 330}
!178 = !{!"branch_weights", i32 113633, i32 190478}
!179 = !{!"branch_weights", i32 40, i32 190438}
!180 = !{!"branch_weights", i32 57002, i32 133436}
!181 = !{!"branch_weights", i32 51749, i32 5253}
!182 = !{!183, !88, i64 32}
!183 = !{!"fibnode", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !88, i64 32, !82, i64 40, !87, i64 48, !87, i64 51}
!184 = !{!"branch_weights", i32 5253, i32 0}
!185 = !{!"branch_weights", i32 2694, i32 49055}
!186 = !{!"branch_weights", i32 2754, i32 48995}
!187 = !{!"branch_weights", i32 2970, i32 48779}
!188 = !{!"branch_weights", i32 0, i32 48779}
!189 = !{!"branch_weights", i32 2933, i32 37}
!190 = !{!"branch_weights", i32 0, i32 37}
!191 = !{!"branch_weights", i32 2970, i32 0}
!192 = !{!"branch_weights", i32 51749, i32 0}
!193 = distinct !{!193, !98, !99}
!194 = !{!"branch_weights", i32 39706, i32 113633}
!195 = !{!"branch_weights", i32 0, i32 113633}
!196 = !{!125, !82, i64 56}
!197 = !{!125, !82, i64 16}
!198 = distinct !{!198, !98, !99}
!199 = distinct !{!199, !98, !99}
!200 = distinct !{!200, !98, !99}
!201 = !{!125, !82, i64 8}
!202 = !{!143, !82, i64 8}
!203 = !{!"branch_weights", i32 0, i32 340751}
!204 = !{!"branch_weights", i32 113632, i32 227119}
!205 = !{!"branch_weights", i32 113633, i32 113486}
!206 = !{!"branch_weights", i32 113486, i32 0}
!207 = !{!"branch_weights", i32 53561, i32 59925}
!208 = !{!"branch_weights", i32 0, i32 53561}
!209 = !{!"branch_weights", i32 1094021776, i32 677561860}
!210 = !{!"branch_weights", i32 0, i32 33076}
!211 = !{!"branch_weights", i32 32776, i32 300}
!212 = !{!"branch_weights", i32 0, i32 300}
!213 = !{!"branch_weights", i32 300, i32 0}
!214 = !{!"branch_weights", i32 45, i32 255}
!215 = !{!"branch_weights", i32 44, i32 1}
!216 = !{!"branch_weights", i32 1, i32 0}
!217 = !{!"branch_weights", i32 0, i32 227118}
!218 = !{!"branch_weights", i32 227118, i32 0}
!219 = distinct !{!219, !98, !99}
!220 = !{!"branch_weights", i32 0, i32 153339}
!221 = distinct !{!221, !98, !99}
!222 = !{!139, !82, i64 8}
!223 = !{!"branch_weights", i32 0, i32 116698}
!224 = !{!"branch_weights", i32 39706, i32 76992}
!225 = !{!"branch_weights", i32 40, i32 76952}
!226 = !{!"branch_weights", i32 3441, i32 73511}
!227 = !{!"branch_weights", i32 0, i32 3441}
!228 = !{!"branch_weights", i32 170, i32 3271}
!229 = !{!"branch_weights", i32 3271, i32 0}
!230 = !{!"branch_weights", i32 0, i32 76992}
!231 = !{!"branch_weights", i32 76992, i32 0}
!232 = distinct !{!232, !98, !99}
!233 = !{!"branch_weights", i32 45024, i32 151}
!234 = !{!"branch_weights", i32 38, i32 114}
!235 = distinct !{!235, !98, !99}
!236 = distinct !{!236, !98, !99}
!237 = distinct !{!237, !98, !99}
!238 = distinct !{!238, !98, !99}
!239 = !{!"branch_weights", i32 39706, i32 38}
!240 = !{!"branch_weights", i32 38659, i32 1047}
!241 = !{!"branch_weights", i32 38659, i32 0}
!242 = !{!"branch_weights", i32 39211, i32 38}
!243 = !{!"branch_weights", i32 0, i32 82633}
!244 = !{!"branch_weights", i32 39211, i32 43422}
!245 = !{!"branch_weights", i32 0, i32 43422}
!246 = !{!"branch_weights", i32 40727, i32 2695}
!247 = !{!"branch_weights", i32 913, i32 39814}
!248 = !{!"branch_weights", i32 683, i32 230}
!249 = !{!"branch_weights", i32 683, i32 0}
!250 = !{!"branch_weights", i32 590, i32 93}
!251 = !{!"branch_weights", i32 25, i32 68}
!252 = !{!"branch_weights", i32 1, i32 67}
!253 = !{!"branch_weights", i32 0, i32 1}
!254 = !{!"branch_weights", i32 43422, i32 0}
!255 = distinct !{!255, !98, !99}
!256 = !{!"branch_weights", i32 38621, i32 590}
!257 = !{!"branch_weights", i32 590, i32 0}
!258 = !{!"branch_weights", i32 38621, i32 38}
!259 = !{!"branch_weights", i32 0, i32 115021}
!260 = !{!"branch_weights", i32 39116, i32 75905}
!261 = !{!"branch_weights", i32 40, i32 75865}
!262 = !{!"branch_weights", i32 73148, i32 2717}
!263 = !{!"branch_weights", i32 1862, i32 71286}
!264 = !{!"branch_weights", i32 691, i32 1171}
!265 = !{!"branch_weights", i32 691, i32 0}
!266 = !{!"branch_weights", i32 457, i32 234}
!267 = !{!"branch_weights", i32 158, i32 76}
!268 = !{!"branch_weights", i32 73, i32 3}
!269 = !{!"branch_weights", i32 21, i32 52}
!270 = !{!"branch_weights", i32 0, i32 75905}
!271 = !{!"branch_weights", i32 75905, i32 0}
!272 = distinct !{!272, !98, !99}
!273 = !{!"branch_weights", i32 38659, i32 457}
!274 = !{!"branch_weights", i32 457, i32 0}
!275 = !{!"branch_weights", i32 0, i32 113663}
!276 = !{!"branch_weights", i32 38659, i32 75004}
!277 = !{!"branch_weights", i32 40, i32 74964}
!278 = !{!"branch_weights", i32 72247, i32 2717}
!279 = !{!"branch_weights", i32 45993, i32 26254}
!280 = !{!"branch_weights", i32 25805, i32 449}
!281 = !{!"branch_weights", i32 1086, i32 70712}
!282 = !{!"branch_weights", i32 963, i32 123}
!283 = !{!"branch_weights", i32 0, i32 181534}
!284 = !{!"branch_weights", i32 70835, i32 110699}
!285 = !{!"branch_weights", i32 30072, i32 80627}
!286 = !{!"branch_weights", i32 80627, i32 0}
!287 = !{!"branch_weights", i32 19690, i32 60937}
!288 = !{!"branch_weights", i32 8596, i32 11094}
!289 = !{!"branch_weights", i32 8596, i32 0}
!290 = !{!"branch_weights", i32 30072, i32 0}
!291 = !{!"branch_weights", i32 0, i32 110699}
!292 = !{!"branch_weights", i32 110699, i32 0}
!293 = distinct !{!293, !98, !99}
!294 = !{!"branch_weights", i32 0, i32 75004}
!295 = !{!"branch_weights", i32 75004, i32 0}
!296 = distinct !{!296, !98, !99}
!297 = !{!"branch_weights", i32 0, i32 38659}
!298 = !{!"branch_weights", i32 7810, i32 30849}
!299 = !{!"branch_weights", i32 29428, i32 1421}
!300 = !{!"branch_weights", i32 1392, i32 29}
!301 = !{!"branch_weights", i32 30591, i32 258}
!302 = !{!"branch_weights", i32 258, i32 0}
!303 = !{!"branch_weights", i32 64, i32 194}
!304 = !{!"branch_weights", i32 194, i32 0}
!305 = !{!"branch_weights", i32 457, i32 38659}
!306 = distinct !{!306, !98, !99}
!307 = distinct !{!307, !98, !99}
!308 = distinct !{!308, !98, !99}
!309 = !{!"function_entry_count", i64 1}
!310 = !{!"bb-reorder.c;get_uncond_jump_length"}
!311 = !{!"bb-reorder.c;gate_duplicate_computed_gotos"}
!312 = !{!313, !82, i64 976}
!313 = !{!"gcc_target", !314, i64 0, !316, i64 368, !317, i64 664, !87, i64 744, !82, i64 752, !82, i64 760, !82, i64 768, !82, i64 776, !82, i64 784, !82, i64 792, !82, i64 800, !82, i64 808, !82, i64 816, !82, i64 824, !82, i64 832, !82, i64 840, !82, i64 848, !82, i64 856, !82, i64 864, !82, i64 872, !82, i64 880, !82, i64 888, !82, i64 896, !82, i64 904, !82, i64 912, !82, i64 920, !82, i64 928, !82, i64 936, !82, i64 944, !82, i64 952, !82, i64 960, !82, i64 968, !82, i64 976, !82, i64 984, !82, i64 992, !82, i64 1000, !82, i64 1008, !82, i64 1016, !82, i64 1024, !82, i64 1032, !82, i64 1040, !82, i64 1048, !82, i64 1056, !88, i64 1064, !88, i64 1072, !82, i64 1080, !82, i64 1088, !82, i64 1096, !82, i64 1104, !82, i64 1112, !82, i64 1120, !82, i64 1128, !82, i64 1136, !82, i64 1144, !82, i64 1152, !82, i64 1160, !82, i64 1168, !318, i64 1176, !82, i64 1232, !82, i64 1240, !82, i64 1248, !82, i64 1256, !82, i64 1264, !82, i64 1272, !82, i64 1280, !82, i64 1288, !82, i64 1296, !82, i64 1304, !82, i64 1312, !82, i64 1320, !82, i64 1328, !82, i64 1336, !82, i64 1344, !82, i64 1352, !82, i64 1360, !82, i64 1368, !82, i64 1376, !82, i64 1384, !82, i64 1392, !82, i64 1400, !82, i64 1408, !82, i64 1416, !82, i64 1424, !82, i64 1432, !82, i64 1440, !82, i64 1448, !82, i64 1456, !88, i64 1464, !319, i64 1472, !82, i64 1664, !82, i64 1672, !82, i64 1680, !82, i64 1688, !82, i64 1696, !82, i64 1704, !82, i64 1712, !82, i64 1720, !82, i64 1728, !82, i64 1736, !82, i64 1744, !82, i64 1752, !82, i64 1760, !82, i64 1768, !82, i64 1776, !320, i64 1784, !321, i64 1792, !322, i64 1896, !323, i64 1968, !82, i64 2016, !83, i64 2024, !83, i64 2025, !83, i64 2026, !83, i64 2027, !83, i64 2028, !83, i64 2029, !83, i64 2030, !83, i64 2031, !83, i64 2032, !83, i64 2033, !83, i64 2034, !83, i64 2035}
!314 = !{!"asm_out", !82, i64 0, !82, i64 8, !82, i64 16, !315, i64 24, !315, i64 56, !82, i64 88, !82, i64 96, !82, i64 104, !82, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !82, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !82, i64 176, !82, i64 184, !82, i64 192, !82, i64 200, !82, i64 208, !82, i64 216, !82, i64 224, !82, i64 232, !82, i64 240, !82, i64 248, !82, i64 256, !82, i64 264, !82, i64 272, !82, i64 280, !82, i64 288, !82, i64 296, !82, i64 304, !82, i64 312, !82, i64 320, !82, i64 328, !82, i64 336, !82, i64 344, !82, i64 352, !82, i64 360}
!315 = !{!"asm_int_op", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24}
!316 = !{!"sched", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !82, i64 104, !82, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !82, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !82, i64 176, !82, i64 184, !82, i64 192, !82, i64 200, !82, i64 208, !82, i64 216, !82, i64 224, !82, i64 232, !82, i64 240, !82, i64 248, !82, i64 256, !82, i64 264, !82, i64 272, !82, i64 280, !82, i64 288}
!317 = !{!"vectorize", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72}
!318 = !{!"addr_space", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48}
!319 = !{!"calls", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !82, i64 104, !82, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !82, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !82, i64 176, !82, i64 184}
!320 = !{!"c", !82, i64 0}
!321 = !{!"cxx", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96}
!322 = !{!"emutls", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !83, i64 64, !83, i64 65}
!323 = !{!"target_option_hooks", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40}
!324 = !{!"VP", i32 0, i64 38, i64 588856467287548527, i64 38}
!325 = !{!"bb-reorder.c;duplicate_computed_gotos"}
!326 = !{!327, !87, i64 8}
!327 = !{!"param_info", !82, i64 0, !87, i64 8, !83, i64 12, !87, i64 16, !87, i64 20, !82, i64 24}
!328 = !{!"branch_weights", i32 1, i32 151}
!329 = !{!"branch_weights", i32 38, i32 153432}
!330 = !{!"branch_weights", i32 153470, i32 0}
!331 = distinct !{!331, !98, !99}
!332 = distinct !{!332, !98, !99}
!333 = !{!"branch_weights", i32 151, i32 613729}
!334 = distinct !{!334, !98, !99}
!335 = !{!336, !82, i64 0}
!336 = !{!"bitmap_head_def", !82, i64 0, !82, i64 8, !87, i64 16, !82, i64 24}
!337 = distinct !{!337, !98, !99}
!338 = !{!"bb-reorder.c;gate_handle_reorder_blocks"}
!339 = !{!"bb-reorder.c;rest_of_handle_reorder_blocks"}
!340 = !{!"branch_weights", i32 38, i32 153527}
!341 = !{!"branch_weights", i32 151, i32 614109}
!342 = distinct !{!342, !98, !99}
!343 = distinct !{!343, !98, !99}
!344 = !{!143, !82, i64 0}
!345 = !{!"bb-reorder.c;gate_handle_partition_blocks"}
!346 = distinct !{!346, !98, !99}
!347 = distinct !{!347, !98, !99}
!348 = distinct !{!348, !98, !99}
!349 = !{!143, !82, i64 24}
!350 = distinct !{!350, !98, !99}
!351 = distinct !{!351, !98, !99}
!352 = distinct !{!352, !98, !99}
!353 = distinct !{!353, !98, !99}
!354 = distinct !{!354, !98, !99}
!355 = !{!"function_entry_count", i64 65950}
!356 = !{!"bb-reorder.c;bb_to_key"}
!357 = !{!"branch_weights", i32 0, i32 65950}
!358 = !{!"branch_weights", i32 65950, i32 0}
!359 = !{!"branch_weights", i32 0, i32 300911}
!360 = !{!"branch_weights", i32 65950, i32 234961}
!361 = !{!"branch_weights", i32 38, i32 234923}
!362 = !{!"branch_weights", i32 9303, i32 225620}
!363 = !{!"branch_weights", i32 225658, i32 0}
!364 = !{!"branch_weights", i32 0, i32 234961}
!365 = !{!"branch_weights", i32 234961, i32 0}
!366 = distinct !{!366, !98, !99}
!367 = !{!"branch_weights", i32 57146, i32 8804}
!368 = !{!"function_entry_count", i64 75064}
!369 = !{!"bb-reorder.c;copy_bb_p"}
!370 = !{!"branch_weights", i32 6647, i32 68417}
!371 = !{!"branch_weights", i32 0, i32 68417}
!372 = !{!"branch_weights", i32 68388, i32 29}
!373 = !{!"branch_weights", i32 0, i32 29}
!374 = !{!"branch_weights", i32 1, i32 1001}
!375 = !{!"branch_weights", i32 67415, i32 536141}
!376 = !{!"branch_weights", i32 354692, i32 181449}
!377 = !{!"branch_weights", i32 1001, i32 602555}
!378 = distinct !{!378, !98, !99}
!379 = !{!"branch_weights", i32 67829, i32 588}
!380 = !{!"branch_weights", i32 67829, i32 0}
!381 = !{!"function_entry_count", i64 258}
!382 = !{!"bb-reorder.c;copy_bb"}
!383 = !{!"branch_weights", i32 0, i32 258}
!384 = distinct !{!384, !98, !99}
