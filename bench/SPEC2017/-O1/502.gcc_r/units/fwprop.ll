; ModuleID = 'fwprop.c'
source_filename = "fwprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_df_ref_base = type { i32, i32, [1 x ptr] }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_md_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.find_occurrence_data = type { ptr, ptr }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"fwprop1\00", align 1
@pass_rtl_fwprop = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_fwprop, ptr @fwprop, ptr null, ptr null, i32 0, i32 120, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"fwprop2\00", align 1
@pass_rtl_fwprop_addr = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_fwprop, ptr @fwprop_addr, ptr null, ptr null, i32 0, i32 120, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_forward_propagate = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@num_changes = internal unnamed_addr global i32 0, align 4
@use_def_ref = internal unnamed_addr global ptr null, align 8
@reg_defs = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@reg_defs_stack = internal unnamed_addr global ptr null, align 8
@local_md = internal unnamed_addr global ptr null, align 8
@local_lr = internal unnamed_addr global ptr null, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"fwprop.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"\0AIn insn %d, replacing\0A \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0A with \00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Changes to insn %d not recognized\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Changes to insn %d not profitable\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Changed insn %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c" Setting REG_EQUAL note\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\0ANumber of successful forward propagations: %d\0A\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !110 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !111
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !110 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !111
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !110 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !121

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !115
  %11 = load i8, ptr %3, align 1, !tbaa !122
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !110 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !121

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !115
  %11 = load i8, ptr %3, align 1, !tbaa !122
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !110 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !121

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !115
  %11 = load i8, ptr %3, align 1, !tbaa !122
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !110 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !111
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !110 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !121

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !123
  store i8 %12, ptr %4, align 1, !tbaa !122
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !110 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !121

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !123
  store i8 %12, ptr %4, align 1, !tbaa !122
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !110 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !111
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !121

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !123
  store i8 %12, ptr %4, align 1, !tbaa !122
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !110 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !110 {
  %2 = load i32, ptr %0, align 8, !tbaa !125
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !110 {
  %2 = load i32, ptr %0, align 8, !tbaa !125
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !110 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !126
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !110 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !126
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !110 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !110 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !110 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !110 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !127

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !110 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_fwprop() #9 !prof !130 !PGOFuncName !131 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !126
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_forward_propagate, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !132
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fwprop() #10 !prof !133 !PGOFuncName !134 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  tail call fastcc void @fwprop_init()
  %3 = load ptr, ptr @df, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 4, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !135
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %692, label %7, !prof !138

7:                                                ; preds = %0, %685
  %8 = phi i64 [ %686, %685 ], [ 0, %0 ]
  %9 = phi ptr [ %687, %685 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = getelementptr inbounds ptr, ptr %11, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = icmp eq ptr %13, null
  br i1 %14, label %685, label %15, !prof !140

15:                                               ; preds = %7
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65280
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %64, label %19, !prof !141

19:                                               ; preds = %15
  %20 = and i32 %16, 255
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24, !prof !142

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.df_artificial_ref, ptr %13, i64 0, i32 1
  br label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !122
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 1
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi ptr [ %23, %22 ], [ %28, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !122
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !145
  %34 = icmp eq ptr %33, null
  br i1 %34, label %64, label %35, !prof !142

35:                                               ; preds = %29
  br i1 %21, label %36, label %38, !prof !142

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.df_artificial_ref, ptr %13, i64 0, i32 1
  br label %43

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !122
  %41 = load ptr, ptr %40, align 8, !tbaa !143
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  br label %43

43:                                               ; preds = %38, %36
  %44 = phi ptr [ %37, %36 ], [ %42, %38 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !122
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !145
  %48 = getelementptr inbounds %struct.loop, ptr %47, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !147
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !151

51:                                               ; preds = %43
  %52 = load i32, ptr %49, align 8, !tbaa !152
  br label %53

53:                                               ; preds = %51, %43
  %54 = phi i32 [ %52, %51 ], [ 0, %43 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56, !prof !151

56:                                               ; preds = %53
  %57 = add i32 %54, -1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %49, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  br label %61

61:                                               ; preds = %53, %56
  %62 = phi ptr [ %60, %56 ], [ null, %53 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %685, !prof !151

64:                                               ; preds = %61, %29, %15
  %65 = and i32 %16, 2097152
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %16, 255
  %68 = icmp eq i32 %67, 1
  %69 = or i1 %66, %68
  br i1 %69, label %685, label %70, !prof !154

70:                                               ; preds = %64
  %71 = load ptr, ptr @use_def_ref, align 8
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 7
  %73 = load i32, ptr %72, align 4, !tbaa !122
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %71, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !111
  %77 = icmp eq ptr %76, null
  br i1 %77, label %685, label %78, !prof !155

78:                                               ; preds = %70
  %79 = load i32, ptr %76, align 8
  %80 = and i32 %79, 2097152
  %81 = icmp ne i32 %80, 0
  %82 = and i32 %79, 255
  %83 = icmp eq i32 %82, 1
  %84 = or i1 %81, %83
  br i1 %84, label %685, label %85, !prof !156

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.df_base_ref, ptr %76, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !122
  %88 = load ptr, ptr %87, align 8, !tbaa !143
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !122
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !145
  %93 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !122
  %95 = load ptr, ptr %94, align 8, !tbaa !143
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !122
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !145
  %100 = icmp eq ptr %92, %99
  br i1 %100, label %101, label %685, !prof !157

101:                                              ; preds = %85
  %102 = and i32 %16, 262144
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104, !prof !158

104:                                              ; preds = %101
  %105 = call ptr @find_reg_note(ptr noundef %95, i32 noundef 4, ptr noundef null) #19
  br label %109

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !122
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi ptr [ %105, %104 ], [ %108, %106 ]
  %111 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !122
  %113 = call i32 @reg_mentioned_p(ptr noundef %112, ptr noundef %110) #19
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %685, label %115, !prof !159

115:                                              ; preds = %109
  %116 = load ptr, ptr %86, align 8, !tbaa !122
  %117 = load ptr, ptr %116, align 8, !tbaa !143
  %118 = call i32 @multiple_sets(ptr noundef %117) #19
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %685, !prof !157

120:                                              ; preds = %115
  %121 = load i32, ptr %117, align 8
  %122 = and i32 %121, 65535
  %123 = add nsw i32 %122, -7
  %124 = icmp ult i32 %123, 4
  br i1 %124, label %125, label %133, !prof !157

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !122
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 23
  br i1 %130, label %133, label %131, !prof !160

131:                                              ; preds = %125
  %132 = call ptr @single_set_2(ptr noundef nonnull %117, ptr noundef nonnull %127) #19
  br label %133

133:                                              ; preds = %131, %125, %120
  %134 = phi ptr [ %132, %131 ], [ null, %120 ], [ %127, %125 ]
  %135 = icmp eq ptr %134, null
  br i1 %135, label %685, label %136, !prof !159

136:                                              ; preds = %133
  %137 = load ptr, ptr %93, align 8, !tbaa !122
  %138 = load ptr, ptr %137, align 8, !tbaa !143
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = add nsw i32 %140, -7
  %142 = icmp ult i32 %141, 4
  br i1 %142, label %143, label %151, !prof !157

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !122
  %146 = load i32, ptr %145, align 8
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 23
  br i1 %148, label %151, label %149, !prof !161

149:                                              ; preds = %143
  %150 = call ptr @single_set_2(ptr noundef nonnull %138, ptr noundef nonnull %145) #19
  br label %151

151:                                              ; preds = %149, %143, %136
  %152 = phi ptr [ %150, %149 ], [ null, %136 ], [ %145, %143 ]
  %153 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 1, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !122
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %160, !prof !162

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !122
  %159 = call i32 @asm_noperands(ptr noundef %158) #19
  br label %160

160:                                              ; preds = %156, %151
  %161 = phi i32 [ %159, %156 ], [ -1, %151 ]
  %162 = icmp eq ptr %152, null
  %163 = icmp slt i32 %161, 0
  %164 = select i1 %162, i1 %163, i1 false, !prof !162
  br i1 %164, label %165, label %169, !prof !162

165:                                              ; preds = %160
  %166 = load i32, ptr %138, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 7
  br i1 %168, label %169, label %589, !prof !163

169:                                              ; preds = %165, %160
  %170 = icmp ne ptr %152, null
  br i1 %170, label %171, label %177, !prof !164

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !122
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 16711680
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %589, label %177, !prof !165

177:                                              ; preds = %171, %169
  %178 = load ptr, ptr %111, align 8, !tbaa !122
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 39
  br i1 %181, label %182, label %198, !prof !166

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !122
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 39
  br i1 %187, label %188, label %198, !prof !167

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 0, i64 1
  %190 = load i32, ptr %189, align 8, !tbaa !122
  %191 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 1
  %192 = load i32, ptr %191, align 8, !tbaa !122
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %589

194:                                              ; preds = %188
  %195 = xor i32 %185, %179
  %196 = and i32 %195, 16711680
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %589

198:                                              ; preds = %194, %182, %177
  %199 = icmp eq i32 %180, 37
  br i1 %199, label %200, label %206, !prof !168

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !122
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 39
  br i1 %205, label %589, label %206, !prof !169

206:                                              ; preds = %200, %198
  br i1 %181, label %207, label %216, !prof !166

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !122
  %210 = load i32, ptr %209, align 8
  %211 = and i32 %210, 65535
  %212 = icmp eq i32 %211, 37
  br i1 %212, label %213, label %216, !prof !170

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !122
  br label %216

216:                                              ; preds = %213, %207, %206
  %217 = phi ptr [ %215, %213 ], [ %178, %207 ], [ %178, %206 ]
  %218 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 1
  %219 = load ptr, ptr %218, align 8, !tbaa !122
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !126
  %225 = icmp eq i32 %224, 9
  br i1 %225, label %343, label %226, !prof !171

226:                                              ; preds = %216
  %227 = load ptr, ptr @df, align 8, !tbaa !111
  %228 = getelementptr inbounds %struct.df, ptr %227, i64 0, i32 10
  %229 = load ptr, ptr %228, align 8, !tbaa !172
  %230 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !122
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds ptr, ptr %229, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !111
  %235 = load i32, ptr %117, align 8
  %236 = and i32 %235, 65535
  %237 = add nsw i32 %236, -7
  %238 = icmp ult i32 %237, 4
  br i1 %238, label %239, label %247, !prof !173

239:                                              ; preds = %226
  %240 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !122
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 23
  br i1 %244, label %247, label %245, !prof !174

245:                                              ; preds = %239
  %246 = call ptr @single_set_2(ptr noundef nonnull %117, ptr noundef nonnull %241) #19
  br label %247

247:                                              ; preds = %245, %239, %226
  %248 = phi ptr [ %246, %245 ], [ null, %226 ], [ %241, %239 ]
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %251, !prof !175

250:                                              ; preds = %247
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 796, ptr noundef nonnull @.str.3) #19
  br label %251

251:                                              ; preds = %250, %247
  %252 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 2
  %253 = load ptr, ptr %252, align 8, !tbaa !122
  %254 = icmp eq ptr %253, %138
  br i1 %254, label %255, label %293, !prof !176

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.rtx_def, ptr %248, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !122
  %258 = load i32, ptr %257, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 37
  br i1 %260, label %261, label %293, !prof !177

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.df_insn_info, ptr %234, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !178
  %264 = load ptr, ptr %263, align 8, !tbaa !111
  %265 = icmp eq ptr %264, null
  br i1 %265, label %277, label %270, !prof !179

266:                                              ; preds = %270
  %267 = getelementptr inbounds ptr, ptr %272, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !111
  %269 = icmp eq ptr %268, null
  br i1 %269, label %277, label %270, !prof !180, !llvm.loop !181

270:                                              ; preds = %261, %266
  %271 = phi ptr [ %268, %266 ], [ %264, %261 ]
  %272 = phi ptr [ %267, %266 ], [ %263, %261 ]
  %273 = getelementptr inbounds %struct.df_base_ref, ptr %271, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !122
  %275 = call i32 @rtx_equal_p(ptr noundef %274, ptr noundef nonnull %257) #19
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %266, label %589, !prof !180

277:                                              ; preds = %266, %261
  %278 = getelementptr inbounds %struct.df_insn_info, ptr %234, i64 0, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !182
  %280 = load ptr, ptr %279, align 8, !tbaa !111
  %281 = icmp eq ptr %280, null
  br i1 %281, label %343, label %286, !prof !183

282:                                              ; preds = %286
  %283 = getelementptr inbounds ptr, ptr %288, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !111
  %285 = icmp eq ptr %284, null
  br i1 %285, label %343, label %286, !prof !184, !llvm.loop !185

286:                                              ; preds = %277, %282
  %287 = phi ptr [ %284, %282 ], [ %280, %277 ]
  %288 = phi ptr [ %283, %282 ], [ %279, %277 ]
  %289 = getelementptr inbounds %struct.df_base_ref, ptr %287, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !122
  %291 = call i32 @rtx_equal_p(ptr noundef %290, ptr noundef nonnull %257) #19
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %282, label %589, !prof !184

293:                                              ; preds = %255, %251
  %294 = getelementptr inbounds %struct.rtx_def, ptr %248, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !122
  %296 = load i32, ptr %295, align 8
  %297 = and i32 %296, 65535
  %298 = icmp eq i32 %297, 37
  %299 = select i1 %298, ptr %295, ptr null, !prof !186
  %300 = getelementptr inbounds %struct.df_insn_info, ptr %234, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !178
  %302 = load ptr, ptr %301, align 8, !tbaa !111
  %303 = icmp eq ptr %302, null
  br i1 %303, label %321, label %304, !prof !187

304:                                              ; preds = %293
  %305 = icmp eq ptr %299, null
  br label %310

306:                                              ; preds = %318
  %307 = getelementptr inbounds ptr, ptr %312, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !111
  %309 = icmp eq ptr %308, null
  br i1 %309, label %321, label %310, !prof !188, !llvm.loop !189

310:                                              ; preds = %306, %304
  %311 = phi ptr [ %302, %304 ], [ %308, %306 ]
  %312 = phi ptr [ %301, %304 ], [ %307, %306 ]
  br i1 %305, label %318, label %313, !prof !190

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.df_base_ref, ptr %311, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !122
  %316 = call i32 @rtx_equal_p(ptr noundef %315, ptr noundef nonnull %299) #19
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %589, !prof !191

318:                                              ; preds = %313, %310
  %319 = call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %311, ptr noundef nonnull %117, ptr noundef nonnull %138)
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %306, label %589, !prof !192

321:                                              ; preds = %306, %293
  %322 = getelementptr inbounds %struct.df_insn_info, ptr %234, i64 0, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !182
  %324 = load ptr, ptr %323, align 8, !tbaa !111
  %325 = icmp eq ptr %324, null
  br i1 %325, label %343, label %326, !prof !193

326:                                              ; preds = %321
  %327 = icmp eq ptr %299, null
  br label %332

328:                                              ; preds = %340
  %329 = getelementptr inbounds ptr, ptr %334, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !111
  %331 = icmp eq ptr %330, null
  br i1 %331, label %343, label %332, !prof !194, !llvm.loop !195

332:                                              ; preds = %328, %326
  %333 = phi ptr [ %324, %326 ], [ %330, %328 ]
  %334 = phi ptr [ %323, %326 ], [ %329, %328 ]
  br i1 %327, label %340, label %335, !prof !196

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.df_base_ref, ptr %333, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !122
  %338 = call i32 @rtx_equal_p(ptr noundef %337, ptr noundef nonnull %299) #19
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %589, !prof !194

340:                                              ; preds = %335, %332
  %341 = call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %333, ptr noundef nonnull %117, ptr noundef nonnull %138)
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %328, label %589, !prof !194

343:                                              ; preds = %328, %282, %321, %277, %216
  %344 = load i32, ptr %219, align 8
  %345 = and i32 %344, 67174399
  %346 = icmp eq i32 %345, 67108907
  br i1 %346, label %347, label %363, !prof !197

347:                                              ; preds = %343
  %348 = call ptr @avoid_constant_pool_reference(ptr noundef nonnull %219) #19
  %349 = icmp ne ptr %348, %219
  %350 = and i1 %170, %349
  br i1 %350, label %351, label %589

351:                                              ; preds = %347
  %352 = call ptr @find_reg_note(ptr noundef nonnull %138, i32 noundef 4, ptr noundef null) #19
  %353 = icmp eq ptr %352, null
  %354 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 0, i32 1
  %355 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 1
  %356 = select i1 %353, ptr %355, ptr %354
  %357 = load ptr, ptr %356, align 8, !tbaa !122
  %358 = call ptr @simplify_replace_rtx(ptr noundef %357, ptr noundef nonnull %219, ptr noundef %348) #19
  %359 = icmp eq ptr %357, %358
  br i1 %359, label %589, label %360

360:                                              ; preds = %351
  %361 = call ptr @copy_rtx(ptr noundef %358) #19
  %362 = call ptr @set_unique_reg_note(ptr noundef nonnull %138, i32 noundef 4, ptr noundef %361) #19
  br label %589

363:                                              ; preds = %343
  %364 = icmp sgt i32 %161, -1
  br i1 %364, label %365, label %495, !prof !197

365:                                              ; preds = %363
  %366 = load ptr, ptr %93, align 8, !tbaa !122
  %367 = load ptr, ptr %366, align 8, !tbaa !143
  %368 = load i32, ptr %13, align 8
  %369 = and i32 %368, 262144
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %372, label %371

371:                                              ; preds = %365
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1152, ptr noundef nonnull @.str.3) #19
  br label %372

372:                                              ; preds = %371, %365
  %373 = load ptr, ptr %218, align 8, !tbaa !122
  %374 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !122
  %376 = load ptr, ptr @df, align 8, !tbaa !111
  %377 = getelementptr inbounds %struct.df, ptr %376, i64 0, i32 10
  %378 = load ptr, ptr %377, align 8, !tbaa !172
  %379 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %380 = load i32, ptr %379, align 8, !tbaa !122
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds ptr, ptr %378, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !111
  %384 = getelementptr inbounds %struct.df_insn_info, ptr %383, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !178
  %386 = load ptr, ptr %385, align 8, !tbaa !111
  %387 = icmp eq ptr %386, null
  br i1 %387, label %392, label %388

388:                                              ; preds = %372
  %389 = getelementptr inbounds ptr, ptr %385, i64 1
  %390 = load ptr, ptr %389, align 8, !tbaa !111
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %589

392:                                              ; preds = %388, %372
  %393 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1, i32 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !122
  %395 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %394) #19
  %396 = load i32, ptr %375, align 8
  %397 = trunc i32 %396 to i16
  switch i16 %397, label %454 [
    i16 17, label %455
    i16 23, label %403
    i16 15, label %398
  ]

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !122
  %401 = load i32, ptr %400, align 8, !tbaa !198
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %419, label %455

403:                                              ; preds = %392
  %404 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !122
  %406 = load i32, ptr %405, align 8
  %407 = and i32 %406, 65535
  %408 = icmp eq i32 %407, 43
  br i1 %408, label %409, label %416

409:                                              ; preds = %403
  %410 = lshr i32 %406, 16
  %411 = and i32 %410, 255
  %412 = call fastcc ptr @propagate_rtx(ptr noundef nonnull %405, i32 noundef %411, ptr noundef %217, ptr noundef %373, i8 noundef zeroext %395)
  %413 = icmp eq ptr %412, null
  br i1 %413, label %416, label %414

414:                                              ; preds = %409
  %415 = call zeroext i8 @validate_unshare_change(ptr noundef %367, ptr noundef nonnull %404, ptr noundef nonnull %412, i8 noundef zeroext 1) #19
  br label %416

416:                                              ; preds = %414, %409, %403
  %417 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1, i32 0, i32 0, i64 1
  %418 = load ptr, ptr %417, align 8, !tbaa !122
  br label %455

419:                                              ; preds = %398, %447
  %420 = phi i64 [ %449, %447 ], [ 0, %398 ]
  %421 = phi ptr [ %450, %447 ], [ %400, %398 ]
  %422 = phi ptr [ %448, %447 ], [ null, %398 ]
  %423 = getelementptr inbounds %struct.rtvec_def, ptr %421, i64 0, i32 1, i64 %420
  %424 = load ptr, ptr %423, align 8, !tbaa !111
  %425 = load i32, ptr %424, align 8
  %426 = trunc i32 %425 to i16
  switch i16 %426, label %447 [
    i16 23, label %427
    i16 17, label %446
  ]

427:                                              ; preds = %419
  %428 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !122
  %430 = load i32, ptr %429, align 8
  %431 = and i32 %430, 65535
  %432 = icmp eq i32 %431, 43
  br i1 %432, label %433, label %440

433:                                              ; preds = %427
  %434 = lshr i32 %430, 16
  %435 = and i32 %434, 255
  %436 = call fastcc ptr @propagate_rtx(ptr noundef nonnull %429, i32 noundef %435, ptr noundef %217, ptr noundef %373, i8 noundef zeroext %395)
  %437 = icmp eq ptr %436, null
  br i1 %437, label %440, label %438

438:                                              ; preds = %433
  %439 = call zeroext i8 @validate_unshare_change(ptr noundef %367, ptr noundef nonnull %428, ptr noundef nonnull %436, i8 noundef zeroext 1) #19
  br label %440

440:                                              ; preds = %438, %433, %427
  %441 = load ptr, ptr %399, align 8, !tbaa !122
  %442 = getelementptr inbounds %struct.rtvec_def, ptr %441, i64 0, i32 1, i64 %420
  %443 = load ptr, ptr %442, align 8, !tbaa !111
  %444 = getelementptr inbounds %struct.rtx_def, ptr %443, i64 0, i32 1, i32 0, i32 0, i64 1
  %445 = load ptr, ptr %444, align 8, !tbaa !122
  br label %447

446:                                              ; preds = %419
  br label %447

447:                                              ; preds = %446, %440, %419
  %448 = phi ptr [ %445, %440 ], [ %424, %446 ], [ %422, %419 ]
  %449 = add nuw nsw i64 %420, 1
  %450 = load ptr, ptr %399, align 8, !tbaa !122
  %451 = load i32, ptr %450, align 8, !tbaa !198
  %452 = sext i32 %451 to i64
  %453 = icmp slt i64 %449, %452
  br i1 %453, label %419, label %455, !llvm.loop !200

454:                                              ; preds = %392
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1198, ptr noundef nonnull @.str.3) #19
  br label %455

455:                                              ; preds = %447, %454, %416, %398, %392
  %456 = phi ptr [ null, %454 ], [ %418, %416 ], [ %375, %392 ], [ null, %398 ], [ %448, %447 ]
  %457 = icmp eq ptr %456, null
  br i1 %457, label %462, label %458

458:                                              ; preds = %455
  %459 = load i32, ptr %456, align 8
  %460 = and i32 %459, 65535
  %461 = icmp eq i32 %460, 17
  br i1 %461, label %463, label %462

462:                                              ; preds = %458, %455
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1201, ptr noundef nonnull @.str.3) #19
  br label %463

