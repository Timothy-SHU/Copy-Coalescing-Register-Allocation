; ModuleID = 'regcprop.c'
source_filename = "regcprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.value_data_entry = type { i32, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.value_data = type { [53 x %struct.value_data_entry], i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.queued_debug_insn_change = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"[%u] Bad next_regno for empty chain (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[%u %s] \00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"[%u] Loop in regno chain\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[%u] Bad oldest_regno (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"[%u] Non-empty reg in chain (%s %u %i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"cprop_hardreg\00", align 1
@pass_cprop_hardreg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr @gate_handle_cprop, ptr @copyprop_hardreg_forward, ptr null, ptr null, i32 0, i32 158, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_cprop_registers = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"debug insn changes pool\00", align 1
@debug_insn_changes_pool = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"regcprop.c\00", align 1
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"insn %u: replaced reg %u with %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"insn %u: reg replacements not verified\0A\00", align 1
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@reg_renumber = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.12 = private unnamed_addr constant [48 x i8] c"debug_insn %u: queued replacing reg %u with %u\0A\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !54 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !55
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !54 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !55
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !54 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !65

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !59
  %11 = load i8, ptr %3, align 1, !tbaa !66
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !54 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !65

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !59
  %11 = load i8, ptr %3, align 1, !tbaa !66
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !54 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !55
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !65

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !59
  %11 = load i8, ptr %3, align 1, !tbaa !66
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !54 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !55
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !54 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !65

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !67
  store i8 %12, ptr %4, align 1, !tbaa !66
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !54 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !65

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !67
  store i8 %12, ptr %4, align 1, !tbaa !66
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !54 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !65

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !67
  store i8 %12, ptr %4, align 1, !tbaa !66
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !54 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !54 {
  %2 = load i32, ptr %0, align 8, !tbaa !69
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !54 {
  %2 = load i32, ptr %0, align 8, !tbaa !69
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !54 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !70
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !54 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !70
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !54 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !54 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !54 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !54 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !71

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !54 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_value_data(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !54 {
  br label %2

2:                                                ; preds = %1, %67
  %3 = phi i64 [ 0, %1 ], [ %69, %67 ]
  %4 = phi i64 [ 0, %1 ], [ %68, %67 ]
  %5 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !74
  %7 = zext i32 %6 to i64
  %8 = icmp eq i64 %3, %7
  br i1 %8, label %9, label %67

9:                                                ; preds = %2
  %10 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3
  %11 = load i32, ptr %10, align 8, !tbaa !76
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !77
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %67, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @stderr, align 8, !tbaa !55
  %19 = trunc i64 %3 to i32
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %19, i32 noundef %15) #18
  br label %67

21:                                               ; preds = %9
  %22 = shl nuw nsw i64 1, %3
  %23 = or i64 %22, %4
  %24 = load ptr, ptr @stderr, align 8, !tbaa !55
  %25 = zext i32 %11 to i64
  %26 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = trunc i64 %3 to i32
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %28, ptr noundef %27) #18
  %30 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !77
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %63, label %33

33:                                               ; preds = %21, %51
  %34 = phi i32 [ %61, %51 ], [ %31, %21 ]
  %35 = phi i64 [ %53, %51 ], [ %23, %21 ]
  %36 = zext i32 %34 to i64
  %37 = shl nuw i64 1, %36
  %38 = and i64 %37, %35
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr @stderr, align 8, !tbaa !55
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef %34) #18
  br label %103

43:                                               ; preds = %33
  %44 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %36, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %3, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr @stderr, align 8, !tbaa !55
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.3, i32 noundef %34, i32 noundef %45) #18
  br label %103

51:                                               ; preds = %43
  %52 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %36
  %53 = or i64 %37, %35
  %54 = load ptr, ptr @stderr, align 8, !tbaa !55
  %55 = load i32, ptr %52, align 8, !tbaa !76
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !55
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.1, i32 noundef %34, ptr noundef %58) #18
  %60 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %36, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !77
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %33, !llvm.loop !78

63:                                               ; preds = %51, %21
  %64 = phi i64 [ %23, %21 ], [ %53, %51 ]
  %65 = load ptr, ptr @stderr, align 8, !tbaa !55
  %66 = tail call i32 @fputc(i32 noundef 10, ptr noundef %65)
  br label %67

67:                                               ; preds = %2, %63, %13, %17
  %68 = phi i64 [ %4, %17 ], [ %4, %13 ], [ %64, %63 ], [ %4, %2 ]
  %69 = add nuw nsw i64 %3, 1
  %70 = icmp eq i64 %69, 53
  br i1 %70, label %71, label %2, !llvm.loop !79

71:                                               ; preds = %67, %100
  %72 = phi i64 [ %101, %100 ], [ 0, %67 ]
  %73 = shl nuw nsw i64 1, %72
  %74 = and i64 %73, %68
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72
  %78 = load i32, ptr %77, align 8, !tbaa !76
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !74
  %83 = zext i32 %82 to i64
  %84 = icmp eq i64 %72, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !77
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %100, label %89

89:                                               ; preds = %85, %80, %76
  %90 = load ptr, ptr @stderr, align 8, !tbaa !55
  %91 = zext i32 %78 to i64
  %92 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !55
  %94 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !74
  %96 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %72, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !77
  %98 = trunc i64 %72 to i32
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.4, i32 noundef %98, ptr noundef %93, i32 noundef %95, i32 noundef %97) #18
  br label %100

100:                                              ; preds = %71, %85, %89
  %101 = add nuw nsw i64 %72, 1
  %102 = icmp eq i64 %101, 53
  br i1 %102, label %103, label %71, !llvm.loop !80

103:                                              ; preds = %100, %48, %40
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_cprop() #10 !prof !81 !PGOFuncName !82 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !70
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_cprop_registers, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !83
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @copyprop_hardreg_forward() #11 !prof !81 !PGOFuncName !84 {
  %1 = alloca [30 x i8], align 16
  %2 = load ptr, ptr @cfun, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !87
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 1280
  %9 = tail call ptr @xmalloc(i64 noundef %8) #17
  %10 = load ptr, ptr @cfun, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !87
  %15 = tail call ptr @sbitmap_alloc(i32 noundef %14) #17
  tail call void @sbitmap_zero(ptr noundef %15) #17
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !70
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !83

18:                                               ; preds = %0
  %19 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 32, i64 noundef 256) #17
  store ptr %19, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  br label %20

20:                                               ; preds = %18, %0
  %21 = load ptr, ptr @cfun, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !90
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %889, label %39, !prof !93

30:                                               ; preds = %886
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = load ptr, ptr @cfun, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  %38 = icmp eq ptr %32, %37
  br i1 %38, label %889, label %39, !prof !94, !llvm.loop !95

39:                                               ; preds = %20, %30
  %40 = phi ptr [ %32, %30 ], [ %26, %20 ]
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !96
  %43 = load ptr, ptr %15, align 8, !tbaa !97
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45, !prof !99

45:                                               ; preds = %39
  %46 = lshr i32 %42, 6
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %15, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !100
  %50 = and i32 %42, 63
  %51 = zext nneg i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = and i64 %49, %52
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = getelementptr inbounds i8, ptr %43, i64 %47
  %57 = load i8, ptr %56, align 1, !tbaa !66
  %58 = add i8 %57, 1
  store i8 %58, ptr %56, align 1, !tbaa !66
  br label %59

59:                                               ; preds = %39, %45, %55
  %60 = and i32 %42, 63
  %61 = zext nneg i32 %60 to i64
  %62 = shl nuw i64 1, %61
  %63 = lshr i32 %42, 6
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds %struct.simple_bitmap_def, ptr %15, i64 0, i32 3, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !100
  %67 = or i64 %66, %62
  store i64 %67, ptr %65, align 8, !tbaa !100
  %68 = load ptr, ptr %40, align 8, !tbaa !101
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70, !prof !102

70:                                               ; preds = %59
  %71 = load i32, ptr %68, align 8, !tbaa !103
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i8
  br label %74

74:                                               ; preds = %59, %70
  %75 = phi i8 [ %73, %70 ], [ 0, %59 ]
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %165, label %77, !prof !105

77:                                               ; preds = %74
  br i1 %69, label %81, label %78, !prof !106

78:                                               ; preds = %77
  %79 = load i32, ptr %68, align 8, !tbaa !103
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %82, label %81, !prof !107

81:                                               ; preds = %78, %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #17
  br label %82

82:                                               ; preds = %78, %81
  %83 = load ptr, ptr %40, align 8, !tbaa !101
  %84 = getelementptr inbounds %struct.VEC_edge_base, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !55
  %86 = load ptr, ptr %85, align 8, !tbaa !108
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !96
  %89 = lshr i32 %88, 6
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds %struct.simple_bitmap_def, ptr %15, i64 0, i32 3, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !100
  %93 = icmp eq ptr %83, null
  br i1 %93, label %97, label %94, !prof !106

94:                                               ; preds = %82
  %95 = load i32, ptr %83, align 8, !tbaa !103
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %98, label %97, !prof !107

97:                                               ; preds = %94, %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #17
  br label %98

98:                                               ; preds = %94, %97
  %99 = load ptr, ptr %40, align 8, !tbaa !101
  %100 = getelementptr inbounds %struct.VEC_edge_base, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !55
  %102 = load ptr, ptr %101, align 8, !tbaa !108
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %102, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !96
  %105 = and i32 %104, 63
  %106 = zext nneg i32 %105 to i64
  %107 = shl nuw i64 1, %106
  %108 = and i64 %107, %92
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %165, label %110, !prof !110

110:                                              ; preds = %98
  %111 = icmp eq ptr %99, null
  br i1 %111, label %115, label %112, !prof !111

112:                                              ; preds = %110
  %113 = load i32, ptr %99, align 8, !tbaa !103
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %116, label %115, !prof !112

115:                                              ; preds = %110, %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #17
  br label %116

116:                                              ; preds = %112, %115
  %117 = load ptr, ptr %40, align 8, !tbaa !101
  %118 = getelementptr inbounds %struct.VEC_edge_base, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !55
  %120 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 7
  %121 = load i32, ptr %120, align 8, !tbaa !113
  %122 = and i32 %121, 12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %165, !prof !112

124:                                              ; preds = %116
  %125 = load i32, ptr %41, align 8, !tbaa !96
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.value_data, ptr %9, i64 %126
  %128 = icmp eq ptr %117, null
  br i1 %128, label %132, label %129, !prof !111

129:                                              ; preds = %124
  %130 = load i32, ptr %117, align 8, !tbaa !103
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %133, label %132, !prof !112

132:                                              ; preds = %129, %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 655, ptr noundef nonnull @.str.8) #17
  br label %133

133:                                              ; preds = %129, %132
  %134 = load ptr, ptr %40, align 8, !tbaa !101
  %135 = getelementptr inbounds %struct.VEC_edge_base, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !55
  %137 = load ptr, ptr %136, align 8, !tbaa !108
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 9
  %139 = load i32, ptr %138, align 8, !tbaa !96
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.value_data, ptr %9, i64 %140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %127, ptr noundef nonnull align 8 dereferenceable(1280) %141, i64 1280, i1 false), !tbaa.struct !114
  %142 = load i32, ptr %41, align 8, !tbaa !96
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.value_data, ptr %9, i64 %143, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !115
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %181, label %147, !prof !112

147:                                              ; preds = %133
  %148 = getelementptr inbounds %struct.value_data, ptr %9, i64 %143
  br label %149

149:                                              ; preds = %163, %147
  %150 = phi i32 [ 0, %147 ], [ %164, %163 ]
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %148, i64 0, i64 %151, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !117
  %154 = icmp eq ptr %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  store ptr null, ptr %152, align 8, !tbaa !117
  %156 = load i32, ptr %144, align 4, !tbaa !115
  %157 = add i32 %156, -1
  store i32 %157, ptr %144, align 4, !tbaa !115
  %158 = icmp ne i32 %157, 0
  %159 = icmp ult i32 %150, 52
  %160 = and i1 %158, %159
  br i1 %160, label %163, label %181

161:                                              ; preds = %149
  %162 = icmp ult i32 %150, 52
  br i1 %162, label %163, label %181

163:                                              ; preds = %161, %155
  %164 = add nuw nsw i32 %150, 1
  br label %149, !llvm.loop !118

165:                                              ; preds = %116, %98, %74
  %166 = load i32, ptr %41, align 8, !tbaa !96
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.value_data, ptr %9, i64 %167
  br label %169

169:                                              ; preds = %165, %169
  %170 = phi i64 [ 0, %165 ], [ %176, %169 ]
  %171 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %168, i64 0, i64 %170
  store i32 0, ptr %171, align 8, !tbaa !76
  %172 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %168, i64 0, i64 %170, i32 1
  %173 = trunc i64 %170 to i32
  store i32 %173, ptr %172, align 4, !tbaa !74
  %174 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %168, i64 0, i64 %170, i32 2
  store i32 -1, ptr %174, align 8, !tbaa !77
  %175 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %168, i64 0, i64 %170, i32 3
  store ptr null, ptr %175, align 8, !tbaa !117
  %176 = add nuw nsw i64 %170, 1
  %177 = icmp eq i64 %176, 53
  br i1 %177, label %178, label %169, !prof !119, !llvm.loop !120

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.value_data, ptr %9, i64 %167, i32 1
  store i32 0, ptr %179, align 8, !tbaa !121
  %180 = getelementptr inbounds %struct.value_data, ptr %9, i64 %167, i32 2
  store i32 0, ptr %180, align 4, !tbaa !115
  br label %181

181:                                              ; preds = %161, %155, %133, %178
  %182 = load i32, ptr %41, align 8, !tbaa !96
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.value_data, ptr %9, i64 %183
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 7
  %186 = load ptr, ptr %185, align 8, !tbaa !66
  %187 = getelementptr inbounds %struct.value_data, ptr %9, i64 %183, i32 2
  br label %188

188:                                              ; preds = %886, %181
  %189 = phi ptr [ %186, %181 ], [ %888, %886 ]
  %190 = load ptr, ptr %189, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %1) #17
  %191 = load i32, ptr %190, align 8
  %192 = and i32 %191, 65535
  %193 = add nsw i32 %192, -7
  %194 = icmp ult i32 %193, 4
  br i1 %194, label %195, label %196, !prof !122

195:                                              ; preds = %188
  switch i32 %192, label %221 [
    i32 10, label %213
    i32 8, label %213
    i32 9, label %213
    i32 7, label %198
  ], !prof !123

196:                                              ; preds = %188
  %197 = icmp eq i32 %192, 7
  br i1 %197, label %198, label %881, !prof !124

198:                                              ; preds = %195, %196
  %199 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !66
  %201 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !66
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 25
  br i1 %205, label %206, label %211

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !66
  %209 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !55
  %210 = icmp eq ptr %208, %209
  br i1 %210, label %881, label %211

