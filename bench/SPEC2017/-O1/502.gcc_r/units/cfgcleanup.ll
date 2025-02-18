; ModuleID = 'cfgcleanup.c'
source_filename = "cfgcleanup.c"
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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.replace_label_data = type { ptr, ptr, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"cfgcleanup.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Dead jumptable %i removed\0A\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@crossjumps_occured = internal unnamed_addr global i1 false, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sibling\00", align 1
@pass_jump = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr null, ptr @rest_of_handle_jump, ptr null, ptr null, i32 0, i32 119, i32 0, i32 0, i32 0, i32 2, i32 8 } }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@pass_jump2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr null, ptr @rest_of_handle_jump2, ptr null, ptr null, i32 0, i32 119, i32 0, i32 0, i32 0, i32 2, i32 1025 } }, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@first_pass = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\0A\0Atry_optimize_cfg iteration %i\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Deleted label in block %i.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Deleting fallthru block %i.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Merged %d and %d without moving.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Moved block %d after %d and merged.\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Moved block %d before %d and merged.\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Simplifying condjump %i around jump %i\0A\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"Infinite loop in BB %i.\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Conditionals threaded.\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Forwarding edge %i->%i to %i failed.\0A\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"Splitting bb %i before %i insns\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Cross jumping from bb %i to bb %i; %i common insns\0A\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"Outcomes of branch in bb %i and %i differ too much (%i %i)\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Conditionals in bb %i and %i match.\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Tablejumps in bb %i and %i match.\0A\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@flag_thread_jumps = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !130 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !131
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !130 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !131
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !130 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !141

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !135
  %11 = load i8, ptr %3, align 1, !tbaa !142
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !130 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !141

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !135
  %11 = load i8, ptr %3, align 1, !tbaa !142
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !130 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !131
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !141

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !135
  %11 = load i8, ptr %3, align 1, !tbaa !142
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !130 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !131
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !130 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !141

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !143
  store i8 %12, ptr %4, align 1, !tbaa !142
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !130 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !141

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !143
  store i8 %12, ptr %4, align 1, !tbaa !142
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !130 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !141

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !143
  store i8 %12, ptr %4, align 1, !tbaa !142
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !130 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !130 {
  %2 = load i32, ptr %0, align 8, !tbaa !145
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !130 {
  %2 = load i32, ptr %0, align 8, !tbaa !145
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !130 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !146
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !130 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !146
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !130 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !130 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !130 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !130 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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
  br i1 %23, label %7, label %24, !llvm.loop !147

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !130 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #9 !prof !150 {
  tail call void @find_unreachable_blocks() #16
  %1 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !146
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %69, label %3, !prof !151

3:                                                ; preds = %0
  %4 = tail call i32 @current_ir_type() #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %69

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %69, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @cfun, align 8, !tbaa !131
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !152
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !154
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = load ptr, ptr @cfun, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !152
  %20 = load ptr, ptr %19, align 8, !tbaa !158
  %21 = icmp eq ptr %16, %20
  br i1 %21, label %99, label %22

22:                                               ; preds = %9, %61
  %23 = phi ptr [ %63, %61 ], [ %16, %9 ]
  %24 = phi i8 [ %62, %61 ], [ 0, %9 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !159
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %22
  %32 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %23) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @delete_basic_block(ptr noundef %23) #16
  br label %61

35:                                               ; preds = %31
  %36 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %23) #16
  %37 = icmp eq ptr %36, null
  br label %38

38:                                               ; preds = %58, %35
  %39 = phi ptr [ %26, %35 ], [ %52, %58 ]
  br i1 %37, label %42, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %36, align 8, !tbaa !160
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %38 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %36, align 8, !tbaa !160
  %47 = add i32 %46, -1
  store i32 %47, ptr %36, align 8, !tbaa !160
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %36, i64 0, i32 2, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !131
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !156
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 13
  %54 = load i32, ptr %53, align 8, !tbaa !159
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2095, ptr noundef nonnull @.str.1) #16
  br label %58

58:                                               ; preds = %45, %57
  tail call void @delete_basic_block(ptr noundef %50) #16
  br label %38, !llvm.loop !162

59:                                               ; preds = %42
  br i1 %37, label %61, label %60

60:                                               ; preds = %59
  tail call void @free(ptr noundef %36)
  br label %61

61:                                               ; preds = %60, %59, %34, %22
  %62 = phi i8 [ %24, %22 ], [ 1, %34 ], [ 1, %59 ], [ 1, %60 ]
  %63 = phi ptr [ %26, %22 ], [ %26, %34 ], [ %39, %59 ], [ %39, %60 ]
  %64 = load ptr, ptr @cfun, align 8, !tbaa !131
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !152
  %67 = load ptr, ptr %66, align 8, !tbaa !158
  %68 = icmp eq ptr %63, %67
  br i1 %68, label %99, label %22, !llvm.loop !163

69:                                               ; preds = %6, %3, %0
  %70 = load ptr, ptr @cfun, align 8, !tbaa !131
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !152
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !154
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !156
  %77 = load ptr, ptr @cfun, align 8, !tbaa !131
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !152
  %80 = load ptr, ptr %79, align 8, !tbaa !158
  %81 = icmp eq ptr %76, %80
  br i1 %81, label %99, label %82, !prof !164

82:                                               ; preds = %69, %92
  %83 = phi ptr [ %86, %92 ], [ %76, %69 ]
  %84 = phi i8 [ %93, %92 ], [ 0, %69 ]
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !156
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 13
  %88 = load i32, ptr %87, align 8, !tbaa !159
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92, !prof !165

91:                                               ; preds = %82
  tail call void @delete_basic_block(ptr noundef %83) #16
  br label %92

92:                                               ; preds = %82, %91
  %93 = phi i8 [ %84, %82 ], [ 1, %91 ]
  %94 = load ptr, ptr @cfun, align 8, !tbaa !131
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !152
  %97 = load ptr, ptr %96, align 8, !tbaa !158
  %98 = icmp eq ptr %86, %97
  br i1 %98, label %99, label %82, !prof !166, !llvm.loop !167

99:                                               ; preds = %61, %92, %9, %69
  %100 = phi i8 [ 0, %69 ], [ 0, %9 ], [ %93, %92 ], [ %62, %61 ]
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %103, label %102, !prof !168

102:                                              ; preds = %99
  tail call void @tidy_fallthru_edges() #16
  br label %103

103:                                              ; preds = %102, %99
  ret i8 %100
}

declare void @find_unreachable_blocks() local_unnamed_addr #3

declare i32 @current_ir_type() local_unnamed_addr #3

declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #3

declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare ptr @get_all_dominated_blocks(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @tidy_fallthru_edges() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @delete_dead_jumptables() local_unnamed_addr #9 !prof !169 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !131
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %72, label %10, !prof !171

10:                                               ; preds = %0, %63
  %11 = phi ptr [ %65, %63 ], [ %6, %0 ]
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = icmp eq ptr %17, null
  br i1 %18, label %63, label %19, !prof !171

19:                                               ; preds = %10, %60
  %20 = phi ptr [ %61, %60 ], [ %17, %10 ]
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 13
  br i1 %23, label %24, label %28, !prof !174

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %26 = load i32, ptr %25, align 8, !tbaa !142
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %63, label %28, !prof !175

28:                                               ; preds = %19, %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !142
  %32 = icmp eq i32 %22, 12
  br i1 %32, label %33, label %60, !prof !176

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !142
  %36 = lshr i32 %21, 28
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %60, !prof !177

39:                                               ; preds = %33
  %40 = load i32, ptr %31, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %60, !prof !178

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !142
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65534
  %48 = icmp eq i32 %47, 20
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %29, align 8, !tbaa !142
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %50, ptr noundef nonnull @.str.2, i32 noundef %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !142
  %58 = tail call ptr @delete_insn(ptr noundef nonnull %31) #16
  %59 = tail call ptr @delete_insn(ptr noundef nonnull %20) #16
  br label %60

60:                                               ; preds = %43, %28, %33, %39, %55
  %61 = phi ptr [ %57, %55 ], [ %31, %39 ], [ %31, %33 ], [ %31, %28 ], [ %31, %43 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %19, !prof !179, !llvm.loop !180

63:                                               ; preds = %24, %60, %10
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !170
  %66 = load ptr, ptr @cfun, align 8, !tbaa !131
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !152
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !154
  %71 = icmp eq ptr %65, %70
  br i1 %71, label %72, label %10, !prof !181, !llvm.loop !182

72:                                               ; preds = %63, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @cleanup_cfg(i32 noundef %0) local_unnamed_addr #9 !prof !183 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call i32 @current_ir_type() #16
  %6 = icmp eq i32 %5, 2
  %7 = or i32 %0, 32
  %8 = select i1 %6, i32 %7, i32 %0, !prof !184
  %9 = load i8, ptr @timevar_enable, align 1, !tbaa !142
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11, !prof !185

11:                                               ; preds = %1
  tail call void @timevar_push_1(i32 noundef 23) #16
  br label %12

12:                                               ; preds = %11, %1
  %13 = tail call zeroext i8 @delete_unreachable_blocks(), !range !186
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15, !prof !187

15:                                               ; preds = %12
  %16 = and i32 %8, 16
  %17 = icmp ne i32 %16, 0
  %18 = load i32, ptr @reload_completed, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19, !prof !188
  br i1 %20, label %25, label %21, !prof !188

21:                                               ; preds = %15
  %22 = tail call ptr @get_insns() #16
  %23 = tail call i32 @max_reg_num() #16
  %24 = tail call i32 @delete_trivially_dead_insns(ptr noundef %22, i32 noundef %23) #16
  br label %25

25:                                               ; preds = %15, %21, %12
  %26 = phi i8 [ 1, %15 ], [ 1, %21 ], [ 0, %12 ]
  tail call void @compact_blocks() #16
  %27 = and i32 %8, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30, !prof !189

29:                                               ; preds = %25
  tail call void @add_noreturn_fake_exit_edges() #16
  br label %30

30:                                               ; preds = %29, %25
  %31 = tail call zeroext i8 @dbg_cnt(i32 noundef 2) #16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %2161, label %33, !prof !190

33:                                               ; preds = %30
  %34 = and i32 %8, 10
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %8, 32
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %8, 33
  %39 = icmp eq i32 %38, 1
  %40 = lshr exact i32 %36, 5
  %41 = trunc i32 %40 to i8
  %42 = and i32 %8, 8
  %43 = icmp ne i32 %42, 0
  %44 = icmp eq i32 %27, 0
  %45 = and i32 %8, 32
  %46 = icmp eq i32 %45, 0
  %47 = icmp eq i32 %27, 0
  br label %48

48:                                               ; preds = %2149, %33
  %49 = phi i8 [ %26, %33 ], [ 1, %2149 ]
  br i1 %35, label %51, label %50, !prof !191

50:                                               ; preds = %48
  call void @clear_bb_flags() #16
  br label %51

51:                                               ; preds = %50, %48
  store i1 false, ptr @crossjumps_occured, align 1
  %52 = load ptr, ptr @cfun, align 8, !tbaa !131
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !152
  %55 = load ptr, ptr %54, align 8, !tbaa !158
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !170
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %54, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !154
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %78, label %61, !prof !192

61:                                               ; preds = %51, %61
  %62 = phi ptr [ %71, %61 ], [ %57, %51 ]
  %63 = call zeroext i8 @forwarder_block_p(ptr noundef %62) #16
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 13
  %66 = load i32, ptr %65, align 8, !tbaa !159
  %67 = and i32 %66, -1025
  %68 = select i1 %64, i32 0, i32 1024, !prof !193
  %69 = or disjoint i32 %67, %68
  store i32 %69, ptr %65, align 8, !tbaa !159
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !170
  %72 = load ptr, ptr @cfun, align 8, !tbaa !131
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !152
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !154
  %77 = icmp eq ptr %71, %76
  br i1 %77, label %78, label %61, !prof !194, !llvm.loop !195

78:                                               ; preds = %61, %51
  %79 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 32), align 8, !tbaa !196
  %80 = call zeroext i8 %79() #16, !prof !208
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %2113, !prof !209

82:                                               ; preds = %78
  store i1 true, ptr @first_pass, align 1
  br label %83

83:                                               ; preds = %2106, %82
  %84 = phi i32 [ 0, %82 ], [ %86, %2106 ]
  %85 = phi i32 [ 0, %82 ], [ %2109, %2106 ]
  %86 = add nuw nsw i32 %84, 1
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89, !prof !210

89:                                               ; preds = %83
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.5, i32 noundef %86)
  br label %91

91:                                               ; preds = %89, %83
  %92 = load ptr, ptr @cfun, align 8, !tbaa !131
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !152
  %95 = load ptr, ptr %94, align 8, !tbaa !158
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !170
  %98 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !154
  %100 = icmp eq ptr %97, %99
  br i1 %100, label %1933, label %101, !prof !211

101:                                              ; preds = %91, %1924
  %102 = phi ptr [ %1929, %1924 ], [ %94, %91 ]
  %103 = phi i8 [ %1926, %1924 ], [ 0, %91 ]
  %104 = phi ptr [ %1925, %1924 ], [ %97, %91 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !212
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107, !prof !213

107:                                              ; preds = %101
  %108 = load i32, ptr %105, align 8, !tbaa !214
  br label %109

109:                                              ; preds = %107, %101
  %110 = phi i32 [ %108, %107 ], [ 0, %101 ]
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %153, label %112, !prof !216

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !217
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116, !prof !218

116:                                              ; preds = %112
  %117 = load i32, ptr %114, align 8, !tbaa !214
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi i32 [ %117, %116 ], [ 0, %112 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %165, !prof !219

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !142
  %124 = getelementptr inbounds %struct.rtl_bb_info, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %123, align 8, !tbaa !220
  %126 = load ptr, ptr %124, align 8, !tbaa !142
  %127 = icmp eq ptr %126, %125
  br i1 %127, label %137, label %132, !prof !221

128:                                              ; preds = %132
  %129 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !142
  %131 = icmp eq ptr %130, %125
  br i1 %131, label %137, label %132, !prof !222, !llvm.loop !223

132:                                              ; preds = %121, %128
  %133 = phi ptr [ %130, %128 ], [ %126, %121 ]
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 7
  br i1 %136, label %128, label %165, !prof !222

137:                                              ; preds = %128, %121
  %138 = load ptr, ptr %102, align 8, !tbaa !158
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !217
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr %140, align 8, !tbaa !214
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %146, label %145

145:                                              ; preds = %142, %137
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %146

146:                                              ; preds = %145, %142
  %147 = load ptr, ptr %139, align 8, !tbaa !217
  %148 = getelementptr inbounds %struct.VEC_edge_base, ptr %147, i64 0, i32 2, i64 0
  %149 = load ptr, ptr %148, align 8, !tbaa !131
  %150 = getelementptr inbounds %struct.edge_def, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !224
  %152 = icmp eq ptr %151, %104
  br i1 %152, label %165, label %153

153:                                              ; preds = %146, %109
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 5
  %155 = load ptr, ptr %154, align 8, !tbaa !156
  call void @delete_basic_block(ptr noundef nonnull %104) #16
  %156 = select i1 %46, i8 1, i8 %103, !prof !226
  %157 = load ptr, ptr @cfun, align 8, !tbaa !131
  %158 = getelementptr inbounds %struct.function, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !152
  %160 = load ptr, ptr %159, align 8, !tbaa !158
  %161 = icmp eq ptr %155, %160
  br i1 %161, label %162, label %1924, !prof !227, !llvm.loop !228

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !170
  br label %1924, !llvm.loop !228

165:                                              ; preds = %132, %146, %118
  %166 = load ptr, ptr %104, align 8, !tbaa !212
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168, !prof !218

168:                                              ; preds = %165
  %169 = load i32, ptr %166, align 8, !tbaa !214
  %170 = icmp eq i32 %169, 1
  %171 = zext i1 %170 to i8
  br label %172

172:                                              ; preds = %168, %165
  %173 = phi i8 [ %171, %168 ], [ 0, %165 ]
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %286, label %175, !prof !229

175:                                              ; preds = %172
  br i1 %167, label %179, label %176, !prof !230

176:                                              ; preds = %175
  %177 = load i32, ptr %166, align 8, !tbaa !214
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %180, label %179, !prof !231

179:                                              ; preds = %176, %175
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %180

180:                                              ; preds = %179, %176
  %181 = load ptr, ptr %104, align 8, !tbaa !212
  %182 = getelementptr inbounds %struct.VEC_edge_base, ptr %181, i64 0, i32 2, i64 0
  %183 = load ptr, ptr %182, align 8, !tbaa !131
  %184 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 7
  %185 = load i32, ptr %184, align 8, !tbaa !232
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %286, label %188, !prof !233

188:                                              ; preds = %180
  %189 = icmp eq ptr %181, null
  br i1 %189, label %193, label %190, !prof !234

190:                                              ; preds = %188
  %191 = load i32, ptr %181, align 8, !tbaa !214
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %194, label %193, !prof !235

193:                                              ; preds = %190, %188
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %194

194:                                              ; preds = %193, %190
  %195 = load ptr, ptr %104, align 8, !tbaa !212
  %196 = getelementptr inbounds %struct.VEC_edge_base, ptr %195, i64 0, i32 2, i64 0
  %197 = load ptr, ptr %196, align 8, !tbaa !131
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 7
  %199 = load i32, ptr %198, align 8, !tbaa !232
  %200 = and i32 %199, 14
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %286, !prof !235

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 7
  %204 = load ptr, ptr %203, align 8, !tbaa !142
  %205 = load ptr, ptr %204, align 8, !tbaa !220
  %206 = load i32, ptr %205, align 8
  %207 = and i32 %206, 65535
  %208 = icmp eq i32 %207, 12
  br i1 %208, label %209, label %286, !prof !236

209:                                              ; preds = %202
  %210 = icmp eq ptr %195, null
  br i1 %210, label %214, label %211, !prof !237

211:                                              ; preds = %209
  %212 = load i32, ptr %195, align 8, !tbaa !214
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %215, label %214, !prof !238

214:                                              ; preds = %211, %209
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %215

215:                                              ; preds = %214, %211
  %216 = load ptr, ptr %104, align 8, !tbaa !212
  %217 = getelementptr inbounds %struct.VEC_edge_base, ptr %216, i64 0, i32 2, i64 0
  %218 = load ptr, ptr %217, align 8, !tbaa !131
  %219 = load ptr, ptr %218, align 8, !tbaa !239
  %220 = load ptr, ptr @cfun, align 8, !tbaa !131
  %221 = getelementptr inbounds %struct.function, ptr %220, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !152
  %223 = load ptr, ptr %222, align 8, !tbaa !158
  %224 = icmp eq ptr %219, %223
  br i1 %224, label %262, label %225, !prof !237

225:                                              ; preds = %215
  %226 = icmp eq ptr %216, null
  br i1 %226, label %230, label %227, !prof !237

227:                                              ; preds = %225
  %228 = load i32, ptr %216, align 8, !tbaa !214
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %231, label %230, !prof !238

230:                                              ; preds = %227, %225
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %231

231:                                              ; preds = %230, %227
  %232 = load ptr, ptr %104, align 8, !tbaa !212
  %233 = getelementptr inbounds %struct.VEC_edge_base, ptr %232, i64 0, i32 2, i64 0
  %234 = load ptr, ptr %233, align 8, !tbaa !131
  %235 = load ptr, ptr %234, align 8, !tbaa !239
  %236 = getelementptr inbounds %struct.basic_block_def, ptr %235, i64 0, i32 7
  %237 = load ptr, ptr %236, align 8, !tbaa !142
  %238 = getelementptr inbounds %struct.rtl_bb_info, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !172
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 9
  br i1 %242, label %243, label %262, !prof !238

243:                                              ; preds = %231
  %244 = load ptr, ptr %203, align 8, !tbaa !142
  %245 = load ptr, ptr %244, align 8, !tbaa !220
  %246 = icmp eq ptr %232, null
  br i1 %246, label %250, label %247, !prof !237

247:                                              ; preds = %243
  %248 = load i32, ptr %232, align 8, !tbaa !214
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %251, label %250, !prof !238

250:                                              ; preds = %247, %243
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %251

251:                                              ; preds = %250, %247
  %252 = load ptr, ptr %104, align 8, !tbaa !212
  %253 = getelementptr inbounds %struct.VEC_edge_base, ptr %252, i64 0, i32 2, i64 0
  %254 = load ptr, ptr %253, align 8, !tbaa !131
  %255 = load ptr, ptr %254, align 8, !tbaa !239
  %256 = getelementptr inbounds %struct.basic_block_def, ptr %255, i64 0, i32 7
  %257 = load ptr, ptr %256, align 8, !tbaa !142
  %258 = getelementptr inbounds %struct.rtl_bb_info, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !172
  %260 = call zeroext i8 @label_is_jump_target_p(ptr noundef %245, ptr noundef %259) #16
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %286, !prof !238

262:                                              ; preds = %251, %231, %215
  %263 = load ptr, ptr %203, align 8, !tbaa !142
  %264 = load ptr, ptr %263, align 8, !tbaa !220
  call void @delete_insn_chain(ptr noundef %264, ptr noundef %264, i8 noundef zeroext 0) #16
  %265 = load ptr, ptr %203, align 8, !tbaa !142
  %266 = load ptr, ptr %265, align 8, !tbaa !220
  %267 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 1
  %268 = load i32, ptr %267, align 8, !tbaa !142
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %279, !prof !237

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 0, i32 1, i32 0, i32 0, i64 2
  %272 = load ptr, ptr %271, align 8, !tbaa !142
  call void @reorder_insns_nobb(ptr noundef %264, ptr noundef %264, ptr noundef %272) #16
  %273 = load ptr, ptr %203, align 8, !tbaa !142
  store ptr %272, ptr %273, align 8, !tbaa !220
  %274 = load ptr, ptr %203, align 8, !tbaa !142
  %275 = getelementptr inbounds %struct.rtl_bb_info, ptr %274, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !172
  %277 = icmp eq ptr %276, %272
  br i1 %277, label %278, label %279

278:                                              ; preds = %270
  store ptr %264, ptr %275, align 8, !tbaa !172
  br label %279

279:                                              ; preds = %278, %270, %262
  %280 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %281 = icmp eq ptr %280, null
  br i1 %281, label %286, label %282, !prof !238

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 9
  %284 = load i32, ptr %283, align 8, !tbaa !240
  %285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %280, ptr noundef nonnull @.str.6, i32 noundef %284)
  br label %286

286:                                              ; preds = %282, %279, %251, %202, %194, %180, %172
  br i1 %37, label %287, label %387, !prof !241

287:                                              ; preds = %286
  %288 = load ptr, ptr %104, align 8, !tbaa !212
  %289 = icmp eq ptr %288, null
  br i1 %289, label %294, label %290, !prof !242

290:                                              ; preds = %287
  %291 = load i32, ptr %288, align 8, !tbaa !214
  %292 = icmp eq i32 %291, 1
  %293 = zext i1 %292 to i8
  br label %294

294:                                              ; preds = %290, %287
  %295 = phi i8 [ %293, %290 ], [ 0, %287 ]
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %387, label %297, !prof !243

297:                                              ; preds = %294
  br i1 %289, label %301, label %298, !prof !244

298:                                              ; preds = %297
  %299 = load i32, ptr %288, align 8, !tbaa !214
  %300 = icmp eq i32 %299, 1
  br i1 %300, label %302, label %301, !prof !245

301:                                              ; preds = %298, %297
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %302

302:                                              ; preds = %301, %298
  %303 = load ptr, ptr %104, align 8, !tbaa !212
  %304 = getelementptr inbounds %struct.VEC_edge_base, ptr %303, i64 0, i32 2, i64 0
  %305 = load ptr, ptr %304, align 8, !tbaa !131
  %306 = getelementptr inbounds %struct.edge_def, ptr %305, i64 0, i32 7
  %307 = load i32, ptr %306, align 8, !tbaa !232
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %387, label %310, !prof !246

310:                                              ; preds = %302
  %311 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 7
  %312 = load ptr, ptr %311, align 8, !tbaa !142
  %313 = load ptr, ptr %312, align 8, !tbaa !220
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, 65535
  %316 = icmp eq i32 %315, 12
  br i1 %316, label %387, label %317, !prof !247

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 13
  %319 = load i32, ptr %318, align 8, !tbaa !159
  %320 = and i32 %319, 1024
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %387, label %322, !prof !248

322:                                              ; preds = %317
  %323 = load ptr, ptr %113, align 8, !tbaa !217
  %324 = icmp eq ptr %323, null
  br i1 %324, label %328, label %325, !prof !249

325:                                              ; preds = %322
  %326 = load i32, ptr %323, align 8, !tbaa !214
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %329, label %328, !prof !250

328:                                              ; preds = %325, %322
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %329

329:                                              ; preds = %328, %325
  %330 = load ptr, ptr %113, align 8, !tbaa !217
  %331 = getelementptr inbounds %struct.VEC_edge_base, ptr %330, i64 0, i32 2, i64 0
  %332 = load ptr, ptr %331, align 8, !tbaa !131
  %333 = getelementptr inbounds %struct.edge_def, ptr %332, i64 0, i32 7
  %334 = load i32, ptr %333, align 8, !tbaa !232
  %335 = and i32 %334, 1
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %387, label %337, !prof !250

337:                                              ; preds = %329
  %338 = load ptr, ptr @cfun, align 8, !tbaa !131
  %339 = getelementptr inbounds %struct.function, ptr %338, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !152
  %341 = getelementptr inbounds %struct.control_flow_graph, ptr %340, i64 0, i32 3
  %342 = load i32, ptr %341, align 8, !tbaa !251
  %343 = icmp sgt i32 %342, 3
  br i1 %343, label %344, label %387

344:                                              ; preds = %337
  %345 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %346 = icmp eq ptr %345, null
  br i1 %346, label %351, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 9
  %349 = load i32, ptr %348, align 8, !tbaa !240
  %350 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %345, ptr noundef nonnull @.str.7, i32 noundef %349)
  br label %351

351:                                              ; preds = %347, %344
  %352 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 5
  %353 = load ptr, ptr %352, align 8, !tbaa !156
  %354 = load ptr, ptr @cfun, align 8, !tbaa !131
  %355 = getelementptr inbounds %struct.function, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !152
  %357 = load ptr, ptr %356, align 8, !tbaa !158
  %358 = icmp eq ptr %353, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %351
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 6
  %361 = load ptr, ptr %360, align 8, !tbaa !170
  br label %362

362:                                              ; preds = %359, %351
  %363 = phi ptr [ %361, %359 ], [ %353, %351 ]
  %364 = load ptr, ptr %104, align 8, !tbaa !212
  %365 = icmp eq ptr %364, null
  br i1 %365, label %369, label %366

366:                                              ; preds = %362
  %367 = load i32, ptr %364, align 8, !tbaa !214
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %370, label %369

369:                                              ; preds = %366, %362
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %370

370:                                              ; preds = %369, %366
  %371 = load ptr, ptr %104, align 8, !tbaa !212
  %372 = getelementptr inbounds %struct.VEC_edge_base, ptr %371, i64 0, i32 2, i64 0
  %373 = load ptr, ptr %372, align 8, !tbaa !131
  %374 = load ptr, ptr %113, align 8, !tbaa !217
  %375 = icmp eq ptr %374, null
  br i1 %375, label %379, label %376

376:                                              ; preds = %370
  %377 = load i32, ptr %374, align 8, !tbaa !214
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %380, label %379

379:                                              ; preds = %376, %370
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %380

380:                                              ; preds = %379, %376
  %381 = load ptr, ptr %113, align 8, !tbaa !217
  %382 = getelementptr inbounds %struct.VEC_edge_base, ptr %381, i64 0, i32 2, i64 0
  %383 = load ptr, ptr %382, align 8, !tbaa !131
  %384 = getelementptr inbounds %struct.edge_def, ptr %383, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !224
  %386 = call ptr @redirect_edge_succ_nodup(ptr noundef %373, ptr noundef %385) #16
  call void @delete_basic_block(ptr noundef nonnull %104) #16
  br label %1924, !llvm.loop !228

387:                                              ; preds = %337, %329, %317, %310, %302, %294, %286
  %388 = load ptr, ptr %113, align 8, !tbaa !217
  %389 = icmp eq ptr %388, null
  br i1 %389, label %394, label %390, !prof !218

390:                                              ; preds = %387
  %391 = load i32, ptr %388, align 8, !tbaa !214
  %392 = icmp eq i32 %391, 1
  %393 = zext i1 %392 to i8
  br label %394

394:                                              ; preds = %390, %387
  %395 = phi i8 [ %393, %390 ], [ 0, %387 ]
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %722, label %397, !prof !252

397:                                              ; preds = %394
  br i1 %389, label %401, label %398, !prof !253

398:                                              ; preds = %397
  %399 = load i32, ptr %388, align 8, !tbaa !214
  %400 = icmp eq i32 %399, 1
  br i1 %400, label %402, label %401, !prof !254

401:                                              ; preds = %398, %397
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %402

402:                                              ; preds = %401, %398
  %403 = load ptr, ptr %113, align 8, !tbaa !217
  %404 = getelementptr inbounds %struct.VEC_edge_base, ptr %403, i64 0, i32 2, i64 0
  %405 = load ptr, ptr %404, align 8, !tbaa !131
  %406 = icmp eq ptr %405, null
  br i1 %406, label %722, label %407, !prof !253

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct.edge_def, ptr %405, i64 0, i32 7
  %409 = load i32, ptr %408, align 8, !tbaa !232
  %410 = and i32 %409, 14
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %722, !prof !255

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.edge_def, ptr %405, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !224
  %415 = load ptr, ptr @cfun, align 8, !tbaa !131
  %416 = getelementptr inbounds %struct.function, ptr %415, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !152
  %418 = getelementptr inbounds %struct.control_flow_graph, ptr %417, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !154
  %420 = icmp eq ptr %414, %419
  br i1 %420, label %722, label %421, !prof !256

421:                                              ; preds = %412
  %422 = load ptr, ptr %414, align 8, !tbaa !212
  %423 = icmp eq ptr %422, null
  br i1 %423, label %428, label %424, !prof !257

424:                                              ; preds = %421
  %425 = load i32, ptr %422, align 8, !tbaa !214
  %426 = icmp eq i32 %425, 1
  %427 = zext i1 %426 to i8
  br label %428

428:                                              ; preds = %424, %421
  %429 = phi i8 [ %427, %424 ], [ 0, %421 ]
  %430 = icmp eq i8 %429, 0
  %431 = icmp eq ptr %104, %414
  %432 = or i1 %431, %430
  br i1 %432, label %722, label %433, !prof !258

433:                                              ; preds = %428
  br i1 %37, label %446, label %434, !prof !259

434:                                              ; preds = %433
  %435 = call zeroext i8 @can_merge_blocks_p(ptr noundef nonnull %104, ptr noundef nonnull %414) #16
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %722, label %437, !prof !260

437:                                              ; preds = %434
  call void @merge_blocks(ptr noundef nonnull %104, ptr noundef nonnull %414) #16
  %438 = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %104) #16
  %439 = icmp eq i8 %438, 0
  %440 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 13
  %441 = load i32, ptr %440, align 8, !tbaa !159
  br i1 %439, label %444, label %442, !prof !261

442:                                              ; preds = %437
  %443 = or i32 %441, 1024
  store i32 %443, ptr %440, align 8, !tbaa !159
  br label %722

444:                                              ; preds = %437
  %445 = and i32 %441, -1025
  store i32 %445, ptr %440, align 8, !tbaa !159
  br label %722

446:                                              ; preds = %433
  %447 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 7
  %448 = load ptr, ptr %447, align 8, !tbaa !142
  %449 = getelementptr inbounds %struct.rtl_bb_info, ptr %448, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !172
  %451 = load i32, ptr %450, align 8
  %452 = and i32 %451, 65535
  %453 = icmp eq i32 %452, 9
  br i1 %453, label %454, label %469, !prof !262

454:                                              ; preds = %446
  %455 = load i32, ptr @reload_completed, align 4, !tbaa !146
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %460, label %457, !prof !263

457:                                              ; preds = %454
  %458 = call i32 @simplejump_p(ptr noundef nonnull %450) #16
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %722, label %469, !prof !263

460:                                              ; preds = %454
  %461 = call i32 @onlyjump_p(ptr noundef nonnull %450) #16
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %722, label %463

463:                                              ; preds = %460
  %464 = load ptr, ptr %447, align 8, !tbaa !142
  %465 = getelementptr inbounds %struct.rtl_bb_info, ptr %464, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !172
  %467 = call zeroext i8 @tablejump_p(ptr noundef %466, ptr noundef null, ptr noundef null) #16
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %722

469:                                              ; preds = %463, %457, %446
  %470 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 13
  %471 = load i32, ptr %470, align 8, !tbaa !159
  %472 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 13
  %473 = load i32, ptr %472, align 8, !tbaa !159
  %474 = xor i32 %473, %471
  %475 = and i32 %474, 96
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %717, !prof !264

477:                                              ; preds = %469
  %478 = load i32, ptr %408, align 8, !tbaa !232
  %479 = and i32 %478, 1
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %508, label %481, !prof !262

481:                                              ; preds = %477
  %482 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 9
  %483 = load i32, ptr %482, align 8, !tbaa !240
  %484 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 9
  %485 = load i32, ptr %484, align 8, !tbaa !240
  call void @merge_blocks(ptr noundef nonnull %104, ptr noundef nonnull %414) #16
  %486 = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %104) #16
  %487 = icmp eq i8 %486, 0
  %488 = load i32, ptr %470, align 8, !tbaa !159
  br i1 %487, label %491, label %489, !prof !265

489:                                              ; preds = %481
  %490 = or i32 %488, 1024
  br label %493

491:                                              ; preds = %481
  %492 = and i32 %488, -1025
  br label %493

493:                                              ; preds = %491, %489
  %494 = phi i32 [ %490, %489 ], [ %492, %491 ]
  store i32 %494, ptr %470, align 8, !tbaa !159
  %495 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %496 = icmp eq ptr %495, null
  br i1 %496, label %499, label %497, !prof !265

497:                                              ; preds = %493
  %498 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %495, ptr noundef nonnull @.str.9, i32 noundef %483, i32 noundef %485)
  br label %499

499:                                              ; preds = %497, %493
  %500 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 5
  %501 = load ptr, ptr %500, align 8, !tbaa !156
  %502 = load ptr, ptr @cfun, align 8, !tbaa !131
  %503 = getelementptr inbounds %struct.function, ptr %502, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !152
  %505 = load ptr, ptr %504, align 8, !tbaa !158
  %506 = icmp eq ptr %501, %505
  %507 = select i1 %506, ptr %104, ptr %501, !prof !266
  br label %717

508:                                              ; preds = %477
  %509 = and i32 %8, 1
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %717, label %511, !prof !267

511:                                              ; preds = %508
  %512 = or i32 %473, %471
  %513 = and i32 %512, 1024
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %717, !prof !268

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 1
  br label %517

517:                                              ; preds = %544, %515
  %518 = phi i32 [ 0, %515 ], [ %545, %544 ]
  %519 = load ptr, ptr %516, align 8, !tbaa !131
  %520 = icmp eq ptr %519, null
  br i1 %520, label %523, label %521

521:                                              ; preds = %517
  %522 = load i32, ptr %519, align 8, !tbaa !214
  br label %523

523:                                              ; preds = %521, %517
  %524 = phi i32 [ %522, %521 ], [ 0, %517 ]
  %525 = icmp eq i32 %524, %518
  br i1 %525, label %530, label %526

526:                                              ; preds = %523
  %527 = zext i32 %518 to i64
  %528 = getelementptr inbounds %struct.VEC_edge_base, ptr %519, i64 0, i32 2, i64 %527
  %529 = load ptr, ptr %528, align 8, !tbaa !131
  br label %530

530:                                              ; preds = %526, %523
  %531 = phi ptr [ %529, %526 ], [ null, %523 ]
  br i1 %525, label %546, label %532

532:                                              ; preds = %530
  %533 = getelementptr inbounds %struct.edge_def, ptr %531, i64 0, i32 7
  %534 = load i32, ptr %533, align 8, !tbaa !232
  %535 = and i32 %534, 1
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %546

537:                                              ; preds = %532
  br i1 %520, label %540, label %538

538:                                              ; preds = %537
  %539 = load i32, ptr %519, align 8, !tbaa !214
  br label %540

540:                                              ; preds = %538, %537
  %541 = phi i32 [ %539, %538 ], [ 0, %537 ]
  %542 = icmp ult i32 %518, %541
  br i1 %542, label %544, label %543

543:                                              ; preds = %540
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %544

544:                                              ; preds = %543, %540
  %545 = add i32 %518, 1
  br label %517, !llvm.loop !269

546:                                              ; preds = %532, %530
  %547 = icmp eq ptr %531, null
  br label %548

548:                                              ; preds = %575, %546
  %549 = phi i32 [ 0, %546 ], [ %576, %575 ]
  %550 = load ptr, ptr %104, align 8, !tbaa !131
  %551 = icmp eq ptr %550, null
  br i1 %551, label %554, label %552

552:                                              ; preds = %548
  %553 = load i32, ptr %550, align 8, !tbaa !214
  br label %554

554:                                              ; preds = %552, %548
  %555 = phi i32 [ %553, %552 ], [ 0, %548 ]
  %556 = icmp eq i32 %555, %549
  br i1 %556, label %561, label %557

557:                                              ; preds = %554
  %558 = zext i32 %549 to i64
  %559 = getelementptr inbounds %struct.VEC_edge_base, ptr %550, i64 0, i32 2, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !131
  br label %561

561:                                              ; preds = %557, %554
  %562 = phi ptr [ %560, %557 ], [ null, %554 ]
  br i1 %556, label %577, label %563

563:                                              ; preds = %561
  %564 = getelementptr inbounds %struct.edge_def, ptr %562, i64 0, i32 7
  %565 = load i32, ptr %564, align 8, !tbaa !232
  %566 = and i32 %565, 1
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %577

568:                                              ; preds = %563
  br i1 %551, label %571, label %569

569:                                              ; preds = %568
  %570 = load i32, ptr %550, align 8, !tbaa !214
  br label %571

571:                                              ; preds = %569, %568
  %572 = phi i32 [ %570, %569 ], [ 0, %568 ]
  %573 = icmp ult i32 %549, %572
  br i1 %573, label %575, label %574

574:                                              ; preds = %571
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %575

575:                                              ; preds = %574, %571
  %576 = add i32 %549, 1
  br label %548, !llvm.loop !270

577:                                              ; preds = %563, %561
  %578 = icmp eq ptr %562, null
  %579 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 5
  %580 = load ptr, ptr %579, align 8, !tbaa !156
  %581 = icmp eq ptr %580, %414
  br i1 %581, label %582, label %585

582:                                              ; preds = %577
  %583 = getelementptr inbounds %struct.basic_block_def, ptr %580, i64 0, i32 5
  %584 = load ptr, ptr %583, align 8, !tbaa !156
  br label %585

585:                                              ; preds = %582, %577
  %586 = phi ptr [ %584, %582 ], [ %580, %577 ]
  br i1 %547, label %587, label %650

587:                                              ; preds = %585
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %588 = load i32, ptr %470, align 8, !tbaa !159
  %589 = load i32, ptr %472, align 8, !tbaa !159
  %590 = xor i32 %589, %588
  %591 = and i32 %590, 96
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %641

593:                                              ; preds = %587
  %594 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 7
  %595 = load ptr, ptr %594, align 8, !tbaa !142
  %596 = getelementptr inbounds %struct.rtl_bb_info, ptr %595, i64 0, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !172
  %598 = call zeroext i8 @tablejump_p(ptr noundef %597, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %609, label %600

600:                                              ; preds = %593
  %601 = load ptr, ptr %2, align 8, !tbaa !131
  %602 = call ptr @prev_active_insn(ptr noundef %601) #16
  %603 = load ptr, ptr %594, align 8, !tbaa !142
  %604 = getelementptr inbounds %struct.rtl_bb_info, ptr %603, i64 0, i32 1
  %605 = load ptr, ptr %604, align 8, !tbaa !172
  %606 = icmp eq ptr %602, %605
  br i1 %606, label %607, label %609

607:                                              ; preds = %600
  %608 = load ptr, ptr %3, align 8, !tbaa !131
  store ptr %608, ptr %604, align 8, !tbaa !172
  br label %609

609:                                              ; preds = %607, %600, %593
  %610 = load ptr, ptr %594, align 8, !tbaa !142
  %611 = getelementptr inbounds %struct.rtl_bb_info, ptr %610, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !172
  %613 = getelementptr inbounds %struct.rtx_def, ptr %612, i64 0, i32 1, i32 0, i32 0, i64 2
  %614 = load ptr, ptr %613, align 8, !tbaa !142
  %615 = icmp eq ptr %614, null
  br i1 %615, label %622, label %616

616:                                              ; preds = %609
  %617 = load i32, ptr %614, align 8
  %618 = and i32 %617, 65535
  %619 = icmp eq i32 %618, 11
  br i1 %619, label %620, label %622

620:                                              ; preds = %616
  %621 = call ptr @delete_insn(ptr noundef nonnull %614) #16
  br label %622

622:                                              ; preds = %620, %616, %609
  %623 = load ptr, ptr %594, align 8, !tbaa !142
  %624 = load ptr, ptr %623, align 8, !tbaa !220
  %625 = getelementptr inbounds %struct.rtl_bb_info, ptr %623, i64 0, i32 1
  %626 = load ptr, ptr %625, align 8, !tbaa !172
  %627 = load ptr, ptr %447, align 8, !tbaa !142
  %628 = getelementptr inbounds %struct.rtl_bb_info, ptr %627, i64 0, i32 1
  %629 = load ptr, ptr %628, align 8, !tbaa !172
  call void @reorder_insns_nobb(ptr noundef %624, ptr noundef %626, ptr noundef %629) #16
  %630 = load ptr, ptr %594, align 8, !tbaa !142
  %631 = getelementptr inbounds %struct.rtl_bb_info, ptr %630, i64 0, i32 1
  store ptr %597, ptr %631, align 8, !tbaa !172
  %632 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %633 = icmp eq ptr %632, null
  br i1 %633, label %640, label %634

634:                                              ; preds = %622
  %635 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 9
  %636 = load i32, ptr %635, align 8, !tbaa !240
  %637 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 9
  %638 = load i32, ptr %637, align 8, !tbaa !240
  %639 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %632, ptr noundef nonnull @.str.10, i32 noundef %636, i32 noundef %638)
  br label %640

640:                                              ; preds = %634, %622
  call void @merge_blocks(ptr noundef nonnull %104, ptr noundef nonnull %414) #16
  br label %641

641:                                              ; preds = %640, %587
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %642 = load ptr, ptr @cfun, align 8, !tbaa !131
  %643 = getelementptr inbounds %struct.function, ptr %642, i64 0, i32 1
  %644 = load ptr, ptr %643, align 8, !tbaa !152
  %645 = load ptr, ptr %644, align 8, !tbaa !158
  %646 = icmp eq ptr %586, %645
  br i1 %646, label %647, label %717

647:                                              ; preds = %641
  %648 = getelementptr inbounds %struct.basic_block_def, ptr %586, i64 0, i32 6
  %649 = load ptr, ptr %648, align 8, !tbaa !170
  br label %717

650:                                              ; preds = %585
  br i1 %578, label %668, label %651

651:                                              ; preds = %650
  %652 = load ptr, ptr %562, align 8, !tbaa !239
  %653 = load ptr, ptr @cfun, align 8, !tbaa !131
  %654 = getelementptr inbounds %struct.function, ptr %653, i64 0, i32 1
  %655 = load ptr, ptr %654, align 8, !tbaa !152
  %656 = load ptr, ptr %655, align 8, !tbaa !158
  %657 = icmp eq ptr %652, %656
  br i1 %657, label %717, label %658

658:                                              ; preds = %651
  %659 = call ptr @force_nonfallthru(ptr noundef nonnull %562) #16
  %660 = icmp eq ptr %659, null
  br i1 %660, label %668, label %661

661:                                              ; preds = %658
  %662 = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %659) #16
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %668, label %664

664:                                              ; preds = %661
  %665 = getelementptr inbounds %struct.basic_block_def, ptr %659, i64 0, i32 13
  %666 = load i32, ptr %665, align 8, !tbaa !159
  %667 = or i32 %666, 1024
  store i32 %667, ptr %665, align 8, !tbaa !159
  br label %668

668:                                              ; preds = %664, %661, %658, %650
  %669 = load i32, ptr %470, align 8, !tbaa !159
  %670 = load i32, ptr %472, align 8, !tbaa !159
  %671 = xor i32 %670, %669
  %672 = and i32 %671, 96
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %708

674:                                              ; preds = %668
  %675 = load ptr, ptr %447, align 8, !tbaa !142
  %676 = getelementptr inbounds %struct.rtl_bb_info, ptr %675, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !172
  %678 = call ptr @next_nonnote_insn(ptr noundef %677) #16
  %679 = load i32, ptr %678, align 8
  %680 = and i32 %679, 65535
  %681 = icmp eq i32 %680, 11
  br i1 %681, label %683, label %682

682:                                              ; preds = %674
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 667, ptr noundef nonnull @.str.1) #16
  br label %683

683:                                              ; preds = %682, %674
  %684 = call ptr @delete_insn(ptr noundef nonnull %678) #16
  %685 = load ptr, ptr %447, align 8, !tbaa !142
  %686 = getelementptr inbounds %struct.rtl_bb_info, ptr %685, i64 0, i32 1
  %687 = load ptr, ptr %686, align 8, !tbaa !172
  %688 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 7
  %689 = load ptr, ptr %688, align 8, !tbaa !142
  %690 = load ptr, ptr %689, align 8, !tbaa !220
  %691 = getelementptr inbounds %struct.rtx_def, ptr %690, i64 0, i32 1, i32 0, i32 0, i64 1
  %692 = load ptr, ptr %691, align 8, !tbaa !142
  %693 = icmp eq ptr %687, %692
  br i1 %693, label %696, label %694

694:                                              ; preds = %683
  %695 = load ptr, ptr %685, align 8, !tbaa !220
  call void @reorder_insns_nobb(ptr noundef %695, ptr noundef %687, ptr noundef %692) #16
  br label %696

696:                                              ; preds = %694, %683
  call void @df_set_bb_dirty(ptr noundef nonnull %104) #16
  %697 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %698 = icmp eq ptr %697, null
  br i1 %698, label %705, label %699

699:                                              ; preds = %696
  %700 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 9
  %701 = load i32, ptr %700, align 8, !tbaa !240
  %702 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 9
  %703 = load i32, ptr %702, align 8, !tbaa !240
  %704 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %697, ptr noundef nonnull @.str.11, i32 noundef %701, i32 noundef %703)
  br label %705

705:                                              ; preds = %699, %696
  call void @unlink_block(ptr noundef nonnull %104) #16
  %706 = getelementptr inbounds %struct.basic_block_def, ptr %414, i64 0, i32 5
  %707 = load ptr, ptr %706, align 8, !tbaa !156
  call void @link_block(ptr noundef nonnull %104, ptr noundef %707) #16
  call void @merge_blocks(ptr noundef nonnull %104, ptr noundef nonnull %414) #16
  br label %708

708:                                              ; preds = %705, %668
  %709 = load ptr, ptr @cfun, align 8, !tbaa !131
  %710 = getelementptr inbounds %struct.function, ptr %709, i64 0, i32 1
  %711 = load ptr, ptr %710, align 8, !tbaa !152
  %712 = load ptr, ptr %711, align 8, !tbaa !158
  %713 = icmp eq ptr %586, %712
  br i1 %713, label %714, label %717

714:                                              ; preds = %708
  %715 = getelementptr inbounds %struct.basic_block_def, ptr %586, i64 0, i32 6
  %716 = load ptr, ptr %715, align 8, !tbaa !170
  br label %717

717:                                              ; preds = %714, %708, %651, %647, %641, %511, %508, %499, %469
  %718 = phi ptr [ %507, %499 ], [ null, %469 ], [ null, %508 ], [ null, %511 ], [ %649, %647 ], [ %586, %641 ], [ %716, %714 ], [ %586, %708 ], [ null, %651 ]
  %719 = icmp ne ptr %718, null
  %720 = select i1 %719, ptr %718, ptr %104, !prof !271
  %721 = zext i1 %719 to i8
  br label %722

722:                                              ; preds = %717, %463, %460, %457, %444, %442, %434, %428, %412, %407, %402, %394
  %723 = phi ptr [ %104, %407 ], [ %104, %457 ], [ %104, %463 ], [ %104, %460 ], [ %104, %428 ], [ %104, %412 ], [ %104, %402 ], [ %104, %394 ], [ %720, %717 ], [ %104, %442 ], [ %104, %444 ], [ %104, %434 ]
  %724 = phi i8 [ 0, %407 ], [ 0, %457 ], [ 0, %463 ], [ 0, %460 ], [ 0, %428 ], [ 0, %412 ], [ 0, %402 ], [ 0, %394 ], [ %721, %717 ], [ 1, %442 ], [ 1, %444 ], [ 0, %434 ]
  br i1 %39, label %725, label %848, !prof !272

725:                                              ; preds = %722
  %726 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 1
  %727 = load ptr, ptr %726, align 8, !tbaa !217
  %728 = icmp eq ptr %727, null
  br i1 %728, label %848, label %729, !prof !273

729:                                              ; preds = %725
  %730 = load i32, ptr %727, align 8, !tbaa !214
  %731 = icmp eq i32 %730, 2
  br i1 %731, label %732, label %848, !prof !274

732:                                              ; preds = %729
  %733 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 7
  %734 = load ptr, ptr %733, align 8, !tbaa !142
  %735 = getelementptr inbounds %struct.rtl_bb_info, ptr %734, i64 0, i32 1
  %736 = load ptr, ptr %735, align 8, !tbaa !172
  %737 = call i32 @any_condjump_p(ptr noundef %736) #16
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %848, label %739, !prof !275

739:                                              ; preds = %732
  %740 = load ptr, ptr %726, align 8, !tbaa !217
  %741 = getelementptr inbounds %struct.VEC_edge_base, ptr %740, i64 0, i32 2, i64 0
  %742 = load ptr, ptr %741, align 8, !tbaa !131
  %743 = getelementptr inbounds %struct.edge_def, ptr %742, i64 0, i32 7
  %744 = load i32, ptr %743, align 8, !tbaa !232
  %745 = and i32 %744, 1
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %750, !prof !276

747:                                              ; preds = %739
  %748 = getelementptr inbounds %struct.VEC_edge_base, ptr %740, i64 0, i32 2, i64 1
  %749 = load ptr, ptr %748, align 8, !tbaa !131
  br label %750

750:                                              ; preds = %747, %739
  %751 = phi ptr [ %749, %747 ], [ %742, %739 ]
  br i1 %746, label %755, label %752, !prof !276

752:                                              ; preds = %750
  %753 = getelementptr inbounds %struct.VEC_edge_base, ptr %740, i64 0, i32 2, i64 1
  %754 = load ptr, ptr %753, align 8, !tbaa !131
  br label %755

755:                                              ; preds = %752, %750
  %756 = phi ptr [ %754, %752 ], [ %742, %750 ]
  %757 = getelementptr inbounds %struct.edge_def, ptr %751, i64 0, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !224
  %759 = load ptr, ptr %758, align 8, !tbaa !212
  %760 = icmp eq ptr %759, null
  br i1 %760, label %848, label %761, !prof !275

761:                                              ; preds = %755
  %762 = load i32, ptr %759, align 8, !tbaa !214
  %763 = icmp eq i32 %762, 1
  br i1 %763, label %764, label %848, !prof !277

764:                                              ; preds = %761
  %765 = getelementptr inbounds %struct.basic_block_def, ptr %758, i64 0, i32 6
  %766 = load ptr, ptr %765, align 8, !tbaa !170
  %767 = load ptr, ptr @cfun, align 8, !tbaa !131
  %768 = getelementptr inbounds %struct.function, ptr %767, i64 0, i32 1
  %769 = load ptr, ptr %768, align 8, !tbaa !152
  %770 = getelementptr inbounds %struct.control_flow_graph, ptr %769, i64 0, i32 1
  %771 = load ptr, ptr %770, align 8, !tbaa !154
  %772 = icmp eq ptr %766, %771
  br i1 %772, label %848, label %773, !prof !278

773:                                              ; preds = %764
  %774 = getelementptr inbounds %struct.basic_block_def, ptr %758, i64 0, i32 13
  %775 = load i32, ptr %774, align 8, !tbaa !159
  %776 = and i32 %775, 1024
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %848, label %778, !prof !279

778:                                              ; preds = %773
  %779 = getelementptr inbounds %struct.basic_block_def, ptr %758, i64 0, i32 1
  %780 = load ptr, ptr %779, align 8, !tbaa !217
  %781 = icmp eq ptr %780, null
  br i1 %781, label %785, label %782, !prof !280

782:                                              ; preds = %778
  %783 = load i32, ptr %780, align 8, !tbaa !214
  %784 = icmp eq i32 %783, 1
  br i1 %784, label %786, label %785, !prof !281

785:                                              ; preds = %782, %778
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %786

786:                                              ; preds = %785, %782
  %787 = load ptr, ptr %779, align 8, !tbaa !217
  %788 = getelementptr inbounds %struct.VEC_edge_base, ptr %787, i64 0, i32 2, i64 0
  %789 = load ptr, ptr %788, align 8, !tbaa !131
  %790 = getelementptr inbounds %struct.edge_def, ptr %789, i64 0, i32 1
  %791 = load ptr, ptr %790, align 8, !tbaa !224
  %792 = load i32, ptr %774, align 8, !tbaa !159
  %793 = getelementptr inbounds %struct.basic_block_def, ptr %791, i64 0, i32 13
  %794 = load i32, ptr %793, align 8, !tbaa !159
  %795 = xor i32 %794, %792
  %796 = and i32 %795, 96
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %848, !prof !281

798:                                              ; preds = %786
  %799 = getelementptr inbounds %struct.edge_def, ptr %756, i64 0, i32 7
  %800 = load i32, ptr %799, align 8, !tbaa !232
  %801 = and i32 %800, 8192
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %848, !prof !281

803:                                              ; preds = %798
  %804 = getelementptr inbounds %struct.edge_def, ptr %756, i64 0, i32 1
  %805 = load ptr, ptr %804, align 8, !tbaa !224
  %806 = load ptr, ptr @cfun, align 8, !tbaa !131
  %807 = getelementptr inbounds %struct.function, ptr %806, i64 0, i32 1
  %808 = load ptr, ptr %807, align 8, !tbaa !152
  %809 = getelementptr inbounds %struct.control_flow_graph, ptr %808, i64 0, i32 1
  %810 = load ptr, ptr %809, align 8, !tbaa !154
  %811 = icmp eq ptr %805, %810
  br i1 %811, label %848, label %812, !prof !280

812:                                              ; preds = %803
  %813 = call zeroext i8 @can_fallthru(ptr noundef nonnull %758, ptr noundef %805) #16
  %814 = icmp eq i8 %813, 0
  br i1 %814, label %848, label %815, !prof !281

815:                                              ; preds = %812
  %816 = call ptr @block_label(ptr noundef %791) #16
  %817 = call i32 @invert_jump(ptr noundef %736, ptr noundef %816, i32 noundef 0) #16
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %848, label %819

819:                                              ; preds = %815
  %820 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %821 = icmp eq ptr %820, null
  br i1 %821, label %832, label %822

822:                                              ; preds = %819
  %823 = getelementptr inbounds %struct.rtx_def, ptr %736, i64 0, i32 1
  %824 = load i32, ptr %823, align 8, !tbaa !142
  %825 = getelementptr inbounds %struct.basic_block_def, ptr %758, i64 0, i32 7
  %826 = load ptr, ptr %825, align 8, !tbaa !142
  %827 = getelementptr inbounds %struct.rtl_bb_info, ptr %826, i64 0, i32 1
  %828 = load ptr, ptr %827, align 8, !tbaa !172
  %829 = getelementptr inbounds %struct.rtx_def, ptr %828, i64 0, i32 1
  %830 = load i32, ptr %829, align 8, !tbaa !142
  %831 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %820, ptr noundef nonnull @.str.12, i32 noundef %824, i32 noundef %830)
  br label %832

832:                                              ; preds = %822, %819
  %833 = call ptr @redirect_edge_succ_nodup(ptr noundef %756, ptr noundef %805) #16
  %834 = call ptr @redirect_edge_succ_nodup(ptr noundef %751, ptr noundef %791) #16
  %835 = getelementptr inbounds %struct.edge_def, ptr %833, i64 0, i32 7
  %836 = load i32, ptr %835, align 8, !tbaa !232
  %837 = or i32 %836, 1
  store i32 %837, ptr %835, align 8, !tbaa !232
  %838 = getelementptr inbounds %struct.edge_def, ptr %834, i64 0, i32 7
  %839 = load i32, ptr %838, align 8, !tbaa !232
  %840 = and i32 %839, -2
  store i32 %840, ptr %838, align 8, !tbaa !232
  call void @update_br_prob_note(ptr noundef %723) #16
  call void @delete_basic_block(ptr noundef nonnull %758) #16
  call void @tidy_fallthru_edge(ptr noundef %833) #16
  %841 = call zeroext i8 @forwarder_block_p(ptr noundef %723) #16
  %842 = icmp eq i8 %841, 0
  %843 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 13
  %844 = load i32, ptr %843, align 8, !tbaa !159
  %845 = and i32 %844, -1025
  %846 = select i1 %842, i32 0, i32 1024
  %847 = or disjoint i32 %845, %846
  store i32 %847, ptr %843, align 8, !tbaa !159
  br label %848

848:                                              ; preds = %832, %725, %729, %732, %755, %761, %764, %773, %786, %798, %803, %812, %815, %722
  %849 = phi i8 [ %724, %722 ], [ %724, %729 ], [ %724, %732 ], [ %724, %773 ], [ %724, %764 ], [ %724, %761 ], [ %724, %798 ], [ %724, %786 ], [ %724, %812 ], [ %724, %803 ], [ %724, %815 ], [ %724, %725 ], [ %724, %755 ], [ 1, %832 ]
  %850 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 1
  %851 = load ptr, ptr %850, align 8, !tbaa !217
  %852 = icmp eq ptr %851, null
  br i1 %852, label %857, label %853, !prof !218

853:                                              ; preds = %848
  %854 = load i32, ptr %851, align 8, !tbaa !214
  %855 = icmp eq i32 %854, 1
  %856 = zext i1 %855 to i8
  br label %857

857:                                              ; preds = %853, %848
  %858 = phi i8 [ %856, %853 ], [ 0, %848 ]
  %859 = icmp eq i8 %858, 0
  br i1 %859, label %925, label %860, !prof !282

860:                                              ; preds = %857
  br i1 %852, label %864, label %861, !prof !283

861:                                              ; preds = %860
  %862 = load i32, ptr %851, align 8, !tbaa !214
  %863 = icmp eq i32 %862, 1
  br i1 %863, label %865, label %864, !prof !284

864:                                              ; preds = %861, %860
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %865

865:                                              ; preds = %864, %861
  %866 = load ptr, ptr %850, align 8, !tbaa !217
  %867 = getelementptr inbounds %struct.VEC_edge_base, ptr %866, i64 0, i32 2, i64 0
  %868 = load ptr, ptr %867, align 8, !tbaa !131
  %869 = getelementptr inbounds %struct.edge_def, ptr %868, i64 0, i32 1
  %870 = load ptr, ptr %869, align 8, !tbaa !224
  %871 = load ptr, ptr @cfun, align 8, !tbaa !131
  %872 = getelementptr inbounds %struct.function, ptr %871, i64 0, i32 1
  %873 = load ptr, ptr %872, align 8, !tbaa !152
  %874 = getelementptr inbounds %struct.control_flow_graph, ptr %873, i64 0, i32 1
  %875 = load ptr, ptr %874, align 8, !tbaa !154
  %876 = icmp eq ptr %870, %875
  br i1 %876, label %925, label %877, !prof !285

877:                                              ; preds = %865
  %878 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 7
  %879 = load ptr, ptr %878, align 8, !tbaa !142
  %880 = getelementptr inbounds %struct.rtl_bb_info, ptr %879, i64 0, i32 1
  %881 = load ptr, ptr %880, align 8, !tbaa !172
  %882 = call i32 @onlyjump_p(ptr noundef %881) #16
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %925, label %884, !prof !286

884:                                              ; preds = %877
  %885 = load ptr, ptr %878, align 8, !tbaa !142
  %886 = getelementptr inbounds %struct.rtl_bb_info, ptr %885, i64 0, i32 1
  %887 = load ptr, ptr %886, align 8, !tbaa !172
  %888 = call ptr @find_reg_note(ptr noundef %887, i32 noundef 29, ptr noundef null) #16
  %889 = icmp eq ptr %888, null
  br i1 %889, label %890, label %925, !prof !287

890:                                              ; preds = %884
  %891 = load ptr, ptr %850, align 8, !tbaa !217
  %892 = icmp eq ptr %891, null
  br i1 %892, label %896, label %893, !prof !288

893:                                              ; preds = %890
  %894 = load i32, ptr %891, align 8, !tbaa !214
  %895 = icmp eq i32 %894, 1
  br i1 %895, label %897, label %896, !prof !287

896:                                              ; preds = %893, %890
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %897

897:                                              ; preds = %896, %893
  %898 = load ptr, ptr %850, align 8, !tbaa !217
  %899 = getelementptr inbounds %struct.VEC_edge_base, ptr %898, i64 0, i32 2, i64 0
  %900 = load ptr, ptr %899, align 8, !tbaa !131
  %901 = icmp eq ptr %898, null
  br i1 %901, label %905, label %902, !prof !288

902:                                              ; preds = %897
  %903 = load i32, ptr %898, align 8, !tbaa !214
  %904 = icmp eq i32 %903, 1
  br i1 %904, label %906, label %905, !prof !287

905:                                              ; preds = %902, %897
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %906

906:                                              ; preds = %905, %902
  %907 = load ptr, ptr %850, align 8, !tbaa !217
  %908 = getelementptr inbounds %struct.VEC_edge_base, ptr %907, i64 0, i32 2, i64 0
  %909 = load ptr, ptr %908, align 8, !tbaa !131
  %910 = getelementptr inbounds %struct.edge_def, ptr %909, i64 0, i32 1
  %911 = load ptr, ptr %910, align 8, !tbaa !224
  %912 = call ptr @try_redirect_by_replacing_jump(ptr noundef %900, ptr noundef %911, i8 noundef zeroext %41) #16
  %913 = icmp eq ptr %912, null
  br i1 %913, label %925, label %914, !prof !289

914:                                              ; preds = %906
  %915 = call zeroext i8 @forwarder_block_p(ptr noundef %723) #16
  %916 = icmp eq i8 %915, 0
  %917 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 13
  %918 = load i32, ptr %917, align 8, !tbaa !159
  br i1 %916, label %921, label %919, !prof !290

919:                                              ; preds = %914
  %920 = or i32 %918, 1024
  br label %923

921:                                              ; preds = %914
  %922 = and i32 %918, -1025
  br label %923

923:                                              ; preds = %919, %921
  %924 = phi i32 [ %922, %921 ], [ %920, %919 ]
  store i32 %924, ptr %917, align 8, !tbaa !159
  br label %925

925:                                              ; preds = %923, %906, %884, %877, %865, %857
  %926 = phi i8 [ %849, %884 ], [ %849, %906 ], [ %849, %877 ], [ %849, %865 ], [ %849, %857 ], [ 1, %923 ]
  %927 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 7
  %928 = load ptr, ptr %927, align 8, !tbaa !142
  %929 = getelementptr inbounds %struct.rtl_bb_info, ptr %928, i64 0, i32 1
  %930 = load ptr, ptr %929, align 8, !tbaa !172
  %931 = call ptr @find_reg_note(ptr noundef %930, i32 noundef 29, ptr noundef null) #16
  %932 = icmp eq ptr %931, null
  br i1 %932, label %933, label %1745, !prof !291

933:                                              ; preds = %925, %1741
  %934 = phi i32 [ %1737, %1741 ], [ 0, %925 ]
  %935 = phi ptr [ %1739, %1741 ], [ null, %925 ]
  %936 = phi i8 [ %1740, %1741 ], [ 0, %925 ]
  %937 = load ptr, ptr %850, align 8, !tbaa !131
  %938 = icmp eq ptr %937, null
  br i1 %938, label %941, label %939, !prof !292

939:                                              ; preds = %933
  %940 = load i32, ptr %937, align 8, !tbaa !214
  br label %941

941:                                              ; preds = %939, %933
  %942 = phi i32 [ %940, %939 ], [ 0, %933 ]
  %943 = icmp eq i32 %942, %934
  br i1 %943, label %948, label %944, !prof !293

944:                                              ; preds = %941
  %945 = zext i32 %934 to i64
  %946 = getelementptr inbounds %struct.VEC_edge_base, ptr %937, i64 0, i32 2, i64 %945
  %947 = load ptr, ptr %946, align 8, !tbaa !131
  br label %948

948:                                              ; preds = %944, %941
  %949 = phi ptr [ %947, %944 ], [ null, %941 ]
  %950 = icmp eq ptr %949, null
  br i1 %950, label %1742, label %951, !prof !293

951:                                              ; preds = %948
  %952 = load i1, ptr @first_pass, align 1
  %953 = call zeroext i8 @df_get_bb_dirty(ptr noundef %723) #16
  %954 = zext i1 %952 to i8
  %955 = or i8 %953, %954
  %956 = getelementptr inbounds %struct.edge_def, ptr %949, i64 0, i32 7
  %957 = load i32, ptr %956, align 8, !tbaa !232
  %958 = and i32 %957, 14
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %971, label %960, !prof !294

960:                                              ; preds = %951
  %961 = load ptr, ptr %850, align 8, !tbaa !131
  %962 = icmp eq ptr %961, null
  br i1 %962, label %965, label %963, !prof !295

963:                                              ; preds = %960
  %964 = load i32, ptr %961, align 8, !tbaa !214
  br label %965

965:                                              ; preds = %963, %960
  %966 = phi i32 [ %964, %963 ], [ 0, %960 ]
  %967 = icmp ult i32 %934, %966
  br i1 %967, label %969, label %968, !prof !296

968:                                              ; preds = %965
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %969

969:                                              ; preds = %968, %965
  %970 = add i32 %934, 1
  br label %1736, !llvm.loop !297

971:                                              ; preds = %951
  %972 = getelementptr inbounds %struct.edge_def, ptr %949, i64 0, i32 1
  %973 = load ptr, ptr %972, align 8, !tbaa !224
  %974 = getelementptr inbounds %struct.edge_def, ptr %949, i64 0, i32 5
  %975 = load i32, ptr %974, align 8, !tbaa !298
  %976 = load ptr, ptr @cfun, align 8, !tbaa !131
  %977 = getelementptr inbounds %struct.function, ptr %976, i64 0, i32 1
  %978 = load ptr, ptr %977, align 8, !tbaa !152
  %979 = getelementptr inbounds %struct.control_flow_graph, ptr %978, i64 0, i32 1
  %980 = load ptr, ptr %979, align 8, !tbaa !154
  %981 = icmp eq ptr %973, %980
  br i1 %981, label %989, label %982, !prof !299

982:                                              ; preds = %971
  %983 = getelementptr inbounds %struct.basic_block_def, ptr %973, i64 0, i32 7
  %984 = load ptr, ptr %983, align 8, !tbaa !142
  %985 = getelementptr inbounds %struct.rtl_bb_info, ptr %984, i64 0, i32 1
  %986 = load ptr, ptr %985, align 8, !tbaa !172
  %987 = call ptr @find_reg_note(ptr noundef %986, i32 noundef 29, ptr noundef null) #16
  %988 = icmp eq ptr %987, null
  br i1 %988, label %989, label %1736, !prof !300

989:                                              ; preds = %982, %971
  br label %990

990:                                              ; preds = %989, %1563
  %991 = phi ptr [ %1564, %1563 ], [ %973, %989 ]
  %992 = phi i32 [ %1565, %1563 ], [ 2, %989 ]
  %993 = phi i32 [ %1566, %1563 ], [ %975, %989 ]
  %994 = phi i8 [ %1567, %1563 ], [ 0, %989 ]
  %995 = phi i32 [ %1568, %1563 ], [ 0, %989 ]
  %996 = phi i8 [ %1006, %1563 ], [ %955, %989 ]
  %997 = phi ptr [ %1570, %1563 ], [ %935, %989 ]
  %998 = load ptr, ptr @cfun, align 8, !tbaa !131
  %999 = getelementptr inbounds %struct.function, ptr %998, i64 0, i32 1
  %1000 = load ptr, ptr %999, align 8, !tbaa !152
  %1001 = getelementptr inbounds %struct.control_flow_graph, ptr %1000, i64 0, i32 3
  %1002 = load i32, ptr %1001, align 8, !tbaa !251
  %1003 = icmp slt i32 %992, %1002
  br i1 %1003, label %1004, label %1571, !prof !301

1004:                                             ; preds = %990
  %1005 = call zeroext i8 @df_get_bb_dirty(ptr noundef %991) #16
  %1006 = or i8 %1005, %996
  %1007 = getelementptr inbounds %struct.basic_block_def, ptr %991, i64 0, i32 13
  %1008 = load i32, ptr %1007, align 8, !tbaa !159
  %1009 = and i32 %1008, 1024
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1121, label %1011, !prof !302

1011:                                             ; preds = %1004
  %1012 = getelementptr inbounds %struct.basic_block_def, ptr %991, i64 0, i32 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !217
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1018, label %1015, !prof !303

1015:                                             ; preds = %1011
  %1016 = load i32, ptr %1013, align 8, !tbaa !214
  %1017 = icmp eq i32 %1016, 1
  br i1 %1017, label %1019, label %1018, !prof !304

1018:                                             ; preds = %1015, %1011
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1019

1019:                                             ; preds = %1018, %1015
  %1020 = load ptr, ptr %1012, align 8, !tbaa !217
  %1021 = getelementptr inbounds %struct.VEC_edge_base, ptr %1020, i64 0, i32 2, i64 0
  %1022 = load ptr, ptr %1021, align 8, !tbaa !131
  %1023 = getelementptr inbounds %struct.edge_def, ptr %1022, i64 0, i32 7
  %1024 = load i32, ptr %1023, align 8, !tbaa !232
  %1025 = and i32 %1024, 8192
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1027, label %1121, !prof !304

1027:                                             ; preds = %1019
  %1028 = icmp eq ptr %1020, null
  br i1 %1028, label %1032, label %1029, !prof !303

1029:                                             ; preds = %1027
  %1030 = load i32, ptr %1020, align 8, !tbaa !214
  %1031 = icmp eq i32 %1030, 1
  br i1 %1031, label %1033, label %1032, !prof !304

1032:                                             ; preds = %1029, %1027
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1033

1033:                                             ; preds = %1032, %1029
  %1034 = load ptr, ptr %1012, align 8, !tbaa !217
  %1035 = getelementptr inbounds %struct.VEC_edge_base, ptr %1034, i64 0, i32 2, i64 0
  %1036 = load ptr, ptr %1035, align 8, !tbaa !131
  %1037 = getelementptr inbounds %struct.edge_def, ptr %1036, i64 0, i32 1
  %1038 = load ptr, ptr %1037, align 8, !tbaa !224
  %1039 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1040 = getelementptr inbounds %struct.function, ptr %1039, i64 0, i32 1
  %1041 = load ptr, ptr %1040, align 8, !tbaa !152
  %1042 = getelementptr inbounds %struct.control_flow_graph, ptr %1041, i64 0, i32 1
  %1043 = load ptr, ptr %1042, align 8, !tbaa !154
  %1044 = icmp eq ptr %1038, %1043
  br i1 %1044, label %1121, label %1045, !prof !305

1045:                                             ; preds = %1033
  %1046 = icmp eq ptr %1034, null
  br i1 %1046, label %1050, label %1047, !prof !306

1047:                                             ; preds = %1045
  %1048 = load i32, ptr %1034, align 8, !tbaa !214
  %1049 = icmp eq i32 %1048, 1
  br i1 %1049, label %1051, label %1050, !prof !307

1050:                                             ; preds = %1047, %1045
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1051

1051:                                             ; preds = %1050, %1047
  %1052 = load ptr, ptr %1012, align 8, !tbaa !217
  %1053 = getelementptr inbounds %struct.VEC_edge_base, ptr %1052, i64 0, i32 2, i64 0
  %1054 = load ptr, ptr %1053, align 8, !tbaa !131
  %1055 = getelementptr inbounds %struct.edge_def, ptr %1054, i64 0, i32 1
  %1056 = load ptr, ptr %1055, align 8, !tbaa !224
  %1057 = icmp eq ptr %991, %1056
  br i1 %1057, label %1058, label %1064, !prof !306

1058:                                             ; preds = %1051
  %1059 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1060 = getelementptr inbounds %struct.function, ptr %1059, i64 0, i32 1
  %1061 = load ptr, ptr %1060, align 8, !tbaa !152
  %1062 = getelementptr inbounds %struct.control_flow_graph, ptr %1061, i64 0, i32 3
  %1063 = load i32, ptr %1062, align 8, !tbaa !251
  br label %1552

1064:                                             ; preds = %1051
  %1065 = load i32, ptr @optimize, align 4, !tbaa !146
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1067, label %1552, !prof !306

1067:                                             ; preds = %1064
  %1068 = icmp eq ptr %1052, null
  br i1 %1068, label %1072, label %1069

1069:                                             ; preds = %1067
  %1070 = load i32, ptr %1052, align 8, !tbaa !214
  %1071 = icmp eq i32 %1070, 1
  br i1 %1071, label %1073, label %1072

1072:                                             ; preds = %1069, %1067
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1073

1073:                                             ; preds = %1072, %1069
  %1074 = load ptr, ptr %1012, align 8, !tbaa !217
  %1075 = getelementptr inbounds %struct.VEC_edge_base, ptr %1074, i64 0, i32 2, i64 0
  %1076 = load ptr, ptr %1075, align 8, !tbaa !131
  %1077 = getelementptr inbounds %struct.edge_def, ptr %1076, i64 0, i32 5
  %1078 = load i32, ptr %1077, align 8, !tbaa !298
  %1079 = icmp ne i32 %1078, 0
  %1080 = icmp ne i32 %993, 0
  %1081 = select i1 %1079, i1 %1080, i1 false
  br i1 %1081, label %1082, label %1091

1082:                                             ; preds = %1073
  %1083 = call zeroext i8 @locator_eq(i32 noundef %1078, i32 noundef %993) #16
  %1084 = icmp eq i8 %1083, 0
  br i1 %1084, label %1085, label %1091

1085:                                             ; preds = %1082
  %1086 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1087 = getelementptr inbounds %struct.function, ptr %1086, i64 0, i32 1
  %1088 = load ptr, ptr %1087, align 8, !tbaa !152
  %1089 = getelementptr inbounds %struct.control_flow_graph, ptr %1088, i64 0, i32 3
  %1090 = load i32, ptr %1089, align 8, !tbaa !251
  br label %1093

1091:                                             ; preds = %1082, %1073
  %1092 = select i1 %1079, i32 %1078, i32 %993
  br label %1093

1093:                                             ; preds = %1091, %1085
  %1094 = phi i32 [ %1090, %1085 ], [ %992, %1091 ]
  %1095 = phi i32 [ %993, %1085 ], [ %1092, %1091 ]
  %1096 = getelementptr inbounds %struct.basic_block_def, ptr %991, i64 0, i32 7
  %1097 = load ptr, ptr %1096, align 8, !tbaa !142
  %1098 = getelementptr inbounds %struct.rtl_bb_info, ptr %1097, i64 0, i32 1
  %1099 = load ptr, ptr %1098, align 8, !tbaa !172
  %1100 = load i32, ptr %1099, align 8
  %1101 = and i32 %1100, 65535
  %1102 = add nsw i32 %1101, -7
  %1103 = icmp ult i32 %1102, 4
  br i1 %1103, label %1104, label %1552

1104:                                             ; preds = %1093
  %1105 = getelementptr inbounds %struct.rtx_def, ptr %1099, i64 0, i32 1, i32 0, i32 2
  %1106 = load i32, ptr %1105, align 8, !tbaa !142
  %1107 = icmp ne i32 %1106, 0
  %1108 = icmp ne i32 %1095, 0
  %1109 = select i1 %1107, i1 %1108, i1 false
  br i1 %1109, label %1110, label %1119

1110:                                             ; preds = %1104
  %1111 = call zeroext i8 @locator_eq(i32 noundef %1106, i32 noundef %1095) #16
  %1112 = icmp eq i8 %1111, 0
  br i1 %1112, label %1113, label %1119

1113:                                             ; preds = %1110
  %1114 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1115 = getelementptr inbounds %struct.function, ptr %1114, i64 0, i32 1
  %1116 = load ptr, ptr %1115, align 8, !tbaa !152
  %1117 = getelementptr inbounds %struct.control_flow_graph, ptr %1116, i64 0, i32 3
  %1118 = load i32, ptr %1117, align 8, !tbaa !251
  br label %1552

1119:                                             ; preds = %1110, %1104
  %1120 = select i1 %1107, i32 %1106, i32 %1095
  br label %1552

1121:                                             ; preds = %1033, %1019, %1004
  %1122 = icmp ne i8 %1006, 0
  %1123 = select i1 %43, i1 %1122, i1 false, !prof !308
  br i1 %1123, label %1124, label %1552, !prof !309

1124:                                             ; preds = %1121
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %1125 = load i32, ptr %1007, align 8, !tbaa !159
  %1126 = and i32 %1125, 2048
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1128, label %1480, !prof !310

1128:                                             ; preds = %1124
  %1129 = load ptr, ptr %949, align 8, !tbaa !239
  %1130 = getelementptr inbounds %struct.basic_block_def, ptr %1129, i64 0, i32 1
  %1131 = load ptr, ptr %1130, align 8, !tbaa !217
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1135, label %1133, !prof !311

1133:                                             ; preds = %1128
  %1134 = load i32, ptr %1131, align 8, !tbaa !214
  br label %1135

1135:                                             ; preds = %1133, %1128
  %1136 = phi i32 [ %1134, %1133 ], [ 0, %1128 ]
  %1137 = icmp eq i32 %1136, 2
  br i1 %1137, label %1138, label %1480, !prof !312

1138:                                             ; preds = %1135
  %1139 = getelementptr inbounds %struct.basic_block_def, ptr %991, i64 0, i32 1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !217
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1144, label %1142, !prof !313

1142:                                             ; preds = %1138
  %1143 = load i32, ptr %1140, align 8, !tbaa !214
  br label %1144

1144:                                             ; preds = %1142, %1138
  %1145 = phi i32 [ %1143, %1142 ], [ 0, %1138 ]
  %1146 = icmp eq i32 %1145, 2
  br i1 %1146, label %1149, label %1147, !prof !314

1147:                                             ; preds = %1144
  %1148 = or disjoint i32 %1125, 2048
  store i32 %1148, ptr %1007, align 8, !tbaa !159
  br label %1480

1149:                                             ; preds = %1144
  %1150 = getelementptr inbounds %struct.basic_block_def, ptr %1129, i64 0, i32 7
  %1151 = load ptr, ptr %1150, align 8, !tbaa !142
  %1152 = getelementptr inbounds %struct.rtl_bb_info, ptr %1151, i64 0, i32 1
  %1153 = load ptr, ptr %1152, align 8, !tbaa !172
  %1154 = call i32 @any_condjump_p(ptr noundef %1153) #16
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1480, label %1156, !prof !315

1156:                                             ; preds = %1149
  %1157 = getelementptr inbounds %struct.basic_block_def, ptr %991, i64 0, i32 7
  %1158 = load ptr, ptr %1157, align 8, !tbaa !142
  %1159 = getelementptr inbounds %struct.rtl_bb_info, ptr %1158, i64 0, i32 1
  %1160 = load ptr, ptr %1159, align 8, !tbaa !172
  %1161 = call i32 @any_condjump_p(ptr noundef %1160) #16
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1169, label %1163, !prof !315

1163:                                             ; preds = %1156
  %1164 = load ptr, ptr %1157, align 8, !tbaa !142
  %1165 = getelementptr inbounds %struct.rtl_bb_info, ptr %1164, i64 0, i32 1
  %1166 = load ptr, ptr %1165, align 8, !tbaa !172
  %1167 = call i32 @onlyjump_p(ptr noundef %1166) #16
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1172, !prof !315

1169:                                             ; preds = %1163, %1156
  %1170 = load i32, ptr %1007, align 8, !tbaa !159
  %1171 = or i32 %1170, 2048
  store i32 %1171, ptr %1007, align 8, !tbaa !159
  br label %1480

1172:                                             ; preds = %1163
  %1173 = load ptr, ptr %949, align 8, !tbaa !239
  %1174 = getelementptr inbounds %struct.basic_block_def, ptr %1173, i64 0, i32 7
  %1175 = load ptr, ptr %1174, align 8, !tbaa !142
  %1176 = getelementptr inbounds %struct.rtl_bb_info, ptr %1175, i64 0, i32 1
  %1177 = load ptr, ptr %1176, align 8, !tbaa !172
  %1178 = call ptr @pc_set(ptr noundef %1177) #16
  %1179 = load ptr, ptr %1157, align 8, !tbaa !142
  %1180 = getelementptr inbounds %struct.rtl_bb_info, ptr %1179, i64 0, i32 1
  %1181 = load ptr, ptr %1180, align 8, !tbaa !172
  %1182 = call ptr @pc_set(ptr noundef %1181) #16
  %1183 = load i32, ptr %956, align 8, !tbaa !232
  %1184 = getelementptr inbounds %struct.rtx_def, ptr %1178, i64 0, i32 1, i32 0, i32 0, i64 1
  %1185 = load ptr, ptr %1184, align 8, !tbaa !142
  %1186 = getelementptr inbounds %struct.rtx_def, ptr %1185, i64 0, i32 1, i32 0, i32 0, i64 1
  %1187 = load ptr, ptr %1186, align 8, !tbaa !142
  %1188 = load ptr, ptr @global_rtl, align 16, !tbaa !131
  %1189 = icmp eq ptr %1187, %1188
  %1190 = and i32 %1183, 1
  %1191 = icmp eq i32 %1190, 0
  %1192 = xor i1 %1191, %1189
  %1193 = getelementptr inbounds %struct.rtx_def, ptr %1185, i64 0, i32 1
  %1194 = load ptr, ptr %1193, align 8, !tbaa !142
  %1195 = getelementptr inbounds %struct.rtx_def, ptr %1182, i64 0, i32 1, i32 0, i32 0, i64 1
  %1196 = load ptr, ptr %1195, align 8, !tbaa !142
  %1197 = getelementptr inbounds %struct.rtx_def, ptr %1196, i64 0, i32 1
  %1198 = load ptr, ptr %1197, align 8, !tbaa !142
  store ptr %1198, ptr %4, align 8, !tbaa !131
  br i1 %1192, label %1206, label %1199, !prof !316

1199:                                             ; preds = %1172
  %1200 = load ptr, ptr %949, align 8, !tbaa !239
  %1201 = getelementptr inbounds %struct.basic_block_def, ptr %1200, i64 0, i32 7
  %1202 = load ptr, ptr %1201, align 8, !tbaa !142
  %1203 = getelementptr inbounds %struct.rtl_bb_info, ptr %1202, i64 0, i32 1
  %1204 = load ptr, ptr %1203, align 8, !tbaa !172
  %1205 = call i32 @reversed_comparison_code(ptr noundef %1194, ptr noundef %1204) #16
  br label %1209

1206:                                             ; preds = %1172
  %1207 = load i32, ptr %1194, align 8
  %1208 = and i32 %1207, 65535
  br label %1209

1209:                                             ; preds = %1206, %1199
  %1210 = phi i32 [ %1205, %1199 ], [ %1208, %1206 ]
  %1211 = load ptr, ptr %4, align 8, !tbaa !131
  %1212 = load i32, ptr %1211, align 8
  %1213 = and i32 %1212, 65535
  %1214 = load ptr, ptr %1157, align 8, !tbaa !142
  %1215 = getelementptr inbounds %struct.rtl_bb_info, ptr %1214, i64 0, i32 1
  %1216 = load ptr, ptr %1215, align 8, !tbaa !172
  %1217 = call i32 @reversed_comparison_code(ptr noundef nonnull %1211, ptr noundef %1216) #16
  %1218 = call i32 @comparison_dominates_p(i32 noundef %1210, i32 noundef %1213) #16
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1220, label %1223, !prof !317

1220:                                             ; preds = %1209
  %1221 = call i32 @comparison_dominates_p(i32 noundef %1210, i32 noundef %1217) #16
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1480, label %1223, !prof !318

1223:                                             ; preds = %1220, %1209
  %1224 = getelementptr inbounds %struct.rtx_def, ptr %1194, i64 0, i32 1
  %1225 = load ptr, ptr %1224, align 8, !tbaa !142
  %1226 = load ptr, ptr %4, align 8, !tbaa !131
  %1227 = getelementptr inbounds %struct.rtx_def, ptr %1226, i64 0, i32 1
  %1228 = load ptr, ptr %1227, align 8, !tbaa !142
  %1229 = call i32 @rtx_equal_p(ptr noundef %1225, ptr noundef %1228) #16
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1480, label %1231, !prof !319

1231:                                             ; preds = %1223
  %1232 = getelementptr inbounds %struct.rtx_def, ptr %1194, i64 0, i32 1, i32 0, i32 0, i64 1
  %1233 = load ptr, ptr %1232, align 8, !tbaa !142
  %1234 = load ptr, ptr %4, align 8, !tbaa !131
  %1235 = getelementptr inbounds %struct.rtx_def, ptr %1234, i64 0, i32 1, i32 0, i32 0, i64 1
  %1236 = load ptr, ptr %1235, align 8, !tbaa !142
  %1237 = call i32 @rtx_equal_p(ptr noundef %1233, ptr noundef %1236) #16
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1480, label %1239, !prof !320

1239:                                             ; preds = %1231
  %1240 = load ptr, ptr %1157, align 8, !tbaa !142
  %1241 = load ptr, ptr %1240, align 8, !tbaa !220
  %1242 = getelementptr inbounds %struct.rtx_def, ptr %1241, i64 0, i32 1, i32 0, i32 0, i64 2
  %1243 = load ptr, ptr %1242, align 8, !tbaa !142
  %1244 = getelementptr inbounds %struct.rtl_bb_info, ptr %1240, i64 0, i32 1
  %1245 = load ptr, ptr %1244, align 8, !tbaa !172
  %1246 = getelementptr inbounds %struct.rtx_def, ptr %1245, i64 0, i32 1, i32 0, i32 0, i64 2
  %1247 = load ptr, ptr %1246, align 8, !tbaa !142
  %1248 = icmp eq ptr %1243, %1247
  br i1 %1248, label %1272, label %1249, !prof !321

1249:                                             ; preds = %1239, %1263
  %1250 = phi ptr [ %1265, %1263 ], [ %1243, %1239 ]
  %1251 = load i32, ptr %1250, align 8
  %1252 = and i32 %1251, 65535
  %1253 = add nsw i32 %1252, -7
  %1254 = icmp ult i32 %1253, 4
  br i1 %1254, label %1255, label %1263, !prof !322

1255:                                             ; preds = %1249
  %1256 = getelementptr inbounds %struct.rtx_def, ptr %1250, i64 1
  %1257 = load ptr, ptr %1256, align 8, !tbaa !142
  %1258 = call i32 @side_effects_p(ptr noundef %1257) #16
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1263, label %1260, !prof !323

1260:                                             ; preds = %1255
  %1261 = load i32, ptr %1007, align 8, !tbaa !159
  %1262 = or i32 %1261, 2048
  store i32 %1262, ptr %1007, align 8, !tbaa !159
  br label %1480

1263:                                             ; preds = %1255, %1249
  %1264 = getelementptr inbounds %struct.rtx_def, ptr %1250, i64 0, i32 1, i32 0, i32 0, i64 2
  %1265 = load ptr, ptr %1264, align 8, !tbaa !142
  %1266 = load ptr, ptr %1157, align 8, !tbaa !142
  %1267 = getelementptr inbounds %struct.rtl_bb_info, ptr %1266, i64 0, i32 1
  %1268 = load ptr, ptr %1267, align 8, !tbaa !172
  %1269 = getelementptr inbounds %struct.rtx_def, ptr %1268, i64 0, i32 1, i32 0, i32 0, i64 2
  %1270 = load ptr, ptr %1269, align 8, !tbaa !142
  %1271 = icmp eq ptr %1265, %1270
  br i1 %1271, label %1272, label %1249, !prof !324, !llvm.loop !325

1272:                                             ; preds = %1263, %1239
  call void @cselib_init(i32 noundef 0) #16
  %1273 = load ptr, ptr %949, align 8, !tbaa !239
  %1274 = getelementptr inbounds %struct.basic_block_def, ptr %1273, i64 0, i32 7
  %1275 = load ptr, ptr %1274, align 8, !tbaa !142
  %1276 = load ptr, ptr %1275, align 8, !tbaa !220
  %1277 = getelementptr inbounds %struct.rtx_def, ptr %1276, i64 0, i32 1, i32 0, i32 0, i64 2
  %1278 = load ptr, ptr %1277, align 8, !tbaa !142
  %1279 = getelementptr inbounds %struct.rtl_bb_info, ptr %1275, i64 0, i32 1
  %1280 = load ptr, ptr %1279, align 8, !tbaa !172
  %1281 = getelementptr inbounds %struct.rtx_def, ptr %1280, i64 0, i32 1, i32 0, i32 0, i64 2
  %1282 = load ptr, ptr %1281, align 8, !tbaa !142
  %1283 = icmp eq ptr %1278, %1282
  br i1 %1283, label %1302, label %1284, !prof !321

1284:                                             ; preds = %1272, %1291
  %1285 = phi ptr [ %1293, %1291 ], [ %1278, %1272 ]
  %1286 = load i32, ptr %1285, align 8
  %1287 = and i32 %1286, 65535
  %1288 = add nsw i32 %1287, -7
  %1289 = icmp ult i32 %1288, 4
  br i1 %1289, label %1290, label %1291, !prof !326

1290:                                             ; preds = %1284
  call void @cselib_process_insn(ptr noundef nonnull %1285) #16
  br label %1291

1291:                                             ; preds = %1290, %1284
  %1292 = getelementptr inbounds %struct.rtx_def, ptr %1285, i64 0, i32 1, i32 0, i32 0, i64 2
  %1293 = load ptr, ptr %1292, align 8, !tbaa !142
  %1294 = load ptr, ptr %949, align 8, !tbaa !239
  %1295 = getelementptr inbounds %struct.basic_block_def, ptr %1294, i64 0, i32 7
  %1296 = load ptr, ptr %1295, align 8, !tbaa !142
  %1297 = getelementptr inbounds %struct.rtl_bb_info, ptr %1296, i64 0, i32 1
  %1298 = load ptr, ptr %1297, align 8, !tbaa !172
  %1299 = getelementptr inbounds %struct.rtx_def, ptr %1298, i64 0, i32 1, i32 0, i32 0, i64 2
  %1300 = load ptr, ptr %1299, align 8, !tbaa !142
  %1301 = icmp eq ptr %1293, %1300
  br i1 %1301, label %1302, label %1284, !prof !327, !llvm.loop !328

1302:                                             ; preds = %1291, %1272
  %1303 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  call void @bitmap_clear(ptr noundef %1303) #16
  %1304 = load ptr, ptr %1157, align 8, !tbaa !142
  %1305 = load ptr, ptr %1304, align 8, !tbaa !220
  %1306 = getelementptr inbounds %struct.rtx_def, ptr %1305, i64 0, i32 1, i32 0, i32 0, i64 2
  %1307 = load ptr, ptr %1306, align 8, !tbaa !142
  %1308 = getelementptr inbounds %struct.rtl_bb_info, ptr %1304, i64 0, i32 1
  %1309 = load ptr, ptr %1308, align 8, !tbaa !172
  %1310 = getelementptr inbounds %struct.rtx_def, ptr %1309, i64 0, i32 1, i32 0, i32 0, i64 2
  %1311 = load ptr, ptr %1310, align 8, !tbaa !142
  %1312 = icmp eq ptr %1307, %1311
  br i1 %1312, label %1430, label %1313, !prof !321

1313:                                             ; preds = %1302, %1414
  %1314 = phi ptr [ %1417, %1414 ], [ %1307, %1302 ]
  %1315 = phi i8 [ %1415, %1414 ], [ 0, %1302 ]
  %1316 = load i32, ptr %1314, align 8
  %1317 = and i32 %1316, 65535
  %1318 = add nsw i32 %1317, -7
  %1319 = icmp ult i32 %1318, 4
  br i1 %1319, label %1320, label %1414, !prof !329

1320:                                             ; preds = %1313
  %1321 = getelementptr inbounds %struct.rtx_def, ptr %1314, i64 1
  %1322 = load ptr, ptr %1321, align 8, !tbaa !142
  %1323 = load i32, ptr %1322, align 8
  %1324 = and i32 %1323, 65535
  %1325 = icmp eq i32 %1324, 15
  br i1 %1325, label %1326, label %1344, !prof !330

1326:                                             ; preds = %1320
  %1327 = getelementptr inbounds %struct.rtx_def, ptr %1322, i64 0, i32 1
  %1328 = load ptr, ptr %1327, align 8, !tbaa !142
  %1329 = load i32, ptr %1328, align 8, !tbaa !331
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1414, label %1331, !prof !333

1331:                                             ; preds = %1326, %1331
  %1332 = phi i64 [ %1339, %1331 ], [ 0, %1326 ]
  %1333 = phi ptr [ %1340, %1331 ], [ %1328, %1326 ]
  %1334 = phi i8 [ %1338, %1331 ], [ %1315, %1326 ]
  %1335 = getelementptr inbounds %struct.rtvec_def, ptr %1333, i64 0, i32 1, i64 %1332
  %1336 = load ptr, ptr %1335, align 8, !tbaa !131
  %1337 = call fastcc zeroext i8 @mark_effect(ptr noundef %1336, ptr noundef %1303), !range !186
  %1338 = or i8 %1337, %1334
  %1339 = add nuw nsw i64 %1332, 1
  %1340 = load ptr, ptr %1327, align 8, !tbaa !142
  %1341 = load i32, ptr %1340, align 8, !tbaa !331
  %1342 = zext i32 %1341 to i64
  %1343 = icmp ult i64 %1339, %1342
  br i1 %1343, label %1331, label %1414, !prof !334, !llvm.loop !335

1344:                                             ; preds = %1320
  %1345 = trunc i32 %1323 to i16
  switch i16 %1345, label %1411 [
    i16 25, label %1346
    i16 23, label %1374
  ], !prof !336

1346:                                             ; preds = %1344
  %1347 = getelementptr inbounds %struct.rtx_def, ptr %1322, i64 0, i32 1
  %1348 = load ptr, ptr %1347, align 8, !tbaa !142
  %1349 = load i32, ptr %1348, align 8
  %1350 = and i32 %1349, 65535
  %1351 = icmp eq i32 %1350, 37
  br i1 %1351, label %1352, label %1411, !prof !337

1352:                                             ; preds = %1346
  %1353 = getelementptr inbounds %struct.rtx_def, ptr %1348, i64 0, i32 1
  %1354 = load i32, ptr %1353, align 8, !tbaa !142
  %1355 = call zeroext i8 @bitmap_clear_bit(ptr noundef %1303, i32 noundef %1354) #16
  %1356 = icmp slt i32 %1354, 53
  br i1 %1356, label %1357, label %1411, !prof !337

1357:                                             ; preds = %1352
  %1358 = sext i32 %1354 to i64
  %1359 = load i32, ptr %1348, align 8
  %1360 = lshr i32 %1359, 16
  %1361 = and i32 %1360, 255
  %1362 = zext nneg i32 %1361 to i64
  %1363 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1358, i64 %1362
  %1364 = load i8, ptr %1363, align 1, !tbaa !142
  %1365 = icmp ugt i8 %1364, 1
  br i1 %1365, label %1366, label %1411, !prof !221

1366:                                             ; preds = %1357
  %1367 = zext i8 %1364 to i32
  br label %1368

1368:                                             ; preds = %1368, %1366
  %1369 = phi i32 [ %1370, %1368 ], [ %1367, %1366 ]
  %1370 = add nsw i32 %1369, -1
  %1371 = add nsw i32 %1370, %1354
  %1372 = call zeroext i8 @bitmap_clear_bit(ptr noundef %1303, i32 noundef %1371) #16
  %1373 = icmp sgt i32 %1369, 2
  br i1 %1373, label %1368, label %1411, !prof !221, !llvm.loop !338

1374:                                             ; preds = %1344
  %1375 = getelementptr inbounds %struct.rtx_def, ptr %1322, i64 0, i32 1
  %1376 = load ptr, ptr %1375, align 8, !tbaa !142
  %1377 = getelementptr inbounds %struct.rtx_def, ptr %1322, i64 0, i32 1, i32 0, i32 0, i64 1
  %1378 = load ptr, ptr %1377, align 8, !tbaa !142
  %1379 = call i32 @rtx_equal_for_cselib_p(ptr noundef %1376, ptr noundef %1378) #16
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1381, label %1411, !prof !339

1381:                                             ; preds = %1374
  %1382 = load ptr, ptr %1375, align 8, !tbaa !142
  %1383 = load ptr, ptr @global_rtl, align 16, !tbaa !131
  %1384 = icmp eq ptr %1382, %1383
  br i1 %1384, label %1411, label %1385, !prof !340

1385:                                             ; preds = %1381
  %1386 = load i32, ptr %1382, align 8
  %1387 = and i32 %1386, 65535
  %1388 = icmp eq i32 %1387, 37
  br i1 %1388, label %1389, label %1411, !prof !341

1389:                                             ; preds = %1385
  %1390 = getelementptr inbounds %struct.rtx_def, ptr %1382, i64 0, i32 1
  %1391 = load i32, ptr %1390, align 8, !tbaa !142
  %1392 = call zeroext i8 @bitmap_set_bit(ptr noundef %1303, i32 noundef %1391) #16
  %1393 = icmp slt i32 %1391, 53
  br i1 %1393, label %1394, label %1411, !prof !342

1394:                                             ; preds = %1389
  %1395 = sext i32 %1391 to i64
  %1396 = load i32, ptr %1382, align 8
  %1397 = lshr i32 %1396, 16
  %1398 = and i32 %1397, 255
  %1399 = zext nneg i32 %1398 to i64
  %1400 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1395, i64 %1399
  %1401 = load i8, ptr %1400, align 1, !tbaa !142
  %1402 = icmp ugt i8 %1401, 1
  br i1 %1402, label %1403, label %1411, !prof !221

1403:                                             ; preds = %1394
  %1404 = zext i8 %1401 to i32
  br label %1405

1405:                                             ; preds = %1405, %1403
  %1406 = phi i32 [ %1407, %1405 ], [ %1404, %1403 ]
  %1407 = add nsw i32 %1406, -1
  %1408 = add nsw i32 %1407, %1391
  %1409 = call zeroext i8 @bitmap_set_bit(ptr noundef %1303, i32 noundef %1408) #16
  %1410 = icmp sgt i32 %1406, 2
  br i1 %1410, label %1405, label %1411, !prof !221, !llvm.loop !343

1411:                                             ; preds = %1405, %1368, %1344, %1346, %1352, %1357, %1374, %1381, %1385, %1389, %1394
  %1412 = phi i8 [ 0, %1352 ], [ 0, %1346 ], [ 0, %1374 ], [ 0, %1381 ], [ 1, %1385 ], [ 0, %1389 ], [ 0, %1344 ], [ 0, %1357 ], [ 0, %1394 ], [ 0, %1368 ], [ 0, %1405 ]
  %1413 = or i8 %1412, %1315
  br label %1414

1414:                                             ; preds = %1331, %1326, %1411, %1313
  %1415 = phi i8 [ %1315, %1313 ], [ %1413, %1411 ], [ %1315, %1326 ], [ %1338, %1331 ]
  call void @cselib_process_insn(ptr noundef nonnull %1314) #16
  %1416 = getelementptr inbounds %struct.rtx_def, ptr %1314, i64 0, i32 1, i32 0, i32 0, i64 2
  %1417 = load ptr, ptr %1416, align 8, !tbaa !142
  %1418 = load ptr, ptr %1157, align 8, !tbaa !142
  %1419 = getelementptr inbounds %struct.rtl_bb_info, ptr %1418, i64 0, i32 1
  %1420 = load ptr, ptr %1419, align 8, !tbaa !172
  %1421 = getelementptr inbounds %struct.rtx_def, ptr %1420, i64 0, i32 1, i32 0, i32 0, i64 2
  %1422 = load ptr, ptr %1421, align 8, !tbaa !142
  %1423 = icmp ne ptr %1417, %1422
  %1424 = icmp eq i8 %1415, 0
  %1425 = select i1 %1423, i1 %1424, i1 false, !prof !344
  br i1 %1425, label %1313, label %1426, !prof !345, !llvm.loop !346

1426:                                             ; preds = %1414
  br i1 %1424, label %1430, label %1427, !prof !347

1427:                                             ; preds = %1426
  %1428 = load i32, ptr %1007, align 8, !tbaa !159
  %1429 = or i32 %1428, 2048
  store i32 %1429, ptr %1007, align 8, !tbaa !159
  br label %1479

1430:                                             ; preds = %1302, %1426
  %1431 = call i32 @for_each_rtx(ptr noundef nonnull %4, ptr noundef nonnull @mentions_nonequal_regs, ptr noundef %1303) #16
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1433, label %1479, !prof !348

1433:                                             ; preds = %1430
  %1434 = load ptr, ptr %1303, align 8, !tbaa !349
  %1435 = icmp eq ptr %1434, null
  %1436 = select i1 %1435, ptr @bitmap_zero_bits, ptr %1434, !prof !351
  %1437 = getelementptr inbounds %struct.bitmap_element_def, ptr %1436, i64 0, i32 3
  %1438 = load i64, ptr %1437, align 8, !tbaa !352
  %1439 = icmp eq i64 %1438, 0
  br i1 %1439, label %1440, label %1479, !prof !351

1440:                                             ; preds = %1433, %1452
  %1441 = phi ptr [ %1453, %1452 ], [ %1436, %1433 ]
  %1442 = phi i32 [ 0, %1452 ], [ 1, %1433 ]
  br label %1446

1443:                                             ; preds = %1446
  %1444 = add nuw nsw i32 %1447, 1
  %1445 = icmp eq i32 %1444, 2
  br i1 %1445, label %1452, label %1446, !prof !351, !llvm.loop !353

1446:                                             ; preds = %1440, %1443
  %1447 = phi i32 [ %1442, %1440 ], [ %1444, %1443 ]
  %1448 = zext nneg i32 %1447 to i64
  %1449 = getelementptr inbounds %struct.bitmap_element_def, ptr %1441, i64 0, i32 3, i64 %1448
  %1450 = load i64, ptr %1449, align 8, !tbaa !352
  %1451 = icmp eq i64 %1450, 0
  br i1 %1451, label %1443, label %1479, !prof !351

1452:                                             ; preds = %1443
  %1453 = load ptr, ptr %1441, align 8, !tbaa !354
  %1454 = icmp eq ptr %1453, null
  br i1 %1454, label %1455, label %1440, !prof !351, !llvm.loop !356

1455:                                             ; preds = %1452
  call void @bitmap_obstack_free(ptr noundef nonnull %1303) #16
  call void @cselib_finish() #16
  %1456 = call i32 @comparison_dominates_p(i32 noundef %1210, i32 noundef %1213) #16
  %1457 = icmp ne i32 %1456, 0
  %1458 = load ptr, ptr %1195, align 8, !tbaa !142
  %1459 = getelementptr inbounds %struct.rtx_def, ptr %1458, i64 0, i32 1, i32 0, i32 0, i64 1
  %1460 = load ptr, ptr %1459, align 8, !tbaa !142
  %1461 = load ptr, ptr @global_rtl, align 16, !tbaa !131
  %1462 = icmp ne ptr %1460, %1461
  %1463 = xor i1 %1457, %1462
  %1464 = load ptr, ptr %1139, align 8, !tbaa !217
  %1465 = getelementptr inbounds %struct.VEC_edge_base, ptr %1464, i64 0, i32 2, i64 0
  %1466 = load ptr, ptr %1465, align 8, !tbaa !131
  %1467 = getelementptr inbounds %struct.edge_def, ptr %1466, i64 0, i32 7
  %1468 = load i32, ptr %1467, align 8, !tbaa !232
  %1469 = and i32 %1468, 1
  %1470 = icmp eq i32 %1469, 0
  br i1 %1463, label %1475, label %1471, !prof !351

1471:                                             ; preds = %1455
  br i1 %1470, label %1480, label %1472

1472:                                             ; preds = %1471
  %1473 = getelementptr inbounds %struct.VEC_edge_base, ptr %1464, i64 0, i32 2, i64 1
  %1474 = load ptr, ptr %1473, align 8, !tbaa !131
  br label %1480

1475:                                             ; preds = %1455
  br i1 %1470, label %1476, label %1480, !prof !351

1476:                                             ; preds = %1475
  %1477 = getelementptr inbounds %struct.VEC_edge_base, ptr %1464, i64 0, i32 2, i64 1
  %1478 = load ptr, ptr %1477, align 8, !tbaa !131
  br label %1480

1479:                                             ; preds = %1446, %1433, %1430, %1427
  call void @bitmap_obstack_free(ptr noundef %1303) #16
  call void @cselib_finish() #16
  br label %1480

1480:                                             ; preds = %1220, %1479, %1476, %1475, %1472, %1471, %1260, %1231, %1223, %1169, %1149, %1147, %1135, %1124
  %1481 = phi ptr [ null, %1147 ], [ null, %1260 ], [ null, %1479 ], [ null, %1169 ], [ null, %1124 ], [ null, %1135 ], [ null, %1149 ], [ null, %1231 ], [ null, %1223 ], [ %1474, %1472 ], [ %1478, %1476 ], [ %1466, %1471 ], [ %1466, %1475 ], [ null, %1220 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %1482 = icmp eq ptr %1481, null
  br i1 %1482, label %1544, label %1483, !prof !357

1483:                                             ; preds = %1480
  %1484 = icmp eq ptr %997, null
  br i1 %1484, label %1492, label %1485, !prof !351

1485:                                             ; preds = %1483
  %1486 = icmp sgt i32 %995, 0
  br i1 %1486, label %1487, label %1520

1487:                                             ; preds = %1485
  %1488 = zext nneg i32 %995 to i64
  %1489 = zext nneg i32 %995 to i64
  %1490 = load ptr, ptr %997, align 8, !tbaa !131
  %1491 = icmp eq ptr %1490, %1481
  br i1 %1491, label %1511, label %1501

1492:                                             ; preds = %1483
  %1493 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1494 = getelementptr inbounds %struct.function, ptr %1493, i64 0, i32 1
  %1495 = load ptr, ptr %1494, align 8, !tbaa !152
  %1496 = getelementptr inbounds %struct.control_flow_graph, ptr %1495, i64 0, i32 3
  %1497 = load i32, ptr %1496, align 8, !tbaa !251
  %1498 = sext i32 %1497 to i64
  %1499 = shl nsw i64 %1498, 3
  %1500 = call ptr @xmalloc(i64 noundef %1499) #16
  br label %1524

1501:                                             ; preds = %1487, %1505
  %1502 = phi i64 [ %1503, %1505 ], [ 0, %1487 ]
  %1503 = add nuw nsw i64 %1502, 1
  %1504 = icmp eq i64 %1503, %1489
  br i1 %1504, label %1518, label %1505, !llvm.loop !358

1505:                                             ; preds = %1501
  %1506 = getelementptr inbounds ptr, ptr %997, i64 %1503
  %1507 = load ptr, ptr %1506, align 8, !tbaa !131
  %1508 = icmp eq ptr %1507, %1481
  br i1 %1508, label %1509, label %1501, !llvm.loop !358

1509:                                             ; preds = %1505
  %1510 = icmp ult i64 %1503, %1488
  br label %1511

1511:                                             ; preds = %1509, %1487
  %1512 = phi i1 [ %1486, %1487 ], [ %1510, %1509 ]
  %1513 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1514 = getelementptr inbounds %struct.function, ptr %1513, i64 0, i32 1
  %1515 = load ptr, ptr %1514, align 8, !tbaa !152
  %1516 = getelementptr inbounds %struct.control_flow_graph, ptr %1515, i64 0, i32 3
  %1517 = load i32, ptr %1516, align 8, !tbaa !251
  br label %1520

1518:                                             ; preds = %1501
  %1519 = icmp ult i64 %1503, %1488
  br label %1520

1520:                                             ; preds = %1518, %1485, %1511
  %1521 = phi i1 [ %1512, %1511 ], [ %1486, %1485 ], [ %1519, %1518 ]
  %1522 = phi i32 [ %1517, %1511 ], [ %992, %1485 ], [ %992, %1518 ]
  %1523 = phi i32 [ 5, %1511 ], [ 0, %1485 ], [ 0, %1518 ]
  br i1 %1521, label %1544, label %1524

1524:                                             ; preds = %1520, %1492
  %1525 = phi i32 [ %1522, %1520 ], [ %992, %1492 ]
  %1526 = phi ptr [ %997, %1520 ], [ %1500, %1492 ]
  %1527 = getelementptr inbounds %struct.edge_def, ptr %1481, i64 0, i32 1
  %1528 = load ptr, ptr %1527, align 8, !tbaa !224
  %1529 = icmp eq ptr %1528, %723
  br i1 %1529, label %1544, label %1530, !prof !359

1530:                                             ; preds = %1524
  %1531 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1532 = getelementptr inbounds %struct.function, ptr %1531, i64 0, i32 1
  %1533 = load ptr, ptr %1532, align 8, !tbaa !152
  %1534 = getelementptr inbounds %struct.control_flow_graph, ptr %1533, i64 0, i32 3
  %1535 = load i32, ptr %1534, align 8, !tbaa !251
  %1536 = add nsw i32 %1535, -2
  %1537 = icmp slt i32 %995, %1536
  br i1 %1537, label %1539, label %1538, !prof !351

1538:                                             ; preds = %1530
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 533, ptr noundef nonnull @.str.1) #16
  br label %1539

1539:                                             ; preds = %1538, %1530
  %1540 = add nsw i32 %995, 1
  %1541 = sext i32 %995 to i64
  %1542 = getelementptr inbounds ptr, ptr %1526, i64 %1541
  store ptr %1481, ptr %1542, align 8, !tbaa !131
  %1543 = load ptr, ptr %1527, align 8, !tbaa !224
  br label %1544

1544:                                             ; preds = %1524, %1539, %1520, %1480
  %1545 = phi i32 [ %1522, %1520 ], [ %1525, %1539 ], [ %992, %1480 ], [ %1525, %1524 ]
  %1546 = phi i32 [ %995, %1520 ], [ %1540, %1539 ], [ %995, %1480 ], [ %995, %1524 ]
  %1547 = phi ptr [ null, %1520 ], [ %1543, %1539 ], [ null, %1480 ], [ null, %1524 ]
  %1548 = phi i8 [ 0, %1520 ], [ 1, %1539 ], [ 0, %1480 ], [ 0, %1524 ]
  %1549 = phi i32 [ %1523, %1520 ], [ 0, %1539 ], [ 0, %1480 ], [ 5, %1524 ]
  %1550 = phi ptr [ %997, %1520 ], [ %1526, %1539 ], [ %997, %1480 ], [ %1526, %1524 ]
  %1551 = icmp eq i32 %1549, 0
  br i1 %1551, label %1552, label %1563, !prof !360

1552:                                             ; preds = %1544, %1121, %1119, %1113, %1093, %1064, %1058
  %1553 = phi i32 [ %992, %1121 ], [ %1063, %1058 ], [ %992, %1064 ], [ %1118, %1113 ], [ %1094, %1093 ], [ %1094, %1119 ], [ %1545, %1544 ]
  %1554 = phi i32 [ %993, %1121 ], [ %993, %1058 ], [ %993, %1064 ], [ %1095, %1113 ], [ %1095, %1093 ], [ %1120, %1119 ], [ %993, %1544 ]
  %1555 = phi i32 [ %995, %1121 ], [ %995, %1058 ], [ %995, %1064 ], [ %995, %1113 ], [ %995, %1093 ], [ %995, %1119 ], [ %1546, %1544 ]
  %1556 = phi ptr [ null, %1121 ], [ %1056, %1058 ], [ %1056, %1064 ], [ %1056, %1113 ], [ %1056, %1093 ], [ %1056, %1119 ], [ %1547, %1544 ]
  %1557 = phi i8 [ 0, %1121 ], [ 0, %1058 ], [ 0, %1064 ], [ 0, %1113 ], [ 0, %1093 ], [ 0, %1119 ], [ %1548, %1544 ]
  %1558 = phi ptr [ %997, %1121 ], [ %997, %1058 ], [ %997, %1064 ], [ %997, %1113 ], [ %997, %1093 ], [ %997, %1119 ], [ %1550, %1544 ]
  %1559 = icmp eq ptr %1556, null
  br i1 %1559, label %1563, label %1560, !prof !361

1560:                                             ; preds = %1552
  %1561 = add nsw i32 %1553, 1
  %1562 = or i8 %1557, %994
  br label %1563

1563:                                             ; preds = %1560, %1552, %1544
  %1564 = phi ptr [ %1556, %1560 ], [ %991, %1544 ], [ %991, %1552 ]
  %1565 = phi i32 [ %1561, %1560 ], [ %1545, %1544 ], [ %1553, %1552 ]
  %1566 = phi i32 [ %1554, %1560 ], [ %993, %1544 ], [ %1554, %1552 ]
  %1567 = phi i8 [ %1562, %1560 ], [ %994, %1544 ], [ %994, %1552 ]
  %1568 = phi i32 [ %1555, %1560 ], [ %1546, %1544 ], [ %1555, %1552 ]
  %1569 = phi i1 [ true, %1560 ], [ false, %1544 ], [ false, %1552 ]
  %1570 = phi ptr [ %1558, %1560 ], [ %1550, %1544 ], [ %1558, %1552 ]
  br i1 %1569, label %990, label %1571, !prof !362

1571:                                             ; preds = %1563, %990
  %1572 = phi ptr [ %991, %990 ], [ %1564, %1563 ]
  %1573 = phi i32 [ %992, %990 ], [ %1565, %1563 ]
  %1574 = phi i32 [ %993, %990 ], [ %1566, %1563 ]
  %1575 = phi i8 [ %994, %990 ], [ %1567, %1563 ]
  %1576 = phi i32 [ %995, %990 ], [ %1568, %1563 ]
  %1577 = phi ptr [ %997, %990 ], [ %1570, %1563 ]
  %1578 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1579 = getelementptr inbounds %struct.function, ptr %1578, i64 0, i32 1
  %1580 = load ptr, ptr %1579, align 8, !tbaa !152
  %1581 = getelementptr inbounds %struct.control_flow_graph, ptr %1580, i64 0, i32 3
  %1582 = load i32, ptr %1581, align 8, !tbaa !251
  %1583 = icmp slt i32 %1573, %1582
  br i1 %1583, label %1591, label %1584, !prof !363

1584:                                             ; preds = %1571
  %1585 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %1586 = icmp eq ptr %1585, null
  br i1 %1586, label %1725, label %1587

1587:                                             ; preds = %1584
  %1588 = getelementptr inbounds %struct.basic_block_def, ptr %1572, i64 0, i32 9
  %1589 = load i32, ptr %1588, align 8, !tbaa !240
  %1590 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1585, ptr noundef nonnull @.str.13, i32 noundef %1589)
  br label %1725

1591:                                             ; preds = %1571
  %1592 = icmp eq ptr %1572, %973
  br i1 %1592, label %1725, label %1593, !prof !364

1593:                                             ; preds = %1591
  %1594 = getelementptr inbounds %struct.edge_def, ptr %949, i64 0, i32 9
  %1595 = load i64, ptr %1594, align 8, !tbaa !365
  %1596 = getelementptr inbounds %struct.edge_def, ptr %949, i64 0, i32 8
  %1597 = load i32, ptr %1596, align 4, !tbaa !366
  store i32 %1574, ptr %974, align 8, !tbaa !298
  %1598 = icmp eq i8 %1575, 0
  br i1 %1598, label %1618, label %1599, !prof !367

1599:                                             ; preds = %1593
  %1600 = getelementptr inbounds %struct.control_flow_graph, ptr %1580, i64 0, i32 1
  %1601 = load ptr, ptr %1600, align 8, !tbaa !154
  %1602 = icmp eq ptr %1572, %1601
  br i1 %1602, label %1618, label %1603, !prof !359

1603:                                             ; preds = %1599
  %1604 = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %949, ptr noundef %1572) #16
  %1605 = icmp eq ptr %1604, null
  br i1 %1605, label %1613, label %1606, !prof !351

1606:                                             ; preds = %1603
  %1607 = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %1604) #16
  %1608 = icmp eq i8 %1607, 0
  br i1 %1608, label %1613, label %1609

1609:                                             ; preds = %1606
  %1610 = getelementptr inbounds %struct.basic_block_def, ptr %1604, i64 0, i32 13
  %1611 = load i32, ptr %1610, align 8, !tbaa !159
  %1612 = or i32 %1611, 1024
  store i32 %1612, ptr %1610, align 8, !tbaa !159
  br label %1613

1613:                                             ; preds = %1609, %1606, %1603
  %1614 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %1615 = icmp eq ptr %1614, null
  br i1 %1615, label %1644, label %1616, !prof !351

1616:                                             ; preds = %1613
  %1617 = call i64 @fwrite(ptr nonnull @.str.14, i64 23, i64 1, ptr nonnull %1614)
  br label %1644

1618:                                             ; preds = %1599, %1593
  %1619 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %949, ptr noundef %1572) #16
  %1620 = icmp eq ptr %1619, null
  br i1 %1620, label %1621, label %1644, !prof !368

1621:                                             ; preds = %1618
  %1622 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %1623 = icmp eq ptr %1622, null
  br i1 %1623, label %1633, label %1624, !prof !369

1624:                                             ; preds = %1621
  %1625 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 9
  %1626 = load i32, ptr %1625, align 8, !tbaa !240
  %1627 = load ptr, ptr %972, align 8, !tbaa !224
  %1628 = getelementptr inbounds %struct.basic_block_def, ptr %1627, i64 0, i32 9
  %1629 = load i32, ptr %1628, align 8, !tbaa !240
  %1630 = getelementptr inbounds %struct.basic_block_def, ptr %1572, i64 0, i32 9
  %1631 = load i32, ptr %1630, align 8, !tbaa !240
  %1632 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1622, ptr noundef nonnull @.str.15, i32 noundef %1626, i32 noundef %1629, i32 noundef %1631)
  br label %1633

1633:                                             ; preds = %1624, %1621
  %1634 = load ptr, ptr %850, align 8, !tbaa !131
  %1635 = icmp eq ptr %1634, null
  br i1 %1635, label %1638, label %1636, !prof !370

1636:                                             ; preds = %1633
  %1637 = load i32, ptr %1634, align 8, !tbaa !214
  br label %1638

1638:                                             ; preds = %1636, %1633
  %1639 = phi i32 [ %1637, %1636 ], [ 0, %1633 ]
  %1640 = icmp ult i32 %934, %1639
  br i1 %1640, label %1642, label %1641, !prof !369

1641:                                             ; preds = %1638
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %1642

1642:                                             ; preds = %1641, %1638
  %1643 = add i32 %934, 1
  br label %1736, !llvm.loop !297

1644:                                             ; preds = %1618, %1616, %1613
  %1645 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 11
  %1646 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 13
  %1647 = load i32, ptr %1645, align 8, !tbaa !371
  %1648 = mul nsw i32 %1647, %1597
  %1649 = add nsw i32 %1648, 5000
  %1650 = sdiv i32 %1649, 10000
  %1651 = load i32, ptr %1646, align 8, !tbaa !159
  %1652 = and i32 %1651, 1024
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1654, label %1660, !prof !372

1654:                                             ; preds = %1644
  %1655 = call zeroext i8 @forwarder_block_p(ptr noundef %723) #16
  %1656 = icmp eq i8 %1655, 0
  br i1 %1656, label %1660, label %1657, !prof !373

1657:                                             ; preds = %1654
  %1658 = load i32, ptr %1646, align 8, !tbaa !159
  %1659 = or i32 %1658, 1024
  store i32 %1659, ptr %1646, align 8, !tbaa !159
  br label %1660

1660:                                             ; preds = %1657, %1654, %1644
  br label %1661

1661:                                             ; preds = %1660, %1714
  %1662 = phi ptr [ %1722, %1714 ], [ %973, %1660 ]
  %1663 = phi i32 [ %1715, %1714 ], [ 0, %1660 ]
  %1664 = getelementptr inbounds %struct.basic_block_def, ptr %1662, i64 0, i32 1
  %1665 = load ptr, ptr %1664, align 8, !tbaa !217
  %1666 = icmp eq ptr %1665, null
  br i1 %1666, label %1671, label %1667, !prof !374

1667:                                             ; preds = %1661
  %1668 = load i32, ptr %1665, align 8, !tbaa !214
  %1669 = icmp eq i32 %1668, 1
  %1670 = zext i1 %1669 to i8
  br label %1671

1671:                                             ; preds = %1667, %1661
  %1672 = phi i8 [ %1670, %1667 ], [ 0, %1661 ]
  %1673 = icmp eq i8 %1672, 0
  br i1 %1673, label %1674, label %1686, !prof !375

1674:                                             ; preds = %1671
  %1675 = icmp slt i32 %1663, %1576
  br i1 %1675, label %1677, label %1676, !prof !351

1676:                                             ; preds = %1674
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.1) #16
  br label %1677

1677:                                             ; preds = %1676, %1674
  %1678 = add nsw i32 %1663, 1
  %1679 = sext i32 %1663 to i64
  %1680 = getelementptr inbounds ptr, ptr %1577, i64 %1679
  %1681 = load ptr, ptr %1680, align 8, !tbaa !131
  %1682 = load ptr, ptr %1681, align 8, !tbaa !239
  %1683 = icmp eq ptr %1682, %1662
  br i1 %1683, label %1685, label %1684, !prof !351

1684:                                             ; preds = %1677
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 602, ptr noundef nonnull @.str.1) #16
  br label %1685

1685:                                             ; preds = %1684, %1677
  call void @update_bb_profile_for_threading(ptr noundef %1662, i32 noundef %1650, i64 noundef %1595, ptr noundef nonnull %1681) #16
  call void @update_br_prob_note(ptr noundef %1662) #16
  br label %1714

1686:                                             ; preds = %1671
  %1687 = getelementptr inbounds %struct.basic_block_def, ptr %1662, i64 0, i32 8
  %1688 = load i64, ptr %1687, align 8, !tbaa !376
  %1689 = sub nsw i64 %1688, %1595
  %1690 = call i64 @llvm.smax.i64(i64 %1689, i64 0)
  store i64 %1690, ptr %1687, align 8, !tbaa !376
  %1691 = getelementptr inbounds %struct.basic_block_def, ptr %1662, i64 0, i32 11
  %1692 = load i32, ptr %1691, align 8, !tbaa !371
  %1693 = sub nsw i32 %1692, %1650
  %1694 = call i32 @llvm.smax.i32(i32 %1693, i32 0)
  store i32 %1694, ptr %1691, align 8, !tbaa !371
  %1695 = icmp slt i32 %1663, %1576
  br i1 %1695, label %1696, label %1704, !prof !377

1696:                                             ; preds = %1686
  %1697 = sext i32 %1663 to i64
  %1698 = getelementptr inbounds ptr, ptr %1577, i64 %1697
  %1699 = load ptr, ptr %1698, align 8, !tbaa !131
  %1700 = load ptr, ptr %1699, align 8, !tbaa !239
  %1701 = icmp eq ptr %1662, %1700
  %1702 = zext i1 %1701 to i32
  %1703 = add nsw i32 %1663, %1702
  br label %1704

1704:                                             ; preds = %1696, %1686
  %1705 = phi i32 [ %1663, %1686 ], [ %1703, %1696 ]
  br i1 %1666, label %1709, label %1706, !prof !377

1706:                                             ; preds = %1704
  %1707 = load i32, ptr %1665, align 8, !tbaa !214
  %1708 = icmp eq i32 %1707, 1
  br i1 %1708, label %1710, label %1709, !prof !378

1709:                                             ; preds = %1706, %1704
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1710

1710:                                             ; preds = %1709, %1706
  %1711 = load ptr, ptr %1664, align 8, !tbaa !217
  %1712 = getelementptr inbounds %struct.VEC_edge_base, ptr %1711, i64 0, i32 2, i64 0
  %1713 = load ptr, ptr %1712, align 8, !tbaa !131
  br label %1714

1714:                                             ; preds = %1710, %1685
  %1715 = phi i32 [ %1705, %1710 ], [ %1678, %1685 ]
  %1716 = phi ptr [ %1713, %1710 ], [ %1681, %1685 ]
  %1717 = getelementptr inbounds %struct.edge_def, ptr %1716, i64 0, i32 9
  %1718 = load i64, ptr %1717, align 8, !tbaa !365
  %1719 = sub nsw i64 %1718, %1595
  %1720 = call i64 @llvm.smax.i64(i64 %1719, i64 0)
  store i64 %1720, ptr %1717, align 8, !tbaa !365
  %1721 = getelementptr inbounds %struct.edge_def, ptr %1716, i64 0, i32 1
  %1722 = load ptr, ptr %1721, align 8, !tbaa !224
  %1723 = icmp eq ptr %1722, %1572
  br i1 %1723, label %1724, label %1661, !prof !379, !llvm.loop !380

1724:                                             ; preds = %1714
  br label %1736, !llvm.loop !297

1725:                                             ; preds = %1591, %1587, %1584
  %1726 = load ptr, ptr %850, align 8, !tbaa !131
  %1727 = icmp eq ptr %1726, null
  br i1 %1727, label %1730, label %1728, !prof !381

1728:                                             ; preds = %1725
  %1729 = load i32, ptr %1726, align 8, !tbaa !214
  br label %1730

1730:                                             ; preds = %1728, %1725
  %1731 = phi i32 [ %1729, %1728 ], [ 0, %1725 ]
  %1732 = icmp ult i32 %934, %1731
  br i1 %1732, label %1734, label %1733, !prof !382

1733:                                             ; preds = %1730
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %1734

1734:                                             ; preds = %1733, %1730
  %1735 = add i32 %934, 1
  br label %1736

1736:                                             ; preds = %1734, %1724, %1642, %982, %969
  %1737 = phi i32 [ %1735, %1734 ], [ %1643, %1642 ], [ %934, %1724 ], [ %934, %982 ], [ %970, %969 ]
  %1738 = phi i32 [ 0, %1734 ], [ 3, %1642 ], [ 3, %1724 ], [ 1, %982 ], [ 3, %969 ]
  %1739 = phi ptr [ %1577, %1734 ], [ %1577, %1642 ], [ %1577, %1724 ], [ %935, %982 ], [ %935, %969 ]
  %1740 = phi i8 [ %936, %1734 ], [ %936, %1642 ], [ 1, %1724 ], [ %936, %982 ], [ %936, %969 ]
  switch i32 %1738, label %1745 [
    i32 0, label %1741
    i32 3, label %1741
  ], !prof !383

1741:                                             ; preds = %1736, %1736
  br label %933, !llvm.loop !297

1742:                                             ; preds = %948
  %1743 = icmp eq ptr %935, null
  br i1 %1743, label %1745, label %1744, !prof !384

1744:                                             ; preds = %1742
  call void @free(ptr noundef %935)
  br label %1745

1745:                                             ; preds = %1736, %1744, %1742, %925
  %1746 = phi i8 [ 0, %925 ], [ %936, %1744 ], [ %936, %1742 ], [ 0, %1736 ]
  %1747 = icmp eq i8 %1746, 0
  %1748 = select i1 %1747, i8 %926, i8 1, !prof !385
  br i1 %44, label %1918, label %1749, !prof !386

1749:                                             ; preds = %1745
  %1750 = load ptr, ptr %723, align 8, !tbaa !212
  %1751 = icmp eq ptr %1750, null
  br i1 %1751, label %1918, label %1752, !prof !387

1752:                                             ; preds = %1749
  %1753 = load i32, ptr %1750, align 8, !tbaa !214
  %1754 = icmp ult i32 %1753, 2
  br i1 %1754, label %1918, label %1755, !prof !388

1755:                                             ; preds = %1752
  %1756 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %723) #16
  %1757 = icmp eq i8 %1756, 0
  br i1 %1757, label %1771, label %1758, !prof !389

1758:                                             ; preds = %1755
  %1759 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1760 = getelementptr inbounds %struct.function, ptr %1759, i64 0, i32 1
  %1761 = load ptr, ptr %1760, align 8, !tbaa !152
  %1762 = getelementptr inbounds %struct.control_flow_graph, ptr %1761, i64 0, i32 1
  %1763 = load ptr, ptr %1762, align 8, !tbaa !154
  %1764 = icmp eq ptr %1763, %723
  br i1 %1764, label %1771, label %1765, !prof !390

1765:                                             ; preds = %1758
  %1766 = load ptr, ptr %927, align 8, !tbaa !142
  %1767 = getelementptr inbounds %struct.rtl_bb_info, ptr %1766, i64 0, i32 1
  %1768 = load ptr, ptr %1767, align 8, !tbaa !172
  %1769 = call i32 @computed_jump_p(ptr noundef %1768) #16
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %1771, label %1918, !prof !391

1771:                                             ; preds = %1765, %1758, %1755
  %1772 = load ptr, ptr %723, align 8, !tbaa !212
  %1773 = icmp eq ptr %1772, null
  %1774 = getelementptr inbounds %struct.VEC_edge_base, ptr %1772, i64 0, i32 2, i64 0
  %1775 = load ptr, ptr %1774, align 8, !tbaa !131
  %1776 = load ptr, ptr %1775, align 8, !tbaa !239
  %1777 = getelementptr inbounds %struct.basic_block_def, ptr %1776, i64 0, i32 13
  %1778 = load i32, ptr %1777, align 8, !tbaa !159
  %1779 = getelementptr inbounds %struct.VEC_edge_base, ptr %1772, i64 0, i32 2, i64 1
  %1780 = load ptr, ptr %1779, align 8, !tbaa !131
  %1781 = load ptr, ptr %1780, align 8, !tbaa !239
  %1782 = getelementptr inbounds %struct.basic_block_def, ptr %1781, i64 0, i32 13
  %1783 = load i32, ptr %1782, align 8, !tbaa !159
  %1784 = xor i32 %1783, %1778
  %1785 = and i32 %1784, 96
  %1786 = icmp eq i32 %1785, 0
  br i1 %1786, label %1787, label %1918, !prof !392

1787:                                             ; preds = %1771
  %1788 = getelementptr inbounds %struct.edge_def, ptr %1775, i64 0, i32 7
  %1789 = load i32, ptr %1788, align 8, !tbaa !232
  %1790 = and i32 %1789, 8192
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1792, label %1918, !prof !392

1792:                                             ; preds = %1787
  %1793 = load ptr, ptr @compiler_params, align 8, !tbaa !131
  %1794 = getelementptr inbounds %struct.param_info, ptr %1793, i64 53, i32 1
  %1795 = load i32, ptr %1794, align 8, !tbaa !393
  br i1 %1773, label %1798, label %1796, !prof !395

1796:                                             ; preds = %1792
  %1797 = load i32, ptr %1772, align 8, !tbaa !214
  br label %1798

1798:                                             ; preds = %1796, %1792
  %1799 = phi i32 [ %1797, %1796 ], [ 0, %1792 ]
  %1800 = icmp ugt i32 %1799, %1795
  br i1 %1800, label %1918, label %1801, !prof !396

1801:                                             ; preds = %1798, %1828
  %1802 = phi i32 [ %1829, %1828 ], [ 0, %1798 ]
  %1803 = load ptr, ptr %723, align 8, !tbaa !131
  %1804 = icmp eq ptr %1803, null
  br i1 %1804, label %1807, label %1805, !prof !397

1805:                                             ; preds = %1801
  %1806 = load i32, ptr %1803, align 8, !tbaa !214
  br label %1807

1807:                                             ; preds = %1805, %1801
  %1808 = phi i32 [ %1806, %1805 ], [ 0, %1801 ]
  %1809 = icmp eq i32 %1808, %1802
  br i1 %1809, label %1814, label %1810, !prof !398

1810:                                             ; preds = %1807
  %1811 = zext i32 %1802 to i64
  %1812 = getelementptr inbounds %struct.VEC_edge_base, ptr %1803, i64 0, i32 2, i64 %1811
  %1813 = load ptr, ptr %1812, align 8, !tbaa !131
  br label %1814

1814:                                             ; preds = %1810, %1807
  %1815 = phi ptr [ %1813, %1810 ], [ null, %1807 ]
  br i1 %1809, label %1830, label %1816, !prof !398

1816:                                             ; preds = %1814
  %1817 = getelementptr inbounds %struct.edge_def, ptr %1815, i64 0, i32 7
  %1818 = load i32, ptr %1817, align 8, !tbaa !232
  %1819 = and i32 %1818, 1
  %1820 = icmp eq i32 %1819, 0
  br i1 %1820, label %1821, label %1830, !prof !399

1821:                                             ; preds = %1816
  br i1 %1804, label %1824, label %1822, !prof !400

1822:                                             ; preds = %1821
  %1823 = load i32, ptr %1803, align 8, !tbaa !214
  br label %1824

1824:                                             ; preds = %1822, %1821
  %1825 = phi i32 [ %1823, %1822 ], [ 0, %1821 ]
  %1826 = icmp ult i32 %1802, %1825
  br i1 %1826, label %1828, label %1827, !prof !401

1827:                                             ; preds = %1824
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %1828

1828:                                             ; preds = %1827, %1824
  %1829 = add i32 %1802, 1
  br label %1801, !llvm.loop !402

1830:                                             ; preds = %1816, %1814
  %1831 = phi ptr [ null, %1814 ], [ %1815, %1816 ]
  %1832 = icmp eq ptr %1831, null
  br label %1833

1833:                                             ; preds = %1912, %1830
  %1834 = phi i64 [ 0, %1830 ], [ %1913, %1912 ]
  %1835 = phi i8 [ 0, %1830 ], [ %1914, %1912 ]
  %1836 = and i64 %1834, 4294967295
  br label %1837

1837:                                             ; preds = %1873, %1833
  %1838 = phi i64 [ %1836, %1833 ], [ %1850, %1873 ]
  %1839 = load ptr, ptr %723, align 8, !tbaa !212
  %1840 = icmp eq ptr %1839, null
  br i1 %1840, label %1843, label %1841, !prof !403

1841:                                             ; preds = %1837
  %1842 = load i32, ptr %1839, align 8, !tbaa !214
  br label %1843

1843:                                             ; preds = %1841, %1837
  %1844 = phi i32 [ %1842, %1841 ], [ 0, %1837 ]
  %1845 = zext i32 %1844 to i64
  %1846 = icmp ult i64 %1838, %1845
  br i1 %1846, label %1847, label %1915, !prof !404

1847:                                             ; preds = %1843
  %1848 = getelementptr inbounds %struct.VEC_edge_base, ptr %1839, i64 0, i32 2, i64 %1838
  %1849 = load ptr, ptr %1848, align 8, !tbaa !131
  %1850 = add nuw nsw i64 %1838, 1
  br i1 %1832, label %1866, label %1851, !prof !405

1851:                                             ; preds = %1847
  %1852 = icmp eq ptr %1849, %1831
  br i1 %1852, label %1873, label %1853, !prof !406

1853:                                             ; preds = %1851
  %1854 = load i1, ptr @first_pass, align 1
  br i1 %1854, label %1863, label %1855, !prof !407

1855:                                             ; preds = %1853
  %1856 = load ptr, ptr %1849, align 8, !tbaa !239
  %1857 = call zeroext i8 @df_get_bb_dirty(ptr noundef %1856) #16
  %1858 = icmp eq i8 %1857, 0
  br i1 %1858, label %1859, label %1863, !prof !408

1859:                                             ; preds = %1855
  %1860 = load ptr, ptr %1831, align 8, !tbaa !239
  %1861 = call zeroext i8 @df_get_bb_dirty(ptr noundef %1860) #16
  %1862 = icmp eq i8 %1861, 0
  br i1 %1862, label %1873, label %1863, !prof !409

1863:                                             ; preds = %1859, %1855, %1853
  %1864 = call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %8, ptr noundef %1849, ptr noundef nonnull %1831), !range !186
  %1865 = icmp eq i8 %1864, 0
  br i1 %1865, label %1866, label %1912, !prof !410, !llvm.loop !411

1866:                                             ; preds = %1863, %1847
  %1867 = load ptr, ptr %1849, align 8, !tbaa !239
  %1868 = getelementptr inbounds %struct.basic_block_def, ptr %1867, i64 0, i32 1
  %1869 = load ptr, ptr %1868, align 8, !tbaa !217
  %1870 = getelementptr inbounds %struct.VEC_edge_base, ptr %1869, i64 0, i32 2, i64 0
  %1871 = load ptr, ptr %1870, align 8, !tbaa !131
  %1872 = icmp eq ptr %1871, %1849
  br i1 %1872, label %1874, label %1873, !prof !412

1873:                                             ; preds = %1866, %1859, %1851
  br label %1837, !llvm.loop !411

1874:                                             ; preds = %1866, %1911
  %1875 = phi i64 [ %1887, %1911 ], [ 0, %1866 ]
  %1876 = load ptr, ptr %723, align 8, !tbaa !212
  %1877 = icmp eq ptr %1876, null
  br i1 %1877, label %1880, label %1878, !prof !413

1878:                                             ; preds = %1874
  %1879 = load i32, ptr %1876, align 8, !tbaa !214
  br label %1880

1880:                                             ; preds = %1878, %1874
  %1881 = phi i32 [ %1879, %1878 ], [ 0, %1874 ]
  %1882 = zext i32 %1881 to i64
  %1883 = icmp ult i64 %1875, %1882
  br i1 %1883, label %1884, label %1912, !prof !414

1884:                                             ; preds = %1880
  %1885 = getelementptr inbounds %struct.VEC_edge_base, ptr %1876, i64 0, i32 2, i64 %1875
  %1886 = load ptr, ptr %1885, align 8, !tbaa !131
  %1887 = add nuw nsw i64 %1875, 1
  %1888 = icmp eq ptr %1886, %1849
  %1889 = icmp eq ptr %1886, %1831
  %1890 = or i1 %1888, %1889
  br i1 %1890, label %1911, label %1891, !prof !415

1891:                                             ; preds = %1884
  %1892 = load ptr, ptr %1849, align 8, !tbaa !239
  %1893 = getelementptr inbounds %struct.basic_block_def, ptr %1892, i64 0, i32 9
  %1894 = load i32, ptr %1893, align 8, !tbaa !240
  %1895 = load ptr, ptr %1886, align 8, !tbaa !239
  %1896 = getelementptr inbounds %struct.basic_block_def, ptr %1895, i64 0, i32 9
  %1897 = load i32, ptr %1896, align 8, !tbaa !240
  %1898 = icmp sgt i32 %1894, %1897
  br i1 %1898, label %1911, label %1899, !prof !416

1899:                                             ; preds = %1891
  %1900 = load i1, ptr @first_pass, align 1
  br i1 %1900, label %1908, label %1901, !prof !417

1901:                                             ; preds = %1899
  %1902 = call zeroext i8 @df_get_bb_dirty(ptr noundef %1892) #16
  %1903 = icmp eq i8 %1902, 0
  br i1 %1903, label %1904, label %1908, !prof !418

1904:                                             ; preds = %1901
  %1905 = load ptr, ptr %1886, align 8, !tbaa !239
  %1906 = call zeroext i8 @df_get_bb_dirty(ptr noundef %1905) #16
  %1907 = icmp eq i8 %1906, 0
  br i1 %1907, label %1911, label %1908, !prof !419

1908:                                             ; preds = %1904, %1901, %1899
  %1909 = call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %8, ptr noundef nonnull %1849, ptr noundef nonnull %1886), !range !186
  %1910 = icmp eq i8 %1909, 0
  br i1 %1910, label %1911, label %1912, !prof !420

1911:                                             ; preds = %1908, %1904, %1891, %1884
  br label %1874, !llvm.loop !421

1912:                                             ; preds = %1863, %1908, %1880
  %1913 = phi i64 [ 0, %1908 ], [ %1850, %1880 ], [ 0, %1863 ]
  %1914 = phi i8 [ 1, %1908 ], [ %1835, %1880 ], [ 1, %1863 ]
  br label %1833, !llvm.loop !411

1915:                                             ; preds = %1843
  %1916 = icmp eq i8 %1835, 0
  br i1 %1916, label %1918, label %1917, !prof !422

1917:                                             ; preds = %1915
  store i1 true, ptr @crossjumps_occured, align 1
  br label %1918

1918:                                             ; preds = %1917, %1915, %1798, %1787, %1771, %1765, %1752, %1749, %1745
  %1919 = phi i8 [ %1748, %1745 ], [ %1748, %1752 ], [ %1748, %1765 ], [ %1748, %1787 ], [ %1748, %1771 ], [ %1748, %1798 ], [ 1, %1917 ], [ %1748, %1915 ], [ %1748, %1749 ]
  %1920 = icmp eq i8 %1919, 0
  br i1 %1920, label %1921, label %1924, !prof !423

1921:                                             ; preds = %1918
  %1922 = getelementptr inbounds %struct.basic_block_def, ptr %723, i64 0, i32 6
  %1923 = load ptr, ptr %1922, align 8, !tbaa !170
  br label %1924

1924:                                             ; preds = %1921, %1918, %380, %162, %153
  %1925 = phi ptr [ %363, %380 ], [ %164, %162 ], [ %155, %153 ], [ %1923, %1921 ], [ %723, %1918 ]
  %1926 = phi i8 [ 1, %380 ], [ %156, %162 ], [ %156, %153 ], [ %103, %1921 ], [ 1, %1918 ]
  %1927 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1928 = getelementptr inbounds %struct.function, ptr %1927, i64 0, i32 1
  %1929 = load ptr, ptr %1928, align 8, !tbaa !152
  %1930 = getelementptr inbounds %struct.control_flow_graph, ptr %1929, i64 0, i32 1
  %1931 = load ptr, ptr %1930, align 8, !tbaa !154
  %1932 = icmp eq ptr %1925, %1931
  br i1 %1932, label %1933, label %101, !prof !424

1933:                                             ; preds = %1924, %91
  %1934 = phi i8 [ 0, %91 ], [ %1926, %1924 ]
  %1935 = phi ptr [ %99, %91 ], [ %1931, %1924 ]
  br i1 %47, label %2106, label %1936, !prof !425

1936:                                             ; preds = %1933
  %1937 = load ptr, ptr %1935, align 8, !tbaa !212
  %1938 = icmp eq ptr %1937, null
  br i1 %1938, label %2106, label %1939, !prof !387

1939:                                             ; preds = %1936
  %1940 = load i32, ptr %1937, align 8, !tbaa !214
  %1941 = icmp ult i32 %1940, 2
  br i1 %1941, label %2106, label %1942, !prof !388

1942:                                             ; preds = %1939
  %1943 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %1935) #16
  %1944 = icmp eq i8 %1943, 0
  br i1 %1944, label %1959, label %1945, !prof !389

1945:                                             ; preds = %1942
  %1946 = load ptr, ptr @cfun, align 8, !tbaa !131
  %1947 = getelementptr inbounds %struct.function, ptr %1946, i64 0, i32 1
  %1948 = load ptr, ptr %1947, align 8, !tbaa !152
  %1949 = getelementptr inbounds %struct.control_flow_graph, ptr %1948, i64 0, i32 1
  %1950 = load ptr, ptr %1949, align 8, !tbaa !154
  %1951 = icmp eq ptr %1950, %1935
  br i1 %1951, label %1959, label %1952, !prof !390

1952:                                             ; preds = %1945
  %1953 = getelementptr inbounds %struct.basic_block_def, ptr %1935, i64 0, i32 7
  %1954 = load ptr, ptr %1953, align 8, !tbaa !142
  %1955 = getelementptr inbounds %struct.rtl_bb_info, ptr %1954, i64 0, i32 1
  %1956 = load ptr, ptr %1955, align 8, !tbaa !172
  %1957 = call i32 @computed_jump_p(ptr noundef %1956) #16
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %1959, label %2106, !prof !391

1959:                                             ; preds = %1952, %1945, %1942
  %1960 = load ptr, ptr %1935, align 8, !tbaa !212
  %1961 = icmp eq ptr %1960, null
  %1962 = getelementptr inbounds %struct.VEC_edge_base, ptr %1960, i64 0, i32 2, i64 0
  %1963 = load ptr, ptr %1962, align 8, !tbaa !131
  %1964 = load ptr, ptr %1963, align 8, !tbaa !239
  %1965 = getelementptr inbounds %struct.basic_block_def, ptr %1964, i64 0, i32 13
  %1966 = load i32, ptr %1965, align 8, !tbaa !159
  %1967 = getelementptr inbounds %struct.VEC_edge_base, ptr %1960, i64 0, i32 2, i64 1
  %1968 = load ptr, ptr %1967, align 8, !tbaa !131
  %1969 = load ptr, ptr %1968, align 8, !tbaa !239
  %1970 = getelementptr inbounds %struct.basic_block_def, ptr %1969, i64 0, i32 13
  %1971 = load i32, ptr %1970, align 8, !tbaa !159
  %1972 = xor i32 %1971, %1966
  %1973 = and i32 %1972, 96
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %1975, label %2106, !prof !392

1975:                                             ; preds = %1959
  %1976 = getelementptr inbounds %struct.edge_def, ptr %1963, i64 0, i32 7
  %1977 = load i32, ptr %1976, align 8, !tbaa !232
  %1978 = and i32 %1977, 8192
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %1980, label %2106, !prof !392

1980:                                             ; preds = %1975
  %1981 = load ptr, ptr @compiler_params, align 8, !tbaa !131
  %1982 = getelementptr inbounds %struct.param_info, ptr %1981, i64 53, i32 1
  %1983 = load i32, ptr %1982, align 8, !tbaa !393
  br i1 %1961, label %1986, label %1984, !prof !395

1984:                                             ; preds = %1980
  %1985 = load i32, ptr %1960, align 8, !tbaa !214
  br label %1986

1986:                                             ; preds = %1984, %1980
  %1987 = phi i32 [ %1985, %1984 ], [ 0, %1980 ]
  %1988 = icmp ugt i32 %1987, %1983
  br i1 %1988, label %2106, label %1989, !prof !396

1989:                                             ; preds = %1986, %2016
  %1990 = phi i32 [ %2017, %2016 ], [ 0, %1986 ]
  %1991 = load ptr, ptr %1935, align 8, !tbaa !131
  %1992 = icmp eq ptr %1991, null
  br i1 %1992, label %1995, label %1993, !prof !397

1993:                                             ; preds = %1989
  %1994 = load i32, ptr %1991, align 8, !tbaa !214
  br label %1995

1995:                                             ; preds = %1993, %1989
  %1996 = phi i32 [ %1994, %1993 ], [ 0, %1989 ]
  %1997 = icmp eq i32 %1996, %1990
  br i1 %1997, label %2002, label %1998, !prof !398

1998:                                             ; preds = %1995
  %1999 = zext i32 %1990 to i64
  %2000 = getelementptr inbounds %struct.VEC_edge_base, ptr %1991, i64 0, i32 2, i64 %1999
  %2001 = load ptr, ptr %2000, align 8, !tbaa !131
  br label %2002

2002:                                             ; preds = %1998, %1995
  %2003 = phi ptr [ %2001, %1998 ], [ null, %1995 ]
  br i1 %1997, label %2018, label %2004, !prof !398

2004:                                             ; preds = %2002
  %2005 = getelementptr inbounds %struct.edge_def, ptr %2003, i64 0, i32 7
  %2006 = load i32, ptr %2005, align 8, !tbaa !232
  %2007 = and i32 %2006, 1
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2009, label %2018, !prof !399

2009:                                             ; preds = %2004
  br i1 %1992, label %2012, label %2010, !prof !400

2010:                                             ; preds = %2009
  %2011 = load i32, ptr %1991, align 8, !tbaa !214
  br label %2012

2012:                                             ; preds = %2010, %2009
  %2013 = phi i32 [ %2011, %2010 ], [ 0, %2009 ]
  %2014 = icmp ult i32 %1990, %2013
  br i1 %2014, label %2016, label %2015, !prof !401

2015:                                             ; preds = %2012
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %2016

2016:                                             ; preds = %2015, %2012
  %2017 = add i32 %1990, 1
  br label %1989, !llvm.loop !402

2018:                                             ; preds = %2004, %2002
  %2019 = phi ptr [ null, %2002 ], [ %2003, %2004 ]
  %2020 = icmp eq ptr %2019, null
  br label %2021

2021:                                             ; preds = %2100, %2018
  %2022 = phi i64 [ 0, %2018 ], [ %2101, %2100 ]
  %2023 = phi i8 [ 0, %2018 ], [ %2102, %2100 ]
  %2024 = and i64 %2022, 4294967295
  br label %2025

2025:                                             ; preds = %2061, %2021
  %2026 = phi i64 [ %2024, %2021 ], [ %2038, %2061 ]
  %2027 = load ptr, ptr %1935, align 8, !tbaa !212
  %2028 = icmp eq ptr %2027, null
  br i1 %2028, label %2031, label %2029, !prof !403

2029:                                             ; preds = %2025
  %2030 = load i32, ptr %2027, align 8, !tbaa !214
  br label %2031

2031:                                             ; preds = %2029, %2025
  %2032 = phi i32 [ %2030, %2029 ], [ 0, %2025 ]
  %2033 = zext i32 %2032 to i64
  %2034 = icmp ult i64 %2026, %2033
  br i1 %2034, label %2035, label %2103, !prof !404

2035:                                             ; preds = %2031
  %2036 = getelementptr inbounds %struct.VEC_edge_base, ptr %2027, i64 0, i32 2, i64 %2026
  %2037 = load ptr, ptr %2036, align 8, !tbaa !131
  %2038 = add nuw nsw i64 %2026, 1
  br i1 %2020, label %2054, label %2039, !prof !405

2039:                                             ; preds = %2035
  %2040 = icmp eq ptr %2037, %2019
  br i1 %2040, label %2061, label %2041, !prof !406

2041:                                             ; preds = %2039
  %2042 = load i1, ptr @first_pass, align 1
  br i1 %2042, label %2051, label %2043, !prof !407

2043:                                             ; preds = %2041
  %2044 = load ptr, ptr %2037, align 8, !tbaa !239
  %2045 = call zeroext i8 @df_get_bb_dirty(ptr noundef %2044) #16
  %2046 = icmp eq i8 %2045, 0
  br i1 %2046, label %2047, label %2051, !prof !408

2047:                                             ; preds = %2043
  %2048 = load ptr, ptr %2019, align 8, !tbaa !239
  %2049 = call zeroext i8 @df_get_bb_dirty(ptr noundef %2048) #16
  %2050 = icmp eq i8 %2049, 0
  br i1 %2050, label %2061, label %2051, !prof !409

2051:                                             ; preds = %2047, %2043, %2041
  %2052 = call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %8, ptr noundef %2037, ptr noundef nonnull %2019), !range !186
  %2053 = icmp eq i8 %2052, 0
  br i1 %2053, label %2054, label %2100, !prof !410, !llvm.loop !411

2054:                                             ; preds = %2051, %2035
  %2055 = load ptr, ptr %2037, align 8, !tbaa !239
  %2056 = getelementptr inbounds %struct.basic_block_def, ptr %2055, i64 0, i32 1
  %2057 = load ptr, ptr %2056, align 8, !tbaa !217
  %2058 = getelementptr inbounds %struct.VEC_edge_base, ptr %2057, i64 0, i32 2, i64 0
  %2059 = load ptr, ptr %2058, align 8, !tbaa !131
  %2060 = icmp eq ptr %2059, %2037
  br i1 %2060, label %2062, label %2061, !prof !412

2061:                                             ; preds = %2054, %2047, %2039
  br label %2025, !llvm.loop !411

2062:                                             ; preds = %2054, %2099
  %2063 = phi i64 [ %2075, %2099 ], [ 0, %2054 ]
  %2064 = load ptr, ptr %1935, align 8, !tbaa !212
  %2065 = icmp eq ptr %2064, null
  br i1 %2065, label %2068, label %2066, !prof !413

2066:                                             ; preds = %2062
  %2067 = load i32, ptr %2064, align 8, !tbaa !214
  br label %2068

2068:                                             ; preds = %2066, %2062
  %2069 = phi i32 [ %2067, %2066 ], [ 0, %2062 ]
  %2070 = zext i32 %2069 to i64
  %2071 = icmp ult i64 %2063, %2070
  br i1 %2071, label %2072, label %2100, !prof !414

2072:                                             ; preds = %2068
  %2073 = getelementptr inbounds %struct.VEC_edge_base, ptr %2064, i64 0, i32 2, i64 %2063
  %2074 = load ptr, ptr %2073, align 8, !tbaa !131
  %2075 = add nuw nsw i64 %2063, 1
  %2076 = icmp eq ptr %2074, %2037
  %2077 = icmp eq ptr %2074, %2019
  %2078 = or i1 %2076, %2077
  br i1 %2078, label %2099, label %2079, !prof !415

2079:                                             ; preds = %2072
  %2080 = load ptr, ptr %2037, align 8, !tbaa !239
  %2081 = getelementptr inbounds %struct.basic_block_def, ptr %2080, i64 0, i32 9
  %2082 = load i32, ptr %2081, align 8, !tbaa !240
  %2083 = load ptr, ptr %2074, align 8, !tbaa !239
  %2084 = getelementptr inbounds %struct.basic_block_def, ptr %2083, i64 0, i32 9
  %2085 = load i32, ptr %2084, align 8, !tbaa !240
  %2086 = icmp sgt i32 %2082, %2085
  br i1 %2086, label %2099, label %2087, !prof !416

2087:                                             ; preds = %2079
  %2088 = load i1, ptr @first_pass, align 1
  br i1 %2088, label %2096, label %2089, !prof !417

2089:                                             ; preds = %2087
  %2090 = call zeroext i8 @df_get_bb_dirty(ptr noundef %2080) #16
  %2091 = icmp eq i8 %2090, 0
  br i1 %2091, label %2092, label %2096, !prof !418

2092:                                             ; preds = %2089
  %2093 = load ptr, ptr %2074, align 8, !tbaa !239
  %2094 = call zeroext i8 @df_get_bb_dirty(ptr noundef %2093) #16
  %2095 = icmp eq i8 %2094, 0
  br i1 %2095, label %2099, label %2096, !prof !419

2096:                                             ; preds = %2092, %2089, %2087
  %2097 = call fastcc zeroext i8 @try_crossjump_to_edge(i32 noundef %8, ptr noundef nonnull %2037, ptr noundef nonnull %2074), !range !186
  %2098 = icmp eq i8 %2097, 0
  br i1 %2098, label %2099, label %2100, !prof !420

2099:                                             ; preds = %2096, %2092, %2079, %2072
  br label %2062, !llvm.loop !421

2100:                                             ; preds = %2051, %2096, %2068
  %2101 = phi i64 [ 0, %2096 ], [ %2038, %2068 ], [ 0, %2051 ]
  %2102 = phi i8 [ 1, %2096 ], [ %2023, %2068 ], [ 1, %2051 ]
  br label %2021, !llvm.loop !411

2103:                                             ; preds = %2031
  %2104 = icmp eq i8 %2023, 0
  br i1 %2104, label %2106, label %2105, !prof !422

2105:                                             ; preds = %2103
  store i1 true, ptr @crossjumps_occured, align 1
  br label %2106

2106:                                             ; preds = %2105, %2103, %1986, %1975, %1959, %1952, %1939, %1936, %1933
  %2107 = phi i8 [ %1934, %1933 ], [ %1934, %1939 ], [ %1934, %1952 ], [ %1934, %1975 ], [ %1934, %1959 ], [ %1934, %1986 ], [ 1, %2105 ], [ %1934, %2103 ], [ %1934, %1936 ]
  %2108 = zext nneg i8 %2107 to i32
  %2109 = or i32 %85, %2108
  store i1 false, ptr @first_pass, align 1
  %2110 = icmp eq i8 %2107, 0
  br i1 %2110, label %2111, label %83, !prof !426, !llvm.loop !427

2111:                                             ; preds = %2106
  %2112 = trunc i32 %85 to i8
  br label %2113

2113:                                             ; preds = %2111, %78
  %2114 = phi i8 [ 0, %78 ], [ %2112, %2111 ]
  %2115 = load ptr, ptr @cfun, align 8, !tbaa !131
  %2116 = getelementptr inbounds %struct.function, ptr %2115, i64 0, i32 1
  %2117 = load ptr, ptr %2116, align 8, !tbaa !152
  %2118 = load ptr, ptr %2117, align 8, !tbaa !131
  %2119 = icmp eq ptr %2118, null
  br i1 %2119, label %2128, label %2120, !prof !192

2120:                                             ; preds = %2113, %2120
  %2121 = phi ptr [ %2126, %2120 ], [ %2118, %2113 ]
  %2122 = getelementptr inbounds %struct.basic_block_def, ptr %2121, i64 0, i32 13
  %2123 = load i32, ptr %2122, align 8, !tbaa !159
  %2124 = and i32 %2123, -3073
  store i32 %2124, ptr %2122, align 8, !tbaa !159
  %2125 = getelementptr inbounds %struct.basic_block_def, ptr %2121, i64 0, i32 6
  %2126 = load ptr, ptr %2125, align 8, !tbaa !131
  %2127 = icmp eq ptr %2126, null
  br i1 %2127, label %2128, label %2120, !prof !428, !llvm.loop !429

2128:                                             ; preds = %2120, %2113
  %2129 = icmp eq i8 %2114, 0
  br i1 %2129, label %2150, label %2130, !prof !430

2130:                                             ; preds = %2128
  %2131 = and i32 %8, 16
  %2132 = icmp eq i32 %2131, 0
  %2133 = call zeroext i8 @delete_unreachable_blocks(), !range !186
  br i1 %2132, label %2134, label %2150, !prof !431

2134:                                             ; preds = %2130
  %2135 = and i32 %8, 1
  %2136 = icmp eq i32 %2135, 0
  %2137 = load i32, ptr @reload_completed, align 4
  %2138 = icmp ne i32 %2137, 0
  %2139 = select i1 %2136, i1 true, i1 %2138, !prof !432
  br i1 %2139, label %2145, label %2140, !prof !433

2140:                                             ; preds = %2134
  %2141 = call ptr @get_insns() #16
  %2142 = call i32 @max_reg_num() #16
  %2143 = call i32 @delete_trivially_dead_insns(ptr noundef %2141, i32 noundef %2142) #16
  %2144 = icmp eq i32 %2143, 0
  br i1 %2144, label %2150, label %2145, !prof !434

2145:                                             ; preds = %2140, %2134
  %2146 = load i1, ptr @crossjumps_occured, align 1
  %2147 = select i1 %28, i1 %2146, i1 false, !prof !435
  br i1 %2147, label %2148, label %2149, !prof !435

2148:                                             ; preds = %2145
  call void @run_fast_dce() #16
  br label %2149

2149:                                             ; preds = %2148, %2145
  br label %48, !llvm.loop !436

2150:                                             ; preds = %2130, %2140, %2128
  %2151 = phi i8 [ 1, %2130 ], [ 1, %2140 ], [ %49, %2128 ]
  br i1 %28, label %2152, label %2153, !prof !189

2152:                                             ; preds = %2150
  call void @remove_fake_exit_edges() #16
  br label %2153

2153:                                             ; preds = %2152, %2150
  %2154 = and i32 %8, 32
  %2155 = icmp eq i32 %2154, 0
  br i1 %2155, label %2156, label %2157, !prof !437

2156:                                             ; preds = %2153
  call void @delete_dead_jumptables()
  br label %2157

2157:                                             ; preds = %2153, %2156
  %2158 = load i8, ptr @timevar_enable, align 1, !tbaa !142
  %2159 = icmp eq i8 %2158, 0
  br i1 %2159, label %2161, label %2160, !prof !185

2160:                                             ; preds = %2157
  call void @timevar_pop_1(i32 noundef 23) #16
  br label %2161

2161:                                             ; preds = %2157, %2160, %30
  %2162 = phi i8 [ %26, %30 ], [ %2151, %2160 ], [ %2151, %2157 ]
  ret i8 %2162
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare i32 @delete_trivially_dead_insns(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

declare void @compact_blocks() local_unnamed_addr #3

declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #3

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare void @run_fast_dce() local_unnamed_addr #3

declare void @remove_fake_exit_edges() local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_jump() #9 !prof !438 !PGOFuncName !439 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 39), align 1, !tbaa !440
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !449

3:                                                ; preds = %0
  tail call void @fixup_tail_calls() #16
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_jump2() #9 !prof !438 !PGOFuncName !450 {
  %1 = tail call ptr @get_insns() #16
  %2 = tail call i32 @max_reg_num() #16
  %3 = tail call i32 @delete_trivially_dead_insns(ptr noundef %1, i32 noundef %2) #16
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !451

6:                                                ; preds = %0
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !146
  tail call void @dump_flow_info(ptr noundef nonnull %4, i32 noundef %7) #16
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, ptr @optimize, align 4, !tbaa !146
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i32, ptr @flag_thread_jumps, align 4, !tbaa !146
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 8, !prof !188
  %15 = or disjoint i32 %14, %11
  %16 = tail call zeroext i8 @cleanup_cfg(i32 noundef %15), !range !186
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare void @clear_bb_flags() local_unnamed_addr #3

declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @delete_insn_chain(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @reorder_insns_nobb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @try_redirect_by_replacing_jump(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @forwarder_block_p(ptr noundef) local_unnamed_addr #3

declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #3

declare ptr @prev_active_insn(ptr noundef) local_unnamed_addr #3

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #3

declare void @unlink_block(ptr noundef) local_unnamed_addr #3

declare void @link_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_fallthru(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @block_label(ptr noundef) local_unnamed_addr #3

declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #3

declare void @tidy_fallthru_edge(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_get_bb_dirty(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @locator_eq(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_bb_profile_for_threading(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @comparison_dominates_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare void @cselib_init(i32 noundef) local_unnamed_addr #3

declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @mark_effect(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #11 !prof !452 !PGOFuncName !453 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %70 [
    i16 25, label %5
    i16 23, label %33
  ], !prof !336

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %70, !prof !337

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !142
  %14 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %13) #16
  %15 = icmp slt i32 %13, 53
  br i1 %15, label %16, label %70, !prof !337

16:                                               ; preds = %11
  %17 = sext i32 %13 to i64
  %18 = load i32, ptr %7, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %17, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !142
  %24 = icmp ugt i8 %23, 1
  br i1 %24, label %25, label %70, !prof !221

25:                                               ; preds = %16
  %26 = zext i8 %23 to i32
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i32 [ %29, %27 ], [ %26, %25 ]
  %29 = add nsw i32 %28, -1
  %30 = add nsw i32 %29, %13
  %31 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %30) #16
  %32 = icmp sgt i32 %28, 2
  br i1 %32, label %27, label %70, !prof !221, !llvm.loop !338

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !142
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !142
  %38 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef %35, ptr noundef %37) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %70, !prof !339

40:                                               ; preds = %33
  %41 = load ptr, ptr %34, align 8, !tbaa !142
  %42 = load ptr, ptr @global_rtl, align 16, !tbaa !131
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %70, label %44, !prof !340

44:                                               ; preds = %40
  %45 = load i32, ptr %41, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 37
  br i1 %47, label %48, label %70, !prof !341

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !142
  %51 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %50) #16
  %52 = icmp slt i32 %50, 53
  br i1 %52, label %53, label %70, !prof !342

53:                                               ; preds = %48
  %54 = sext i32 %50 to i64
  %55 = load i32, ptr %41, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %54, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !142
  %61 = icmp ugt i8 %60, 1
  br i1 %61, label %62, label %70, !prof !221

62:                                               ; preds = %53
  %63 = zext i8 %60 to i32
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i32 [ %66, %64 ], [ %63, %62 ]
  %66 = add nsw i32 %65, -1
  %67 = add nsw i32 %66, %50
  %68 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %67) #16
  %69 = icmp sgt i32 %65, 2
  br i1 %69, label %64, label %70, !prof !221, !llvm.loop !343

70:                                               ; preds = %64, %27, %53, %16, %2, %48, %44, %40, %33, %5, %11
  %71 = phi i8 [ 0, %11 ], [ 0, %5 ], [ 0, %33 ], [ 0, %40 ], [ 1, %44 ], [ 0, %48 ], [ 0, %2 ], [ 0, %16 ], [ 0, %53 ], [ 0, %27 ], [ 0, %64 ]
  ret i8 %71
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noundef i32 @mentions_nonequal_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #11 !prof !454 !PGOFuncName !455 {
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %32, !prof !456

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !142
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32, !prof !348

12:                                               ; preds = %7
  %13 = icmp slt i32 %9, 53
  br i1 %13, label %14, label %32, !prof !351

14:                                               ; preds = %12
  %15 = sext i32 %9 to i64
  %16 = load ptr, ptr %0, align 8, !tbaa !131
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %15, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !142
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %27, %14
  %25 = phi i32 [ %23, %14 ], [ %28, %27 ]
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %32, label %27, !prof !351

27:                                               ; preds = %24
  %28 = add nsw i32 %25, -1
  %29 = add nsw i32 %28, %9
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %24, label %32, !llvm.loop !457

32:                                               ; preds = %27, %24, %12, %2, %7
  %33 = phi i32 [ 1, %7 ], [ 0, %2 ], [ 0, %12 ], [ 0, %24 ], [ 1, %27 ]
  ret i32 %33
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @cselib_finish() local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_for_cselib_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #3

declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @try_crossjump_to_edge(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !prof !458 !PGOFuncName !459 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.replace_label_data, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.replace_label_data, align 8
  %14 = alloca ptr, align 8
  %15 = load ptr, ptr %1, align 8, !tbaa !239
  %16 = load ptr, ptr %2, align 8, !tbaa !239
  %17 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !146
  %18 = icmp ne i32 %17, 0
  %19 = load i32, ptr @reload_completed, align 4
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %18, i1 %20, i1 false, !prof !460
  br i1 %21, label %1511, label %22, !prof !460

22:                                               ; preds = %3
  %23 = load ptr, ptr %15, align 8, !tbaa !212
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !460

25:                                               ; preds = %22
  %26 = load i32, ptr %23, align 8, !tbaa !214
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %22, %25
  %30 = phi i8 [ %28, %25 ], [ 0, %22 ]
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %47, label %32, !prof !461

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !159
  %35 = and i32 %34, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37, !prof !462

37:                                               ; preds = %32
  br i1 %24, label %41, label %38, !prof !463

38:                                               ; preds = %37
  %39 = load i32, ptr %23, align 8, !tbaa !214
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %42, label %41, !prof !464

41:                                               ; preds = %37, %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %42

42:                                               ; preds = %38, %41
  %43 = load ptr, ptr %15, align 8, !tbaa !212
  %44 = getelementptr inbounds %struct.VEC_edge_base, ptr %43, i64 0, i32 2, i64 0
  %45 = load ptr, ptr %44, align 8, !tbaa !131
  %46 = load ptr, ptr %45, align 8, !tbaa !239
  br label %47

47:                                               ; preds = %42, %32, %29
  %48 = phi ptr [ %46, %42 ], [ %15, %32 ], [ %15, %29 ]
  %49 = phi ptr [ %45, %42 ], [ %1, %32 ], [ %1, %29 ]
  %50 = load ptr, ptr %16, align 8, !tbaa !212
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52, !prof !460

52:                                               ; preds = %47
  %53 = load i32, ptr %50, align 8, !tbaa !214
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i8
  br label %56

56:                                               ; preds = %47, %52
  %57 = phi i8 [ %55, %52 ], [ 0, %47 ]
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %74, label %59, !prof !465

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !159
  %62 = and i32 %61, 1024
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64, !prof !466

64:                                               ; preds = %59
  br i1 %51, label %68, label %65, !prof !467

65:                                               ; preds = %64
  %66 = load i32, ptr %50, align 8, !tbaa !214
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %69, label %68, !prof !468

68:                                               ; preds = %64, %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %69

69:                                               ; preds = %65, %68
  %70 = load ptr, ptr %16, align 8, !tbaa !212
  %71 = getelementptr inbounds %struct.VEC_edge_base, ptr %70, i64 0, i32 2, i64 0
  %72 = load ptr, ptr %71, align 8, !tbaa !131
  %73 = load ptr, ptr %72, align 8, !tbaa !239
  br label %74

74:                                               ; preds = %69, %59, %56
  %75 = phi ptr [ %73, %69 ], [ %16, %59 ], [ %16, %56 ]
  %76 = phi ptr [ %72, %69 ], [ %2, %59 ], [ %2, %56 ]
  %77 = load ptr, ptr @cfun, align 8, !tbaa !131
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !152
  %80 = load ptr, ptr %79, align 8, !tbaa !158
  %81 = icmp eq ptr %48, %80
  %82 = icmp eq ptr %75, %80
  %83 = select i1 %81, i1 true, i1 %82, !prof !460
  %84 = icmp eq ptr %48, %75
  %85 = select i1 %83, i1 true, i1 %84, !prof !460
  br i1 %85, label %1511, label %86, !prof !460

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !224
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 13
  %90 = load i32, ptr %89, align 8, !tbaa !159
  %91 = and i32 %90, 1024
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %111, label %93, !prof !469

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !217
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97, !prof !463

97:                                               ; preds = %93
  %98 = load i32, ptr %95, align 8, !tbaa !214
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %101, label %100, !prof !464

100:                                              ; preds = %97, %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %101

101:                                              ; preds = %97, %100
  %102 = load ptr, ptr %94, align 8, !tbaa !217
  %103 = getelementptr inbounds %struct.VEC_edge_base, ptr %102, i64 0, i32 2, i64 0
  %104 = load ptr, ptr %103, align 8, !tbaa !131
  %105 = getelementptr inbounds %struct.edge_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !224
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %106, i64 0, i32 13
  %108 = load i32, ptr %107, align 8, !tbaa !159
  %109 = and i32 %108, 1024
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %1511, !prof !464

111:                                              ; preds = %101, %86
  %112 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !224
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %115 = load i32, ptr %114, align 8, !tbaa !159
  %116 = and i32 %115, 1024
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %136, label %118, !prof !470

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !217
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122, !prof !467

122:                                              ; preds = %118
  %123 = load i32, ptr %120, align 8, !tbaa !214
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %126, label %125, !prof !468

125:                                              ; preds = %122, %118
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %126

126:                                              ; preds = %122, %125
  %127 = load ptr, ptr %119, align 8, !tbaa !217
  %128 = getelementptr inbounds %struct.VEC_edge_base, ptr %127, i64 0, i32 2, i64 0
  %129 = load ptr, ptr %128, align 8, !tbaa !131
  %130 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !224
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %131, i64 0, i32 13
  %133 = load i32, ptr %132, align 8, !tbaa !159
  %134 = and i32 %133, 1024
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %1511, !prof !468

136:                                              ; preds = %126, %111
  %137 = load ptr, ptr %48, align 8, !tbaa !212
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139, !prof !460

139:                                              ; preds = %136
  %140 = load i32, ptr %137, align 8, !tbaa !214
  br label %141

141:                                              ; preds = %136, %139
  %142 = phi i32 [ %140, %139 ], [ 0, %136 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %1511, label %144, !prof !471

144:                                              ; preds = %141
  %145 = load ptr, ptr %75, align 8, !tbaa !212
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147, !prof !472

147:                                              ; preds = %144
  %148 = load i32, ptr %145, align 8, !tbaa !214
  br label %149

149:                                              ; preds = %144, %147
  %150 = phi i32 [ %148, %147 ], [ 0, %144 ]
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %1511, label %152, !prof !473

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !217
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156, !prof !474

156:                                              ; preds = %152
  %157 = load i32, ptr %154, align 8, !tbaa !214
  %158 = icmp eq i32 %157, 1
  %159 = zext i1 %158 to i8
  br label %160

160:                                              ; preds = %156, %152
  %161 = phi i8 [ %159, %156 ], [ 0, %152 ]
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %214, label %163, !prof !475

163:                                              ; preds = %160
  br i1 %155, label %167, label %164, !prof !476

164:                                              ; preds = %163
  %165 = load i32, ptr %154, align 8, !tbaa !214
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %168, label %167, !prof !477

167:                                              ; preds = %164, %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %168

168:                                              ; preds = %167, %164
  %169 = load ptr, ptr %153, align 8, !tbaa !217
  %170 = getelementptr inbounds %struct.VEC_edge_base, ptr %169, i64 0, i32 2, i64 0
  %171 = load ptr, ptr %170, align 8, !tbaa !131
  %172 = getelementptr inbounds %struct.edge_def, ptr %171, i64 0, i32 7
  %173 = load i32, ptr %172, align 8, !tbaa !232
  %174 = and i32 %173, 30
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %214, !prof !478

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %178 = load ptr, ptr %177, align 8, !tbaa !142
  %179 = getelementptr inbounds %struct.rtl_bb_info, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !172
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 9
  br i1 %183, label %184, label %187, !prof !479

184:                                              ; preds = %176
  %185 = tail call i32 @simplejump_p(ptr noundef nonnull %180) #16
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %214, label %187, !prof !480

187:                                              ; preds = %184, %176
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !217
  %190 = icmp eq ptr %189, null
  br i1 %190, label %860, label %191, !prof !481

191:                                              ; preds = %187
  %192 = load i32, ptr %189, align 8, !tbaa !214
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %860, !prof !482

194:                                              ; preds = %191
  %195 = load ptr, ptr %188, align 8, !tbaa !217
  %196 = getelementptr inbounds %struct.VEC_edge_base, ptr %195, i64 0, i32 2, i64 0
  %197 = load ptr, ptr %196, align 8, !tbaa !131
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 7
  %199 = load i32, ptr %198, align 8, !tbaa !232
  %200 = and i32 %199, 30
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %860, !prof !483

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %204 = load ptr, ptr %203, align 8, !tbaa !142
  %205 = getelementptr inbounds %struct.rtl_bb_info, ptr %204, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !172
  %207 = load i32, ptr %206, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 9
  br i1 %209, label %210, label %860, !prof !484

210:                                              ; preds = %202
  %211 = tail call i32 @simplejump_p(ptr noundef nonnull %206) #16
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i8
  br label %860

214:                                              ; preds = %184, %168, %160
  %215 = load ptr, ptr %153, align 8, !tbaa !217
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217, !prof !485

217:                                              ; preds = %214
  %218 = load i32, ptr %215, align 8, !tbaa !214
  br label %219

219:                                              ; preds = %217, %214
  %220 = phi i32 [ %218, %217 ], [ 0, %214 ]
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %486, !prof !486

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %224 = load ptr, ptr %223, align 8, !tbaa !142
  %225 = getelementptr inbounds %struct.rtl_bb_info, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !172
  %227 = tail call i32 @any_condjump_p(ptr noundef %226) #16
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %486, label %229, !prof !487

229:                                              ; preds = %222
  %230 = load ptr, ptr %223, align 8, !tbaa !142
  %231 = getelementptr inbounds %struct.rtl_bb_info, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !172
  %233 = tail call i32 @onlyjump_p(ptr noundef %232) #16
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %486, label %235, !prof !487

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !217
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %239, !prof !487

239:                                              ; preds = %235
  %240 = load i32, ptr %237, align 8, !tbaa !214
  br label %241

241:                                              ; preds = %239, %235
  %242 = phi i32 [ %240, %239 ], [ 0, %235 ]
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %860, !prof !488

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %246 = load ptr, ptr %245, align 8, !tbaa !142
  %247 = getelementptr inbounds %struct.rtl_bb_info, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !172
  %249 = tail call i32 @any_condjump_p(ptr noundef %248) #16
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %860, label %251, !prof !489

251:                                              ; preds = %244
  %252 = load ptr, ptr %245, align 8, !tbaa !142
  %253 = getelementptr inbounds %struct.rtl_bb_info, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !172
  %255 = tail call i32 @onlyjump_p(ptr noundef %254) #16
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %860, label %257, !prof !489

257:                                              ; preds = %251
  %258 = load ptr, ptr %153, align 8, !tbaa !217
  %259 = getelementptr inbounds %struct.VEC_edge_base, ptr %258, i64 0, i32 2, i64 0
  %260 = load ptr, ptr %259, align 8, !tbaa !131
  %261 = getelementptr inbounds %struct.edge_def, ptr %260, i64 0, i32 7
  %262 = load i32, ptr %261, align 8, !tbaa !232
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265, !prof !490

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.VEC_edge_base, ptr %258, i64 0, i32 2, i64 1
  %267 = load ptr, ptr %266, align 8, !tbaa !131
  br label %268

268:                                              ; preds = %265, %257
  %269 = phi ptr [ %267, %265 ], [ %260, %257 ]
  %270 = load ptr, ptr %236, align 8, !tbaa !217
  %271 = getelementptr inbounds %struct.VEC_edge_base, ptr %270, i64 0, i32 2, i64 0
  %272 = load ptr, ptr %271, align 8, !tbaa !131
  %273 = getelementptr inbounds %struct.edge_def, ptr %272, i64 0, i32 7
  %274 = load i32, ptr %273, align 8, !tbaa !232
  %275 = and i32 %274, 1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277, !prof !491

277:                                              ; preds = %268
  %278 = getelementptr inbounds %struct.VEC_edge_base, ptr %270, i64 0, i32 2, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !131
  br label %280

280:                                              ; preds = %277, %268
  %281 = phi ptr [ %279, %277 ], [ %272, %268 ]
  br i1 %264, label %282, label %285, !prof !490

282:                                              ; preds = %280
  %283 = getelementptr inbounds %struct.VEC_edge_base, ptr %258, i64 0, i32 2, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !131
  br label %285

285:                                              ; preds = %282, %280
  %286 = phi ptr [ %284, %282 ], [ %260, %280 ]
  br i1 %276, label %287, label %290, !prof !491

287:                                              ; preds = %285
  %288 = getelementptr inbounds %struct.VEC_edge_base, ptr %270, i64 0, i32 2, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !131
  br label %290

290:                                              ; preds = %287, %285
  %291 = phi ptr [ %289, %287 ], [ %272, %285 ]
  %292 = getelementptr inbounds %struct.edge_def, ptr %286, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !224
  %294 = getelementptr inbounds %struct.basic_block_def, ptr %293, i64 0, i32 13
  %295 = load i32, ptr %294, align 8, !tbaa !159
  %296 = and i32 %295, 1024
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %310, label %298, !prof !492

298:                                              ; preds = %290
  %299 = getelementptr inbounds %struct.basic_block_def, ptr %293, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !217
  %301 = icmp eq ptr %300, null
  br i1 %301, label %305, label %302, !prof !493

302:                                              ; preds = %298
  %303 = load i32, ptr %300, align 8, !tbaa !214
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %306, label %305, !prof !494

305:                                              ; preds = %302, %298
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %306

306:                                              ; preds = %305, %302
  %307 = load ptr, ptr %299, align 8, !tbaa !217
  %308 = getelementptr inbounds %struct.VEC_edge_base, ptr %307, i64 0, i32 2, i64 0
  %309 = load ptr, ptr %308, align 8, !tbaa !131
  br label %310

310:                                              ; preds = %306, %290
  %311 = phi ptr [ %309, %306 ], [ %286, %290 ]
  %312 = getelementptr inbounds %struct.edge_def, ptr %291, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !224
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 13
  %315 = load i32, ptr %314, align 8, !tbaa !159
  %316 = and i32 %315, 1024
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %330, label %318, !prof !495

318:                                              ; preds = %310
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !217
  %321 = icmp eq ptr %320, null
  br i1 %321, label %325, label %322, !prof !496

322:                                              ; preds = %318
  %323 = load i32, ptr %320, align 8, !tbaa !214
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %326, label %325, !prof !497

325:                                              ; preds = %322, %318
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %326

326:                                              ; preds = %325, %322
  %327 = load ptr, ptr %319, align 8, !tbaa !217
  %328 = getelementptr inbounds %struct.VEC_edge_base, ptr %327, i64 0, i32 2, i64 0
  %329 = load ptr, ptr %328, align 8, !tbaa !131
  br label %330

330:                                              ; preds = %326, %310
  %331 = phi ptr [ %329, %326 ], [ %291, %310 ]
  %332 = getelementptr inbounds %struct.edge_def, ptr %311, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !224
  %334 = getelementptr inbounds %struct.basic_block_def, ptr %333, i64 0, i32 13
  %335 = load i32, ptr %334, align 8, !tbaa !159
  %336 = and i32 %335, 1024
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %860, !prof !498

338:                                              ; preds = %330
  %339 = getelementptr inbounds %struct.edge_def, ptr %331, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !224
  %341 = getelementptr inbounds %struct.basic_block_def, ptr %340, i64 0, i32 13
  %342 = load i32, ptr %341, align 8, !tbaa !159
  %343 = and i32 %342, 1024
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %860, !prof !499

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.edge_def, ptr %269, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !224
  %348 = getelementptr inbounds %struct.basic_block_def, ptr %347, i64 0, i32 13
  %349 = load i32, ptr %348, align 8, !tbaa !159
  %350 = and i32 %349, 1024
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %860, !prof !500

352:                                              ; preds = %345
  %353 = getelementptr inbounds %struct.edge_def, ptr %281, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !224
  %355 = getelementptr inbounds %struct.basic_block_def, ptr %354, i64 0, i32 13
  %356 = load i32, ptr %355, align 8, !tbaa !159
  %357 = and i32 %356, 1024
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %860, !prof !501

359:                                              ; preds = %352
  %360 = icmp eq ptr %333, %340
  %361 = icmp eq ptr %347, %354
  %362 = and i1 %360, %361
  br i1 %362, label %367, label %363, !prof !502

363:                                              ; preds = %359
  %364 = icmp eq ptr %333, %354
  %365 = icmp eq ptr %347, %340
  %366 = and i1 %365, %364
  br i1 %366, label %367, label %860, !prof !503

367:                                              ; preds = %363, %359
  %368 = phi i8 [ 1, %359 ], [ 0, %363 ]
  %369 = phi i8 [ 0, %359 ], [ 1, %363 ]
  %370 = load ptr, ptr %223, align 8, !tbaa !142
  %371 = getelementptr inbounds %struct.rtl_bb_info, ptr %370, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !172
  %373 = tail call ptr @pc_set(ptr noundef %372) #16
  %374 = load ptr, ptr %245, align 8, !tbaa !142
  %375 = getelementptr inbounds %struct.rtl_bb_info, ptr %374, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !172
  %377 = tail call ptr @pc_set(ptr noundef %376) #16
  %378 = getelementptr inbounds %struct.rtx_def, ptr %373, i64 0, i32 1, i32 0, i32 0, i64 1
  %379 = load ptr, ptr %378, align 8, !tbaa !142
  %380 = getelementptr inbounds %struct.rtx_def, ptr %379, i64 0, i32 1, i32 0, i32 0, i64 1
  %381 = load ptr, ptr %380, align 8, !tbaa !142
  %382 = load ptr, ptr @global_rtl, align 16, !tbaa !131
  %383 = icmp eq ptr %381, %382
  %384 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1, i32 0, i32 0, i64 1
  %385 = load ptr, ptr %384, align 8, !tbaa !142
  %386 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1, i32 0, i32 0, i64 1
  %387 = load ptr, ptr %386, align 8, !tbaa !142
  %388 = icmp ne ptr %387, %382
  %389 = xor i1 %383, %388
  %390 = select i1 %389, i8 %369, i8 %368, !prof !504
  %391 = getelementptr inbounds %struct.rtx_def, ptr %379, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !142
  %393 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !142
  %395 = load i32, ptr %392, align 8
  %396 = and i32 %395, 65535
  %397 = icmp eq i8 %390, 0
  br i1 %397, label %403, label %398, !prof !505

398:                                              ; preds = %367
  %399 = load ptr, ptr %245, align 8, !tbaa !142
  %400 = getelementptr inbounds %struct.rtl_bb_info, ptr %399, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !172
  %402 = tail call i32 @reversed_comparison_code(ptr noundef %394, ptr noundef %401) #16
  br label %406

403:                                              ; preds = %367
  %404 = load i32, ptr %394, align 8
  %405 = and i32 %404, 65535
  br label %406

406:                                              ; preds = %403, %398
  %407 = phi i32 [ %402, %398 ], [ %405, %403 ]
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %860, label %409, !prof !506

409:                                              ; preds = %406
  %410 = icmp eq i32 %396, %407
  br i1 %410, label %411, label %425, !prof !507

411:                                              ; preds = %409
  %412 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !142
  %414 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !142
  %416 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %413, ptr noundef %415) #16
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %425, label %418, !prof !508

418:                                              ; preds = %411
  %419 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1, i32 0, i32 0, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !142
  %421 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 1
  %422 = load ptr, ptr %421, align 8, !tbaa !142
  %423 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %420, ptr noundef %422) #16
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %443, !prof !509

425:                                              ; preds = %418, %411, %409
  %426 = tail call i32 @swap_condition(i32 noundef %407) #16
  %427 = icmp eq i32 %396, %426
  br i1 %427, label %428, label %443, !prof !510

428:                                              ; preds = %425
  %429 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1, i32 0, i32 0, i64 1
  %430 = load ptr, ptr %429, align 8, !tbaa !142
  %431 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !142
  %433 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %430, ptr noundef %432) #16
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %443, label %435, !prof !511

435:                                              ; preds = %428
  %436 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !142
  %438 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 1
  %439 = load ptr, ptr %438, align 8, !tbaa !142
  %440 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %437, ptr noundef %439) #16
  %441 = icmp ne i32 %440, 0
  %442 = zext i1 %441 to i8
  br label %443

443:                                              ; preds = %435, %428, %425, %418
  %444 = phi i8 [ 1, %418 ], [ 0, %428 ], [ 0, %425 ], [ %442, %435 ]
  %445 = icmp ne i8 %444, 0
  br i1 %445, label %446, label %476, !prof !512

446:                                              ; preds = %443
  %447 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %48) #16
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %476, label %449, !prof !513

449:                                              ; preds = %446
  %450 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %75) #16
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %476, label %452, !prof !514

452:                                              ; preds = %449
  %453 = load ptr, ptr %346, align 8, !tbaa !224
  %454 = load ptr, ptr %353, align 8, !tbaa !224
  %455 = icmp eq ptr %453, %454
  %456 = getelementptr inbounds %struct.edge_def, ptr %281, i64 0, i32 8
  %457 = load i32, ptr %456, align 4, !tbaa !366
  br i1 %455, label %460, label %458, !prof !515

458:                                              ; preds = %452
  %459 = sub nsw i32 10000, %457
  br label %460

460:                                              ; preds = %452, %458
  %461 = phi i32 [ %459, %458 ], [ %457, %452 ]
  %462 = getelementptr inbounds %struct.edge_def, ptr %269, i64 0, i32 8
  %463 = load i32, ptr %462, align 4, !tbaa !366
  %464 = sub nsw i32 %463, %461
  %465 = tail call i32 @llvm.abs.i32(i32 %464, i1 true)
  %466 = icmp ult i32 %465, 5001
  br i1 %466, label %476, label %467, !prof !516

467:                                              ; preds = %460
  %468 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %469 = icmp eq ptr %468, null
  br i1 %469, label %860, label %470

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %472 = load i32, ptr %471, align 8, !tbaa !240
  %473 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %474 = load i32, ptr %473, align 8, !tbaa !240
  %475 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %468, ptr noundef nonnull @.str.18, i32 noundef %472, i32 noundef %474, i32 noundef %463, i32 noundef %461)
  br label %860

476:                                              ; preds = %460, %449, %446, %443
  %477 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %478 = icmp ne ptr %477, null
  %479 = and i1 %445, %478
  br i1 %479, label %480, label %860, !prof !506

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %482 = load i32, ptr %481, align 8, !tbaa !240
  %483 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %484 = load i32, ptr %483, align 8, !tbaa !240
  %485 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %477, ptr noundef nonnull @.str.19, i32 noundef %482, i32 noundef %484)
  br label %860

486:                                              ; preds = %229, %222, %219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %487 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %488 = load ptr, ptr %487, align 8, !tbaa !142
  %489 = getelementptr inbounds %struct.rtl_bb_info, ptr %488, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !172
  %491 = call zeroext i8 @tablejump_p(ptr noundef %490, ptr noundef nonnull %4, ptr noundef nonnull %6) #16
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %620, label %493, !prof !517

493:                                              ; preds = %486
  %494 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %495 = load ptr, ptr %494, align 8, !tbaa !142
  %496 = getelementptr inbounds %struct.rtl_bb_info, ptr %495, i64 0, i32 1
  %497 = load ptr, ptr %496, align 8, !tbaa !172
  %498 = call zeroext i8 @tablejump_p(ptr noundef %497, ptr noundef nonnull %5, ptr noundef nonnull %7) #16
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %620, label %500, !prof !518

500:                                              ; preds = %493
  %501 = load ptr, ptr %6, align 8, !tbaa !131
  %502 = getelementptr inbounds %struct.rtx_def, ptr %501, i64 1
  %503 = load ptr, ptr %502, align 8, !tbaa !142
  %504 = load i32, ptr %503, align 8
  %505 = load ptr, ptr %7, align 8, !tbaa !131
  %506 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 1
  %507 = load ptr, ptr %506, align 8, !tbaa !142
  %508 = load i32, ptr %507, align 8
  %509 = xor i32 %508, %504
  %510 = and i32 %509, 65535
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %620

512:                                              ; preds = %500
  %513 = load ptr, ptr %4, align 8, !tbaa !131
  %514 = load ptr, ptr %5, align 8, !tbaa !131
  %515 = icmp eq ptr %513, %514
  br i1 %515, label %619, label %516

516:                                              ; preds = %512
  %517 = load ptr, ptr %487, align 8, !tbaa !142
  %518 = getelementptr inbounds %struct.rtl_bb_info, ptr %517, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !172
  %520 = call i32 @rtx_referenced_p(ptr noundef %514, ptr noundef %519) #16
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %619

522:                                              ; preds = %516
  %523 = load ptr, ptr %6, align 8, !tbaa !131
  %524 = getelementptr inbounds %struct.rtx_def, ptr %523, i64 1
  %525 = load ptr, ptr %524, align 8, !tbaa !142
  %526 = load ptr, ptr %7, align 8, !tbaa !131
  %527 = getelementptr inbounds %struct.rtx_def, ptr %526, i64 1
  %528 = load ptr, ptr %527, align 8, !tbaa !142
  %529 = load i32, ptr %525, align 8
  %530 = and i32 %529, 65535
  %531 = icmp eq i32 %530, 20
  br i1 %531, label %532, label %535

532:                                              ; preds = %522
  %533 = call i32 @rtx_equal_p(ptr noundef nonnull %525, ptr noundef %528) #16
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %583

535:                                              ; preds = %532, %522
  %536 = load i32, ptr %525, align 8
  %537 = and i32 %536, 65535
  %538 = icmp eq i32 %537, 21
  br i1 %538, label %539, label %583

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct.rtx_def, ptr %525, i64 0, i32 1, i32 0, i32 0, i64 1
  %541 = load ptr, ptr %540, align 8, !tbaa !142
  %542 = load i32, ptr %541, align 8, !tbaa !331
  %543 = getelementptr inbounds %struct.rtx_def, ptr %528, i64 0, i32 1, i32 0, i32 0, i64 1
  %544 = load ptr, ptr %543, align 8, !tbaa !142
  %545 = load i32, ptr %544, align 8, !tbaa !331
  %546 = icmp eq i32 %542, %545
  br i1 %546, label %547, label %583

547:                                              ; preds = %539
  %548 = getelementptr inbounds %struct.rtx_def, ptr %525, i64 0, i32 1, i32 0, i32 0, i64 2
  %549 = load ptr, ptr %548, align 8, !tbaa !142
  %550 = getelementptr inbounds %struct.rtx_def, ptr %528, i64 0, i32 1, i32 0, i32 0, i64 2
  %551 = load ptr, ptr %550, align 8, !tbaa !142
  %552 = call i32 @rtx_equal_p(ptr noundef %549, ptr noundef %551) #16
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %583, label %554

554:                                              ; preds = %547
  %555 = getelementptr inbounds %struct.rtx_def, ptr %525, i64 0, i32 1, i32 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !142
  %557 = getelementptr inbounds %struct.rtx_def, ptr %528, i64 0, i32 1, i32 0, i32 1
  %558 = load ptr, ptr %557, align 8, !tbaa !142
  %559 = call i32 @rtx_equal_p(ptr noundef %556, ptr noundef %558) #16
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %583, label %561

561:                                              ; preds = %554
  %562 = load ptr, ptr %540, align 8, !tbaa !142
  %563 = load i32, ptr %562, align 8, !tbaa !331
  %564 = icmp sgt i32 %563, 0
  br i1 %564, label %565, label %583

565:                                              ; preds = %561
  %566 = zext nneg i32 %563 to i64
  br label %567

567:                                              ; preds = %565, %567
  %568 = phi i64 [ %566, %565 ], [ %570, %567 ]
  %569 = phi i8 [ 1, %565 ], [ %579, %567 ]
  %570 = add nsw i64 %568, -1
  %571 = load ptr, ptr %540, align 8, !tbaa !142
  %572 = getelementptr inbounds %struct.rtvec_def, ptr %571, i64 0, i32 1, i64 %570
  %573 = load ptr, ptr %572, align 8, !tbaa !131
  %574 = load ptr, ptr %543, align 8, !tbaa !142
  %575 = getelementptr inbounds %struct.rtvec_def, ptr %574, i64 0, i32 1, i64 %570
  %576 = load ptr, ptr %575, align 8, !tbaa !131
  %577 = call i32 @rtx_equal_p(ptr noundef %573, ptr noundef %576) #16
  %578 = icmp eq i32 %577, 0
  %579 = select i1 %578, i8 0, i8 %569
  %580 = icmp sgt i64 %568, 1
  %581 = icmp ne i8 %579, 0
  %582 = select i1 %580, i1 %581, i1 false
  br i1 %582, label %567, label %583, !llvm.loop !519

583:                                              ; preds = %567, %561, %554, %547, %539, %535, %532
  %584 = phi i8 [ 0, %554 ], [ 0, %547 ], [ 0, %539 ], [ 0, %535 ], [ 1, %532 ], [ 1, %561 ], [ %579, %567 ]
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %617, label %586

586:                                              ; preds = %583
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  %587 = load ptr, ptr %4, align 8, !tbaa !131
  store ptr %587, ptr %8, align 8, !tbaa !520
  %588 = load ptr, ptr %5, align 8, !tbaa !131
  %589 = getelementptr inbounds %struct.replace_label_data, ptr %8, i64 0, i32 1
  store ptr %588, ptr %589, align 8, !tbaa !522
  %590 = getelementptr inbounds %struct.replace_label_data, ptr %8, i64 0, i32 2
  store i8 0, ptr %590, align 8, !tbaa !523
  %591 = load ptr, ptr %487, align 8, !tbaa !142
  %592 = getelementptr inbounds %struct.rtl_bb_info, ptr %591, i64 0, i32 1
  %593 = call i32 @for_each_rtx(ptr noundef nonnull %592, ptr noundef nonnull @replace_label, ptr noundef nonnull %8) #16
  %594 = load ptr, ptr %487, align 8, !tbaa !142
  %595 = getelementptr inbounds %struct.rtl_bb_info, ptr %594, i64 0, i32 1
  %596 = load ptr, ptr %595, align 8, !tbaa !172
  %597 = load ptr, ptr %494, align 8, !tbaa !142
  %598 = getelementptr inbounds %struct.rtl_bb_info, ptr %597, i64 0, i32 1
  %599 = load ptr, ptr %598, align 8, !tbaa !172
  %600 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %596, ptr noundef %599), !range !186
  %601 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %602 = icmp ne ptr %601, null
  %603 = icmp ne i8 %600, 0
  %604 = and i1 %603, %602
  br i1 %604, label %605, label %611

605:                                              ; preds = %586
  %606 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %607 = load i32, ptr %606, align 8, !tbaa !240
  %608 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %609 = load i32, ptr %608, align 8, !tbaa !240
  %610 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %601, ptr noundef nonnull @.str.20, i32 noundef %607, i32 noundef %609)
  br label %611

611:                                              ; preds = %605, %586
  %612 = load ptr, ptr %5, align 8, !tbaa !131
  store ptr %612, ptr %8, align 8, !tbaa !520
  %613 = load ptr, ptr %4, align 8, !tbaa !131
  store ptr %613, ptr %589, align 8, !tbaa !522
  %614 = load ptr, ptr %487, align 8, !tbaa !142
  %615 = getelementptr inbounds %struct.rtl_bb_info, ptr %614, i64 0, i32 1
  %616 = call i32 @for_each_rtx(ptr noundef nonnull %615, ptr noundef nonnull @replace_label, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %617

617:                                              ; preds = %611, %583
  %618 = phi i8 [ %600, %611 ], [ undef, %583 ]
  br i1 %585, label %619, label %620

619:                                              ; preds = %617, %516, %512
  br label %620

620:                                              ; preds = %619, %617, %500, %493, %486
  %621 = phi i1 [ false, %619 ], [ false, %617 ], [ true, %500 ], [ true, %493 ], [ true, %486 ]
  %622 = phi i8 [ 0, %619 ], [ %618, %617 ], [ undef, %500 ], [ undef, %493 ], [ undef, %486 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br i1 %621, label %623, label %860, !prof !524

623:                                              ; preds = %620
  %624 = load ptr, ptr %487, align 8, !tbaa !142
  %625 = getelementptr inbounds %struct.rtl_bb_info, ptr %624, i64 0, i32 1
  %626 = load ptr, ptr %625, align 8, !tbaa !172
  %627 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %628 = load ptr, ptr %627, align 8, !tbaa !142
  %629 = getelementptr inbounds %struct.rtl_bb_info, ptr %628, i64 0, i32 1
  %630 = load ptr, ptr %629, align 8, !tbaa !172
  %631 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %626, ptr noundef %630), !range !186
  %632 = icmp eq i8 %631, 0
  br i1 %632, label %860, label %633, !prof !525

633:                                              ; preds = %623
  %634 = load ptr, ptr %153, align 8, !tbaa !217
  %635 = icmp eq ptr %634, null
  br i1 %635, label %638, label %636, !prof !526

636:                                              ; preds = %633
  %637 = load i32, ptr %634, align 8, !tbaa !214
  br label %638

638:                                              ; preds = %636, %633
  %639 = phi i32 [ %637, %636 ], [ 0, %633 ]
  %640 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 1
  %641 = load ptr, ptr %640, align 8, !tbaa !217
  %642 = icmp eq ptr %641, null
  br i1 %642, label %645, label %643, !prof !526

643:                                              ; preds = %638
  %644 = load i32, ptr %641, align 8, !tbaa !214
  br label %645

645:                                              ; preds = %643, %638
  %646 = phi i32 [ %644, %643 ], [ 0, %638 ]
  %647 = icmp eq i32 %639, %646
  br i1 %647, label %648, label %860, !prof !527

648:                                              ; preds = %645, %694
  %649 = phi i32 [ %695, %694 ], [ 0, %645 ]
  %650 = phi ptr [ %687, %694 ], [ null, %645 ]
  %651 = phi ptr [ %684, %694 ], [ null, %645 ]
  %652 = phi i32 [ %681, %694 ], [ 0, %645 ]
  %653 = phi i32 [ %676, %694 ], [ 0, %645 ]
  %654 = load ptr, ptr %153, align 8, !tbaa !131
  %655 = icmp eq ptr %654, null
  br i1 %655, label %658, label %656, !prof !528

656:                                              ; preds = %648
  %657 = load i32, ptr %654, align 8, !tbaa !214
  br label %658

658:                                              ; preds = %656, %648
  %659 = phi i32 [ %657, %656 ], [ 0, %648 ]
  %660 = icmp eq i32 %659, %649
  br i1 %660, label %665, label %661, !prof !529

661:                                              ; preds = %658
  %662 = zext i32 %649 to i64
  %663 = getelementptr inbounds %struct.VEC_edge_base, ptr %654, i64 0, i32 2, i64 %662
  %664 = load ptr, ptr %663, align 8, !tbaa !131
  br label %665

665:                                              ; preds = %661, %658
  %666 = phi ptr [ %664, %661 ], [ null, %658 ]
  br i1 %660, label %696, label %667, !prof !529

667:                                              ; preds = %665
  %668 = load ptr, ptr %640, align 8, !tbaa !217
  %669 = zext i32 %649 to i64
  %670 = getelementptr inbounds %struct.VEC_edge_base, ptr %668, i64 0, i32 2, i64 %669
  %671 = load ptr, ptr %670, align 8, !tbaa !131
  %672 = getelementptr inbounds %struct.edge_def, ptr %666, i64 0, i32 7
  %673 = load i32, ptr %672, align 8, !tbaa !232
  %674 = lshr i32 %673, 3
  %675 = and i32 %674, 1
  %676 = add i32 %675, %653
  %677 = getelementptr inbounds %struct.edge_def, ptr %671, i64 0, i32 7
  %678 = load i32, ptr %677, align 8, !tbaa !232
  %679 = lshr i32 %678, 3
  %680 = and i32 %679, 1
  %681 = add i32 %680, %652
  %682 = and i32 %673, 1
  %683 = icmp eq i32 %682, 0
  %684 = select i1 %683, ptr %651, ptr %666, !prof !527
  %685 = and i32 %678, 1
  %686 = icmp eq i32 %685, 0
  %687 = select i1 %686, ptr %650, ptr %671, !prof !527
  br i1 %655, label %690, label %688, !prof !526

688:                                              ; preds = %667
  %689 = load i32, ptr %654, align 8, !tbaa !214
  br label %690

690:                                              ; preds = %688, %667
  %691 = phi i32 [ %689, %688 ], [ 0, %667 ]
  %692 = icmp ult i32 %649, %691
  br i1 %692, label %694, label %693, !prof !527

693:                                              ; preds = %690
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %694

694:                                              ; preds = %693, %690
  %695 = add i32 %649, 1
  br label %648, !llvm.loop !530

696:                                              ; preds = %665
  %697 = icmp eq i32 %653, %652
  br i1 %697, label %698, label %860, !prof !527

698:                                              ; preds = %696
  %699 = icmp ne ptr %651, null
  %700 = icmp eq ptr %650, null
  %701 = xor i1 %700, %699
  br i1 %701, label %702, label %860, !prof !527

702:                                              ; preds = %698
  br i1 %699, label %703, label %748, !prof !526

703:                                              ; preds = %702
  %704 = getelementptr inbounds %struct.edge_def, ptr %651, i64 0, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !224
  %706 = call zeroext i8 @forwarder_block_p(ptr noundef %705) #16
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %722, label %708

708:                                              ; preds = %703
  %709 = load ptr, ptr %704, align 8, !tbaa !224
  %710 = getelementptr inbounds %struct.basic_block_def, ptr %709, i64 0, i32 1
  %711 = load ptr, ptr %710, align 8, !tbaa !217
  %712 = icmp eq ptr %711, null
  br i1 %712, label %716, label %713

713:                                              ; preds = %708
  %714 = load i32, ptr %711, align 8, !tbaa !214
  %715 = icmp eq i32 %714, 1
  br i1 %715, label %717, label %716

716:                                              ; preds = %713, %708
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %717

717:                                              ; preds = %716, %713
  %718 = load ptr, ptr %710, align 8, !tbaa !217
  %719 = getelementptr inbounds %struct.VEC_edge_base, ptr %718, i64 0, i32 2, i64 0
  %720 = load ptr, ptr %719, align 8, !tbaa !131
  %721 = getelementptr inbounds %struct.edge_def, ptr %720, i64 0, i32 1
  br label %722

722:                                              ; preds = %703, %717
  %723 = phi ptr [ %721, %717 ], [ %704, %703 ]
  %724 = load ptr, ptr %723, align 8, !tbaa !224
  %725 = getelementptr inbounds %struct.edge_def, ptr %650, i64 0, i32 1
  %726 = load ptr, ptr %725, align 8, !tbaa !224
  %727 = call zeroext i8 @forwarder_block_p(ptr noundef %726) #16
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %743, label %729

729:                                              ; preds = %722
  %730 = load ptr, ptr %725, align 8, !tbaa !224
  %731 = getelementptr inbounds %struct.basic_block_def, ptr %730, i64 0, i32 1
  %732 = load ptr, ptr %731, align 8, !tbaa !217
  %733 = icmp eq ptr %732, null
  br i1 %733, label %737, label %734

734:                                              ; preds = %729
  %735 = load i32, ptr %732, align 8, !tbaa !214
  %736 = icmp eq i32 %735, 1
  br i1 %736, label %738, label %737

737:                                              ; preds = %734, %729
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %738

738:                                              ; preds = %737, %734
  %739 = load ptr, ptr %731, align 8, !tbaa !217
  %740 = getelementptr inbounds %struct.VEC_edge_base, ptr %739, i64 0, i32 2, i64 0
  %741 = load ptr, ptr %740, align 8, !tbaa !131
  %742 = getelementptr inbounds %struct.edge_def, ptr %741, i64 0, i32 1
  br label %743

743:                                              ; preds = %722, %738
  %744 = phi ptr [ %742, %738 ], [ %725, %722 ]
  %745 = load ptr, ptr %744, align 8, !tbaa !224
  %746 = icmp eq ptr %724, %745
  %747 = select i1 %746, i8 %622, i8 0
  br i1 %746, label %748, label %860

748:                                              ; preds = %743, %702
  %749 = phi i8 [ %622, %702 ], [ %747, %743 ]
  %750 = load ptr, ptr %487, align 8, !tbaa !142
  %751 = getelementptr inbounds %struct.rtl_bb_info, ptr %750, i64 0, i32 1
  %752 = load ptr, ptr %751, align 8, !tbaa !172
  %753 = call ptr @find_reg_note(ptr noundef %752, i32 noundef 25, ptr noundef null) #16
  %754 = load ptr, ptr %627, align 8, !tbaa !142
  %755 = getelementptr inbounds %struct.rtl_bb_info, ptr %754, i64 0, i32 1
  %756 = load ptr, ptr %755, align 8, !tbaa !172
  %757 = call ptr @find_reg_note(ptr noundef %756, i32 noundef 25, ptr noundef null) #16
  %758 = icmp eq ptr %753, null
  %759 = icmp ne ptr %757, null
  %760 = select i1 %758, i1 %759, i1 false, !prof !527
  br i1 %760, label %770, label %761, !prof !526

761:                                              ; preds = %748
  br i1 %758, label %769, label %762, !prof !527

762:                                              ; preds = %761
  br i1 %759, label %763, label %770

763:                                              ; preds = %762
  %764 = getelementptr inbounds %struct.rtx_def, ptr %753, i64 0, i32 1
  %765 = load ptr, ptr %764, align 8, !tbaa !142
  %766 = getelementptr inbounds %struct.rtx_def, ptr %757, i64 0, i32 1
  %767 = load ptr, ptr %766, align 8, !tbaa !142
  %768 = icmp eq ptr %765, %767
  br i1 %768, label %769, label %770

769:                                              ; preds = %763, %761
  br label %770

770:                                              ; preds = %769, %763, %762, %748
  %771 = phi i1 [ true, %769 ], [ false, %748 ], [ false, %763 ], [ false, %762 ]
  %772 = phi i8 [ %749, %769 ], [ 0, %748 ], [ 0, %763 ], [ 0, %762 ]
  br i1 %771, label %773, label %860, !prof !527

773:                                              ; preds = %770, %858
  %774 = phi i32 [ %859, %858 ], [ 0, %770 ]
  %775 = phi i8 [ %848, %858 ], [ %772, %770 ]
  %776 = load ptr, ptr %640, align 8, !tbaa !131
  %777 = icmp eq ptr %776, null
  br i1 %777, label %780, label %778, !prof !528

778:                                              ; preds = %773
  %779 = load i32, ptr %776, align 8, !tbaa !214
  br label %780

780:                                              ; preds = %778, %773
  %781 = phi i32 [ %779, %778 ], [ 0, %773 ]
  %782 = icmp eq i32 %781, %774
  br i1 %782, label %787, label %783, !prof !529

783:                                              ; preds = %780
  %784 = zext i32 %774 to i64
  %785 = getelementptr inbounds %struct.VEC_edge_base, ptr %776, i64 0, i32 2, i64 %784
  %786 = load ptr, ptr %785, align 8, !tbaa !131
  br label %787

787:                                              ; preds = %783, %780
  %788 = phi ptr [ %786, %783 ], [ null, %780 ]
  br i1 %782, label %860, label %789, !prof !529

789:                                              ; preds = %787
  %790 = getelementptr inbounds %struct.edge_def, ptr %788, i64 0, i32 1
  %791 = load ptr, ptr %790, align 8, !tbaa !224
  %792 = getelementptr inbounds %struct.basic_block_def, ptr %791, i64 0, i32 13
  %793 = load i32, ptr %792, align 8, !tbaa !159
  %794 = and i32 %793, 1024
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %803, label %796, !prof !527

796:                                              ; preds = %789
  %797 = getelementptr inbounds %struct.basic_block_def, ptr %791, i64 0, i32 1
  %798 = load ptr, ptr %797, align 8, !tbaa !217
  %799 = getelementptr inbounds %struct.VEC_edge_base, ptr %798, i64 0, i32 2, i64 0
  %800 = load ptr, ptr %799, align 8, !tbaa !131
  %801 = getelementptr inbounds %struct.edge_def, ptr %800, i64 0, i32 1
  %802 = load ptr, ptr %801, align 8, !tbaa !224
  br label %803

803:                                              ; preds = %796, %789
  %804 = phi ptr [ %802, %796 ], [ %791, %789 ]
  br label %805

805:                                              ; preds = %844, %803
  %806 = phi i32 [ 0, %803 ], [ %845, %844 ]
  %807 = load ptr, ptr %153, align 8, !tbaa !131
  %808 = icmp eq ptr %807, null
  br i1 %808, label %811, label %809, !prof !526

809:                                              ; preds = %805
  %810 = load i32, ptr %807, align 8, !tbaa !214
  br label %811

811:                                              ; preds = %809, %805
  %812 = phi i32 [ %810, %809 ], [ 0, %805 ]
  %813 = icmp eq i32 %812, %806
  br i1 %813, label %818, label %814, !prof !526

814:                                              ; preds = %811
  %815 = zext i32 %806 to i64
  %816 = getelementptr inbounds %struct.VEC_edge_base, ptr %807, i64 0, i32 2, i64 %815
  %817 = load ptr, ptr %816, align 8, !tbaa !131
  br label %818

818:                                              ; preds = %814, %811
  %819 = phi ptr [ %817, %814 ], [ null, %811 ]
  br i1 %813, label %846, label %820, !prof !526

820:                                              ; preds = %818
  %821 = getelementptr inbounds %struct.edge_def, ptr %819, i64 0, i32 1
  %822 = load ptr, ptr %821, align 8, !tbaa !224
  %823 = getelementptr inbounds %struct.basic_block_def, ptr %822, i64 0, i32 13
  %824 = load i32, ptr %823, align 8, !tbaa !159
  %825 = and i32 %824, 1024
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %834, label %827, !prof !527

827:                                              ; preds = %820
  %828 = getelementptr inbounds %struct.basic_block_def, ptr %822, i64 0, i32 1
  %829 = load ptr, ptr %828, align 8, !tbaa !217
  %830 = getelementptr inbounds %struct.VEC_edge_base, ptr %829, i64 0, i32 2, i64 0
  %831 = load ptr, ptr %830, align 8, !tbaa !131
  %832 = getelementptr inbounds %struct.edge_def, ptr %831, i64 0, i32 1
  %833 = load ptr, ptr %832, align 8, !tbaa !224
  br label %834

834:                                              ; preds = %827, %820
  %835 = phi ptr [ %833, %827 ], [ %822, %820 ]
  %836 = icmp eq ptr %804, %835
  br i1 %836, label %846, label %837, !prof !527

837:                                              ; preds = %834
  br i1 %808, label %840, label %838

838:                                              ; preds = %837
  %839 = load i32, ptr %807, align 8, !tbaa !214
  br label %840

840:                                              ; preds = %838, %837
  %841 = phi i32 [ %839, %838 ], [ 0, %837 ]
  %842 = icmp ult i32 %806, %841
  br i1 %842, label %844, label %843

843:                                              ; preds = %840
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %844

844:                                              ; preds = %843, %840
  %845 = add i32 %806, 1
  br label %805, !llvm.loop !531

846:                                              ; preds = %834, %818
  %847 = icmp eq ptr %819, null
  %848 = select i1 %847, i8 0, i8 %775, !prof !526
  br i1 %847, label %860, label %849, !prof !526

849:                                              ; preds = %846
  %850 = load ptr, ptr %640, align 8, !tbaa !131
  %851 = icmp eq ptr %850, null
  br i1 %851, label %854, label %852, !prof !526

852:                                              ; preds = %849
  %853 = load i32, ptr %850, align 8, !tbaa !214
  br label %854

854:                                              ; preds = %852, %849
  %855 = phi i32 [ %853, %852 ], [ 0, %849 ]
  %856 = icmp ult i32 %774, %855
  br i1 %856, label %858, label %857, !prof !527

857:                                              ; preds = %854
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %858

858:                                              ; preds = %857, %854
  %859 = add i32 %774, 1
  br label %773, !llvm.loop !532

860:                                              ; preds = %787, %846, %187, %191, %194, %202, %210, %241, %244, %251, %330, %338, %345, %352, %363, %406, %467, %470, %476, %480, %620, %623, %645, %696, %698, %743, %770
  %861 = phi i8 [ %772, %770 ], [ %747, %743 ], [ %622, %620 ], [ 0, %194 ], [ 0, %191 ], [ 1, %202 ], [ %213, %210 ], [ 0, %251 ], [ 0, %244 ], [ 0, %241 ], [ 0, %352 ], [ 0, %345 ], [ 0, %338 ], [ 0, %330 ], [ 0, %363 ], [ 0, %406 ], [ 1, %480 ], [ %444, %476 ], [ 0, %623 ], [ 0, %645 ], [ 0, %698 ], [ 0, %696 ], [ 0, %467 ], [ 0, %470 ], [ 0, %187 ], [ %848, %846 ], [ 1, %787 ]
  %862 = icmp eq i8 %861, 0
  br i1 %862, label %1511, label %863, !prof !533

863:                                              ; preds = %860
  %864 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %865 = load ptr, ptr %864, align 8, !tbaa !142
  %866 = getelementptr inbounds %struct.rtl_bb_info, ptr %865, i64 0, i32 1
  %867 = load ptr, ptr %866, align 8, !tbaa !172
  %868 = call i32 @onlyjump_p(ptr noundef %867) #16
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %878, !prof !534

870:                                              ; preds = %863
  %871 = call i32 @returnjump_p(ptr noundef %867) #16
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %881, label %873, !prof !527

873:                                              ; preds = %870
  %874 = getelementptr inbounds %struct.rtx_def, ptr %867, i64 1
  %875 = load ptr, ptr %874, align 8, !tbaa !142
  %876 = call i32 @side_effects_p(ptr noundef %875) #16
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %881

878:                                              ; preds = %873, %863
  %879 = getelementptr inbounds %struct.rtx_def, ptr %867, i64 0, i32 1, i32 0, i32 0, i64 1
  %880 = load ptr, ptr %879, align 8, !tbaa !142
  br label %881

881:                                              ; preds = %878, %873, %870
  %882 = phi ptr [ %867, %878 ], [ null, %873 ], [ null, %870 ]
  %883 = phi ptr [ %880, %878 ], [ %867, %873 ], [ %867, %870 ]
  %884 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %885 = load ptr, ptr %884, align 8, !tbaa !142
  %886 = getelementptr inbounds %struct.rtl_bb_info, ptr %885, i64 0, i32 1
  %887 = load ptr, ptr %886, align 8, !tbaa !172
  %888 = call i32 @onlyjump_p(ptr noundef %887) #16
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %898, !prof !535

890:                                              ; preds = %881
  %891 = call i32 @returnjump_p(ptr noundef %887) #16
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %915, label %893, !prof !536

893:                                              ; preds = %890
  %894 = getelementptr inbounds %struct.rtx_def, ptr %887, i64 1
  %895 = load ptr, ptr %894, align 8, !tbaa !142
  %896 = call i32 @side_effects_p(ptr noundef %895) #16
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %915

898:                                              ; preds = %893, %881
  %899 = call i32 @simplejump_p(ptr noundef %887) #16
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %901, label %907, !prof !537

901:                                              ; preds = %898
  %902 = call i32 @returnjump_p(ptr noundef %887) #16
  %903 = icmp eq i32 %902, 0
  %904 = icmp ne ptr %882, null
  %905 = and i1 %904, %903
  %906 = zext i1 %905 to i32
  br label %907

907:                                              ; preds = %898, %901, %997
  %908 = phi ptr [ %958, %997 ], [ %887, %901 ], [ %887, %898 ]
  %909 = phi ptr [ %998, %997 ], [ %882, %901 ], [ %882, %898 ]
  %910 = phi ptr [ %999, %997 ], [ %887, %901 ], [ %887, %898 ]
  %911 = phi i32 [ %1000, %997 ], [ %906, %901 ], [ 0, %898 ]
  %912 = phi ptr [ %1002, %997 ], [ %883, %901 ], [ %883, %898 ]
  %913 = getelementptr inbounds %struct.rtx_def, ptr %908, i64 0, i32 1, i32 0, i32 0, i64 1
  %914 = load ptr, ptr %913, align 8, !tbaa !142
  br label %915

915:                                              ; preds = %907, %890, %893
  %916 = phi ptr [ %882, %893 ], [ %882, %890 ], [ %909, %907 ]
  %917 = phi ptr [ null, %893 ], [ null, %890 ], [ %910, %907 ]
  %918 = phi i32 [ 0, %893 ], [ 0, %890 ], [ %911, %907 ]
  %919 = phi ptr [ %887, %893 ], [ %887, %890 ], [ %914, %907 ]
  %920 = phi ptr [ %883, %893 ], [ %883, %890 ], [ %912, %907 ]
  %921 = load i32, ptr %920, align 8
  %922 = and i32 %921, 65535
  %923 = add nsw i32 %922, -11
  %924 = icmp ult i32 %923, -3
  br i1 %924, label %925, label %938, !prof !538

925:                                              ; preds = %915
  %926 = load ptr, ptr %864, align 8, !tbaa !142
  %927 = load ptr, ptr %926, align 8, !tbaa !220
  br label %928

928:                                              ; preds = %925, %931
  %929 = phi ptr [ %920, %925 ], [ %933, %931 ]
  %930 = icmp eq ptr %929, %927
  br i1 %930, label %938, label %931, !prof !539

931:                                              ; preds = %928
  %932 = getelementptr inbounds %struct.rtx_def, ptr %929, i64 0, i32 1, i32 0, i32 0, i64 1
  %933 = load ptr, ptr %932, align 8, !tbaa !142
  %934 = load i32, ptr %933, align 8
  %935 = and i32 %934, 65535
  %936 = add nsw i32 %935, -11
  %937 = icmp ult i32 %936, -3
  br i1 %937, label %928, label %938, !prof !540, !llvm.loop !541

938:                                              ; preds = %931, %928, %915
  %939 = phi ptr [ %920, %915 ], [ %933, %931 ], [ %929, %928 ]
  %940 = load i32, ptr %919, align 8
  %941 = and i32 %940, 65535
  %942 = add nsw i32 %941, -11
  %943 = icmp ult i32 %942, -3
  br i1 %943, label %944, label %957, !prof !542

944:                                              ; preds = %938
  %945 = load ptr, ptr %884, align 8, !tbaa !142
  %946 = load ptr, ptr %945, align 8, !tbaa !220
  br label %947

947:                                              ; preds = %944, %950
  %948 = phi ptr [ %919, %944 ], [ %952, %950 ]
  %949 = icmp eq ptr %948, %946
  br i1 %949, label %957, label %950, !prof !543

950:                                              ; preds = %947
  %951 = getelementptr inbounds %struct.rtx_def, ptr %948, i64 0, i32 1, i32 0, i32 0, i64 1
  %952 = load ptr, ptr %951, align 8, !tbaa !142
  %953 = load i32, ptr %952, align 8
  %954 = and i32 %953, 65535
  %955 = add nsw i32 %954, -11
  %956 = icmp ult i32 %955, -3
  br i1 %956, label %947, label %957, !prof !544, !llvm.loop !545

957:                                              ; preds = %950, %947, %938
  %958 = phi ptr [ %919, %938 ], [ %952, %950 ], [ %948, %947 ]
  %959 = load ptr, ptr %864, align 8, !tbaa !142
  %960 = load ptr, ptr %959, align 8, !tbaa !220
  %961 = icmp eq ptr %939, %960
  br i1 %961, label %1003, label %962, !prof !546

962:                                              ; preds = %957
  %963 = load ptr, ptr %884, align 8, !tbaa !142
  %964 = load ptr, ptr %963, align 8, !tbaa !220
  %965 = icmp eq ptr %958, %964
  br i1 %965, label %1003, label %966, !prof !547

966:                                              ; preds = %962
  %967 = call fastcc zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef nonnull %939, ptr noundef nonnull %958), !range !186
  %968 = icmp eq i8 %967, 0
  br i1 %968, label %1003, label %969, !prof !548

969:                                              ; preds = %966
  call fastcc void @merge_memattrs(ptr noundef nonnull %939, ptr noundef nonnull %958)
  %970 = load i32, ptr %939, align 8
  %971 = and i32 %970, 65535
  %972 = add nsw i32 %971, -7
  %973 = icmp ult i32 %972, 4
  br i1 %973, label %974, label %997, !prof !549

974:                                              ; preds = %969
  %975 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %939) #16
  %976 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %958) #16
  %977 = icmp eq ptr %975, null
  %978 = icmp ne ptr %976, null
  %979 = select i1 %977, i1 true, i1 %978, !prof !550
  br i1 %979, label %981, label %980, !prof !551

980:                                              ; preds = %974
  call void @remove_note(ptr noundef nonnull %939, ptr noundef %975) #16
  br label %995

981:                                              ; preds = %974
  %982 = select i1 %977, i1 %978, i1 false, !prof !552
  br i1 %982, label %983, label %984, !prof !553

983:                                              ; preds = %981
  call void @remove_note(ptr noundef nonnull %958, ptr noundef nonnull %976) #16
  br label %995

984:                                              ; preds = %981
  %985 = icmp ne ptr %975, null
  %986 = select i1 %985, i1 %978, i1 false, !prof !554
  br i1 %986, label %987, label %995, !prof !554

987:                                              ; preds = %984
  %988 = getelementptr inbounds %struct.rtx_def, ptr %975, i64 0, i32 1
  %989 = load ptr, ptr %988, align 8, !tbaa !142
  %990 = getelementptr inbounds %struct.rtx_def, ptr %976, i64 0, i32 1
  %991 = load ptr, ptr %990, align 8, !tbaa !142
  %992 = call i32 @rtx_equal_p(ptr noundef %989, ptr noundef %991) #16
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %995, !prof !555

994:                                              ; preds = %987
  call void @remove_note(ptr noundef nonnull %939, ptr noundef nonnull %975) #16
  call void @remove_note(ptr noundef nonnull %958, ptr noundef nonnull %976) #16
  br label %995

995:                                              ; preds = %994, %987, %984, %983, %980
  %996 = add nsw i32 %918, 1
  br label %997

997:                                              ; preds = %995, %969
  %998 = phi ptr [ %939, %995 ], [ %916, %969 ]
  %999 = phi ptr [ %958, %995 ], [ %917, %969 ]
  %1000 = phi i32 [ %996, %995 ], [ %918, %969 ]
  %1001 = getelementptr inbounds %struct.rtx_def, ptr %939, i64 0, i32 1, i32 0, i32 0, i64 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !142
  br label %907, !llvm.loop !556

1003:                                             ; preds = %966, %962, %957
  %1004 = icmp eq i32 %918, 0
  br i1 %1004, label %1048, label %1005, !prof !557

1005:                                             ; preds = %1003
  %1006 = load ptr, ptr %864, align 8, !tbaa !142
  %1007 = load ptr, ptr %1006, align 8, !tbaa !220
  br label %1008

1008:                                             ; preds = %1005, %1011
  %1009 = phi ptr [ %1013, %1011 ], [ %916, %1005 ]
  %1010 = icmp eq ptr %1009, %1007
  br i1 %1010, label %1026, label %1011, !prof !558

1011:                                             ; preds = %1008
  %1012 = getelementptr inbounds %struct.rtx_def, ptr %1009, i64 0, i32 1, i32 0, i32 0, i64 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !142
  %1014 = load i32, ptr %1013, align 8
  %1015 = and i32 %1014, 65535
  %1016 = add nsw i32 %1015, -8
  %1017 = icmp ult i32 %1016, 3
  br i1 %1017, label %1018, label %1008, !prof !559, !llvm.loop !560

1018:                                             ; preds = %1011
  br i1 %1010, label %1026, label %1019, !prof !561

1019:                                             ; preds = %1018
  %1020 = getelementptr inbounds %struct.rtx_def, ptr %1009, i64 0, i32 1, i32 0, i32 0, i64 1
  %1021 = load ptr, ptr %1020, align 8, !tbaa !142
  %1022 = load i32, ptr %1021, align 8
  %1023 = and i32 %1022, 65535
  %1024 = icmp eq i32 %1023, 12
  %1025 = select i1 %1024, ptr %1021, ptr %1009, !prof !562
  br label %1026

1026:                                             ; preds = %1008, %1019, %1018
  %1027 = phi ptr [ %1009, %1018 ], [ %1025, %1019 ], [ %1009, %1008 ]
  %1028 = load ptr, ptr %884, align 8, !tbaa !142
  %1029 = load ptr, ptr %1028, align 8, !tbaa !220
  br label %1030

1030:                                             ; preds = %1033, %1026
  %1031 = phi ptr [ %917, %1026 ], [ %1035, %1033 ]
  %1032 = icmp eq ptr %1031, %1029
  br i1 %1032, label %1048, label %1033, !prof !563

1033:                                             ; preds = %1030
  %1034 = getelementptr inbounds %struct.rtx_def, ptr %1031, i64 0, i32 1, i32 0, i32 0, i64 1
  %1035 = load ptr, ptr %1034, align 8, !tbaa !142
  %1036 = load i32, ptr %1035, align 8
  %1037 = and i32 %1036, 65535
  %1038 = add nsw i32 %1037, -8
  %1039 = icmp ult i32 %1038, 3
  br i1 %1039, label %1040, label %1030, !prof !564, !llvm.loop !565

1040:                                             ; preds = %1033
  br i1 %1032, label %1048, label %1041, !prof !566

1041:                                             ; preds = %1040
  %1042 = getelementptr inbounds %struct.rtx_def, ptr %1031, i64 0, i32 1, i32 0, i32 0, i64 1
  %1043 = load ptr, ptr %1042, align 8, !tbaa !142
  %1044 = load i32, ptr %1043, align 8
  %1045 = and i32 %1044, 65535
  %1046 = icmp eq i32 %1045, 12
  %1047 = select i1 %1046, ptr %1043, ptr %1031, !prof !567
  br label %1048

1048:                                             ; preds = %1030, %1040, %1041, %1003
  %1049 = phi ptr [ null, %1003 ], [ %1031, %1040 ], [ %1047, %1041 ], [ %1031, %1030 ]
  %1050 = phi ptr [ null, %1003 ], [ %1027, %1040 ], [ %1027, %1041 ], [ %1027, %1030 ]
  %1051 = load ptr, ptr @compiler_params, align 8, !tbaa !131
  %1052 = getelementptr inbounds %struct.param_info, ptr %1051, i64 54, i32 1
  %1053 = load i32, ptr %1052, align 8, !tbaa !393
  %1054 = icmp slt i32 %918, %1053
  br i1 %1054, label %1055, label %1059, !prof !568

1055:                                             ; preds = %1048
  %1056 = load ptr, ptr %864, align 8, !tbaa !142
  %1057 = load ptr, ptr %1056, align 8, !tbaa !220
  %1058 = icmp eq ptr %1050, %1057
  br i1 %1058, label %1059, label %1511, !prof !569

1059:                                             ; preds = %1055, %1048
  %1060 = load ptr, ptr %87, align 8, !tbaa !224
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1071, label %1062, !prof !570

1062:                                             ; preds = %1059
  %1063 = call ptr @block_label(ptr noundef nonnull %1060) #16
  %1064 = icmp eq ptr %1063, null
  br i1 %1064, label %1071, label %1065, !prof !571

1065:                                             ; preds = %1062
  %1066 = call ptr @block_label(ptr noundef nonnull %1060) #16
  %1067 = load i32, ptr %1066, align 8
  %1068 = lshr i32 %1067, 28
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  br label %1071

1071:                                             ; preds = %1059, %1062, %1065
  %1072 = phi i8 [ 0, %1062 ], [ 0, %1059 ], [ %1070, %1065 ]
  %1073 = icmp eq i8 %1072, 0
  br i1 %1073, label %1079, label %1074, !prof !572

1074:                                             ; preds = %1071
  %1075 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 7
  %1076 = load i32, ptr %1075, align 8, !tbaa !232
  %1077 = and i32 %1076, 2
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1079, label %1511

1079:                                             ; preds = %1074, %1071
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %1080 = load ptr, ptr %864, align 8, !tbaa !142
  %1081 = getelementptr inbounds %struct.rtl_bb_info, ptr %1080, i64 0, i32 1
  %1082 = load ptr, ptr %1081, align 8, !tbaa !172
  %1083 = call zeroext i8 @tablejump_p(ptr noundef %1082, ptr noundef nonnull %9, ptr noundef nonnull %11) #16
  %1084 = icmp eq i8 %1083, 0
  br i1 %1084, label %1114, label %1085, !prof !572

1085:                                             ; preds = %1079
  %1086 = load ptr, ptr %884, align 8, !tbaa !142
  %1087 = getelementptr inbounds %struct.rtl_bb_info, ptr %1086, i64 0, i32 1
  %1088 = load ptr, ptr %1087, align 8, !tbaa !172
  %1089 = call zeroext i8 @tablejump_p(ptr noundef %1088, ptr noundef nonnull %10, ptr noundef nonnull %12) #16
  %1090 = icmp eq i8 %1089, 0
  br i1 %1090, label %1114, label %1091

1091:                                             ; preds = %1085
  %1092 = load ptr, ptr %9, align 8, !tbaa !131
  %1093 = load ptr, ptr %10, align 8, !tbaa !131
  %1094 = icmp eq ptr %1092, %1093
  br i1 %1094, label %1114, label %1095

1095:                                             ; preds = %1091
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  store ptr %1092, ptr %13, align 8, !tbaa !520
  %1096 = getelementptr inbounds %struct.replace_label_data, ptr %13, i64 0, i32 1
  store ptr %1093, ptr %1096, align 8, !tbaa !522
  %1097 = getelementptr inbounds %struct.replace_label_data, ptr %13, i64 0, i32 2
  store i8 1, ptr %1097, align 8, !tbaa !523
  %1098 = call ptr @get_insns() #16
  store ptr %1098, ptr %14, align 8, !tbaa !131
  %1099 = icmp eq ptr %1098, null
  br i1 %1099, label %1113, label %1100

1100:                                             ; preds = %1095, %1108
  %1101 = phi ptr [ %1111, %1108 ], [ %1098, %1095 ]
  %1102 = load ptr, ptr %864, align 8, !tbaa !142
  %1103 = getelementptr inbounds %struct.rtl_bb_info, ptr %1102, i64 0, i32 1
  %1104 = load ptr, ptr %1103, align 8, !tbaa !172
  %1105 = icmp eq ptr %1101, %1104
  br i1 %1105, label %1108, label %1106

1106:                                             ; preds = %1100
  %1107 = call i32 @for_each_rtx(ptr noundef nonnull %14, ptr noundef nonnull @replace_label, ptr noundef nonnull %13) #16
  br label %1108

1108:                                             ; preds = %1100, %1106
  %1109 = load ptr, ptr %14, align 8, !tbaa !131
  %1110 = getelementptr inbounds %struct.rtx_def, ptr %1109, i64 0, i32 1, i32 0, i32 0, i64 2
  %1111 = load ptr, ptr %1110, align 8, !tbaa !142
  store ptr %1111, ptr %14, align 8, !tbaa !131
  %1112 = icmp eq ptr %1111, null
  br i1 %1112, label %1113, label %1100, !llvm.loop !573

1113:                                             ; preds = %1108, %1095
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #16
  br label %1114

1114:                                             ; preds = %1113, %1091, %1085, %1079
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  %1115 = load ptr, ptr %884, align 8, !tbaa !142
  %1116 = load ptr, ptr %1115, align 8, !tbaa !220
  %1117 = icmp eq ptr %1049, %1116
  br i1 %1117, label %1118, label %1154, !prof !574

1118:                                             ; preds = %1114
  %1119 = load ptr, ptr %75, align 8, !tbaa !212
  %1120 = getelementptr inbounds %struct.VEC_edge_base, ptr %1119, i64 0, i32 2, i64 0
  %1121 = load ptr, ptr %1120, align 8, !tbaa !131
  %1122 = getelementptr inbounds %struct.edge_def, ptr %1121, i64 0, i32 7
  %1123 = load i32, ptr %1122, align 8, !tbaa !232
  %1124 = and i32 %1123, 8
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1168, label %1126, !prof !575

1126:                                             ; preds = %1118
  br i1 %1117, label %1127, label %1154, !prof !576

1127:                                             ; preds = %1126
  %1128 = load i32, ptr %1049, align 8
  %1129 = and i32 %1128, 65535
  %1130 = icmp eq i32 %1129, 12
  br i1 %1130, label %1131, label %1135

1131:                                             ; preds = %1127, %1135
  %1132 = phi ptr [ %1136, %1135 ], [ %1049, %1127 ]
  %1133 = getelementptr inbounds %struct.rtx_def, ptr %1132, i64 0, i32 1, i32 0, i32 0, i64 2
  %1134 = load ptr, ptr %1133, align 8, !tbaa !142
  br label %1135

1135:                                             ; preds = %1131, %1127
  %1136 = phi ptr [ %1049, %1127 ], [ %1134, %1131 ]
  %1137 = load i32, ptr %1136, align 8
  %1138 = trunc i32 %1137 to i16
  switch i16 %1138, label %1142 [
    i16 7, label %1131
    i16 13, label %1139
  ], !llvm.loop !577

1139:                                             ; preds = %1135
  %1140 = getelementptr inbounds %struct.rtx_def, ptr %1136, i64 0, i32 1, i32 0, i32 0, i64 2
  %1141 = load ptr, ptr %1140, align 8, !tbaa !142
  br label %1142

1142:                                             ; preds = %1135, %1139
  %1143 = phi ptr [ %1141, %1139 ], [ %1136, %1135 ]
  %1144 = load i32, ptr %1143, align 8
  %1145 = and i32 %1144, 65535
  %1146 = icmp eq i32 %1145, 7
  br i1 %1146, label %1147, label %1154

1147:                                             ; preds = %1142, %1147
  %1148 = phi ptr [ %1150, %1147 ], [ %1143, %1142 ]
  %1149 = getelementptr inbounds %struct.rtx_def, ptr %1148, i64 0, i32 1, i32 0, i32 0, i64 2
  %1150 = load ptr, ptr %1149, align 8, !tbaa !142
  %1151 = load i32, ptr %1150, align 8
  %1152 = and i32 %1151, 65535
  %1153 = icmp eq i32 %1152, 7
  br i1 %1153, label %1147, label %1154, !llvm.loop !578

1154:                                             ; preds = %1147, %1142, %1114, %1126
  %1155 = phi ptr [ %1049, %1126 ], [ %1049, %1114 ], [ %1143, %1142 ], [ %1150, %1147 ]
  %1156 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %1157 = icmp eq ptr %1156, null
  br i1 %1157, label %1162, label %1158, !prof !579

1158:                                             ; preds = %1154
  %1159 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %1160 = load i32, ptr %1159, align 8, !tbaa !240
  %1161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1156, ptr noundef nonnull @.str.16, i32 noundef %1160, i32 noundef %918)
  br label %1162

1162:                                             ; preds = %1158, %1154
  %1163 = getelementptr inbounds %struct.rtx_def, ptr %1155, i64 0, i32 1, i32 0, i32 0, i64 1
  %1164 = load ptr, ptr %1163, align 8, !tbaa !142
  %1165 = call ptr @split_block(ptr noundef nonnull %75, ptr noundef %1164) #16
  %1166 = getelementptr inbounds %struct.edge_def, ptr %1165, i64 0, i32 1
  %1167 = load ptr, ptr %1166, align 8, !tbaa !224
  br label %1168

1168:                                             ; preds = %1118, %1162
  %1169 = phi ptr [ %1167, %1162 ], [ %75, %1118 ]
  %1170 = load ptr, ptr @dump_file, align 8, !tbaa !131
  %1171 = icmp eq ptr %1170, null
  br i1 %1171, label %1178, label %1172, !prof !572

1172:                                             ; preds = %1168
  %1173 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 9
  %1174 = load i32, ptr %1173, align 8, !tbaa !240
  %1175 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %1176 = load i32, ptr %1175, align 8, !tbaa !240
  %1177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1170, ptr noundef nonnull @.str.17, i32 noundef %1174, i32 noundef %1176, i32 noundef %918)
  br label %1178

1178:                                             ; preds = %1172, %1168
  call void @df_set_bb_dirty(ptr noundef %1169) #16
  %1179 = getelementptr inbounds %struct.basic_block_def, ptr %1169, i64 0, i32 1
  %1180 = getelementptr inbounds %struct.basic_block_def, ptr %1169, i64 0, i32 11
  %1181 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 11
  br label %1182

1182:                                             ; preds = %1419, %1178
  %1183 = phi i32 [ 0, %1178 ], [ %1420, %1419 ]
  %1184 = load ptr, ptr %1179, align 8, !tbaa !131
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1188, label %1186, !prof !580

1186:                                             ; preds = %1182
  %1187 = load i32, ptr %1184, align 8, !tbaa !214
  br label %1188

1188:                                             ; preds = %1186, %1182
  %1189 = phi i32 [ %1187, %1186 ], [ 0, %1182 ]
  %1190 = icmp eq i32 %1189, %1183
  br i1 %1190, label %1195, label %1191, !prof !581

1191:                                             ; preds = %1188
  %1192 = zext i32 %1183 to i64
  %1193 = getelementptr inbounds %struct.VEC_edge_base, ptr %1184, i64 0, i32 2, i64 %1192
  %1194 = load ptr, ptr %1193, align 8, !tbaa !131
  br label %1195

1195:                                             ; preds = %1188, %1191
  %1196 = phi ptr [ %1194, %1191 ], [ null, %1188 ]
  br i1 %1190, label %1421, label %1197, !prof !581

1197:                                             ; preds = %1195
  %1198 = getelementptr inbounds %struct.edge_def, ptr %1196, i64 0, i32 1
  %1199 = load ptr, ptr %1198, align 8, !tbaa !224
  %1200 = getelementptr inbounds %struct.basic_block_def, ptr %1199, i64 0, i32 13
  %1201 = load i32, ptr %1200, align 8, !tbaa !159
  %1202 = and i32 %1201, 1024
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1218, label %1204, !prof !582

1204:                                             ; preds = %1197
  %1205 = getelementptr inbounds %struct.basic_block_def, ptr %1199, i64 0, i32 1
  %1206 = load ptr, ptr %1205, align 8, !tbaa !217
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1211, label %1208, !prof !583

1208:                                             ; preds = %1204
  %1209 = load i32, ptr %1206, align 8, !tbaa !214
  %1210 = icmp eq i32 %1209, 1
  br i1 %1210, label %1212, label %1211, !prof !518

1211:                                             ; preds = %1208, %1204
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1212

1212:                                             ; preds = %1208, %1211
  %1213 = load ptr, ptr %1205, align 8, !tbaa !217
  %1214 = getelementptr inbounds %struct.VEC_edge_base, ptr %1213, i64 0, i32 2, i64 0
  %1215 = load ptr, ptr %1214, align 8, !tbaa !131
  %1216 = getelementptr inbounds %struct.edge_def, ptr %1215, i64 0, i32 1
  %1217 = load ptr, ptr %1216, align 8, !tbaa !224
  br label %1218

1218:                                             ; preds = %1212, %1197
  %1219 = phi ptr [ %1217, %1212 ], [ %1199, %1197 ]
  br label %1220

1220:                                             ; preds = %1268, %1218
  %1221 = phi i32 [ 0, %1218 ], [ %1269, %1268 ]
  %1222 = load ptr, ptr %153, align 8, !tbaa !131
  %1223 = icmp eq ptr %1222, null
  br i1 %1223, label %1226, label %1224, !prof !584

1224:                                             ; preds = %1220
  %1225 = load i32, ptr %1222, align 8, !tbaa !214
  br label %1226

1226:                                             ; preds = %1224, %1220
  %1227 = phi i32 [ %1225, %1224 ], [ 0, %1220 ]
  %1228 = icmp eq i32 %1227, %1221
  br i1 %1228, label %1233, label %1229, !prof !584

1229:                                             ; preds = %1226
  %1230 = zext i32 %1221 to i64
  %1231 = getelementptr inbounds %struct.VEC_edge_base, ptr %1222, i64 0, i32 2, i64 %1230
  %1232 = load ptr, ptr %1231, align 8, !tbaa !131
  br label %1233

1233:                                             ; preds = %1226, %1229
  %1234 = phi ptr [ %1232, %1229 ], [ null, %1226 ]
  br i1 %1228, label %1270, label %1235, !prof !584

1235:                                             ; preds = %1233
  %1236 = getelementptr inbounds %struct.edge_def, ptr %1234, i64 0, i32 1
  %1237 = load ptr, ptr %1236, align 8, !tbaa !224
  %1238 = getelementptr inbounds %struct.basic_block_def, ptr %1237, i64 0, i32 13
  %1239 = load i32, ptr %1238, align 8, !tbaa !159
  %1240 = and i32 %1239, 1024
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1256, label %1242, !prof !585

1242:                                             ; preds = %1235
  %1243 = getelementptr inbounds %struct.basic_block_def, ptr %1237, i64 0, i32 1
  %1244 = load ptr, ptr %1243, align 8, !tbaa !217
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %1249, label %1246, !prof !586

1246:                                             ; preds = %1242
  %1247 = load i32, ptr %1244, align 8, !tbaa !214
  %1248 = icmp eq i32 %1247, 1
  br i1 %1248, label %1250, label %1249, !prof !587

1249:                                             ; preds = %1246, %1242
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1250

1250:                                             ; preds = %1246, %1249
  %1251 = load ptr, ptr %1243, align 8, !tbaa !217
  %1252 = getelementptr inbounds %struct.VEC_edge_base, ptr %1251, i64 0, i32 2, i64 0
  %1253 = load ptr, ptr %1252, align 8, !tbaa !131
  %1254 = getelementptr inbounds %struct.edge_def, ptr %1253, i64 0, i32 1
  %1255 = load ptr, ptr %1254, align 8, !tbaa !224
  br label %1256

1256:                                             ; preds = %1250, %1235
  %1257 = phi ptr [ %1255, %1250 ], [ %1237, %1235 ]
  %1258 = icmp eq ptr %1219, %1257
  br i1 %1258, label %1270, label %1259, !prof !588

1259:                                             ; preds = %1256
  %1260 = load ptr, ptr %153, align 8, !tbaa !131
  %1261 = icmp eq ptr %1260, null
  br i1 %1261, label %1264, label %1262, !prof !589

1262:                                             ; preds = %1259
  %1263 = load i32, ptr %1260, align 8, !tbaa !214
  br label %1264

1264:                                             ; preds = %1262, %1259
  %1265 = phi i32 [ %1263, %1262 ], [ 0, %1259 ]
  %1266 = icmp ult i32 %1221, %1265
  br i1 %1266, label %1268, label %1267, !prof !590

1267:                                             ; preds = %1264
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %1268

1268:                                             ; preds = %1264, %1267
  %1269 = add i32 %1221, 1
  br label %1220, !llvm.loop !591

1270:                                             ; preds = %1256, %1233
  %1271 = getelementptr inbounds %struct.edge_def, ptr %1234, i64 0, i32 9
  %1272 = load i64, ptr %1271, align 8, !tbaa !365
  %1273 = getelementptr inbounds %struct.edge_def, ptr %1196, i64 0, i32 9
  %1274 = load i64, ptr %1273, align 8, !tbaa !365
  %1275 = add nsw i64 %1274, %1272
  store i64 %1275, ptr %1273, align 8, !tbaa !365
  %1276 = load ptr, ptr %1198, align 8, !tbaa !224
  %1277 = getelementptr inbounds %struct.basic_block_def, ptr %1276, i64 0, i32 13
  %1278 = load i32, ptr %1277, align 8, !tbaa !159
  %1279 = and i32 %1278, 1024
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1313, label %1281, !prof !582

1281:                                             ; preds = %1270
  %1282 = load i64, ptr %1271, align 8, !tbaa !365
  %1283 = getelementptr inbounds %struct.basic_block_def, ptr %1276, i64 0, i32 1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !217
  %1285 = icmp eq ptr %1284, null
  br i1 %1285, label %1289, label %1286, !prof !583

1286:                                             ; preds = %1281
  %1287 = load i32, ptr %1284, align 8, !tbaa !214
  %1288 = icmp eq i32 %1287, 1
  br i1 %1288, label %1290, label %1289, !prof !518

1289:                                             ; preds = %1281, %1286
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1290

1290:                                             ; preds = %1286, %1289
  %1291 = load ptr, ptr %1283, align 8, !tbaa !217
  %1292 = getelementptr inbounds %struct.VEC_edge_base, ptr %1291, i64 0, i32 2, i64 0
  %1293 = load ptr, ptr %1292, align 8, !tbaa !131
  %1294 = getelementptr inbounds %struct.edge_def, ptr %1293, i64 0, i32 9
  %1295 = load i64, ptr %1294, align 8, !tbaa !365
  %1296 = add nsw i64 %1295, %1282
  store i64 %1296, ptr %1294, align 8, !tbaa !365
  %1297 = load i64, ptr %1271, align 8, !tbaa !365
  %1298 = load ptr, ptr %1198, align 8, !tbaa !224
  %1299 = getelementptr inbounds %struct.basic_block_def, ptr %1298, i64 0, i32 8
  %1300 = load i64, ptr %1299, align 8, !tbaa !376
  %1301 = add nsw i64 %1300, %1297
  store i64 %1301, ptr %1299, align 8, !tbaa !376
  %1302 = load ptr, ptr %1196, align 8, !tbaa !239
  %1303 = getelementptr inbounds %struct.basic_block_def, ptr %1302, i64 0, i32 11
  %1304 = load i32, ptr %1303, align 8, !tbaa !371
  %1305 = getelementptr inbounds %struct.edge_def, ptr %1196, i64 0, i32 8
  %1306 = load i32, ptr %1305, align 4, !tbaa !366
  %1307 = mul nsw i32 %1306, %1304
  %1308 = add nsw i32 %1307, 5000
  %1309 = sdiv i32 %1308, 10000
  %1310 = getelementptr inbounds %struct.basic_block_def, ptr %1298, i64 0, i32 11
  %1311 = load i32, ptr %1310, align 8, !tbaa !371
  %1312 = add nsw i32 %1309, %1311
  store i32 %1312, ptr %1310, align 8, !tbaa !371
  br label %1313

1313:                                             ; preds = %1290, %1270
  %1314 = getelementptr inbounds %struct.edge_def, ptr %1234, i64 0, i32 1
  %1315 = load ptr, ptr %1314, align 8, !tbaa !224
  %1316 = getelementptr inbounds %struct.basic_block_def, ptr %1315, i64 0, i32 13
  %1317 = load i32, ptr %1316, align 8, !tbaa !159
  %1318 = and i32 %1317, 1024
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1385, label %1320, !prof !592

1320:                                             ; preds = %1313
  %1321 = load i64, ptr %1271, align 8, !tbaa !365
  %1322 = getelementptr inbounds %struct.basic_block_def, ptr %1315, i64 0, i32 1
  %1323 = load ptr, ptr %1322, align 8, !tbaa !217
  %1324 = icmp eq ptr %1323, null
  br i1 %1324, label %1328, label %1325, !prof !589

1325:                                             ; preds = %1320
  %1326 = load i32, ptr %1323, align 8, !tbaa !214
  %1327 = icmp eq i32 %1326, 1
  br i1 %1327, label %1329, label %1328, !prof !590

1328:                                             ; preds = %1320, %1325
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1329

1329:                                             ; preds = %1325, %1328
  %1330 = load ptr, ptr %1322, align 8, !tbaa !217
  %1331 = getelementptr inbounds %struct.VEC_edge_base, ptr %1330, i64 0, i32 2, i64 0
  %1332 = load ptr, ptr %1331, align 8, !tbaa !131
  %1333 = getelementptr inbounds %struct.edge_def, ptr %1332, i64 0, i32 9
  %1334 = load i64, ptr %1333, align 8, !tbaa !365
  %1335 = sub nsw i64 %1334, %1321
  store i64 %1335, ptr %1333, align 8, !tbaa !365
  %1336 = load ptr, ptr %1314, align 8, !tbaa !224
  %1337 = getelementptr inbounds %struct.basic_block_def, ptr %1336, i64 0, i32 1
  %1338 = load ptr, ptr %1337, align 8, !tbaa !217
  %1339 = icmp eq ptr %1338, null
  br i1 %1339, label %1343, label %1340, !prof !589

1340:                                             ; preds = %1329
  %1341 = load i32, ptr %1338, align 8, !tbaa !214
  %1342 = icmp eq i32 %1341, 1
  br i1 %1342, label %1344, label %1343, !prof !590

1343:                                             ; preds = %1329, %1340
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1344

1344:                                             ; preds = %1340, %1343
  %1345 = load ptr, ptr %1337, align 8, !tbaa !217
  %1346 = getelementptr inbounds %struct.VEC_edge_base, ptr %1345, i64 0, i32 2, i64 0
  %1347 = load ptr, ptr %1346, align 8, !tbaa !131
  %1348 = getelementptr inbounds %struct.edge_def, ptr %1347, i64 0, i32 9
  %1349 = load i64, ptr %1348, align 8, !tbaa !365
  %1350 = icmp slt i64 %1349, 0
  br i1 %1350, label %1351, label %1365, !prof !589

1351:                                             ; preds = %1344
  %1352 = load ptr, ptr %1314, align 8, !tbaa !224
  %1353 = getelementptr inbounds %struct.basic_block_def, ptr %1352, i64 0, i32 1
  %1354 = load ptr, ptr %1353, align 8, !tbaa !217
  %1355 = icmp eq ptr %1354, null
  br i1 %1355, label %1359, label %1356

1356:                                             ; preds = %1351
  %1357 = load i32, ptr %1354, align 8, !tbaa !214
  %1358 = icmp eq i32 %1357, 1
  br i1 %1358, label %1360, label %1359

1359:                                             ; preds = %1351, %1356
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1360

1360:                                             ; preds = %1356, %1359
  %1361 = load ptr, ptr %1353, align 8, !tbaa !217
  %1362 = getelementptr inbounds %struct.VEC_edge_base, ptr %1361, i64 0, i32 2, i64 0
  %1363 = load ptr, ptr %1362, align 8, !tbaa !131
  %1364 = getelementptr inbounds %struct.edge_def, ptr %1363, i64 0, i32 9
  store i64 0, ptr %1364, align 8, !tbaa !365
  br label %1365

1365:                                             ; preds = %1360, %1344
  %1366 = load i64, ptr %1271, align 8, !tbaa !365
  %1367 = load ptr, ptr %1314, align 8, !tbaa !224
  %1368 = getelementptr inbounds %struct.basic_block_def, ptr %1367, i64 0, i32 8
  %1369 = load i64, ptr %1368, align 8, !tbaa !376
  %1370 = sub nsw i64 %1369, %1366
  store i64 %1370, ptr %1368, align 8, !tbaa !376
  %1371 = load ptr, ptr %1196, align 8, !tbaa !239
  %1372 = getelementptr inbounds %struct.basic_block_def, ptr %1371, i64 0, i32 11
  %1373 = load i32, ptr %1372, align 8, !tbaa !371
  %1374 = getelementptr inbounds %struct.edge_def, ptr %1196, i64 0, i32 8
  %1375 = load i32, ptr %1374, align 4, !tbaa !366
  %1376 = mul nsw i32 %1375, %1373
  %1377 = add nsw i32 %1376, 5000
  %1378 = sdiv i32 %1377, -10000
  %1379 = getelementptr inbounds %struct.basic_block_def, ptr %1367, i64 0, i32 11
  %1380 = load i32, ptr %1379, align 8, !tbaa !371
  %1381 = add i32 %1378, %1380
  %1382 = call i32 @llvm.smax.i32(i32 %1381, i32 0)
  store i32 %1382, ptr %1379, align 8
  %1383 = icmp slt i64 %1370, 0
  br i1 %1383, label %1384, label %1385, !prof !589

1384:                                             ; preds = %1365
  store i64 0, ptr %1368, align 8, !tbaa !376
  br label %1385

1385:                                             ; preds = %1365, %1384, %1313
  %1386 = load i32, ptr %1180, align 8, !tbaa !371
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1388, label %1399, !prof !593

1388:                                             ; preds = %1385
  %1389 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 11
  %1390 = load i32, ptr %1389, align 8, !tbaa !371
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1392, label %1399, !prof !594

1392:                                             ; preds = %1388
  %1393 = getelementptr inbounds %struct.edge_def, ptr %1196, i64 0, i32 8
  %1394 = load i32, ptr %1393, align 4, !tbaa !366
  %1395 = getelementptr inbounds %struct.edge_def, ptr %1234, i64 0, i32 8
  %1396 = load i32, ptr %1395, align 4, !tbaa !366
  %1397 = add nsw i32 %1396, %1394
  %1398 = sdiv i32 %1397, 2
  store i32 %1398, ptr %1393, align 4, !tbaa !366
  br label %1410

1399:                                             ; preds = %1388, %1385
  %1400 = getelementptr inbounds %struct.edge_def, ptr %1196, i64 0, i32 8
  %1401 = load i32, ptr %1400, align 4, !tbaa !366
  %1402 = mul nsw i32 %1401, %1386
  %1403 = getelementptr inbounds %struct.edge_def, ptr %1234, i64 0, i32 8
  %1404 = load i32, ptr %1403, align 4, !tbaa !366
  %1405 = load i32, ptr %1181, align 8, !tbaa !371
  %1406 = mul nsw i32 %1405, %1404
  %1407 = add nsw i32 %1406, %1402
  %1408 = add nsw i32 %1405, %1386
  %1409 = sdiv i32 %1407, %1408
  store i32 %1409, ptr %1400, align 4, !tbaa !366
  br label %1410

1410:                                             ; preds = %1392, %1399
  %1411 = load ptr, ptr %1179, align 8, !tbaa !131
  %1412 = icmp eq ptr %1411, null
  br i1 %1412, label %1415, label %1413, !prof !595

1413:                                             ; preds = %1410
  %1414 = load i32, ptr %1411, align 8, !tbaa !214
  br label %1415

1415:                                             ; preds = %1413, %1410
  %1416 = phi i32 [ %1414, %1413 ], [ 0, %1410 ]
  %1417 = icmp ult i32 %1183, %1416
  br i1 %1417, label %1419, label %1418, !prof !596

1418:                                             ; preds = %1415
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %1419

1419:                                             ; preds = %1415, %1418
  %1420 = add i32 %1183, 1
  br label %1182, !llvm.loop !597

1421:                                             ; preds = %1195
  %1422 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 8
  %1423 = load i64, ptr %1422, align 8, !tbaa !376
  %1424 = getelementptr inbounds %struct.basic_block_def, ptr %1169, i64 0, i32 8
  %1425 = load i64, ptr %1424, align 8, !tbaa !376
  %1426 = add nsw i64 %1425, %1423
  store i64 %1426, ptr %1424, align 8, !tbaa !376
  %1427 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 11
  %1428 = load i32, ptr %1427, align 8, !tbaa !371
  %1429 = getelementptr inbounds %struct.basic_block_def, ptr %1169, i64 0, i32 11
  %1430 = load i32, ptr %1429, align 8, !tbaa !371
  %1431 = add nsw i32 %1430, %1428
  %1432 = call i32 @llvm.smin.i32(i32 %1431, i32 10000)
  store i32 %1432, ptr %1429, align 8, !tbaa !371
  call void @update_br_prob_note(ptr noundef %1169) #16
  %1433 = load i32, ptr %1050, align 8
  %1434 = and i32 %1433, 65535
  %1435 = icmp eq i32 %1434, 12
  br i1 %1435, label %1436, label %1440, !prof !598

1436:                                             ; preds = %1421, %1440
  %1437 = phi ptr [ %1441, %1440 ], [ %1050, %1421 ]
  %1438 = getelementptr inbounds %struct.rtx_def, ptr %1437, i64 0, i32 1, i32 0, i32 0, i64 2
  %1439 = load ptr, ptr %1438, align 8, !tbaa !142
  br label %1440

1440:                                             ; preds = %1436, %1421
  %1441 = phi ptr [ %1050, %1421 ], [ %1439, %1436 ]
  %1442 = load i32, ptr %1441, align 8
  %1443 = trunc i32 %1442 to i16
  switch i16 %1443, label %1451 [
    i16 7, label %1436
    i16 13, label %1444
  ], !prof !599, !llvm.loop !600

1444:                                             ; preds = %1440
  %1445 = getelementptr inbounds %struct.rtx_def, ptr %1441, i64 1
  %1446 = load i32, ptr %1445, align 8, !tbaa !142
  %1447 = icmp eq i32 %1446, 10
  br i1 %1447, label %1448, label %1451, !prof !601

1448:                                             ; preds = %1444
  %1449 = getelementptr inbounds %struct.rtx_def, ptr %1441, i64 0, i32 1, i32 0, i32 0, i64 2
  %1450 = load ptr, ptr %1449, align 8, !tbaa !142
  br label %1451

1451:                                             ; preds = %1440, %1448, %1444
  %1452 = phi ptr [ %1450, %1448 ], [ %1441, %1444 ], [ %1441, %1440 ]
  %1453 = load i32, ptr %1452, align 8
  %1454 = and i32 %1453, 65535
  %1455 = icmp eq i32 %1454, 7
  br i1 %1455, label %1456, label %1463, !prof !221

1456:                                             ; preds = %1451, %1456
  %1457 = phi ptr [ %1459, %1456 ], [ %1452, %1451 ]
  %1458 = getelementptr inbounds %struct.rtx_def, ptr %1457, i64 0, i32 1, i32 0, i32 0, i64 2
  %1459 = load ptr, ptr %1458, align 8, !tbaa !142
  %1460 = load i32, ptr %1459, align 8
  %1461 = and i32 %1460, 65535
  %1462 = icmp eq i32 %1461, 7
  br i1 %1462, label %1456, label %1463, !prof !221, !llvm.loop !602

1463:                                             ; preds = %1456, %1451
  %1464 = phi ptr [ %1452, %1451 ], [ %1459, %1456 ]
  %1465 = getelementptr inbounds %struct.rtx_def, ptr %1464, i64 0, i32 1, i32 0, i32 0, i64 1
  %1466 = load ptr, ptr %1465, align 8, !tbaa !142
  %1467 = call ptr @split_block(ptr noundef nonnull %48, ptr noundef %1466) #16
  %1468 = load ptr, ptr %1467, align 8, !tbaa !239
  %1469 = getelementptr inbounds %struct.basic_block_def, ptr %1468, i64 0, i32 1
  %1470 = load ptr, ptr %1469, align 8, !tbaa !217
  %1471 = icmp eq ptr %1470, null
  br i1 %1471, label %1475, label %1472, !prof !570

1472:                                             ; preds = %1463
  %1473 = load i32, ptr %1470, align 8, !tbaa !214
  %1474 = icmp eq i32 %1473, 1
  br i1 %1474, label %1476, label %1475, !prof !572

1475:                                             ; preds = %1472, %1463
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1476

1476:                                             ; preds = %1472, %1475
  %1477 = load ptr, ptr %1469, align 8, !tbaa !217
  %1478 = getelementptr inbounds %struct.VEC_edge_base, ptr %1477, i64 0, i32 2, i64 0
  %1479 = load ptr, ptr %1478, align 8, !tbaa !131
  %1480 = getelementptr inbounds %struct.edge_def, ptr %1479, i64 0, i32 1
  %1481 = load ptr, ptr %1480, align 8, !tbaa !224
  %1482 = icmp eq ptr %1477, null
  br i1 %1482, label %1486, label %1483, !prof !570

1483:                                             ; preds = %1476
  %1484 = load i32, ptr %1477, align 8, !tbaa !214
  %1485 = icmp eq i32 %1484, 1
  br i1 %1485, label %1487, label %1486, !prof !572

1486:                                             ; preds = %1476, %1483
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %1487

1487:                                             ; preds = %1483, %1486
  %1488 = load ptr, ptr %1469, align 8, !tbaa !217
  %1489 = getelementptr inbounds %struct.VEC_edge_base, ptr %1488, i64 0, i32 2, i64 0
  %1490 = load ptr, ptr %1489, align 8, !tbaa !131
  %1491 = call ptr @redirect_edge_and_branch_force(ptr noundef %1490, ptr noundef %1169) #16
  call void @delete_basic_block(ptr noundef %1481) #16
  %1492 = call zeroext i8 @forwarder_block_p(ptr noundef %1468) #16
  %1493 = icmp eq i8 %1492, 0
  %1494 = getelementptr inbounds %struct.basic_block_def, ptr %1468, i64 0, i32 13
  %1495 = load i32, ptr %1494, align 8, !tbaa !159
  %1496 = and i32 %1495, -1025
  %1497 = select i1 %1493, i32 0, i32 1024, !prof !603
  %1498 = or disjoint i32 %1496, %1497
  store i32 %1498, ptr %1494, align 8, !tbaa !159
  %1499 = icmp eq ptr %1169, %75
  br i1 %1499, label %1511, label %1500, !prof !574

1500:                                             ; preds = %1487
  %1501 = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %75) #16
  %1502 = icmp eq i8 %1501, 0
  %1503 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 13
  %1504 = load i32, ptr %1503, align 8, !tbaa !159
  br i1 %1502, label %1507, label %1505, !prof !579

1505:                                             ; preds = %1500
  %1506 = or i32 %1504, 1024
  br label %1509

1507:                                             ; preds = %1500
  %1508 = and i32 %1504, -1025
  br label %1509

1509:                                             ; preds = %1505, %1507
  %1510 = phi i32 [ %1508, %1507 ], [ %1506, %1505 ]
  store i32 %1510, ptr %1503, align 8, !tbaa !159
  br label %1511

1511:                                             ; preds = %1509, %141, %126, %1487, %1074, %1055, %860, %149, %101, %74, %3
  %1512 = phi i8 [ 0, %3 ], [ 0, %74 ], [ 0, %101 ], [ 0, %149 ], [ 0, %860 ], [ 0, %1055 ], [ 0, %1074 ], [ 1, %1487 ], [ 0, %126 ], [ 0, %141 ], [ 1, %1509 ]
  ret i8 %1512
}

declare i32 @replace_label(ptr noundef, ptr noundef) #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_renumbered_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

declare i32 @rtx_referenced_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @old_insns_match_p(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !604 !PGOFuncName !605 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %126, !prof !606

9:                                                ; preds = %3
  %10 = icmp eq i32 %5, 13
  br i1 %10, label %11, label %21, !prof !607

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !142
  %14 = icmp eq i32 %13, 10
  %15 = icmp eq i32 %7, 13
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %19 = load i32, ptr %18, align 8, !tbaa !142
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %126, label %21

21:                                               ; preds = %17, %11, %9
  %22 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !142
  %24 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !142
  %26 = load i32, ptr %23, align 8
  %27 = load i32, ptr %25, align 8
  %28 = xor i32 %27, %26
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %126, !prof !608

31:                                               ; preds = %21
  %32 = icmp eq i32 %5, 10
  br i1 %32, label %33, label %46, !prof !609

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !142
  %36 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !142
  %38 = tail call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %37) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %126, label %40, !prof !610

40:                                               ; preds = %33
  %41 = load i32, ptr %1, align 8
  %42 = load i32, ptr %2, align 8
  %43 = xor i32 %42, %41
  %44 = and i32 %43, 16777216
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %126, !prof !611

46:                                               ; preds = %40, %31
  %47 = and i32 %0, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %116, label %49, !prof !612

49:                                               ; preds = %46
  %50 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %1) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %116, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !142
  %55 = icmp eq ptr %54, null
  br i1 %55, label %82, label %56

56:                                               ; preds = %52, %77
  %57 = phi ptr [ %80, %77 ], [ %54, %52 ]
  %58 = phi i64 [ %78, %77 ], [ 0, %52 ]
  %59 = load i32, ptr %57, align 8
  %60 = and i32 %59, 16711680
  %61 = icmp eq i32 %60, 65536
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !142
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 37
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !142
  %71 = and i32 %70, -8
  %72 = icmp eq i32 %71, 8
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = zext nneg i32 %70 to i64
  %75 = shl nuw nsw i64 1, %74
  %76 = or i64 %75, %58
  br label %77

77:                                               ; preds = %56, %62, %68, %73
  %78 = phi i64 [ %76, %73 ], [ %58, %68 ], [ %58, %62 ], [ %58, %56 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !142
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %56, !llvm.loop !613

82:                                               ; preds = %77, %52
  %83 = phi i64 [ 0, %52 ], [ %78, %77 ]
  %84 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !142
  %86 = icmp eq ptr %85, null
  br i1 %86, label %113, label %87

87:                                               ; preds = %82, %108
  %88 = phi ptr [ %111, %108 ], [ %85, %82 ]
  %89 = phi i64 [ %109, %108 ], [ 0, %82 ]
  %90 = load i32, ptr %88, align 8
  %91 = and i32 %90, 16711680
  %92 = icmp eq i32 %91, 65536
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !142
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !142
  %102 = and i32 %101, -8
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = zext nneg i32 %101 to i64
  %106 = shl nuw nsw i64 1, %105
  %107 = or i64 %106, %89
  br label %108

108:                                              ; preds = %87, %93, %99, %104
  %109 = phi i64 [ %107, %104 ], [ %89, %99 ], [ %89, %93 ], [ %89, %87 ]
  %110 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !142
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %87, !llvm.loop !614

113:                                              ; preds = %108, %82
  %114 = phi i64 [ 0, %82 ], [ %109, %108 ]
  %115 = icmp eq i64 %83, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %113, %49, %46
  %117 = load i32, ptr @reload_completed, align 4, !tbaa !146
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119, !prof !615

119:                                              ; preds = %116
  %120 = tail call i32 @rtx_renumbered_equal_p(ptr noundef nonnull %23, ptr noundef nonnull %25) #16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %126, !prof !616

122:                                              ; preds = %116
  %123 = tail call i32 @rtx_equal_p(ptr noundef nonnull %23, ptr noundef nonnull %25) #16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %113, %119, %122, %33, %40, %21, %17, %3, %125
  %127 = phi i8 [ 0, %125 ], [ 0, %3 ], [ 1, %17 ], [ 0, %21 ], [ 0, %40 ], [ 0, %33 ], [ 1, %122 ], [ 1, %119 ], [ 0, %113 ]
  ret i8 %127
}

declare i32 @stack_regs_mentioned(ptr noundef) local_unnamed_addr #3

declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @merge_memattrs(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !617 !PGOFuncName !618 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %269, label %4, !prof !619

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %269, label %8, !prof !620

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %269, !prof !621

14:                                               ; preds = %8
  %15 = xor i32 %11, %9
  %16 = and i32 %15, 16711680
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %269, !prof !621

18:                                               ; preds = %14
  %19 = icmp eq i32 %10, 43
  br i1 %19, label %20, label %219, !prof !622

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !142
  %23 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !142
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %219, label %26, !prof !623

26:                                               ; preds = %20
  %27 = icmp eq ptr %22, null
  br i1 %27, label %28, label %29, !prof !624

28:                                               ; preds = %26
  store ptr null, ptr %23, align 8, !tbaa !142
  br label %219

29:                                               ; preds = %26
  %30 = icmp eq ptr %24, null
  br i1 %30, label %31, label %32, !prof !624

31:                                               ; preds = %29
  store ptr null, ptr %21, align 8, !tbaa !142
  br label %219

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !625
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %24, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !625
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %39, label %38, !prof !434

38:                                               ; preds = %32
  tail call void @set_mem_alias_set(ptr noundef nonnull %0, i32 noundef 0) #16
  tail call void @set_mem_alias_set(ptr noundef nonnull %1, i32 noundef 0) #16
  br label %39

39:                                               ; preds = %38, %32
  %40 = load ptr, ptr %21, align 8, !tbaa !142
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !624

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 8, !tbaa !627
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi ptr [ %43, %42 ], [ null, %39 ]
  %46 = load ptr, ptr %23, align 8, !tbaa !142
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !624

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !627
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi ptr [ %49, %48 ], [ null, %44 ]
  %52 = tail call i32 @mem_expr_equal_p(ptr noundef %45, ptr noundef %51) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55, !prof !434

54:                                               ; preds = %50
  tail call void @set_mem_expr(ptr noundef nonnull %0, ptr noundef null) #16
  tail call void @set_mem_expr(ptr noundef nonnull %1, ptr noundef null) #16
  br label %71

55:                                               ; preds = %50
  %56 = load ptr, ptr %21, align 8, !tbaa !142
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !628
  br label %61

61:                                               ; preds = %55, %58
  %62 = phi ptr [ %60, %58 ], [ null, %55 ]
  %63 = load ptr, ptr %23, align 8, !tbaa !142
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mem_attrs, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !628
  br label %68

68:                                               ; preds = %61, %65
  %69 = phi ptr [ %67, %65 ], [ null, %61 ]
  %70 = icmp eq ptr %62, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %54
  tail call void @set_mem_offset(ptr noundef nonnull %0, ptr noundef null) #16
  tail call void @set_mem_offset(ptr noundef nonnull %1, ptr noundef null) #16
  br label %72

72:                                               ; preds = %71, %68
  %73 = load ptr, ptr %21, align 8, !tbaa !142
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75, !prof !624

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !629
  %78 = icmp eq ptr %77, null
  br i1 %78, label %187, label %91, !prof !624

79:                                               ; preds = %72
  %80 = load i32, ptr %0, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %187, label %84

84:                                               ; preds = %79
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !142
  %88 = zext i8 %87 to i64
  %89 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %88) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %187, label %91

91:                                               ; preds = %84, %75
  %92 = load ptr, ptr %23, align 8, !tbaa !142
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94, !prof !624

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.mem_attrs, ptr %92, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !629
  %97 = icmp eq ptr %96, null
  br i1 %97, label %187, label %110, !prof !624

98:                                               ; preds = %91
  %99 = load i32, ptr %1, align 8
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %187, label %103

103:                                              ; preds = %98
  %104 = zext nneg i32 %101 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !142
  %107 = zext i8 %106 to i64
  %108 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %107) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %187, label %110

110:                                              ; preds = %103, %94
  %111 = load ptr, ptr %21, align 8, !tbaa !142
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113, !prof !624

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mem_attrs, ptr %111, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !629
  br label %126

116:                                              ; preds = %110
  %117 = load i32, ptr %0, align 8
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = icmp ne i32 %119, 1
  tail call void @llvm.assume(i1 %120)
  %121 = zext nneg i32 %119 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !142
  %124 = zext i8 %123 to i64
  %125 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %124) #16
  br label %126

126:                                              ; preds = %116, %113
  %127 = phi ptr [ %115, %113 ], [ %125, %116 ]
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !142
  %130 = load ptr, ptr %23, align 8, !tbaa !142
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132, !prof !624

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.mem_attrs, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !629
  br label %145

135:                                              ; preds = %126
  %136 = load i32, ptr %1, align 8
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  %139 = icmp ne i32 %138, 1
  tail call void @llvm.assume(i1 %139)
  %140 = zext nneg i32 %138 to i64
  %141 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !142
  %143 = zext i8 %142 to i64
  %144 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %143) #16
  br label %145

145:                                              ; preds = %135, %132
  %146 = phi ptr [ %134, %132 ], [ %144, %135 ]
  %147 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !142
  %149 = icmp sgt i64 %129, %148
  br i1 %149, label %150, label %166, !prof !624

150:                                              ; preds = %145
  %151 = load ptr, ptr %21, align 8, !tbaa !142
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.mem_attrs, ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !629
  br label %182

156:                                              ; preds = %150
  %157 = load i32, ptr %0, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = icmp ne i32 %159, 1
  tail call void @llvm.assume(i1 %160)
  %161 = zext nneg i32 %159 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !142
  %164 = zext i8 %163 to i64
  %165 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %164) #16
  br label %182

166:                                              ; preds = %145
  %167 = load ptr, ptr %23, align 8, !tbaa !142
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169, !prof !624

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.mem_attrs, ptr %167, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !629
  br label %182

172:                                              ; preds = %166
  %173 = load i32, ptr %1, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = icmp ne i32 %175, 1
  tail call void @llvm.assume(i1 %176)
  %177 = zext nneg i32 %175 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !142
  %180 = zext i8 %179 to i64
  %181 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %180) #16
  br label %182

182:                                              ; preds = %169, %172, %153, %156
  %183 = phi ptr [ %155, %153 ], [ %165, %156 ], [ %171, %169 ], [ %181, %172 ]
  %184 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !142
  %186 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %185) #16
  br label %187

187:                                              ; preds = %103, %84, %94, %98, %75, %79, %182
  %188 = phi ptr [ %186, %182 ], [ null, %79 ], [ null, %75 ], [ null, %98 ], [ null, %94 ], [ null, %84 ], [ null, %103 ]
  tail call void @set_mem_size(ptr noundef nonnull %0, ptr noundef %188) #16
  tail call void @set_mem_size(ptr noundef nonnull %1, ptr noundef %188) #16
  %189 = load ptr, ptr %21, align 8, !tbaa !142
  %190 = icmp eq ptr %189, null
  br i1 %190, label %194, label %191, !prof !624

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.mem_attrs, ptr %189, i64 0, i32 4
  %193 = load i32, ptr %192, align 4, !tbaa !630
  br label %194

194:                                              ; preds = %187, %191
  %195 = phi i32 [ %193, %191 ], [ 8, %187 ]
  %196 = load ptr, ptr %23, align 8, !tbaa !142
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198, !prof !624

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.mem_attrs, ptr %196, i64 0, i32 4
  %200 = load i32, ptr %199, align 4, !tbaa !630
  br label %201

201:                                              ; preds = %194, %198
  %202 = phi i32 [ %200, %198 ], [ 8, %194 ]
  %203 = icmp ult i32 %195, %202
  br i1 %203, label %204, label %205, !prof !624

204:                                              ; preds = %201
  br i1 %190, label %210, label %206

205:                                              ; preds = %201
  br i1 %197, label %210, label %206, !prof !624

206:                                              ; preds = %205, %204
  %207 = phi ptr [ %189, %204 ], [ %196, %205 ]
  %208 = getelementptr inbounds %struct.mem_attrs, ptr %207, i64 0, i32 4
  %209 = load i32, ptr %208, align 4, !tbaa !630
  br label %210

210:                                              ; preds = %206, %205, %204
  %211 = phi i32 [ 8, %204 ], [ 8, %205 ], [ %209, %206 ]
  tail call void @set_mem_align(ptr noundef nonnull %0, i32 noundef %211) #16
  %212 = load ptr, ptr %21, align 8, !tbaa !142
  %213 = icmp eq ptr %212, null
  br i1 %213, label %217, label %214, !prof !624

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.mem_attrs, ptr %212, i64 0, i32 4
  %216 = load i32, ptr %215, align 4, !tbaa !630
  br label %217

217:                                              ; preds = %210, %214
  %218 = phi i32 [ %216, %214 ], [ 8, %210 ]
  tail call void @set_mem_align(ptr noundef nonnull %1, i32 noundef %218) #16
  br label %219

219:                                              ; preds = %28, %217, %31, %20, %18
  %220 = zext nneg i32 %10 to i64
  %221 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !131
  %223 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %220
  %224 = load i8, ptr %223, align 1, !tbaa !142
  %225 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %226 = icmp eq i8 %224, 0
  br i1 %226, label %269, label %227, !prof !631

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %229 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %230 = zext i8 %224 to i64
  br label %231

231:                                              ; preds = %227, %267
  %232 = phi i64 [ %230, %227 ], [ %233, %267 ]
  %233 = add nsw i64 %232, -1
  %234 = getelementptr inbounds i8, ptr %222, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !142
  switch i8 %235, label %267 [
    i8 69, label %236
    i8 101, label %262
  ], !prof !632

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %238 = getelementptr inbounds [1 x %union.rtunion_def], ptr %225, i64 0, i64 %233
  %239 = load ptr, ptr %238, align 8, !tbaa !142
  %240 = load i32, ptr %239, align 8, !tbaa !331
  %241 = getelementptr inbounds [1 x %union.rtunion_def], ptr %237, i64 0, i64 %233
  %242 = load ptr, ptr %241, align 8, !tbaa !142
  %243 = load i32, ptr %242, align 8, !tbaa !331
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %269, !prof !633

245:                                              ; preds = %236
  %246 = load ptr, ptr %238, align 8, !tbaa !142
  %247 = load i32, ptr %246, align 8, !tbaa !331
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %267, !prof !634

249:                                              ; preds = %245, %249
  %250 = phi i64 [ %257, %249 ], [ 0, %245 ]
  %251 = phi ptr [ %258, %249 ], [ %246, %245 ]
  %252 = getelementptr inbounds %struct.rtvec_def, ptr %251, i64 0, i32 1, i64 %250
  %253 = load ptr, ptr %252, align 8, !tbaa !131
  %254 = load ptr, ptr %241, align 8, !tbaa !142
  %255 = getelementptr inbounds %struct.rtvec_def, ptr %254, i64 0, i32 1, i64 %250
  %256 = load ptr, ptr %255, align 8, !tbaa !131
  tail call fastcc void @merge_memattrs(ptr noundef %253, ptr noundef %256)
  %257 = add nuw nsw i64 %250, 1
  %258 = load ptr, ptr %238, align 8, !tbaa !142
  %259 = load i32, ptr %258, align 8, !tbaa !331
  %260 = sext i32 %259 to i64
  %261 = icmp slt i64 %257, %260
  br i1 %261, label %249, label %267, !prof !635, !llvm.loop !636

262:                                              ; preds = %231
  %263 = getelementptr inbounds [1 x %union.rtunion_def], ptr %228, i64 0, i64 %233
  %264 = load ptr, ptr %263, align 8, !tbaa !142
  %265 = getelementptr inbounds [1 x %union.rtunion_def], ptr %229, i64 0, i64 %233
  %266 = load ptr, ptr %265, align 8, !tbaa !142
  tail call fastcc void @merge_memattrs(ptr noundef %264, ptr noundef %266)
  br label %267

267:                                              ; preds = %249, %245, %231, %262
  %268 = icmp sgt i64 %232, 1
  br i1 %268, label %231, label %269, !prof !637, !llvm.loop !638

269:                                              ; preds = %236, %267, %219, %14, %8, %4, %2
  ret void
}

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mem_expr_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fixup_tail_calls() local_unnamed_addr #3

declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!129}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!35 = !{ptr @delete_unreachable_blocks, ptr @find_unreachable_blocks, i64 1075}
!36 = !{ptr @delete_unreachable_blocks, ptr @delete_basic_block, i64 160}
!37 = !{ptr @delete_unreachable_blocks, ptr @tidy_fallthru_edges, i64 39}
!38 = !{ptr @cleanup_cfg, ptr @current_ir_type, i64 553}
!39 = !{ptr @cleanup_cfg, ptr @delete_unreachable_blocks, i64 736}
!40 = !{ptr @cleanup_cfg, ptr @get_insns, i64 46}
!41 = !{ptr @cleanup_cfg, ptr @max_reg_num, i64 46}
!42 = !{ptr @cleanup_cfg, ptr @delete_trivially_dead_insns, i64 46}
!43 = !{ptr @cleanup_cfg, ptr @compact_blocks, i64 553}
!44 = !{ptr @cleanup_cfg, ptr @add_noreturn_fake_exit_edges, i64 38}
!45 = !{ptr @cleanup_cfg, ptr @dbg_cnt, i64 553}
!46 = !{ptr @cleanup_cfg, ptr @clear_bb_flags, i64 105}
!47 = !{ptr @cleanup_cfg, ptr @forwarder_block_p, i64 3654744}
!48 = !{ptr @cleanup_cfg, ptr @delete_basic_block, i64 55482}
!49 = !{ptr @cleanup_cfg, ptr @label_is_jump_target_p, i64 1841}
!50 = !{ptr @cleanup_cfg, ptr @delete_insn_chain, i64 1841}
!51 = !{ptr @cleanup_cfg, ptr @can_merge_blocks_p, i64 118}
!52 = !{ptr @cleanup_cfg, ptr @merge_blocks, i64 129}
!53 = !{ptr @cleanup_cfg, ptr @simplejump_p, i64 240}
!54 = !{ptr @cleanup_cfg, ptr @any_condjump_p, i64 725754}
!55 = !{ptr @cleanup_cfg, ptr @can_fallthru, i64 4086}
!56 = !{ptr @cleanup_cfg, ptr @onlyjump_p, i64 942073}
!57 = !{ptr @cleanup_cfg, ptr @find_reg_note, i64 14087816}
!58 = !{ptr @cleanup_cfg, ptr @try_redirect_by_replacing_jump, i64 119088}
!59 = !{ptr @cleanup_cfg, ptr @df_get_bb_dirty, i64 18750583}
!60 = !{ptr @cleanup_cfg, ptr @pc_set, i64 429396}
!61 = !{ptr @cleanup_cfg, ptr @reversed_comparison_code, i64 351909}
!62 = !{ptr @cleanup_cfg, ptr @comparison_dominates_p, i64 295577}
!63 = !{ptr @cleanup_cfg, ptr @rtx_equal_p, i64 427452}
!64 = !{ptr @cleanup_cfg, ptr @side_effects_p, i64 635280}
!65 = !{ptr @cleanup_cfg, ptr @cselib_init, i64 143870}
!66 = !{ptr @cleanup_cfg, ptr @cselib_process_insn, i64 1088570}
!67 = !{ptr @cleanup_cfg, ptr @bitmap_obstack_alloc_stat, i64 143870}
!68 = !{ptr @cleanup_cfg, ptr @bitmap_clear, i64 143870}
!69 = !{ptr @cleanup_cfg, ptr @mark_effect, i64 52510}
!70 = !{ptr @cleanup_cfg, ptr @bitmap_clear_bit, i64 23119}
!71 = !{ptr @cleanup_cfg, ptr @rtx_equal_for_cselib_p, i64 364043}
!72 = !{ptr @cleanup_cfg, ptr @bitmap_set_bit, i64 237350}
!73 = !{ptr @cleanup_cfg, ptr @for_each_rtx, i64 143870}
!74 = !{ptr @cleanup_cfg, ptr @bitmap_obstack_free, i64 143870}
!75 = !{ptr @cleanup_cfg, ptr @cselib_finish, i64 143870}
!76 = !{ptr @cleanup_cfg, ptr @xmalloc, i64 7}
!77 = !{ptr @cleanup_cfg, ptr @redirect_edge_and_branch_force, i64 7}
!78 = !{ptr @cleanup_cfg, ptr @redirect_edge_and_branch, i64 81219}
!79 = !{ptr @cleanup_cfg, ptr @update_bb_profile_for_threading, i64 7}
!80 = !{ptr @cleanup_cfg, ptr @update_br_prob_note, i64 7}
!81 = !{ptr @cleanup_cfg, ptr @free, i64 7}
!82 = !{ptr @cleanup_cfg, ptr @optimize_bb_for_size_p, i64 190592}
!83 = !{ptr @cleanup_cfg, ptr @computed_jump_p, i64 132462}
!84 = !{ptr @cleanup_cfg, ptr @try_crossjump_to_edge, i64 272214}
!85 = !{ptr @cleanup_cfg, ptr @run_fast_dce, i64 29}
!86 = !{ptr @cleanup_cfg, ptr @remove_fake_exit_edges, i64 38}
!87 = !{ptr @cleanup_cfg, ptr @delete_dead_jumptables, i64 114}
!88 = !{ptr @rest_of_handle_jump, ptr @fixup_tail_calls, i64 1}
!89 = !{ptr @rest_of_handle_jump2, ptr @get_insns, i64 38}
!90 = !{ptr @rest_of_handle_jump2, ptr @max_reg_num, i64 38}
!91 = !{ptr @rest_of_handle_jump2, ptr @delete_trivially_dead_insns, i64 38}
!92 = !{ptr @rest_of_handle_jump2, ptr @cleanup_cfg, i64 38}
!93 = !{ptr @mark_effect, ptr @bitmap_clear_bit, i64 3233}
!94 = !{ptr @mark_effect, ptr @rtx_equal_for_cselib_p, i64 50903}
!95 = !{ptr @mark_effect, ptr @bitmap_set_bit, i64 33188}
!96 = !{ptr @mentions_nonequal_regs, ptr @bitmap_bit_p, i64 148326}
!97 = !{ptr @try_crossjump_to_edge, ptr @simplejump_p, i64 53094}
!98 = !{ptr @try_crossjump_to_edge, ptr @any_condjump_p, i64 473601}
!99 = !{ptr @try_crossjump_to_edge, ptr @onlyjump_p, i64 505907}
!100 = !{ptr @try_crossjump_to_edge, ptr @pc_set, i64 14442}
!101 = !{ptr @try_crossjump_to_edge, ptr @reversed_comparison_code, i64 1272}
!102 = !{ptr @try_crossjump_to_edge, ptr @rtx_renumbered_equal_p, i64 6838}
!103 = !{ptr @try_crossjump_to_edge, ptr @swap_condition, i64 4588}
!104 = !{ptr @try_crossjump_to_edge, ptr @optimize_bb_for_speed_p, i64 4660}
!105 = !{ptr @try_crossjump_to_edge, ptr @tablejump_p, i64 1036}
!106 = !{ptr @try_crossjump_to_edge, ptr @old_insns_match_p, i64 26912}
!107 = !{ptr @try_crossjump_to_edge, ptr @find_reg_note, i64 606}
!108 = !{ptr @try_crossjump_to_edge, ptr @returnjump_p, i64 5219}
!109 = !{ptr @try_crossjump_to_edge, ptr @merge_memattrs, i64 10875}
!110 = !{ptr @try_crossjump_to_edge, ptr @find_reg_equal_equiv_note, i64 21750}
!111 = !{ptr @try_crossjump_to_edge, ptr @remove_note, i64 63}
!112 = !{ptr @try_crossjump_to_edge, ptr @rtx_equal_p, i64 1272}
!113 = !{ptr @try_crossjump_to_edge, ptr @block_label, i64 631}
!114 = !{ptr @try_crossjump_to_edge, ptr @split_block, i64 353}
!115 = !{ptr @try_crossjump_to_edge, ptr @df_set_bb_dirty, i64 335}
!116 = !{ptr @try_crossjump_to_edge, ptr @update_br_prob_note, i64 335}
!117 = !{ptr @try_crossjump_to_edge, ptr @redirect_edge_and_branch_force, i64 335}
!118 = !{ptr @try_crossjump_to_edge, ptr @delete_basic_block, i64 335}
!119 = !{ptr @try_crossjump_to_edge, ptr @forwarder_block_p, i64 353}
!120 = !{ptr @old_insns_match_p, ptr @rtx_equal_p, i64 1247}
!121 = !{ptr @old_insns_match_p, ptr @rtx_renumbered_equal_p, i64 20758}
!122 = !{ptr @merge_memattrs, ptr @mem_expr_equal_p, i64 8}
!123 = !{ptr @merge_memattrs, ptr @set_mem_expr, i64 16}
!124 = !{ptr @merge_memattrs, ptr @set_mem_offset, i64 16}
!125 = !{ptr @merge_memattrs, ptr @gen_rtx_CONST_INT, i64 8}
!126 = !{ptr @merge_memattrs, ptr @set_mem_size, i64 16}
!127 = !{ptr @merge_memattrs, ptr @set_mem_align, i64 16}
!128 = !{ptr @merge_memattrs, ptr @merge_memattrs, i64 85858}
!129 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!130 = !{!"function_entry_count", i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"any pointer", !133, i64 0}
!133 = !{!"omnipotent char", !134, i64 0}
!134 = !{!"Simple C/C++ TBAA"}
!135 = !{!136, !132, i64 8}
!136 = !{!"_IO_FILE", !137, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !132, i64 64, !132, i64 72, !132, i64 80, !132, i64 88, !132, i64 96, !132, i64 104, !137, i64 112, !137, i64 116, !138, i64 120, !139, i64 128, !133, i64 130, !133, i64 131, !132, i64 136, !138, i64 144, !132, i64 152, !132, i64 160, !132, i64 168, !132, i64 176, !138, i64 184, !137, i64 192, !133, i64 196}
!137 = !{!"int", !133, i64 0}
!138 = !{!"long", !133, i64 0}
!139 = !{!"short", !133, i64 0}
!140 = !{!136, !132, i64 16}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{!133, !133, i64 0}
!143 = !{!136, !132, i64 40}
!144 = !{!136, !132, i64 48}
!145 = !{!136, !137, i64 0}
!146 = !{!137, !137, i64 0}
!147 = distinct !{!147, !148, !149}
!148 = !{!"llvm.loop.mustprogress"}
!149 = !{!"llvm.loop.unroll.disable"}
!150 = !{!"function_entry_count", i64 1075}
!151 = !{!"branch_weights", i32 1075, i32 0}
!152 = !{!153, !132, i64 8}
!153 = !{!"function", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !132, i64 64, !132, i64 72, !132, i64 80, !132, i64 88, !132, i64 96, !137, i64 104, !137, i64 108, !137, i64 112, !137, i64 116, !137, i64 120, !137, i64 124, !132, i64 128, !137, i64 136, !137, i64 137, !137, i64 138, !137, i64 138, !137, i64 138, !137, i64 138, !137, i64 138, !137, i64 138, !137, i64 138, !137, i64 139, !137, i64 139, !137, i64 139, !137, i64 139, !137, i64 139, !137, i64 139, !137, i64 139}
!154 = !{!155, !132, i64 8}
!155 = !{!"control_flow_graph", !132, i64 0, !132, i64 8, !132, i64 16, !137, i64 24, !137, i64 28, !137, i64 32, !132, i64 40, !137, i64 48, !133, i64 52, !133, i64 60, !137, i64 68, !137, i64 72}
!156 = !{!157, !132, i64 48}
!157 = !{!"basic_block_def", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !133, i64 32, !132, i64 48, !132, i64 56, !133, i64 64, !138, i64 72, !137, i64 80, !137, i64 84, !137, i64 88, !137, i64 92, !137, i64 96}
!158 = !{!155, !132, i64 0}
!159 = !{!157, !137, i64 96}
!160 = !{!161, !137, i64 0}
!161 = !{!"VEC_basic_block_base", !137, i64 0, !137, i64 4, !133, i64 8}
!162 = distinct !{!162, !148, !149}
!163 = distinct !{!163, !148, !149}
!164 = !{!"branch_weights", i32 1, i32 1074}
!165 = !{!"branch_weights", i32 160, i32 5850927}
!166 = !{!"branch_weights", i32 1074, i32 5850013}
!167 = distinct !{!167, !148, !149}
!168 = !{!"branch_weights", i32 1036, i32 39}
!169 = !{!"function_entry_count", i64 228}
!170 = !{!157, !132, i64 56}
!171 = !{!"branch_weights", i32 1, i32 227}
!172 = !{!173, !132, i64 8}
!173 = !{!"rtl_bb_info", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !137, i64 32}
!174 = !{!"branch_weights", i32 996440, i32 485496}
!175 = !{!"branch_weights", i32 996250, i32 190}
!176 = !{!"branch_weights", i32 379072, i32 106614}
!177 = !{!"branch_weights", i32 1685, i32 377387}
!178 = !{!"branch_weights", i32 0, i32 1685}
!179 = !{!"branch_weights", i32 227, i32 1481709}
!180 = distinct !{!180, !148, !149}
!181 = !{!"branch_weights", i32 227, i32 996251}
!182 = distinct !{!182, !148, !149}
!183 = !{!"function_entry_count", i64 553}
!184 = !{!"branch_weights", i32 439, i32 114}
!185 = !{!"branch_weights", i32 553, i32 0}
!186 = !{i8 0, i8 2}
!187 = !{!"branch_weights", i32 515, i32 38}
!188 = !{!"branch_weights", i32 0, i32 38}
!189 = !{!"branch_weights", i32 38, i32 515}
!190 = !{!"branch_weights", i32 0, i32 553}
!191 = !{!"branch_weights", i32 623, i32 105}
!192 = !{!"branch_weights", i32 1, i32 727}
!193 = !{!"branch_weights", i32 3446710, i32 63562}
!194 = !{!"branch_weights", i32 727, i32 3509545}
!195 = distinct !{!195, !148, !149}
!196 = !{!197, !132, i64 976}
!197 = !{!"gcc_target", !198, i64 0, !200, i64 368, !201, i64 664, !137, i64 744, !132, i64 752, !132, i64 760, !132, i64 768, !132, i64 776, !132, i64 784, !132, i64 792, !132, i64 800, !132, i64 808, !132, i64 816, !132, i64 824, !132, i64 832, !132, i64 840, !132, i64 848, !132, i64 856, !132, i64 864, !132, i64 872, !132, i64 880, !132, i64 888, !132, i64 896, !132, i64 904, !132, i64 912, !132, i64 920, !132, i64 928, !132, i64 936, !132, i64 944, !132, i64 952, !132, i64 960, !132, i64 968, !132, i64 976, !132, i64 984, !132, i64 992, !132, i64 1000, !132, i64 1008, !132, i64 1016, !132, i64 1024, !132, i64 1032, !132, i64 1040, !132, i64 1048, !132, i64 1056, !138, i64 1064, !138, i64 1072, !132, i64 1080, !132, i64 1088, !132, i64 1096, !132, i64 1104, !132, i64 1112, !132, i64 1120, !132, i64 1128, !132, i64 1136, !132, i64 1144, !132, i64 1152, !132, i64 1160, !132, i64 1168, !202, i64 1176, !132, i64 1232, !132, i64 1240, !132, i64 1248, !132, i64 1256, !132, i64 1264, !132, i64 1272, !132, i64 1280, !132, i64 1288, !132, i64 1296, !132, i64 1304, !132, i64 1312, !132, i64 1320, !132, i64 1328, !132, i64 1336, !132, i64 1344, !132, i64 1352, !132, i64 1360, !132, i64 1368, !132, i64 1376, !132, i64 1384, !132, i64 1392, !132, i64 1400, !132, i64 1408, !132, i64 1416, !132, i64 1424, !132, i64 1432, !132, i64 1440, !132, i64 1448, !132, i64 1456, !138, i64 1464, !203, i64 1472, !132, i64 1664, !132, i64 1672, !132, i64 1680, !132, i64 1688, !132, i64 1696, !132, i64 1704, !132, i64 1712, !132, i64 1720, !132, i64 1728, !132, i64 1736, !132, i64 1744, !132, i64 1752, !132, i64 1760, !132, i64 1768, !132, i64 1776, !204, i64 1784, !205, i64 1792, !206, i64 1896, !207, i64 1968, !132, i64 2016, !133, i64 2024, !133, i64 2025, !133, i64 2026, !133, i64 2027, !133, i64 2028, !133, i64 2029, !133, i64 2030, !133, i64 2031, !133, i64 2032, !133, i64 2033, !133, i64 2034, !133, i64 2035}
!198 = !{!"asm_out", !132, i64 0, !132, i64 8, !132, i64 16, !199, i64 24, !199, i64 56, !132, i64 88, !132, i64 96, !132, i64 104, !132, i64 112, !132, i64 120, !132, i64 128, !132, i64 136, !132, i64 144, !132, i64 152, !132, i64 160, !132, i64 168, !132, i64 176, !132, i64 184, !132, i64 192, !132, i64 200, !132, i64 208, !132, i64 216, !132, i64 224, !132, i64 232, !132, i64 240, !132, i64 248, !132, i64 256, !132, i64 264, !132, i64 272, !132, i64 280, !132, i64 288, !132, i64 296, !132, i64 304, !132, i64 312, !132, i64 320, !132, i64 328, !132, i64 336, !132, i64 344, !132, i64 352, !132, i64 360}
!199 = !{!"asm_int_op", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24}
!200 = !{!"sched", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !132, i64 64, !132, i64 72, !132, i64 80, !132, i64 88, !132, i64 96, !132, i64 104, !132, i64 112, !132, i64 120, !132, i64 128, !132, i64 136, !132, i64 144, !132, i64 152, !132, i64 160, !132, i64 168, !132, i64 176, !132, i64 184, !132, i64 192, !132, i64 200, !132, i64 208, !132, i64 216, !132, i64 224, !132, i64 232, !132, i64 240, !132, i64 248, !132, i64 256, !132, i64 264, !132, i64 272, !132, i64 280, !132, i64 288}
!201 = !{!"vectorize", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !132, i64 64, !132, i64 72}
!202 = !{!"addr_space", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48}
!203 = !{!"calls", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !132, i64 64, !132, i64 72, !132, i64 80, !132, i64 88, !132, i64 96, !132, i64 104, !132, i64 112, !132, i64 120, !132, i64 128, !132, i64 136, !132, i64 144, !132, i64 152, !132, i64 160, !132, i64 168, !132, i64 176, !132, i64 184}
!204 = !{!"c", !132, i64 0}
!205 = !{!"cxx", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !132, i64 64, !132, i64 72, !132, i64 80, !132, i64 88, !132, i64 96}
!206 = !{!"emutls", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !133, i64 64, !133, i64 65}
!207 = !{!"target_option_hooks", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40}
!208 = !{!"VP", i32 0, i64 728, i64 588856467287548527, i64 728}
!209 = !{!"branch_weights", i32 728, i32 0}
!210 = !{!"branch_weights", i32 981, i32 0}
!211 = !{!"branch_weights", i32 1, i32 980}
!212 = !{!157, !132, i64 0}
!213 = !{!"branch_weights", i32 0, i32 4910063}
!214 = !{!215, !137, i64 0}
!215 = !{!"VEC_edge_base", !137, i64 0, !137, i64 4, !133, i64 8}
!216 = !{!"branch_weights", i32 55482, i32 4854581}
!217 = !{!157, !132, i64 8}
!218 = !{!"branch_weights", i32 0, i32 4854581}
!219 = !{!"branch_weights", i32 1209, i32 4853372}
!220 = !{!173, !132, i64 0}
!221 = !{!"branch_weights", i32 0, i32 1}
!222 = !{!"branch_weights", i32 0, i32 1209}
!223 = distinct !{!223, !149}
!224 = !{!225, !132, i64 8}
!225 = !{!"edge_def", !132, i64 0, !132, i64 8, !133, i64 16, !132, i64 24, !132, i64 32, !137, i64 40, !137, i64 44, !137, i64 48, !137, i64 52, !138, i64 56}
!226 = !{!"branch_weights", i32 196, i32 55286}
!227 = !{!"branch_weights", i32 0, i32 55482}
!228 = distinct !{!228, !148, !149}
!229 = !{!"branch_weights", i32 1307851, i32 3546730}
!230 = !{!"branch_weights", i32 0, i32 3546730}
!231 = !{!"branch_weights", i32 3546730, i32 0}
!232 = !{!225, !137, i64 48}
!233 = !{!"branch_weights", i32 819967, i32 2726763}
!234 = !{!"branch_weights", i32 0, i32 2726763}
!235 = !{!"branch_weights", i32 2726763, i32 0}
!236 = !{!"branch_weights", i32 1841, i32 2724922}
!237 = !{!"branch_weights", i32 0, i32 1841}
!238 = !{!"branch_weights", i32 1841, i32 0}
!239 = !{!225, !132, i64 0}
!240 = !{!157, !137, i64 80}
!241 = !{!"branch_weights", i32 934648, i32 3919933}
!242 = !{!"branch_weights", i32 0, i32 934648}
!243 = !{!"branch_weights", i32 285288, i32 649360}
!244 = !{!"branch_weights", i32 0, i32 649360}
!245 = !{!"branch_weights", i32 649360, i32 0}
!246 = !{!"branch_weights", i32 30658, i32 618702}
!247 = !{!"branch_weights", i32 0, i32 618702}
!248 = !{!"branch_weights", i32 605347, i32 13355}
!249 = !{!"branch_weights", i32 0, i32 13355}
!250 = !{!"branch_weights", i32 13355, i32 0}
!251 = !{!155, !137, i64 24}
!252 = !{!"branch_weights", i32 4125334, i32 729247}
!253 = !{!"branch_weights", i32 0, i32 729247}
!254 = !{!"branch_weights", i32 729247, i32 0}
!255 = !{!"branch_weights", i32 728937, i32 310}
!256 = !{!"branch_weights", i32 1447, i32 727490}
!257 = !{!"branch_weights", i32 0, i32 727490}
!258 = !{!"branch_weights", i32 727121, i32 369}
!259 = !{!"branch_weights", i32 251, i32 118}
!260 = !{!"branch_weights", i32 0, i32 118}
!261 = !{!"branch_weights", i32 108, i32 10}
!262 = !{!"branch_weights", i32 240, i32 11}
!263 = !{!"branch_weights", i32 0, i32 240}
!264 = !{!"branch_weights", i32 251, i32 0}
!265 = !{!"branch_weights", i32 11, i32 0}
!266 = !{!"branch_weights", i32 0, i32 11}
!267 = !{!"branch_weights", i32 166, i32 74}
!268 = !{!"branch_weights", i32 0, i32 74}
!269 = distinct !{!269, !148, !149}
!270 = distinct !{!270, !148, !149}
!271 = !{!"branch_weights", i32 11, i32 240}
!272 = !{!"branch_weights", i32 311308, i32 4543273}
!273 = !{!"branch_weights", i32 0, i32 311308}
!274 = !{!"branch_weights", i32 296358, i32 14950}
!275 = !{!"branch_weights", i32 0, i32 296358}
!276 = !{!"branch_weights", i32 162284, i32 134074}
!277 = !{!"branch_weights", i32 205984, i32 90374}
!278 = !{!"branch_weights", i32 0, i32 205984}
!279 = !{!"branch_weights", i32 201898, i32 4086}
!280 = !{!"branch_weights", i32 0, i32 4086}
!281 = !{!"branch_weights", i32 4086, i32 0}
!282 = !{!"branch_weights", i32 4125380, i32 729201}
!283 = !{!"branch_weights", i32 0, i32 729201}
!284 = !{!"branch_weights", i32 729201, i32 0}
!285 = !{!"branch_weights", i32 1827, i32 727374}
!286 = !{!"branch_weights", i32 608286, i32 119088}
!287 = !{!"branch_weights", i32 119088, i32 0}
!288 = !{!"branch_weights", i32 0, i32 119088}
!289 = !{!"branch_weights", i32 42625, i32 76463}
!290 = !{!"branch_weights", i32 76435, i32 28}
!291 = !{!"branch_weights", i32 4854581, i32 0}
!292 = !{!"branch_weights", i32 0, i32 13970539}
!293 = !{!"branch_weights", i32 4854581, i32 9115958}
!294 = !{!"branch_weights", i32 9115648, i32 310}
!295 = !{!"branch_weights", i32 0, i32 310}
!296 = !{!"branch_weights", i32 310, i32 0}
!297 = distinct !{!297, !148, !149}
!298 = !{!225, !137, i64 40}
!299 = !{!"branch_weights", i32 1517, i32 9114131}
!300 = !{!"branch_weights", i32 9114131, i32 0}
!301 = !{!"branch_weights", i32 9232700, i32 0}
!302 = !{!"branch_weights", i32 9114905, i32 117795}
!303 = !{!"branch_weights", i32 0, i32 117795}
!304 = !{!"branch_weights", i32 117795, i32 0}
!305 = !{!"branch_weights", i32 750, i32 117045}
!306 = !{!"branch_weights", i32 0, i32 117045}
!307 = !{!"branch_weights", i32 117045, i32 0}
!308 = !{!"branch_weights", i32 729501, i32 8386154}
!309 = !{!"branch_weights", i32 369650, i32 8746005}
!310 = !{!"branch_weights", i32 350875, i32 18775}
!311 = !{!"branch_weights", i32 0, i32 350875}
!312 = !{!"branch_weights", i32 281321, i32 69554}
!313 = !{!"branch_weights", i32 0, i32 281321}
!314 = !{!"branch_weights", i32 214698, i32 66623}
!315 = !{!"branch_weights", i32 0, i32 214698}
!316 = !{!"branch_weights", i32 77487, i32 137211}
!317 = !{!"branch_weights", i32 80872, i32 133826}
!318 = !{!"branch_weights", i32 811, i32 80061}
!319 = !{!"branch_weights", i32 322, i32 213565}
!320 = !{!"branch_weights", i32 0, i32 213565}
!321 = !{!"branch_weights", i32 1, i32 148325}
!322 = !{!"branch_weights", i32 594661, i32 113977}
!323 = !{!"branch_weights", i32 529422, i32 65239}
!324 = !{!"branch_weights", i32 148325, i32 560313}
!325 = distinct !{!325, !148, !149}
!326 = !{!"branch_weights", i32 591166, i32 57800}
!327 = !{!"branch_weights", i32 148325, i32 500641}
!328 = distinct !{!328, !148, !149}
!329 = !{!"branch_weights", i32 426222, i32 104898}
!330 = !{!"branch_weights", i32 27068, i32 399154}
!331 = !{!332, !137, i64 0}
!332 = !{!"rtvec_def", !137, i64 0, !133, i64 8}
!333 = !{!"branch_weights", i32 1, i32 27067}
!334 = !{!"branch_weights", i32 27069, i32 27067}
!335 = distinct !{!335, !148, !149}
!336 = !{!"branch_weights", i32 0, i32 27068, i32 426222}
!337 = !{!"branch_weights", i32 27068, i32 0}
!338 = distinct !{!338, !148, !149}
!339 = !{!"branch_weights", i32 426215, i32 7}
!340 = !{!"branch_weights", i32 148326, i32 277889}
!341 = !{!"branch_weights", i32 277889, i32 0}
!342 = !{!"branch_weights", i32 173454, i32 104435}
!343 = distinct !{!343, !148, !149}
!344 = !{!"branch_weights", i32 531120, i32 148326}
!345 = !{!"branch_weights", i32 382795, i32 148325}
!346 = distinct !{!346, !148, !149}
!347 = !{!"branch_weights", i32 148326, i32 0}
!348 = !{!"branch_weights", i32 7, i32 148319}
!349 = !{!350, !132, i64 0}
!350 = !{!"bitmap_head_def", !132, i64 0, !132, i64 8, !137, i64 16, !132, i64 24}
!351 = !{!"branch_weights", i32 7, i32 0}
!352 = !{!138, !138, i64 0}
!353 = distinct !{!353, !148, !149}
!354 = !{!355, !132, i64 0}
!355 = !{!"bitmap_element_def", !132, i64 0, !132, i64 8, !137, i64 16, !133, i64 24}
!356 = distinct !{!356, !149}
!357 = !{!"branch_weights", i32 369643, i32 7}
!358 = distinct !{!358, !148, !149}
!359 = !{!"branch_weights", i32 0, i32 7}
!360 = !{!"branch_weights", i32 369650, i32 0}
!361 = !{!"branch_weights", i32 9115648, i32 117052}
!362 = !{!"branch_weights", i32 117052, i32 9115648}
!363 = !{!"branch_weights", i32 9115648, i32 0}
!364 = !{!"branch_weights", i32 9034422, i32 81226}
!365 = !{!225, !138, i64 56}
!366 = !{!225, !137, i64 52}
!367 = !{!"branch_weights", i32 81219, i32 7}
!368 = !{!"branch_weights", i32 13268, i32 67951}
!369 = !{!"branch_weights", i32 13268, i32 0}
!370 = !{!"branch_weights", i32 0, i32 13268}
!371 = !{!157, !137, i64 88}
!372 = !{!"branch_weights", i32 67882, i32 76}
!373 = !{!"branch_weights", i32 67882, i32 0}
!374 = !{!"branch_weights", i32 0, i32 103697}
!375 = !{!"branch_weights", i32 7, i32 103690}
!376 = !{!157, !138, i64 72}
!377 = !{!"branch_weights", i32 0, i32 103690}
!378 = !{!"branch_weights", i32 103690, i32 0}
!379 = !{!"branch_weights", i32 67958, i32 35739}
!380 = distinct !{!380, !148, !149}
!381 = !{!"branch_weights", i32 0, i32 9034422}
!382 = !{!"branch_weights", i32 9034422, i32 0}
!383 = !{!"branch_weights", i32 0, i32 9034422, i32 81536}
!384 = !{!"branch_weights", i32 4854574, i32 7}
!385 = !{!"branch_weights", i32 4786852, i32 67729}
!386 = !{!"branch_weights", i32 4231241, i32 623340}
!387 = !{!"branch_weights", i32 0, i32 623506}
!388 = !{!"branch_weights", i32 432914, i32 190592}
!389 = !{!"branch_weights", i32 58130, i32 132462}
!390 = !{!"branch_weights", i32 0, i32 132462}
!391 = !{!"branch_weights", i32 132462, i32 0}
!392 = !{!"branch_weights", i32 190592, i32 0}
!393 = !{!394, !137, i64 8}
!394 = !{!"param_info", !132, i64 0, !137, i64 8, !133, i64 12, !137, i64 16, !137, i64 20, !132, i64 24}
!395 = !{!"branch_weights", i32 0, i32 190592}
!396 = !{!"branch_weights", i32 51, i32 190541}
!397 = !{!"branch_weights", i32 0, i32 348886}
!398 = !{!"branch_weights", i32 8469, i32 340417}
!399 = !{!"branch_weights", i32 158345, i32 182072}
!400 = !{!"branch_weights", i32 0, i32 158345}
!401 = !{!"branch_weights", i32 158345, i32 0}
!402 = distinct !{!402, !148, !149}
!403 = !{!"branch_weights", i32 0, i32 738033}
!404 = !{!"branch_weights", i32 547492, i32 190541}
!405 = !{!"branch_weights", i32 27304, i32 520188}
!406 = !{!"branch_weights", i32 182239, i32 337949}
!407 = !{!"branch_weights", i32 168664, i32 169285}
!408 = !{!"branch_weights", i32 167428, i32 1857}
!409 = !{!"branch_weights", i32 166751, i32 677}
!410 = !{!"branch_weights", i32 171091, i32 107}
!411 = distinct !{!411, !148, !149}
!412 = !{!"branch_weights", i32 66048, i32 132347}
!413 = !{!"branch_weights", i32 0, i32 436218}
!414 = !{!"branch_weights", i32 370398, i32 65820}
!415 = !{!"branch_weights", i32 122201, i32 248197}
!416 = !{!"branch_weights", i32 122913, i32 125284}
!417 = !{!"branch_weights", i32 85798, i32 39486}
!418 = !{!"branch_weights", i32 25703, i32 13783}
!419 = !{!"branch_weights", i32 24269, i32 1434}
!420 = !{!"branch_weights", i32 100787, i32 228}
!421 = distinct !{!421, !148, !149}
!422 = !{!"branch_weights", i32 190447, i32 94}
!423 = !{!"branch_weights", i32 4710179, i32 144402}
!424 = !{!"branch_weights", i32 980, i32 4909083}
!425 = !{!"branch_weights", i32 815, i32 166}
!426 = !{!"branch_weights", i32 728, i32 253}
!427 = distinct !{!427, !148, !149}
!428 = !{!"branch_weights", i32 727, i32 3455408}
!429 = distinct !{!429, !148, !149}
!430 = !{!"branch_weights", i32 545, i32 183}
!431 = !{!"branch_weights", i32 183, i32 0}
!432 = !{!"branch_weights", i32 122, i32 61}
!433 = !{!"branch_weights", i32 175, i32 8}
!434 = !{!"branch_weights", i32 8, i32 0}
!435 = !{!"branch_weights", i32 29, i32 146}
!436 = distinct !{!436, !148, !149}
!437 = !{!"branch_weights", i32 114, i32 439}
!438 = !{!"function_entry_count", i64 38}
!439 = !{!"cfgcleanup.c;rest_of_handle_jump"}
!440 = !{!441, !133, i64 475}
!441 = !{!"rtl_data", !442, i64 0, !443, i64 40, !444, i64 96, !445, i64 112, !447, i64 208, !448, i64 248, !137, i64 312, !132, i64 320, !132, i64 328, !132, i64 336, !132, i64 344, !132, i64 352, !132, i64 360, !132, i64 368, !132, i64 376, !132, i64 384, !132, i64 392, !138, i64 400, !132, i64 408, !132, i64 416, !132, i64 424, !137, i64 432, !137, i64 436, !137, i64 440, !137, i64 444, !137, i64 448, !137, i64 452, !132, i64 456, !133, i64 464, !133, i64 465, !133, i64 466, !133, i64 467, !133, i64 468, !133, i64 469, !133, i64 470, !133, i64 471, !133, i64 472, !133, i64 473, !133, i64 474, !133, i64 475, !133, i64 476, !133, i64 477, !133, i64 478, !133, i64 479, !133, i64 480, !133, i64 481, !133, i64 482, !133, i64 483, !133, i64 484, !133, i64 485}
!442 = !{!"expr_status", !137, i64 0, !137, i64 4, !137, i64 8, !132, i64 16, !132, i64 24, !132, i64 32}
!443 = !{!"emit_status", !137, i64 0, !137, i64 4, !132, i64 8, !132, i64 16, !132, i64 24, !137, i64 32, !137, i64 36, !137, i64 40, !137, i64 44, !132, i64 48}
!444 = !{!"varasm_status", !132, i64 0, !137, i64 8}
!445 = !{!"incoming_args", !137, i64 0, !137, i64 4, !137, i64 8, !132, i64 16, !446, i64 24, !132, i64 88}
!446 = !{!"ix86_args", !137, i64 0, !137, i64 4, !137, i64 8, !137, i64 12, !137, i64 16, !137, i64 20, !137, i64 24, !137, i64 28, !137, i64 32, !137, i64 36, !137, i64 40, !137, i64 44, !137, i64 48, !137, i64 52, !137, i64 56, !137, i64 60}
!447 = !{!"function_subsections", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32}
!448 = !{!"rtl_eh", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !132, i64 32, !132, i64 40, !133, i64 48}
!449 = !{!"branch_weights", i32 37, i32 1}
!450 = !{!"cfgcleanup.c;rest_of_handle_jump2"}
!451 = !{!"branch_weights", i32 38, i32 0}
!452 = !{!"function_entry_count", i64 54136}
!453 = !{!"cfgcleanup.c;mark_effect"}
!454 = !{!"function_entry_count", i64 296659}
!455 = !{!"cfgcleanup.c;mentions_nonequal_regs"}
!456 = !{!"branch_weights", i32 148326, i32 148333}
!457 = distinct !{!457, !148, !149}
!458 = !{!"function_entry_count", i64 272213}
!459 = !{!"cfgcleanup.c;try_crossjump_to_edge"}
!460 = !{!"branch_weights", i32 0, i32 272213}
!461 = !{!"branch_weights", i32 88036, i32 184177}
!462 = !{!"branch_weights", i32 171916, i32 12261}
!463 = !{!"branch_weights", i32 0, i32 12261}
!464 = !{!"branch_weights", i32 12261, i32 0}
!465 = !{!"branch_weights", i32 53862, i32 218351}
!466 = !{!"branch_weights", i32 207491, i32 10860}
!467 = !{!"branch_weights", i32 0, i32 10860}
!468 = !{!"branch_weights", i32 10860, i32 0}
!469 = !{!"branch_weights", i32 259952, i32 12261}
!470 = !{!"branch_weights", i32 261353, i32 10860}
!471 = !{!"branch_weights", i32 1078, i32 271135}
!472 = !{!"branch_weights", i32 0, i32 271135}
!473 = !{!"branch_weights", i32 215, i32 270920}
!474 = !{!"branch_weights", i32 0, i32 270920}
!475 = !{!"branch_weights", i32 242314, i32 28606}
!476 = !{!"branch_weights", i32 0, i32 28606}
!477 = !{!"branch_weights", i32 28606, i32 0}
!478 = !{!"branch_weights", i32 27987, i32 619}
!479 = !{!"branch_weights", i32 27987, i32 0}
!480 = !{!"branch_weights", i32 20, i32 27967}
!481 = !{!"branch_weights", i32 0, i32 27967}
!482 = !{!"branch_weights", i32 13217, i32 14750}
!483 = !{!"branch_weights", i32 13217, i32 0}
!484 = !{!"branch_weights", i32 11237, i32 1980}
!485 = !{!"branch_weights", i32 0, i32 242953}
!486 = !{!"branch_weights", i32 242283, i32 670}
!487 = !{!"branch_weights", i32 0, i32 242283}
!488 = !{!"branch_weights", i32 231318, i32 10965}
!489 = !{!"branch_weights", i32 0, i32 231318}
!490 = !{!"branch_weights", i32 114501, i32 116817}
!491 = !{!"branch_weights", i32 191044, i32 40274}
!492 = !{!"branch_weights", i32 213810, i32 17508}
!493 = !{!"branch_weights", i32 0, i32 17508}
!494 = !{!"branch_weights", i32 17508, i32 0}
!495 = !{!"branch_weights", i32 217472, i32 13846}
!496 = !{!"branch_weights", i32 0, i32 13846}
!497 = !{!"branch_weights", i32 13846, i32 0}
!498 = !{!"branch_weights", i32 231126, i32 192}
!499 = !{!"branch_weights", i32 231078, i32 48}
!500 = !{!"branch_weights", i32 231054, i32 24}
!501 = !{!"branch_weights", i32 231015, i32 39}
!502 = !{!"branch_weights", i32 5949, i32 225066}
!503 = !{!"branch_weights", i32 1272, i32 223794}
!504 = !{!"branch_weights", i32 7221, i32 0}
!505 = !{!"branch_weights", i32 5949, i32 1272}
!506 = !{!"branch_weights", i32 0, i32 7221}
!507 = !{!"branch_weights", i32 3374, i32 3847}
!508 = !{!"branch_weights", i32 741, i32 2633}
!509 = !{!"branch_weights", i32 0, i32 2633}
!510 = !{!"branch_weights", i32 831, i32 3757}
!511 = !{!"branch_weights", i32 831, i32 0}
!512 = !{!"branch_weights", i32 2633, i32 4588}
!513 = !{!"branch_weights", i32 606, i32 2027}
!514 = !{!"branch_weights", i32 168, i32 1859}
!515 = !{!"branch_weights", i32 1847, i32 12}
!516 = !{!"branch_weights", i32 1859, i32 0}
!517 = !{!"branch_weights", i32 639, i32 31}
!518 = !{!"branch_weights", i32 31, i32 0}
!519 = distinct !{!519, !148, !149}
!520 = !{!521, !132, i64 0}
!521 = !{!"replace_label_data", !132, i64 0, !132, i64 8, !133, i64 16}
!522 = !{!521, !132, i64 8}
!523 = !{!521, !133, i64 16}
!524 = !{!"branch_weights", i32 670, i32 0}
!525 = !{!"branch_weights", i32 367, i32 303}
!526 = !{!"branch_weights", i32 0, i32 303}
!527 = !{!"branch_weights", i32 303, i32 0}
!528 = !{!"branch_weights", i32 0, i32 606}
!529 = !{!"branch_weights", i32 303, i32 303}
!530 = distinct !{!530, !148, !149}
!531 = distinct !{!531, !148, !149}
!532 = distinct !{!532, !148, !149}
!533 = !{!"branch_weights", i32 254767, i32 16153}
!534 = !{!"branch_weights", i32 303, i32 15850}
!535 = !{!"branch_weights", i32 2283, i32 13870}
!536 = !{!"branch_weights", i32 2283, i32 0}
!537 = !{!"branch_weights", i32 2633, i32 11237}
!538 = !{!"branch_weights", i32 2329, i32 24409}
!539 = !{!"branch_weights", i32 290, i32 2039}
!540 = !{!"branch_weights", i32 0, i32 2329}
!541 = distinct !{!541, !148, !149}
!542 = !{!"branch_weights", i32 3559, i32 22692}
!543 = !{!"branch_weights", i32 777, i32 2782}
!544 = !{!"branch_weights", i32 0, i32 3559}
!545 = distinct !{!545, !148, !149}
!546 = !{!"branch_weights", i32 290, i32 26738}
!547 = !{!"branch_weights", i32 496, i32 26242}
!548 = !{!"branch_weights", i32 15367, i32 10875}
!549 = !{!"branch_weights", i32 10875, i32 0}
!550 = !{!"branch_weights", i32 9588, i32 1287}
!551 = !{!"branch_weights", i32 10860, i32 15}
!552 = !{!"branch_weights", i32 9588, i32 1272}
!553 = !{!"branch_weights", i32 22, i32 10838}
!554 = !{!"branch_weights", i32 1272, i32 9566}
!555 = !{!"branch_weights", i32 13, i32 1259}
!556 = distinct !{!556, !149}
!557 = !{!"branch_weights", i32 9155, i32 6998}
!558 = !{!"branch_weights", i32 289, i32 8890}
!559 = !{!"branch_weights", i32 6709, i32 2181}
!560 = distinct !{!560, !148, !149}
!561 = !{!"branch_weights", i32 289, i32 6709}
!562 = !{!"branch_weights", i32 0, i32 6709}
!563 = !{!"branch_weights", i32 777, i32 9529}
!564 = !{!"branch_weights", i32 6221, i32 3308}
!565 = distinct !{!565, !148, !149}
!566 = !{!"branch_weights", i32 777, i32 6221}
!567 = !{!"branch_weights", i32 0, i32 6221}
!568 = !{!"branch_weights", i32 16031, i32 122}
!569 = !{!"branch_weights", i32 213, i32 15818}
!570 = !{!"branch_weights", i32 0, i32 335}
!571 = !{!"branch_weights", i32 39, i32 296}
!572 = !{!"branch_weights", i32 335, i32 0}
!573 = distinct !{!573, !148, !149}
!574 = !{!"branch_weights", i32 317, i32 18}
!575 = !{!"branch_weights", i32 317, i32 0}
!576 = !{!"branch_weights", i32 0, i32 18}
!577 = distinct !{!577, !148, !149}
!578 = distinct !{!578, !148, !149}
!579 = !{!"branch_weights", i32 18, i32 0}
!580 = !{!"branch_weights", i32 0, i32 730}
!581 = !{!"branch_weights", i32 335, i32 395}
!582 = !{!"branch_weights", i32 364, i32 31}
!583 = !{!"branch_weights", i32 0, i32 31}
!584 = !{!"branch_weights", i32 0, i32 455}
!585 = !{!"branch_weights", i32 352, i32 103}
!586 = !{!"branch_weights", i32 0, i32 103}
!587 = !{!"branch_weights", i32 103, i32 0}
!588 = !{!"branch_weights", i32 395, i32 60}
!589 = !{!"branch_weights", i32 0, i32 60}
!590 = !{!"branch_weights", i32 60, i32 0}
!591 = distinct !{!591, !148, !149}
!592 = !{!"branch_weights", i32 335, i32 60}
!593 = !{!"branch_weights", i32 23, i32 372}
!594 = !{!"branch_weights", i32 22, i32 1}
!595 = !{!"branch_weights", i32 0, i32 395}
!596 = !{!"branch_weights", i32 395, i32 0}
!597 = distinct !{!597, !148, !149}
!598 = !{!"branch_weights", i32 168, i32 167}
!599 = !{!"branch_weights", i32 46, i32 0, i32 289}
!600 = distinct !{!600, !148, !149}
!601 = !{!"branch_weights", i32 289, i32 0}
!602 = distinct !{!602, !148, !149}
!603 = !{!"branch_weights", i32 46, i32 289}
!604 = !{!"function_entry_count", i64 26912}
!605 = !{!"cfgcleanup.c;old_insns_match_p"}
!606 = !{!"branch_weights", i32 26271, i32 641}
!607 = !{!"branch_weights", i32 0, i32 26271}
!608 = !{!"branch_weights", i32 20758, i32 5513}
!609 = !{!"branch_weights", i32 1247, i32 19511}
!610 = !{!"branch_weights", i32 0, i32 1247}
!611 = !{!"branch_weights", i32 1247, i32 0}
!612 = !{!"branch_weights", i32 20758, i32 0}
!613 = distinct !{!613, !148, !149}
!614 = distinct !{!614, !148, !149}
!615 = !{!"branch_weights", i32 0, i32 20758}
!616 = !{!"branch_weights", i32 9580, i32 11178}
!617 = !{!"function_entry_count", i64 96733}
!618 = !{!"cfgcleanup.c;merge_memattrs"}
!619 = !{!"branch_weights", i32 32213, i32 64520}
!620 = !{!"branch_weights", i32 37, i32 64483}
!621 = !{!"branch_weights", i32 64483, i32 0}
!622 = !{!"branch_weights", i32 5340, i32 59143}
!623 = !{!"branch_weights", i32 5332, i32 8}
!624 = !{!"branch_weights", i32 0, i32 8}
!625 = !{!626, !137, i64 24}
!626 = !{!"mem_attrs", !132, i64 0, !132, i64 8, !132, i64 16, !137, i64 24, !137, i64 28, !133, i64 32}
!627 = !{!626, !132, i64 0}
!628 = !{!626, !132, i64 8}
!629 = !{!626, !132, i64 16}
!630 = !{!626, !137, i64 28}
!631 = !{!"branch_weights", i32 1, i32 64482}
!632 = !{!"branch_weights", i32 122630, i32 1816, i32 82209}
!633 = !{!"branch_weights", i32 1816, i32 0}
!634 = !{!"branch_weights", i32 1815, i32 1}
!635 = !{!"branch_weights", i32 1834, i32 1815}
!636 = distinct !{!636, !148, !149}
!637 = !{!"branch_weights", i32 142173, i32 64482}
!638 = distinct !{!638, !148, !149}