463:                                              ; preds = %462, %458
  %464 = getelementptr inbounds %struct.rtx_def, ptr %456, i64 0, i32 1, i32 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !122
  %466 = load i32, ptr %465, align 8, !tbaa !198
  %467 = icmp sgt i32 %466, 0
  br i1 %467, label %468, label %486

468:                                              ; preds = %463, %480
  %469 = phi i64 [ %481, %480 ], [ 0, %463 ]
  %470 = phi ptr [ %482, %480 ], [ %465, %463 ]
  %471 = getelementptr inbounds %struct.rtvec_def, ptr %470, i64 0, i32 1, i64 %469
  %472 = load ptr, ptr %471, align 8, !tbaa !111
  %473 = load i32, ptr %472, align 8
  %474 = lshr i32 %473, 16
  %475 = and i32 %474, 255
  %476 = call fastcc ptr @propagate_rtx(ptr noundef nonnull %472, i32 noundef %475, ptr noundef %217, ptr noundef %373, i8 noundef zeroext %395)
  %477 = icmp eq ptr %476, null
  br i1 %477, label %480, label %478

478:                                              ; preds = %468
  %479 = call zeroext i8 @validate_unshare_change(ptr noundef %367, ptr noundef nonnull %471, ptr noundef nonnull %476, i8 noundef zeroext 1) #19
  br label %480

480:                                              ; preds = %478, %468
  %481 = add nuw nsw i64 %469, 1
  %482 = load ptr, ptr %464, align 8, !tbaa !122
  %483 = load i32, ptr %482, align 8, !tbaa !198
  %484 = sext i32 %483 to i64
  %485 = icmp slt i64 %481, %484
  br i1 %485, label %468, label %486, !llvm.loop !201

486:                                              ; preds = %480, %463
  %487 = call i32 @num_changes_pending() #19
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %589, label %489

489:                                              ; preds = %486
  %490 = call i32 @apply_change_group() #19
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %589, label %492

492:                                              ; preds = %489
  %493 = load i32, ptr @num_changes, align 4, !tbaa !126
  %494 = add nsw i32 %493, 1
  store i32 %494, ptr @num_changes, align 4, !tbaa !126
  br label %685

495:                                              ; preds = %363
  %496 = load i32, ptr %13, align 8
  %497 = and i32 %496, 65280
  %498 = icmp eq i32 %497, 768
  br i1 %498, label %499, label %501, !prof !202

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  br label %516

501:                                              ; preds = %495
  br i1 %170, label %506, label %502, !prof !203

502:                                              ; preds = %501
  %503 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 1
  %504 = load ptr, ptr %503, align 8, !tbaa !122
  %505 = getelementptr inbounds %struct.rtx_def, ptr %504, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %516

506:                                              ; preds = %501
  %507 = call ptr @find_reg_note(ptr noundef nonnull %138, i32 noundef 4, ptr noundef null) #19
  %508 = load i32, ptr %13, align 8
  %509 = and i32 %508, 262144
  %510 = icmp eq i32 %509, 0
  %511 = getelementptr inbounds %struct.rtx_def, ptr %507, i64 0, i32 1
  %512 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 1
  %513 = select i1 %510, ptr %512, ptr %511, !prof !203
  %514 = icmp eq ptr %507, null
  %515 = zext i1 %514 to i8
  br label %516

516:                                              ; preds = %506, %502, %499
  %517 = phi i8 [ 0, %499 ], [ %515, %506 ], [ 0, %502 ]
  %518 = phi ptr [ %500, %499 ], [ %513, %506 ], [ %505, %502 ]
  %519 = load ptr, ptr %518, align 8, !tbaa !111
  %520 = load i32, ptr %519, align 8
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %530, !prof !197

524:                                              ; preds = %516
  %525 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !122
  %527 = load i32, ptr %526, align 8
  %528 = lshr i32 %527, 16
  %529 = and i32 %528, 255
  br label %530

530:                                              ; preds = %524, %516
  %531 = phi i32 [ %529, %524 ], [ %522, %516 ]
  %532 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !122
  %534 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %533) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1)
  store ptr %219, ptr %1, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %535 = load i32, ptr %219, align 8
  %536 = and i32 %535, 65535
  %537 = icmp eq i32 %536, 37
  br i1 %537, label %538, label %542, !prof !204

538:                                              ; preds = %530
  %539 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %540 = load i32, ptr %539, align 8, !tbaa !122
  %541 = icmp ult i32 %540, 53
  br i1 %541, label %583, label %547, !prof !205

542:                                              ; preds = %530
  %543 = zext nneg i32 %536 to i64
  %544 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %543
  %545 = load i32, ptr %544, align 4, !tbaa !126
  %546 = icmp eq i32 %545, 9
  br i1 %546, label %547, label %548, !prof !206

547:                                              ; preds = %542, %538
  br label %548

548:                                              ; preds = %547, %542
  %549 = phi i32 [ 1, %547 ], [ 0, %542 ]
  %550 = call i32 @for_each_rtx(ptr noundef nonnull %1, ptr noundef nonnull @varying_mem_p, ptr noundef null) #19
  %551 = icmp eq i32 %550, 0
  %552 = or disjoint i32 %549, 2
  %553 = select i1 %551, i32 %552, i32 %549, !prof !207
  %554 = icmp eq i8 %534, 0
  %555 = or disjoint i32 %553, 4
  %556 = select i1 %554, i32 %553, i32 %555, !prof !208
  store ptr %519, ptr %2, align 8, !tbaa !111
  %557 = load ptr, ptr %1, align 8, !tbaa !111
  %558 = call ptr @copy_rtx(ptr noundef %557) #19
  %559 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %2, ptr noundef %217, ptr noundef %558, i32 noundef %556)
  %560 = load ptr, ptr %2, align 8, !tbaa !111
  %561 = icmp ne ptr %560, %519
  %562 = icmp ne i8 %559, 0
  %563 = select i1 %561, i1 %562, i1 false, !prof !209
  br i1 %563, label %564, label %583, !prof !206

564:                                              ; preds = %548
  %565 = load i32, ptr %560, align 8
  %566 = and i32 %565, 16711680
  %567 = icmp ne i32 %566, 0
  %568 = and i32 %565, 65535
  %569 = icmp eq i32 %568, 30
  %570 = or i1 %567, %569
  br i1 %570, label %571, label %583, !prof !210

571:                                              ; preds = %564
  %572 = lshr i32 %565, 16
  %573 = and i32 %572, 255
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %578, !prof !211

575:                                              ; preds = %571
  %576 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !212
  %577 = call ptr %576(i32 noundef %531, ptr noundef nonnull %560) #19
  store ptr %577, ptr %2, align 8, !tbaa !111
  br label %581

578:                                              ; preds = %571
  %579 = icmp eq i32 %573, %531
  br i1 %579, label %581, label %580, !prof !210

580:                                              ; preds = %578
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 684, ptr noundef nonnull @.str.3) #19
  br label %581

581:                                              ; preds = %580, %578, %575
  %582 = load ptr, ptr %2, align 8, !tbaa !111
  br label %583

583:                                              ; preds = %581, %564, %548, %538
  %584 = phi ptr [ %582, %581 ], [ null, %538 ], [ null, %548 ], [ null, %564 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1)
  %585 = icmp eq ptr %584, null
  br i1 %585, label %589, label %586, !prof !214

586:                                              ; preds = %583
  %587 = call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %13, ptr noundef nonnull %518, ptr noundef nonnull %584, ptr noundef nonnull %117, i8 noundef zeroext %517), !range !215
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %589, label %685, !prof !216

589:                                              ; preds = %318, %313, %340, %335, %270, %286, %586, %583, %489, %486, %388, %360, %351, %347, %200, %194, %188, %171, %165
  %590 = load ptr, ptr %111, align 8, !tbaa !122
  %591 = load i32, ptr %590, align 8
  %592 = lshr i32 %591, 16
  %593 = and i32 %592, 255
  %594 = and i32 %591, 65535
  %595 = icmp eq i32 %594, 39
  br i1 %595, label %596, label %685, !prof !217

596:                                              ; preds = %589
  %597 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %598 = load ptr, ptr %597, align 8, !tbaa !122
  %599 = load i32, ptr %598, align 8
  %600 = and i32 %599, 65535
  %601 = icmp eq i32 %600, 37
  br i1 %601, label %602, label %685, !prof !170

602:                                              ; preds = %596
  %603 = zext nneg i32 %593 to i64
  %604 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %603
  %605 = load i8, ptr %604, align 1, !tbaa !122
  %606 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1
  %607 = load ptr, ptr %606, align 8, !tbaa !122
  %608 = load i32, ptr %607, align 8
  %609 = lshr i32 %608, 16
  %610 = and i32 %609, 255
  %611 = zext nneg i32 %610 to i64
  %612 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %611
  %613 = load i8, ptr %612, align 1, !tbaa !122
  %614 = icmp ugt i8 %605, %613
  br i1 %614, label %615, label %650, !prof !167

615:                                              ; preds = %602
  %616 = load ptr, ptr %93, align 8, !tbaa !122
  %617 = load ptr, ptr %616, align 8, !tbaa !143
  %618 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 1
  %619 = load ptr, ptr %618, align 8, !tbaa !122
  %620 = load i32, ptr %619, align 8
  %621 = and i32 %620, 65535
  %622 = icmp eq i32 %621, 39
  br i1 %622, label %623, label %685

623:                                              ; preds = %615
  %624 = getelementptr inbounds %struct.rtx_def, ptr %619, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !122
  %626 = load i32, ptr %625, align 8
  %627 = and i32 %626, 65535
  %628 = icmp eq i32 %627, 37
  br i1 %628, label %629, label %685

629:                                              ; preds = %623
  %630 = lshr i32 %626, 16
  %631 = and i32 %630, 255
  %632 = icmp eq i32 %631, %593
  br i1 %632, label %633, label %685

633:                                              ; preds = %629
  %634 = call i32 @subreg_lowpart_p(ptr noundef nonnull %619) #19
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %685, label %636

636:                                              ; preds = %633
  %637 = call fastcc zeroext i8 @all_uses_available_at(ptr noundef nonnull %117, ptr noundef %617)
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %685, label %639

639:                                              ; preds = %636
  %640 = load i32, ptr %13, align 8
  %641 = and i32 %640, 254
  %642 = icmp eq i32 %641, 2
  br i1 %642, label %643, label %646

643:                                              ; preds = %639
  %644 = getelementptr inbounds %struct.df_regular_ref, ptr %13, i64 0, i32 1
  %645 = load ptr, ptr %644, align 8, !tbaa !122
  br label %646

646:                                              ; preds = %643, %639
  %647 = phi ptr [ %645, %643 ], [ null, %639 ]
  %648 = load ptr, ptr %624, align 8, !tbaa !122
  %649 = call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %13, ptr noundef %647, ptr noundef %648, ptr noundef nonnull %117, i8 noundef zeroext 0), !range !215
  br label %685

650:                                              ; preds = %602
  %651 = call i32 @subreg_lowpart_p(ptr noundef nonnull %590) #19
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %685, label %653, !prof !167

653:                                              ; preds = %650
  %654 = load ptr, ptr %93, align 8, !tbaa !122
  %655 = load ptr, ptr %654, align 8, !tbaa !143
  %656 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 1
  %657 = load ptr, ptr %656, align 8, !tbaa !122
  %658 = load i32, ptr %657, align 8
  %659 = and i32 %658, 65534
  %660 = icmp eq i32 %659, 98
  br i1 %660, label %661, label %685, !prof !167

661:                                              ; preds = %653
  %662 = getelementptr inbounds %struct.rtx_def, ptr %657, i64 0, i32 1
  %663 = load ptr, ptr %662, align 8, !tbaa !122
  %664 = load i32, ptr %663, align 8
  %665 = and i32 %664, 65535
  %666 = icmp eq i32 %665, 37
  br i1 %666, label %667, label %685

667:                                              ; preds = %661
  %668 = lshr i32 %664, 16
  %669 = and i32 %668, 255
  %670 = icmp eq i32 %669, %593
  br i1 %670, label %671, label %685

671:                                              ; preds = %667
  %672 = call fastcc zeroext i8 @all_uses_available_at(ptr noundef nonnull %117, ptr noundef %655)
  %673 = icmp eq i8 %672, 0
  br i1 %673, label %685, label %674

674:                                              ; preds = %671
  %675 = load i32, ptr %13, align 8
  %676 = and i32 %675, 254
  %677 = icmp eq i32 %676, 2
  br i1 %677, label %678, label %681

678:                                              ; preds = %674
  %679 = getelementptr inbounds %struct.df_regular_ref, ptr %13, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !122
  br label %681

681:                                              ; preds = %678, %674
  %682 = phi ptr [ %680, %678 ], [ null, %674 ]
  %683 = load ptr, ptr %662, align 8, !tbaa !122
  %684 = call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %13, ptr noundef %682, ptr noundef %683, ptr noundef nonnull %117, i8 noundef zeroext 0), !range !215
  br label %685

685:                                              ; preds = %681, %671, %667, %661, %653, %650, %646, %636, %633, %629, %623, %615, %596, %589, %586, %492, %133, %115, %109, %85, %78, %70, %64, %61, %7
  %686 = add nuw nsw i64 %8, 1
  %687 = load ptr, ptr @df, align 8, !tbaa !111
  %688 = getelementptr inbounds %struct.df, ptr %687, i64 0, i32 4, i32 4
  %689 = load i32, ptr %688, align 4, !tbaa !135
  %690 = zext i32 %689 to i64
  %691 = icmp ult i64 %686, %690
  br i1 %691, label %7, label %692, !prof !218, !llvm.loop !219

692:                                              ; preds = %685, %0
  call fastcc void @fwprop_done()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fwprop_addr() #10 !prof !133 !PGOFuncName !220 {
  tail call fastcc void @fwprop_init()
  %1 = load ptr, ptr @df, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 4, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !135
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %70, label %5, !prof !138

5:                                                ; preds = %0, %63
  %6 = phi i64 [ %64, %63 ], [ 0, %0 ]
  %7 = phi ptr [ %65, %63 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = getelementptr inbounds ptr, ptr %9, i64 %6
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13, !prof !221

13:                                               ; preds = %5
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65280
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %63, label %17, !prof !222

17:                                               ; preds = %13
  %18 = and i32 %14, 255
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22, !prof !223

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.df_artificial_ref, ptr %11, i64 0, i32 1
  br label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %11, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  %25 = load ptr, ptr %24, align 8, !tbaa !143
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 1
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi ptr [ %21, %20 ], [ %26, %22 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !122
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !145
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %33, !prof !223

33:                                               ; preds = %27
  br i1 %19, label %34, label %36, !prof !223

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.df_artificial_ref, ptr %11, i64 0, i32 1
  br label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.df_base_ref, ptr %11, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !122
  %39 = load ptr, ptr %38, align 8, !tbaa !143
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi ptr [ %35, %34 ], [ %40, %36 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !122
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !145
  %46 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !147
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !224

49:                                               ; preds = %41
  %50 = load i32, ptr %47, align 8, !tbaa !152
  br label %51

51:                                               ; preds = %49, %41
  %52 = phi i32 [ %50, %49 ], [ 0, %41 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54, !prof !224

54:                                               ; preds = %51
  %55 = add i32 %52, -1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %47, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !111
  br label %59

59:                                               ; preds = %51, %54
  %60 = phi ptr [ %58, %54 ], [ null, %51 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62, !prof !224

62:                                               ; preds = %59
  tail call fastcc void @forward_propagate_into(ptr noundef nonnull %11)
  br label %63

63:                                               ; preds = %13, %27, %59, %62, %5
  %64 = add nuw nsw i64 %6, 1
  %65 = load ptr, ptr @df, align 8, !tbaa !111
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 4, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !135
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %5, label %70, !prof !225, !llvm.loop !226

70:                                               ; preds = %63, %0
  tail call fastcc void @fwprop_done()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fwprop_init() unnamed_addr #10 !prof !130 !PGOFuncName !227 {
  %1 = alloca %struct.dom_walk_data, align 8
  store i32 0, ptr @num_changes, align 4, !tbaa !126
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  tail call void @loop_optimizer_init(i32 noundef 0) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #19
  %2 = tail call i32 @df_set_flags(i32 noundef 4) #19
  tail call void @df_md_add_problem() #19
  tail call void @df_note_add_problem() #19
  tail call void @df_analyze() #19
  tail call void @df_maybe_reorganize_use_refs(i32 noundef 6) #19
  %3 = load ptr, ptr @df, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 4, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !135
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %5) #19
  store ptr %6, ptr @use_def_ref, align 8, !tbaa !111
  %7 = load ptr, ptr @df, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 4, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !135
  %10 = icmp eq ptr %6, null
  br i1 %10, label %13, label %11, !prof !228

11:                                               ; preds = %0
  %12 = load i32, ptr %6, align 8, !tbaa !229
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i32 [ %12, %11 ], [ 0, %0 ]
  br i1 %10, label %17, label %15, !prof !228

15:                                               ; preds = %13
  %16 = load i32, ptr %6, align 8, !tbaa !229
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %16, %15 ], [ 0, %13 ]
  %19 = sub nsw i32 %9, %18
  br i1 %10, label %26, label %20, !prof !228

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %6, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !231
  %23 = load i32, ptr %6, align 8, !tbaa !229
  %24 = sub i32 %22, %23
  %25 = icmp uge i32 %24, %19
  br label %28

26:                                               ; preds = %17
  %27 = icmp eq i32 %18, %9
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i1 [ %25, %20 ], [ %27, %26 ]
  br i1 %29, label %32, label %30, !prof !132

30:                                               ; preds = %28
  %31 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %6, i32 noundef %19) #19
  store ptr %31, ptr @use_def_ref, align 8, !tbaa !111
  br label %32

32:                                               ; preds = %30, %28
  %33 = load ptr, ptr @use_def_ref, align 8, !tbaa !111, !nonnull !232, !noundef !232
  store i32 %9, ptr %33, align 8, !tbaa !229
  %34 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %33, i64 0, i32 2
  %35 = sext i32 %14 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = sub nsw i32 %9, %14
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %36, i8 0, i64 %39, i1 false), !prof !233
  %40 = tail call i32 @max_reg_num() #19
  %41 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %40) #19
  store ptr %41, ptr @reg_defs, align 8, !tbaa !111
  %42 = tail call i32 @max_reg_num() #19
  %43 = load ptr, ptr @reg_defs, align 8, !tbaa !111
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !228

45:                                               ; preds = %32
  %46 = load i32, ptr %43, align 8, !tbaa !229
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi i32 [ %46, %45 ], [ 0, %32 ]
  br i1 %44, label %51, label %49, !prof !228

49:                                               ; preds = %47
  %50 = load i32, ptr %43, align 8, !tbaa !229
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %50, %49 ], [ 0, %47 ]
  %53 = sub nsw i32 %42, %52
  br i1 %44, label %60, label %54, !prof !228

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %43, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !231
  %57 = load i32, ptr %43, align 8, !tbaa !229
  %58 = sub i32 %56, %57
  %59 = icmp uge i32 %58, %53
  br label %62

60:                                               ; preds = %51
  %61 = icmp eq i32 %52, %42
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi i1 [ %59, %54 ], [ %61, %60 ]
  br i1 %63, label %66, label %64, !prof !132

64:                                               ; preds = %62
  %65 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %43, i32 noundef %53) #19
  store ptr %65, ptr @reg_defs, align 8, !tbaa !111
  br label %66

66:                                               ; preds = %64, %62
  %67 = load ptr, ptr @reg_defs, align 8, !tbaa !111, !nonnull !232, !noundef !232
  store i32 %42, ptr %67, align 8, !tbaa !229
  %68 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %67, i64 0, i32 2
  %69 = sext i32 %48 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = sub nsw i32 %42, %48
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %70, i8 0, i64 %73, i1 false), !prof !233
  %74 = load ptr, ptr @cfun, align 8, !tbaa !111
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !234
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !236
  %79 = mul nsw i32 %78, 10
  %80 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %79) #19
  store ptr %80, ptr @reg_defs_stack, align 8, !tbaa !111
  %81 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %81, ptr @local_md, align 8, !tbaa !111
  %82 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %82, ptr @local_lr, align 8, !tbaa !111
  %83 = load i8, ptr %1, align 8
  %84 = and i8 %83, -4
  %85 = or disjoint i8 %84, 1
  store i8 %85, ptr %1, align 8
  %86 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %86, align 8, !tbaa !238
  %87 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @single_def_use_enter_block, ptr %87, align 8, !tbaa !240
  %88 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @single_def_use_leave_block, ptr %88, align 8, !tbaa !241
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #19
  %89 = load ptr, ptr @cfun, align 8, !tbaa !111
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !234
  %92 = load ptr, ptr %91, align 8, !tbaa !242
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %92) #19
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #19
  %93 = load ptr, ptr @local_lr, align 8, !tbaa !111
  call void @bitmap_obstack_free(ptr noundef %93) #19
  store ptr null, ptr @local_lr, align 8, !tbaa !111
  %94 = load ptr, ptr @local_md, align 8, !tbaa !111
  call void @bitmap_obstack_free(ptr noundef %94) #19
  store ptr null, ptr @local_md, align 8, !tbaa !111
  %95 = load ptr, ptr @reg_defs, align 8, !tbaa !111
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97, !prof !228