211:                                              ; preds = %206, %198
  %212 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %201, i32 noundef 26, ptr noundef nonnull %190, ptr noundef %184)
  br label %881

213:                                              ; preds = %195, %195, %195
  %214 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !66
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 23
  br i1 %218, label %221, label %219, !prof !125

219:                                              ; preds = %213
  %220 = tail call ptr @single_set_2(ptr noundef nonnull %190, ptr noundef nonnull %215) #17
  br label %221

221:                                              ; preds = %195, %219, %213
  %222 = phi ptr [ %220, %219 ], [ %215, %213 ], [ null, %195 ]
  tail call void @extract_insn(ptr noundef nonnull %190) #17
  %223 = tail call i32 @constrain_operands(i32 noundef 1) #17
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226, !prof !126

225:                                              ; preds = %221
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %190, ptr noundef nonnull @.str.9, i32 noundef 767, ptr noundef nonnull @.str.8) #17
  br label %226

226:                                              ; preds = %225, %221
  tail call void @preprocess_constraints() #17
  %227 = load i32, ptr @which_alternative, align 4, !tbaa !70
  %228 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !127
  %229 = sext i8 %228 to i32
  %230 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1
  %231 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 1
  %232 = load ptr, ptr %231, align 8, !tbaa !66
  %233 = tail call i32 @asm_noperands(ptr noundef %232) #17
  %234 = icmp sgt i32 %233, -1
  %235 = load ptr, ptr %231, align 8, !tbaa !66
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 65535
  %238 = icmp eq i32 %237, 14
  %239 = icmp sgt i8 %228, 0
  br i1 %239, label %240, label %267, !prof !129

240:                                              ; preds = %226
  %241 = sext i32 %227 to i64
  %242 = zext nneg i32 %229 to i64
  br label %243

243:                                              ; preds = %240, %264
  %244 = phi i64 [ 0, %240 ], [ %265, %264 ]
  %245 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %244, i64 %241, i32 3
  %246 = load i32, ptr %245, align 16, !tbaa !130
  %247 = icmp sgt i32 %246, -1
  br i1 %247, label %248, label %253, !prof !132

248:                                              ; preds = %243
  %249 = zext nneg i32 %246 to i64
  %250 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %249, i64 %241, i32 1
  %251 = load i32, ptr %250, align 8, !tbaa !133
  %252 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %244, i64 %241, i32 1
  store i32 %251, ptr %252, align 8, !tbaa !133
  br label %262

253:                                              ; preds = %243
  %254 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %244, i64 %241, i32 4
  %255 = load i32, ptr %254, align 4, !tbaa !134
  %256 = icmp sgt i32 %255, -1
  br i1 %256, label %262, label %257, !prof !135

257:                                              ; preds = %253
  br i1 %238, label %258, label %264, !prof !136

258:                                              ; preds = %257
  %259 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %244
  %260 = load i32, ptr %259, align 4, !tbaa !70
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %264

262:                                              ; preds = %258, %253, %248
  %263 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %244
  store i32 2, ptr %263, align 4, !tbaa !70
  br label %264

264:                                              ; preds = %262, %258, %257
  %265 = add nuw nsw i64 %244, 1
  %266 = icmp eq i64 %265, %242
  br i1 %266, label %267, label %243, !prof !137, !llvm.loop !138

267:                                              ; preds = %264, %226
  %268 = load i32, ptr %187, align 4, !tbaa !115
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %271, label %270, !prof !139

270:                                              ; preds = %267
  tail call void @note_uses(ptr noundef nonnull %231, ptr noundef nonnull @cprop_find_used_regs, ptr noundef %184) #17
  br label %271

271:                                              ; preds = %270, %267
  %272 = icmp sgt i8 %228, 0
  br i1 %272, label %273, label %288, !prof !129

273:                                              ; preds = %271
  %274 = sext i32 %227 to i64
  %275 = zext nneg i32 %229 to i64
  br label %276

276:                                              ; preds = %273, %285
  %277 = phi i64 [ 0, %273 ], [ %286, %285 ]
  %278 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %277, i64 %274, i32 5
  %279 = load i8, ptr %278, align 8
  %280 = and i8 %279, 1
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %285, label %282, !prof !140

282:                                              ; preds = %276
  %283 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %277
  %284 = load ptr, ptr %283, align 8, !tbaa !55
  tail call fastcc void @kill_value(ptr noundef %284, ptr noundef %184)
  br label %285

285:                                              ; preds = %282, %276
  %286 = add nuw nsw i64 %277, 1
  %287 = icmp eq i64 %286, %275
  br i1 %287, label %288, label %276, !prof !137, !llvm.loop !141

288:                                              ; preds = %285, %271
  %289 = load ptr, ptr %231, align 8, !tbaa !66
  tail call void @note_stores(ptr noundef %289, ptr noundef nonnull @kill_clobbered_value, ptr noundef %184) #17
  %290 = tail call i32 @for_each_rtx(ptr noundef nonnull %231, ptr noundef nonnull @kill_autoinc_value, ptr noundef %184) #17
  %291 = icmp sgt i8 %228, 0
  br i1 %291, label %292, label %307, !prof !129

292:                                              ; preds = %288
  %293 = sext i32 %227 to i64
  %294 = zext nneg i32 %229 to i64
  br label %295

295:                                              ; preds = %292, %304
  %296 = phi i64 [ 0, %292 ], [ %305, %304 ]
  %297 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %296, i64 %293, i32 5
  %298 = load i8, ptr %297, align 8
  %299 = and i8 %298, 1
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %304, label %301, !prof !140

301:                                              ; preds = %295
  %302 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %296
  %303 = load ptr, ptr %302, align 8, !tbaa !55
  tail call fastcc void @kill_value(ptr noundef %303, ptr noundef %184)
  br label %304

304:                                              ; preds = %301, %295
  %305 = add nuw nsw i64 %296, 1
  %306 = icmp eq i64 %305, %294
  br i1 %306, label %307, label %295, !prof !137, !llvm.loop !142

307:                                              ; preds = %304, %288
  %308 = icmp eq ptr %222, null
  br i1 %308, label %454, label %309, !prof !143

309:                                              ; preds = %307
  %310 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %311 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1, i32 0, i32 0, i64 1
  %312 = load ptr, ptr %311, align 8, !tbaa !66
  %313 = load i32, ptr %312, align 8
  %314 = and i32 %313, 65535
  %315 = icmp eq i32 %314, 37
  br i1 %315, label %316, label %454, !prof !144

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1
  %318 = load i32, ptr %317, align 8, !tbaa !66
  %319 = lshr i32 %313, 16
  %320 = and i32 %319, 255
  %321 = zext i32 %318 to i64
  %322 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %321
  %323 = load i32, ptr %322, align 8, !tbaa !76
  %324 = icmp eq i32 %320, %323
  br i1 %324, label %333, label %325, !prof !145

325:                                              ; preds = %316
  %326 = zext nneg i32 %320 to i64
  %327 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !66
  %329 = zext i32 %323 to i64
  %330 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !66
  %332 = icmp ugt i8 %328, %331
  br i1 %332, label %452, label %333, !prof !146

333:                                              ; preds = %325, %316
  %334 = load ptr, ptr %310, align 8, !tbaa !66
  %335 = load i32, ptr %334, align 8
  %336 = and i32 %335, 65535
  %337 = icmp eq i32 %336, 37
  br i1 %337, label %338, label %412, !prof !147

338:                                              ; preds = %333
  %339 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %321
  %340 = load i32, ptr %339, align 4, !tbaa !70
  br i1 %324, label %349, label %341, !prof !148

341:                                              ; preds = %338
  %342 = zext nneg i32 %320 to i64
  %343 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !66
  %345 = zext i32 %323 to i64
  %346 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !66
  %348 = icmp ugt i8 %344, %347
  br i1 %348, label %403, label %349, !prof !149

349:                                              ; preds = %341, %338
  %350 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %321, i32 1
  %351 = load i32, ptr %350, align 4, !tbaa !70
  %352 = icmp eq i32 %351, %318
  br i1 %352, label %403, label %353, !prof !150

353:                                              ; preds = %349, %399
  %354 = phi i32 [ %401, %399 ], [ %351, %349 ]
  %355 = phi ptr [ %398, %399 ], [ undef, %349 ]
  %356 = zext i32 %340 to i64
  %357 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %356
  %358 = zext i32 %354 to i64
  %359 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %358
  %360 = load i32, ptr %359, align 8, !tbaa !76
  %361 = load i64, ptr %357, align 8, !tbaa !100
  %362 = shl nuw i64 1, %358
  %363 = and i64 %361, %362
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %396, label %365

365:                                              ; preds = %353
  %366 = zext nneg i32 %320 to i64
  %367 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %358, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !66
  %369 = zext i8 %368 to i32
  %370 = add i32 %354, %369
  br label %371

371:                                              ; preds = %375, %365
  %372 = phi i32 [ %354, %365 ], [ %373, %375 ]
  %373 = add i32 %372, 1
  %374 = icmp ult i32 %373, %370
  br i1 %374, label %375, label %380

375:                                              ; preds = %371
  %376 = zext nneg i32 %373 to i64
  %377 = shl nuw i64 1, %376
  %378 = and i64 %377, %361
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %396, label %371, !llvm.loop !151

380:                                              ; preds = %371
  %381 = load i32, ptr %322, align 8, !tbaa !76
  %382 = tail call fastcc ptr @maybe_mode_change(i32 noundef %360, i32 noundef %381, i32 noundef %320, i32 noundef %354)
  %383 = icmp eq ptr %382, null
  br i1 %383, label %396, label %384

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1, i32 0, i32 0, i64 1
  %386 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1, i32 0, i32 0, i64 2
  %387 = load i32, ptr %385, align 8, !tbaa !66
  %388 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %387, ptr %388, align 8, !tbaa !66
  %389 = load ptr, ptr %386, align 8, !tbaa !66
  %390 = getelementptr inbounds %struct.rtx_def, ptr %382, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %389, ptr %390, align 8, !tbaa !66
  %391 = load i32, ptr %312, align 8
  %392 = and i32 %391, 1073741824
  %393 = load i32, ptr %382, align 8
  %394 = and i32 %393, -1073741825
  %395 = or disjoint i32 %394, %392
  store i32 %395, ptr %382, align 8
  br label %396

396:                                              ; preds = %375, %384, %380, %353
  %397 = phi i1 [ false, %384 ], [ true, %380 ], [ false, %353 ], [ false, %375 ]
  %398 = phi ptr [ %382, %384 ], [ %355, %380 ], [ null, %353 ], [ null, %375 ]
  br i1 %397, label %399, label %403

399:                                              ; preds = %396
  %400 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %358, i32 2
  %401 = load i32, ptr %400, align 4, !tbaa !70
  %402 = icmp eq i32 %401, %318
  br i1 %402, label %403, label %353, !prof !150, !llvm.loop !152

403:                                              ; preds = %396, %399, %341, %349
  %404 = phi ptr [ null, %341 ], [ null, %349 ], [ null, %399 ], [ %398, %396 ]
  %405 = icmp eq ptr %404, null
  br i1 %405, label %412, label %406, !prof !153

406:                                              ; preds = %403
  %407 = tail call zeroext i8 @validate_change(ptr noundef nonnull %190, ptr noundef nonnull %311, ptr noundef nonnull %404, i8 noundef zeroext 0) #17
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %412, label %409

409:                                              ; preds = %406
  %410 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %411 = icmp eq ptr %410, null
  br i1 %411, label %452, label %445

412:                                              ; preds = %406, %403, %333
  %413 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %321, i32 1
  %414 = load i32, ptr %413, align 4, !tbaa !70
  %415 = icmp eq i32 %414, %318
  br i1 %415, label %452, label %416, !prof !154

416:                                              ; preds = %412, %441
  %417 = phi i32 [ %443, %441 ], [ %414, %412 ]
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %418
  %420 = load i32, ptr %419, align 8, !tbaa !76
  %421 = load i32, ptr %322, align 8, !tbaa !76
  %422 = tail call fastcc ptr @maybe_mode_change(i32 noundef %420, i32 noundef %421, i32 noundef %320, i32 noundef %417)
  %423 = icmp eq ptr %422, null
  br i1 %423, label %441, label %424, !prof !155

424:                                              ; preds = %416
  %425 = tail call zeroext i8 @validate_change(ptr noundef nonnull %190, ptr noundef nonnull %311, ptr noundef nonnull %422, i8 noundef zeroext 0) #17
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %441, label %427, !prof !155

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1, i32 0, i32 0, i64 1
  %429 = load i32, ptr %428, align 8, !tbaa !66
  %430 = getelementptr inbounds %struct.rtx_def, ptr %422, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %429, ptr %430, align 8, !tbaa !66
  %431 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1, i32 0, i32 0, i64 2
  %432 = load ptr, ptr %431, align 8, !tbaa !66
  %433 = getelementptr inbounds %struct.rtx_def, ptr %422, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %432, ptr %433, align 8, !tbaa !66
  %434 = load i32, ptr %312, align 8
  %435 = and i32 %434, 1073741824
  %436 = load i32, ptr %422, align 8
  %437 = and i32 %436, -1073741825
  %438 = or disjoint i32 %437, %435
  store i32 %438, ptr %422, align 8
  %439 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %440 = icmp eq ptr %439, null
  br i1 %440, label %452, label %445, !prof !156

441:                                              ; preds = %424, %416
  %442 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %418, i32 2
  %443 = load i32, ptr %442, align 4, !tbaa !70
  %444 = icmp eq i32 %443, %318
  br i1 %444, label %452, label %416, !prof !156, !llvm.loop !157

445:                                              ; preds = %427, %409
  %446 = phi ptr [ %404, %409 ], [ %422, %427 ]
  %447 = phi ptr [ %410, %409 ], [ %439, %427 ]
  %448 = load i32, ptr %230, align 8, !tbaa !66
  %449 = getelementptr inbounds %struct.rtx_def, ptr %446, i64 0, i32 1
  %450 = load i32, ptr %449, align 8, !tbaa !66
  %451 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %447, ptr noundef nonnull @.str.10, i32 noundef %448, i32 noundef %318, i32 noundef %450)
  br label %452

452:                                              ; preds = %441, %445, %412, %427, %409, %325
  %453 = phi i32 [ 14, %325 ], [ 15, %409 ], [ 15, %427 ], [ 0, %412 ], [ 15, %445 ], [ 0, %441 ]
  switch i32 %453, label %886 [
    i32 0, label %454
    i32 14, label %454
    i32 15, label %704
  ], !prof !158

454:                                              ; preds = %452, %452, %309, %307
  %455 = icmp sgt i8 %228, 0
  br i1 %455, label %456, label %675, !prof !159

