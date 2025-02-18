; ModuleID = 'jump.c'
source_filename = "jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.subreg_info = type { i32, i32, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str = private unnamed_addr constant [9 x i8] c"barriers\00", align 1
@pass_cleanup_barriers = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr null, ptr @cleanup_barriers, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"jump.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@reg_renumber = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@switch.table.reverse_condition_maybe_unordered = private unnamed_addr constant [18 x i32] [i32 81, i32 80, i32 96, i32 95, i32 94, i32 93, i32 80, i32 80, i32 80, i32 80, i32 91, i32 90, i32 97, i32 85, i32 84, i32 83, i32 82, i32 92], align 4
@switch.table.swap_condition = private unnamed_addr constant [18 x i32] [i32 80, i32 81, i32 84, i32 85, i32 82, i32 83, i32 88, i32 89, i32 86, i32 87, i32 90, i32 91, i32 92, i32 95, i32 96, i32 93, i32 94, i32 97], align 4
@switch.table.unsigned_condition = private unnamed_addr constant [10 x i32] [i32 80, i32 81, i32 86, i32 87, i32 88, i32 89, i32 86, i32 87, i32 88, i32 89], align 4
@switch.table.signed_condition = private unnamed_addr constant [10 x i32] [i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 82, i32 83, i32 84, i32 85], align 4
@switch.table.invert_jump.7 = private unnamed_addr constant [18 x i32] [i32 81, i32 80, i32 85, i32 84, i32 83, i32 82, i32 89, i32 88, i32 87, i32 86, i32 91, i32 90, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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
  br i1 %23, label %7, label %24, !llvm.loop !107

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @rebuild_jump_labels(ptr noundef %0) local_unnamed_addr #9 !prof !110 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !102
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !111

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 41) #17
  br label %5

5:                                                ; preds = %4, %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %209, label %7, !prof !112