97:                                               ; preds = %66
  call void @free(ptr noundef %95)
  br label %98

98:                                               ; preds = %97, %66
  store ptr null, ptr @reg_defs, align 8, !tbaa !111
  %99 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !228

101:                                              ; preds = %98
  call void @free(ptr noundef %99)
  br label %102

102:                                              ; preds = %98, %101
  store ptr null, ptr @reg_defs_stack, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #19
  %103 = call i32 @df_set_flags(i32 noundef 32) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @forward_propagate_into(ptr noundef %0) unnamed_addr #11 !prof !110 !PGOFuncName !243 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 2097152
  %6 = icmp ne i32 %5, 0
  %7 = and i32 %4, 255
  %8 = icmp eq i32 %7, 1
  %9 = or i1 %6, %8
  br i1 %9, label %625, label %10, !prof !154

10:                                               ; preds = %1
  %11 = load ptr, ptr @use_def_ref, align 8
  %12 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !122
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %11, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = icmp eq ptr %16, null
  br i1 %17, label %625, label %18, !prof !155

18:                                               ; preds = %10
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 2097152
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %19, 255
  %23 = icmp eq i32 %22, 1
  %24 = or i1 %21, %23
  br i1 %24, label %625, label %25, !prof !156

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !122
  %28 = load ptr, ptr %27, align 8, !tbaa !143
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !122
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !145
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !122
  %35 = load ptr, ptr %34, align 8, !tbaa !143
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !145
  %40 = icmp eq ptr %32, %39
  br i1 %40, label %41, label %625, !prof !157

41:                                               ; preds = %25
  %42 = and i32 %4, 262144
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !158

44:                                               ; preds = %41
  %45 = tail call ptr @find_reg_note(ptr noundef %35, i32 noundef 4, ptr noundef null) #19
  br label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !122
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi ptr [ %45, %44 ], [ %48, %46 ]
  %51 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !122
  %53 = tail call i32 @reg_mentioned_p(ptr noundef %52, ptr noundef %50) #19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %625, label %55, !prof !159

55:                                               ; preds = %49
  %56 = load ptr, ptr %26, align 8, !tbaa !122
  %57 = load ptr, ptr %56, align 8, !tbaa !143
  %58 = tail call i32 @multiple_sets(ptr noundef %57) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %625, !prof !157

60:                                               ; preds = %55
  %61 = load i32, ptr %57, align 8
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -7
  %64 = icmp ult i32 %63, 4
  br i1 %64, label %65, label %73, !prof !157

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !122
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 23
  br i1 %70, label %73, label %71, !prof !160

71:                                               ; preds = %65
  %72 = tail call ptr @single_set_2(ptr noundef nonnull %57, ptr noundef nonnull %67) #19
  br label %73

73:                                               ; preds = %60, %65, %71
  %74 = phi ptr [ %72, %71 ], [ null, %60 ], [ %67, %65 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %625, label %76, !prof !159

76:                                               ; preds = %73
  %77 = load ptr, ptr %33, align 8, !tbaa !122
  %78 = load ptr, ptr %77, align 8, !tbaa !143
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = add nsw i32 %80, -7
  %82 = icmp ult i32 %81, 4
  br i1 %82, label %83, label %91, !prof !157

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !122
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 23
  br i1 %88, label %91, label %89, !prof !161

89:                                               ; preds = %83
  %90 = tail call ptr @single_set_2(ptr noundef nonnull %78, ptr noundef nonnull %85) #19
  br label %91

91:                                               ; preds = %89, %83, %76
  %92 = phi ptr [ %90, %89 ], [ null, %76 ], [ %85, %83 ]
  %93 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 1, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !122
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100, !prof !162

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !122
  %99 = tail call i32 @asm_noperands(ptr noundef %98) #19
  br label %100

100:                                              ; preds = %96, %91
  %101 = phi i32 [ %99, %96 ], [ -1, %91 ]
  %102 = icmp eq ptr %92, null
  %103 = icmp slt i32 %101, 0
  %104 = select i1 %102, i1 %103, i1 false, !prof !162
  br i1 %104, label %105, label %109, !prof !162

105:                                              ; preds = %100
  %106 = load i32, ptr %78, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 7
  br i1 %108, label %109, label %529, !prof !163

109:                                              ; preds = %105, %100
  %110 = icmp ne ptr %92, null
  br i1 %110, label %111, label %117, !prof !164

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !122
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 16711680
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %529, label %117, !prof !165

117:                                              ; preds = %111, %109
  %118 = load ptr, ptr %51, align 8, !tbaa !122
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 39
  br i1 %121, label %122, label %138, !prof !166

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !122
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 39
  br i1 %127, label %128, label %138, !prof !167

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load i32, ptr %129, align 8, !tbaa !122
  %131 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load i32, ptr %131, align 8, !tbaa !122
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %529

134:                                              ; preds = %128
  %135 = xor i32 %125, %119
  %136 = and i32 %135, 16711680
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %529

138:                                              ; preds = %134, %122, %117
  %139 = icmp eq i32 %120, 37
  br i1 %139, label %140, label %146, !prof !168

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !122
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 39
  br i1 %145, label %529, label %146, !prof !169

146:                                              ; preds = %140, %138
  br i1 %121, label %147, label %156, !prof !166

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !122
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 37
  br i1 %152, label %153, label %156, !prof !170

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !122
  br label %156

156:                                              ; preds = %153, %147, %146
  %157 = phi ptr [ %155, %153 ], [ %118, %147 ], [ %118, %146 ]
  %158 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !122
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !126
  %165 = icmp eq i32 %164, 9
  br i1 %165, label %283, label %166, !prof !171

166:                                              ; preds = %156
  %167 = load ptr, ptr @df, align 8, !tbaa !111
  %168 = getelementptr inbounds %struct.df, ptr %167, i64 0, i32 10
  %169 = load ptr, ptr %168, align 8, !tbaa !172
  %170 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !122
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %169, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !111
  %175 = load i32, ptr %57, align 8
  %176 = and i32 %175, 65535
  %177 = add nsw i32 %176, -7
  %178 = icmp ult i32 %177, 4
  br i1 %178, label %179, label %187, !prof !173

179:                                              ; preds = %166
  %180 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !122
  %182 = load i32, ptr %181, align 8
  %183 = and i32 %182, 65535
  %184 = icmp eq i32 %183, 23
  br i1 %184, label %187, label %185, !prof !174

185:                                              ; preds = %179
  %186 = tail call ptr @single_set_2(ptr noundef nonnull %57, ptr noundef nonnull %181) #19
  br label %187

187:                                              ; preds = %185, %179, %166
  %188 = phi ptr [ %186, %185 ], [ null, %166 ], [ %181, %179 ]
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %191, !prof !175

190:                                              ; preds = %187
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 796, ptr noundef nonnull @.str.3) #19
  br label %191

191:                                              ; preds = %190, %187
  %192 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %193 = load ptr, ptr %192, align 8, !tbaa !122
  %194 = icmp eq ptr %193, %78
  br i1 %194, label %195, label %233, !prof !176

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !122
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 37
  br i1 %200, label %201, label %233, !prof !177

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.df_insn_info, ptr %174, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !178
  %204 = load ptr, ptr %203, align 8, !tbaa !111
  %205 = icmp eq ptr %204, null
  br i1 %205, label %217, label %210, !prof !179

206:                                              ; preds = %210
  %207 = getelementptr inbounds ptr, ptr %212, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !111
  %209 = icmp eq ptr %208, null
  br i1 %209, label %217, label %210, !prof !180, !llvm.loop !181

210:                                              ; preds = %201, %206
  %211 = phi ptr [ %208, %206 ], [ %204, %201 ]
  %212 = phi ptr [ %207, %206 ], [ %203, %201 ]
  %213 = getelementptr inbounds %struct.df_base_ref, ptr %211, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !122
  %215 = tail call i32 @rtx_equal_p(ptr noundef %214, ptr noundef nonnull %197) #19
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %206, label %529, !prof !180

217:                                              ; preds = %206, %201
  %218 = getelementptr inbounds %struct.df_insn_info, ptr %174, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !182
  %220 = load ptr, ptr %219, align 8, !tbaa !111
  %221 = icmp eq ptr %220, null
  br i1 %221, label %283, label %226, !prof !183

222:                                              ; preds = %226
  %223 = getelementptr inbounds ptr, ptr %228, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !111
  %225 = icmp eq ptr %224, null
  br i1 %225, label %283, label %226, !prof !184, !llvm.loop !185

226:                                              ; preds = %217, %222
  %227 = phi ptr [ %224, %222 ], [ %220, %217 ]
  %228 = phi ptr [ %223, %222 ], [ %219, %217 ]
  %229 = getelementptr inbounds %struct.df_base_ref, ptr %227, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !122
  %231 = tail call i32 @rtx_equal_p(ptr noundef %230, ptr noundef nonnull %197) #19
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %222, label %529, !prof !184

233:                                              ; preds = %195, %191
  %234 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !122
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 65535
  %238 = icmp eq i32 %237, 37
  %239 = select i1 %238, ptr %235, ptr null, !prof !186
  %240 = getelementptr inbounds %struct.df_insn_info, ptr %174, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !178
  %242 = load ptr, ptr %241, align 8, !tbaa !111
  %243 = icmp eq ptr %242, null
  br i1 %243, label %261, label %244, !prof !187

244:                                              ; preds = %233
  %245 = icmp eq ptr %239, null
  br label %250

246:                                              ; preds = %258
  %247 = getelementptr inbounds ptr, ptr %252, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !111
  %249 = icmp eq ptr %248, null
  br i1 %249, label %261, label %250, !prof !188, !llvm.loop !189

250:                                              ; preds = %246, %244
  %251 = phi ptr [ %242, %244 ], [ %248, %246 ]
  %252 = phi ptr [ %241, %244 ], [ %247, %246 ]
  br i1 %245, label %258, label %253, !prof !190

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.df_base_ref, ptr %251, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !122
  %256 = tail call i32 @rtx_equal_p(ptr noundef %255, ptr noundef nonnull %239) #19
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %529, !prof !191

258:                                              ; preds = %253, %250
  %259 = tail call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %251, ptr noundef nonnull %57, ptr noundef nonnull %78)
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %246, label %529, !prof !192

261:                                              ; preds = %246, %233
  %262 = getelementptr inbounds %struct.df_insn_info, ptr %174, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !182
  %264 = load ptr, ptr %263, align 8, !tbaa !111
  %265 = icmp eq ptr %264, null
  br i1 %265, label %283, label %266, !prof !193

266:                                              ; preds = %261
  %267 = icmp eq ptr %239, null
  br label %272

268:                                              ; preds = %280
  %269 = getelementptr inbounds ptr, ptr %274, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !111
  %271 = icmp eq ptr %270, null
  br i1 %271, label %283, label %272, !prof !194, !llvm.loop !195

272:                                              ; preds = %268, %266
  %273 = phi ptr [ %264, %266 ], [ %270, %268 ]
  %274 = phi ptr [ %263, %266 ], [ %269, %268 ]
  br i1 %267, label %280, label %275, !prof !196

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.df_base_ref, ptr %273, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !122
  %278 = tail call i32 @rtx_equal_p(ptr noundef %277, ptr noundef nonnull %239) #19
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %529, !prof !194

280:                                              ; preds = %275, %272
  %281 = tail call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %273, ptr noundef nonnull %57, ptr noundef nonnull %78)
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %268, label %529, !prof !194

283:                                              ; preds = %268, %222, %261, %217, %156
  %284 = load i32, ptr %159, align 8
  %285 = and i32 %284, 67174399
  %286 = icmp eq i32 %285, 67108907
  br i1 %286, label %287, label %303, !prof !197

287:                                              ; preds = %283
  %288 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %159) #19
  %289 = icmp ne ptr %288, %159
  %290 = and i1 %110, %289
  br i1 %290, label %291, label %529

291:                                              ; preds = %287
  %292 = tail call ptr @find_reg_note(ptr noundef nonnull %78, i32 noundef 4, ptr noundef null) #19
  %293 = icmp eq ptr %292, null
  %294 = getelementptr inbounds %struct.rtx_def, ptr %292, i64 0, i32 1
  %295 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 1
  %296 = select i1 %293, ptr %295, ptr %294
  %297 = load ptr, ptr %296, align 8, !tbaa !122
  %298 = tail call ptr @simplify_replace_rtx(ptr noundef %297, ptr noundef nonnull %159, ptr noundef %288) #19
  %299 = icmp eq ptr %297, %298
  br i1 %299, label %529, label %300

300:                                              ; preds = %291
  %301 = tail call ptr @copy_rtx(ptr noundef %298) #19
  %302 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %78, i32 noundef 4, ptr noundef %301) #19
  br label %529

303:                                              ; preds = %283
  %304 = icmp sgt i32 %101, -1
  br i1 %304, label %305, label %435, !prof !197

305:                                              ; preds = %303
  %306 = load ptr, ptr %33, align 8, !tbaa !122
  %307 = load ptr, ptr %306, align 8, !tbaa !143
  %308 = load i32, ptr %0, align 8
  %309 = and i32 %308, 262144
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %305
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1152, ptr noundef nonnull @.str.3) #19
  br label %312

312:                                              ; preds = %311, %305
  %313 = load ptr, ptr %158, align 8, !tbaa !122
  %314 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !122
  %316 = load ptr, ptr @df, align 8, !tbaa !111
  %317 = getelementptr inbounds %struct.df, ptr %316, i64 0, i32 10
  %318 = load ptr, ptr %317, align 8, !tbaa !172
  %319 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %320 = load i32, ptr %319, align 8, !tbaa !122
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds ptr, ptr %318, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !111
  %324 = getelementptr inbounds %struct.df_insn_info, ptr %323, i64 0, i32 2
  %325 = load ptr, ptr %324, align 8, !tbaa !178
  %326 = load ptr, ptr %325, align 8, !tbaa !111
  %327 = icmp eq ptr %326, null
  br i1 %327, label %332, label %328

328:                                              ; preds = %312
  %329 = getelementptr inbounds ptr, ptr %325, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !111
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %529

332:                                              ; preds = %328, %312
  %333 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1, i32 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !122
  %335 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %334) #19
  %336 = load i32, ptr %315, align 8
  %337 = trunc i32 %336 to i16
  switch i16 %337, label %394 [
    i16 17, label %395
    i16 23, label %343
    i16 15, label %338
  ]

338:                                              ; preds = %332
  %339 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !122
  %341 = load i32, ptr %340, align 8, !tbaa !198
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %359, label %395

343:                                              ; preds = %332
  %344 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !122
  %346 = load i32, ptr %345, align 8
  %347 = and i32 %346, 65535
  %348 = icmp eq i32 %347, 43
  br i1 %348, label %349, label %356

349:                                              ; preds = %343
  %350 = lshr i32 %346, 16
  %351 = and i32 %350, 255
  %352 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %345, i32 noundef %351, ptr noundef %157, ptr noundef %313, i8 noundef zeroext %335)
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %349
  %355 = tail call zeroext i8 @validate_unshare_change(ptr noundef %307, ptr noundef nonnull %344, ptr noundef nonnull %352, i8 noundef zeroext 1) #19
  br label %356

356:                                              ; preds = %354, %349, %343
  %357 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1, i32 0, i32 0, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !122
  br label %395

359:                                              ; preds = %338, %387
  %360 = phi i64 [ %389, %387 ], [ 0, %338 ]
  %361 = phi ptr [ %390, %387 ], [ %340, %338 ]
  %362 = phi ptr [ %388, %387 ], [ null, %338 ]
  %363 = getelementptr inbounds %struct.rtvec_def, ptr %361, i64 0, i32 1, i64 %360
  %364 = load ptr, ptr %363, align 8, !tbaa !111
  %365 = load i32, ptr %364, align 8
  %366 = trunc i32 %365 to i16
  switch i16 %366, label %387 [
    i16 23, label %367
    i16 17, label %386
  ]

367:                                              ; preds = %359
  %368 = getelementptr inbounds %struct.rtx_def, ptr %364, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !122
  %370 = load i32, ptr %369, align 8
  %371 = and i32 %370, 65535
  %372 = icmp eq i32 %371, 43
  br i1 %372, label %373, label %380

373:                                              ; preds = %367
  %374 = lshr i32 %370, 16
  %375 = and i32 %374, 255
  %376 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %369, i32 noundef %375, ptr noundef %157, ptr noundef %313, i8 noundef zeroext %335)
  %377 = icmp eq ptr %376, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %373
  %379 = tail call zeroext i8 @validate_unshare_change(ptr noundef %307, ptr noundef nonnull %368, ptr noundef nonnull %376, i8 noundef zeroext 1) #19
  br label %380

380:                                              ; preds = %378, %373, %367
  %381 = load ptr, ptr %339, align 8, !tbaa !122
  %382 = getelementptr inbounds %struct.rtvec_def, ptr %381, i64 0, i32 1, i64 %360
  %383 = load ptr, ptr %382, align 8, !tbaa !111
  %384 = getelementptr inbounds %struct.rtx_def, ptr %383, i64 0, i32 1, i32 0, i32 0, i64 1
  %385 = load ptr, ptr %384, align 8, !tbaa !122
  br label %387

386:                                              ; preds = %359
  br label %387

387:                                              ; preds = %386, %380, %359
  %388 = phi ptr [ %385, %380 ], [ %364, %386 ], [ %362, %359 ]
  %389 = add nuw nsw i64 %360, 1
  %390 = load ptr, ptr %339, align 8, !tbaa !122
  %391 = load i32, ptr %390, align 8, !tbaa !198
  %392 = sext i32 %391 to i64
  %393 = icmp slt i64 %389, %392
  br i1 %393, label %359, label %395, !llvm.loop !200

394:                                              ; preds = %332
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1198, ptr noundef nonnull @.str.3) #19
  br label %395

395:                                              ; preds = %387, %394, %356, %338, %332
  %396 = phi ptr [ null, %394 ], [ %358, %356 ], [ %315, %332 ], [ null, %338 ], [ %388, %387 ]
  %397 = icmp eq ptr %396, null
  br i1 %397, label %402, label %398

398:                                              ; preds = %395
  %399 = load i32, ptr %396, align 8
  %400 = and i32 %399, 65535
  %401 = icmp eq i32 %400, 17
  br i1 %401, label %403, label %402

402:                                              ; preds = %398, %395
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1201, ptr noundef nonnull @.str.3) #19
  br label %403

403:                                              ; preds = %402, %398
  %404 = getelementptr inbounds %struct.rtx_def, ptr %396, i64 0, i32 1, i32 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !122
  %406 = load i32, ptr %405, align 8, !tbaa !198
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %408, label %426

408:                                              ; preds = %403, %420
  %409 = phi i64 [ %421, %420 ], [ 0, %403 ]
  %410 = phi ptr [ %422, %420 ], [ %405, %403 ]
  %411 = getelementptr inbounds %struct.rtvec_def, ptr %410, i64 0, i32 1, i64 %409
  %412 = load ptr, ptr %411, align 8, !tbaa !111
  %413 = load i32, ptr %412, align 8
  %414 = lshr i32 %413, 16
  %415 = and i32 %414, 255
  %416 = tail call fastcc ptr @propagate_rtx(ptr noundef nonnull %412, i32 noundef %415, ptr noundef %157, ptr noundef %313, i8 noundef zeroext %335)
  %417 = icmp eq ptr %416, null
  br i1 %417, label %420, label %418

418:                                              ; preds = %408
  %419 = tail call zeroext i8 @validate_unshare_change(ptr noundef %307, ptr noundef nonnull %411, ptr noundef nonnull %416, i8 noundef zeroext 1) #19
  br label %420

420:                                              ; preds = %418, %408
  %421 = add nuw nsw i64 %409, 1
  %422 = load ptr, ptr %404, align 8, !tbaa !122
  %423 = load i32, ptr %422, align 8, !tbaa !198
  %424 = sext i32 %423 to i64
  %425 = icmp slt i64 %421, %424
  br i1 %425, label %408, label %426, !llvm.loop !201

426:                                              ; preds = %420, %403
  %427 = tail call i32 @num_changes_pending() #19
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %529, label %429

429:                                              ; preds = %426
  %430 = tail call i32 @apply_change_group() #19
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %529, label %432

432:                                              ; preds = %429
  %433 = load i32, ptr @num_changes, align 4, !tbaa !126
  %434 = add nsw i32 %433, 1
  store i32 %434, ptr @num_changes, align 4, !tbaa !126
  br label %625

435:                                              ; preds = %303
  %436 = load i32, ptr %0, align 8
  %437 = and i32 %436, 65280
  %438 = icmp eq i32 %437, 768
  br i1 %438, label %439, label %441, !prof !202

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  br label %456

441:                                              ; preds = %435
  br i1 %110, label %446, label %442, !prof !203

442:                                              ; preds = %441
  %443 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 1
  %444 = load ptr, ptr %443, align 8, !tbaa !122
  %445 = getelementptr inbounds %struct.rtx_def, ptr %444, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %456

446:                                              ; preds = %441
  %447 = tail call ptr @find_reg_note(ptr noundef nonnull %78, i32 noundef 4, ptr noundef null) #19
  %448 = load i32, ptr %0, align 8
  %449 = and i32 %448, 262144
  %450 = icmp eq i32 %449, 0
  %451 = getelementptr inbounds %struct.rtx_def, ptr %447, i64 0, i32 1
  %452 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 1
  %453 = select i1 %450, ptr %452, ptr %451, !prof !203
  %454 = icmp eq ptr %447, null
  %455 = zext i1 %454 to i8
  br label %456

456:                                              ; preds = %446, %442, %439
  %457 = phi i8 [ 0, %439 ], [ %455, %446 ], [ 0, %442 ]
  %458 = phi ptr [ %440, %439 ], [ %453, %446 ], [ %445, %442 ]
  %459 = load ptr, ptr %458, align 8, !tbaa !111
  %460 = load i32, ptr %459, align 8
  %461 = lshr i32 %460, 16
  %462 = and i32 %461, 255
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %470, !prof !197