456:                                              ; preds = %454
  %457 = zext nneg i32 %229 to i64
  br label %458

458:                                              ; preds = %456, %671
  %459 = phi i64 [ 0, %456 ], [ %673, %671 ]
  %460 = phi i8 [ 0, %456 ], [ %672, %671 ]
  %461 = getelementptr inbounds [30 x i8], ptr %1, i64 0, i64 %459
  store i8 0, ptr %461, align 1, !tbaa !66
  %462 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %459
  %463 = load ptr, ptr %462, align 8, !tbaa !55
  %464 = load i8, ptr %463, align 1, !tbaa !66
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %671, label %466, !prof !160

466:                                              ; preds = %458
  br i1 %234, label %467, label %479, !prof !161

467:                                              ; preds = %466
  %468 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %459
  %469 = load ptr, ptr %468, align 8, !tbaa !55
  %470 = load i32, ptr %469, align 8
  %471 = and i32 %470, 65535
  %472 = icmp eq i32 %471, 37
  br i1 %472, label %473, label %479

473:                                              ; preds = %467
  %474 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1
  %475 = load i32, ptr %474, align 8, !tbaa !66
  %476 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1, i32 0, i32 0, i64 1
  %477 = load i32, ptr %476, align 8, !tbaa !66
  %478 = icmp eq i32 %475, %477
  br i1 %478, label %671, label %479

479:                                              ; preds = %473, %467, %466
  %480 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %459
  %481 = load i32, ptr %480, align 4, !tbaa !70
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %630, !prof !162

483:                                              ; preds = %479
  %484 = sext i32 %227 to i64
  %485 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %459, i64 %484, i32 5
  %486 = load i8, ptr %485, align 8
  %487 = and i8 %486, 64
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %495, label %489, !prof !163

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %459
  %491 = load ptr, ptr %490, align 8, !tbaa !55
  %492 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %459, i64 %484, i32 1
  %493 = load i32, ptr %492, align 8, !tbaa !133
  %494 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef %491, i32 noundef %493, ptr noundef nonnull %190, ptr noundef %184)
  br label %643

495:                                              ; preds = %483
  %496 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %459
  %497 = load ptr, ptr %496, align 8, !tbaa !55
  %498 = load i32, ptr %497, align 8
  %499 = trunc i32 %498 to i16
  switch i16 %499, label %645 [
    i16 37, label %500
    i16 43, label %623
  ], !prof !164

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %459
  %502 = load ptr, ptr %501, align 8, !tbaa !55
  %503 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %459, i64 %484, i32 1
  %504 = load i32, ptr %503, align 8, !tbaa !133
  %505 = load ptr, ptr %502, align 8, !tbaa !55
  %506 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 0, i32 1
  %507 = load i32, ptr %506, align 8, !tbaa !66
  %508 = load i32, ptr %505, align 8
  %509 = lshr i32 %508, 16
  %510 = and i32 %509, 255
  %511 = zext i32 %507 to i64
  %512 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %511
  %513 = load i32, ptr %512, align 8, !tbaa !76
  %514 = icmp eq i32 %510, %513
  br i1 %514, label %523, label %515, !prof !148

515:                                              ; preds = %500
  %516 = zext nneg i32 %510 to i64
  %517 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %511, i64 %516
  %518 = load i8, ptr %517, align 1, !tbaa !66
  %519 = zext i32 %513 to i64
  %520 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %511, i64 %519
  %521 = load i8, ptr %520, align 1, !tbaa !66
  %522 = icmp ugt i8 %518, %521
  br i1 %522, label %577, label %523, !prof !149

523:                                              ; preds = %515, %500
  %524 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %511, i32 1
  %525 = load i32, ptr %524, align 4, !tbaa !70
  %526 = icmp eq i32 %525, %507
  br i1 %526, label %577, label %527, !prof !150

527:                                              ; preds = %523, %573
  %528 = phi i32 [ %575, %573 ], [ %525, %523 ]
  %529 = phi ptr [ %572, %573 ], [ undef, %523 ]
  %530 = zext i32 %504 to i64
  %531 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %530
  %532 = zext i32 %528 to i64
  %533 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %532
  %534 = load i32, ptr %533, align 8, !tbaa !76
  %535 = load i64, ptr %531, align 8, !tbaa !100
  %536 = shl nuw i64 1, %532
  %537 = and i64 %535, %536
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %570, label %539

539:                                              ; preds = %527
  %540 = zext nneg i32 %510 to i64
  %541 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %532, i64 %540
  %542 = load i8, ptr %541, align 1, !tbaa !66
  %543 = zext i8 %542 to i32
  %544 = add i32 %528, %543
  br label %545

545:                                              ; preds = %549, %539
  %546 = phi i32 [ %528, %539 ], [ %547, %549 ]
  %547 = add i32 %546, 1
  %548 = icmp ult i32 %547, %544
  br i1 %548, label %549, label %554

549:                                              ; preds = %545
  %550 = zext nneg i32 %547 to i64
  %551 = shl nuw i64 1, %550
  %552 = and i64 %551, %535
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %570, label %545, !llvm.loop !151

554:                                              ; preds = %545
  %555 = load i32, ptr %512, align 8, !tbaa !76
  %556 = tail call fastcc ptr @maybe_mode_change(i32 noundef %534, i32 noundef %555, i32 noundef %510, i32 noundef %528)
  %557 = icmp eq ptr %556, null
  br i1 %557, label %570, label %558

558:                                              ; preds = %554
  %559 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 0, i32 1, i32 0, i32 0, i64 1
  %560 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 0, i32 1, i32 0, i32 0, i64 2
  %561 = load i32, ptr %559, align 8, !tbaa !66
  %562 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %561, ptr %562, align 8, !tbaa !66
  %563 = load ptr, ptr %560, align 8, !tbaa !66
  %564 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %563, ptr %564, align 8, !tbaa !66
  %565 = load i32, ptr %505, align 8
  %566 = and i32 %565, 1073741824
  %567 = load i32, ptr %556, align 8
  %568 = and i32 %567, -1073741825
  %569 = or disjoint i32 %568, %566
  store i32 %569, ptr %556, align 8
  br label %570

570:                                              ; preds = %549, %558, %554, %527
  %571 = phi i1 [ false, %558 ], [ true, %554 ], [ false, %527 ], [ false, %549 ]
  %572 = phi ptr [ %556, %558 ], [ %529, %554 ], [ null, %527 ], [ null, %549 ]
  br i1 %571, label %573, label %577

573:                                              ; preds = %570
  %574 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %532, i32 2
  %575 = load i32, ptr %574, align 4, !tbaa !70
  %576 = icmp eq i32 %575, %507
  br i1 %576, label %577, label %527, !prof !150, !llvm.loop !152

577:                                              ; preds = %573, %570, %523, %515
  %578 = phi ptr [ null, %515 ], [ null, %523 ], [ null, %573 ], [ %572, %570 ]
  %579 = icmp eq ptr %578, null
  br i1 %579, label %643, label %580, !prof !165

580:                                              ; preds = %577
  %581 = load i32, ptr %190, align 8
  %582 = and i32 %581, 65535
  %583 = icmp eq i32 %582, 7
  %584 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %585 = icmp eq ptr %584, null
  br i1 %583, label %586, label %612

586:                                              ; preds = %580
  br i1 %585, label %595, label %587

587:                                              ; preds = %586
  %588 = load i32, ptr %230, align 8, !tbaa !66
  %589 = load ptr, ptr %502, align 8, !tbaa !55
  %590 = getelementptr inbounds %struct.rtx_def, ptr %589, i64 0, i32 1
  %591 = load i32, ptr %590, align 8, !tbaa !66
  %592 = getelementptr inbounds %struct.rtx_def, ptr %578, i64 0, i32 1
  %593 = load i32, ptr %592, align 8, !tbaa !66
  %594 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %584, ptr noundef nonnull @.str.12, i32 noundef %588, i32 noundef %591, i32 noundef %593)
  br label %595

595:                                              ; preds = %587, %586
  %596 = getelementptr inbounds %struct.value_data, ptr %9, i64 %183, i32 2
  %597 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  %598 = tail call ptr @pool_alloc(ptr noundef %597) #17
  %599 = getelementptr inbounds %struct.rtx_def, ptr %578, i64 0, i32 1
  %600 = load i32, ptr %599, align 8, !tbaa !66
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %601, i32 3
  %603 = load ptr, ptr %602, align 8, !tbaa !117
  store ptr %603, ptr %598, align 8, !tbaa !166
  %604 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %598, i64 0, i32 1
  store ptr %190, ptr %604, align 8, !tbaa !168
  %605 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %598, i64 0, i32 2
  store ptr %502, ptr %605, align 8, !tbaa !169
  %606 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %598, i64 0, i32 3
  store ptr %578, ptr %606, align 8, !tbaa !170
  %607 = load i32, ptr %599, align 8, !tbaa !66
  %608 = zext i32 %607 to i64
  %609 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %608, i32 3
  store ptr %598, ptr %609, align 8, !tbaa !117
  %610 = load i32, ptr %596, align 4, !tbaa !115
  %611 = add i32 %610, 1
  store i32 %611, ptr %596, align 4, !tbaa !115
  br label %643

612:                                              ; preds = %580
  br i1 %585, label %621, label %613

613:                                              ; preds = %612
  %614 = load i32, ptr %230, align 8, !tbaa !66
  %615 = load ptr, ptr %502, align 8, !tbaa !55
  %616 = getelementptr inbounds %struct.rtx_def, ptr %615, i64 0, i32 1
  %617 = load i32, ptr %616, align 8, !tbaa !66
  %618 = getelementptr inbounds %struct.rtx_def, ptr %578, i64 0, i32 1
  %619 = load i32, ptr %618, align 8, !tbaa !66
  %620 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %584, ptr noundef nonnull @.str.10, i32 noundef %614, i32 noundef %617, i32 noundef %619)
  br label %621

621:                                              ; preds = %613, %612
  %622 = tail call zeroext i8 @validate_change(ptr noundef nonnull %190, ptr noundef nonnull %502, ptr noundef nonnull %578, i8 noundef zeroext 1) #17
  br label %643

623:                                              ; preds = %495
  %624 = load i32, ptr %190, align 8
  %625 = and i32 %624, 65535
  %626 = icmp eq i32 %625, 7
  %627 = select i1 %626, i32 26, i32 13, !prof !171
  %628 = getelementptr inbounds %struct.rtx_def, ptr %497, i64 0, i32 1
  %629 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %628, i32 noundef %627, ptr noundef nonnull %190, ptr noundef %184) #19
  br label %643

630:                                              ; preds = %479
  %631 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %459
  %632 = load ptr, ptr %631, align 8, !tbaa !55
  %633 = load i32, ptr %632, align 8
  %634 = and i32 %633, 65535
  %635 = icmp eq i32 %634, 43
  br i1 %635, label %636, label %645, !prof !172

636:                                              ; preds = %630
  %637 = load i32, ptr %190, align 8
  %638 = and i32 %637, 65535
  %639 = icmp eq i32 %638, 7
  %640 = select i1 %639, i32 26, i32 13, !prof !173
  %641 = getelementptr inbounds %struct.rtx_def, ptr %632, i64 0, i32 1
  %642 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %641, i32 noundef %640, ptr noundef nonnull %190, ptr noundef %184) #19
  br label %643

643:                                              ; preds = %621, %595, %577, %489, %623, %636
  %644 = phi i8 [ %642, %636 ], [ %629, %623 ], [ %494, %489 ], [ 1, %595 ], [ 1, %621 ], [ 0, %577 ]
  store i8 %644, ptr %461, align 1, !tbaa !66
  br label %645

645:                                              ; preds = %643, %630, %495
  %646 = load i8, ptr %461, align 1, !tbaa !66
  %647 = icmp eq i8 %646, 0
  br i1 %647, label %671, label %648, !prof !174

648:                                              ; preds = %645
  %649 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %459
  %650 = load ptr, ptr %649, align 8, !tbaa !55
  %651 = load ptr, ptr %650, align 8, !tbaa !55
  %652 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %459
  store ptr %651, ptr %652, align 8, !tbaa !55
  %653 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !175
  %654 = icmp sgt i8 %653, 0
  br i1 %654, label %655, label %671

655:                                              ; preds = %648, %666
  %656 = phi i64 [ %667, %666 ], [ 0, %648 ]
  %657 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !66
  %659 = sext i8 %658 to i64
  %660 = and i64 %659, 4294967295
  %661 = icmp eq i64 %459, %660
  br i1 %661, label %662, label %666

662:                                              ; preds = %655
  %663 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %656
  %664 = load ptr, ptr %663, align 8, !tbaa !55
  %665 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %190, ptr noundef %664, ptr noundef %651, i8 noundef zeroext 1) #17
  br label %666

666:                                              ; preds = %662, %655
  %667 = add nuw nsw i64 %656, 1
  %668 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !175
  %669 = sext i8 %668 to i64
  %670 = icmp slt i64 %667, %669
  br i1 %670, label %655, label %671, !llvm.loop !176

671:                                              ; preds = %666, %648, %645, %473, %458
  %672 = phi i8 [ %460, %458 ], [ %460, %473 ], [ %460, %645 ], [ 1, %648 ], [ 1, %666 ]
  %673 = add nuw nsw i64 %459, 1
  %674 = icmp eq i64 %673, %457
  br i1 %674, label %675, label %458, !prof !177, !llvm.loop !178

675:                                              ; preds = %671, %454
  %676 = phi i8 [ 0, %454 ], [ %672, %671 ]
  %677 = icmp eq i8 %676, 0
  br i1 %677, label %704, label %678, !prof !179

678:                                              ; preds = %675
  %679 = tail call i32 @apply_change_group() #17
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %704

681:                                              ; preds = %678
  %682 = icmp sgt i8 %228, 0
  br i1 %682, label %683, label %698

683:                                              ; preds = %681
  %684 = zext nneg i32 %229 to i64
  br label %685

685:                                              ; preds = %683, %695
  %686 = phi i64 [ 0, %683 ], [ %696, %695 ]
  %687 = getelementptr inbounds [30 x i8], ptr %1, i64 0, i64 %686
  %688 = load i8, ptr %687, align 1, !tbaa !66
  %689 = icmp eq i8 %688, 0
  br i1 %689, label %695, label %690

690:                                              ; preds = %685
  %691 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %686
  %692 = load ptr, ptr %691, align 8, !tbaa !55
  %693 = load ptr, ptr %692, align 8, !tbaa !55
  %694 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %686
  store ptr %693, ptr %694, align 8, !tbaa !55
  br label %695

695:                                              ; preds = %690, %685
  %696 = add nuw nsw i64 %686, 1
  %697 = icmp eq i64 %696, %684
  br i1 %697, label %698, label %685, !llvm.loop !180