7:                                                ; preds = %5, %42
  %8 = phi ptr [ %44, %42 ], [ %0, %5 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %16, !prof !113

12:                                               ; preds = %7
  %13 = lshr i32 %9, 28
  %14 = and i32 %13, 1
  %15 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !102
  br label %16

16:                                               ; preds = %12, %7
  %17 = load i32, ptr %8, align 8
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -7
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %21, label %42, !prof !114

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25, !prof !115

25:                                               ; preds = %21, %40
  %26 = phi ptr [ %28, %40 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !102
  %29 = load i32, ptr %26, align 8
  %30 = and i32 %29, 16711680
  %31 = icmp eq i32 %30, 655360
  br i1 %31, label %32, label %40, !prof !116

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !102
  %36 = load ptr, ptr %33, align 8, !tbaa !102
  %37 = tail call i32 @reg_mentioned_p(ptr noundef %35, ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40, !prof !117

39:                                               ; preds = %32
  tail call void @remove_note(ptr noundef nonnull %8, ptr noundef nonnull %26) #17
  br label %40

40:                                               ; preds = %39, %32, %25
  %41 = icmp eq ptr %28, null
  br i1 %41, label %42, label %25, !prof !118, !llvm.loop !119

42:                                               ; preds = %40, %21, %16
  %43 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %7, !prof !120, !llvm.loop !121

46:                                               ; preds = %42, %204
  %47 = phi ptr [ %207, %204 ], [ %0, %42 ]
  %48 = phi ptr [ %205, %204 ], [ null, %42 ]
  %49 = load i32, ptr %47, align 8
  %50 = trunc i32 %49 to i16
  switch i16 %50, label %204 [
    i16 8, label %51
    i16 7, label %51
    i16 9, label %51
    i16 10, label %51
    i16 12, label %203
  ], !prof !122

51:                                               ; preds = %46, %46, %46, %46
  %52 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !102
  %54 = tail call ptr @extract_asm_operands(ptr noundef %53) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %84, label %56, !prof !123

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !102
  %59 = load i32, ptr %58, align 8, !tbaa !124
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = zext nneg i32 %59 to i64
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ %62, %61 ], [ %65, %63 ]
  %65 = add nsw i64 %64, -1
  %66 = load ptr, ptr %57, align 8, !tbaa !102
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !91
  tail call fastcc void @mark_jump_label_1(ptr noundef %68, ptr noundef nonnull %47, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %69 = icmp sgt i64 %64, 1
  br i1 %69, label %63, label %70, !llvm.loop !126

70:                                               ; preds = %63, %56
  %71 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !102
  %73 = load i32, ptr %72, align 8, !tbaa !124
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = zext nneg i32 %73 to i64
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i64 [ %76, %75 ], [ %79, %77 ]
  %79 = add nsw i64 %78, -1
  %80 = load ptr, ptr %71, align 8, !tbaa !102
  %81 = getelementptr inbounds %struct.rtvec_def, ptr %80, i64 0, i32 1, i64 %79
  %82 = load ptr, ptr %81, align 8, !tbaa !91
  tail call fastcc void @mark_jump_label_1(ptr noundef %82, ptr noundef nonnull %47, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  %83 = icmp sgt i64 %78, 1
  br i1 %83, label %77, label %94, !llvm.loop !127

84:                                               ; preds = %51
  %85 = load ptr, ptr %52, align 8, !tbaa !102
  %86 = icmp eq ptr %85, %53
  br i1 %86, label %87, label %92, !prof !128

87:                                               ; preds = %84
  %88 = load i32, ptr %47, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 9
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i8 [ 0, %84 ], [ %91, %87 ]
  tail call fastcc void @mark_jump_label_1(ptr noundef %53, ptr noundef nonnull %47, i8 noundef zeroext 0, i8 noundef zeroext %93) #18
  br label %94

94:                                               ; preds = %77, %70, %92
  %95 = load i32, ptr %47, align 8
  %96 = and i32 %95, 134283263
  %97 = icmp eq i32 %96, 9
  br i1 %97, label %98, label %199, !prof !129

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1, i32 1, i32 0, i32 0, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %199, !prof !130

102:                                              ; preds = %98
  %103 = load ptr, ptr %52, align 8, !tbaa !102
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 15
  br i1 %106, label %107, label %112, !prof !131

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !102
  %110 = getelementptr inbounds %struct.rtvec_def, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !91
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi ptr [ %111, %107 ], [ %103, %102 ]
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 23
  br i1 %116, label %117, label %123, !prof !131

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !102
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 36
  br i1 %122, label %124, label %123

123:                                              ; preds = %117, %112
  br label %124

124:                                              ; preds = %123, %117
  %125 = phi ptr [ null, %123 ], [ %113, %117 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127, !prof !132

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !102
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi ptr [ %129, %127 ], [ null, %124 ]
  %132 = icmp eq ptr %48, null
  br i1 %132, label %135, label %133, !prof !133

133:                                              ; preds = %130
  %134 = tail call ptr @find_reg_note(ptr noundef nonnull %48, i32 noundef 10, ptr noundef null) #17
  br label %135

135:                                              ; preds = %133, %130
  %136 = phi ptr [ %134, %133 ], [ null, %130 ]
  %137 = icmp ne ptr %136, null
  %138 = icmp ne ptr %131, null
  %139 = select i1 %137, i1 %138, i1 false, !prof !131
  br i1 %139, label %140, label %204, !prof !131

140:                                              ; preds = %135
  %141 = load i32, ptr %48, align 8
  %142 = and i32 %141, 65535
  %143 = add nsw i32 %142, -7
  %144 = icmp ult i32 %143, 4
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !102
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 23
  br i1 %150, label %153, label %151

151:                                              ; preds = %145
  %152 = tail call ptr @single_set_2(ptr noundef nonnull %48, ptr noundef nonnull %147) #17
  br label %153

153:                                              ; preds = %151, %145, %140
  %154 = phi ptr [ %152, %151 ], [ null, %140 ], [ %147, %145 ]
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !102
  br label %159

159:                                              ; preds = %156, %153
  %160 = phi ptr [ %158, %156 ], [ null, %153 ]
  br i1 %155, label %204, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !102
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 44
  br i1 %166, label %167, label %204

167:                                              ; preds = %161
  %168 = tail call i32 @rtx_equal_p(ptr noundef %160, ptr noundef nonnull %131) #17
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = load i32, ptr %131, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 47
  br i1 %173, label %174, label %204

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !102
  %177 = tail call i32 @rtx_equal_p(ptr noundef %160, ptr noundef %176) #17
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 2
  %181 = load ptr, ptr %180, align 8, !tbaa !102
  %182 = tail call i32 @rtx_equal_p(ptr noundef %160, ptr noundef %181) #17
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %204, label %184

184:                                              ; preds = %179, %174, %167
  %185 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !102
  %187 = load ptr, ptr %162, align 8, !tbaa !102
  %188 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !102
  %190 = icmp eq ptr %186, %189
  br i1 %190, label %192, label %191

191:                                              ; preds = %184
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @.str.2) #17
  br label %192

192:                                              ; preds = %191, %184
  tail call fastcc void @mark_jump_label_1(ptr noundef nonnull %154, ptr noundef nonnull %47, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %193 = load ptr, ptr %99, align 8, !tbaa !102
  %194 = load ptr, ptr %162, align 8, !tbaa !102
  %195 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !102
  %197 = icmp eq ptr %193, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @.str.2) #17
  br label %204

199:                                              ; preds = %98, %94
  %200 = and i32 %95, 134217728
  %201 = icmp eq i32 %200, 0
  %202 = select i1 %201, ptr %47, ptr %48, !prof !134
  br label %204

203:                                              ; preds = %46
  br label %204

204:                                              ; preds = %179, %203, %199, %198, %192, %170, %161, %159, %135, %46
  %205 = phi ptr [ null, %203 ], [ %48, %159 ], [ %48, %161 ], [ %48, %170 ], [ %48, %192 ], [ %48, %198 ], [ %48, %135 ], [ %202, %199 ], [ %48, %46 ], [ %48, %179 ]
  %206 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %207 = load ptr, ptr %206, align 8, !tbaa !102
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %46, !prof !120, !llvm.loop !135

209:                                              ; preds = %204, %5
  %210 = tail call i32 @current_ir_type() #17
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %327, !prof !136

212:                                              ; preds = %209
  %213 = load ptr, ptr @cfun, align 8, !tbaa !91
  %214 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !137
  %216 = load ptr, ptr %215, align 8, !tbaa !139
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 6
  %218 = load ptr, ptr %217, align 8, !tbaa !141
  %219 = getelementptr inbounds %struct.control_flow_graph, ptr %215, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !143
  %221 = icmp eq ptr %218, %220
  br i1 %221, label %327, label %231, !prof !144

222:                                              ; preds = %323, %260
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %232, i64 0, i32 6
  %224 = load ptr, ptr %223, align 8, !tbaa !141
  %225 = load ptr, ptr @cfun, align 8, !tbaa !91
  %226 = getelementptr inbounds %struct.function, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !137
  %228 = getelementptr inbounds %struct.control_flow_graph, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !143
  %230 = icmp eq ptr %224, %229
  br i1 %230, label %327, label %231, !prof !145, !llvm.loop !146

231:                                              ; preds = %212, %222
  %232 = phi ptr [ %224, %222 ], [ %218, %212 ]
  %233 = getelementptr inbounds %struct.basic_block_def, ptr %232, i64 0, i32 7
  %234 = load ptr, ptr %233, align 8, !tbaa !102
  %235 = getelementptr inbounds %struct.rtl_bb_info, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !102
  %237 = icmp eq ptr %236, null
  br i1 %237, label %260, label %238, !prof !147

238:                                              ; preds = %231, %256
  %239 = phi ptr [ %258, %256 ], [ %236, %231 ]
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = add nsw i32 %241, -7
  %243 = icmp ult i32 %242, 4
  br i1 %243, label %244, label %256

244:                                              ; preds = %238
  %245 = icmp eq i32 %241, 9
  br i1 %245, label %246, label %252

246:                                              ; preds = %244
  %247 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !102
  %249 = load i32, ptr %248, align 8
  %250 = and i32 %249, 65534
  %251 = icmp eq i32 %250, 20
  br i1 %251, label %253, label %252

252:                                              ; preds = %246, %244
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 269, ptr noundef nonnull @.str.2) #17
  br label %253

253:                                              ; preds = %252, %246
  %254 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !102
  tail call void @mark_jump_label(ptr noundef %255, ptr noundef nonnull %239, i32 noundef 0)
  br label %256

256:                                              ; preds = %253, %238
  %257 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1, i32 0, i32 0, i64 2
  %258 = load ptr, ptr %257, align 8, !tbaa !102
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %238, !prof !147, !llvm.loop !148

260:                                              ; preds = %256, %231
  %261 = load ptr, ptr %233, align 8, !tbaa !102
  %262 = getelementptr inbounds %struct.rtl_bb_info, ptr %261, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !102
  %264 = icmp eq ptr %263, null
  br i1 %264, label %222, label %265, !prof !149

265:                                              ; preds = %260, %323
  %266 = phi ptr [ %325, %323 ], [ %263, %260 ]
  %267 = load i32, ptr %266, align 8
  %268 = and i32 %267, 65535
  %269 = add nsw i32 %268, -7
  %270 = icmp ult i32 %269, 4
  br i1 %270, label %271, label %323, !prof !150

271:                                              ; preds = %265
  %272 = icmp eq i32 %268, 9
  br i1 %272, label %273, label %279, !prof !151

273:                                              ; preds = %271
  %274 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 1
  %275 = load ptr, ptr %274, align 8, !tbaa !102
  %276 = load i32, ptr %275, align 8
  %277 = and i32 %276, 65534
  %278 = icmp eq i32 %277, 20
  br i1 %278, label %280, label %279, !prof !151

279:                                              ; preds = %273, %271
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 276, ptr noundef nonnull @.str.2) #17
  br label %280

280:                                              ; preds = %279, %273
  %281 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 1
  %282 = load ptr, ptr %281, align 8, !tbaa !102
  %283 = tail call ptr @extract_asm_operands(ptr noundef %282) #17
  %284 = icmp eq ptr %283, null
  br i1 %284, label %313, label %285, !prof !123

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1, i32 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !102
  %288 = load i32, ptr %287, align 8, !tbaa !124
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %285
  %291 = zext nneg i32 %288 to i64
  br label %292

292:                                              ; preds = %292, %290
  %293 = phi i64 [ %291, %290 ], [ %294, %292 ]
  %294 = add nsw i64 %293, -1
  %295 = load ptr, ptr %286, align 8, !tbaa !102
  %296 = getelementptr inbounds %struct.rtvec_def, ptr %295, i64 0, i32 1, i64 %294
  %297 = load ptr, ptr %296, align 8, !tbaa !91
  tail call fastcc void @mark_jump_label_1(ptr noundef %297, ptr noundef nonnull %266, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %298 = icmp sgt i64 %293, 1
  br i1 %298, label %292, label %299, !llvm.loop !126

299:                                              ; preds = %292, %285
  %300 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 1
  %301 = load ptr, ptr %300, align 8, !tbaa !102
  %302 = load i32, ptr %301, align 8, !tbaa !124
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %323

304:                                              ; preds = %299
  %305 = zext nneg i32 %302 to i64
  br label %306

306:                                              ; preds = %306, %304
  %307 = phi i64 [ %305, %304 ], [ %308, %306 ]
  %308 = add nsw i64 %307, -1
  %309 = load ptr, ptr %300, align 8, !tbaa !102
  %310 = getelementptr inbounds %struct.rtvec_def, ptr %309, i64 0, i32 1, i64 %308
  %311 = load ptr, ptr %310, align 8, !tbaa !91
  tail call fastcc void @mark_jump_label_1(ptr noundef %311, ptr noundef nonnull %266, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  %312 = icmp sgt i64 %307, 1
  br i1 %312, label %306, label %323, !llvm.loop !127

313:                                              ; preds = %280
  %314 = load ptr, ptr %281, align 8, !tbaa !102
  %315 = icmp eq ptr %314, %282
  br i1 %315, label %316, label %321, !prof !128

316:                                              ; preds = %313
  %317 = load i32, ptr %266, align 8
  %318 = and i32 %317, 65535
  %319 = icmp eq i32 %318, 9
  %320 = zext i1 %319 to i8
  br label %321

321:                                              ; preds = %316, %313
  %322 = phi i8 [ 0, %313 ], [ %320, %316 ]
  tail call fastcc void @mark_jump_label_1(ptr noundef %282, ptr noundef nonnull %266, i8 noundef zeroext 0, i8 noundef zeroext %322) #18
  br label %323

323:                                              ; preds = %306, %321, %299, %265
  %324 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 0, i32 1, i32 0, i32 0, i64 2
  %325 = load ptr, ptr %324, align 8, !tbaa !102
  %326 = icmp eq ptr %325, null
  br i1 %326, label %222, label %265, !prof !152, !llvm.loop !153

327:                                              ; preds = %222, %212, %209
  %328 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !102
  %329 = icmp eq ptr %328, null
  br i1 %329, label %345, label %330, !prof !147

330:                                              ; preds = %327, %341
  %331 = phi ptr [ %343, %341 ], [ %328, %327 ]
  %332 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !102
  %334 = load i32, ptr %333, align 8
  %335 = and i32 %334, 65535
  %336 = icmp eq i32 %335, 12
  br i1 %336, label %337, label %341

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1, i32 0, i32 2
  %339 = load i32, ptr %338, align 8, !tbaa !102
  %340 = add nsw i32 %339, 1
  store i32 %340, ptr %338, align 8, !tbaa !102
  br label %341

341:                                              ; preds = %330, %337
  %342 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1, i32 0, i32 0, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !102
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %330, !prof !147, !llvm.loop !154

345:                                              ; preds = %341, %327
  %346 = load i8, ptr @timevar_enable, align 1, !tbaa !102
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %349, label %348, !prof !111

348:                                              ; preds = %345
  tail call void @timevar_pop_1(i32 noundef 41) #17
  br label %349

349:                                              ; preds = %348, %345
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cleanup_barriers() #9 !prof !155 {
  %1 = tail call ptr @get_insns() #17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3, !prof !156

3:                                                ; preds = %0, %24
  %4 = phi ptr [ %6, %24 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 11
  br i1 %9, label %10, label %24, !prof !157

10:                                               ; preds = %3
  %11 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %4) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13, !prof !158

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 11
  br i1 %16, label %17, label %19, !prof !158

17:                                               ; preds = %13
  %18 = tail call ptr @delete_insn(ptr noundef nonnull %4) #17
  br label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = icmp eq ptr %11, %21
  br i1 %22, label %24, label %23, !prof !159

23:                                               ; preds = %19
  tail call void @reorder_insns(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %11) #17
  br label %24

24:                                               ; preds = %3, %19, %23, %17, %10
  %25 = icmp eq ptr %6, null
  br i1 %25, label %26, label %3, !prof !160, !llvm.loop !161

26:                                               ; preds = %24, %0
  ret i32 0
}

declare ptr @get_insns() local_unnamed_addr #3

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @reversed_comparison_code_parts(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) local_unnamed_addr #10 !prof !162 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %71, !prof !163

9:                                                ; preds = %4
  %10 = load i32, ptr %1, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18, !prof !164

14:                                               ; preds = %9
  %15 = load i32, ptr %2, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i32 [ %17, %14 ], [ %12, %9 ]
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !102
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %26, !prof !165

24:                                               ; preds = %18
  %25 = tail call i32 @ix86_reverse_condition(i32 noundef %0, i32 noundef %19) #17
  br label %71

26:                                               ; preds = %18
  switch i32 %0, label %33 [
    i32 86, label %27
    i32 87, label %27
    i32 88, label %27
    i32 89, label %27
    i32 80, label %27
    i32 81, label %27
    i32 91, label %31
    i32 90, label %31
    i32 97, label %31
    i32 92, label %31
    i32 96, label %71
    i32 95, label %71
    i32 94, label %71
    i32 93, label %71
  ], !prof !166

27:                                               ; preds = %26, %26, %26, %26, %26, %26
  %28 = add i32 %0, -80
  %29 = icmp ult i32 %28, 18
  br i1 %29, label %63, label %30

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %71

31:                                               ; preds = %26, %26, %26, %26
  %32 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %0)
  br label %71

33:                                               ; preds = %26
  %34 = and i32 %10, 65535
  %35 = icmp eq i32 %34, 30
  br i1 %35, label %59, label %36, !prof !167

36:                                               ; preds = %33
  %37 = and i32 %10, 16711680
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %71, label %39, !prof !167

39:                                               ; preds = %36
  switch i8 %22, label %59 [
    i8 1, label %71
    i8 8, label %40
    i8 9, label %40
    i8 11, label %40
    i8 17, label %40
  ], !prof !168

40:                                               ; preds = %39, %39, %39, %39
  %41 = and i8 %22, -2
  %42 = icmp eq i8 %41, 8
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %45 = load i8, ptr %44, align 1, !tbaa !102
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %40, %43
  %48 = phi i32 [ %46, %43 ], [ %19, %40 ]
  %49 = add nsw i32 %48, -38
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  %53 = getelementptr inbounds %struct.real_format, ptr %52, i64 0, i32 11
  %54 = load i8, ptr %53, align 2, !tbaa !169
  %55 = icmp eq i8 %54, 0
  %56 = load i32, ptr @flag_finite_math_only, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %39, %47, %33
  %60 = add i32 %0, -80
  %61 = icmp ult i32 %60, 18
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %71

63:                                               ; preds = %27
  %64 = zext nneg i32 %28 to i64
  %65 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4
  br label %71

67:                                               ; preds = %59
  %68 = zext nneg i32 %60 to i64
  %69 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %67, %63, %62, %39, %30, %26, %26, %26, %4, %36, %47, %26, %31, %24
  %72 = phi i32 [ %25, %24 ], [ %32, %31 ], [ 0, %4 ], [ 0, %26 ], [ 0, %47 ], [ 0, %36 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ %0, %30 ], [ 0, %39 ], [ %0, %62 ], [ %66, %63 ], [ %70, %67 ]
  ret i32 %72
}

declare i32 @ix86_reverse_condition(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @reverse_condition(i32 noundef %0) local_unnamed_addr #10 !prof !171 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 18
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ %0, %4 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @reverse_condition_maybe_unordered(i32 noundef %0) local_unnamed_addr #11 !prof !90 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 18
  br i1 %3, label %5, label %4

4:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 523, ptr noundef nonnull @.str.2) #17
  br label %13

5:                                                ; preds = %1
  %6 = lshr i32 261183, %2
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %4, label %9

9:                                                ; preds = %5
  %10 = zext nneg i32 %2 to i64
  %11 = getelementptr inbounds [18 x i32], ptr @switch.table.reverse_condition_maybe_unordered, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %0, %4 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @reversed_comparison_code(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #10 !prof !172 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %83, !prof !173

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = zext nneg i32 %4 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !106
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %83, !prof !163

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27, !prof !164

23:                                               ; preds = %16
  %24 = load i32, ptr %11, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi i32 [ %26, %23 ], [ %21, %16 ]
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !102
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %35, !prof !165

33:                                               ; preds = %27
  %34 = tail call i32 @ix86_reverse_condition(i32 noundef %4, i32 noundef %28) #17
  br label %83

35:                                               ; preds = %27
  %36 = trunc i32 %3 to i16
  switch i16 %36, label %44 [
    i16 86, label %37
    i16 87, label %37
    i16 88, label %37
    i16 89, label %37
    i16 80, label %37
    i16 81, label %37
    i16 91, label %42
    i16 90, label %42
    i16 97, label %42
    i16 92, label %42
    i16 96, label %83
    i16 95, label %83
    i16 94, label %83
    i16 93, label %83
  ], !prof !166

37:                                               ; preds = %35, %35, %35, %35, %35, %35
  %38 = trunc i32 %3 to i16
  %39 = add i16 %38, -80
  %40 = icmp ult i16 %39, 18
  br i1 %40, label %75, label %41

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %83

42:                                               ; preds = %35, %35, %35, %35
  %43 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %4)
  br label %83

44:                                               ; preds = %35
  %45 = and i32 %19, 65535
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %70, label %47, !prof !167

47:                                               ; preds = %44
  %48 = and i32 %19, 16711680
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %83, label %50, !prof !167

50:                                               ; preds = %47
  switch i8 %31, label %70 [
    i8 1, label %83
    i8 8, label %51
    i8 9, label %51
    i8 11, label %51
    i8 17, label %51
  ], !prof !168

51:                                               ; preds = %50, %50, %50, %50
  %52 = and i8 %31, -2
  %53 = icmp eq i8 %52, 8
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %29
  %56 = load i8, ptr %55, align 1, !tbaa !102
  %57 = zext i8 %56 to i32
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi i32 [ %57, %54 ], [ %28, %51 ]
  %60 = add nsw i32 %59, -38
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !91
  %64 = getelementptr inbounds %struct.real_format, ptr %63, i64 0, i32 11
  %65 = load i8, ptr %64, align 2, !tbaa !169
  %66 = icmp eq i8 %65, 0
  %67 = load i32, ptr @flag_finite_math_only, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %58, %50, %44
  %71 = trunc i32 %3 to i16
  %72 = add i16 %71, -80
  %73 = icmp ult i16 %72, 18
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %83

75:                                               ; preds = %37
  %76 = zext nneg i16 %39 to i64
  %77 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4
  br label %83

79:                                               ; preds = %70
  %80 = zext nneg i16 %72 to i64
  %81 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %79, %75, %74, %58, %50, %47, %42, %41, %35, %35, %35, %35, %33, %9, %2
  %84 = phi i32 [ 0, %2 ], [ %34, %33 ], [ %43, %42 ], [ 0, %9 ], [ 0, %35 ], [ 0, %58 ], [ 0, %47 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ %4, %41 ], [ 0, %50 ], [ %4, %74 ], [ %78, %75 ], [ %82, %79 ]
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define dso_local ptr @reversed_comparison(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !174 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %15, !prof !175

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = tail call i32 @reversed_comparison_code_parts(i32 noundef %4, ptr noundef %11, ptr noundef %13, ptr poison)
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i32 [ %14, %9 ], [ 0, %2 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18, !prof !176

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = tail call ptr @simplify_gen_relational(i32 noundef %16, i32 noundef %1, i32 noundef 0, ptr noundef %20, ptr noundef %22) #17
  br label %24

24:                                               ; preds = %15, %18
  %25 = phi ptr [ %23, %18 ], [ null, %15 ]
  ret ptr %25
}

declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @swap_condition(i32 noundef %0) local_unnamed_addr #9 !prof !177 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 18
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 572, ptr noundef nonnull @.str.2) #17
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [18 x i32], ptr @switch.table.swap_condition, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ %0, %4 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @unsigned_condition(i32 noundef %0) local_unnamed_addr #10 !prof !178 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 606, ptr noundef nonnull @.str.2) #17
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [10 x i32], ptr @switch.table.unsigned_condition, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ %0, %4 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @signed_condition(i32 noundef %0) local_unnamed_addr #10 !prof !179 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 638, ptr noundef nonnull @.str.2) #17
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [10 x i32], ptr @switch.table.signed_condition, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ %0, %4 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @comparison_dominates_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !180 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %66, label %6, !prof !181

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, %1
  br i1 %7, label %66, label %8, !prof !182

8:                                                ; preds = %6
  switch i32 %0, label %45 [
    i32 92, label %9
    i32 81, label %12
    i32 96, label %15
    i32 85, label %19
    i32 94, label %22
    i32 83, label %26
    i32 82, label %29
    i32 84, label %29
    i32 97, label %31
    i32 89, label %35
    i32 87, label %38
    i32 90, label %42
  ], !prof !183

9:                                                ; preds = %8
  %10 = and i32 %1, -3
  %11 = icmp eq i32 %10, 93
  br i1 %11, label %66, label %45

12:                                               ; preds = %8
  %13 = add i32 %1, -82
  %14 = icmp ult i32 %13, 10
  br i1 %14, label %46, label %45

15:                                               ; preds = %8
  %16 = icmp eq i32 %1, 95
  %17 = icmp eq i32 %1, 80
  %18 = or i1 %16, %17
  br label %66

19:                                               ; preds = %8
  %20 = add i32 %1, -80
  %21 = icmp ult i32 %20, 18
  br i1 %21, label %51, label %45

22:                                               ; preds = %8
  %23 = icmp eq i32 %1, 93
  %24 = icmp eq i32 %1, 80
  %25 = or i1 %23, %24
  br label %66

26:                                               ; preds = %8
  %27 = add i32 %1, -80
  %28 = icmp ult i32 %27, 18
  br i1 %28, label %56, label %45

29:                                               ; preds = %8, %8
  %30 = icmp eq i32 %1, 91
  br i1 %30, label %66, label %45, !prof !184

31:                                               ; preds = %8
  %32 = icmp eq i32 %1, 91
  %33 = icmp eq i32 %1, 80
  %34 = or i1 %32, %33
  br label %66

35:                                               ; preds = %8
  %36 = and i32 %1, -9
  %37 = icmp eq i32 %36, 80
  br i1 %37, label %66, label %45

38:                                               ; preds = %8
  %39 = icmp eq i32 %1, 86
  %40 = icmp eq i32 %1, 80
  %41 = or i1 %39, %40
  br label %66

42:                                               ; preds = %8
  %43 = add i32 %1, -80
  %44 = icmp ult i32 %43, 17
  br i1 %44, label %61, label %45

45:                                               ; preds = %42, %26, %19, %12, %35, %29, %9, %8
  br label %66

46:                                               ; preds = %12
  %47 = trunc i32 %13 to i10
  %48 = lshr i10 -427, %47
  %49 = and i10 %48, 1
  %50 = icmp ne i10 %49, 0
  br label %66

51:                                               ; preds = %19
  %52 = trunc i32 %20 to i18
  %53 = lshr i18 -129007, %52
  %54 = and i18 %53, 1
  %55 = icmp ne i18 %54, 0
  br label %66

56:                                               ; preds = %26
  %57 = trunc i32 %27 to i18
  %58 = lshr i18 -129019, %57
  %59 = and i18 %58, 1
  %60 = icmp ne i18 %59, 0
  br label %66

61:                                               ; preds = %42
  %62 = trunc i32 %43 to i17
  %63 = lshr i17 -4095, %62
  %64 = and i17 %63, 1
  %65 = icmp ne i17 %64, 0
  br label %66

66:                                               ; preds = %61, %56, %51, %46, %38, %31, %22, %15, %35, %29, %9, %6, %2, %45
  %67 = phi i1 [ false, %45 ], [ false, %2 ], [ true, %6 ], [ true, %9 ], [ true, %29 ], [ true, %35 ], [ %18, %15 ], [ %25, %22 ], [ %34, %31 ], [ %41, %38 ], [ %50, %46 ], [ %55, %51 ], [ %60, %56 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @simplejump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !185 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %24, !prof !186

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %11, label %24, !prof !187

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 36
  br i1 %16, label %17, label %24, !prof !188

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 44
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %17, %11, %5, %1
  %25 = phi i32 [ 0, %11 ], [ 0, %5 ], [ 0, %1 ], [ %23, %17 ]
  ret i32 %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @condjump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !90 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 36
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %40 [
    i16 44, label %41
    i16 47, label %18
  ]

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 36
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %29 [
    i16 44, label %41
    i16 27, label %41
  ]

29:                                               ; preds = %24, %18
  %30 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !102
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 36
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = icmp eq i32 %22, 44
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = icmp eq i32 %22, 27
  %39 = zext i1 %38 to i32
  br label %41

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %24, %29, %37, %35, %24, %13, %1, %7, %40
  %42 = phi i32 [ 0, %7 ], [ 0, %1 ], [ 1, %13 ], [ 0, %29 ], [ 1, %35 ], [ %39, %37 ], [ 1, %24 ], [ 0, %40 ], [ 1, %24 ]
  ret i32 %42
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @condjump_in_parallel_p(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !90 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %15, label %48

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 36
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %26 [
    i16 44, label %48
    i16 47, label %27
  ]

26:                                               ; preds = %21
  br label %48

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !102
  %30 = load ptr, ptr @global_rtl, align 16, !tbaa !91
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = load i32, ptr %34, align 8
  %36 = trunc i32 %35 to i16
  switch i16 %36, label %37 [
    i16 44, label %48
    i16 27, label %48
  ]

37:                                               ; preds = %32, %27
  %38 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !102
  %40 = icmp eq ptr %39, %30
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, ptr %29, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 44
  %45 = icmp eq i32 %43, 27
  %46 = or i1 %44, %45
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %32, %37, %41, %32, %21, %15, %7, %1, %26
  %49 = phi i32 [ 0, %26 ], [ 0, %1 ], [ 0, %7 ], [ 0, %15 ], [ 1, %21 ], [ 1, %32 ], [ %47, %41 ], [ 0, %37 ], [ 1, %32 ]
  ret i32 %49
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @pc_set(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !189 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %28, !prof !190

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %16, !prof !191

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.rtvec_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi ptr [ %15, %11 ], [ %7, %5 ]
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %21, label %27, !prof !190

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %28, label %27, !prof !190

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %21, %1, %27
  %29 = phi ptr [ null, %27 ], [ null, %1 ], [ %17, %21 ]
  ret ptr %29
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @any_uncondjump_p(ptr noundef %0) local_unnamed_addr #10 !prof !192 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %28, !prof !193

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %16, !prof !194

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.rtvec_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi ptr [ %15, %11 ], [ %7, %5 ]
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %21, label %27, !prof !195

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %28, label %27, !prof !196

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %1, %21, %27
  %29 = phi ptr [ null, %27 ], [ null, %1 ], [ %17, %21 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31, !prof !197

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %37, label %41, !prof !198

37:                                               ; preds = %31
  %38 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 28, ptr noundef null) #17
  %39 = icmp eq ptr %38, null
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %37, %31, %28
  %42 = phi i32 [ 0, %28 ], [ 0, %31 ], [ %40, %37 ]
  ret i32 %42
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @any_condjump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !199 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %28, !prof !200

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %16, !prof !201

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.rtvec_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi ptr [ %15, %11 ], [ %7, %5 ]
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %21, label %27, !prof !202

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %28, label %27, !prof !203

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %1, %21, %27
  %29 = phi ptr [ null, %27 ], [ null, %1 ], [ %17, %21 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31, !prof !204

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %37, label %57, !prof !205

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !102
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 36
  br i1 %45, label %46, label %48, !prof !206

46:                                               ; preds = %37
  %47 = trunc i32 %40 to i16
  switch i16 %47, label %56 [
    i16 44, label %57
    i16 27, label %57
    i16 36, label %51
  ], !prof !207

48:                                               ; preds = %37
  %49 = and i32 %40, 65535
  %50 = icmp eq i32 %49, 36
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %48
  %52 = icmp eq i32 %44, 44
  %53 = icmp eq i32 %44, 27
  %54 = or i1 %52, %53
  %55 = zext i1 %54 to i32
  br label %57

56:                                               ; preds = %46, %48
  br label %57

57:                                               ; preds = %46, %51, %56, %46, %31, %28
  %58 = phi i32 [ 0, %28 ], [ 0, %31 ], [ %55, %51 ], [ 1, %46 ], [ 0, %56 ], [ 1, %46 ]
  ret i32 %58
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @condjump_label(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !90 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.rtvec_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi ptr [ %15, %11 ], [ %7, %5 ]
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %1, %21, %27
  %29 = phi ptr [ null, %27 ], [ null, %1 ], [ %17, %21 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = load i32, ptr %33, align 8
  %35 = trunc i32 %34 to i16
  switch i16 %35, label %36 [
    i16 44, label %57
    i16 47, label %37
  ]

36:                                               ; preds = %31
  br label %57

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !102
  %40 = load ptr, ptr @global_rtl, align 16, !tbaa !91
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 44
  br i1 %47, label %57, label %48

48:                                               ; preds = %42, %37
  %49 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = icmp eq ptr %50, %40
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, ptr %39, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 44
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %52, %42, %31, %28, %56, %36
  %58 = phi ptr [ null, %36 ], [ null, %56 ], [ null, %28 ], [ %33, %31 ], [ %44, %42 ], [ %39, %52 ]
  ret ptr %58
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @returnjump_p(ptr noundef %0) local_unnamed_addr #10 !prof !208 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %8, !prof !209

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = tail call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @returnjump_p_1, ptr noundef null) #17
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @returnjump_p_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #13 !prof !210 !PGOFuncName !211 {
  %3 = load ptr, ptr %0, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !212

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %11 [
    i16 27, label %12
    i16 28, label %12
    i16 23, label %8
  ], !prof !213

8:                                                ; preds = %5
  %9 = lshr i32 %6, 24
  %10 = and i32 %9, 1
  br label %12

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %5, %5, %2, %11, %8
  %13 = phi i32 [ 0, %11 ], [ %10, %8 ], [ 0, %2 ], [ 1, %5 ], [ 1, %5 ]
  ret i32 %13
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @eh_returnjump_p(ptr noundef %0) local_unnamed_addr #11 !prof !214 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %8, !prof !215

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = tail call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @eh_returnjump_p_1, ptr noundef null) #17
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eh_returnjump_p_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #14 !prof !90 {
  %3 = load ptr, ptr %0, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 28
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @onlyjump_p(ptr noundef %0) local_unnamed_addr #10 !prof !216 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %28, !prof !217

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %13, label %11, !prof !218

11:                                               ; preds = %5
  %12 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi ptr [ %12, %11 ], [ %7, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16, !prof !219

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 36
  br i1 %21, label %22, label %28, !prof !220

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = tail call i32 @side_effects_p(ptr noundef %24) #17
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %22, %16, %13, %1
  %29 = phi i32 [ 0, %1 ], [ 0, %13 ], [ 0, %16 ], [ %27, %22 ]
  ret i32 %29
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @mark_jump_label(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !221 {
  %4 = tail call ptr @extract_asm_operands(ptr noundef %0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6, !prof !123

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = load i32, ptr %8, align 8, !tbaa !124
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = zext nneg i32 %9 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ %12, %11 ], [ %15, %13 ]
  %15 = add nsw i64 %14, -1
  %16 = load ptr, ptr %7, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  tail call fastcc void @mark_jump_label_1(ptr noundef %18, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %19 = icmp sgt i64 %14, 1
  br i1 %19, label %13, label %20, !llvm.loop !126

20:                                               ; preds = %13, %6
  %21 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = load i32, ptr %22, align 8, !tbaa !124
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = zext nneg i32 %23 to i64
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %26, %25 ], [ %29, %27 ]
  %29 = add nsw i64 %28, -1
  %30 = load ptr, ptr %21, align 8, !tbaa !102
  %31 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  tail call fastcc void @mark_jump_label_1(ptr noundef %32, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %33 = icmp sgt i64 %28, 1
  br i1 %33, label %27, label %49, !llvm.loop !127

34:                                               ; preds = %3
  %35 = icmp ne i32 %2, 0
  %36 = zext i1 %35 to i8
  %37 = icmp eq ptr %1, null
  br i1 %37, label %47, label %38, !prof !222

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !102
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %42, label %47, !prof !128

42:                                               ; preds = %38
  %43 = load i32, ptr %1, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 9
  %46 = zext i1 %45 to i8
  br label %47

47:                                               ; preds = %42, %38, %34
  %48 = phi i8 [ 0, %38 ], [ 0, %34 ], [ %46, %42 ]
  tail call fastcc void @mark_jump_label_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %36, i8 noundef zeroext %48)
  br label %49

49:                                               ; preds = %27, %20, %47
  ret void
}

declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_jump_label_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #10 !prof !223 !PGOFuncName !224 {
  br label %5

5:                                                ; preds = %38, %4
  %6 = phi ptr [ %0, %4 ], [ %44, %38 ]
  %7 = phi i8 [ %3, %4 ], [ 1, %38 ]
  %8 = load i32, ptr %6, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %109 [
    i16 36, label %145
    i16 46, label %145
    i16 37, label %145
    i16 30, label %145
    i16 32, label %145
    i16 25, label %145
    i16 26, label %145
    i16 43, label %16
    i16 5, label %11
    i16 45, label %29
    i16 47, label %36
    i16 44, label %45
    i16 20, label %87
    i16 21, label %87
  ], !prof !225

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = load i32, ptr %13, align 8, !tbaa !124
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %17, label %145

16:                                               ; preds = %5
  br label %109

17:                                               ; preds = %11, %17
  %18 = phi i64 [ %24, %17 ], [ 0, %11 ]
  %19 = phi ptr [ %25, %17 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  tail call void @mark_jump_label(ptr noundef %23, ptr noundef %21, i32 noundef 0)
  %24 = add nuw nsw i64 %18, 1
  %25 = load ptr, ptr %12, align 8, !tbaa !102
  %26 = load i32, ptr %25, align 8, !tbaa !124
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %17, label %145, !llvm.loop !226

29:                                               ; preds = %5
  %30 = icmp eq i8 %2, 0
  br i1 %30, label %145, label %31, !prof !227

31:                                               ; preds = %29
  %32 = and i32 %8, 67108864
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %109, label %34, !prof !228

34:                                               ; preds = %31
  %35 = tail call ptr @get_pool_constant(ptr noundef nonnull %6) #17
  tail call fastcc void @mark_jump_label_1(ptr noundef %35, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %7)
  br label %109

36:                                               ; preds = %5
  %37 = icmp eq i8 %7, 0
  br i1 %37, label %109, label %38, !prof !229

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !102
  tail call fastcc void @mark_jump_label_1(ptr noundef %40, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 0)
  %41 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  tail call fastcc void @mark_jump_label_1(ptr noundef %42, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 1)
  %43 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  br label %5

45:                                               ; preds = %5
  %46 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !102
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = trunc i32 %48 to i16
  switch i16 %50, label %57 [
    i16 13, label %51
    i16 12, label %58
  ], !prof !230

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %53 = load i32, ptr %52, align 8, !tbaa !102
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %109, label %55

55:                                               ; preds = %51
  %56 = icmp eq i32 %49, 12
  br i1 %56, label %58, label %57, !prof !231

57:                                               ; preds = %45, %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1096, ptr noundef nonnull @.str.2) #17
  br label %58

58:                                               ; preds = %45, %55, %57
  %59 = load i32, ptr %6, align 8
  %60 = and i32 %59, 134217728
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %109, !prof !231

62:                                               ; preds = %58
  store ptr %47, ptr %46, align 8, !tbaa !102
  %63 = icmp eq ptr %1, null
  br i1 %63, label %68, label %64, !prof !232

64:                                               ; preds = %62
  %65 = load i32, ptr %1, align 8
  %66 = and i32 %65, 134217728
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72, !prof !233

68:                                               ; preds = %64, %62
  %69 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !102
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !102
  br label %72

72:                                               ; preds = %68, %64
  br i1 %63, label %145, label %73, !prof !232

73:                                               ; preds = %72
  %74 = icmp eq i8 %7, 0
  br i1 %74, label %82, label %75, !prof !234

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !102
  %78 = icmp eq ptr %77, null
  %79 = icmp eq ptr %77, %47
  %80 = or i1 %78, %79
  br i1 %80, label %81, label %82, !prof !235

81:                                               ; preds = %75
  store ptr %47, ptr %76, align 8, !tbaa !102
  br label %145

82:                                               ; preds = %75, %73
  %83 = phi i32 [ 10, %73 ], [ 9, %75 ]
  %84 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef %83, ptr noundef nonnull %47) #17
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %145, !prof !236

86:                                               ; preds = %82
  tail call void @add_reg_note(ptr noundef nonnull %1, i32 noundef %83, ptr noundef nonnull %47) #17
  br label %145

87:                                               ; preds = %5, %5
  %88 = load i32, ptr %1, align 8
  %89 = and i32 %88, 134217728
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %145, !prof !237

91:                                               ; preds = %87
  %92 = icmp eq i32 %9, 21
  %93 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %94 = zext i1 %92 to i64
  %95 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !102
  %97 = load i32, ptr %96, align 8, !tbaa !124
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %145, !prof !238

99:                                               ; preds = %91, %99
  %100 = phi i64 [ %104, %99 ], [ 0, %91 ]
  %101 = phi ptr [ %105, %99 ], [ %96, %91 ]
  %102 = getelementptr inbounds %struct.rtvec_def, ptr %101, i64 0, i32 1, i64 %100
  %103 = load ptr, ptr %102, align 8, !tbaa !91
  tail call fastcc void @mark_jump_label_1(ptr noundef %103, ptr noundef null, i8 noundef zeroext %2, i8 noundef zeroext %7)
  %104 = add nuw nsw i64 %100, 1
  %105 = load ptr, ptr %95, align 8, !tbaa !102
  %106 = load i32, ptr %105, align 8, !tbaa !124
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %99, label %145, !prof !239, !llvm.loop !240

109:                                              ; preds = %51, %58, %5, %36, %31, %34, %16
  %110 = phi i8 [ %2, %5 ], [ %2, %36 ], [ 1, %34 ], [ 1, %31 ], [ 1, %16 ], [ %2, %58 ], [ %2, %51 ]
  %111 = zext nneg i32 %9 to i64
  %112 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !91
  %114 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %111
  %115 = load i8, ptr %114, align 1, !tbaa !102
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %145, label %117, !prof !241

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %119 = zext i8 %115 to i64
  br label %120

120:                                              ; preds = %117, %143
  %121 = phi i64 [ %119, %117 ], [ %122, %143 ]
  %122 = add nsw i64 %121, -1
  %123 = getelementptr inbounds i8, ptr %113, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !102
  switch i8 %124, label %143 [
    i8 101, label %125
    i8 69, label %128
  ], !prof !242

125:                                              ; preds = %120
  %126 = getelementptr inbounds [1 x %union.rtunion_def], ptr %118, i64 0, i64 %122
  %127 = load ptr, ptr %126, align 8, !tbaa !102
  tail call fastcc void @mark_jump_label_1(ptr noundef %127, ptr noundef %1, i8 noundef zeroext %110, i8 noundef zeroext %7)
  br label %143

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %130 = getelementptr inbounds [1 x %union.rtunion_def], ptr %129, i64 0, i64 %122
  %131 = load ptr, ptr %130, align 8, !tbaa !102
  %132 = load i32, ptr %131, align 8, !tbaa !124
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %143, !prof !243

134:                                              ; preds = %128
  %135 = zext nneg i32 %132 to i64
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi i64 [ %135, %134 ], [ %138, %136 ]
  %138 = add nsw i64 %137, -1
  %139 = load ptr, ptr %130, align 8, !tbaa !102
  %140 = getelementptr inbounds %struct.rtvec_def, ptr %139, i64 0, i32 1, i64 %138
  %141 = load ptr, ptr %140, align 8, !tbaa !91
  tail call fastcc void @mark_jump_label_1(ptr noundef %141, ptr noundef %1, i8 noundef zeroext %110, i8 noundef zeroext %7)
  %142 = icmp sgt i64 %137, 1
  br i1 %142, label %136, label %143, !prof !244, !llvm.loop !245

143:                                              ; preds = %136, %128, %120, %125
  %144 = icmp sgt i64 %121, 1
  br i1 %144, label %120, label %145, !prof !246, !llvm.loop !247

145:                                              ; preds = %99, %17, %143, %91, %11, %109, %87, %5, %5, %5, %5, %5, %5, %82, %86, %81, %72, %29, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @delete_related_insns(ptr noundef %0) local_unnamed_addr #11 !prof !90 {
  %2 = alloca ptr, align 8
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 12
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = load ptr, ptr %6, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 134217728
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %19

15:                                               ; preds = %19
  %16 = load i32, ptr %22, align 8
  %17 = and i32 %16, 134217728
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !llvm.loop !248

19:                                               ; preds = %11, %15
  %20 = phi ptr [ %22, %15 ], [ %9, %11 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !248

24:                                               ; preds = %19, %15, %11, %1
  %25 = phi ptr [ %9, %1 ], [ %9, %11 ], [ %22, %15 ], [ %22, %19 ]
  %26 = phi i1 [ %10, %1 ], [ %10, %11 ], [ %23, %15 ], [ %23, %19 ]
  %27 = and i32 %3, 134217728
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %220

29:                                               ; preds = %24
  %30 = tail call ptr @delete_insn(ptr noundef nonnull %0) #17
  br i1 %26, label %37, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %25, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 11
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call ptr @delete_insn(ptr noundef nonnull %25) #17
  br label %37

37:                                               ; preds = %35, %31, %29
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %46 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !102
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = tail call ptr @delete_related_insns(ptr noundef nonnull %43)
  br label %57

51:                                               ; preds = %45
  %52 = call zeroext i8 @tablejump_p(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %2) #17
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %2, align 8, !tbaa !91
  %56 = call ptr @delete_related_insns(ptr noundef %55)
  br label %57

57:                                               ; preds = %51, %54, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %58

58:                                               ; preds = %57, %41, %37
  %59 = load i32, ptr %0, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65534
  %67 = icmp eq i32 %66, 20
  br i1 %67, label %68, label %105

68:                                               ; preds = %62
  %69 = and i32 %65, 21
  %70 = icmp eq i32 %69, 21
  %71 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %72 = zext i1 %70 to i64
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %71, i64 0, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !102
  %75 = load i32, ptr %74, align 8, !tbaa !124
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = zext nneg i32 %75 to i64
  br label %81

79:                                               ; preds = %93, %68
  %80 = icmp eq ptr %25, null
  br i1 %80, label %220, label %96

81:                                               ; preds = %77, %93
  %82 = phi i64 [ 0, %77 ], [ %94, %93 ]
  %83 = load ptr, ptr %73, align 8, !tbaa !102
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !91
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !102
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !102
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = call ptr @delete_related_insns(ptr noundef %87)
  br label %93

93:                                               ; preds = %81, %91
  %94 = add nuw nsw i64 %82, 1
  %95 = icmp eq i64 %94, %78
  br i1 %95, label %79, label %81, !llvm.loop !249

96:                                               ; preds = %79, %101
  %97 = phi ptr [ %103, %101 ], [ %25, %79 ]
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 134217728
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %220, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !102
  %104 = icmp eq ptr %103, null
  br i1 %104, label %220, label %96, !llvm.loop !250

105:                                              ; preds = %62, %58
  %106 = add nsw i32 %60, -7
  %107 = icmp ult i32 %106, 4
  br i1 %107, label %108, label %135

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !102
  %111 = icmp eq ptr %110, null
  br i1 %111, label %135, label %112

112:                                              ; preds = %108, %131
  %113 = phi ptr [ %133, %131 ], [ %110, %108 ]
  %114 = load i32, ptr %113, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = add nsw i32 %116, -9
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !102
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 12
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !102
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call ptr @delete_related_insns(ptr noundef nonnull %121)
  br label %131

131:                                              ; preds = %112, %119, %129, %125
  %132 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !102
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %112, !llvm.loop !251

135:                                              ; preds = %131, %108, %105
  %136 = icmp ne ptr %8, null
  br i1 %136, label %137, label %156

137:                                              ; preds = %135
  %138 = load i32, ptr %8, align 8
  %139 = and i32 %138, 134217728
  %140 = icmp ne i32 %139, 0
  %141 = and i32 %138, 65535
  %142 = icmp eq i32 %141, 13
  %143 = or i1 %140, %142
  br i1 %143, label %151, label %156

144:                                              ; preds = %151
  %145 = load i32, ptr %154, align 8
  %146 = and i32 %145, 134217728
  %147 = icmp ne i32 %146, 0
  %148 = and i32 %145, 65535
  %149 = icmp eq i32 %148, 13
  %150 = or i1 %147, %149
  br i1 %150, label %151, label %156, !llvm.loop !252

151:                                              ; preds = %137, %144
  %152 = phi ptr [ %154, %144 ], [ %8, %137 ]
  %153 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !102
  %155 = icmp ne ptr %154, null
  br i1 %155, label %144, label %156, !llvm.loop !252

156:                                              ; preds = %144, %151, %137, %135
  %157 = phi ptr [ %8, %135 ], [ %8, %137 ], [ %154, %151 ], [ %154, %144 ]
  %158 = phi i1 [ %136, %135 ], [ %136, %137 ], [ %155, %151 ], [ %155, %144 ]
  br i1 %5, label %159, label %174

159:                                              ; preds = %156
  %160 = load ptr, ptr %6, align 8, !tbaa !102
  %161 = icmp eq ptr %160, null
  br i1 %161, label %174, label %162

162:                                              ; preds = %159
  %163 = load i32, ptr %160, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 9
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !102
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 65534
  %171 = icmp eq i32 %170, 20
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = call ptr @delete_related_insns(ptr noundef nonnull %160)
  br label %174

174:                                              ; preds = %166, %172, %162, %159, %156
  %175 = phi ptr [ %173, %172 ], [ %25, %162 ], [ %25, %159 ], [ %25, %156 ], [ %25, %166 ]
  %176 = and i1 %5, %158
  br i1 %176, label %177, label %208

177:                                              ; preds = %174
  %178 = load i32, ptr %157, align 8
  %179 = and i32 %178, 65535
  %180 = icmp ne i32 %179, 11
  %181 = icmp eq ptr %175, null
  %182 = select i1 %180, i1 true, i1 %181
  br i1 %182, label %208, label %183

183:                                              ; preds = %177, %205
  %184 = phi ptr [ %206, %205 ], [ %175, %177 ]
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 65535
  %187 = trunc i32 %185 to i16
  switch i16 %187, label %200 [
    i16 13, label %188
    i16 12, label %191
    i16 11, label %203
  ]

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 0, i64 2
  %190 = load ptr, ptr %189, align 8, !tbaa !102
  br label %205

191:                                              ; preds = %183
  %192 = and i32 %185, 134217728
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 0, i64 2
  %196 = load ptr, ptr %195, align 8, !tbaa !102
  br label %205

197:                                              ; preds = %191
  %198 = add nsw i32 %186, -7
  %199 = icmp ult i32 %198, 5
  br i1 %199, label %203, label %208

200:                                              ; preds = %183
  %201 = add nsw i32 %186, -7
  %202 = icmp ult i32 %201, 4
  br i1 %202, label %203, label %208

203:                                              ; preds = %197, %183, %200
  %204 = call ptr @delete_related_insns(ptr noundef nonnull %184)
  br label %205

205:                                              ; preds = %194, %203, %188
  %206 = phi ptr [ %190, %188 ], [ %196, %194 ], [ %204, %203 ]
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %183, !llvm.loop !253

208:                                              ; preds = %200, %205, %197, %177, %174
  %209 = phi ptr [ %175, %177 ], [ %175, %174 ], [ %184, %197 ], [ %206, %205 ], [ %184, %200 ]
  %210 = icmp eq ptr %209, null
  br i1 %210, label %220, label %211

211:                                              ; preds = %208, %216
  %212 = phi ptr [ %218, %216 ], [ %209, %208 ]
  %213 = load i32, ptr %212, align 8
  %214 = and i32 %213, 134217728
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1, i32 0, i32 0, i64 2
  %218 = load ptr, ptr %217, align 8, !tbaa !102
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %211, !llvm.loop !254

220:                                              ; preds = %216, %211, %101, %96, %208, %79, %24
  %221 = phi ptr [ %25, %24 ], [ %25, %79 ], [ %209, %208 ], [ %97, %96 ], [ %103, %101 ], [ %212, %211 ], [ %218, %216 ]
  ret ptr %221
}

declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @delete_for_peephole(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #15 !prof !90 {
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi ptr [ %0, %2 ], [ %23, %21 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = load i32, ptr %4, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = or i32 %9, 134217728
  store i32 %13, ptr %4, align 8
  %14 = icmp eq ptr %8, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %6, ptr %16, align 8, !tbaa !102
  br label %17

17:                                               ; preds = %15, %12
  %18 = icmp eq ptr %6, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %8, ptr %20, align 8, !tbaa !102
  br label %21

21:                                               ; preds = %3, %17, %19
  %22 = icmp eq ptr %4, %1
  %23 = select i1 %22, ptr %4, ptr %6
  br i1 %22, label %24, label %3

24:                                               ; preds = %21
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @redirect_jump_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !255 {
  %3 = tail call i32 @num_validated_changes() #17
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = tail call ptr @extract_asm_operands(ptr noundef %5) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !256

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = load i32, ptr %12, align 8, !tbaa !124
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1432, ptr noundef nonnull @.str.2) #17
  br label %23

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !tbaa !102
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 15
  br i1 %20, label %21, label %27, !prof !257

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  br label %23

23:                                               ; preds = %15, %10, %21
  %24 = phi ptr [ %22, %21 ], [ %11, %10 ], [ %11, %15 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi ptr [ %4, %16 ], [ %26, %23 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !102
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %28, ptr noundef %30, ptr noundef %1, ptr noundef %0)
  %31 = tail call i32 @num_validated_changes() #17
  %32 = icmp sgt i32 %31, %3
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %8, %27
  %35 = phi i32 [ %33, %27 ], [ 0, %8 ]
  ret i32 %35
}

declare i32 @num_validated_changes() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @redirect_exp_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 !prof !258 !PGOFuncName !259 {
  br label %5

5:                                                ; preds = %68, %4
  %6 = phi ptr [ %0, %4 ], [ %70, %68 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 44
  br i1 %10, label %11, label %24, !prof !260

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %44, !prof !256

15:                                               ; preds = %11
  %16 = icmp eq ptr %2, null
  br i1 %16, label %19, label %17, !prof !261

17:                                               ; preds = %15
  %18 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef nonnull %2) #17
  br label %21

19:                                               ; preds = %15
  %20 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 27, i32 noundef 0) #17
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  %23 = tail call zeroext i8 @validate_change(ptr noundef %3, ptr noundef nonnull %6, ptr noundef %22, i8 noundef zeroext 1) #17
  br label %105

24:                                               ; preds = %5
  %25 = icmp eq i32 %9, 27
  %26 = icmp eq ptr %1, null
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %44, !prof !262

28:                                               ; preds = %24
  %29 = icmp eq ptr %2, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef nonnull %2) #17
  br label %34

32:                                               ; preds = %28
  %33 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 27, i32 noundef 0) #17
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr @global_rtl, align 16, !tbaa !91
  %40 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %39, ptr noundef %35) #17
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi ptr [ %40, %38 ], [ %35, %34 ]
  %43 = tail call zeroext i8 @validate_change(ptr noundef %3, ptr noundef nonnull %6, ptr noundef %42, i8 noundef zeroext 1) #17
  br label %105

44:                                               ; preds = %24, %11
  %45 = icmp eq i32 %9, 23
  %46 = icmp eq ptr %2, null
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %66, !prof !262

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = load ptr, ptr @global_rtl, align 16, !tbaa !91
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !102
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 44
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !102
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 27, i32 noundef 0) #17
  %65 = tail call zeroext i8 @validate_change(ptr noundef %3, ptr noundef nonnull %6, ptr noundef %64, i8 noundef zeroext 1) #17
  br label %105

66:                                               ; preds = %59, %53, %48, %44
  %67 = icmp eq i32 %9, 47
  br i1 %67, label %68, label %71, !prof !263

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %70 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %5

71:                                               ; preds = %66
  %72 = zext nneg i32 %9 to i64
  %73 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  %75 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %72
  %76 = load i8, ptr %75, align 1, !tbaa !102
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %105, label %78, !prof !264

78:                                               ; preds = %71
  %79 = zext i8 %76 to i64
  br label %80

80:                                               ; preds = %78, %103
  %81 = phi i64 [ %79, %78 ], [ %82, %103 ]
  %82 = add nsw i64 %81, -1
  %83 = getelementptr inbounds i8, ptr %74, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !102
  switch i8 %84, label %103 [
    i8 101, label %91
    i8 69, label %85
  ], !prof !265

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %87 = getelementptr inbounds [1 x %union.rtunion_def], ptr %86, i64 0, i64 %82
  %88 = load ptr, ptr %87, align 8, !tbaa !102
  %89 = load i32, ptr %88, align 8, !tbaa !124
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %94, label %103

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %93 = getelementptr inbounds [1 x %union.rtunion_def], ptr %92, i64 0, i64 %82
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %93, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %103

94:                                               ; preds = %85, %94
  %95 = phi i64 [ %98, %94 ], [ 0, %85 ]
  %96 = phi ptr [ %99, %94 ], [ %88, %85 ]
  %97 = getelementptr inbounds %struct.rtvec_def, ptr %96, i64 0, i32 1, i64 %95
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %97, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %98 = add nuw nsw i64 %95, 1
  %99 = load ptr, ptr %87, align 8, !tbaa !102
  %100 = load i32, ptr %99, align 8, !tbaa !124
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %94, label %103, !llvm.loop !266

103:                                              ; preds = %94, %85, %80, %91
  %104 = icmp sgt i64 %81, 1
  br i1 %104, label %80, label %105, !prof !267, !llvm.loop !268

105:                                              ; preds = %103, %71, %63, %41, %21
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @redirect_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !269 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %75, label %7, !prof !270

7:                                                ; preds = %3
  %8 = tail call i32 @num_validated_changes() #17
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = tail call ptr @extract_asm_operands(ptr noundef %10) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13, !prof !256

13:                                               ; preds = %7
  %14 = icmp eq ptr %1, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = load i32, ptr %17, align 8, !tbaa !124
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1432, ptr noundef nonnull @.str.2) #17
  br label %28

21:                                               ; preds = %7
  %22 = load ptr, ptr %9, align 8, !tbaa !102
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %32, !prof !257

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  br label %28

28:                                               ; preds = %15, %20, %26
  %29 = phi ptr [ %27, %26 ], [ %16, %20 ], [ %16, %15 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !102
  %31 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi ptr [ %9, %21 ], [ %31, %28 ]
  %34 = load ptr, ptr %4, align 8, !tbaa !102
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %33, ptr noundef %34, ptr noundef %1, ptr noundef %0)
  %35 = tail call i32 @num_validated_changes() #17
  %36 = icmp sgt i32 %35, %8
  br i1 %36, label %37, label %75, !prof !271

37:                                               ; preds = %32
  %38 = tail call i32 @apply_change_group() #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %75, label %40, !prof !270

40:                                               ; preds = %37
  %41 = load ptr, ptr %4, align 8, !tbaa !102
  %42 = icmp eq ptr %41, %5
  br i1 %42, label %44, label %43, !prof !272

43:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1479, ptr noundef nonnull @.str.2) #17
  br label %44

44:                                               ; preds = %43, %40
  %45 = icmp sgt i32 %2, -1
  br i1 %45, label %47, label %46, !prof !272

46:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1484, ptr noundef nonnull @.str.2) #17
  br label %47

47:                                               ; preds = %46, %44
  store ptr %1, ptr %4, align 8, !tbaa !102
  %48 = icmp eq ptr %1, null
  br i1 %48, label %53, label %49, !prof !273

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !102
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !102
  br label %53

53:                                               ; preds = %49, %47
  %54 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 4, ptr noundef null) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56, !prof !272