464:                                              ; preds = %456
  %465 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !122
  %467 = load i32, ptr %466, align 8
  %468 = lshr i32 %467, 16
  %469 = and i32 %468, 255
  br label %470

470:                                              ; preds = %464, %456
  %471 = phi i32 [ %469, %464 ], [ %462, %456 ]
  %472 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !122
  %474 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %473) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %159, ptr %2, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %475 = load i32, ptr %159, align 8
  %476 = and i32 %475, 65535
  %477 = icmp eq i32 %476, 37
  br i1 %477, label %478, label %482, !prof !204

478:                                              ; preds = %470
  %479 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %480 = load i32, ptr %479, align 8, !tbaa !122
  %481 = icmp ult i32 %480, 53
  br i1 %481, label %523, label %487, !prof !205

482:                                              ; preds = %470
  %483 = zext nneg i32 %476 to i64
  %484 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !126
  %486 = icmp eq i32 %485, 9
  br i1 %486, label %487, label %488, !prof !206

487:                                              ; preds = %482, %478
  br label %488

488:                                              ; preds = %487, %482
  %489 = phi i32 [ 1, %487 ], [ 0, %482 ]
  %490 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @varying_mem_p, ptr noundef null) #19
  %491 = icmp eq i32 %490, 0
  %492 = or disjoint i32 %489, 2
  %493 = select i1 %491, i32 %492, i32 %489, !prof !207
  %494 = icmp eq i8 %474, 0
  %495 = or disjoint i32 %493, 4
  %496 = select i1 %494, i32 %493, i32 %495, !prof !208
  store ptr %459, ptr %3, align 8, !tbaa !111
  %497 = load ptr, ptr %2, align 8, !tbaa !111
  %498 = call ptr @copy_rtx(ptr noundef %497) #19
  %499 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %3, ptr noundef %157, ptr noundef %498, i32 noundef %496)
  %500 = load ptr, ptr %3, align 8, !tbaa !111
  %501 = icmp ne ptr %500, %459
  %502 = icmp ne i8 %499, 0
  %503 = select i1 %501, i1 %502, i1 false, !prof !209
  br i1 %503, label %504, label %523, !prof !206

504:                                              ; preds = %488
  %505 = load i32, ptr %500, align 8
  %506 = and i32 %505, 16711680
  %507 = icmp ne i32 %506, 0
  %508 = and i32 %505, 65535
  %509 = icmp eq i32 %508, 30
  %510 = or i1 %507, %509
  br i1 %510, label %511, label %523, !prof !210

511:                                              ; preds = %504
  %512 = lshr i32 %505, 16
  %513 = and i32 %512, 255
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %518, !prof !211

515:                                              ; preds = %511
  %516 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !212
  %517 = call ptr %516(i32 noundef %471, ptr noundef nonnull %500) #19
  store ptr %517, ptr %3, align 8, !tbaa !111
  br label %521

518:                                              ; preds = %511
  %519 = icmp eq i32 %513, %471
  br i1 %519, label %521, label %520, !prof !210

520:                                              ; preds = %518
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 684, ptr noundef nonnull @.str.3) #19
  br label %521

521:                                              ; preds = %520, %518, %515
  %522 = load ptr, ptr %3, align 8, !tbaa !111
  br label %523

523:                                              ; preds = %521, %504, %488, %478
  %524 = phi ptr [ %522, %521 ], [ null, %478 ], [ null, %488 ], [ null, %504 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %525 = icmp eq ptr %524, null
  br i1 %525, label %529, label %526, !prof !214

526:                                              ; preds = %523
  %527 = call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %0, ptr noundef nonnull %458, ptr noundef nonnull %524, ptr noundef nonnull %57, i8 noundef zeroext %457), !range !215
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %529, label %625, !prof !216

529:                                              ; preds = %253, %258, %275, %280, %210, %226, %105, %134, %128, %140, %291, %300, %287, %523, %328, %429, %426, %111, %526
  %530 = load ptr, ptr %51, align 8, !tbaa !122
  %531 = load i32, ptr %530, align 8
  %532 = lshr i32 %531, 16
  %533 = and i32 %532, 255
  %534 = and i32 %531, 65535
  %535 = icmp eq i32 %534, 39
  br i1 %535, label %536, label %625, !prof !217

536:                                              ; preds = %529
  %537 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !122
  %539 = load i32, ptr %538, align 8
  %540 = and i32 %539, 65535
  %541 = icmp eq i32 %540, 37
  br i1 %541, label %542, label %625, !prof !170

542:                                              ; preds = %536
  %543 = zext nneg i32 %533 to i64
  %544 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !122
  %546 = getelementptr inbounds %struct.rtx_def, ptr %530, i64 0, i32 1
  %547 = load ptr, ptr %546, align 8, !tbaa !122
  %548 = load i32, ptr %547, align 8
  %549 = lshr i32 %548, 16
  %550 = and i32 %549, 255
  %551 = zext nneg i32 %550 to i64
  %552 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !122
  %554 = icmp ugt i8 %545, %553
  br i1 %554, label %555, label %590, !prof !167

555:                                              ; preds = %542
  %556 = load ptr, ptr %33, align 8, !tbaa !122
  %557 = load ptr, ptr %556, align 8, !tbaa !143
  %558 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %559 = load ptr, ptr %558, align 8, !tbaa !122
  %560 = load i32, ptr %559, align 8
  %561 = and i32 %560, 65535
  %562 = icmp eq i32 %561, 39
  br i1 %562, label %563, label %625

563:                                              ; preds = %555
  %564 = getelementptr inbounds %struct.rtx_def, ptr %559, i64 0, i32 1
  %565 = load ptr, ptr %564, align 8, !tbaa !122
  %566 = load i32, ptr %565, align 8
  %567 = and i32 %566, 65535
  %568 = icmp eq i32 %567, 37
  br i1 %568, label %569, label %625

569:                                              ; preds = %563
  %570 = lshr i32 %566, 16
  %571 = and i32 %570, 255
  %572 = icmp eq i32 %571, %533
  br i1 %572, label %573, label %625

573:                                              ; preds = %569
  %574 = call i32 @subreg_lowpart_p(ptr noundef nonnull %559) #19
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %625, label %576

576:                                              ; preds = %573
  %577 = call fastcc zeroext i8 @all_uses_available_at(ptr noundef nonnull %57, ptr noundef %557)
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %625, label %579

579:                                              ; preds = %576
  %580 = load i32, ptr %0, align 8
  %581 = and i32 %580, 254
  %582 = icmp eq i32 %581, 2
  br i1 %582, label %583, label %586

583:                                              ; preds = %579
  %584 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !122
  br label %586

586:                                              ; preds = %583, %579
  %587 = phi ptr [ %585, %583 ], [ null, %579 ]
  %588 = load ptr, ptr %564, align 8, !tbaa !122
  %589 = call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %0, ptr noundef %587, ptr noundef %588, ptr noundef nonnull %57, i8 noundef zeroext 0), !range !215
  br label %625

590:                                              ; preds = %542
  %591 = call i32 @subreg_lowpart_p(ptr noundef nonnull %530) #19
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %625, label %593, !prof !167

593:                                              ; preds = %590
  %594 = load ptr, ptr %33, align 8, !tbaa !122
  %595 = load ptr, ptr %594, align 8, !tbaa !143
  %596 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %597 = load ptr, ptr %596, align 8, !tbaa !122
  %598 = load i32, ptr %597, align 8
  %599 = and i32 %598, 65534
  %600 = icmp eq i32 %599, 98
  br i1 %600, label %601, label %625, !prof !167

601:                                              ; preds = %593
  %602 = getelementptr inbounds %struct.rtx_def, ptr %597, i64 0, i32 1
  %603 = load ptr, ptr %602, align 8, !tbaa !122
  %604 = load i32, ptr %603, align 8
  %605 = and i32 %604, 65535
  %606 = icmp eq i32 %605, 37
  br i1 %606, label %607, label %625

607:                                              ; preds = %601
  %608 = lshr i32 %604, 16
  %609 = and i32 %608, 255
  %610 = icmp eq i32 %609, %533
  br i1 %610, label %611, label %625

611:                                              ; preds = %607
  %612 = call fastcc zeroext i8 @all_uses_available_at(ptr noundef nonnull %57, ptr noundef %595)
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %625, label %614

614:                                              ; preds = %611
  %615 = load i32, ptr %0, align 8
  %616 = and i32 %615, 254
  %617 = icmp eq i32 %616, 2
  br i1 %617, label %618, label %621

618:                                              ; preds = %614
  %619 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %620 = load ptr, ptr %619, align 8, !tbaa !122
  br label %621

621:                                              ; preds = %618, %614
  %622 = phi ptr [ %620, %618 ], [ null, %614 ]
  %623 = load ptr, ptr %602, align 8, !tbaa !122
  %624 = call fastcc zeroext i8 @try_fwprop_subst(ptr noundef nonnull %0, ptr noundef %622, ptr noundef %623, ptr noundef nonnull %57, i8 noundef zeroext 0), !range !215
  br label %625

625:                                              ; preds = %432, %621, %611, %607, %601, %593, %590, %586, %576, %573, %569, %563, %555, %536, %529, %526, %73, %55, %49, %25, %18, %10, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fwprop_done() unnamed_addr #10 !prof !130 !PGOFuncName !244 {
  tail call void @loop_optimizer_finalize() #19
  %1 = load ptr, ptr @use_def_ref, align 8, !tbaa !111
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !228

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  br label %4

4:                                                ; preds = %0, %3
  store ptr null, ptr @use_def_ref, align 8, !tbaa !111
  tail call void @free_dominance_info(i32 noundef 1) #19
  %5 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #19
  %6 = tail call ptr @get_insns() #19
  %7 = tail call i32 @max_reg_num() #19
  %8 = tail call i32 @delete_trivially_dead_insns(ptr noundef %6, i32 noundef %7) #19
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !132

11:                                               ; preds = %4
  %12 = load i32, ptr @num_changes, align 4, !tbaa !126
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.12, i32 noundef %12)
  br label %14

14:                                               ; preds = %11, %4
  ret void
}

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_md_add_problem() local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare void @df_maybe_reorganize_use_refs(i32 noundef) local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @single_def_use_enter_block(ptr nocapture readnone %0, ptr noundef %1) #11 !prof !245 !PGOFuncName !246 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !247
  %5 = load ptr, ptr @df, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 7
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !248
  %10 = icmp ugt i32 %9, %4
  br i1 %10, label %11, label %17, !prof !250

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  %14 = zext i32 %4 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  br label %17

17:                                               ; preds = %2, %11
  %18 = phi ptr [ %16, %11 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !111
  %21 = getelementptr inbounds %struct.dataflow, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !248
  %23 = icmp ugt i32 %22, %4
  br i1 %23, label %24, label %30, !prof !250

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.dataflow, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !251
  %27 = zext i32 %4 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !111
  br label %30

30:                                               ; preds = %17, %24
  %31 = phi ptr [ %29, %24 ], [ null, %17 ]
  %32 = load ptr, ptr @local_md, align 8, !tbaa !111
  %33 = getelementptr inbounds %struct.df_md_bb_info, ptr %18, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !252
  tail call void @bitmap_copy(ptr noundef %32, ptr noundef %34) #19
  %35 = load ptr, ptr @local_lr, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.df_lr_bb_info, ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !254
  tail call void @bitmap_copy(ptr noundef %35, ptr noundef %37) #19
  %38 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40, !prof !256

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !231
  %43 = load i32, ptr %38, align 8, !tbaa !229
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47, !prof !256

45:                                               ; preds = %30, %40
  %46 = tail call ptr @vec_heap_p_reserve(ptr noundef %38, i32 noundef 1) #19
  store ptr %46, ptr @reg_defs_stack, align 8, !tbaa !111
  br label %47

47:                                               ; preds = %40, %45
  %48 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %49 = load i32, ptr %48, align 8, !tbaa !229
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8, !tbaa !229
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %48, i64 0, i32 2, i64 %51
  store ptr null, ptr %52, align 8, !tbaa !111
  %53 = load ptr, ptr @df, align 8, !tbaa !111
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !111
  %56 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !248
  %58 = icmp ugt i32 %57, %4
  tail call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !251
  %61 = zext i32 %4 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !111
  %64 = getelementptr inbounds %struct.df_scan_bb_info, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !257
  %66 = load ptr, ptr %65, align 8, !tbaa !111
  %67 = icmp eq ptr %66, null
  br i1 %67, label %103, label %68, !prof !259

68:                                               ; preds = %47, %100
  %69 = phi ptr [ %101, %100 ], [ %66, %47 ]
  %70 = phi ptr [ %71, %100 ], [ %65, %47 ]
  %71 = getelementptr inbounds ptr, ptr %70, i64 1
  %72 = load i32, ptr %69, align 8
  %73 = and i32 %72, 131072
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %100, label %75, !prof !260

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.df_base_ref, ptr %69, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !122
  %78 = load ptr, ptr @reg_defs, align 8
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %78, i64 0, i32 2, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !111
  %82 = icmp eq ptr %81, null
  br i1 %82, label %100, label %83, !prof !261

83:                                               ; preds = %75
  %84 = load ptr, ptr @local_md, align 8, !tbaa !111
  %85 = tail call i32 @bitmap_bit_p(ptr noundef %84, i32 noundef %77) #19
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100, !prof !262

87:                                               ; preds = %83
  %88 = load ptr, ptr @local_lr, align 8, !tbaa !111
  %89 = tail call i32 @bitmap_bit_p(ptr noundef %88, i32 noundef %77) #19
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91, !prof !263

91:                                               ; preds = %87
  %92 = load ptr, ptr @use_def_ref, align 8
  %93 = getelementptr inbounds %struct.df_base_ref, ptr %69, i64 0, i32 7
  %94 = load i32, ptr %93, align 4, !tbaa !122
  %95 = load ptr, ptr @reg_defs, align 8
  %96 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %95, i64 0, i32 2, i64 %79
  %97 = load ptr, ptr %96, align 8, !tbaa !111
  %98 = zext i32 %94 to i64
  %99 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %92, i64 0, i32 2, i64 %98
  store ptr %97, ptr %99, align 8, !tbaa !111
  br label %100

100:                                              ; preds = %91, %87, %83, %75, %68
  %101 = load ptr, ptr %71, align 8, !tbaa !111
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %68, !prof !264, !llvm.loop !265

103:                                              ; preds = %100, %47
  %104 = load ptr, ptr @df, align 8, !tbaa !111
  %105 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !111
  %107 = getelementptr inbounds %struct.dataflow, ptr %106, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !248
  %109 = icmp ugt i32 %108, %4
  tail call void @llvm.assume(i1 %109)
  %110 = getelementptr inbounds %struct.dataflow, ptr %106, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !251
  %112 = getelementptr inbounds ptr, ptr %111, i64 %61
  %113 = load ptr, ptr %112, align 8, !tbaa !111
  %114 = load ptr, ptr %113, align 8, !tbaa !266
  %115 = load ptr, ptr %114, align 8, !tbaa !111
  %116 = icmp eq ptr %115, null
  br i1 %116, label %178, label %117, !prof !267

117:                                              ; preds = %103, %175
  %118 = phi ptr [ %176, %175 ], [ %115, %103 ]
  %119 = phi ptr [ %120, %175 ], [ %114, %103 ]
  %120 = getelementptr inbounds ptr, ptr %119, i64 1
  %121 = load ptr, ptr @reg_defs, align 8
  %122 = getelementptr inbounds %struct.df_base_ref, ptr %118, i64 0, i32 6
  %123 = load i32, ptr %122, align 8, !tbaa !122
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %121, i64 0, i32 2, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !111
  %127 = load i32, ptr %118, align 8
  %128 = and i32 %127, 131072
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %175, label %130, !prof !268, !llvm.loop !269

130:                                              ; preds = %117
  %131 = icmp eq ptr %126, null
  br i1 %131, label %142, label %132, !prof !270

132:                                              ; preds = %130
  %133 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135, !prof !271

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %133, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !231
  %138 = load i32, ptr %133, align 8, !tbaa !229
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %155, !prof !271

140:                                              ; preds = %135, %132
  %141 = tail call ptr @vec_heap_p_reserve(ptr noundef %133, i32 noundef 1) #19
  store ptr %141, ptr @reg_defs_stack, align 8, !tbaa !111
  br label %155

142:                                              ; preds = %130
  %143 = and i32 %127, 5308416
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %162, !prof !272

145:                                              ; preds = %142
  %146 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148, !prof !273

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %146, i64 0, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !231
  %151 = load i32, ptr %146, align 8, !tbaa !229
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155, !prof !273

153:                                              ; preds = %148, %145
  %154 = tail call ptr @vec_heap_p_reserve(ptr noundef %146, i32 noundef 1) #19
  store ptr %154, ptr @reg_defs_stack, align 8, !tbaa !111
  br label %155

155:                                              ; preds = %148, %153, %135, %140
  %156 = phi ptr [ %126, %140 ], [ %126, %135 ], [ %118, %153 ], [ %118, %148 ]
  %157 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %158 = load i32, ptr %157, align 8, !tbaa !229
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 8, !tbaa !229
  %160 = zext i32 %158 to i64
  %161 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %157, i64 0, i32 2, i64 %160
  store ptr %156, ptr %161, align 8, !tbaa !111
  br label %162

162:                                              ; preds = %155, %142
  %163 = load i32, ptr %118, align 8
  %164 = and i32 %163, 5308416
  %165 = icmp eq i32 %164, 0
  %166 = load ptr, ptr @local_md, align 8, !tbaa !111
  br i1 %165, label %169, label %167, !prof !274

167:                                              ; preds = %162
  %168 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %166, i32 noundef %123) #19
  br label %171

169:                                              ; preds = %162
  %170 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %166, i32 noundef %123) #19
  br label %171

171:                                              ; preds = %167, %169
  %172 = phi ptr [ %118, %169 ], [ null, %167 ]
  %173 = load ptr, ptr @reg_defs, align 8
  %174 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %173, i64 0, i32 2, i64 %124
  store ptr %172, ptr %174, align 8, !tbaa !111
  br label %175

175:                                              ; preds = %171, %117
  %176 = load ptr, ptr %120, align 8, !tbaa !111
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %117, !prof !275

178:                                              ; preds = %175, %103
  %179 = load ptr, ptr @local_lr, align 8, !tbaa !111
  tail call void @df_simulate_initialize_forwards(ptr noundef %1, ptr noundef %179) #19
  %180 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %181 = load ptr, ptr %180, align 8, !tbaa !122
  %182 = load ptr, ptr %181, align 8, !tbaa !122
  %183 = icmp eq ptr %182, null
  br i1 %183, label %367, label %184, !prof !138

184:                                              ; preds = %178, %363
  %185 = phi ptr [ %365, %363 ], [ %182, %178 ]
  %186 = load ptr, ptr %180, align 8, !tbaa !122
  %187 = getelementptr inbounds %struct.rtl_bb_info, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !276
  %189 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 2
  %190 = load ptr, ptr %189, align 8, !tbaa !122
  %191 = icmp eq ptr %185, %190
  br i1 %191, label %367, label %192, !prof !278

192:                                              ; preds = %184
  %193 = load i32, ptr %185, align 8
  %194 = and i32 %193, 65535
  %195 = add nsw i32 %194, -7
  %196 = icmp ult i32 %195, 4
  br i1 %196, label %197, label %363, !prof !279

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !122
  %200 = load ptr, ptr @df, align 8, !tbaa !111
  %201 = getelementptr inbounds %struct.df, ptr %200, i64 0, i32 10
  %202 = load ptr, ptr %201, align 8, !tbaa !172
  %203 = zext i32 %199 to i64
  %204 = getelementptr inbounds ptr, ptr %202, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !111
  %206 = getelementptr inbounds %struct.df_insn_info, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !178
  %208 = load ptr, ptr %207, align 8, !tbaa !111
  %209 = icmp eq ptr %208, null
  br i1 %209, label %245, label %210, !prof !259

210:                                              ; preds = %197, %242
  %211 = phi ptr [ %243, %242 ], [ %208, %197 ]
  %212 = phi ptr [ %213, %242 ], [ %207, %197 ]
  %213 = getelementptr inbounds ptr, ptr %212, i64 1
  %214 = load i32, ptr %211, align 8
  %215 = and i32 %214, 131072
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %242, !prof !280

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.df_base_ref, ptr %211, i64 0, i32 6
  %219 = load i32, ptr %218, align 8, !tbaa !122
  %220 = load ptr, ptr @reg_defs, align 8
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %220, i64 0, i32 2, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !111
  %224 = icmp eq ptr %223, null
  br i1 %224, label %242, label %225, !prof !261

225:                                              ; preds = %217
  %226 = load ptr, ptr @local_md, align 8, !tbaa !111
  %227 = tail call i32 @bitmap_bit_p(ptr noundef %226, i32 noundef %219) #19
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %242, !prof !262

229:                                              ; preds = %225
  %230 = load ptr, ptr @local_lr, align 8, !tbaa !111
  %231 = tail call i32 @bitmap_bit_p(ptr noundef %230, i32 noundef %219) #19
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %242, label %233, !prof !263

233:                                              ; preds = %229
  %234 = load ptr, ptr @use_def_ref, align 8
  %235 = getelementptr inbounds %struct.df_base_ref, ptr %211, i64 0, i32 7
  %236 = load i32, ptr %235, align 4, !tbaa !122
  %237 = load ptr, ptr @reg_defs, align 8
  %238 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %237, i64 0, i32 2, i64 %221
  %239 = load ptr, ptr %238, align 8, !tbaa !111
  %240 = zext i32 %236 to i64
  %241 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %234, i64 0, i32 2, i64 %240
  store ptr %239, ptr %241, align 8, !tbaa !111
  br label %242

242:                                              ; preds = %233, %229, %225, %217, %210
  %243 = load ptr, ptr %213, align 8, !tbaa !111
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %210, !prof !264, !llvm.loop !265