698:                                              ; preds = %695, %681
  %699 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %700 = icmp eq ptr %699, null
  br i1 %700, label %704, label %701

701:                                              ; preds = %698
  %702 = load i32, ptr %230, align 8, !tbaa !66
  %703 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %699, ptr noundef nonnull @.str.11, i32 noundef %702)
  br label %704

704:                                              ; preds = %701, %698, %678, %675, %452
  %705 = load i32, ptr %190, align 8
  %706 = and i32 %705, 65535
  %707 = icmp eq i32 %706, 10
  br i1 %707, label %708, label %794, !prof !181

708:                                              ; preds = %704
  %709 = getelementptr inbounds %struct.value_data, ptr %9, i64 %183, i32 1
  br label %710

710:                                              ; preds = %708, %791
  %711 = phi i64 [ %792, %791 ], [ 0, %708 ]
  %712 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !100
  %713 = shl nuw i64 1, %711
  %714 = and i64 %712, %713
  %715 = icmp eq i64 %714, 0
  br i1 %715, label %791, label %716, !prof !182

716:                                              ; preds = %710
  %717 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %711
  %718 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %711, i32 1
  %719 = load i32, ptr %718, align 4, !tbaa !74
  %720 = zext i32 %719 to i64
  %721 = icmp eq i64 %711, %720
  br i1 %721, label %732, label %722, !prof !183

722:                                              ; preds = %716, %722
  %723 = phi i32 [ %726, %722 ], [ %719, %716 ]
  %724 = zext i32 %723 to i64
  %725 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %724, i32 2
  %726 = load i32, ptr %725, align 8, !tbaa !77
  %727 = zext i32 %726 to i64
  %728 = icmp eq i64 %711, %727
  br i1 %728, label %729, label %722, !prof !184, !llvm.loop !185

729:                                              ; preds = %722
  %730 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %711, i32 2
  %731 = load i32, ptr %730, align 8, !tbaa !77
  store i32 %731, ptr %725, align 8, !tbaa !77
  br label %743

732:                                              ; preds = %716
  %733 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %711, i32 2
  %734 = load i32, ptr %733, align 8, !tbaa !77
  %735 = icmp eq i32 %734, -1
  br i1 %735, label %743, label %736, !prof !186

736:                                              ; preds = %732, %736
  %737 = phi i32 [ %741, %736 ], [ %734, %732 ]
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %738, i32 1
  store i32 %734, ptr %739, align 4, !tbaa !74
  %740 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %738, i32 2
  %741 = load i32, ptr %740, align 8, !tbaa !77
  %742 = icmp eq i32 %741, -1
  br i1 %742, label %743, label %736, !prof !187, !llvm.loop !188

743:                                              ; preds = %736, %732, %729
  store i32 0, ptr %717, align 8, !tbaa !76
  %744 = trunc i64 %711 to i32
  store i32 %744, ptr %718, align 4, !tbaa !74
  %745 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %711, i32 2
  store i32 -1, ptr %745, align 8, !tbaa !77
  %746 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %711, i32 3
  %747 = load ptr, ptr %746, align 8, !tbaa !117
  %748 = icmp eq ptr %747, null
  br i1 %748, label %759, label %749, !prof !189

749:                                              ; preds = %743
  %750 = getelementptr inbounds %struct.value_data, ptr %9, i64 %183, i32 2
  br label %751

751:                                              ; preds = %749, %751
  %752 = phi ptr [ %753, %751 ], [ %747, %749 ]
  %753 = load ptr, ptr %752, align 8, !tbaa !166
  %754 = load i32, ptr %750, align 4, !tbaa !115
  %755 = add i32 %754, -1
  store i32 %755, ptr %750, align 4, !tbaa !115
  %756 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  tail call void @pool_free(ptr noundef %756, ptr noundef nonnull %752) #17
  %757 = icmp eq ptr %753, null
  br i1 %757, label %758, label %751, !llvm.loop !190

758:                                              ; preds = %751
  store ptr null, ptr %746, align 8, !tbaa !117
  br label %759

759:                                              ; preds = %743, %758
  %760 = load i32, ptr %709, align 8, !tbaa !121
  %761 = trunc i64 %711 to i32
  %762 = tail call i32 @llvm.usub.sat.i32(i32 %761, i32 %760)
  %763 = zext i32 %762 to i64
  %764 = icmp ugt i64 %711, %763
  br i1 %764, label %765, label %791, !prof !191

765:                                              ; preds = %759
  %766 = zext nneg i32 %762 to i64
  br label %767

767:                                              ; preds = %788, %765
  %768 = phi i64 [ %766, %765 ], [ %789, %788 ]
  %769 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %768
  %770 = load i32, ptr %769, align 8, !tbaa !76
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %788, label %772, !prof !192

772:                                              ; preds = %767
  %773 = trunc i64 %768 to i32
  %774 = zext i32 %770 to i64
  %775 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %768, i64 %774
  %776 = load i8, ptr %775, align 1, !tbaa !66
  %777 = zext i8 %776 to i32
  %778 = add i32 %777, %773
  %779 = zext i32 %778 to i64
  %780 = icmp ult i64 %711, %779
  br i1 %780, label %781, label %788, !prof !193

781:                                              ; preds = %772
  %782 = icmp eq i8 %776, 0
  br i1 %782, label %788, label %783

783:                                              ; preds = %781, %783
  %784 = phi i32 [ %786, %783 ], [ 0, %781 ]
  %785 = add i32 %784, %773
  tail call fastcc void @kill_value_one_regno(i32 noundef %785, ptr noundef %184)
  %786 = add nuw nsw i32 %784, 1
  %787 = icmp eq i32 %786, %777
  br i1 %787, label %788, label %783, !llvm.loop !194

788:                                              ; preds = %783, %781, %772, %767
  %789 = add nuw nsw i64 %768, 1
  %790 = icmp eq i64 %789, %711
  br i1 %790, label %791, label %767, !prof !195, !llvm.loop !196

791:                                              ; preds = %788, %759, %710
  %792 = add nuw nsw i64 %711, 1
  %793 = icmp eq i64 %792, 53
  br i1 %793, label %794, label %710, !prof !197, !llvm.loop !198

794:                                              ; preds = %791, %704
  %795 = load ptr, ptr %231, align 8, !tbaa !66
  tail call void @note_stores(ptr noundef %795, ptr noundef nonnull @kill_set_value, ptr noundef %184) #17
  br i1 %308, label %881, label %796, !prof !143

796:                                              ; preds = %794
  %797 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %798 = load ptr, ptr %797, align 8, !tbaa !66
  %799 = load i32, ptr %798, align 8
  %800 = and i32 %799, 65535
  %801 = icmp eq i32 %800, 37
  br i1 %801, label %802, label %881, !prof !199

802:                                              ; preds = %796
  %803 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1, i32 0, i32 0, i64 1
  %804 = load ptr, ptr %803, align 8, !tbaa !66
  %805 = load i32, ptr %804, align 8
  %806 = and i32 %805, 65535
  %807 = icmp eq i32 %806, 37
  br i1 %807, label %808, label %881, !prof !200

808:                                              ; preds = %802
  %809 = getelementptr inbounds %struct.rtx_def, ptr %798, i64 0, i32 1
  %810 = load i32, ptr %809, align 8, !tbaa !66
  %811 = getelementptr inbounds %struct.rtx_def, ptr %804, i64 0, i32 1
  %812 = load i32, ptr %811, align 8, !tbaa !66
  %813 = icmp eq i32 %812, %810
  %814 = icmp eq i32 %810, 7
  %815 = or i1 %814, %813
  br i1 %815, label %881, label %816, !prof !201

816:                                              ; preds = %808
  %817 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !202
  %818 = icmp ne i8 %817, 0
  %819 = icmp eq i32 %810, 6
  %820 = and i1 %819, %818
  br i1 %820, label %881, label %821, !prof !211

821:                                              ; preds = %816
  %822 = zext i32 %810 to i64
  %823 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !66
  %825 = icmp eq i8 %824, 0
  br i1 %825, label %826, label %881, !prof !212

826:                                              ; preds = %821
  %827 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %822
  %828 = load i8, ptr %827, align 1, !tbaa !66
  %829 = icmp eq i8 %828, 0
  br i1 %829, label %830, label %881, !prof !212

830:                                              ; preds = %826
  %831 = lshr i32 %799, 16
  %832 = and i32 %831, 255
  %833 = zext nneg i32 %832 to i64
  %834 = zext i32 %812 to i64
  %835 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %834, i64 %833
  %836 = load i8, ptr %835, align 1, !tbaa !66
  %837 = icmp ugt i32 %810, %812
  %838 = zext i8 %836 to i32
  %839 = add i32 %812, %838
  %840 = icmp ult i32 %810, %839
  %841 = select i1 %837, i1 %840, i1 false, !prof !213
  br i1 %841, label %881, label %842, !prof !214

842:                                              ; preds = %830
  %843 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %822, i64 %833
  %844 = load i8, ptr %843, align 1, !tbaa !66
  %845 = zext i8 %844 to i32
  %846 = icmp ugt i32 %812, %810
  %847 = add i32 %810, %845
  %848 = icmp ult i32 %812, %847
  %849 = select i1 %846, i1 %848, i1 false, !prof !215
  br i1 %849, label %881, label %850, !prof !214

850:                                              ; preds = %842
  %851 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %834
  %852 = load i32, ptr %851, align 8, !tbaa !76
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %865, !prof !216

854:                                              ; preds = %850
  %855 = getelementptr inbounds %struct.value_data, ptr %9, i64 %183, i32 1
  %856 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %822
  %857 = load i32, ptr %856, align 8, !tbaa !76
  store i32 %857, ptr %851, align 8, !tbaa !76
  %858 = zext i32 %857 to i64
  %859 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %834, i64 %858
  %860 = load i8, ptr %859, align 1, !tbaa !66
  %861 = zext i8 %860 to i32
  %862 = load i32, ptr %855, align 8, !tbaa !121
  %863 = icmp ult i32 %862, %861
  br i1 %863, label %864, label %870, !prof !217

864:                                              ; preds = %854
  store i32 %861, ptr %855, align 8, !tbaa !121
  br label %870

865:                                              ; preds = %850
  %866 = zext i32 %852 to i64
  %867 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %834, i64 %866
  %868 = load i8, ptr %867, align 1, !tbaa !66
  %869 = icmp ugt i8 %836, %868
  br i1 %869, label %881, label %870, !prof !218

870:                                              ; preds = %865, %864, %854
  %871 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %834, i32 1
  %872 = load i32, ptr %871, align 4, !tbaa !74
  %873 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %822, i32 1
  store i32 %872, ptr %873, align 4, !tbaa !74
  br label %874

874:                                              ; preds = %874, %870
  %875 = phi i32 [ %812, %870 ], [ %878, %874 ]
  %876 = zext i32 %875 to i64
  %877 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %184, i64 0, i64 %876, i32 2
  %878 = load i32, ptr %877, align 8, !tbaa !77
  %879 = icmp eq i32 %878, -1
  br i1 %879, label %880, label %874, !prof !212, !llvm.loop !219

880:                                              ; preds = %874
  store i32 %810, ptr %877, align 8, !tbaa !77
  br label %881

881:                                              ; preds = %794, %796, %802, %808, %816, %821, %826, %830, %842, %865, %880, %196, %206, %211
  %882 = load ptr, ptr %185, align 8, !tbaa !66
  %883 = getelementptr inbounds %struct.rtl_bb_info, ptr %882, i64 0, i32 1
  %884 = load ptr, ptr %883, align 8, !tbaa !220
  %885 = icmp eq ptr %190, %884
  br label %886

886:                                              ; preds = %881, %452
  %887 = phi i1 [ false, %452 ], [ %885, %881 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %1) #17
  %888 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %887, label %30, label %188, !prof !222, !llvm.loop !223

889:                                              ; preds = %30, %20
  %890 = phi ptr [ %23, %20 ], [ %35, %30 ]
  %891 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !70
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %967, label %893, !prof !83

893:                                              ; preds = %889
  %894 = load ptr, ptr %890, align 8, !tbaa !89
  %895 = getelementptr inbounds %struct.basic_block_def, ptr %894, i64 0, i32 6
  %896 = load ptr, ptr %895, align 8, !tbaa !90
  %897 = load ptr, ptr @cfun, align 8, !tbaa !55
  %898 = getelementptr inbounds %struct.function, ptr %897, i64 0, i32 1
  %899 = load ptr, ptr %898, align 8, !tbaa !85
  %900 = getelementptr inbounds %struct.control_flow_graph, ptr %899, i64 0, i32 1
  %901 = load ptr, ptr %900, align 8, !tbaa !92
  %902 = icmp eq ptr %896, %901
  br i1 %902, label %965, label %903

903:                                              ; preds = %893, %955
  %904 = phi ptr [ %958, %955 ], [ %896, %893 ]
  %905 = phi i8 [ %956, %955 ], [ 0, %893 ]
  %906 = getelementptr inbounds %struct.basic_block_def, ptr %904, i64 0, i32 9
  %907 = load i32, ptr %906, align 8, !tbaa !96
  %908 = lshr i32 %907, 6
  %909 = zext nneg i32 %908 to i64
  %910 = getelementptr inbounds %struct.simple_bitmap_def, ptr %15, i64 0, i32 3, i64 %909
  %911 = load i64, ptr %910, align 8, !tbaa !100
  %912 = and i32 %907, 63
  %913 = zext nneg i32 %912 to i64
  %914 = shl nuw i64 1, %913
  %915 = and i64 %914, %911
  %916 = icmp eq i64 %915, 0
  br i1 %916, label %955, label %917

917:                                              ; preds = %903
  %918 = sext i32 %907 to i64
  %919 = getelementptr inbounds %struct.value_data, ptr %9, i64 %918, i32 2
  %920 = load i32, ptr %919, align 4, !tbaa !115
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %955, label %922

922:                                              ; preds = %917
  %923 = icmp eq i8 %905, 0
  br i1 %923, label %924, label %925

924:                                              ; preds = %922
  tail call void @df_analyze() #17
  br label %925

925:                                              ; preds = %924, %922
  %926 = tail call ptr @df_get_live_out(ptr noundef %904) #17
  br label %927

927:                                              ; preds = %953, %925
  %928 = phi i32 [ 0, %925 ], [ %954, %953 ]
  %929 = load i32, ptr %906, align 8, !tbaa !96
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds %struct.value_data, ptr %9, i64 %930
  %932 = zext nneg i32 %928 to i64
  %933 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %931, i64 0, i64 %932, i32 3
  %934 = load ptr, ptr %933, align 8, !tbaa !117
  %935 = icmp eq ptr %934, null
  br i1 %935, label %951, label %936