56:                                               ; preds = %53
  br i1 %48, label %59, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %58, ptr noundef %5, ptr noundef nonnull %1, ptr noundef %0)
  tail call void @confirm_change_group() #17
  br label %60

59:                                               ; preds = %56
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %54) #17
  br label %60

60:                                               ; preds = %57, %59, %53
  %61 = icmp eq ptr %5, null
  br i1 %61, label %75, label %62, !prof !273

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !102
  %65 = add nsw i32 %64, -1
  store i32 %65, ptr %63, align 8, !tbaa !102
  %66 = icmp eq i32 %65, 0
  %67 = icmp sgt i32 %2, 0
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %75, !prof !273

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !102
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call ptr @delete_related_insns(ptr noundef nonnull %5)
  br label %75

75:                                               ; preds = %13, %73, %69, %62, %60, %32, %37, %3
  %76 = phi i32 [ 1, %3 ], [ 0, %37 ], [ 0, %32 ], [ 1, %60 ], [ 1, %62 ], [ 1, %69 ], [ 1, %73 ], [ 0, %13 ]
  ret i32 %76
}

declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @redirect_jump_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 !prof !274 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %10, label %9, !prof !272

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1479, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %5, %9
  %11 = icmp sgt i32 %3, -1
  br i1 %11, label %13, label %12, !prof !272

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1484, ptr noundef nonnull @.str.2) #17
  br label %13