245:                                              ; preds = %242, %197
  %246 = load ptr, ptr @df, align 8, !tbaa !111
  %247 = getelementptr inbounds %struct.df, ptr %246, i64 0, i32 10
  %248 = load ptr, ptr %247, align 8, !tbaa !172
  %249 = getelementptr inbounds ptr, ptr %248, i64 %203
  %250 = load ptr, ptr %249, align 8, !tbaa !111
  %251 = getelementptr inbounds %struct.df_insn_info, ptr %250, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !182
  %253 = load ptr, ptr %252, align 8, !tbaa !111
  %254 = icmp eq ptr %253, null
  br i1 %254, label %290, label %255, !prof !259

255:                                              ; preds = %245, %287
  %256 = phi ptr [ %288, %287 ], [ %253, %245 ]
  %257 = phi ptr [ %258, %287 ], [ %252, %245 ]
  %258 = getelementptr inbounds ptr, ptr %257, i64 1
  %259 = load i32, ptr %256, align 8
  %260 = and i32 %259, 131072
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %287, !prof !280

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.df_base_ref, ptr %256, i64 0, i32 6
  %264 = load i32, ptr %263, align 8, !tbaa !122
  %265 = load ptr, ptr @reg_defs, align 8
  %266 = zext i32 %264 to i64
  %267 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %265, i64 0, i32 2, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !111
  %269 = icmp eq ptr %268, null
  br i1 %269, label %287, label %270, !prof !261

270:                                              ; preds = %262
  %271 = load ptr, ptr @local_md, align 8, !tbaa !111
  %272 = tail call i32 @bitmap_bit_p(ptr noundef %271, i32 noundef %264) #19
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %287, !prof !262

274:                                              ; preds = %270
  %275 = load ptr, ptr @local_lr, align 8, !tbaa !111
  %276 = tail call i32 @bitmap_bit_p(ptr noundef %275, i32 noundef %264) #19
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %287, label %278, !prof !263

278:                                              ; preds = %274
  %279 = load ptr, ptr @use_def_ref, align 8
  %280 = getelementptr inbounds %struct.df_base_ref, ptr %256, i64 0, i32 7
  %281 = load i32, ptr %280, align 4, !tbaa !122
  %282 = load ptr, ptr @reg_defs, align 8
  %283 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %282, i64 0, i32 2, i64 %266
  %284 = load ptr, ptr %283, align 8, !tbaa !111
  %285 = zext i32 %281 to i64
  %286 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %279, i64 0, i32 2, i64 %285
  store ptr %284, ptr %286, align 8, !tbaa !111
  br label %287

287:                                              ; preds = %278, %274, %270, %262, %255
  %288 = load ptr, ptr %258, align 8, !tbaa !111
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %255, !prof !264, !llvm.loop !265

290:                                              ; preds = %287, %245
  %291 = load ptr, ptr @df, align 8, !tbaa !111
  %292 = getelementptr inbounds %struct.df, ptr %291, i64 0, i32 10
  %293 = load ptr, ptr %292, align 8, !tbaa !172
  %294 = getelementptr inbounds ptr, ptr %293, i64 %203
  %295 = load ptr, ptr %294, align 8, !tbaa !111
  %296 = getelementptr inbounds %struct.df_insn_info, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !281
  %298 = load ptr, ptr %297, align 8, !tbaa !111
  %299 = icmp eq ptr %298, null
  br i1 %299, label %361, label %300, !prof !267

300:                                              ; preds = %290, %358
  %301 = phi ptr [ %359, %358 ], [ %298, %290 ]
  %302 = phi ptr [ %303, %358 ], [ %297, %290 ]
  %303 = getelementptr inbounds ptr, ptr %302, i64 1
  %304 = load ptr, ptr @reg_defs, align 8
  %305 = getelementptr inbounds %struct.df_base_ref, ptr %301, i64 0, i32 6
  %306 = load i32, ptr %305, align 8, !tbaa !122
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %304, i64 0, i32 2, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !111
  %310 = load i32, ptr %301, align 8
  %311 = and i32 %310, 131072
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %358, !prof !282, !llvm.loop !269

313:                                              ; preds = %300
  %314 = icmp eq ptr %309, null
  br i1 %314, label %325, label %315, !prof !270

315:                                              ; preds = %313
  %316 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %317 = icmp eq ptr %316, null
  br i1 %317, label %323, label %318, !prof !271

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %316, i64 0, i32 1
  %320 = load i32, ptr %319, align 4, !tbaa !231
  %321 = load i32, ptr %316, align 8, !tbaa !229
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %338, !prof !271

323:                                              ; preds = %318, %315
  %324 = tail call ptr @vec_heap_p_reserve(ptr noundef %316, i32 noundef 1) #19
  store ptr %324, ptr @reg_defs_stack, align 8, !tbaa !111
  br label %338

325:                                              ; preds = %313
  %326 = and i32 %310, 5308416
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %345, !prof !272

328:                                              ; preds = %325
  %329 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %330 = icmp eq ptr %329, null
  br i1 %330, label %336, label %331, !prof !273

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %329, i64 0, i32 1
  %333 = load i32, ptr %332, align 4, !tbaa !231
  %334 = load i32, ptr %329, align 8, !tbaa !229
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %338, !prof !273

336:                                              ; preds = %331, %328
  %337 = tail call ptr @vec_heap_p_reserve(ptr noundef %329, i32 noundef 1) #19
  store ptr %337, ptr @reg_defs_stack, align 8, !tbaa !111
  br label %338

338:                                              ; preds = %331, %336, %318, %323
  %339 = phi ptr [ %309, %323 ], [ %309, %318 ], [ %301, %336 ], [ %301, %331 ]
  %340 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %341 = load i32, ptr %340, align 8, !tbaa !229
  %342 = add i32 %341, 1
  store i32 %342, ptr %340, align 8, !tbaa !229
  %343 = zext i32 %341 to i64
  %344 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %340, i64 0, i32 2, i64 %343
  store ptr %339, ptr %344, align 8, !tbaa !111
  br label %345

345:                                              ; preds = %338, %325
  %346 = load i32, ptr %301, align 8
  %347 = and i32 %346, 5308416
  %348 = icmp eq i32 %347, 0
  %349 = load ptr, ptr @local_md, align 8, !tbaa !111
  br i1 %348, label %352, label %350, !prof !274

350:                                              ; preds = %345
  %351 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %349, i32 noundef %306) #19
  br label %354

352:                                              ; preds = %345
  %353 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %349, i32 noundef %306) #19
  br label %354

354:                                              ; preds = %350, %352
  %355 = phi ptr [ %301, %352 ], [ null, %350 ]
  %356 = load ptr, ptr @reg_defs, align 8
  %357 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %356, i64 0, i32 2, i64 %307
  store ptr %355, ptr %357, align 8, !tbaa !111
  br label %358

358:                                              ; preds = %354, %300
  %359 = load ptr, ptr %303, align 8, !tbaa !111
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %300, !prof !275

361:                                              ; preds = %358, %290
  %362 = load ptr, ptr @local_lr, align 8, !tbaa !111
  tail call void @df_simulate_one_insn_forwards(ptr noundef %1, ptr noundef nonnull %185, ptr noundef %362) #19
  br label %363

363:                                              ; preds = %192, %361
  %364 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 2
  %365 = load ptr, ptr %364, align 8, !tbaa !122
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %184, !prof !283, !llvm.loop !284

367:                                              ; preds = %184, %363, %178
  %368 = load ptr, ptr @df, align 8, !tbaa !111
  %369 = getelementptr inbounds %struct.df, ptr %368, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !111
  %371 = getelementptr inbounds %struct.dataflow, ptr %370, i64 0, i32 2
  %372 = load i32, ptr %371, align 8, !tbaa !248
  %373 = icmp ugt i32 %372, %4
  tail call void @llvm.assume(i1 %373)
  %374 = getelementptr inbounds %struct.dataflow, ptr %370, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !251
  %376 = getelementptr inbounds ptr, ptr %375, i64 %61
  %377 = load ptr, ptr %376, align 8, !tbaa !111
  %378 = getelementptr inbounds %struct.df_scan_bb_info, ptr %377, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !257
  %380 = load ptr, ptr %379, align 8, !tbaa !111
  %381 = icmp eq ptr %380, null
  br i1 %381, label %417, label %382, !prof !259

382:                                              ; preds = %367, %414
  %383 = phi ptr [ %415, %414 ], [ %380, %367 ]
  %384 = phi ptr [ %385, %414 ], [ %379, %367 ]
  %385 = getelementptr inbounds ptr, ptr %384, i64 1
  %386 = load i32, ptr %383, align 8
  %387 = and i32 %386, 131072
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %414, !prof !280

389:                                              ; preds = %382
  %390 = getelementptr inbounds %struct.df_base_ref, ptr %383, i64 0, i32 6
  %391 = load i32, ptr %390, align 8, !tbaa !122
  %392 = load ptr, ptr @reg_defs, align 8
  %393 = zext i32 %391 to i64
  %394 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %392, i64 0, i32 2, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !111
  %396 = icmp eq ptr %395, null
  br i1 %396, label %414, label %397, !prof !261

397:                                              ; preds = %389
  %398 = load ptr, ptr @local_md, align 8, !tbaa !111
  %399 = tail call i32 @bitmap_bit_p(ptr noundef %398, i32 noundef %391) #19
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %414, !prof !262

401:                                              ; preds = %397
  %402 = load ptr, ptr @local_lr, align 8, !tbaa !111
  %403 = tail call i32 @bitmap_bit_p(ptr noundef %402, i32 noundef %391) #19
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %414, label %405, !prof !263

405:                                              ; preds = %401
  %406 = load ptr, ptr @use_def_ref, align 8
  %407 = getelementptr inbounds %struct.df_base_ref, ptr %383, i64 0, i32 7
  %408 = load i32, ptr %407, align 4, !tbaa !122
  %409 = load ptr, ptr @reg_defs, align 8
  %410 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %409, i64 0, i32 2, i64 %393
  %411 = load ptr, ptr %410, align 8, !tbaa !111
  %412 = zext i32 %408 to i64
  %413 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %406, i64 0, i32 2, i64 %412
  store ptr %411, ptr %413, align 8, !tbaa !111
  br label %414

414:                                              ; preds = %405, %401, %397, %389, %382
  %415 = load ptr, ptr %385, align 8, !tbaa !111
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %382, !prof !264, !llvm.loop !265

417:                                              ; preds = %414, %367
  %418 = load ptr, ptr @df, align 8, !tbaa !111
  %419 = getelementptr inbounds %struct.df, ptr %418, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !111
  %421 = getelementptr inbounds %struct.dataflow, ptr %420, i64 0, i32 2
  %422 = load i32, ptr %421, align 8, !tbaa !248
  %423 = icmp ugt i32 %422, %4
  tail call void @llvm.assume(i1 %423)
  %424 = getelementptr inbounds %struct.dataflow, ptr %420, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !251
  %426 = getelementptr inbounds ptr, ptr %425, i64 %61
  %427 = load ptr, ptr %426, align 8, !tbaa !111
  %428 = load ptr, ptr %427, align 8, !tbaa !266
  %429 = load ptr, ptr %428, align 8, !tbaa !111
  %430 = icmp eq ptr %429, null
  br i1 %430, label %492, label %431, !prof !267

431:                                              ; preds = %417, %489
  %432 = phi ptr [ %490, %489 ], [ %429, %417 ]
  %433 = phi ptr [ %434, %489 ], [ %428, %417 ]
  %434 = getelementptr inbounds ptr, ptr %433, i64 1
  %435 = load ptr, ptr @reg_defs, align 8
  %436 = getelementptr inbounds %struct.df_base_ref, ptr %432, i64 0, i32 6
  %437 = load i32, ptr %436, align 8, !tbaa !122
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %435, i64 0, i32 2, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !111
  %441 = load i32, ptr %432, align 8
  %442 = and i32 %441, 131072
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %489, !prof !282, !llvm.loop !269

444:                                              ; preds = %431
  %445 = icmp eq ptr %440, null
  br i1 %445, label %456, label %446, !prof !270

446:                                              ; preds = %444
  %447 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %448 = icmp eq ptr %447, null
  br i1 %448, label %454, label %449, !prof !271

449:                                              ; preds = %446
  %450 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %447, i64 0, i32 1
  %451 = load i32, ptr %450, align 4, !tbaa !231
  %452 = load i32, ptr %447, align 8, !tbaa !229
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %454, label %469, !prof !271

454:                                              ; preds = %449, %446
  %455 = tail call ptr @vec_heap_p_reserve(ptr noundef %447, i32 noundef 1) #19
  store ptr %455, ptr @reg_defs_stack, align 8, !tbaa !111
  br label %469

456:                                              ; preds = %444
  %457 = and i32 %441, 5308416
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %476, !prof !272

459:                                              ; preds = %456
  %460 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %461 = icmp eq ptr %460, null
  br i1 %461, label %467, label %462, !prof !273

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %460, i64 0, i32 1
  %464 = load i32, ptr %463, align 4, !tbaa !231
  %465 = load i32, ptr %460, align 8, !tbaa !229
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %467, label %469, !prof !273

467:                                              ; preds = %462, %459
  %468 = tail call ptr @vec_heap_p_reserve(ptr noundef %460, i32 noundef 1) #19
  store ptr %468, ptr @reg_defs_stack, align 8, !tbaa !111
  br label %469

469:                                              ; preds = %462, %467, %449, %454
  %470 = phi ptr [ %440, %454 ], [ %440, %449 ], [ %432, %467 ], [ %432, %462 ]
  %471 = load ptr, ptr @reg_defs_stack, align 8, !tbaa !111
  %472 = load i32, ptr %471, align 8, !tbaa !229
  %473 = add i32 %472, 1
  store i32 %473, ptr %471, align 8, !tbaa !229
  %474 = zext i32 %472 to i64
  %475 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %471, i64 0, i32 2, i64 %474
  store ptr %470, ptr %475, align 8, !tbaa !111
  br label %476

476:                                              ; preds = %469, %456
  %477 = load i32, ptr %432, align 8
  %478 = and i32 %477, 5308416
  %479 = icmp eq i32 %478, 0
  %480 = load ptr, ptr @local_md, align 8, !tbaa !111
  br i1 %479, label %483, label %481, !prof !274

481:                                              ; preds = %476
  %482 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %480, i32 noundef %437) #19
  br label %485

483:                                              ; preds = %476
  %484 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %480, i32 noundef %437) #19
  br label %485

485:                                              ; preds = %481, %483
  %486 = phi ptr [ %432, %483 ], [ null, %481 ]
  %487 = load ptr, ptr @reg_defs, align 8
  %488 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %487, i64 0, i32 2, i64 %438
  store ptr %486, ptr %488, align 8, !tbaa !111
  br label %489

489:                                              ; preds = %485, %431
  %490 = load ptr, ptr %434, align 8, !tbaa !111
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %431, !prof !275

492:                                              ; preds = %489, %417
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @single_def_use_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #12 !prof !245 !PGOFuncName !285 {
  %3 = load ptr, ptr @reg_defs_stack, align 8
  %4 = load i32, ptr %3, align 8, !tbaa !229
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !229
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %3, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10, !prof !286

10:                                               ; preds = %2
  %11 = load ptr, ptr @reg_defs, align 8
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %8, %10 ], [ %25, %12 ]
  %14 = phi i32 [ %5, %10 ], [ %22, %12 ]
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %13, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !122
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %11, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = icmp eq ptr %13, %19
  %21 = select i1 %20, ptr null, ptr %13, !prof !287
  store ptr %21, ptr %18, align 8, !tbaa !111
  %22 = add i32 %14, -1
  store i32 %22, ptr %3, align 8, !tbaa !229
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %3, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !111
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %12, !prof !288, !llvm.loop !289

27:                                               ; preds = %12, %2
  ret void
}

declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_initialize_forwards(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_one_insn_forwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @all_uses_available_at(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !110 !PGOFuncName !290 {
  %3 = load ptr, ptr @df, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !122
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %23, !prof !173

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !122
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %23, label %21, !prof !174

21:                                               ; preds = %15
  %22 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  br label %23

23:                                               ; preds = %2, %15, %21
  %24 = phi ptr [ %22, %21 ], [ null, %2 ], [ %17, %15 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !175

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 796, ptr noundef nonnull @.str.3) #19
  br label %27

27:                                               ; preds = %23, %26
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !122
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %69, !prof !176

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !122
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %69, !prof !177

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !178
  %40 = load ptr, ptr %39, align 8, !tbaa !111
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %46, !prof !179

42:                                               ; preds = %46
  %43 = getelementptr inbounds ptr, ptr %48, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !111
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46, !prof !180, !llvm.loop !181

46:                                               ; preds = %37, %42
  %47 = phi ptr [ %44, %42 ], [ %40, %37 ]
  %48 = phi ptr [ %43, %42 ], [ %39, %37 ]
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !122
  %51 = tail call i32 @rtx_equal_p(ptr noundef %50, ptr noundef nonnull %33) #19
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %42, label %119, !prof !180

53:                                               ; preds = %42, %37
  %54 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !182
  %56 = load ptr, ptr %55, align 8, !tbaa !111
  %57 = icmp eq ptr %56, null
  br i1 %57, label %119, label %62, !prof !183

58:                                               ; preds = %62
  %59 = getelementptr inbounds ptr, ptr %64, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  %61 = icmp eq ptr %60, null
  br i1 %61, label %119, label %62, !prof !184, !llvm.loop !185

62:                                               ; preds = %53, %58
  %63 = phi ptr [ %60, %58 ], [ %56, %53 ]
  %64 = phi ptr [ %59, %58 ], [ %55, %53 ]
  %65 = getelementptr inbounds %struct.df_base_ref, ptr %63, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !122
  %67 = tail call i32 @rtx_equal_p(ptr noundef %66, ptr noundef nonnull %33) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %58, label %119, !prof !184

69:                                               ; preds = %31, %27
  %70 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !122
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 37
  %75 = select i1 %74, ptr %71, ptr null, !prof !186
  %76 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !178
  %78 = load ptr, ptr %77, align 8, !tbaa !111
  %79 = icmp eq ptr %78, null
  br i1 %79, label %97, label %80, !prof !187

80:                                               ; preds = %69
  %81 = icmp eq ptr %75, null
  br label %86

82:                                               ; preds = %94
  %83 = getelementptr inbounds ptr, ptr %88, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !111
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86, !prof !188, !llvm.loop !189

86:                                               ; preds = %80, %82
  %87 = phi ptr [ %78, %80 ], [ %84, %82 ]
  %88 = phi ptr [ %77, %80 ], [ %83, %82 ]
  br i1 %81, label %94, label %89, !prof !190

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.df_base_ref, ptr %87, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !122
  %92 = tail call i32 @rtx_equal_p(ptr noundef %91, ptr noundef nonnull %75) #19
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %119, !prof !191

94:                                               ; preds = %89, %86
  %95 = tail call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %87, ptr noundef nonnull %0, ptr noundef %1)
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %82, label %119, !prof !192

97:                                               ; preds = %82, %69
  %98 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !182
  %100 = load ptr, ptr %99, align 8, !tbaa !111
  %101 = icmp eq ptr %100, null
  br i1 %101, label %119, label %102, !prof !193

102:                                              ; preds = %97
  %103 = icmp eq ptr %75, null
  br label %108

104:                                              ; preds = %116
  %105 = getelementptr inbounds ptr, ptr %110, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !111
  %107 = icmp eq ptr %106, null
  br i1 %107, label %119, label %108, !prof !194, !llvm.loop !195

108:                                              ; preds = %102, %104
  %109 = phi ptr [ %100, %102 ], [ %106, %104 ]
  %110 = phi ptr [ %99, %102 ], [ %105, %104 ]
  br i1 %103, label %116, label %111, !prof !196

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.df_base_ref, ptr %109, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !122
  %114 = tail call i32 @rtx_equal_p(ptr noundef %113, ptr noundef nonnull %75) #19
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119, !prof !194

116:                                              ; preds = %111, %108
  %117 = tail call fastcc zeroext i8 @use_killed_between(ptr noundef nonnull %109, ptr noundef nonnull %0, ptr noundef %1)
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %104, label %119, !prof !194

119:                                              ; preds = %89, %94, %104, %116, %111, %46, %58, %62, %97, %53
  %120 = phi i8 [ 1, %53 ], [ 1, %97 ], [ 0, %62 ], [ 1, %58 ], [ 0, %46 ], [ 0, %111 ], [ 0, %116 ], [ 1, %104 ], [ 0, %94 ], [ 0, %89 ]
  ret i8 %120
}

declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #3

declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @propagate_rtx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #11 !prof !110 !PGOFuncName !291 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %3, ptr %6, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %16, !prof !204

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !122
  %14 = icmp ult i32 %13, 53
  br i1 %14, label %57, label %15, !prof !205

15:                                               ; preds = %11
  br i1 %10, label %21, label %16, !prof !292

16:                                               ; preds = %5, %15
  %17 = zext nneg i32 %9 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !126
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %22, !prof !206

21:                                               ; preds = %16, %15
  br label %22

22:                                               ; preds = %16, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %16 ]
  %24 = call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @varying_mem_p, ptr noundef null) #19
  %25 = icmp eq i32 %24, 0
  %26 = or disjoint i32 %23, 2
  %27 = select i1 %25, i32 %26, i32 %23, !prof !207
  %28 = icmp eq i8 %4, 0
  %29 = or disjoint i32 %27, 4
  %30 = select i1 %28, i32 %27, i32 %29, !prof !208
  store ptr %0, ptr %7, align 8, !tbaa !111
  %31 = load ptr, ptr %6, align 8, !tbaa !111
  %32 = call ptr @copy_rtx(ptr noundef %31) #19
  %33 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %32, i32 noundef %30)
  %34 = load ptr, ptr %7, align 8, !tbaa !111
  %35 = icmp ne ptr %34, %0
  %36 = icmp ne i8 %33, 0
  %37 = select i1 %35, i1 %36, i1 false, !prof !209
  br i1 %37, label %38, label %57, !prof !206

38:                                               ; preds = %22
  %39 = load i32, ptr %34, align 8
  %40 = and i32 %39, 16711680
  %41 = icmp ne i32 %40, 0
  %42 = and i32 %39, 65535
  %43 = icmp eq i32 %42, 30
  %44 = or i1 %41, %43
  br i1 %44, label %45, label %57, !prof !210