936:                                              ; preds = %927
  %937 = tail call i32 @bitmap_bit_p(ptr noundef %926, i32 noundef %928) #17
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %943, label %939

939:                                              ; preds = %936
  %940 = load i32, ptr %906, align 8, !tbaa !96
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds %struct.value_data, ptr %9, i64 %941
  tail call fastcc void @apply_debug_insn_changes(ptr noundef %942, i32 noundef %928)
  br label %943

943:                                              ; preds = %939, %936
  %944 = load i32, ptr %906, align 8, !tbaa !96
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds %struct.value_data, ptr %9, i64 %945, i32 2
  %947 = load i32, ptr %946, align 4, !tbaa !115
  %948 = icmp ne i32 %947, 0
  %949 = icmp ult i32 %928, 52
  %950 = and i1 %948, %949
  br i1 %950, label %953, label %955

951:                                              ; preds = %927
  %952 = icmp ult i32 %928, 52
  br i1 %952, label %953, label %955

953:                                              ; preds = %951, %943
  %954 = add nuw nsw i32 %928, 1
  br label %927, !llvm.loop !224

955:                                              ; preds = %951, %943, %903, %917
  %956 = phi i8 [ %905, %917 ], [ %905, %903 ], [ 1, %943 ], [ 1, %951 ]
  %957 = getelementptr inbounds %struct.basic_block_def, ptr %904, i64 0, i32 6
  %958 = load ptr, ptr %957, align 8, !tbaa !90
  %959 = load ptr, ptr @cfun, align 8, !tbaa !55
  %960 = getelementptr inbounds %struct.function, ptr %959, i64 0, i32 1
  %961 = load ptr, ptr %960, align 8, !tbaa !85
  %962 = getelementptr inbounds %struct.control_flow_graph, ptr %961, i64 0, i32 1
  %963 = load ptr, ptr %962, align 8, !tbaa !92
  %964 = icmp eq ptr %958, %963
  br i1 %964, label %965, label %903, !llvm.loop !225

965:                                              ; preds = %955, %893
  %966 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  tail call void @free_alloc_pool(ptr noundef %966) #17
  br label %967

967:                                              ; preds = %965, %889
  %968 = load ptr, ptr %15, align 8, !tbaa !97
  tail call void @free(ptr noundef %968)
  tail call void @free(ptr noundef %15)
  tail call void @free(ptr noundef %9)
  ret i32 0
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare void @df_analyze() local_unnamed_addr #3

declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @apply_debug_insn_changes(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !prof !54 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %0, i64 0, i64 %3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %12 = phi ptr [ %27, %19 ], [ %5, %7 ]
  %13 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !168
  %15 = icmp eq ptr %11, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @apply_change_group() #17
  %18 = load ptr, ptr %13, align 8, !tbaa !168
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %11, %10 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !168
  %22 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %12, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !170
  %26 = tail call zeroext i8 @validate_change(ptr noundef %21, ptr noundef %23, ptr noundef %25, i8 noundef zeroext 1) #17
  %27 = load ptr, ptr %12, align 8, !tbaa !166
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !llvm.loop !226

29:                                               ; preds = %19, %2
  %30 = tail call i32 @apply_change_group() #17
  ret void
}

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #15 !prof !227 !PGOFuncName !228 {
  br label %5

5:                                                ; preds = %256, %4
  %6 = phi i8 [ 0, %4 ], [ %257, %256 ]
  %7 = phi ptr [ %0, %4 ], [ %249, %256 ]
  %8 = phi i32 [ %1, %4 ], [ 13, %256 ]
  %9 = load ptr, ptr %7, align 8, !tbaa !55
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %379 [
    i16 49, label %13
    i16 77, label %419
    i16 76, label %419
    i16 79, label %419
    i16 75, label %419
    i16 74, label %419
    i16 78, label %419
    i16 43, label %258
    i16 37, label %260
  ], !prof !229

13:                                               ; preds = %5
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %379, label %17, !prof !230

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 65535
  %24 = load i32, ptr %21, align 8
  %25 = icmp eq i32 %23, 39
  br i1 %25, label %26, label %31, !prof !230

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  br label %31

31:                                               ; preds = %26, %17
  %32 = phi i32 [ %30, %26 ], [ %23, %17 ]
  %33 = phi ptr [ %28, %26 ], [ %19, %17 ]
  %34 = and i32 %24, 65535
  %35 = icmp eq i32 %34, 39
  br i1 %35, label %36, label %40, !prof !230

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  %39 = load i32, ptr %38, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i32 [ %39, %36 ], [ %24, %31 ]
  %42 = phi ptr [ %38, %36 ], [ %21, %31 ]
  %43 = freeze i32 %41
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %247, label %46, !prof !230

46:                                               ; preds = %40
  %47 = trunc i32 %32 to i16
  switch i16 %47, label %48 [
    i16 100, label %247
    i16 99, label %247
    i16 98, label %247
    i16 52, label %247
    i16 43, label %50
  ], !prof !231

48:                                               ; preds = %46
  %49 = trunc i32 %43 to i16
  switch i16 %49, label %51 [
    i16 100, label %50
    i16 99, label %50
    i16 98, label %50
    i16 52, label %50
  ], !prof !232

50:                                               ; preds = %48, %48, %48, %46, %48
  br label %247

51:                                               ; preds = %48
  %52 = and i32 %32, 65534
  %53 = icmp eq i32 %52, 44
  br i1 %53, label %247, label %54, !prof !233

54:                                               ; preds = %51
  switch i16 %47, label %55 [
    i16 35, label %247
    i16 30, label %247
  ], !prof !234

55:                                               ; preds = %54
  %56 = and i32 %43, 65534
  %57 = icmp eq i32 %56, 44
  br i1 %57, label %247, label %58, !prof !235

58:                                               ; preds = %55
  switch i16 %49, label %59 [
    i16 35, label %247
    i16 30, label %247
  ], !prof !236

59:                                               ; preds = %58
  %60 = icmp eq i32 %32, 37
  %61 = icmp eq i32 %44, 37
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %243, !prof !237

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !66
  %66 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !66
  %68 = icmp ult i32 %67, 7
  br i1 %68, label %83, label %69, !prof !237

69:                                               ; preds = %63
  %70 = zext i32 %67 to i64
  %71 = add nsw i64 %70, -37
  %72 = icmp ult i64 %71, 8
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %75 = getelementptr inbounds i16, ptr %74, i64 %70
  %76 = load i16, ptr %75, align 2, !tbaa !238
  %77 = icmp ult i16 %76, 7
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = sext i16 %76 to i64
  %80 = and i64 %79, 4294967295
  %81 = add nsw i64 %80, -37
  %82 = icmp ult i64 %81, 8
  br i1 %82, label %83, label %117

83:                                               ; preds = %78, %73, %69, %63
  %84 = icmp ugt i32 %65, 52
  br i1 %84, label %85, label %93, !prof !239

85:                                               ; preds = %83
  %86 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %87 = zext i32 %65 to i64
  %88 = getelementptr inbounds i16, ptr %86, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !238
  %90 = sext i16 %89 to i32
  %91 = icmp slt i16 %89, 0
  %92 = select i1 %91, i32 %65, i32 %90
  br label %93

93:                                               ; preds = %85, %83
  %94 = phi i32 [ %65, %83 ], [ %92, %85 ]
  %95 = icmp ult i32 %94, 8
  br i1 %95, label %114, label %96, !prof !237

96:                                               ; preds = %93
  %97 = zext i32 %94 to i64
  %98 = add nsw i64 %97, -37
  %99 = icmp ult i64 %98, 8
  %100 = and i32 %94, -5
  %101 = icmp eq i32 %100, 16
  %102 = or i1 %101, %99
  br i1 %102, label %114, label %103

103:                                              ; preds = %96
  %104 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %105 = getelementptr inbounds i16, ptr %104, i64 %97
  %106 = load i16, ptr %105, align 2, !tbaa !238
  %107 = icmp ult i16 %106, 8
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = sext i16 %106 to i64
  %110 = and i64 %109, 4294967295
  %111 = add nsw i64 %110, -37
  %112 = icmp ult i64 %111, 8
  %113 = zext i1 %112 to i8
  br label %114

114:                                              ; preds = %93, %96, %103, %108
  %115 = phi i8 [ 1, %96 ], [ 1, %93 ], [ 1, %103 ], [ %113, %108 ]
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %238, !prof !239

117:                                              ; preds = %78, %114
  %118 = icmp ult i32 %65, 7
  br i1 %118, label %133, label %119

119:                                              ; preds = %117
  %120 = zext i32 %65 to i64
  %121 = add nsw i64 %120, -37
  %122 = icmp ult i64 %121, 8
  br i1 %122, label %133, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %125 = getelementptr inbounds i16, ptr %124, i64 %120
  %126 = load i16, ptr %125, align 2, !tbaa !238
  %127 = icmp ult i16 %126, 7
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = sext i16 %126 to i64
  %130 = and i64 %129, 4294967295
  %131 = add nsw i64 %130, -37
  %132 = icmp ult i64 %131, 8
  br i1 %132, label %133, label %163

133:                                              ; preds = %128, %123, %119, %117
  %134 = icmp ugt i32 %67, 52
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %137 = zext i32 %67 to i64
  %138 = getelementptr inbounds i16, ptr %136, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !238
  %140 = sext i16 %139 to i32
  %141 = icmp slt i16 %139, 0
  %142 = select i1 %141, i32 %67, i32 %140
  br label %143

143:                                              ; preds = %135, %133
  %144 = phi i32 [ %67, %133 ], [ %142, %135 ]
  %145 = icmp ult i32 %144, 8
  br i1 %145, label %238, label %146

146:                                              ; preds = %143
  %147 = zext i32 %144 to i64
  %148 = add nsw i64 %147, -37
  %149 = icmp ult i64 %148, 8
  %150 = and i32 %144, -5
  %151 = icmp eq i32 %150, 16
  %152 = or i1 %151, %149
  br i1 %152, label %238, label %153

153:                                              ; preds = %146
  %154 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %155 = getelementptr inbounds i16, ptr %154, i64 %147
  %156 = load i16, ptr %155, align 2, !tbaa !238
  %157 = icmp ult i16 %156, 8
  br i1 %157, label %238, label %158

158:                                              ; preds = %153
  %159 = sext i16 %156 to i64
  %160 = and i64 %159, 4294967295
  %161 = add nsw i64 %160, -45
  %162 = icmp ult i64 %161, -8
  br i1 %162, label %163, label %238

163:                                              ; preds = %128, %158
  %164 = icmp ugt i32 %65, 52
  br i1 %164, label %165, label %173

165:                                              ; preds = %163
  %166 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %167 = zext i32 %65 to i64
  %168 = getelementptr inbounds i16, ptr %166, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !238
  %170 = sext i16 %169 to i32
  %171 = icmp slt i16 %169, 0
  %172 = select i1 %171, i32 %65, i32 %170
  br label %173

173:                                              ; preds = %165, %163
  %174 = phi i32 [ %65, %163 ], [ %172, %165 ]
  %175 = icmp ult i32 %174, 8
  br i1 %175, label %193, label %176

176:                                              ; preds = %173
  %177 = zext i32 %174 to i64
  %178 = add nsw i64 %177, -37
  %179 = icmp ult i64 %178, 8
  %180 = and i32 %174, -5
  %181 = icmp eq i32 %180, 16
  %182 = or i1 %181, %179
  br i1 %182, label %193, label %183

183:                                              ; preds = %176
  %184 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %185 = getelementptr inbounds i16, ptr %184, i64 %177
  %186 = load i16, ptr %185, align 2, !tbaa !238
  %187 = icmp ult i16 %186, 8
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = sext i16 %186 to i64
  %190 = and i64 %189, 4294967295
  %191 = add nsw i64 %190, -37
  %192 = icmp ult i64 %191, 8
  br label %193

193:                                              ; preds = %173, %176, %183, %188
  %194 = phi i1 [ true, %176 ], [ true, %173 ], [ true, %183 ], [ %192, %188 ]
  %195 = or i1 %68, %194
  br i1 %195, label %238, label %196

196:                                              ; preds = %193
  %197 = zext i32 %67 to i64
  %198 = add nsw i64 %197, -37
  %199 = icmp ult i64 %198, 8
  br i1 %199, label %238, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr @reg_renumber, align 8, !tbaa !55
  %202 = getelementptr inbounds i16, ptr %201, i64 %197
  %203 = load i16, ptr %202, align 2, !tbaa !238
  %204 = icmp ult i16 %203, 7
  br i1 %204, label %238, label %205

205:                                              ; preds = %200
  %206 = sext i16 %203 to i64
  %207 = and i64 %206, 4294967295
  %208 = add nsw i64 %207, -37
  %209 = icmp ult i64 %208, 8
  br i1 %209, label %238, label %210

210:                                              ; preds = %205
  %211 = icmp ugt i32 %67, 52
  %212 = sext i16 %203 to i32
  %213 = icmp slt i16 %203, 0
  %214 = select i1 %213, i32 %67, i32 %212
  %215 = select i1 %211, i32 %214, i32 %67
  %216 = icmp ult i32 %215, 8
  br i1 %216, label %233, label %217

217:                                              ; preds = %210
  %218 = zext i32 %215 to i64
  %219 = add nsw i64 %218, -37
  %220 = icmp ult i64 %219, 8
  %221 = and i32 %215, -5
  %222 = icmp eq i32 %221, 16
  %223 = or i1 %222, %220
  br i1 %223, label %233, label %224

224:                                              ; preds = %217
  %225 = getelementptr inbounds i16, ptr %201, i64 %218
  %226 = load i16, ptr %225, align 2, !tbaa !238
  %227 = icmp ult i16 %226, 8
  br i1 %227, label %233, label %228

228:                                              ; preds = %224
  %229 = sext i16 %226 to i64
  %230 = and i64 %229, 4294967295
  %231 = add nsw i64 %230, -45
  %232 = icmp ult i64 %231, -8
  br label %233

233:                                              ; preds = %210, %217, %224, %228
  %234 = phi i1 [ false, %217 ], [ false, %210 ], [ false, %224 ], [ %232, %228 ]
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i64
  %237 = zext i1 %234 to i64
  br label %238

238:                                              ; preds = %146, %143, %153, %193, %158, %233, %196, %200, %205, %114
  %239 = phi i64 [ 0, %114 ], [ 0, %205 ], [ 0, %200 ], [ 0, %196 ], [ %236, %233 ], [ 1, %158 ], [ 0, %193 ], [ 1, %153 ], [ 1, %143 ], [ 1, %146 ]
  %240 = phi i64 [ 1, %114 ], [ 1, %205 ], [ 1, %200 ], [ 1, %196 ], [ %237, %233 ], [ 0, %158 ], [ 1, %193 ], [ 0, %153 ], [ 0, %143 ], [ 0, %146 ]
  %241 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %240
  %242 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %239
  br label %247