13:                                               ; preds = %10, %12
  store ptr %2, ptr %6, align 8, !tbaa !102
  %14 = icmp eq ptr %2, null
  br i1 %14, label %19, label %15, !prof !273

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !102
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !102
  br label %19

19:                                               ; preds = %15, %13
  %20 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 4, ptr noundef null) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22, !prof !272

22:                                               ; preds = %19
  br i1 %14, label %30, label %23

23:                                               ; preds = %22
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = tail call fastcc i32 @invert_exp_1(ptr noundef %27, ptr noundef %0), !range !275
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %22
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %20) #17
  br label %33

31:                                               ; preds = %25, %23
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %32, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %0)
  tail call void @confirm_change_group() #17
  br label %33

33:                                               ; preds = %30, %31, %19
  %34 = icmp eq ptr %1, null
  br i1 %34, label %48, label %35, !prof !273

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !102
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %36, align 8, !tbaa !102
  %39 = icmp eq i32 %38, 0
  %40 = icmp sgt i32 %3, 0
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %48, !prof !273

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !102
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @delete_related_insns(ptr noundef nonnull %1)
  br label %48

48:                                               ; preds = %46, %42, %35, %33
  %49 = icmp eq i32 %4, 0
  br i1 %49, label %51, label %50, !prof !276