45:                                               ; preds = %38
  %46 = lshr i32 %39, 16
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52, !prof !211

49:                                               ; preds = %45
  %50 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !212
  %51 = call ptr %50(i32 noundef %1, ptr noundef nonnull %34) #19
  store ptr %51, ptr %7, align 8, !tbaa !111
  br label %55

52:                                               ; preds = %45
  %53 = icmp eq i32 %47, %1
  br i1 %53, label %55, label %54, !prof !210

54:                                               ; preds = %52
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 684, ptr noundef nonnull @.str.3) #19
  br label %55

55:                                               ; preds = %54, %52, %49
  %56 = load ptr, ptr %7, align 8, !tbaa !111
  br label %57

57:                                               ; preds = %38, %22, %11, %55
  %58 = phi ptr [ %56, %55 ], [ null, %11 ], [ null, %22 ], [ null, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret ptr %58
}

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @try_fwprop_subst(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #10 !prof !293 !PGOFuncName !294 {
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = load i32, ptr %0, align 8
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = ashr i32 %9, 16
  %13 = load i32, ptr %8, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %25, !prof !210

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 23
  br i1 %22, label %25, label %23, !prof !295

23:                                               ; preds = %17
  %24 = tail call ptr @single_set_2(ptr noundef nonnull %8, ptr noundef nonnull %19) #19
  br label %25

25:                                               ; preds = %5, %17, %23
  %26 = phi ptr [ %24, %23 ], [ null, %5 ], [ %19, %17 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !122
  %30 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %29) #19
  %31 = icmp ne ptr %26, null
  br i1 %31, label %32, label %36, !prof !210

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !122
  %35 = tail call i32 @rtx_cost(ptr noundef %34, i32 noundef 23, i8 noundef zeroext %30) #19
  br label %36

36:                                               ; preds = %32, %25
  %37 = phi i32 [ %35, %32 ], [ 0, %25 ]
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40, !prof !210

40:                                               ; preds = %36
  %41 = load i32, ptr %27, align 8, !tbaa !122
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.5, i32 noundef %41)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %44 = load ptr, ptr %1, align 8, !tbaa !111
  tail call void @print_inline_rtx(ptr noundef %43, ptr noundef %44, i32 noundef 2) #19
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %46 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %45)
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !111
  tail call void @print_inline_rtx(ptr noundef %47, ptr noundef %2, i32 noundef 2) #19
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %49 = tail call i32 @fputc(i32 10, ptr %48)
  br label %50

50:                                               ; preds = %40, %36
  %51 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  %52 = tail call i32 @verify_changes(i32 noundef 0) #19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60, !prof !296

54:                                               ; preds = %50
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %56 = icmp eq ptr %55, null
  br i1 %56, label %82, label %57, !prof !297

57:                                               ; preds = %54
  %58 = load i32, ptr %27, align 8, !tbaa !122
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.8, i32 noundef %58)
  br label %82

60:                                               ; preds = %50
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 65280
  %63 = icmp eq i32 %62, 256
  %64 = and i1 %31, %63
  br i1 %64, label %65, label %76, !prof !298

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !122
  %68 = tail call i32 @rtx_cost(ptr noundef %67, i32 noundef 23, i8 noundef zeroext %30) #19
  %69 = icmp sgt i32 %68, %37
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %27, align 8, !tbaa !122
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.9, i32 noundef %74)
  br label %82

76:                                               ; preds = %65, %60
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79, !prof !299

79:                                               ; preds = %76
  %80 = load i32, ptr %27, align 8, !tbaa !122
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.10, i32 noundef %80)
  br label %82

82:                                               ; preds = %76, %79, %70, %73, %54, %57
  %83 = phi i1 [ true, %57 ], [ true, %54 ], [ true, %73 ], [ true, %70 ], [ false, %79 ], [ false, %76 ]
  %84 = phi i8 [ 0, %57 ], [ 0, %54 ], [ 0, %73 ], [ 0, %70 ], [ 1, %79 ], [ 1, %76 ]
  br i1 %83, label %94, label %85, !prof !296

85:                                               ; preds = %82
  tail call void @confirm_change_group() #19
  %86 = load i32, ptr @num_changes, align 4, !tbaa !126
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @num_changes, align 4, !tbaa !126
  tail call void @df_ref_remove(ptr noundef nonnull %0) #19
  %88 = load i32, ptr %2, align 8
  %89 = and i32 %88, 65535
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !126
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %124, label %110, !prof !298

94:                                               ; preds = %82
  tail call void @cancel_changes(i32 noundef 0) #19
  %95 = icmp eq i8 %4, 0
  br i1 %95, label %124, label %96, !prof !300

96:                                               ; preds = %94
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !111
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99, !prof !297

99:                                               ; preds = %96
  %100 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 24, i64 1, ptr nonnull %97)
  br label %101

101:                                              ; preds = %99, %96
  %102 = tail call ptr @copy_rtx(ptr noundef %2) #19
  %103 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %8, i32 noundef 4, ptr noundef %102) #19
  %104 = load i32, ptr %2, align 8
  %105 = and i32 %104, 65535
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !126
  %109 = icmp eq i32 %108, 9
  br i1 %109, label %124, label %110, !prof !300

110:                                              ; preds = %101, %85
  %111 = phi i32 [ %12, %85 ], [ 4, %101 ]
  %112 = load ptr, ptr @df, align 8, !tbaa !111
  %113 = getelementptr inbounds %struct.df, ptr %112, i64 0, i32 10
  %114 = load ptr, ptr %113, align 8, !tbaa !172
  %115 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !122
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %114, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !111
  %120 = getelementptr inbounds %struct.df_insn_info, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !178
  tail call fastcc void @update_df(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %121, i32 noundef %11, i32 noundef %111)
  %122 = getelementptr inbounds %struct.df_insn_info, ptr %119, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !182
  tail call fastcc void @update_df(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %123, i32 noundef %11, i32 noundef %111)
  br label %124

124:                                              ; preds = %110, %94, %101, %85
  ret i8 %84
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @use_killed_between(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #10 !prof !301 !PGOFuncName !302 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = icmp eq ptr %6, %9
  br i1 %10, label %11, label %28, !prof !303

11:                                               ; preds = %3
  %12 = load ptr, ptr @df, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !172
  %15 = load i32, ptr %4, align 8, !tbaa !122
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  %19 = getelementptr inbounds %struct.df_insn_info, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !304
  %21 = load i32, ptr %7, align 8, !tbaa !122
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %14, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.df_insn_info, ptr %24, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !304
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %31, label %152, !prof !305

28:                                               ; preds = %3
  %29 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %9, ptr noundef %6) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %152, label %31, !prof !306

31:                                               ; preds = %28, %11
  %32 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !122
  %34 = load ptr, ptr @df, align 8, !tbaa !111
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !307
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !111
  %40 = load ptr, ptr %39, align 8, !tbaa !308
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42, !prof !310

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %40, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !122
  %45 = icmp eq ptr %44, null
  %46 = icmp sgt i32 %33, 52
  %47 = and i1 %46, %45
  br i1 %47, label %152, label %48, !prof !311

48:                                               ; preds = %42, %31
  br i1 %10, label %49, label %86, !prof !312

49:                                               ; preds = %48
  %50 = icmp eq ptr %1, %2
  br i1 %50, label %152, label %51, !prof !313

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 10
  br label %53

53:                                               ; preds = %51, %82
  %54 = phi ptr [ %1, %51 ], [ %84, %82 ]
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = add nsw i32 %56, -7
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %59, label %80, !prof !314

59:                                               ; preds = %53
  %60 = load ptr, ptr %52, align 8, !tbaa !172
  %61 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !122
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %60, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !111
  %66 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !281
  %68 = load ptr, ptr %67, align 8, !tbaa !111
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %74, !prof !315

70:                                               ; preds = %74
  %71 = getelementptr inbounds ptr, ptr %76, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !111
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74, !prof !316, !llvm.loop !317

74:                                               ; preds = %59, %70
  %75 = phi ptr [ %72, %70 ], [ %68, %59 ]
  %76 = phi ptr [ %71, %70 ], [ %67, %59 ]
  %77 = getelementptr inbounds %struct.df_base_ref, ptr %75, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !122
  %79 = icmp eq i32 %33, %78
  br i1 %79, label %80, label %70, !prof !318

80:                                               ; preds = %70, %74, %59, %53
  %81 = phi i32 [ 4, %53 ], [ 0, %59 ], [ 1, %74 ], [ 0, %70 ]
  switch i32 %81, label %152 [
    i32 0, label %82
    i32 4, label %82
  ], !prof !319

82:                                               ; preds = %80, %80
  %83 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %84 = load ptr, ptr %83, align 8, !tbaa !122
  %85 = icmp eq ptr %84, %2
  br i1 %85, label %152, label %53, !prof !320, !llvm.loop !321

86:                                               ; preds = %48
  %87 = load ptr, ptr %9, align 8, !tbaa !322
  %88 = icmp eq ptr %87, null
  br i1 %88, label %152, label %89, !prof !323

89:                                               ; preds = %86
  %90 = load i32, ptr %87, align 8, !tbaa !324
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %152, !prof !326

92:                                               ; preds = %89
  br i1 %88, label %96, label %93, !prof !327

93:                                               ; preds = %92
  %94 = load i32, ptr %87, align 8, !tbaa !324
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %97, label %96, !prof !328

96:                                               ; preds = %93, %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.3) #19
  br label %97

97:                                               ; preds = %93, %96
  %98 = load ptr, ptr %9, align 8, !tbaa !322
  %99 = getelementptr inbounds %struct.VEC_edge_base, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !111
  %101 = load ptr, ptr %100, align 8, !tbaa !329
  %102 = icmp eq ptr %101, %6
  br i1 %102, label %103, label %152, !prof !331

103:                                              ; preds = %97
  %104 = tail call ptr @df_bb_regno_last_def_find(ptr noundef %6, i32 noundef %33) #19
  %105 = icmp eq ptr %104, null
  br i1 %105, label %127, label %106, !prof !332

106:                                              ; preds = %103
  %107 = load ptr, ptr @df, align 8, !tbaa !111
  %108 = getelementptr inbounds %struct.df, ptr %107, i64 0, i32 10
  %109 = load ptr, ptr %108, align 8, !tbaa !172
  %110 = getelementptr inbounds %struct.df_base_ref, ptr %104, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !122
  %112 = load ptr, ptr %111, align 8, !tbaa !143
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !122
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %109, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !111
  %118 = getelementptr inbounds %struct.df_insn_info, ptr %117, i64 0, i32 5
  %119 = load i32, ptr %118, align 8, !tbaa !304
  %120 = load i32, ptr %4, align 8, !tbaa !122
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %109, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !111
  %124 = getelementptr inbounds %struct.df_insn_info, ptr %123, i64 0, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !304
  %126 = icmp slt i32 %119, %125
  br i1 %126, label %127, label %152, !prof !333

127:                                              ; preds = %106, %103
  %128 = tail call ptr @df_bb_regno_first_def_find(ptr noundef nonnull %9, i32 noundef %33) #19
  %129 = icmp eq ptr %128, null
  br i1 %129, label %151, label %130, !prof !334

130:                                              ; preds = %127
  %131 = load ptr, ptr @df, align 8, !tbaa !111
  %132 = getelementptr inbounds %struct.df, ptr %131, i64 0, i32 10
  %133 = load ptr, ptr %132, align 8, !tbaa !172
  %134 = getelementptr inbounds %struct.df_base_ref, ptr %128, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !122
  %136 = load ptr, ptr %135, align 8, !tbaa !143
  %137 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !122
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %133, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !111
  %142 = getelementptr inbounds %struct.df_insn_info, ptr %141, i64 0, i32 5
  %143 = load i32, ptr %142, align 8, !tbaa !304
  %144 = load i32, ptr %7, align 8, !tbaa !122
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %133, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !111
  %148 = getelementptr inbounds %struct.df_insn_info, ptr %147, i64 0, i32 5
  %149 = load i32, ptr %148, align 8, !tbaa !304
  %150 = icmp slt i32 %143, %149
  br i1 %150, label %152, label %151

151:                                              ; preds = %130, %127
  br label %152

152:                                              ; preds = %80, %82, %49, %86, %11, %89, %97, %151, %106, %130, %42, %28
  %153 = phi i8 [ 1, %28 ], [ 0, %42 ], [ 0, %151 ], [ 1, %106 ], [ 1, %130 ], [ 1, %97 ], [ 1, %89 ], [ 1, %11 ], [ 1, %86 ], [ 0, %49 ], [ 0, %82 ], [ 1, %80 ]
  ret i8 %153
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_bb_regno_last_def_find(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @df_bb_regno_first_def_find(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @num_changes_pending() local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @varying_mem_p(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #15 !prof !335 !PGOFuncName !336 {
  %3 = load ptr, ptr %0, align 8, !tbaa !111
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  %7 = lshr i32 %4, 26
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  %10 = select i1 %6, i32 %9, i32 0, !prof !337
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @propagate_rtx_1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #11 !prof !338 !PGOFuncName !339 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = lshr i32 %10, 16
  %13 = and i32 %12, 255
  %14 = trunc i32 %3 to i8
  %15 = and i8 %14, 1
  %16 = and i32 %3, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %11, 43
  %19 = select i1 %17, i1 %18, i1 false, !prof !340
  %20 = and i32 %10, 67108864
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false, !prof !341
  br i1 %22, label %23, label %36, !prof !341

23:                                               ; preds = %4
  %24 = tail call i32 @side_effects_p(ptr noundef nonnull %9) #19
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %9, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br i1 %25, label %32, label %29, !prof !342

29:                                               ; preds = %23
  %30 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !111
  %31 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %28, ptr noundef %30) #19
  br label %34

32:                                               ; preds = %23
  %33 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef %28) #19
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi ptr [ %31, %29 ], [ %33, %32 ]
  store ptr %35, ptr %0, align 8, !tbaa !111
  br label %310

36:                                               ; preds = %4
  %37 = icmp eq ptr %9, %1
  br i1 %37, label %38, label %39, !prof !343

38:                                               ; preds = %36
  store ptr %2, ptr %0, align 8, !tbaa !111
  br label %310

39:                                               ; preds = %36
  %40 = zext nneg i32 %11 to i64
  %41 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !126
  switch i32 %42, label %293 [
    i32 4, label %43
    i32 2, label %56
    i32 3, label %56
    i32 0, label %75
    i32 1, label %75
    i32 10, label %104
    i32 11, label %104
    i32 5, label %142
    i32 8, label %159
  ], !prof !344

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !122
  store ptr %45, ptr %5, align 8, !tbaa !111
  %46 = load i32, ptr %45, align 8
  %47 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %48 = load ptr, ptr %5, align 8, !tbaa !111
  %49 = load ptr, ptr %44, align 8, !tbaa !122
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %310, label %51, !prof !345

51:                                               ; preds = %43
  %52 = and i8 %47, 1
  %53 = lshr i32 %46, 16
  %54 = and i32 %53, 255
  %55 = tail call ptr @simplify_gen_unary(i32 noundef %11, i32 noundef %13, ptr noundef %48, i32 noundef %54) #19
  br label %293

56:                                               ; preds = %39, %39
  %57 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !122
  store ptr %58, ptr %5, align 8, !tbaa !111
  %59 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !122
  store ptr %60, ptr %6, align 8, !tbaa !111
  %61 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %62 = and i8 %61, 1
  %63 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %64 = and i8 %62, %63
  %65 = load ptr, ptr %5, align 8, !tbaa !111
  %66 = load ptr, ptr %57, align 8, !tbaa !122
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %72, !prof !346

68:                                               ; preds = %56
  %69 = load ptr, ptr %6, align 8, !tbaa !111
  %70 = load ptr, ptr %59, align 8, !tbaa !122
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %310, label %72, !prof !347

72:                                               ; preds = %68, %56
  %73 = load ptr, ptr %6, align 8, !tbaa !111
  %74 = tail call ptr @simplify_gen_binary(i32 noundef %11, i32 noundef %13, ptr noundef %65, ptr noundef %73) #19
  br label %293

75:                                               ; preds = %39, %39
  %76 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !122
  store ptr %77, ptr %5, align 8, !tbaa !111
  %78 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !122
  store ptr %79, ptr %6, align 8, !tbaa !111
  %80 = load i32, ptr %77, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88, !prof !348

84:                                               ; preds = %75
  %85 = load i32, ptr %79, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  br label %88

88:                                               ; preds = %75, %84
  %89 = phi i32 [ %87, %84 ], [ %82, %75 ]
  %90 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %91 = and i8 %90, 1
  %92 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %93 = and i8 %91, %92
  %94 = load ptr, ptr %5, align 8, !tbaa !111
  %95 = load ptr, ptr %76, align 8, !tbaa !122
  %96 = icmp eq ptr %94, %95
  br i1 %96, label %97, label %101, !prof !349

97:                                               ; preds = %88
  %98 = load ptr, ptr %6, align 8, !tbaa !111
  %99 = load ptr, ptr %78, align 8, !tbaa !122
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %310, label %101, !prof !350

101:                                              ; preds = %97, %88
  %102 = load ptr, ptr %6, align 8, !tbaa !111
  %103 = tail call ptr @simplify_gen_relational(i32 noundef %11, i32 noundef %13, i32 noundef %89, ptr noundef %94, ptr noundef %102) #19
  br label %293

104:                                              ; preds = %39, %39
  %105 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !122
  store ptr %106, ptr %5, align 8, !tbaa !111
  %107 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !122
  store ptr %108, ptr %6, align 8, !tbaa !111
  %109 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %110 = load ptr, ptr %109, align 8, !tbaa !122
  store ptr %110, ptr %7, align 8, !tbaa !111
  %111 = load i32, ptr %106, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %115 = and i8 %114, 1
  %116 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %117 = and i8 %115, %116
  %118 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %119 = and i8 %117, %118
  %120 = load ptr, ptr %5, align 8, !tbaa !111
  %121 = load ptr, ptr %105, align 8, !tbaa !122
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %104
  %124 = load ptr, ptr %6, align 8, !tbaa !111
  %125 = load ptr, ptr %107, align 8, !tbaa !122
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load ptr, ptr %7, align 8, !tbaa !111
  %129 = load ptr, ptr %109, align 8, !tbaa !122
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %310, label %131

131:                                              ; preds = %127, %123, %104
  %132 = icmp eq i32 %113, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %131
  %134 = load i32, ptr %120, align 8
  %135 = lshr i32 %134, 16
  %136 = and i32 %135, 255
  br label %137

137:                                              ; preds = %133, %131
  %138 = phi i32 [ %136, %133 ], [ %113, %131 ]
  %139 = load ptr, ptr %6, align 8, !tbaa !111
  %140 = load ptr, ptr %7, align 8, !tbaa !111
  %141 = tail call ptr @simplify_gen_ternary(i32 noundef %11, i32 noundef %13, i32 noundef %138, ptr noundef %120, ptr noundef %139, ptr noundef %140) #19
  br label %293

142:                                              ; preds = %39
  %143 = icmp eq i32 %11, 39
  br i1 %143, label %144, label %293, !prof !351

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !122
  store ptr %146, ptr %5, align 8, !tbaa !111
  %147 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %148 = load ptr, ptr %5, align 8, !tbaa !111
  %149 = load ptr, ptr %145, align 8, !tbaa !122
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %310, label %151, !prof !352

151:                                              ; preds = %144
  %152 = and i8 %147, 1
  %153 = load i32, ptr %149, align 8
  %154 = lshr i32 %153, 16
  %155 = and i32 %154, 255
  %156 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %157 = load i32, ptr %156, align 8, !tbaa !122
  %158 = tail call ptr @simplify_gen_subreg(i32 noundef %13, ptr noundef %148, i32 noundef %155, i32 noundef %157) #19
  br label %293

159:                                              ; preds = %39
  %160 = icmp ne i32 %11, 43
  %161 = icmp eq ptr %9, %2
  %162 = or i1 %161, %160
  br i1 %162, label %255, label %163, !prof !353

163:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %164 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !122
  store ptr %165, ptr %5, align 8, !tbaa !111
  %166 = tail call zeroext i8 @constant_address_p(ptr noundef %165) #19
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %251, !prof !354

168:                                              ; preds = %163
  %169 = load i32, ptr %165, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 49
  br i1 %171, label %172, label %175, !prof !355

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !122
  br label %175

175:                                              ; preds = %172, %168
  %176 = phi ptr [ %174, %172 ], [ %165, %168 ]
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 37
  br i1 %179, label %180, label %183, !prof !356

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1
  %182 = load i32, ptr %181, align 8, !tbaa !122
  switch i32 %182, label %183 [
    i32 20, label %251
    i32 6, label %251
    i32 16, label %251
  ], !prof !357

183:                                              ; preds = %180, %175
  %184 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !358
  %185 = tail call ptr %184(ptr noundef nonnull %165) #19, !prof !370
  store ptr %185, ptr %8, align 8, !tbaa !111
  store ptr %185, ptr %5, align 8, !tbaa !111
  %186 = or i32 %3, 1
  %187 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, i32 noundef %186)
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %251, label %190, !prof !371

190:                                              ; preds = %183
  %191 = load ptr, ptr %8, align 8, !tbaa !111
  %192 = icmp eq ptr %191, %185
  br i1 %192, label %251, label %193, !prof !371

193:                                              ; preds = %190
  %194 = load i32, ptr %191, align 8
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  %197 = load i32, ptr %185, align 8
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  %200 = icmp eq i32 %196, %199
  %201 = icmp eq i32 %196, 0
  %202 = or i1 %201, %200
  br i1 %202, label %203, label %251, !prof !354

203:                                              ; preds = %193
  tail call fastcc void @canonicalize_address(ptr noundef nonnull %191)
  %204 = load i32, ptr %1, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 37
  br i1 %206, label %207, label %211, !prof !354

207:                                              ; preds = %203
  %208 = load i32, ptr %2, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 37
  br i1 %210, label %249, label %211, !prof !371

211:                                              ; preds = %207, %203
  %212 = load i32, ptr %9, align 8
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  %215 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !122
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218, !prof !355

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.mem_attrs, ptr %216, i64 0, i32 5
  %220 = load i8, ptr %219, align 8, !tbaa !372
  br label %221