243:                                              ; preds = %59
  br i1 %60, label %247, label %244

244:                                              ; preds = %243
  %245 = select i1 %61, ptr %20, ptr null
  %246 = select i1 %61, ptr %18, ptr null
  br label %247

247:                                              ; preds = %243, %55, %58, %58, %51, %54, %54, %40, %46, %46, %46, %46, %244, %50, %238
  %248 = phi ptr [ %20, %50 ], [ %241, %238 ], [ %245, %244 ], [ %18, %46 ], [ %18, %46 ], [ %18, %46 ], [ %18, %46 ], [ %18, %40 ], [ null, %54 ], [ null, %54 ], [ null, %51 ], [ null, %58 ], [ null, %58 ], [ null, %55 ], [ %18, %243 ]
  %249 = phi ptr [ %18, %50 ], [ %242, %238 ], [ %246, %244 ], [ %20, %46 ], [ %20, %46 ], [ %20, %46 ], [ %20, %46 ], [ %20, %40 ], [ %20, %54 ], [ %20, %54 ], [ %20, %51 ], [ %18, %58 ], [ %18, %58 ], [ %18, %55 ], [ %20, %243 ]
  %250 = icmp eq ptr %248, null
  br i1 %250, label %253, label %251, !prof !240

251:                                              ; preds = %247
  %252 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %248, i32 noundef 11, ptr noundef nonnull %2, ptr noundef %3)
  br label %253

253:                                              ; preds = %251, %247
  %254 = phi i8 [ %252, %251 ], [ 0, %247 ]
  %255 = icmp eq ptr %249, null
  br i1 %255, label %419, label %256, !prof !230

256:                                              ; preds = %253
  %257 = or i8 %6, %254
  br label %5

258:                                              ; preds = %5
  %259 = tail call fastcc zeroext i8 @replace_oldest_value_mem(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3), !range !241
  br label %419

260:                                              ; preds = %5
  %261 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %262 = load i32, ptr %261, align 8, !tbaa !66
  %263 = lshr i32 %10, 16
  %264 = and i32 %263, 255
  %265 = zext i32 %262 to i64
  %266 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %3, i64 0, i64 %265
  %267 = load i32, ptr %266, align 8, !tbaa !76
  %268 = icmp eq i32 %264, %267
  br i1 %268, label %277, label %269, !prof !148

269:                                              ; preds = %260
  %270 = zext nneg i32 %264 to i64
  %271 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %265, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !66
  %273 = zext i32 %267 to i64
  %274 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %265, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !66
  %276 = icmp ugt i8 %272, %275
  br i1 %276, label %331, label %277, !prof !149

277:                                              ; preds = %269, %260
  %278 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %3, i64 0, i64 %265, i32 1
  %279 = load i32, ptr %278, align 4, !tbaa !70
  %280 = icmp eq i32 %279, %262
  br i1 %280, label %331, label %281, !prof !150

281:                                              ; preds = %277, %327
  %282 = phi i32 [ %329, %327 ], [ %279, %277 ]
  %283 = phi ptr [ %326, %327 ], [ undef, %277 ]
  %284 = zext i32 %8 to i64
  %285 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %284
  %286 = zext i32 %282 to i64
  %287 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %3, i64 0, i64 %286
  %288 = load i32, ptr %287, align 8, !tbaa !76
  %289 = load i64, ptr %285, align 8, !tbaa !100
  %290 = shl nuw i64 1, %286
  %291 = and i64 %289, %290
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %324, label %293

293:                                              ; preds = %281
  %294 = zext nneg i32 %264 to i64
  %295 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %286, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !66
  %297 = zext i8 %296 to i32
  %298 = add i32 %282, %297
  br label %299

299:                                              ; preds = %303, %293
  %300 = phi i32 [ %282, %293 ], [ %301, %303 ]
  %301 = add i32 %300, 1
  %302 = icmp ult i32 %301, %298
  br i1 %302, label %303, label %308

303:                                              ; preds = %299
  %304 = zext nneg i32 %301 to i64
  %305 = shl nuw i64 1, %304
  %306 = and i64 %305, %289
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %324, label %299, !llvm.loop !151

308:                                              ; preds = %299
  %309 = load i32, ptr %266, align 8, !tbaa !76
  %310 = tail call fastcc ptr @maybe_mode_change(i32 noundef %288, i32 noundef %309, i32 noundef %264, i32 noundef %282)
  %311 = icmp eq ptr %310, null
  br i1 %311, label %324, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %314 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %315 = load i32, ptr %313, align 8, !tbaa !66
  %316 = getelementptr inbounds %struct.rtx_def, ptr %310, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %315, ptr %316, align 8, !tbaa !66
  %317 = load ptr, ptr %314, align 8, !tbaa !66
  %318 = getelementptr inbounds %struct.rtx_def, ptr %310, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %317, ptr %318, align 8, !tbaa !66
  %319 = load i32, ptr %9, align 8
  %320 = and i32 %319, 1073741824
  %321 = load i32, ptr %310, align 8
  %322 = and i32 %321, -1073741825
  %323 = or disjoint i32 %322, %320
  store i32 %323, ptr %310, align 8
  br label %324

324:                                              ; preds = %303, %312, %308, %281
  %325 = phi i1 [ false, %312 ], [ true, %308 ], [ false, %281 ], [ false, %303 ]
  %326 = phi ptr [ %310, %312 ], [ %283, %308 ], [ null, %281 ], [ null, %303 ]
  br i1 %325, label %327, label %331

327:                                              ; preds = %324
  %328 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %3, i64 0, i64 %286, i32 2
  %329 = load i32, ptr %328, align 4, !tbaa !70
  %330 = icmp eq i32 %329, %262
  br i1 %330, label %331, label %281, !prof !150, !llvm.loop !152

331:                                              ; preds = %327, %324, %277, %269
  %332 = phi ptr [ null, %269 ], [ null, %277 ], [ null, %327 ], [ %326, %324 ]
  %333 = icmp eq ptr %332, null
  br i1 %333, label %419, label %334, !prof !165

334:                                              ; preds = %331
  %335 = load i32, ptr %2, align 8
  %336 = and i32 %335, 65535
  %337 = icmp eq i32 %336, 7
  %338 = load ptr, ptr @dump_file, align 8, !tbaa !55
  %339 = icmp eq ptr %338, null
  br i1 %337, label %340, label %367

340:                                              ; preds = %334
  br i1 %339, label %350, label %341

341:                                              ; preds = %340
  %342 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %343 = load i32, ptr %342, align 8, !tbaa !66
  %344 = load ptr, ptr %7, align 8, !tbaa !55
  %345 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !66
  %347 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %348 = load i32, ptr %347, align 8, !tbaa !66
  %349 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %338, ptr noundef nonnull @.str.12, i32 noundef %343, i32 noundef %346, i32 noundef %348)
  br label %350

350:                                              ; preds = %341, %340
  %351 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  %352 = tail call ptr @pool_alloc(ptr noundef %351) #17
  %353 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %354 = load i32, ptr %353, align 8, !tbaa !66
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %3, i64 0, i64 %355, i32 3
  %357 = load ptr, ptr %356, align 8, !tbaa !117
  store ptr %357, ptr %352, align 8, !tbaa !166
  %358 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %352, i64 0, i32 1
  store ptr %2, ptr %358, align 8, !tbaa !168
  %359 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %352, i64 0, i32 2
  store ptr %7, ptr %359, align 8, !tbaa !169
  %360 = getelementptr inbounds %struct.queued_debug_insn_change, ptr %352, i64 0, i32 3
  store ptr %332, ptr %360, align 8, !tbaa !170
  %361 = load i32, ptr %353, align 8, !tbaa !66
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %3, i64 0, i64 %362, i32 3
  store ptr %352, ptr %363, align 8, !tbaa !117
  %364 = getelementptr inbounds %struct.value_data, ptr %3, i64 0, i32 2
  %365 = load i32, ptr %364, align 4, !tbaa !115
  %366 = add i32 %365, 1
  store i32 %366, ptr %364, align 4, !tbaa !115
  br label %419

367:                                              ; preds = %334
  br i1 %339, label %377, label %368

368:                                              ; preds = %367
  %369 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %370 = load i32, ptr %369, align 8, !tbaa !66
  %371 = load ptr, ptr %7, align 8, !tbaa !55
  %372 = getelementptr inbounds %struct.rtx_def, ptr %371, i64 0, i32 1
  %373 = load i32, ptr %372, align 8, !tbaa !66
  %374 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %375 = load i32, ptr %374, align 8, !tbaa !66
  %376 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %338, ptr noundef nonnull @.str.10, i32 noundef %370, i32 noundef %373, i32 noundef %375)
  br label %377

377:                                              ; preds = %368, %367
  %378 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %332, i8 noundef zeroext 1) #17
  br label %419

379:                                              ; preds = %5, %13
  %380 = zext nneg i32 %11 to i64
  %381 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !55
  %383 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %380
  %384 = load i8, ptr %383, align 1, !tbaa !66
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %419, label %386, !prof !242

386:                                              ; preds = %379
  %387 = zext i8 %384 to i64
  br label %388

388:                                              ; preds = %386, %416
  %389 = phi i64 [ %387, %386 ], [ %391, %416 ]
  %390 = phi i8 [ 0, %386 ], [ %417, %416 ]
  %391 = add nsw i64 %389, -1
  %392 = getelementptr inbounds i8, ptr %382, i64 %391
  %393 = load i8, ptr %392, align 1, !tbaa !66
  switch i8 %393, label %416 [
    i8 101, label %394
    i8 69, label %399
  ], !prof !243

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %396 = getelementptr inbounds [1 x %union.rtunion_def], ptr %395, i64 0, i64 %391
  %397 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %396, i32 noundef %8, ptr noundef %2, ptr noundef %3)
  %398 = or i8 %397, %390
  br label %416

399:                                              ; preds = %388
  %400 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %401 = getelementptr inbounds [1 x %union.rtunion_def], ptr %400, i64 0, i64 %391
  %402 = load ptr, ptr %401, align 8, !tbaa !66
  %403 = load i32, ptr %402, align 8, !tbaa !244
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %416

405:                                              ; preds = %399
  %406 = zext nneg i32 %403 to i64
  br label %407

407:                                              ; preds = %405, %407
  %408 = phi i64 [ %406, %405 ], [ %410, %407 ]
  %409 = phi i8 [ %390, %405 ], [ %414, %407 ]
  %410 = add nsw i64 %408, -1
  %411 = load ptr, ptr %401, align 8, !tbaa !66
  %412 = getelementptr inbounds %struct.rtvec_def, ptr %411, i64 0, i32 1, i64 %410
  %413 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %412, i32 noundef %8, ptr noundef %2, ptr noundef %3)
  %414 = or i8 %413, %409
  %415 = icmp sgt i64 %408, 1
  br i1 %415, label %407, label %416, !llvm.loop !246

416:                                              ; preds = %407, %399, %388, %394
  %417 = phi i8 [ %398, %394 ], [ %390, %388 ], [ %390, %399 ], [ %414, %407 ]
  %418 = icmp sgt i64 %389, 1
  br i1 %418, label %388, label %419, !prof !247, !llvm.loop !248

419:                                              ; preds = %416, %379, %377, %350, %331, %5, %5, %5, %5, %5, %5, %253, %258
  %420 = phi i8 [ %259, %258 ], [ %254, %253 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 1, %350 ], [ 1, %377 ], [ 0, %331 ], [ 0, %379 ], [ %417, %416 ]
  %421 = or i8 %6, %420
  ret i8 %421
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @preprocess_constraints() local_unnamed_addr #3

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @cprop_find_used_regs(ptr noundef %0, ptr noundef %1) #13 !prof !54 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @cprop_find_used_regs_1, ptr noundef %1) #17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @kill_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !249 !PGOFuncName !250 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %20, !prof !251

6:                                                ; preds = %2
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !66
  %16 = tail call ptr @simplify_subreg(i32 noundef %8, ptr noundef nonnull %10, i32 noundef %13, i32 noundef %15) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load ptr, ptr %9, align 8, !tbaa !66
  br label %20

20:                                               ; preds = %6, %18, %2
  %21 = phi ptr [ %19, %18 ], [ %16, %6 ], [ %0, %2 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %114, !prof !252

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !66
  %28 = zext i32 %27 to i64
  %29 = lshr i32 %22, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %28, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !66
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %84, label %35, !prof !253

35:                                               ; preds = %25
  %36 = zext i8 %33 to i64
  br label %37

37:                                               ; preds = %81, %35
  %38 = phi i64 [ 0, %35 ], [ %82, %81 ]
  %39 = trunc i64 %38 to i32
  %40 = add i32 %27, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %41
  %43 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %41, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !74
  %45 = icmp eq i32 %44, %40
  br i1 %45, label %55, label %46, !prof !183

46:                                               ; preds = %37, %46
  %47 = phi i32 [ %50, %46 ], [ %44, %37 ]
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %48, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !77
  %51 = icmp eq i32 %50, %40
  br i1 %51, label %52, label %46, !prof !184, !llvm.loop !185

52:                                               ; preds = %46
  %53 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %41, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !77
  store i32 %54, ptr %49, align 8, !tbaa !77
  br label %66

55:                                               ; preds = %37
  %56 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %41, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !77
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %66, label %59, !prof !186

59:                                               ; preds = %55, %59
  %60 = phi i32 [ %64, %59 ], [ %57, %55 ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %61, i32 1
  store i32 %57, ptr %62, align 4, !tbaa !74
  %63 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %61, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !77
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %59, !prof !187, !llvm.loop !188

66:                                               ; preds = %59, %55, %52
  store i32 0, ptr %42, align 8, !tbaa !76
  store i32 %40, ptr %43, align 4, !tbaa !74
  %67 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %41, i32 2
  store i32 -1, ptr %67, align 8, !tbaa !77
  %68 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %41, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !117
  %70 = icmp eq ptr %69, null
  br i1 %70, label %81, label %71, !prof !189

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.value_data, ptr %1, i64 0, i32 2
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %75, %73 ], [ %69, %71 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !166
  %76 = load i32, ptr %72, align 4, !tbaa !115
  %77 = add i32 %76, -1
  store i32 %77, ptr %72, align 4, !tbaa !115
  %78 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  tail call void @pool_free(ptr noundef %78, ptr noundef nonnull %74) #17
  %79 = icmp eq ptr %75, null
  br i1 %79, label %80, label %73, !llvm.loop !190

80:                                               ; preds = %73
  store ptr null, ptr %68, align 8, !tbaa !117
  br label %81

81:                                               ; preds = %80, %66
  %82 = add nuw nsw i64 %38, 1
  %83 = icmp eq i64 %82, %36
  br i1 %83, label %84, label %37, !prof !254, !llvm.loop !255

84:                                               ; preds = %81, %25
  %85 = getelementptr inbounds %struct.value_data, ptr %1, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !121
  %87 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %86)
  %88 = icmp ult i32 %87, %27
  br i1 %88, label %89, label %114, !prof !191

89:                                               ; preds = %84
  %90 = zext i32 %87 to i64
  br label %91

91:                                               ; preds = %111, %89
  %92 = phi i64 [ %90, %89 ], [ %112, %111 ]
  %93 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %92
  %94 = load i32, ptr %93, align 8, !tbaa !76
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %111, label %96, !prof !192

96:                                               ; preds = %91
  %97 = trunc i64 %92 to i32
  %98 = zext i32 %94 to i64
  %99 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %92, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !66
  %101 = zext i8 %100 to i32
  %102 = add i32 %101, %97
  %103 = icmp ugt i32 %102, %27
  br i1 %103, label %104, label %111, !prof !193

104:                                              ; preds = %96
  %105 = icmp eq i8 %100, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %104, %106
  %107 = phi i32 [ %109, %106 ], [ 0, %104 ]
  %108 = add i32 %107, %97
  tail call fastcc void @kill_value_one_regno(i32 noundef %108, ptr noundef %1)
  %109 = add nuw nsw i32 %107, 1
  %110 = icmp eq i32 %109, %101
  br i1 %110, label %111, label %106, !llvm.loop !194

111:                                              ; preds = %106, %104, %96, %91
  %112 = add nuw nsw i64 %92, 1
  %113 = icmp eq i64 %112, %28
  br i1 %113, label %114, label %91, !prof !195, !llvm.loop !196

114:                                              ; preds = %111, %84, %20
  ret void
}

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @kill_clobbered_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #15 !prof !256 !PGOFuncName !257 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %7, label %8, !prof !258