50:                                               ; preds = %48
  tail call void @invert_br_probabilities(ptr noundef %0) #17
  br label %51

51:                                               ; preds = %50, %48
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef i32 @invert_exp_1(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !90 !PGOFuncName !277 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 47
  br i1 %5, label %6, label %109, !prof !278

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !106
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %89, !prof !278

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = zext nneg i32 %10 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !106
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %89, !prof !163

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33, !prof !164

29:                                               ; preds = %22
  %30 = load i32, ptr %17, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %29, %22
  %34 = phi i32 [ %32, %29 ], [ %27, %22 ]
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !102
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %39, label %41, !prof !165

39:                                               ; preds = %33
  %40 = tail call i32 @ix86_reverse_condition(i32 noundef %10, i32 noundef %34) #17
  br label %89

41:                                               ; preds = %33
  %42 = trunc i32 %9 to i16
  switch i16 %42, label %50 [
    i16 86, label %43
    i16 87, label %43
    i16 88, label %43
    i16 89, label %43
    i16 80, label %43
    i16 81, label %43
    i16 91, label %48
    i16 90, label %48
    i16 97, label %48
    i16 92, label %48
    i16 96, label %89
    i16 95, label %89
    i16 94, label %89
    i16 93, label %89
  ], !prof !166

43:                                               ; preds = %41, %41, %41, %41, %41, %41
  %44 = trunc i32 %9 to i16
  %45 = add i16 %44, -80
  %46 = icmp ult i16 %45, 18
  br i1 %46, label %81, label %47

47:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %89

48:                                               ; preds = %41, %41, %41, %41
  %49 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %10)
  br label %89

50:                                               ; preds = %41
  %51 = and i32 %25, 65535
  %52 = icmp eq i32 %51, 30
  br i1 %52, label %76, label %53, !prof !167

53:                                               ; preds = %50
  %54 = and i32 %25, 16711680
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %89, label %56, !prof !167

56:                                               ; preds = %53
  switch i8 %37, label %76 [
    i8 1, label %89
    i8 8, label %57
    i8 9, label %57
    i8 11, label %57
    i8 17, label %57
  ], !prof !168

57:                                               ; preds = %56, %56, %56, %56
  %58 = and i8 %37, -2
  %59 = icmp eq i8 %58, 8
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %35
  %62 = load i8, ptr %61, align 1, !tbaa !102
  %63 = zext i8 %62 to i32
  br label %64

64:                                               ; preds = %57, %60
  %65 = phi i32 [ %63, %60 ], [ %34, %57 ]
  %66 = add nsw i32 %65, -38
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !91
  %70 = getelementptr inbounds %struct.real_format, ptr %69, i64 0, i32 11
  %71 = load i8, ptr %70, align 2, !tbaa !169
  %72 = icmp eq i8 %71, 0
  %73 = load i32, ptr @flag_finite_math_only, align 4
  %74 = icmp ne i32 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %64, %56, %50
  %77 = trunc i32 %9 to i16
  %78 = add i16 %77, -80
  %79 = icmp ult i16 %78, 18
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %89

81:                                               ; preds = %43
  %82 = zext nneg i16 %45 to i64
  %83 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4
  br label %89

85:                                               ; preds = %76
  %86 = zext nneg i16 %78 to i64
  %87 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4
  br label %89

89:                                               ; preds = %85, %81, %80, %64, %56, %53, %48, %47, %41, %41, %41, %41, %39, %15, %6
  %90 = phi i32 [ 0, %6 ], [ %40, %39 ], [ %49, %48 ], [ 0, %15 ], [ 0, %41 ], [ 0, %64 ], [ 0, %53 ], [ 0, %41 ], [ 0, %41 ], [ 0, %41 ], [ %10, %47 ], [ 0, %56 ], [ %10, %80 ], [ %84, %81 ], [ %88, %85 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92, !prof !279

92:                                               ; preds = %89
  %93 = load i32, ptr %8, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !102
  %98 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !102
  %100 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %90, i32 noundef %95, ptr noundef %97, ptr noundef %99) #17
  %101 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %100, i8 noundef zeroext 1) #17
  br label %109

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !102
  %105 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %106 = load ptr, ptr %105, align 8, !tbaa !102
  %107 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %103, ptr noundef %106, i8 noundef zeroext 1) #17
  %108 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %105, ptr noundef %104, i8 noundef zeroext 1) #17
  br label %109

109:                                              ; preds = %2, %92, %102
  %110 = phi i32 [ 1, %102 ], [ 1, %92 ], [ 0, %2 ]
  ret i32 %110
}

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @confirm_change_group() local_unnamed_addr #3

declare void @invert_br_probabilities(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @invert_jump_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !280 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %29, !prof !278

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %17, !prof !281

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi ptr [ %16, %12 ], [ %8, %6 ]
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %22, label %28, !prof !278

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 36
  br i1 %27, label %29, label %28, !prof !278

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %2, %22, %28
  %30 = phi ptr [ null, %28 ], [ null, %2 ], [ %18, %22 ]
  %31 = tail call i32 @num_validated_changes() #17
  %32 = icmp eq ptr %30, null
  br i1 %32, label %175, label %33, !prof !279

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !102
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %39, label %136, !prof !278

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !102
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !106
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %48, label %115, !prof !278

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61, !prof !164

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !102
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %55, %48
  %62 = phi i32 [ %60, %55 ], [ %53, %48 ]
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !102
  %66 = icmp eq i8 %65, 1
  br i1 %66, label %67, label %69, !prof !165

67:                                               ; preds = %61
  %68 = tail call i32 @ix86_reverse_condition(i32 noundef %43, i32 noundef %62) #17
  br label %115

69:                                               ; preds = %61
  %70 = trunc i32 %42 to i16
  switch i16 %70, label %77 [
    i16 86, label %71
    i16 87, label %71
    i16 88, label %71
    i16 89, label %71
    i16 80, label %71
    i16 81, label %71
    i16 91, label %75
    i16 90, label %75
    i16 97, label %75
    i16 92, label %75
    i16 96, label %115
    i16 95, label %115
    i16 94, label %115
    i16 93, label %115
  ], !prof !166

71:                                               ; preds = %69, %69, %69, %69, %69, %69
  %72 = add i16 %70, -80
  %73 = icmp ult i16 %72, 18
  br i1 %73, label %107, label %74

74:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %115

75:                                               ; preds = %69, %69, %69, %69
  %76 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %43)
  br label %115

77:                                               ; preds = %69
  %78 = and i32 %51, 65535
  %79 = icmp eq i32 %78, 30
  br i1 %79, label %103, label %80, !prof !167

80:                                               ; preds = %77
  %81 = and i32 %51, 16711680
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %115, label %83, !prof !167

83:                                               ; preds = %80
  switch i8 %65, label %103 [
    i8 1, label %115
    i8 8, label %84
    i8 9, label %84
    i8 11, label %84
    i8 17, label %84
  ], !prof !168

84:                                               ; preds = %83, %83, %83, %83
  %85 = and i8 %65, -2
  %86 = icmp eq i8 %85, 8
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %63
  %89 = load i8, ptr %88, align 1, !tbaa !102
  %90 = zext i8 %89 to i32
  br label %91

91:                                               ; preds = %84, %87
  %92 = phi i32 [ %90, %87 ], [ %62, %84 ]
  %93 = add nsw i32 %92, -38
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !91
  %97 = getelementptr inbounds %struct.real_format, ptr %96, i64 0, i32 11
  %98 = load i8, ptr %97, align 2, !tbaa !169
  %99 = icmp eq i8 %98, 0
  %100 = load i32, ptr @flag_finite_math_only, align 4
  %101 = icmp ne i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %91, %83, %77
  %104 = add i16 %70, -80
  %105 = icmp ult i16 %104, 18
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %115

107:                                              ; preds = %71
  %108 = zext nneg i16 %72 to i64
  %109 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4
  br label %115

111:                                              ; preds = %103
  %112 = zext nneg i16 %104 to i64
  %113 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4
  br label %115

115:                                              ; preds = %111, %107, %106, %91, %83, %80, %75, %74, %69, %69, %69, %69, %67, %39
  %116 = phi i32 [ 0, %39 ], [ %68, %67 ], [ %76, %75 ], [ 0, %69 ], [ 0, %91 ], [ 0, %80 ], [ 0, %69 ], [ 0, %69 ], [ 0, %69 ], [ %43, %74 ], [ 0, %83 ], [ %43, %106 ], [ %110, %107 ], [ %114, %111 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %128, label %118, !prof !279

118:                                              ; preds = %115
  %119 = load i32, ptr %41, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !102
  %124 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !102
  %126 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %116, i32 noundef %121, ptr noundef %123, ptr noundef %125) #17
  %127 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %40, ptr noundef %126, i8 noundef zeroext 1) #17
  br label %135

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !102
  %131 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !102
  %133 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %129, ptr noundef %132, i8 noundef zeroext 1) #17
  %134 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %131, ptr noundef %130, i8 noundef zeroext 1) #17
  br label %135

135:                                              ; preds = %118, %128
  br i1 %38, label %137, label %136, !prof !278

136:                                              ; preds = %33, %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1564, ptr noundef nonnull @.str.2) #17
  br label %137

137:                                              ; preds = %135, %136
  %138 = tail call i32 @num_validated_changes() #17
  %139 = icmp eq i32 %138, %31
  br i1 %139, label %175, label %140, !prof !279

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %142 = load ptr, ptr %141, align 8, !tbaa !102
  %143 = icmp eq ptr %142, %1
  br i1 %143, label %175, label %144, !prof !282

144:                                              ; preds = %140
  %145 = tail call i32 @num_validated_changes() #17
  %146 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !102
  %148 = tail call ptr @extract_asm_operands(ptr noundef %147) #17
  %149 = icmp eq ptr %148, null
  br i1 %149, label %158, label %150, !prof !256

150:                                              ; preds = %144
  %151 = icmp eq ptr %1, null
  br i1 %151, label %175, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !102
  %155 = load i32, ptr %154, align 8, !tbaa !124
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %165, label %157

157:                                              ; preds = %152
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1432, ptr noundef nonnull @.str.2) #17
  br label %165

158:                                              ; preds = %144
  %159 = load ptr, ptr %146, align 8, !tbaa !102
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 15
  br i1 %162, label %163, label %169, !prof !257

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  br label %165

165:                                              ; preds = %152, %157, %163
  %166 = phi ptr [ %164, %163 ], [ %153, %157 ], [ %153, %152 ]
  %167 = load ptr, ptr %166, align 8, !tbaa !102
  %168 = getelementptr inbounds %struct.rtvec_def, ptr %167, i64 0, i32 1
  br label %169

169:                                              ; preds = %165, %158
  %170 = phi ptr [ %146, %158 ], [ %168, %165 ]
  %171 = load ptr, ptr %141, align 8, !tbaa !102
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %170, ptr noundef %171, ptr noundef %1, ptr noundef nonnull %0)
  %172 = tail call i32 @num_validated_changes() #17
  %173 = icmp sgt i32 %172, %145
  %174 = zext i1 %173 to i32
  br label %175

175:                                              ; preds = %169, %150, %140, %137, %29
  %176 = phi i32 [ 0, %29 ], [ 0, %137 ], [ 1, %140 ], [ %174, %169 ], [ 0, %150 ]
  ret i32 %176
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @invert_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !283 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %32, !prof !278

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 15
  br i1 %14, label %15, label %20, !prof !281

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi ptr [ %19, %15 ], [ %11, %9 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 23
  br i1 %24, label %25, label %31, !prof !278

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 36
  br i1 %30, label %32, label %31, !prof !278

31:                                               ; preds = %25, %20
  br label %32

32:                                               ; preds = %31, %25, %3
  %33 = phi ptr [ null, %31 ], [ null, %3 ], [ %21, %25 ]
  %34 = tail call i32 @num_validated_changes() #17
  %35 = icmp eq ptr %33, null
  br i1 %35, label %218, label %36, !prof !279

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 47
  br i1 %41, label %42, label %138, !prof !278

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !106
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %51, label %118, !prof !278

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !102
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64, !prof !164

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !102
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  br label %64

64:                                               ; preds = %58, %51
  %65 = phi i32 [ %63, %58 ], [ %56, %51 ]
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !102
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %70, label %72, !prof !165

70:                                               ; preds = %64
  %71 = tail call i32 @ix86_reverse_condition(i32 noundef %46, i32 noundef %65) #17
  br label %118

72:                                               ; preds = %64
  %73 = trunc i32 %45 to i16
  switch i16 %73, label %80 [
    i16 86, label %74
    i16 87, label %74
    i16 88, label %74
    i16 89, label %74
    i16 80, label %74
    i16 81, label %74
    i16 91, label %78
    i16 90, label %78
    i16 97, label %78
    i16 92, label %78
    i16 96, label %118
    i16 95, label %118
    i16 94, label %118
    i16 93, label %118
  ], !prof !166

74:                                               ; preds = %72, %72, %72, %72, %72, %72
  %75 = add i16 %73, -80
  %76 = icmp ult i16 %75, 18
  br i1 %76, label %110, label %77

77:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %118

78:                                               ; preds = %72, %72, %72, %72
  %79 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %46)
  br label %118

80:                                               ; preds = %72
  %81 = and i32 %54, 65535
  %82 = icmp eq i32 %81, 30
  br i1 %82, label %106, label %83, !prof !167

83:                                               ; preds = %80
  %84 = and i32 %54, 16711680
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %118, label %86, !prof !167

86:                                               ; preds = %83
  switch i8 %68, label %106 [
    i8 1, label %118
    i8 8, label %87
    i8 9, label %87
    i8 11, label %87
    i8 17, label %87
  ], !prof !168

87:                                               ; preds = %86, %86, %86, %86
  %88 = and i8 %68, -2
  %89 = icmp eq i8 %88, 8
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %66
  %92 = load i8, ptr %91, align 1, !tbaa !102
  %93 = zext i8 %92 to i32
  br label %94