221:                                              ; preds = %211, %218
  %222 = phi i8 [ %220, %218 ], [ 0, %211 ]
  %223 = and i8 %14, 4
  %224 = tail call i32 @rtx_equal_p(ptr noundef nonnull %185, ptr noundef nonnull %191) #19
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %251, !prof !354

226:                                              ; preds = %221
  %227 = tail call i32 @memory_address_addr_space_p(i32 noundef %214, ptr noundef nonnull %191, i8 noundef zeroext %222) #19
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %251, label %229, !prof !374

229:                                              ; preds = %226
  %230 = load i32, ptr %185, align 8
  %231 = and i32 %230, 65535
  %232 = icmp eq i32 %231, 37
  br i1 %232, label %233, label %237, !prof !375

233:                                              ; preds = %229
  %234 = load i32, ptr %191, align 8
  %235 = and i32 %234, 65535
  %236 = icmp eq i32 %235, 37
  br i1 %236, label %249, label %237, !prof !376

237:                                              ; preds = %233, %229
  %238 = tail call i32 @address_cost(ptr noundef nonnull %185, i32 noundef %214, i8 noundef zeroext %222, i8 noundef zeroext %223) #19
  %239 = tail call i32 @address_cost(ptr noundef nonnull %191, i32 noundef %214, i8 noundef zeroext %222, i8 noundef zeroext %223) #19
  %240 = sub nsw i32 %238, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246, !prof !298

242:                                              ; preds = %237
  %243 = tail call i32 @rtx_cost(ptr noundef nonnull %191, i32 noundef 23, i8 noundef zeroext %223) #19
  %244 = tail call i32 @rtx_cost(ptr noundef nonnull %185, i32 noundef 23, i8 noundef zeroext %223) #19
  %245 = sub nsw i32 %243, %244
  br label %246

246:                                              ; preds = %242, %237
  %247 = phi i32 [ %245, %242 ], [ %240, %237 ]
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %251, label %249, !prof !374

249:                                              ; preds = %233, %246, %207
  %250 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %9, ptr noundef nonnull %191) #19
  br label %251

251:                                              ; preds = %180, %226, %221, %163, %180, %180, %246, %183, %190, %193, %249
  %252 = phi ptr [ %250, %249 ], [ null, %193 ], [ null, %190 ], [ null, %183 ], [ null, %246 ], [ null, %180 ], [ null, %180 ], [ null, %163 ], [ null, %221 ], [ null, %226 ], [ null, %180 ]
  %253 = phi i8 [ 1, %249 ], [ %188, %193 ], [ %188, %190 ], [ %188, %183 ], [ 1, %246 ], [ 1, %180 ], [ 1, %180 ], [ 1, %163 ], [ 1, %221 ], [ 1, %226 ], [ 1, %180 ]
  %254 = phi i1 [ true, %249 ], [ false, %193 ], [ false, %190 ], [ false, %183 ], [ false, %246 ], [ false, %180 ], [ false, %180 ], [ false, %163 ], [ false, %221 ], [ false, %226 ], [ false, %180 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br i1 %254, label %293, label %310, !prof !377

255:                                              ; preds = %159
  %256 = trunc i32 %10 to i16
  switch i16 %256, label %293 [
    i16 122, label %257
    i16 37, label %289
  ], !prof !378

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !122
  store ptr %259, ptr %5, align 8, !tbaa !111
  %260 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !122
  store ptr %261, ptr %6, align 8, !tbaa !111
  %262 = or i32 %3, 1
  %263 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %262)
  %264 = call fastcc zeroext i8 @propagate_rtx_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %265 = load ptr, ptr %5, align 8, !tbaa !111
  %266 = load ptr, ptr %258, align 8, !tbaa !122
  %267 = icmp eq ptr %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %257
  %269 = load ptr, ptr %6, align 8, !tbaa !111
  %270 = load ptr, ptr %260, align 8, !tbaa !122
  %271 = icmp eq ptr %269, %270
  br i1 %271, label %310, label %272

272:                                              ; preds = %268, %257
  %273 = load i32, ptr %265, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 121
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !122
  %279 = load ptr, ptr %6, align 8, !tbaa !111
  %280 = tail call i32 @rtx_equal_p(ptr noundef %278, ptr noundef %279) #19
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %276, %272
  %283 = load ptr, ptr %6, align 8, !tbaa !111
  %284 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %13, ptr noundef nonnull %265, ptr noundef %283) #19
  br label %285

285:                                              ; preds = %276, %282
  %286 = phi ptr [ %284, %282 ], [ %279, %276 ]
  %287 = tail call i32 @memory_address_addr_space_p(i32 noundef %13, ptr noundef %286, i8 noundef zeroext 0) #19
  %288 = trunc i32 %287 to i8
  br label %310

289:                                              ; preds = %255
  %290 = tail call i32 @rtx_equal_p(ptr noundef nonnull %9, ptr noundef %1) #19
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %293, label %292, !prof !379

292:                                              ; preds = %289
  store ptr %2, ptr %0, align 8, !tbaa !111
  br label %310

293:                                              ; preds = %255, %39, %251, %289, %142, %151, %137, %101, %72, %51
  %294 = phi ptr [ null, %39 ], [ %252, %251 ], [ null, %289 ], [ %158, %151 ], [ null, %142 ], [ %141, %137 ], [ %103, %101 ], [ %74, %72 ], [ %55, %51 ], [ null, %255 ]
  %295 = phi i8 [ 1, %39 ], [ %253, %251 ], [ 1, %289 ], [ %152, %151 ], [ 1, %142 ], [ %119, %137 ], [ %93, %101 ], [ %64, %72 ], [ %52, %51 ], [ 1, %255 ]
  %296 = icmp eq ptr %294, null
  br i1 %296, label %310, label %297, !prof !380

297:                                              ; preds = %293
  store ptr %294, ptr %0, align 8, !tbaa !111
  %298 = icmp ne i8 %295, 0
  %299 = and i32 %3, 1
  %300 = icmp ne i32 %299, 0
  %301 = or i1 %300, %298
  br i1 %301, label %310, label %302, !prof !381

302:                                              ; preds = %297
  %303 = load i32, ptr %294, align 8
  %304 = and i32 %303, 65535
  %305 = zext nneg i32 %304 to i64
  %306 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !126
  %308 = icmp eq i32 %307, 9
  %309 = zext i1 %308 to i8
  br label %310