7:                                                ; preds = %3
  tail call fastcc void @kill_value(ptr noundef %0, ptr noundef %2)
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noundef i32 @kill_autoinc_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #15 !prof !259 !PGOFuncName !260 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !70
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %28, !prof !261

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  tail call fastcc void @kill_value(ptr noundef %12, ptr noundef %1)
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !66
  %15 = load i32, ptr %12, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %18
  store i32 %17, ptr %19, align 8, !tbaa !76
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %18, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !66
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.value_data, ptr %1, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !121
  %26 = icmp ult i32 %25, %23
  br i1 %26, label %27, label %28, !prof !262

27:                                               ; preds = %10
  store i32 %23, ptr %24, align 8, !tbaa !121
  br label %28

28:                                               ; preds = %27, %10, %2
  %29 = phi i32 [ 0, %2 ], [ -1, %10 ], [ -1, %27 ]
  ret i32 %29
}

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @maybe_mode_change(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 !prof !263 !PGOFuncName !264 {
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !66
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !66
  %11 = icmp ult i8 %7, %10
  br i1 %11, label %12, label %17, !prof !155

12:                                               ; preds = %4
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !66
  %16 = icmp ult i8 %7, %15
  br i1 %16, label %36, label %17

17:                                               ; preds = %12, %4
  %18 = icmp eq i32 %0, %2
  br i1 %18, label %33, label %19, !prof !156

19:                                               ; preds = %17
  %20 = zext nneg i32 %2 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !66
  %23 = icmp ult i8 %10, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = zext i32 %3 to i64
  %26 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !70
  %28 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %0, i32 noundef %2, i32 noundef %27) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = tail call i32 @subreg_regno_offset(i32 noundef %3, i32 noundef %0, i32 noundef 0, i32 noundef %2) #17
  %32 = add i32 %31, %3
  br label %33

33:                                               ; preds = %17, %30
  %34 = phi i32 [ %32, %30 ], [ %3, %17 ]
  %35 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %2, i32 noundef %34) #17
  br label %36

36:                                               ; preds = %33, %19, %24, %12
  %37 = phi ptr [ null, %12 ], [ null, %24 ], [ null, %19 ], [ %35, %33 ]
  ret ptr %37
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @replace_oldest_value_mem(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #13 !prof !54 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 7
  %7 = select i1 %6, i32 26, i32 13
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = tail call fastcc zeroext i8 @replace_oldest_value_addr(ptr noundef nonnull %8, i32 noundef %7, ptr noundef nonnull %1, ptr noundef %2)
  ret i8 %9
}

declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @kill_set_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #15 !prof !256 !PGOFuncName !265 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %138, label %7, !prof !258

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 39
  br i1 %10, label %11, label %25, !prof !251

11:                                               ; preds = %7
  %12 = lshr i32 %8, 16
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load i32, ptr %19, align 8, !tbaa !66
  %21 = tail call ptr @simplify_subreg(i32 noundef %13, ptr noundef nonnull %15, i32 noundef %18, i32 noundef %20) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load ptr, ptr %14, align 8, !tbaa !66
  br label %25

25:                                               ; preds = %23, %11, %7
  %26 = phi ptr [ %24, %23 ], [ %21, %11 ], [ %0, %7 ]
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %119, !prof !252

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !66
  %33 = zext i32 %32 to i64
  %34 = lshr i32 %27, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %33, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !66
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %89, label %40, !prof !253

40:                                               ; preds = %30
  %41 = zext i8 %38 to i64
  br label %42

42:                                               ; preds = %86, %40
  %43 = phi i64 [ 0, %40 ], [ %87, %86 ]
  %44 = trunc i64 %43 to i32
  %45 = add i32 %32, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %46
  %48 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %46, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !74
  %50 = icmp eq i32 %49, %45
  br i1 %50, label %60, label %51, !prof !183

51:                                               ; preds = %42, %51
  %52 = phi i32 [ %55, %51 ], [ %49, %42 ]
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %53, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !77
  %56 = icmp eq i32 %55, %45
  br i1 %56, label %57, label %51, !prof !184, !llvm.loop !185

57:                                               ; preds = %51
  %58 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %46, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !77
  store i32 %59, ptr %54, align 8, !tbaa !77
  br label %71

60:                                               ; preds = %42
  %61 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %46, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !77
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %71, label %64, !prof !186

64:                                               ; preds = %60, %64
  %65 = phi i32 [ %69, %64 ], [ %62, %60 ]
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %66, i32 1
  store i32 %62, ptr %67, align 4, !tbaa !74
  %68 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %66, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !77
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %64, !prof !187, !llvm.loop !188

71:                                               ; preds = %64, %60, %57
  store i32 0, ptr %47, align 8, !tbaa !76
  store i32 %45, ptr %48, align 4, !tbaa !74
  %72 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %46, i32 2
  store i32 -1, ptr %72, align 8, !tbaa !77
  %73 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %46, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !117
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76, !prof !189

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.value_data, ptr %2, i64 0, i32 2
  br label %78