94:                                               ; preds = %87, %90
  %95 = phi i32 [ %93, %90 ], [ %65, %87 ]
  %96 = add nsw i32 %95, -38
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !91
  %100 = getelementptr inbounds %struct.real_format, ptr %99, i64 0, i32 11
  %101 = load i8, ptr %100, align 2, !tbaa !169
  %102 = icmp eq i8 %101, 0
  %103 = load i32, ptr @flag_finite_math_only, align 4
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %94, %86, %80
  %107 = add i16 %73, -80
  %108 = icmp ult i16 %107, 18
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 477, ptr noundef nonnull @.str.2) #17
  br label %118

110:                                              ; preds = %74
  %111 = zext nneg i16 %75 to i64
  %112 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4
  br label %118

114:                                              ; preds = %106
  %115 = zext nneg i16 %107 to i64
  %116 = getelementptr inbounds [18 x i32], ptr @switch.table.invert_jump.7, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4
  br label %118

118:                                              ; preds = %114, %110, %109, %94, %86, %83, %78, %77, %72, %72, %72, %72, %70, %42
  %119 = phi i32 [ 0, %42 ], [ %71, %70 ], [ %79, %78 ], [ 0, %72 ], [ 0, %94 ], [ 0, %83 ], [ 0, %72 ], [ 0, %72 ], [ 0, %72 ], [ %46, %77 ], [ 0, %86 ], [ %46, %109 ], [ %113, %110 ], [ %117, %114 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %131, label %121, !prof !279

121:                                              ; preds = %118
  %122 = load i32, ptr %44, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !102
  %127 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !102
  %129 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %119, i32 noundef %124, ptr noundef %126, ptr noundef %128) #17
  %130 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %43, ptr noundef %129, i8 noundef zeroext 1) #17
  br label %139

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !102
  %134 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %135 = load ptr, ptr %134, align 8, !tbaa !102
  %136 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %132, ptr noundef %135, i8 noundef zeroext 1) #17
  %137 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %134, ptr noundef %133, i8 noundef zeroext 1) #17
  br label %139

138:                                              ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1564, ptr noundef nonnull @.str.2) #17
  br label %139

139:                                              ; preds = %121, %131, %138
  %140 = tail call i32 @num_validated_changes() #17
  %141 = icmp eq i32 %140, %34
  br i1 %141, label %218, label %142, !prof !279

142:                                              ; preds = %139
  %143 = load ptr, ptr %4, align 8, !tbaa !102
  %144 = icmp eq ptr %143, %1
  br i1 %144, label %175, label %145, !prof !282

145:                                              ; preds = %142
  %146 = tail call i32 @num_validated_changes() #17
  %147 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !102
  %149 = tail call ptr @extract_asm_operands(ptr noundef %148) #17
  %150 = icmp eq ptr %149, null
  br i1 %150, label %159, label %151, !prof !256

151:                                              ; preds = %145
  %152 = icmp eq ptr %1, null
  br i1 %152, label %218, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !102
  %156 = load i32, ptr %155, align 8, !tbaa !124
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %166, label %158

158:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1432, ptr noundef nonnull @.str.2) #17
  br label %166

159:                                              ; preds = %145
  %160 = load ptr, ptr %147, align 8, !tbaa !102
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 15
  br i1 %163, label %164, label %170, !prof !257

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1
  br label %166

166:                                              ; preds = %153, %158, %164
  %167 = phi ptr [ %165, %164 ], [ %154, %158 ], [ %154, %153 ]
  %168 = load ptr, ptr %167, align 8, !tbaa !102
  %169 = getelementptr inbounds %struct.rtvec_def, ptr %168, i64 0, i32 1
  br label %170

170:                                              ; preds = %166, %159
  %171 = phi ptr [ %147, %159 ], [ %169, %166 ]
  %172 = load ptr, ptr %4, align 8, !tbaa !102
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %171, ptr noundef %172, ptr noundef %1, ptr noundef nonnull %0)
  %173 = tail call i32 @num_validated_changes() #17
  %174 = icmp sgt i32 %173, %146
  br i1 %174, label %175, label %218, !prof !284

175:                                              ; preds = %142, %170
  %176 = tail call i32 @apply_change_group() #17
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %218, label %178, !prof !285

178:                                              ; preds = %175
  %179 = load ptr, ptr %4, align 8, !tbaa !102
  %180 = icmp eq ptr %179, %5
  br i1 %180, label %182, label %181, !prof !272

181:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1479, ptr noundef nonnull @.str.2) #17
  br label %182

182:                                              ; preds = %181, %178
  %183 = icmp sgt i32 %2, -1
  br i1 %183, label %185, label %184, !prof !272

184:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1484, ptr noundef nonnull @.str.2) #17
  br label %185

185:                                              ; preds = %184, %182
  store ptr %1, ptr %4, align 8, !tbaa !102
  %186 = icmp eq ptr %1, null
  br i1 %186, label %191, label %187, !prof !273

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !102
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %188, align 8, !tbaa !102
  br label %191

191:                                              ; preds = %187, %185
  %192 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #17
  %193 = icmp eq ptr %192, null
  br i1 %193, label %202, label %194, !prof !272

194:                                              ; preds = %191
  br i1 %186, label %200, label %195

195:                                              ; preds = %194
  %196 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !102
  %198 = tail call fastcc i32 @invert_exp_1(ptr noundef %197, ptr noundef nonnull %0), !range !275
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195, %194
  tail call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %192) #17
  br label %202

201:                                              ; preds = %195
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %196, ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull %0)
  tail call void @confirm_change_group() #17
  br label %202

202:                                              ; preds = %201, %200, %191
  %203 = icmp eq ptr %5, null
  br i1 %203, label %217, label %204, !prof !273

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 2
  %206 = load i32, ptr %205, align 8, !tbaa !102
  %207 = add nsw i32 %206, -1
  store i32 %207, ptr %205, align 8, !tbaa !102
  %208 = icmp eq i32 %207, 0
  %209 = icmp sgt i32 %2, 0
  %210 = and i1 %209, %208
  br i1 %210, label %211, label %217, !prof !273

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %213 = load i32, ptr %212, align 8, !tbaa !102
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = tail call ptr @delete_related_insns(ptr noundef nonnull %5)
  br label %217

217:                                              ; preds = %202, %204, %211, %215
  tail call void @invert_br_probabilities(ptr noundef nonnull %0) #17
  br label %219

218:                                              ; preds = %32, %139, %151, %175, %170
  tail call void @cancel_changes(i32 noundef 0) #17
  br label %219

219:                                              ; preds = %218, %217
  %220 = phi i32 [ 1, %217 ], [ 0, %218 ]
  ret i32 %220
}

declare void @cancel_changes(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !286 {
  %3 = alloca %struct.subreg_info, align 4
  br label %4

4:                                                ; preds = %233, %2
  %5 = phi ptr [ %0, %2 ], [ %235, %233 ]
  %6 = phi ptr [ %1, %2 ], [ %237, %233 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq ptr %5, %6
  br i1 %9, label %199, label %10, !prof !287

10:                                               ; preds = %4
  %11 = trunc i32 %7 to i16
  switch i16 %11, label %119 [
    i16 37, label %18
    i16 39, label %12
  ], !prof !288

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %119

18:                                               ; preds = %10, %12
  %19 = load i32, ptr %6, align 8
  %20 = trunc i32 %19 to i16
  switch i16 %20, label %119 [
    i16 37, label %27
    i16 39, label %21
  ], !prof !289

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %119

27:                                               ; preds = %18, %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %28 = xor i32 %19, %7
  %29 = and i32 %28, 16711680
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %117, !prof !290

31:                                               ; preds = %27
  %32 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36, !prof !291

34:                                               ; preds = %31
  %35 = tail call i32 @rtx_equal_p(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  br label %117

36:                                               ; preds = %31
  %37 = icmp eq i32 %8, 39
  %38 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  br i1 %37, label %39, label %61, !prof !291

39:                                               ; preds = %36
  %40 = load ptr, ptr %38, align 8, !tbaa !102
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load i32, ptr %43, align 8, !tbaa !102
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds i16, ptr %32, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !292
  %48 = icmp sgt i16 %47, -1
  br i1 %48, label %49, label %69

49:                                               ; preds = %39
  %50 = zext nneg i16 %47 to i32
  %51 = load i32, ptr %40, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = lshr i32 %7, 16
  %55 = and i32 %54, 255
  call void @subreg_get_info(i32 noundef %50, i32 noundef %53, i32 noundef %44, i32 noundef %55, ptr noundef nonnull %3) #17
  %56 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 2
  %57 = load i8, ptr %56, align 4, !tbaa !293
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %117, label %59

59:                                               ; preds = %49
  %60 = load i32, ptr %3, align 4, !tbaa !295
  br label %69

61:                                               ; preds = %36
  %62 = load i32, ptr %38, align 8, !tbaa !102
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, ptr %32, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !292
  %66 = sext i16 %65 to i32
  %67 = icmp slt i16 %65, 0
  %68 = select i1 %67, i32 %62, i32 %66, !prof !296
  br label %69

69:                                               ; preds = %61, %39, %59
  %70 = phi i32 [ %60, %59 ], [ %42, %39 ], [ %68, %61 ]
  %71 = phi i32 [ 0, %59 ], [ %44, %39 ], [ 0, %61 ]
  %72 = load i32, ptr %6, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 39
  %75 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br i1 %74, label %76, label %99, !prof !291

76:                                               ; preds = %69
  %77 = load ptr, ptr %75, align 8, !tbaa !102
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !102
  %80 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load i32, ptr %80, align 8, !tbaa !102
  %82 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %83 = sext i32 %79 to i64
  %84 = getelementptr inbounds i16, ptr %82, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !292
  %86 = icmp sgt i16 %85, -1
  br i1 %86, label %87, label %108

87:                                               ; preds = %76
  %88 = zext nneg i16 %85 to i32
  %89 = load i32, ptr %77, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = lshr i32 %72, 16
  %93 = and i32 %92, 255
  call void @subreg_get_info(i32 noundef %88, i32 noundef %91, i32 noundef %81, i32 noundef %93, ptr noundef nonnull %3) #17
  %94 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 2
  %95 = load i8, ptr %94, align 4, !tbaa !293
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %87
  %98 = load i32, ptr %3, align 4, !tbaa !295
  br label %108

99:                                               ; preds = %69
  %100 = load i32, ptr %75, align 8, !tbaa !102
  %101 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i16, ptr %101, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !292
  %105 = sext i16 %104 to i32
  %106 = icmp slt i16 %104, 0
  %107 = select i1 %106, i32 %100, i32 %105, !prof !296
  br label %108

108:                                              ; preds = %99, %76, %97
  %109 = phi i32 [ %98, %97 ], [ %79, %76 ], [ %107, %99 ]
  %110 = phi i32 [ 0, %97 ], [ %81, %76 ], [ 0, %99 ]
  %111 = icmp sgt i32 %70, -1
  %112 = icmp eq i32 %70, %109
  %113 = select i1 %111, i1 %112, i1 false, !prof !296
  %114 = icmp eq i32 %71, %110
  %115 = select i1 %113, i1 %114, i1 false, !prof !297
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %87, %49, %27, %108, %34
  %118 = phi i32 [ %35, %34 ], [ %116, %108 ], [ 0, %27 ], [ 0, %49 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %199

119:                                              ; preds = %21, %18, %12, %10
  %120 = load i32, ptr %6, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %8, %121
  br i1 %122, label %123, label %199, !prof !298

123:                                              ; preds = %119
  switch i16 %11, label %149 [
    i16 36, label %199
    i16 46, label %199
    i16 20, label %199
    i16 21, label %199
    i16 30, label %199
    i16 32, label %199
    i16 44, label %124
    i16 45, label %142
    i16 12, label %199
  ], !prof !299

124:                                              ; preds = %123
  %125 = or i32 %120, %7
  %126 = and i32 %125, 134217728
  %127 = icmp eq i32 %126, 0
  %128 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !102
  br i1 %127, label %135, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !102
  %133 = icmp eq ptr %129, %132
  %134 = zext i1 %133 to i32
  br label %199

135:                                              ; preds = %124
  %136 = tail call ptr @next_real_insn(ptr noundef %129) #17
  %137 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !102
  %139 = tail call ptr @next_real_insn(ptr noundef %138) #17
  %140 = icmp eq ptr %136, %139
  %141 = zext i1 %140 to i32
  br label %199

142:                                              ; preds = %123
  %143 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !102
  %145 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !102
  %147 = icmp eq ptr %144, %146
  %148 = zext i1 %147 to i32
  br label %199

149:                                              ; preds = %123
  %150 = xor i32 %120, %7
  %151 = and i32 %150, 16711680
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %199, !prof !300

153:                                              ; preds = %149
  %154 = icmp eq i32 %8, 43
  br i1 %154, label %155, label %175, !prof !301

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !102
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159, !prof !302

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.mem_attrs, ptr %157, i64 0, i32 5
  %161 = load i8, ptr %160, align 8, !tbaa !303
  %162 = zext i8 %161 to i32
  br label %163

163:                                              ; preds = %155, %159
  %164 = phi i32 [ %162, %159 ], [ 0, %155 ]
  %165 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !102
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168, !prof !305

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.mem_attrs, ptr %166, i64 0, i32 5
  %170 = load i8, ptr %169, align 8, !tbaa !303
  %171 = zext i8 %170 to i32
  br label %172

172:                                              ; preds = %163, %168
  %173 = phi i32 [ %171, %168 ], [ 0, %163 ]
  %174 = icmp eq i32 %164, %173
  br i1 %174, label %175, label %199, !prof !306

175:                                              ; preds = %172, %153
  %176 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 38), align 8, !tbaa !307
  %177 = tail call zeroext i8 %176(ptr noundef nonnull %5, i32 noundef 0) #17, !prof !319
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %208, label %179, !prof !320

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !102
  %182 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !102
  %184 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %181, ptr noundef %183)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %193, label %186, !prof !321

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !102
  %189 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !102
  %191 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %188, ptr noundef %190)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %199, !prof !322

193:                                              ; preds = %186, %179
  %194 = load ptr, ptr %180, align 8, !tbaa !102
  %195 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !102
  %197 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %194, ptr noundef %196)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201, !prof !323

199:                                              ; preds = %117, %130, %135, %142, %4, %119, %123, %149, %172, %186, %216, %123, %123, %123, %123, %123, %123, %193, %238, %318, %302, %294, %287, %278, %270, %262, %254, %330, %223, %201
  %200 = phi i32 [ %207, %201 ], [ %230, %223 ], [ %118, %117 ], [ %148, %142 ], [ %134, %130 ], [ %141, %135 ], [ 1, %4 ], [ 0, %119 ], [ 0, %123 ], [ 0, %149 ], [ 0, %172 ], [ 1, %186 ], [ 0, %216 ], [ 0, %123 ], [ 0, %123 ], [ 0, %123 ], [ 0, %123 ], [ 0, %123 ], [ 0, %123 ], [ 0, %193 ], [ 1, %238 ], [ 0, %318 ], [ 0, %302 ], [ 0, %294 ], [ 0, %287 ], [ 0, %278 ], [ 0, %270 ], [ 0, %262 ], [ 0, %254 ], [ 1, %330 ]
  ret i32 %200

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !102
  %204 = load ptr, ptr %182, align 8, !tbaa !102
  %205 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %203, ptr noundef %204)
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i32
  br label %199

208:                                              ; preds = %175
  %209 = load i32, ptr %5, align 8
  %210 = and i32 %209, 65535
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !106
  %214 = and i32 %213, -3
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %231, !prof !324

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !102
  %219 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !102
  %221 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %218, ptr noundef %220)
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %199, label %223, !prof !325

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !102
  %226 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %227 = load ptr, ptr %226, align 8, !tbaa !102
  %228 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %225, ptr noundef %227)
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i32
  br label %199