310:                                              ; preds = %251, %127, %97, %68, %297, %302, %293, %268, %144, %43, %292, %285, %38, %34
  %311 = phi i8 [ %15, %38 ], [ %288, %285 ], [ %15, %292 ], [ 0, %34 ], [ 1, %43 ], [ 1, %144 ], [ 1, %268 ], [ 1, %293 ], [ 1, %297 ], [ %309, %302 ], [ 1, %68 ], [ 1, %97 ], [ 1, %127 ], [ 1, %251 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i8 %311
}

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_ternary(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @canonicalize_address(ptr nocapture noundef %0) unnamed_addr #10 !prof !382 !PGOFuncName !383 {
  br label %2

2:                                                ; preds = %40, %1
  %3 = phi ptr [ %0, %1 ], [ %42, %40 ]
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %39 [
    i16 65, label %6
    i16 49, label %29
    i16 35, label %37
  ], !prof !384

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 30
  br i1 %12, label %13, label %40, !prof !385

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !122
  %16 = lshr i32 %4, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !122
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = icmp ult i64 %15, %22
  br i1 %23, label %24, label %40, !prof !385

24:                                               ; preds = %13
  %25 = and i32 %4, -65536
  %26 = or disjoint i32 %25, 52
  store i32 %26, ptr %3, align 8
  %27 = shl nuw i64 1, %15
  %28 = tail call ptr @gen_int_mode(i64 noundef %27, i32 noundef %17) #19
  store ptr %28, ptr %8, align 8, !tbaa !122
  br label %40

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !122
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i16
  switch i16 %33, label %35 [
    i16 49, label %34
    i16 65, label %34
    i16 35, label %34
  ], !prof !386

34:                                               ; preds = %29, %29, %29
  tail call fastcc void @canonicalize_address(ptr noundef nonnull %31)
  br label %35

35:                                               ; preds = %29, %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %40

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %40

39:                                               ; preds = %2
  ret void

40:                                               ; preds = %6, %13, %24, %37, %35
  %41 = phi ptr [ %38, %37 ], [ %36, %35 ], [ %7, %24 ], [ %7, %13 ], [ %7, %6 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !122
  br label %2, !llvm.loop !387
}

declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @address_cost(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @verify_changes(i32 noundef) local_unnamed_addr #3

declare void @confirm_change_group() local_unnamed_addr #3

declare void @df_ref_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @update_df(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 !prof !388 !PGOFuncName !389 {
  %6 = alloca %struct.find_occurrence_data, align 8
  %7 = load ptr, ptr %2, align 8, !tbaa !111
  %8 = icmp eq ptr %7, null
  br i1 %8, label %90, label %9, !prof !390

9:                                                ; preds = %5, %82
  %10 = phi ptr [ %84, %82 ], [ %7, %5 ]
  %11 = phi ptr [ %28, %82 ], [ %2, %5 ]
  %12 = phi i8 [ %83, %82 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %23 [
    i16 37, label %24
    i16 39, label %17
  ]

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %9
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 883, ptr noundef nonnull @.str.3) #19
  br label %24

24:                                               ; preds = %9, %17, %23
  %25 = getelementptr inbounds %struct.find_occurrence_data, ptr %6, i64 0, i32 1
  store ptr %14, ptr %6, align 8, !tbaa !391
  store ptr null, ptr %25, align 8, !tbaa !393
  %26 = call i32 @for_each_rtx(ptr noundef %1, ptr noundef nonnull @find_occurrence_callback, ptr noundef nonnull %6) #19
  %27 = load ptr, ptr %25, align 8, !tbaa !393
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  %28 = getelementptr inbounds ptr, ptr %11, i64 1
  %29 = icmp eq ptr %27, null
  br i1 %29, label %82, label %30, !llvm.loop !394

30:                                               ; preds = %24
  %31 = load i32, ptr %10, align 8
  %32 = and i32 %31, 50331648
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.df_extract_ref, ptr %10, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !122
  %37 = getelementptr inbounds %struct.df_extract_ref, ptr %10, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !122
  %39 = getelementptr inbounds %struct.df_extract_ref, ptr %10, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !122
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i32 [ %36, %34 ], [ -1, %30 ]
  %43 = phi i32 [ %38, %34 ], [ -1, %30 ]
  %44 = phi i32 [ %40, %34 ], [ 0, %30 ]
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %13, align 8, !tbaa !122
  %47 = load ptr, ptr %45, align 8, !tbaa !122
  %48 = ashr i32 %31, 16
  %49 = or i32 %48, %4
  %50 = call ptr @df_ref_create(ptr noundef %46, ptr noundef nonnull %27, ptr noundef %0, ptr noundef %47, i32 noundef %3, i32 noundef %49, i32 noundef %42, i32 noundef %43, i32 noundef %44) #19
  %51 = getelementptr inbounds %struct.df_base_ref, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %51, align 4, !tbaa !122
  %53 = load ptr, ptr @use_def_ref, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %41
  %56 = load i32, ptr %53, align 8, !tbaa !229
  br label %57

57:                                               ; preds = %41, %55
  %58 = phi i32 [ %56, %55 ], [ 0, %41 ]
  %59 = icmp eq i32 %52, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 931, ptr noundef nonnull @.str.3) #19
  br label %61

61:                                               ; preds = %57, %60
  %62 = load ptr, ptr @use_def_ref, align 8
  %63 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 7
  %64 = load i32, ptr %63, align 4, !tbaa !122
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %62, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !111
  %68 = icmp eq ptr %62, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %62, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !231
  %72 = load i32, ptr %62, align 8, !tbaa !229
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61, %69
  %75 = call ptr @vec_heap_p_reserve(ptr noundef %62, i32 noundef 1) #19
  store ptr %75, ptr @use_def_ref, align 8, !tbaa !111
  br label %76

76:                                               ; preds = %69, %74
  %77 = load ptr, ptr @use_def_ref, align 8, !tbaa !111
  %78 = load i32, ptr %77, align 8, !tbaa !229
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !229
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %77, i64 0, i32 2, i64 %80
  store ptr %67, ptr %81, align 8, !tbaa !111
  br label %82

82:                                               ; preds = %24, %76
  %83 = phi i8 [ 1, %76 ], [ %12, %24 ]
  %84 = load ptr, ptr %28, align 8, !tbaa !111
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %9, !prof !390

86:                                               ; preds = %82
  %87 = icmp eq i8 %83, 0
  br i1 %87, label %90, label %88, !prof !395

88:                                               ; preds = %86
  %89 = call zeroext i8 @df_insn_rescan(ptr noundef %0) #19
  br label %90

90:                                               ; preds = %5, %88, %86
  ret void
}

declare void @cancel_changes(i32 noundef) local_unnamed_addr #3

declare ptr @df_ref_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @find_occurrence_callback(ptr noundef %0, ptr nocapture noundef %1) #16 !prof !110 {
  %3 = load ptr, ptr %0, align 8, !tbaa !111
  %4 = load ptr, ptr %1, align 8, !tbaa !391
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.find_occurrence_data, ptr %1, i64 0, i32 1
  store ptr %0, ptr %7, align 8, !tbaa !393
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %9
}

declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

declare i32 @delete_trivially_dead_insns(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!109}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!35 = !{ptr @fwprop, ptr @fwprop_init, i64 38}
!36 = !{ptr @fwprop, ptr @find_reg_note, i64 238451}
!37 = !{ptr @fwprop, ptr @reg_mentioned_p, i64 469084}
!38 = !{ptr @fwprop, ptr @multiple_sets, i64 469084}
!39 = !{ptr @fwprop, ptr @single_set_2, i64 65932}
!40 = !{ptr @fwprop, ptr @asm_noperands, i64 38}
!41 = !{ptr @fwprop, ptr @rtx_equal_p, i64 279579}
!42 = !{ptr @fwprop, ptr @use_killed_between, i64 81418}
!43 = !{ptr @fwprop, ptr @optimize_bb_for_speed_p, i64 238478}
!44 = !{ptr @fwprop, ptr @for_each_rtx, i64 178716}
!45 = !{ptr @fwprop, ptr @copy_rtx, i64 178716}
!46 = !{ptr @fwprop, ptr @propagate_rtx_1, i64 178716}
!47 = !{ptr @fwprop, ptr @try_fwprop_subst, i64 19338}
!48 = !{ptr @fwprop, ptr @subreg_lowpart_p, i64 7188}
!49 = !{ptr @fwprop, ptr @fwprop_done, i64 38}
!50 = !{ptr @fwprop_addr, ptr @fwprop_init, i64 38}
!51 = !{ptr @fwprop_addr, ptr @fwprop_done, i64 38}
!52 = !{ptr @fwprop_init, ptr @calculate_dominance_info, i64 76}
!53 = !{ptr @fwprop_init, ptr @loop_optimizer_init, i64 76}
!54 = !{ptr @fwprop_init, ptr @df_set_flags, i64 152}
!55 = !{ptr @fwprop_init, ptr @df_md_add_problem, i64 76}
!56 = !{ptr @fwprop_init, ptr @df_note_add_problem, i64 76}
!57 = !{ptr @fwprop_init, ptr @df_analyze, i64 76}
!58 = !{ptr @fwprop_init, ptr @df_maybe_reorganize_use_refs, i64 76}
!59 = !{ptr @fwprop_init, ptr @vec_heap_p_reserve_exact, i64 228}
!60 = !{ptr @fwprop_init, ptr @max_reg_num, i64 152}
!61 = !{ptr @fwprop_init, ptr @bitmap_obstack_alloc_stat, i64 152}
!62 = !{ptr @fwprop_init, ptr @init_walk_dominator_tree, i64 76}
!63 = !{ptr @fwprop_init, ptr @walk_dominator_tree, i64 76}
!64 = !{ptr @fwprop_init, ptr @fini_walk_dominator_tree, i64 76}
!65 = !{ptr @fwprop_init, ptr @bitmap_obstack_free, i64 152}
!66 = !{ptr @fwprop_init, ptr @free, i64 152}
!67 = !{ptr @fwprop_done, ptr @loop_optimizer_finalize, i64 76}
!68 = !{ptr @fwprop_done, ptr @free, i64 76}
!69 = !{ptr @fwprop_done, ptr @free_dominance_info, i64 76}
!70 = !{ptr @fwprop_done, ptr @cleanup_cfg, i64 76}
!71 = !{ptr @fwprop_done, ptr @get_insns, i64 76}
!72 = !{ptr @fwprop_done, ptr @max_reg_num, i64 76}
!73 = !{ptr @fwprop_done, ptr @delete_trivially_dead_insns, i64 76}
!74 = !{ptr @single_def_use_enter_block, ptr @bitmap_copy, i64 741270}
!75 = !{ptr @single_def_use_enter_block, ptr @bitmap_bit_p, i64 5415442}
!76 = !{ptr @single_def_use_enter_block, ptr @bitmap_set_bit, i64 6184390}
!77 = !{ptr @single_def_use_enter_block, ptr @bitmap_clear_bit, i64 943804}
!78 = !{ptr @single_def_use_enter_block, ptr @df_simulate_initialize_forwards, i64 370635}
!79 = !{ptr @single_def_use_enter_block, ptr @df_simulate_one_insn_forwards, i64 1360059}
!80 = !{ptr @try_fwprop_subst, ptr @single_set_2, i64 6971}
!81 = !{ptr @try_fwprop_subst, ptr @optimize_bb_for_speed_p, i64 21334}
!82 = !{ptr @try_fwprop_subst, ptr @rtx_cost, i64 21334}
!83 = !{ptr @try_fwprop_subst, ptr @validate_unshare_change, i64 21334}
!84 = !{ptr @try_fwprop_subst, ptr @verify_changes, i64 21334}
!85 = !{ptr @try_fwprop_subst, ptr @confirm_change_group, i64 14363}
!86 = !{ptr @try_fwprop_subst, ptr @df_ref_remove, i64 14363}
!87 = !{ptr @try_fwprop_subst, ptr @cancel_changes, i64 6971}
!88 = !{ptr @try_fwprop_subst, ptr @copy_rtx, i64 6971}
!89 = !{ptr @try_fwprop_subst, ptr @set_unique_reg_note, i64 6971}
!90 = !{ptr @try_fwprop_subst, ptr @update_df, i64 42668}
!91 = !{ptr @use_killed_between, ptr @dominated_by_p, i64 55546}
!92 = !{ptr @use_killed_between, ptr @df_bb_regno_last_def_find, i64 258}
!93 = !{ptr @use_killed_between, ptr @df_bb_regno_first_def_find, i64 258}
!94 = !{ptr @propagate_rtx_1, ptr @side_effects_p, i64 214}
!95 = !{ptr @propagate_rtx_1, ptr @gen_rtx_fmt_0_stat, i64 214}
!96 = !{ptr @propagate_rtx_1, ptr @propagate_rtx_1, i64 227693}
!97 = !{ptr @propagate_rtx_1, ptr @simplify_gen_unary, i64 718}
!98 = !{ptr @propagate_rtx_1, ptr @simplify_gen_binary, i64 83313}
!99 = !{ptr @propagate_rtx_1, ptr @simplify_gen_relational, i64 2471}
!100 = !{ptr @propagate_rtx_1, ptr @simplify_gen_subreg, i64 6977}
!101 = !{ptr @propagate_rtx_1, ptr @constant_address_p, i64 14386}
!102 = !{ptr @propagate_rtx_1, ptr @canonicalize_address, i64 7216}
!103 = !{ptr @propagate_rtx_1, ptr @rtx_equal_p, i64 108260}
!104 = !{ptr @propagate_rtx_1, ptr @memory_address_addr_space_p, i64 7216}
!105 = !{ptr @propagate_rtx_1, ptr @address_cost, i64 14408}
!106 = !{ptr @propagate_rtx_1, ptr @replace_equiv_address_nv, i64 7193}
!107 = !{ptr @canonicalize_address, ptr @gen_int_mode, i64 23}
!108 = !{ptr @canonicalize_address, ptr @canonicalize_address, i64 23}
!109 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!110 = !{!"function_entry_count", i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"any pointer", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!116, !112, i64 8}
!116 = !{!"_IO_FILE", !117, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48, !112, i64 56, !112, i64 64, !112, i64 72, !112, i64 80, !112, i64 88, !112, i64 96, !112, i64 104, !117, i64 112, !117, i64 116, !118, i64 120, !119, i64 128, !113, i64 130, !113, i64 131, !112, i64 136, !118, i64 144, !112, i64 152, !112, i64 160, !112, i64 168, !112, i64 176, !118, i64 184, !117, i64 192, !113, i64 196}
!117 = !{!"int", !113, i64 0}
!118 = !{!"long", !113, i64 0}
!119 = !{!"short", !113, i64 0}
!120 = !{!116, !112, i64 16}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{!113, !113, i64 0}
!123 = !{!116, !112, i64 40}
!124 = !{!116, !112, i64 48}
!125 = !{!116, !117, i64 0}
!126 = !{!117, !117, i64 0}
!127 = distinct !{!127, !128, !129}
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = !{!"function_entry_count", i64 76}
!131 = !{!"fwprop.c;gate_fwprop"}
!132 = !{!"branch_weights", i32 76, i32 0}
!133 = !{!"function_entry_count", i64 38}
!134 = !{!"fwprop.c;fwprop"}
!135 = !{!136, !117, i64 204}
!136 = !{!"df", !113, i64 0, !113, i64 64, !112, i64 128, !137, i64 136, !137, i64 176, !112, i64 216, !112, i64 224, !112, i64 232, !117, i64 240, !117, i64 244, !112, i64 248, !117, i64 256, !117, i64 260, !112, i64 264, !112, i64 272, !112, i64 280, !112, i64 288, !112, i64 296, !112, i64 304, !112, i64 312, !112, i64 320, !112, i64 328, !112, i64 336, !117, i64 344, !117, i64 348, !112, i64 352, !117, i64 360, !117, i64 364, !113, i64 365, !113, i64 366}
!137 = !{!"df_ref_info", !112, i64 0, !112, i64 8, !112, i64 16, !117, i64 24, !117, i64 28, !117, i64 32, !117, i64 36}
!138 = !{!"branch_weights", i32 1, i32 151}
!139 = !{!136, !112, i64 176}
!140 = !{!"branch_weights", i32 0, i32 1491559}
!141 = !{!"branch_weights", i32 1395150, i32 96409}
!142 = !{!"branch_weights", i32 0, i32 96409}
!143 = !{!144, !112, i64 0}
!144 = !{!"df_insn_info", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !117, i64 40}
!145 = !{!146, !112, i64 24}
!146 = !{!"basic_block_def", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !113, i64 32, !112, i64 48, !112, i64 56, !113, i64 64, !118, i64 72, !117, i64 80, !117, i64 84, !117, i64 88, !117, i64 92, !117, i64 96}
!147 = !{!148, !112, i64 40}
!148 = !{!"loop", !117, i64 0, !117, i64 4, !112, i64 8, !112, i64 16, !149, i64 24, !117, i64 32, !117, i64 36, !112, i64 40, !112, i64 48, !112, i64 56, !112, i64 64, !112, i64 72, !150, i64 80, !150, i64 96, !113, i64 112, !113, i64 113, !117, i64 116, !112, i64 120, !112, i64 128, !113, i64 136, !112, i64 144}
!149 = !{!"lpt_decision", !117, i64 0, !117, i64 4}
!150 = !{!"", !118, i64 0, !118, i64 8}
!151 = !{!"branch_weights", i32 96409, i32 0}
!152 = !{!153, !117, i64 0}
!153 = !{!"VEC_loop_p_base", !117, i64 0, !117, i64 4, !113, i64 8}
!154 = !{!"branch_weights", i32 867916, i32 623643}
!155 = !{!"branch_weights", i32 3857, i32 619786}
!156 = !{!"branch_weights", i32 150701, i32 469085}
!157 = !{!"branch_weights", i32 469085, i32 0}
!158 = !{!"branch_weights", i32 469078, i32 7}
!159 = !{!"branch_weights", i32 0, i32 469085}
!160 = !{!"branch_weights", i32 449850, i32 19235}
!161 = !{!"branch_weights", i32 441623, i32 27462}
!162 = !{!"branch_weights", i32 38, i32 469047}
!163 = !{!"branch_weights", i32 0, i32 38}
!164 = !{!"branch_weights", i32 469047, i32 0}
!165 = !{!"branch_weights", i32 150046, i32 319001}
!166 = !{!"branch_weights", i32 6977, i32 312024}
!167 = !{!"branch_weights", i32 0, i32 6977}
!168 = !{!"branch_weights", i32 312024, i32 6977}
!169 = !{!"branch_weights", i32 0, i32 312024}
!170 = !{!"branch_weights", i32 6977, i32 0}
!171 = !{!"branch_weights", i32 21334, i32 297667}
!172 = !{!136, !112, i64 248}
!173 = !{!"branch_weights", i32 297667, i32 0}
!174 = !{!"branch_weights", i32 278432, i32 19235}
!175 = !{!"branch_weights", i32 0, i32 297667}
!176 = !{!"branch_weights", i32 216746, i32 80921}
!177 = !{!"branch_weights", i32 216746, i32 0}
!178 = !{!144, !112, i64 16}
!179 = !{!"branch_weights", i32 18591, i32 198155}
!180 = !{!"branch_weights", i32 198155, i32 0}
!181 = distinct !{!181, !128, !129}
!182 = !{!144, !112, i64 24}
!183 = !{!"branch_weights", i32 216739, i32 7}
!184 = !{!"branch_weights", i32 7, i32 0}
!185 = distinct !{!185, !128, !129}
!186 = !{!"branch_weights", i32 80921, i32 0}
!187 = !{!"branch_weights", i32 1, i32 25015}
!188 = !{!"branch_weights", i32 25015, i32 31511}
!189 = distinct !{!189, !128, !129}
!190 = !{!"branch_weights", i32 0, i32 56526}
!191 = !{!"branch_weights", i32 56526, i32 0}
!192 = !{!"branch_weights", i32 621, i32 55905}
!193 = !{!"branch_weights", i32 24861, i32 155}
!194 = !{!"branch_weights", i32 155, i32 0}
!195 = distinct !{!195, !128, !129}
!196 = !{!"branch_weights", i32 0, i32 155}
!197 = !{!"branch_weights", i32 0, i32 263096}
!198 = !{!199, !117, i64 0}
!199 = !{!"rtvec_def", !117, i64 0, !113, i64 8}
!200 = distinct !{!200, !128, !129}
!201 = distinct !{!201, !128, !129}
!202 = !{!"branch_weights", i32 38, i32 263058}
!203 = !{!"branch_weights", i32 263058, i32 0}
!204 = !{!"branch_weights", i32 65932, i32 197164}
!205 = !{!"branch_weights", i32 65932, i32 0}
!206 = !{!"branch_weights", i32 21334, i32 175830}
!207 = !{!"branch_weights", i32 79221, i32 117943}
!208 = !{!"branch_weights", i32 168609, i32 28555}
!209 = !{!"branch_weights", i32 178468, i32 18696}
!210 = !{!"branch_weights", i32 21334, i32 0}
!211 = !{!"branch_weights", i32 0, i32 21334}
!212 = !{!213, !112, i64 8}
!213 = !{!"rtl_hooks", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32}
!214 = !{!"branch_weights", i32 241762, i32 21334}
!215 = !{i8 0, i8 2}
!216 = !{!"branch_weights", i32 454722, i32 14363}
!217 = !{!"branch_weights", i32 6977, i32 447745}
!218 = !{!"branch_weights", i32 5966085, i32 151}
!219 = distinct !{!219, !128, !129}
!220 = !{!"fwprop.c;fwprop_addr"}
!221 = !{!"branch_weights", i32 0, i32 1236832}
!222 = !{!"branch_weights", i32 1154785, i32 82047}
!223 = !{!"branch_weights", i32 0, i32 82047}
!224 = !{!"branch_weights", i32 82047, i32 0}
!225 = !{!"branch_weights", i32 4947177, i32 151}
!226 = distinct !{!226, !128, !129}
!227 = !{!"fwprop.c;fwprop_init"}
!228 = !{!"branch_weights", i32 0, i32 76}
!229 = !{!230, !117, i64 0}
!230 = !{!"VEC_df_ref_base", !117, i64 0, !117, i64 4, !113, i64 8}
!231 = !{!230, !117, i64 4}
!232 = !{}
!233 = !{!"VP", i32 1, i64 76, i64 513, i64 76}
!234 = !{!235, !112, i64 8}
!235 = !{!"function", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48, !112, i64 56, !112, i64 64, !112, i64 72, !112, i64 80, !112, i64 88, !112, i64 96, !117, i64 104, !117, i64 108, !117, i64 112, !117, i64 116, !117, i64 120, !117, i64 124, !112, i64 128, !117, i64 136, !117, i64 137, !117, i64 138, !117, i64 138, !117, i64 138, !117, i64 138, !117, i64 138, !117, i64 138, !117, i64 138, !117, i64 139, !117, i64 139, !117, i64 139, !117, i64 139, !117, i64 139, !117, i64 139, !117, i64 139}
!236 = !{!237, !117, i64 24}
!237 = !{!"control_flow_graph", !112, i64 0, !112, i64 8, !112, i64 16, !117, i64 24, !117, i64 28, !117, i64 32, !112, i64 40, !117, i64 48, !113, i64 52, !113, i64 60, !117, i64 68, !117, i64 72}
!238 = !{!239, !112, i64 8}
!239 = !{!"dom_walk_data", !117, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !118, i64 48, !112, i64 56}
!240 = !{!239, !112, i64 16}
!241 = !{!239, !112, i64 24}
!242 = !{!237, !112, i64 0}
!243 = !{!"fwprop.c;forward_propagate_into"}
!244 = !{!"fwprop.c;fwprop_done"}
!245 = !{!"function_entry_count", i64 370635}
!246 = !{!"fwprop.c;single_def_use_enter_block"}
!247 = !{!146, !117, i64 80}
!248 = !{!249, !117, i64 16}
!249 = !{!"dataflow", !112, i64 0, !112, i64 8, !117, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !117, i64 48, !113, i64 52, !113, i64 53, !113, i64 54}
!250 = !{!"branch_weights", i32 370635, i32 0}
!251 = !{!249, !112, i64 8}
!252 = !{!253, !112, i64 24}
!253 = !{!"df_md_bb_info", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32}
!254 = !{!255, !112, i64 16}
!255 = !{!"df_lr_bb_info", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24}
!256 = !{!"branch_weights", i32 0, i32 370635}
!257 = !{!258, !112, i64 8}
!258 = !{!"df_scan_bb_info", !112, i64 0, !112, i64 8}
!259 = !{!"branch_weights", i32 1, i32 3479213}
!260 = !{!"branch_weights", i32 1482236, i32 2728087}
!261 = !{!"branch_weights", i32 5092, i32 2722995}
!262 = !{!"branch_weights", i32 2720336, i32 2659}
!263 = !{!"branch_weights", i32 0, i32 2720336}
!264 = !{!"branch_weights", i32 3479213, i32 731110}
!265 = distinct !{!265, !128, !129}
!266 = !{!258, !112, i64 0}
!267 = !{!"branch_weights", i32 1, i32 2110241}
!268 = !{!"branch_weights", i32 532, i32 7158428}
!269 = distinct !{!269, !128, !129}
!270 = !{!"branch_weights", i32 6629902, i32 528526}
!271 = !{!"branch_weights", i32 0, i32 528526}
!272 = !{!"branch_weights", i32 578636, i32 6051266}
!273 = !{!"branch_weights", i32 0, i32 578636}
!274 = !{!"branch_weights", i32 947808, i32 6210620}
!275 = !{!"branch_weights", i32 2110241, i32 5048719}
!276 = !{!277, !112, i64 8}
!277 = !{!"rtl_bb_info", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !117, i64 32}
!278 = !{!"branch_weights", i32 370483, i32 1906196}
!279 = !{!"branch_weights", i32 1368972, i32 537224}
!280 = !{!"branch_weights", i32 2728087, i32 1482236}
!281 = !{!144, !112, i64 8}
!282 = !{!"branch_weights", i32 7158428, i32 532}
!283 = !{!"branch_weights", i32 151, i32 2276528}
!284 = distinct !{!284, !128, !129}
!285 = !{!"fwprop.c;single_def_use_leave_block"}
!286 = !{!"branch_weights", i32 1, i32 370634}
!287 = !{!"branch_weights", i32 578636, i32 528526}
!288 = !{!"branch_weights", i32 370634, i32 736528}
!289 = distinct !{!289, !128, !129}
!290 = !{!"fwprop.c;all_uses_available_at"}
!291 = !{!"fwprop.c;propagate_rtx"}
!292 = !{!"branch_weights", i32 0, i32 197164}
!293 = !{!"function_entry_count", i64 21334}
!294 = !{!"fwprop.c;try_fwprop_subst"}
!295 = !{!"branch_weights", i32 14363, i32 6971}
!296 = !{!"branch_weights", i32 6971, i32 14363}
!297 = !{!"branch_weights", i32 6971, i32 0}
!298 = !{!"branch_weights", i32 0, i32 14363}
!299 = !{!"branch_weights", i32 14363, i32 0}
!300 = !{!"branch_weights", i32 0, i32 6971}
!301 = !{!"function_entry_count", i64 56681}
!302 = !{!"fwprop.c;use_killed_between"}
!303 = !{!"branch_weights", i32 1135, i32 55546}
!304 = !{!144, !117, i64 40}
!305 = !{!"branch_weights", i32 1135, i32 0}
!306 = !{!"branch_weights", i32 0, i32 55546}
!307 = !{!136, !112, i64 216}
!308 = !{!309, !112, i64 0}
!309 = !{!"df_reg_info", !112, i64 0, !117, i64 8}
!310 = !{!"branch_weights", i32 0, i32 56681}
!311 = !{!"branch_weights", i32 333, i32 56348}
!312 = !{!"branch_weights", i32 1129, i32 55219}
!313 = !{!"branch_weights", i32 1, i32 184}
!314 = !{!"branch_weights", i32 3257, i32 75}
!315 = !{!"branch_weights", i32 1, i32 2312}
!316 = !{!"branch_weights", i32 2312, i32 29821}
!317 = distinct !{!317, !128, !129}
!318 = !{!"branch_weights", i32 944, i32 31189}
!319 = !{!"branch_weights", i32 944, i32 2313, i32 75}
!320 = !{!"branch_weights", i32 184, i32 3148}
!321 = distinct !{!321, !128, !129}
!322 = !{!146, !112, i64 0}
!323 = !{!"branch_weights", i32 0, i32 55219}
!324 = !{!325, !117, i64 0}
!325 = !{!"VEC_edge_base", !117, i64 0, !117, i64 4, !113, i64 8}
!326 = !{!"branch_weights", i32 48012, i32 7207}
!327 = !{!"branch_weights", i32 0, i32 48012}
!328 = !{!"branch_weights", i32 48012, i32 0}
!329 = !{!330, !112, i64 0}
!330 = !{!"edge_def", !112, i64 0, !112, i64 8, !113, i64 16, !112, i64 24, !112, i64 32, !117, i64 40, !117, i64 44, !117, i64 48, !117, i64 52, !118, i64 56}
!331 = !{!"branch_weights", i32 258, i32 47754}
!332 = !{!"branch_weights", i32 241, i32 17}
!333 = !{!"branch_weights", i32 17, i32 0}
!334 = !{!"branch_weights", i32 258, i32 0}
!335 = !{!"function_entry_count", i64 418963}
!336 = !{!"fwprop.c;varying_mem_p"}
!337 = !{!"branch_weights", i32 117943, i32 301020}
!338 = !{!"function_entry_count", i64 432027}
!339 = !{!"fwprop.c;propagate_rtx_1"}
!340 = !{!"branch_weights", i32 198979, i32 233048}
!341 = !{!"branch_weights", i32 214, i32 431813}
!342 = !{!"branch_weights", i32 214, i32 0}
!343 = !{!"branch_weights", i32 110735, i32 321078}
!344 = !{!"branch_weights", i32 88057, i32 718, i32 71684, i32 11652, i32 2485, i32 17065, i32 0, i32 0, i32 13987, i32 115430}
!345 = !{!"branch_weights", i32 0, i32 718}
!346 = !{!"branch_weights", i32 7340, i32 75996}
!347 = !{!"branch_weights", i32 23, i32 7317}
!348 = !{!"branch_weights", i32 0, i32 19550}
!349 = !{!"branch_weights", i32 17079, i32 2471}
!350 = !{!"branch_weights", i32 17079, i32 0}
!351 = !{!"branch_weights", i32 13987, i32 0}
!352 = !{!"branch_weights", i32 7010, i32 6977}
!353 = !{!"branch_weights", i32 101044, i32 14386}
!354 = !{!"branch_weights", i32 14386, i32 0}
!355 = !{!"branch_weights", i32 46, i32 14340}
!356 = !{!"branch_weights", i32 14340, i32 46}
!357 = !{!"branch_weights", i32 7170, i32 0, i32 0, i32 7170}
!358 = !{!359, !112, i64 1040}
!359 = !{!"gcc_target", !360, i64 0, !362, i64 368, !363, i64 664, !117, i64 744, !112, i64 752, !112, i64 760, !112, i64 768, !112, i64 776, !112, i64 784, !112, i64 792, !112, i64 800, !112, i64 808, !112, i64 816, !112, i64 824, !112, i64 832, !112, i64 840, !112, i64 848, !112, i64 856, !112, i64 864, !112, i64 872, !112, i64 880, !112, i64 888, !112, i64 896, !112, i64 904, !112, i64 912, !112, i64 920, !112, i64 928, !112, i64 936, !112, i64 944, !112, i64 952, !112, i64 960, !112, i64 968, !112, i64 976, !112, i64 984, !112, i64 992, !112, i64 1000, !112, i64 1008, !112, i64 1016, !112, i64 1024, !112, i64 1032, !112, i64 1040, !112, i64 1048, !112, i64 1056, !118, i64 1064, !118, i64 1072, !112, i64 1080, !112, i64 1088, !112, i64 1096, !112, i64 1104, !112, i64 1112, !112, i64 1120, !112, i64 1128, !112, i64 1136, !112, i64 1144, !112, i64 1152, !112, i64 1160, !112, i64 1168, !364, i64 1176, !112, i64 1232, !112, i64 1240, !112, i64 1248, !112, i64 1256, !112, i64 1264, !112, i64 1272, !112, i64 1280, !112, i64 1288, !112, i64 1296, !112, i64 1304, !112, i64 1312, !112, i64 1320, !112, i64 1328, !112, i64 1336, !112, i64 1344, !112, i64 1352, !112, i64 1360, !112, i64 1368, !112, i64 1376, !112, i64 1384, !112, i64 1392, !112, i64 1400, !112, i64 1408, !112, i64 1416, !112, i64 1424, !112, i64 1432, !112, i64 1440, !112, i64 1448, !112, i64 1456, !118, i64 1464, !365, i64 1472, !112, i64 1664, !112, i64 1672, !112, i64 1680, !112, i64 1688, !112, i64 1696, !112, i64 1704, !112, i64 1712, !112, i64 1720, !112, i64 1728, !112, i64 1736, !112, i64 1744, !112, i64 1752, !112, i64 1760, !112, i64 1768, !112, i64 1776, !366, i64 1784, !367, i64 1792, !368, i64 1896, !369, i64 1968, !112, i64 2016, !113, i64 2024, !113, i64 2025, !113, i64 2026, !113, i64 2027, !113, i64 2028, !113, i64 2029, !113, i64 2030, !113, i64 2031, !113, i64 2032, !113, i64 2033, !113, i64 2034, !113, i64 2035}
!360 = !{!"asm_out", !112, i64 0, !112, i64 8, !112, i64 16, !361, i64 24, !361, i64 56, !112, i64 88, !112, i64 96, !112, i64 104, !112, i64 112, !112, i64 120, !112, i64 128, !112, i64 136, !112, i64 144, !112, i64 152, !112, i64 160, !112, i64 168, !112, i64 176, !112, i64 184, !112, i64 192, !112, i64 200, !112, i64 208, !112, i64 216, !112, i64 224, !112, i64 232, !112, i64 240, !112, i64 248, !112, i64 256, !112, i64 264, !112, i64 272, !112, i64 280, !112, i64 288, !112, i64 296, !112, i64 304, !112, i64 312, !112, i64 320, !112, i64 328, !112, i64 336, !112, i64 344, !112, i64 352, !112, i64 360}
!361 = !{!"asm_int_op", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24}
!362 = !{!"sched", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48, !112, i64 56, !112, i64 64, !112, i64 72, !112, i64 80, !112, i64 88, !112, i64 96, !112, i64 104, !112, i64 112, !112, i64 120, !112, i64 128, !112, i64 136, !112, i64 144, !112, i64 152, !112, i64 160, !112, i64 168, !112, i64 176, !112, i64 184, !112, i64 192, !112, i64 200, !112, i64 208, !112, i64 216, !112, i64 224, !112, i64 232, !112, i64 240, !112, i64 248, !112, i64 256, !112, i64 264, !112, i64 272, !112, i64 280, !112, i64 288}
!363 = !{!"vectorize", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48, !112, i64 56, !112, i64 64, !112, i64 72}
!364 = !{!"addr_space", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48}
!365 = !{!"calls", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48, !112, i64 56, !112, i64 64, !112, i64 72, !112, i64 80, !112, i64 88, !112, i64 96, !112, i64 104, !112, i64 112, !112, i64 120, !112, i64 128, !112, i64 136, !112, i64 144, !112, i64 152, !112, i64 160, !112, i64 168, !112, i64 176, !112, i64 184}
!366 = !{!"c", !112, i64 0}
!367 = !{!"cxx", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48, !112, i64 56, !112, i64 64, !112, i64 72, !112, i64 80, !112, i64 88, !112, i64 96}
!368 = !{!"emutls", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48, !112, i64 56, !113, i64 64, !113, i64 65}
!369 = !{!"target_option_hooks", !112, i64 0, !112, i64 8, !112, i64 16, !112, i64 24, !112, i64 32, !112, i64 40}
!370 = !{!"VP", i32 0, i64 14386, i64 7903926320118498188, i64 14386}
!371 = !{!"branch_weights", i32 0, i32 14386}
!372 = !{!373, !113, i64 32}
!373 = !{!"mem_attrs", !112, i64 0, !112, i64 8, !112, i64 16, !117, i64 24, !117, i64 28, !113, i64 32}
!374 = !{!"branch_weights", i32 23, i32 14363}
!375 = !{!"branch_weights", i32 14340, i32 23}
!376 = !{!"branch_weights", i32 0, i32 14340}
!377 = !{!"branch_weights", i32 14363, i32 23}
!378 = !{!"branch_weights", i32 0, i32 0, i32 101044}
!379 = !{!"branch_weights", i32 33502, i32 67542}
!380 = !{!"branch_weights", i32 121559, i32 107842}
!381 = !{!"branch_weights", i32 23437, i32 84405}
!382 = !{!"function_entry_count", i64 14409}
!383 = !{!"fwprop.c;canonicalize_address"}
!384 = !{!"branch_weights", i32 14409, i32 23, i32 10919, i32 10850}
!385 = !{!"branch_weights", i32 23, i32 0}
!386 = !{!"branch_weights", i32 10896, i32 0, i32 23, i32 0}
!387 = distinct !{!387, !129}
!388 = !{!"function_entry_count", i64 42668}
!389 = !{!"fwprop.c;update_df"}
!390 = !{!"branch_weights", i32 1, i32 0}
!391 = !{!392, !112, i64 0}
!392 = !{!"find_occurrence_data", !112, i64 0, !112, i64 8}
!393 = !{!392, !112, i64 8}
!394 = distinct !{!394, !128, !129}
!395 = !{!"branch_weights", i32 42668, i32 0}