78:                                               ; preds = %76, %78
  %79 = phi ptr [ %80, %78 ], [ %74, %76 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !166
  %81 = load i32, ptr %77, align 4, !tbaa !115
  %82 = add i32 %81, -1
  store i32 %82, ptr %77, align 4, !tbaa !115
  %83 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  tail call void @pool_free(ptr noundef %83, ptr noundef nonnull %79) #17
  %84 = icmp eq ptr %80, null
  br i1 %84, label %85, label %78, !llvm.loop !190

85:                                               ; preds = %78
  store ptr null, ptr %73, align 8, !tbaa !117
  br label %86

86:                                               ; preds = %85, %71
  %87 = add nuw nsw i64 %43, 1
  %88 = icmp eq i64 %87, %41
  br i1 %88, label %89, label %42, !prof !254, !llvm.loop !255

89:                                               ; preds = %86, %30
  %90 = getelementptr inbounds %struct.value_data, ptr %2, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !121
  %92 = tail call i32 @llvm.usub.sat.i32(i32 %32, i32 %91)
  %93 = icmp ult i32 %92, %32
  br i1 %93, label %94, label %119, !prof !191

94:                                               ; preds = %89
  %95 = zext i32 %92 to i64
  br label %96

96:                                               ; preds = %116, %94
  %97 = phi i64 [ %95, %94 ], [ %117, %116 ]
  %98 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %97
  %99 = load i32, ptr %98, align 8, !tbaa !76
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %116, label %101, !prof !192

101:                                              ; preds = %96
  %102 = trunc i64 %97 to i32
  %103 = zext i32 %99 to i64
  %104 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %97, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !66
  %106 = zext i8 %105 to i32
  %107 = add i32 %106, %102
  %108 = icmp ugt i32 %107, %32
  br i1 %108, label %109, label %116, !prof !193

109:                                              ; preds = %101
  %110 = icmp eq i8 %105, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %109, %111
  %112 = phi i32 [ %114, %111 ], [ 0, %109 ]
  %113 = add i32 %112, %102
  tail call fastcc void @kill_value_one_regno(i32 noundef %113, ptr noundef %2)
  %114 = add nuw nsw i32 %112, 1
  %115 = icmp eq i32 %114, %106
  br i1 %115, label %116, label %111, !llvm.loop !194

116:                                              ; preds = %111, %109, %101, %96
  %117 = add nuw nsw i64 %97, 1
  %118 = icmp eq i64 %117, %33
  br i1 %118, label %119, label %96, !prof !195, !llvm.loop !196

119:                                              ; preds = %116, %25, %89
  %120 = load i32, ptr %0, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 37
  br i1 %122, label %123, label %138, !prof !266

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !66
  %126 = lshr i32 %120, 16
  %127 = and i32 %126, 255
  %128 = zext i32 %125 to i64
  %129 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %2, i64 0, i64 %128
  store i32 %127, ptr %129, align 8, !tbaa !76
  %130 = zext nneg i32 %127 to i64
  %131 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %128, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !66
  %133 = zext i8 %132 to i32
  %134 = getelementptr inbounds %struct.value_data, ptr %2, i64 0, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !121
  %136 = icmp ult i32 %135, %133
  br i1 %136, label %137, label %138, !prof !267

137:                                              ; preds = %123
  store i32 %133, ptr %134, align 8, !tbaa !121
  br label %138

138:                                              ; preds = %137, %123, %119, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @cprop_find_used_regs_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #13 !prof !54 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %10, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %7
  tail call fastcc void @apply_debug_insn_changes(ptr noundef %1, i32 noundef %9)
  %15 = load ptr, ptr %0, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !66
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %18, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !117
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.value_data, ptr %1, i64 0, i32 2
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi ptr [ %20, %22 ], [ %26, %24 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !166
  %27 = load i32, ptr %23, align 4, !tbaa !115
  %28 = add i32 %27, -1
  store i32 %28, ptr %23, align 4, !tbaa !115
  %29 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  tail call void @pool_free(ptr noundef %29, ptr noundef nonnull %25) #17
  %30 = icmp eq ptr %26, null
  br i1 %30, label %31, label %24, !llvm.loop !190

31:                                               ; preds = %24, %14
  store ptr null, ptr %19, align 8, !tbaa !117
  br label %32

32:                                               ; preds = %7, %31, %2
  ret i32 0
}

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @kill_value_one_regno(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !54 !PGOFuncName !268 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3
  %5 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !74
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %17, label %8, !prof !183

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %12, %8 ], [ %6, %2 ]
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %10, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !77
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %8, !prof !184, !llvm.loop !185

14:                                               ; preds = %8
  %15 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !77
  store i32 %16, ptr %11, align 8, !tbaa !77
  br label %28

17:                                               ; preds = %2
  %18 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !77
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %28, label %21, !prof !186

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %26, %21 ], [ %19, %17 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %23, i32 1
  store i32 %19, ptr %24, align 4, !tbaa !74
  %25 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %23, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %21, !prof !187, !llvm.loop !188

28:                                               ; preds = %21, %17, %14
  store i32 0, ptr %4, align 8, !tbaa !76
  store i32 %0, ptr %5, align 4, !tbaa !74
  %29 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 2
  store i32 -1, ptr %29, align 8, !tbaa !77
  %30 = getelementptr inbounds [53 x %struct.value_data_entry], ptr %1, i64 0, i64 %3, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !117
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33, !prof !189

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.value_data, ptr %1, i64 0, i32 2
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi ptr [ %31, %33 ], [ %37, %35 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !166
  %38 = load i32, ptr %34, align 4, !tbaa !115
  %39 = add i32 %38, -1
  store i32 %39, ptr %34, align 4, !tbaa !115
  %40 = load ptr, ptr @debug_insn_changes_pool, align 8, !tbaa !55
  tail call void @pool_free(ptr noundef %40, ptr noundef nonnull %36) #17
  %41 = icmp eq ptr %37, null
  br i1 %41, label %42, label %35, !llvm.loop !190

42:                                               ; preds = %35
  store ptr null, ptr %30, align 8, !tbaa !117
  br label %43

43:                                               ; preds = %42, %28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!53}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !{ptr @copyprop_hardreg_forward, ptr @xmalloc, i64 38}
!36 = !{ptr @copyprop_hardreg_forward, ptr @sbitmap_alloc, i64 38}
!37 = !{ptr @copyprop_hardreg_forward, ptr @sbitmap_zero, i64 38}
!38 = !{ptr @copyprop_hardreg_forward, ptr @single_set_2, i64 27600}
!39 = !{ptr @copyprop_hardreg_forward, ptr @extract_insn, i64 558634}
!40 = !{ptr @copyprop_hardreg_forward, ptr @constrain_operands, i64 558634}
!41 = !{ptr @copyprop_hardreg_forward, ptr @preprocess_constraints, i64 558634}
!42 = !{ptr @copyprop_hardreg_forward, ptr @asm_noperands, i64 558634}
!43 = !{ptr @copyprop_hardreg_forward, ptr @note_stores, i64 1117268}
!44 = !{ptr @copyprop_hardreg_forward, ptr @for_each_rtx, i64 558634}
!45 = !{ptr @copyprop_hardreg_forward, ptr @maybe_mode_change, i64 64}
!46 = !{ptr @copyprop_hardreg_forward, ptr @validate_change, i64 64}
!47 = !{ptr @copyprop_hardreg_forward, ptr @replace_oldest_value_addr, i64 162427}
!48 = !{ptr @copyprop_hardreg_forward, ptr @free, i64 114}
!49 = !{ptr @replace_oldest_value_addr, ptr @replace_oldest_value_addr, i64 14747}
!50 = !{ptr @kill_clobbered_value, ptr @kill_value, i64 25214}
!51 = !{ptr @kill_autoinc_value, ptr @kill_value, i64 88}
!52 = !{ptr @maybe_mode_change, ptr @gen_rtx_fmt_i00_stat, i64 64}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !56, i64 8}
!60 = !{!"_IO_FILE", !61, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !61, i64 112, !61, i64 116, !62, i64 120, !63, i64 128, !57, i64 130, !57, i64 131, !56, i64 136, !62, i64 144, !56, i64 152, !56, i64 160, !56, i64 168, !56, i64 176, !62, i64 184, !61, i64 192, !57, i64 196}
!61 = !{!"int", !57, i64 0}
!62 = !{!"long", !57, i64 0}
!63 = !{!"short", !57, i64 0}
!64 = !{!60, !56, i64 16}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!57, !57, i64 0}
!67 = !{!60, !56, i64 40}
!68 = !{!60, !56, i64 48}
!69 = !{!60, !61, i64 0}
!70 = !{!61, !61, i64 0}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!75, !61, i64 4}
!75 = !{!"value_data_entry", !61, i64 0, !61, i64 4, !61, i64 8, !56, i64 16}
!76 = !{!75, !61, i64 0}
!77 = !{!75, !61, i64 8}
!78 = distinct !{!78, !72, !73}
!79 = distinct !{!79, !72, !73}
!80 = distinct !{!80, !72, !73}
!81 = !{!"function_entry_count", i64 38}
!82 = !{!"regcprop.c;gate_handle_cprop"}
!83 = !{!"branch_weights", i32 38, i32 0}
!84 = !{!"regcprop.c;copyprop_hardreg_forward"}
!85 = !{!86, !56, i64 8}
!86 = !{!"function", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !56, i64 96, !61, i64 104, !61, i64 108, !61, i64 112, !61, i64 116, !61, i64 120, !61, i64 124, !56, i64 128, !61, i64 136, !61, i64 137, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 138, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139, !61, i64 139}
!87 = !{!88, !61, i64 32}
!88 = !{!"control_flow_graph", !56, i64 0, !56, i64 8, !56, i64 16, !61, i64 24, !61, i64 28, !61, i64 32, !56, i64 40, !61, i64 48, !57, i64 52, !57, i64 60, !61, i64 68, !61, i64 72}
!89 = !{!88, !56, i64 0}
!90 = !{!91, !56, i64 56}
!91 = !{!"basic_block_def", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !57, i64 32, !56, i64 48, !56, i64 56, !57, i64 64, !62, i64 72, !61, i64 80, !61, i64 84, !61, i64 88, !61, i64 92, !61, i64 96}
!92 = !{!88, !56, i64 8}
!93 = !{!"branch_weights", i32 1, i32 151}
!94 = !{!"branch_weights", i32 151, i32 621709}
!95 = distinct !{!95, !72, !73}
!96 = !{!91, !61, i64 80}
!97 = !{!98, !56, i64 0}
!98 = !{!"simple_bitmap_def", !56, i64 0, !61, i64 8, !61, i64 12, !57, i64 16}
!99 = !{!"branch_weights", i32 155465, i32 0}
!100 = !{!62, !62, i64 0}
!101 = !{!91, !56, i64 0}
!102 = !{!"branch_weights", i32 0, i32 155465}
!103 = !{!104, !61, i64 0}
!104 = !{!"VEC_edge_base", !61, i64 0, !61, i64 4, !57, i64 8}
!105 = !{!"branch_weights", i32 47451, i32 108014}
!106 = !{!"branch_weights", i32 0, i32 108014}
!107 = !{!"branch_weights", i32 108014, i32 0}
!108 = !{!109, !56, i64 0}
!109 = !{!"edge_def", !56, i64 0, !56, i64 8, !57, i64 16, !56, i64 24, !56, i64 32, !61, i64 40, !61, i64 44, !61, i64 48, !61, i64 52, !62, i64 56}
!110 = !{!"branch_weights", i32 45, i32 107969}
!111 = !{!"branch_weights", i32 0, i32 107969}
!112 = !{!"branch_weights", i32 107969, i32 0}
!113 = !{!109, !61, i64 48}
!114 = !{i64 0, i64 1272, !66, i64 1272, i64 4, !70, i64 1276, i64 4, !70}
!115 = !{!116, !61, i64 1276}
!116 = !{!"value_data", !57, i64 0, !61, i64 1272, !61, i64 1276}
!117 = !{!75, !56, i64 16}
!118 = distinct !{!118, !72, !73}
!119 = !{!"branch_weights", i32 47496, i32 2469792}
!120 = distinct !{!120, !72, !73}
!121 = !{!116, !61, i64 1272}
!122 = !{!"branch_weights", i32 558634, i32 268047}
!123 = !{!"branch_weights", i32 0, i32 68727, i32 334697, i32 155210, i32 0}
!124 = !{!"branch_weights", i32 0, i32 268047}
!125 = !{!"branch_weights", i32 531034, i32 27600}
!126 = !{!"branch_weights", i32 0, i32 558634}
!127 = !{!128, !57, i64 1086}
!128 = !{!"recog_data", !57, i64 0, !57, i64 240, !57, i64 480, !57, i64 720, !57, i64 840, !57, i64 960, !57, i64 1072, !57, i64 1086, !57, i64 1087, !57, i64 1088, !57, i64 1089, !56, i64 1120}
!129 = !{!"branch_weights", i32 558633, i32 1}
!130 = !{!131, !61, i64 16}
!131 = !{!"operand_alternative", !56, i64 0, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 24, !61, i64 24, !61, i64 24, !61, i64 24, !61, i64 24, !61, i64 24, !61, i64 24}
!132 = !{!"branch_weights", i32 35894, i32 1160706}
!133 = !{!131, !61, i64 8}
!134 = !{!131, !61, i64 20}
!135 = !{!"branch_weights", i32 37724, i32 1122982}
!136 = !{!"branch_weights", i32 0, i32 1122982}
!137 = !{!"branch_weights", i32 558633, i32 637967}
!138 = distinct !{!138, !72, !73}
!139 = !{!"branch_weights", i32 558634, i32 0}
!140 = !{!"branch_weights", i32 1196600, i32 0}
!141 = distinct !{!141, !72, !73}
!142 = distinct !{!142, !72, !73}
!143 = !{!"branch_weights", i32 2441, i32 556193}
!144 = !{!"branch_weights", i32 69823, i32 486370}
!145 = !{!"branch_weights", i32 14917, i32 54906}
!146 = !{!"branch_weights", i32 54902, i32 4}
!147 = !{!"branch_weights", i32 495, i32 14426}
!148 = !{!"branch_weights", i32 109806, i32 143583}
!149 = !{!"branch_weights", i32 142295, i32 1288}
!150 = !{!"branch_weights", i32 1, i32 0}
!151 = distinct !{!151, !72, !73}
!152 = distinct !{!152, !72, !73}
!153 = !{!"branch_weights", i32 495, i32 0}
!154 = !{!"branch_weights", i32 14793, i32 64}
!155 = !{!"branch_weights", i32 0, i32 64}
!156 = !{!"branch_weights", i32 64, i32 0}
!157 = distinct !{!157, !72, !73}
!158 = !{!"branch_weights", i32 0, i32 14857, i32 54902, i32 64}
!159 = !{!"branch_weights", i32 558569, i32 1}
!160 = !{!"branch_weights", i32 546825, i32 649647}
!161 = !{!"branch_weights", i32 0, i32 649647}
!162 = !{!"branch_weights", i32 430173, i32 219474}
!163 = !{!"branch_weights", i32 427288, i32 2885}
!164 = !{!"branch_weights", i32 182083, i32 167359, i32 77846}
!165 = !{!"branch_weights", i32 252894, i32 0}
!166 = !{!167, !56, i64 0}
!167 = !{!"queued_debug_insn_change", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!168 = !{!167, !56, i64 8}
!169 = !{!167, !56, i64 16}
!170 = !{!167, !56, i64 24}
!171 = !{!"branch_weights", i32 0, i32 77846}
!172 = !{!"branch_weights", i32 81696, i32 137778}
!173 = !{!"branch_weights", i32 0, i32 81696}
!174 = !{!"branch_weights", i32 649647, i32 0}
!175 = !{!128, !57, i64 1087}
!176 = distinct !{!176, !72, !73}
!177 = !{!"branch_weights", i32 558569, i32 637903}
!178 = distinct !{!178, !72, !73}
!179 = !{!"branch_weights", i32 558570, i32 0}
!180 = distinct !{!180, !72, !73}
!181 = !{!"branch_weights", i32 68727, i32 489907}
!182 = !{!"branch_weights", i32 481089, i32 3161442}
!183 = !{!"branch_weights", i32 3506401, i32 22}
!184 = !{!"branch_weights", i32 22, i32 0}
!185 = distinct !{!185, !72, !73}
!186 = !{!"branch_weights", i32 3506018, i32 383}
!187 = !{!"branch_weights", i32 383, i32 0}
!188 = distinct !{!188, !72, !73}
!189 = !{!"branch_weights", i32 3506423, i32 0}
!190 = distinct !{!190, !72, !73}
!191 = !{!"branch_weights", i32 2975492, i32 530931}
!192 = !{!"branch_weights", i32 2968383, i32 7109}
!193 = !{!"branch_weights", i32 0, i32 7109}
!194 = distinct !{!194, !72, !73}
!195 = !{!"branch_weights", i32 2975492, i32 0}
!196 = distinct !{!196, !72, !73}
!197 = !{!"branch_weights", i32 68727, i32 3573804}
!198 = distinct !{!198, !72, !73}
!199 = !{!"branch_weights", i32 305135, i32 251058}
!200 = !{!"branch_weights", i32 532, i32 304603}
!201 = !{!"branch_weights", i32 0, i32 532}
!202 = !{!203, !57, i64 477}
!203 = !{!"rtl_data", !204, i64 0, !205, i64 40, !206, i64 96, !207, i64 112, !209, i64 208, !210, i64 248, !61, i64 312, !56, i64 320, !56, i64 328, !56, i64 336, !56, i64 344, !56, i64 352, !56, i64 360, !56, i64 368, !56, i64 376, !56, i64 384, !56, i64 392, !62, i64 400, !56, i64 408, !56, i64 416, !56, i64 424, !61, i64 432, !61, i64 436, !61, i64 440, !61, i64 444, !61, i64 448, !61, i64 452, !56, i64 456, !57, i64 464, !57, i64 465, !57, i64 466, !57, i64 467, !57, i64 468, !57, i64 469, !57, i64 470, !57, i64 471, !57, i64 472, !57, i64 473, !57, i64 474, !57, i64 475, !57, i64 476, !57, i64 477, !57, i64 478, !57, i64 479, !57, i64 480, !57, i64 481, !57, i64 482, !57, i64 483, !57, i64 484, !57, i64 485}
!204 = !{!"expr_status", !61, i64 0, !61, i64 4, !61, i64 8, !56, i64 16, !56, i64 24, !56, i64 32}
!205 = !{!"emit_status", !61, i64 0, !61, i64 4, !56, i64 8, !56, i64 16, !56, i64 24, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !56, i64 48}
!206 = !{!"varasm_status", !56, i64 0, !61, i64 8}
!207 = !{!"incoming_args", !61, i64 0, !61, i64 4, !61, i64 8, !56, i64 16, !208, i64 24, !56, i64 88}
!208 = !{!"ix86_args", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !61, i64 48, !61, i64 52, !61, i64 56, !61, i64 60}
!209 = !{!"function_subsections", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32}
!210 = !{!"rtl_eh", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !57, i64 48}
!211 = !{!"branch_weights", i32 38, i32 494}
!212 = !{!"branch_weights", i32 494, i32 0}
!213 = !{!"branch_weights", i32 450, i32 44}
!214 = !{!"branch_weights", i32 0, i32 494}
!215 = !{!"branch_weights", i32 44, i32 450}
!216 = !{!"branch_weights", i32 37, i32 457}
!217 = !{!"branch_weights", i32 0, i32 37}
!218 = !{!"branch_weights", i32 0, i32 457}
!219 = distinct !{!219, !72, !73}
!220 = !{!221, !56, i64 8}
!221 = !{!"rtl_bb_info", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !61, i64 32}
!222 = !{!"branch_weights", i32 155465, i32 671216}
!223 = distinct !{!223, !73}
!224 = distinct !{!224, !72, !73}
!225 = distinct !{!225, !72, !73}
!226 = distinct !{!226, !72, !73}
!227 = !{!"function_entry_count", i64 203573}
!228 = !{!"regcprop.c;replace_oldest_value_addr"}
!229 = !{!"branch_weights", i32 89489, i32 28461, i32 0, i32 0, i32 0, i32 0, i32 88, i32 0, i32 0, i32 85535}
!230 = !{!"branch_weights", i32 0, i32 28461}
!231 = !{!"branch_weights", i32 28300, i32 0, i32 0, i32 0, i32 161, i32 0}
!232 = !{!"branch_weights", i32 28300, i32 0, i32 0, i32 0, i32 0}
!233 = !{!"branch_weights", i32 11938, i32 16362}
!234 = !{!"branch_weights", i32 16362, i32 0, i32 0}
!235 = !{!"branch_weights", i32 0, i32 16362}
!236 = !{!"branch_weights", i32 264, i32 0, i32 16098}
!237 = !{!"branch_weights", i32 264, i32 0}
!238 = !{!63, !63, i64 0}
!239 = !{!"branch_weights", i32 0, i32 264}
!240 = !{!"branch_weights", i32 28036, i32 425}
!241 = !{i8 0, i8 2}
!242 = !{!"branch_weights", i32 1, i32 89488}
!243 = !{!"branch_weights", i32 207844, i32 12260, i32 0}
!244 = !{!245, !61, i64 0}
!245 = !{!"rtvec_def", !61, i64 0, !57, i64 8}
!246 = distinct !{!246, !72, !73}
!247 = !{!"branch_weights", i32 130616, i32 89488}
!248 = distinct !{!248, !72, !73}
!249 = !{!"function_entry_count", i64 25302}
!250 = !{!"regcprop.c;kill_value"}
!251 = !{!"branch_weights", i32 0, i32 581991}
!252 = !{!"branch_weights", i32 344981, i32 237010}
!253 = !{!"branch_weights", i32 1, i32 3506422}
!254 = !{!"branch_weights", i32 3506422, i32 1}
!255 = distinct !{!255, !72, !73}
!256 = !{!"function_entry_count", i64 581903}
!257 = !{!"regcprop.c;kill_clobbered_value"}
!258 = !{!"branch_weights", i32 25214, i32 556689}
!259 = !{!"function_entry_count", i64 3282219}
!260 = !{!"regcprop.c;kill_autoinc_value"}
!261 = !{!"branch_weights", i32 88, i32 3282131}
!262 = !{!"branch_weights", i32 38, i32 50}
!263 = !{!"function_entry_count", i64 64}
!264 = !{!"regcprop.c;maybe_mode_change"}
!265 = !{!"regcprop.c;kill_set_value"}
!266 = !{!"branch_weights", i32 319757, i32 236932}
!267 = !{!"branch_weights", i32 47453, i32 272304}
!268 = !{!"regcprop.c;kill_value_one_regno"}