231:                                              ; preds = %208
  %232 = icmp eq i32 %213, 4
  br i1 %232, label %233, label %238, !prof !326

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !102
  %236 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !102
  br label %4

238:                                              ; preds = %231
  %239 = zext nneg i32 %8 to i64
  %240 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !91
  %242 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %239
  %243 = load i8, ptr %242, align 1, !tbaa !102
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %199, label %245, !prof !327

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %247 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %248 = zext i8 %243 to i64
  br label %249

249:                                              ; preds = %245, %330
  %250 = phi i64 [ %248, %245 ], [ %251, %330 ]
  %251 = add nsw i64 %250, -1
  %252 = getelementptr inbounds i8, ptr %241, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !102
  switch i8 %253, label %329 [
    i8 119, label %254
    i8 105, label %262
    i8 116, label %270
    i8 115, label %278
    i8 101, label %287
    i8 117, label %294
    i8 48, label %330
    i8 69, label %302
  ], !prof !328

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %256 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %257 = getelementptr inbounds [1 x i64], ptr %255, i64 0, i64 %251
  %258 = load i64, ptr %257, align 8, !tbaa !102
  %259 = getelementptr inbounds [1 x i64], ptr %256, i64 0, i64 %251
  %260 = load i64, ptr %259, align 8, !tbaa !102
  %261 = icmp eq i64 %258, %260
  br i1 %261, label %330, label %199

262:                                              ; preds = %249
  %263 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %264 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %265 = getelementptr inbounds [1 x %union.rtunion_def], ptr %263, i64 0, i64 %251
  %266 = load i32, ptr %265, align 8, !tbaa !102
  %267 = getelementptr inbounds [1 x %union.rtunion_def], ptr %264, i64 0, i64 %251
  %268 = load i32, ptr %267, align 8, !tbaa !102
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %330, label %199

270:                                              ; preds = %249
  %271 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %272 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %273 = getelementptr inbounds [1 x %union.rtunion_def], ptr %271, i64 0, i64 %251
  %274 = load ptr, ptr %273, align 8, !tbaa !102
  %275 = getelementptr inbounds [1 x %union.rtunion_def], ptr %272, i64 0, i64 %251
  %276 = load ptr, ptr %275, align 8, !tbaa !102
  %277 = icmp eq ptr %274, %276
  br i1 %277, label %330, label %199

278:                                              ; preds = %249
  %279 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %280 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %281 = getelementptr inbounds [1 x %union.rtunion_def], ptr %279, i64 0, i64 %251
  %282 = load ptr, ptr %281, align 8, !tbaa !102
  %283 = getelementptr inbounds [1 x %union.rtunion_def], ptr %280, i64 0, i64 %251
  %284 = load ptr, ptr %283, align 8, !tbaa !102
  %285 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %282, ptr noundef nonnull dereferenceable(1) %284)
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %330, label %199

287:                                              ; preds = %249
  %288 = getelementptr inbounds [1 x %union.rtunion_def], ptr %246, i64 0, i64 %251
  %289 = load ptr, ptr %288, align 8, !tbaa !102
  %290 = getelementptr inbounds [1 x %union.rtunion_def], ptr %247, i64 0, i64 %251
  %291 = load ptr, ptr %290, align 8, !tbaa !102
  %292 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %289, ptr noundef %291)
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %199, label %330, !prof !329

294:                                              ; preds = %249
  %295 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %296 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %297 = getelementptr inbounds [1 x %union.rtunion_def], ptr %295, i64 0, i64 %251
  %298 = load ptr, ptr %297, align 8, !tbaa !102
  %299 = getelementptr inbounds [1 x %union.rtunion_def], ptr %296, i64 0, i64 %251
  %300 = load ptr, ptr %299, align 8, !tbaa !102
  %301 = icmp eq ptr %298, %300
  br i1 %301, label %330, label %199

302:                                              ; preds = %249
  %303 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %304 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %305 = getelementptr inbounds [1 x %union.rtunion_def], ptr %303, i64 0, i64 %251
  %306 = load ptr, ptr %305, align 8, !tbaa !102
  %307 = load i32, ptr %306, align 8, !tbaa !124
  %308 = getelementptr inbounds [1 x %union.rtunion_def], ptr %304, i64 0, i64 %251
  %309 = load ptr, ptr %308, align 8, !tbaa !102
  %310 = load i32, ptr %309, align 8, !tbaa !124
  %311 = icmp eq i32 %307, %310
  br i1 %311, label %312, label %199, !prof !330

312:                                              ; preds = %302
  %313 = zext i32 %307 to i64
  br label %314

314:                                              ; preds = %312, %318
  %315 = phi i64 [ %313, %312 ], [ %320, %318 ]
  %316 = trunc i64 %315 to i32
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %330, !prof !331

318:                                              ; preds = %314
  %319 = add nsw i64 %315, -1
  %320 = add nsw i64 %315, -1
  %321 = load ptr, ptr %305, align 8, !tbaa !102
  %322 = getelementptr inbounds %struct.rtvec_def, ptr %321, i64 0, i32 1, i64 %319
  %323 = load ptr, ptr %322, align 8, !tbaa !91
  %324 = load ptr, ptr %308, align 8, !tbaa !102
  %325 = getelementptr inbounds %struct.rtvec_def, ptr %324, i64 0, i32 1, i64 %319
  %326 = load ptr, ptr %325, align 8, !tbaa !91
  %327 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %323, ptr noundef %326)
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %199, label %314, !prof !332, !llvm.loop !333

329:                                              ; preds = %249
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1780, ptr noundef nonnull @.str.2) #17
  br label %330

330:                                              ; preds = %314, %294, %287, %278, %270, %262, %254, %329, %249
  %331 = icmp sgt i64 %250, 1
  br i1 %331, label %249, label %199, !prof !334, !llvm.loop !335
}

declare void @subreg_get_info(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_real_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @true_regnum(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !336 {
  %2 = alloca %struct.subreg_info, align 4
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %43 [
    i16 37, label %5
    i16 39, label %17
  ], !prof !337

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !102
  %8 = icmp ugt i32 %7, 52
  br i1 %8, label %9, label %44, !prof !338

9:                                                ; preds = %5
  %10 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !292
  %14 = icmp sgt i16 %13, -1
  br i1 %14, label %15, label %44, !prof !339

15:                                               ; preds = %9
  %16 = zext nneg i16 %13 to i32
  br label %44

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = tail call i32 @true_regnum(ptr noundef %19)
  %21 = icmp ult i32 %20, 53
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  %23 = load ptr, ptr %18, align 8, !tbaa !102
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !102
  %26 = load i32, ptr %23, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load i32, ptr %29, align 8, !tbaa !102
  %31 = load i32, ptr %0, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  call void @subreg_get_info(i32 noundef %25, i32 noundef %28, i32 noundef %30, i32 noundef %33, ptr noundef nonnull %2) #17
  %34 = getelementptr inbounds %struct.subreg_info, ptr %2, i64 0, i32 2
  %35 = load i8, ptr %34, align 4, !tbaa !293
  %36 = icmp eq i8 %35, 0
  %37 = load i32, ptr %2, align 4
  %38 = add nsw i32 %37, %20
  %39 = select i1 %36, i32 undef, i32 %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  br label %40

40:                                               ; preds = %22, %17
  %41 = phi i32 [ undef, %17 ], [ %39, %22 ]
  %42 = phi i1 [ true, %17 ], [ %36, %22 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %1
  br label %44

44:                                               ; preds = %5, %9, %40, %43, %15
  %45 = phi i32 [ %16, %15 ], [ %41, %40 ], [ -1, %43 ], [ %7, %9 ], [ %7, %5 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_or_subregno(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !340 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %8, !prof !341

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %14, label %13, !prof !342

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1825, ptr noundef nonnull @.str.2) #17
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !102
  ret i32 %16
}

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @current_ir_type() local_unnamed_addr #3

declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt__stat(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { "function-inline-cost-multiplier"="2" }

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
!35 = !{ptr @rebuild_jump_labels, ptr @reg_mentioned_p, i64 92}
!36 = !{ptr @rebuild_jump_labels, ptr @extract_asm_operands, i64 3668603}
!37 = !{ptr @rebuild_jump_labels, ptr @mark_jump_label_1, i64 3668603}
!38 = !{ptr @rebuild_jump_labels, ptr @find_reg_note, i64 134}
!39 = !{ptr @rebuild_jump_labels, ptr @current_ir_type, i64 213}
!40 = !{ptr @cleanup_barriers, ptr @get_insns, i64 38}
!41 = !{ptr @cleanup_barriers, ptr @prev_nonnote_insn, i64 38682}
!42 = !{ptr @reversed_comparison_code_parts, ptr @ix86_reverse_condition, i64 213569}
!43 = !{ptr @reversed_comparison_code_parts, ptr @fancy_abort, i64 88705}
!44 = !{ptr @reverse_condition, ptr @fancy_abort, i64 618417}
!45 = !{ptr @reversed_comparison_code, ptr @ix86_reverse_condition, i64 430534}
!46 = !{ptr @reversed_comparison_code, ptr @fancy_abort, i64 178821}
!47 = !{ptr @reversed_comparison, ptr @reversed_comparison_code_parts, i64 922}
!48 = !{ptr @reversed_comparison, ptr @simplify_gen_relational, i64 922}
!49 = !{ptr @swap_condition, ptr @fancy_abort, i64 12549}
!50 = !{ptr @unsigned_condition, ptr @fancy_abort, i64 122496}
!51 = !{ptr @signed_condition, ptr @fancy_abort, i64 189770}
!52 = !{ptr @any_uncondjump_p, ptr @find_reg_note, i64 48441}
!53 = !{ptr @returnjump_p, ptr @for_each_rtx, i64 493871}
!54 = !{ptr @onlyjump_p, ptr @single_set_2, i64 269}
!55 = !{ptr @onlyjump_p, ptr @side_effects_p, i64 3408584}
!56 = !{ptr @mark_jump_label, ptr @extract_asm_operands, i64 7300}
!57 = !{ptr @mark_jump_label, ptr @mark_jump_label_1, i64 7300}
!58 = !{ptr @mark_jump_label_1, ptr @mark_jump_label_1, i64 15750996}
!59 = !{ptr @mark_jump_label_1, ptr @find_reg_note, i64 48}
!60 = !{ptr @mark_jump_label_1, ptr @add_reg_note, i64 48}
!61 = !{ptr @redirect_jump_1, ptr @num_validated_changes, i64 119236}
!62 = !{ptr @redirect_jump_1, ptr @extract_asm_operands, i64 59618}
!63 = !{ptr @redirect_jump_1, ptr @redirect_exp_1, i64 59618}
!64 = !{ptr @redirect_exp_1, ptr @gen_rtx_fmt_u_stat, i64 266711}
!65 = !{ptr @redirect_exp_1, ptr @validate_change, i64 266711}
!66 = !{ptr @redirect_exp_1, ptr @redirect_exp_1, i64 799889}
!67 = !{ptr @redirect_jump, ptr @num_validated_changes, i64 168910}
!68 = !{ptr @redirect_jump, ptr @extract_asm_operands, i64 84455}
!69 = !{ptr @redirect_jump, ptr @redirect_exp_1, i64 84455}
!70 = !{ptr @redirect_jump, ptr @apply_change_group, i64 84455}
!71 = !{ptr @redirect_jump, ptr @find_reg_note, i64 84455}
!72 = !{ptr @redirect_jump_2, ptr @find_reg_note, i64 59619}
!73 = !{ptr @redirect_jump_2, ptr @invert_br_probabilities, i64 42765}
!74 = !{ptr @invert_jump_1, ptr @num_validated_changes, i64 2}
!75 = !{ptr @invert_jump_1, ptr @ix86_reverse_condition, i64 1}
!76 = !{ptr @invert_jump_1, ptr @gen_rtx_fmt_ee_stat, i64 1}
!77 = !{ptr @invert_jump_1, ptr @validate_change, i64 1}
!78 = !{ptr @invert_jump, ptr @num_validated_changes, i64 869774}
!79 = !{ptr @invert_jump, ptr @ix86_reverse_condition, i64 199685}
!80 = !{ptr @invert_jump, ptr @fancy_abort, i64 82939}
!81 = !{ptr @invert_jump, ptr @gen_rtx_fmt_ee_stat, i64 365562}
!82 = !{ptr @invert_jump, ptr @validate_change, i64 365562}
!83 = !{ptr @invert_jump, ptr @extract_asm_operands, i64 69325}
!84 = !{ptr @invert_jump, ptr @redirect_exp_1, i64 69325}
!85 = !{ptr @invert_jump, ptr @apply_change_group, i64 365562}
!86 = !{ptr @invert_jump, ptr @find_reg_note, i64 365562}
!87 = !{ptr @invert_jump, ptr @invert_br_probabilities, i64 365562}
!88 = !{ptr @rtx_renumbered_equal_p, ptr @rtx_renumbered_equal_p, i64 128720}
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
!110 = !{!"function_entry_count", i64 213}
!111 = !{!"branch_weights", i32 213, i32 0}
!112 = !{!"branch_weights", i32 1, i32 212}
!113 = !{!"branch_weights", i32 392561, i32 5008926}
!114 = !{!"branch_weights", i32 3668562, i32 1732925}
!115 = !{!"branch_weights", i32 1092026, i32 2576536}
!116 = !{!"branch_weights", i32 92, i32 2576444}
!117 = !{!"branch_weights", i32 0, i32 92}
!118 = !{!"branch_weights", i32 2576536, i32 0}
!119 = distinct !{!119, !108, !109}
!120 = !{!"branch_weights", i32 212, i32 5401275}
!121 = distinct !{!121, !108, !109}
!122 = !{!"branch_weights", i32 1340364, i32 2263320, i32 0, i32 992207, i32 413035, i32 392561}
!123 = !{!"branch_weights", i32 3675869, i32 0}
!124 = !{!125, !97, i64 0}
!125 = !{!"rtvec_def", !97, i64 0, !93, i64 8}
!126 = distinct !{!126, !108, !109}
!127 = distinct !{!127, !108, !109}
!128 = !{!"branch_weights", i32 3675827, i32 42}
!129 = !{!"branch_weights", i32 992207, i32 2676355}
!130 = !{!"branch_weights", i32 249, i32 991958}
!131 = !{!"branch_weights", i32 0, i32 249}
!132 = !{!"branch_weights", i32 249, i32 0}
!133 = !{!"branch_weights", i32 115, i32 134}
!134 = !{!"branch_weights", i32 3668313, i32 0}
!135 = distinct !{!135, !108, !109}
!136 = !{!"branch_weights", i32 23, i32 190}
!137 = !{!138, !92, i64 8}
!138 = !{!"function", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !97, i64 104, !97, i64 108, !97, i64 112, !97, i64 116, !97, i64 120, !97, i64 124, !92, i64 128, !97, i64 136, !97, i64 137, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139}
!139 = !{!140, !92, i64 0}
!140 = !{!"control_flow_graph", !92, i64 0, !92, i64 8, !92, i64 16, !97, i64 24, !97, i64 28, !97, i64 32, !92, i64 40, !97, i64 48, !93, i64 52, !93, i64 60, !97, i64 68, !97, i64 72}
!141 = !{!142, !92, i64 56}
!142 = !{!"basic_block_def", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !93, i64 32, !92, i64 48, !92, i64 56, !93, i64 64, !98, i64 72, !97, i64 80, !97, i64 84, !97, i64 88, !97, i64 92, !97, i64 96}
!143 = !{!140, !92, i64 8}
!144 = !{!"branch_weights", i32 1, i32 183}
!145 = !{!"branch_weights", i32 183, i32 1222785}
!146 = distinct !{!146, !108, !109}
!147 = !{!"branch_weights", i32 1, i32 0}
!148 = distinct !{!148, !108, !109}
!149 = !{!"branch_weights", i32 152731, i32 140}
!150 = !{!"branch_weights", i32 23, i32 117}
!151 = !{!"branch_weights", i32 23, i32 0}
!152 = !{!"branch_weights", i32 140, i32 0}
!153 = distinct !{!153, !108, !109}
!154 = distinct !{!154, !108, !109}
!155 = !{!"function_entry_count", i64 38}
!156 = !{!"branch_weights", i32 1, i32 151}
!157 = !{!"branch_weights", i32 38682, i32 946937}
!158 = !{!"branch_weights", i32 0, i32 38682}
!159 = !{!"branch_weights", i32 38682, i32 0}
!160 = !{!"branch_weights", i32 151, i32 3942325}
!161 = distinct !{!161, !108, !109}
!162 = !{!"function_entry_count", i64 390980}
!163 = !{!"branch_weights", i32 1544719, i32 0}
!164 = !{!"branch_weights", i32 0, i32 1544719}
!165 = !{!"branch_weights", i32 843788, i32 700931}
!166 = !{!"branch_weights", i32 3219, i32 0, i32 1496, i32 14918, i32 0, i32 361095, i32 320203, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!167 = !{!"branch_weights", i32 0, i32 3219}
!168 = !{!"branch_weights", i32 3219, i32 0, i32 0, i32 0, i32 0, i32 0}
!169 = !{!170, !93, i64 46}
!170 = !{!"real_format", !92, i64 0, !92, i64 8, !97, i64 16, !97, i64 20, !97, i64 24, !97, i64 28, !97, i64 32, !97, i64 36, !97, i64 40, !93, i64 44, !93, i64 45, !93, i64 46, !93, i64 47, !93, i64 48, !93, i64 49, !93, i64 50, !93, i64 51}
!171 = !{!"function_entry_count", i64 1236834}
!172 = !{!"function_entry_count", i64 788176}
!173 = !{!"branch_weights", i32 788176, i32 0}
!174 = !{!"function_entry_count", i64 922}
!175 = !{!"branch_weights", i32 922, i32 0}
!176 = !{!"branch_weights", i32 0, i32 922}
!177 = !{!"function_entry_count", i64 25097}
!178 = !{!"function_entry_count", i64 244991}
!179 = !{!"function_entry_count", i64 379540}
!180 = !{!"function_entry_count", i64 915198}
!181 = !{!"branch_weights", i32 562610, i32 352588}
!182 = !{!"branch_weights", i32 242330, i32 110258}
!183 = !{!"branch_weights", i32 61586, i32 0, i32 42918, i32 0, i32 1714, i32 0, i32 1227, i32 319, i32 2338, i32 0, i32 0, i32 156, i32 0}
!184 = !{!"branch_weights", i32 0, i32 2657}
!185 = !{!"function_entry_count", i64 1135239}
!186 = !{!"branch_weights", i32 1135200, i32 39}
!187 = !{!"branch_weights", i32 1128143, i32 7057}
!188 = !{!"branch_weights", i32 1128143, i32 0}
!189 = !{!"function_entry_count", i64 3105962}
!190 = !{!"branch_weights", i32 3105962, i32 0}
!191 = !{!"branch_weights", i32 176, i32 3105786}
!192 = !{!"function_entry_count", i64 618976}
!193 = !{!"branch_weights", i32 573673, i32 45303}
!194 = !{!"branch_weights", i32 6884, i32 566789}
!195 = !{!"branch_weights", i32 573604, i32 69}
!196 = !{!"branch_weights", i32 573604, i32 0}
!197 = !{!"branch_weights", i32 45372, i32 573604}
!198 = !{!"branch_weights", i32 48441, i32 525163}
!199 = !{!"function_entry_count", i64 16893731}
!200 = !{!"branch_weights", i32 7772471, i32 9121260}
!201 = !{!"branch_weights", i32 28497, i32 7743974}
!202 = !{!"branch_weights", i32 7770172, i32 2299}
!203 = !{!"branch_weights", i32 7770172, i32 0}
!204 = !{!"branch_weights", i32 9123559, i32 7770172}
!205 = !{!"branch_weights", i32 7271277, i32 498895}
!206 = !{!"branch_weights", i32 7271277, i32 0}
!207 = !{!"branch_weights", i32 0, i32 7271277, i32 0, i32 0}
!208 = !{!"function_entry_count", i64 606568}
!209 = !{!"branch_weights", i32 493871, i32 112697}
!210 = !{!"function_entry_count", i64 2903244}
!211 = !{!"jump.c;returnjump_p_1"}
!212 = !{!"branch_weights", i32 0, i32 2903244}
!213 = !{!"branch_weights", i32 2409373, i32 286, i32 0, i32 493585}
!214 = !{!"function_entry_count", i64 19}
!215 = !{!"branch_weights", i32 0, i32 19}
!216 = !{!"function_entry_count", i64 4053861}
!217 = !{!"branch_weights", i32 3408656, i32 645205}
!218 = !{!"branch_weights", i32 3408387, i32 269}
!219 = !{!"branch_weights", i32 72, i32 3408584}
!220 = !{!"branch_weights", i32 3408584, i32 0}
!221 = !{!"function_entry_count", i64 7300}
!222 = !{!"branch_weights", i32 0, i32 3675869}
!223 = !{!"function_entry_count", i64 19603084}
!224 = !{!"jump.c;mark_jump_label_1"}
!225 = !{!"branch_weights", i32 6067106, i32 1895689, i32 0, i32 5038594, i32 2503618, i32 0, i32 118643, i32 413035, i32 957384, i32 0, i32 464452, i32 902485, i32 1241940, i32 138, i32 0}
!226 = distinct !{!226, !108, !109}
!227 = !{!"branch_weights", i32 14978, i32 449474}
!228 = !{!"branch_weights", i32 449474, i32 0}
!229 = !{!"branch_weights", i32 5592, i32 896893}
!230 = !{!"branch_weights", i32 0, i32 0, i32 -1282438071}
!231 = !{!"branch_weights", i32 1241940, i32 0}
!232 = !{!"branch_weights", i32 243006, i32 998934}
!233 = !{!"branch_weights", i32 998934, i32 0}
!234 = !{!"branch_weights", i32 46, i32 998888}
!235 = !{!"branch_weights", i32 998888, i32 0}
!236 = !{!"branch_weights", i32 46, i32 0}
!237 = !{!"branch_weights", i32 138, i32 0}
!238 = !{!"branch_weights", i32 137, i32 1}
!239 = !{!"branch_weights", i32 242869, i32 137}
!240 = distinct !{!240, !108, !109}
!241 = !{!"branch_weights", i32 1, i32 7479555}
!242 = !{!"branch_weights", i32 2326876, i32 12754449, i32 119419}
!243 = !{!"branch_weights", i32 119418, i32 1}
!244 = !{!"branch_weights", i32 119663, i32 119418}
!245 = distinct !{!245, !108, !109}
!246 = !{!"branch_weights", i32 7721189, i32 7479555}
!247 = distinct !{!247, !108, !109}
!248 = distinct !{!248, !108, !109}
!249 = distinct !{!249, !108, !109}
!250 = distinct !{!250, !108, !109}
!251 = distinct !{!251, !108, !109}
!252 = distinct !{!252, !108, !109}
!253 = distinct !{!253, !108, !109}
!254 = distinct !{!254, !108, !109}
!255 = !{!"function_entry_count", i64 59618}
!256 = !{!"branch_weights", i32 213398, i32 0}
!257 = !{!"branch_weights", i32 320, i32 213078}
!258 = !{!"function_entry_count", i64 1066600}
!259 = !{!"jump.c;redirect_exp_1"}
!260 = !{!"branch_weights", i32 213398, i32 853202}
!261 = !{!"branch_weights", i32 0, i32 213398}
!262 = !{!"branch_weights", i32 0, i32 853202}
!263 = !{!"branch_weights", i32 213203, i32 639999}
!264 = !{!"branch_weights", i32 213203, i32 426796}
!265 = !{!"branch_weights", i32 0, i32 426796, i32 0}
!266 = distinct !{!266, !108, !109}
!267 = !{!"branch_weights", i32 0, i32 426796}
!268 = distinct !{!268, !108, !109}
!269 = !{!"function_entry_count", i64 84455}
!270 = !{!"branch_weights", i32 0, i32 84455}
!271 = !{!"branch_weights", i32 84455, i32 0}
!272 = !{!"branch_weights", i32 509636, i32 0}
!273 = !{!"branch_weights", i32 0, i32 509636}
!274 = !{!"function_entry_count", i64 59619}
!275 = !{i32 0, i32 2}
!276 = !{!"branch_weights", i32 144073, i32 365563}
!277 = !{!"jump.c;invert_exp_1"}
!278 = !{!"branch_weights", i32 365563, i32 0}
!279 = !{!"branch_weights", i32 0, i32 365563}
!280 = !{!"function_entry_count", i64 1}
!281 = !{!"branch_weights", i32 320, i32 365243}
!282 = !{!"branch_weights", i32 296238, i32 69325}
!283 = !{!"function_entry_count", i64 365562}
!284 = !{!"branch_weights", i32 365562, i32 0}
!285 = !{!"branch_weights", i32 0, i32 365562}
!286 = !{!"function_entry_count", i64 416230}
!287 = !{!"branch_weights", i32 24099, i32 392131}
!288 = !{!"branch_weights", i32 374211, i32 17920, i32 0}
!289 = !{!"branch_weights", i32 710, i32 17210, i32 0}
!290 = !{!"branch_weights", i32 16441, i32 769}
!291 = !{!"branch_weights", i32 0, i32 16441}
!292 = !{!99, !99, i64 0}
!293 = !{!294, !93, i64 8}
!294 = !{!"subreg_info", !97, i64 0, !97, i64 4, !93, i64 8}
!295 = !{!294, !97, i64 0}
!296 = !{!"branch_weights", i32 16441, i32 0}
!297 = !{!"branch_weights", i32 16325, i32 116}
!298 = !{!"branch_weights", i32 109652, i32 265269}
!299 = !{!"branch_weights", i32 102020, i32 0, i32 0, i32 0, i32 0, i32 3547, i32 0, i32 0, i32 4085, i32 0}
!300 = !{!"branch_weights", i32 95519, i32 6501}
!301 = !{!"branch_weights", i32 56582, i32 38937}
!302 = !{!"branch_weights", i32 1276, i32 55306}
!303 = !{!304, !93, i64 32}
!304 = !{!"mem_attrs", !92, i64 0, !92, i64 8, !92, i64 16, !97, i64 24, !97, i64 28, !93, i64 32}
!305 = !{!"branch_weights", i32 1269, i32 55313}
!306 = !{!"branch_weights", i32 56582, i32 0}
!307 = !{!308, !92, i64 1024}
!308 = !{!"gcc_target", !309, i64 0, !311, i64 368, !312, i64 664, !97, i64 744, !92, i64 752, !92, i64 760, !92, i64 768, !92, i64 776, !92, i64 784, !92, i64 792, !92, i64 800, !92, i64 808, !92, i64 816, !92, i64 824, !92, i64 832, !92, i64 840, !92, i64 848, !92, i64 856, !92, i64 864, !92, i64 872, !92, i64 880, !92, i64 888, !92, i64 896, !92, i64 904, !92, i64 912, !92, i64 920, !92, i64 928, !92, i64 936, !92, i64 944, !92, i64 952, !92, i64 960, !92, i64 968, !92, i64 976, !92, i64 984, !92, i64 992, !92, i64 1000, !92, i64 1008, !92, i64 1016, !92, i64 1024, !92, i64 1032, !92, i64 1040, !92, i64 1048, !92, i64 1056, !98, i64 1064, !98, i64 1072, !92, i64 1080, !92, i64 1088, !92, i64 1096, !92, i64 1104, !92, i64 1112, !92, i64 1120, !92, i64 1128, !92, i64 1136, !92, i64 1144, !92, i64 1152, !92, i64 1160, !92, i64 1168, !313, i64 1176, !92, i64 1232, !92, i64 1240, !92, i64 1248, !92, i64 1256, !92, i64 1264, !92, i64 1272, !92, i64 1280, !92, i64 1288, !92, i64 1296, !92, i64 1304, !92, i64 1312, !92, i64 1320, !92, i64 1328, !92, i64 1336, !92, i64 1344, !92, i64 1352, !92, i64 1360, !92, i64 1368, !92, i64 1376, !92, i64 1384, !92, i64 1392, !92, i64 1400, !92, i64 1408, !92, i64 1416, !92, i64 1424, !92, i64 1432, !92, i64 1440, !92, i64 1448, !92, i64 1456, !98, i64 1464, !314, i64 1472, !92, i64 1664, !92, i64 1672, !92, i64 1680, !92, i64 1688, !92, i64 1696, !92, i64 1704, !92, i64 1712, !92, i64 1720, !92, i64 1728, !92, i64 1736, !92, i64 1744, !92, i64 1752, !92, i64 1760, !92, i64 1768, !92, i64 1776, !315, i64 1784, !316, i64 1792, !317, i64 1896, !318, i64 1968, !92, i64 2016, !93, i64 2024, !93, i64 2025, !93, i64 2026, !93, i64 2027, !93, i64 2028, !93, i64 2029, !93, i64 2030, !93, i64 2031, !93, i64 2032, !93, i64 2033, !93, i64 2034, !93, i64 2035}
!309 = !{!"asm_out", !92, i64 0, !92, i64 8, !92, i64 16, !310, i64 24, !310, i64 56, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !92, i64 184, !92, i64 192, !92, i64 200, !92, i64 208, !92, i64 216, !92, i64 224, !92, i64 232, !92, i64 240, !92, i64 248, !92, i64 256, !92, i64 264, !92, i64 272, !92, i64 280, !92, i64 288, !92, i64 296, !92, i64 304, !92, i64 312, !92, i64 320, !92, i64 328, !92, i64 336, !92, i64 344, !92, i64 352, !92, i64 360}
!310 = !{!"asm_int_op", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24}
!311 = !{!"sched", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !92, i64 184, !92, i64 192, !92, i64 200, !92, i64 208, !92, i64 216, !92, i64 224, !92, i64 232, !92, i64 240, !92, i64 248, !92, i64 256, !92, i64 264, !92, i64 272, !92, i64 280, !92, i64 288}
!312 = !{!"vectorize", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72}
!313 = !{!"addr_space", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48}
!314 = !{!"calls", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !92, i64 184}
!315 = !{!"c", !92, i64 0}
!316 = !{!"cxx", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96}
!317 = !{!"emutls", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !93, i64 64, !93, i64 65}
!318 = !{!"target_option_hooks", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40}
!319 = !{!"VP", i32 0, i64 95519, i64 -4444659809727022860, i64 95519}
!320 = !{!"branch_weights", i32 91382, i32 4137}
!321 = !{!"branch_weights", i32 149, i32 3988}
!322 = !{!"branch_weights", i32 317, i32 3671}
!323 = !{!"branch_weights", i32 466, i32 0}
!324 = !{!"branch_weights", i32 4885, i32 86497}
!325 = !{!"branch_weights", i32 1989, i32 2896}
!326 = !{!"branch_weights", i32 2560, i32 83937}
!327 = !{!"branch_weights", i32 1, i32 22929}
!328 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 93999, i32 0, i32 56599, i32 2708}
!329 = !{!"branch_weights", i32 60115, i32 33884}
!330 = !{!"branch_weights", i32 2708, i32 0}
!331 = !{!"branch_weights", i32 5433, i32 1816}
!332 = !{!"branch_weights", i32 892, i32 4541}
!333 = distinct !{!333, !108, !109}
!334 = !{!"branch_weights", i32 130377, i32 22929}
!335 = distinct !{!335, !108, !109}
!336 = !{!"function_entry_count", i64 3500357}
!337 = !{!"branch_weights", i32 1975220, i32 1525137, i32 0}
!338 = !{!"branch_weights", i32 942, i32 1524195}
!339 = !{!"branch_weights", i32 0, i32 942}
!340 = !{!"function_entry_count", i64 1544}
!341 = !{!"branch_weights", i32 0, i32 1544}
!342 = !{!"branch_weights", i32 1544, i32 0}
