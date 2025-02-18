; ModuleID = 'simplify-rtx.c'
source_filename = "simplify-rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.real_value = type { i32, [3 x i64] }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.simplify_plus_minus_op_data = type { ptr, i16 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@.str = private unnamed_addr constant [15 x i8] c"simplify-rtx.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@dconst0 = external global %struct.real_value, align 8
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_rounding_math = external local_unnamed_addr global i32, align 4
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@warn_strict_overflow = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"assuming signed overflow does not occur when assuming abs (x) < 0 is false\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"assuming signed overflow does not occur when assuming abs (x) >= 0 is true\00", align 1
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@flag_associative_math = external local_unnamed_addr global i32, align 4
@dconst2 = external global %struct.real_value, align 8
@dconstm1 = external global %struct.real_value, align 8
@flag_reciprocal_math = external local_unnamed_addr global i32, align 4
@dconst1 = external global %struct.real_value, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !138 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !139
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !138 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !139
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !138 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !149

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !143
  %11 = load i8, ptr %3, align 1, !tbaa !150
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !138 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !149

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !143
  %11 = load i8, ptr %3, align 1, !tbaa !150
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !138 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !139
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !149

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !143
  %11 = load i8, ptr %3, align 1, !tbaa !150
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !138 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !139
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !138 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !149

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !151
  store i8 %12, ptr %4, align 1, !tbaa !150
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !138 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !149

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !151
  store i8 %12, ptr %4, align 1, !tbaa !150
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !138 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !139
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !149

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !151
  store i8 %12, ptr %4, align 1, !tbaa !150
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !138 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !138 {
  %2 = load i32, ptr %0, align 8, !tbaa !153
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !138 {
  %2 = load i32, ptr %0, align 8, !tbaa !153
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !138 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !154
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !138 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !154
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !138 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !138 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !138 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !138 {
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
  br i1 %23, label %7, label %24, !llvm.loop !155

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !138 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @mode_signbit_p(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !138 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !150
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %49, !prof !158

7:                                                ; preds = %2
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %9 = load i8, ptr %8, align 1, !tbaa !150
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %49, label %13, !prof !159

13:                                               ; preds = %7
  %14 = icmp ult i8 %9, 9
  br i1 %14, label %15, label %21, !prof !158

15:                                               ; preds = %13
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %21, !prof !158

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %34

21:                                               ; preds = %15, %13
  %22 = icmp ult i8 %9, 17
  br i1 %22, label %23, label %49

23:                                               ; preds = %21
  %24 = load i32, ptr %1, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !150
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = add nsw i32 %11, -64
  br label %34

34:                                               ; preds = %31, %19
  %35 = phi ptr [ %20, %19 ], [ %32, %31 ]
  %36 = phi i32 [ %11, %19 ], [ %33, %31 ]
  %37 = load i64, ptr %35, align 8, !tbaa !150
  %38 = icmp ult i32 %36, 64
  %39 = zext nneg i32 %36 to i64
  %40 = shl nsw i64 -1, %39
  %41 = xor i64 %40, -1
  %42 = select i1 %38, i64 %41, i64 -1, !prof !158
  %43 = and i64 %42, %37
  %44 = add nsw i32 %36, -1
  %45 = zext nneg i32 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = icmp eq i64 %43, %46
  %48 = zext i1 %47 to i8
  br label %49

49:                                               ; preds = %21, %23, %27, %7, %2, %34
  %50 = phi i8 [ %48, %34 ], [ 0, %2 ], [ 0, %7 ], [ 0, %27 ], [ 0, %23 ], [ 0, %21 ]
  ret i8 %50
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !160 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !154
  switch i32 %7, label %11 [
    i32 0, label %9
    i32 1, label %8
  ], !prof !161

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 1691, %8 ], [ 1690, %4 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %10, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %9, %4
  %12 = icmp eq i32 %7, 3
  br i1 %12, label %13, label %18, !prof !162

13:                                               ; preds = %11
  %14 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #17
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr %3, ptr %2, !prof !163
  %17 = select i1 %15, ptr %2, ptr %3, !prof !163
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi ptr [ %3, %11 ], [ %16, %13 ]
  %20 = phi ptr [ %2, %11 ], [ %17, %13 ]
  %21 = tail call ptr @avoid_constant_pool_reference(ptr noundef %20)
  %22 = tail call ptr @avoid_constant_pool_reference(ptr noundef %19)
  %23 = tail call ptr @simplify_const_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %21, ptr noundef %22)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27, !prof !164

25:                                               ; preds = %18
  %26 = tail call fastcc ptr @simplify_binary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %20, ptr noundef %19, ptr noundef %21, ptr noundef %22)
  br label %27

27:                                               ; preds = %18, %25
  %28 = phi ptr [ %26, %25 ], [ %23, %18 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %40, !prof !165

30:                                               ; preds = %27
  br i1 %12, label %31, label %36, !prof !166

31:                                               ; preds = %30
  %32 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #17
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr %2, ptr %3, !prof !167
  %35 = select i1 %33, ptr %3, ptr %2, !prof !167
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi ptr [ %2, %30 ], [ %34, %31 ]
  %38 = phi ptr [ %3, %30 ], [ %35, %31 ]
  %39 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %37, ptr noundef %38) #17
  br label %40

40:                                               ; preds = %27, %36
  %41 = phi ptr [ %39, %36 ], [ %28, %27 ]
  ret ptr %41
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !168 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.real_value, align 8
  %10 = alloca [2 x ptr], align 16
  %11 = alloca %struct.real_value, align 8
  %12 = alloca [4 x i64], align 16
  %13 = alloca [4 x i64], align 16
  %14 = alloca %struct.real_value, align 8
  %15 = alloca %struct.real_value, align 8
  %16 = alloca %struct.real_value, align 8
  %17 = alloca %struct.real_value, align 8
  %18 = alloca %struct.real_value, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !154
  switch i32 %25, label %33 [
    i32 0, label %26
    i32 1, label %27
    i32 3, label %28
  ], !prof !169

26:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1690, ptr noundef nonnull @.str.1) #17
  br label %33

27:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1691, ptr noundef nonnull @.str.1) #17
  br label %33

28:                                               ; preds = %4
  %29 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #17
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, ptr %3, ptr %2, !prof !163
  %32 = select i1 %30, ptr %2, ptr %3, !prof !163
  br label %33

33:                                               ; preds = %27, %26, %4, %28
  %34 = phi ptr [ %3, %27 ], [ %31, %28 ], [ %3, %26 ], [ %3, %4 ]
  %35 = phi ptr [ %2, %27 ], [ %32, %28 ], [ %2, %26 ], [ %2, %4 ]
  %36 = tail call ptr @avoid_constant_pool_reference(ptr noundef %35)
  %37 = tail call ptr @avoid_constant_pool_reference(ptr noundef %34)
  %38 = zext i32 %1 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !150
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 3
  %43 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %38
  %44 = load i8, ptr %43, align 1, !tbaa !150
  switch i8 %44, label %45 [
    i8 12, label %49
    i8 17, label %49
    i8 13, label %49
    i8 14, label %49
    i8 15, label %49
  ], !prof !170

45:                                               ; preds = %33
  %46 = icmp eq i8 %44, 16
  %47 = icmp ne i32 %0, 125
  %48 = and i1 %47, %46
  br i1 %48, label %51, label %104, !prof !171

49:                                               ; preds = %33, %33, %33, %33, %33
  %50 = icmp eq i32 %0, 125
  br i1 %50, label %104, label %51

51:                                               ; preds = %49, %45
  %52 = load i32, ptr %36, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 33
  br i1 %54, label %55, label %104

55:                                               ; preds = %51
  %56 = load i32, ptr %37, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 33
  br i1 %58, label %59, label %104

59:                                               ; preds = %55
  %60 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %38
  %61 = load i8, ptr %60, align 1, !tbaa !150
  %62 = zext i8 %61 to i32
  %63 = lshr i32 %52, 16
  %64 = and i32 %63, 255
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !150
  %68 = lshr i32 %56, 16
  %69 = and i32 %68, 255
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !150
  %73 = tail call ptr @rtvec_alloc(i32 noundef %62) #17
  %74 = icmp eq i8 %67, %61
  br i1 %74, label %76, label %75

75:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3099, ptr noundef nonnull @.str.1) #17
  br label %76

76:                                               ; preds = %75, %59
  %77 = icmp eq i8 %72, %61
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3100, ptr noundef nonnull @.str.1) #17
  br label %79

79:                                               ; preds = %78, %76
  %80 = icmp eq i8 %61, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %83 = load i8, ptr %82, align 1, !tbaa !150
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %86 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %87 = zext i8 %61 to i64
  br label %88

88:                                               ; preds = %81, %98
  %89 = phi i64 [ 0, %81 ], [ %100, %98 ]
  %90 = load ptr, ptr %85, align 8, !tbaa !150
  %91 = getelementptr inbounds %struct.rtvec_def, ptr %90, i64 0, i32 1, i64 %89
  %92 = load ptr, ptr %91, align 8, !tbaa !139
  %93 = load ptr, ptr %86, align 8, !tbaa !150
  %94 = getelementptr inbounds %struct.rtvec_def, ptr %93, i64 0, i32 1, i64 %89
  %95 = load ptr, ptr %94, align 8, !tbaa !139
  %96 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %84, ptr noundef %92, ptr noundef %95)
  %97 = icmp eq ptr %96, null
  br i1 %97, label %684, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.rtvec_def, ptr %73, i64 0, i32 1, i64 %89
  store ptr %96, ptr %99, align 8, !tbaa !139
  %100 = add nuw nsw i64 %89, 1
  %101 = icmp eq i64 %100, %87
  br i1 %101, label %102, label %88, !llvm.loop !172

102:                                              ; preds = %98, %79
  %103 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %73) #17
  br label %684

104:                                              ; preds = %51, %45, %55, %49
  switch i8 %44, label %105 [
    i8 12, label %109
    i8 17, label %109
    i8 13, label %109
    i8 14, label %109
    i8 15, label %109
  ], !prof !170

105:                                              ; preds = %104
  %106 = icmp eq i8 %44, 16
  %107 = icmp eq i32 %0, 125
  %108 = and i1 %107, %106
  br i1 %108, label %111, label %199, !prof !171

109:                                              ; preds = %104, %104, %104, %104, %104
  %110 = icmp eq i32 %0, 125
  br i1 %110, label %111, label %199

111:                                              ; preds = %109, %105
  %112 = load i32, ptr %36, align 8
  %113 = and i32 %112, 65535
  %114 = add nsw i32 %113, -30
  %115 = icmp ult i32 %114, 3
  br i1 %115, label %116, label %199

116:                                              ; preds = %111
  %117 = load i32, ptr %37, align 8
  %118 = and i32 %117, 65535
  %119 = add nsw i32 %118, -30
  %120 = icmp ult i32 %119, 3
  br i1 %120, label %121, label %199

121:                                              ; preds = %116
  %122 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %38
  %123 = load i8, ptr %122, align 1, !tbaa !150
  %124 = zext i8 %123 to i32
  %125 = tail call ptr @rtvec_alloc(i32 noundef %124) #17
  %126 = icmp ugt i8 %123, 1
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3126, ptr noundef nonnull @.str.1) #17
  br label %128

128:                                              ; preds = %127, %121
  %129 = icmp eq i8 %123, 2
  %130 = load i32, ptr %36, align 8
  br i1 %129, label %131, label %143

131:                                              ; preds = %128
  %132 = and i32 %130, 65535
  %133 = icmp eq i32 %132, 33
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3129, ptr noundef nonnull @.str.1) #17
  br label %135

135:                                              ; preds = %134, %131
  %136 = load i32, ptr %37, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 33
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3130, ptr noundef nonnull @.str.1) #17
  br label %140

140:                                              ; preds = %139, %135
  %141 = getelementptr inbounds %struct.rtvec_def, ptr %125, i64 0, i32 1
  store ptr %36, ptr %141, align 8, !tbaa !139
  %142 = getelementptr inbounds %struct.rtvec_def, ptr %125, i64 1
  store ptr %37, ptr %142, align 8, !tbaa !139
  br label %197

143:                                              ; preds = %128
  %144 = lshr i32 %130, 16
  %145 = and i32 %144, 255
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !150
  %149 = zext i8 %148 to i32
  %150 = load i32, ptr %37, align 8
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !150
  %156 = zext i8 %155 to i32
  %157 = and i32 %130, 65535
  %158 = icmp eq i32 %157, 33
  br i1 %158, label %160, label %159

159:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3141, ptr noundef nonnull @.str.1) #17
  br label %160

160:                                              ; preds = %159, %143
  %161 = load i32, ptr %37, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 33
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3142, ptr noundef nonnull @.str.1) #17
  br label %165

165:                                              ; preds = %164, %160
  %166 = add nuw nsw i32 %156, %149
  %167 = icmp eq i32 %166, %124
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3143, ptr noundef nonnull @.str.1) #17
  br label %169

169:                                              ; preds = %168, %165
  %170 = icmp eq i8 %148, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %173 = zext i8 %148 to i64
  br label %180

174:                                              ; preds = %180, %169
  %175 = icmp eq i8 %155, 0
  br i1 %175, label %197, label %176

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %178 = zext i8 %148 to i64
  %179 = zext i8 %155 to i64
  br label %188

180:                                              ; preds = %171, %180
  %181 = phi i64 [ 0, %171 ], [ %186, %180 ]
  %182 = load ptr, ptr %172, align 8, !tbaa !150
  %183 = getelementptr inbounds %struct.rtvec_def, ptr %182, i64 0, i32 1, i64 %181
  %184 = load ptr, ptr %183, align 8, !tbaa !139
  %185 = getelementptr inbounds %struct.rtvec_def, ptr %125, i64 0, i32 1, i64 %181
  store ptr %184, ptr %185, align 8, !tbaa !139
  %186 = add nuw nsw i64 %181, 1
  %187 = icmp eq i64 %186, %173
  br i1 %187, label %174, label %180, !llvm.loop !173

188:                                              ; preds = %176, %188
  %189 = phi i64 [ 0, %176 ], [ %195, %188 ]
  %190 = load ptr, ptr %177, align 8, !tbaa !150
  %191 = getelementptr inbounds %struct.rtvec_def, ptr %190, i64 0, i32 1, i64 %189
  %192 = load ptr, ptr %191, align 8, !tbaa !139
  %193 = add nuw nsw i64 %189, %178
  %194 = getelementptr inbounds %struct.rtvec_def, ptr %125, i64 0, i32 1, i64 %193
  store ptr %192, ptr %194, align 8, !tbaa !139
  %195 = add nuw nsw i64 %189, 1
  %196 = icmp eq i64 %195, %179
  br i1 %196, label %197, label %188, !llvm.loop !174

197:                                              ; preds = %188, %174, %140
  %198 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %125) #17
  br label %684

199:                                              ; preds = %111, %105, %116, %109
  %200 = and i8 %44, -2
  %201 = icmp eq i8 %200, 8
  br i1 %201, label %202, label %426, !prof !171

202:                                              ; preds = %199
  %203 = load i32, ptr %36, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 32
  br i1 %205, label %206, label %426

206:                                              ; preds = %202
  %207 = load i32, ptr %37, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 32
  br i1 %209, label %210, label %426

210:                                              ; preds = %206
  %211 = lshr i32 %203, 16
  %212 = and i32 %211, 255
  %213 = icmp eq i32 %212, %1
  br i1 %213, label %214, label %426

214:                                              ; preds = %210
  %215 = lshr i32 %207, 16
  %216 = and i32 %215, 255
  %217 = icmp eq i32 %216, %1
  br i1 %217, label %218, label %426

218:                                              ; preds = %214
  %219 = add i32 %0, -61
  %220 = icmp ult i32 %219, 3
  br i1 %220, label %221, label %258

221:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #17
  %222 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %223 = load i32, ptr %36, align 8
  %224 = lshr i32 %223, 16
  %225 = and i32 %224, 255
  %226 = call i64 @real_to_target(ptr noundef nonnull %12, ptr noundef nonnull %222, i32 noundef %225) #17
  %227 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %228 = load i32, ptr %37, align 8
  %229 = lshr i32 %228, 16
  %230 = and i32 %229, 255
  %231 = call i64 @real_to_target(ptr noundef nonnull %13, ptr noundef nonnull %227, i32 noundef %230) #17
  br label %232

232:                                              ; preds = %221, %253
  %233 = phi i64 [ 0, %221 ], [ %254, %253 ]
  switch i32 %0, label %252 [
    i32 61, label %234
    i32 62, label %240
    i32 63, label %246
  ]

234:                                              ; preds = %232
  %235 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 %233
  %236 = load i64, ptr %235, align 8, !tbaa !175
  %237 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 %233
  %238 = load i64, ptr %237, align 8, !tbaa !175
  %239 = and i64 %238, %236
  store i64 %239, ptr %237, align 8, !tbaa !175
  br label %253

240:                                              ; preds = %232
  %241 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 %233
  %242 = load i64, ptr %241, align 8, !tbaa !175
  %243 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 %233
  %244 = load i64, ptr %243, align 8, !tbaa !175
  %245 = or i64 %244, %242
  store i64 %245, ptr %243, align 8, !tbaa !175
  br label %253

246:                                              ; preds = %232
  %247 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 %233
  %248 = load i64, ptr %247, align 8, !tbaa !175
  %249 = getelementptr inbounds [4 x i64], ptr %12, i64 0, i64 %233
  %250 = load i64, ptr %249, align 8, !tbaa !175
  %251 = xor i64 %250, %248
  store i64 %251, ptr %249, align 8, !tbaa !175
  br label %253

252:                                              ; preds = %232
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3186, ptr noundef nonnull @.str.1) #17
  br label %253

253:                                              ; preds = %252, %246, %240, %234
  %254 = add nuw nsw i64 %233, 1
  %255 = icmp eq i64 %254, 4
  br i1 %255, label %256, label %232, !llvm.loop !176

256:                                              ; preds = %253
  call void @real_from_target(ptr noundef nonnull %14, ptr noundef nonnull %12, i32 noundef %1) #17
  %257 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %14, i32 noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #17
  br label %684

258:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #17
  %259 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %259, i64 32, i1 false), !tbaa.struct !177
  %260 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %260, i64 32, i1 false), !tbaa.struct !177
  call void @real_convert(ptr noundef nonnull %15, i32 noundef %1, ptr noundef nonnull %15) #17
  call void @real_convert(ptr noundef nonnull %16, i32 noundef %1, ptr noundef nonnull %16) #17
  %261 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %281, label %263

263:                                              ; preds = %258
  switch i8 %44, label %281 [
    i8 8, label %264
    i8 9, label %264
    i8 11, label %264
    i8 17, label %264
  ]

264:                                              ; preds = %263, %263, %263, %263
  %265 = add nsw i32 %1, -38
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !139
  %269 = getelementptr inbounds %struct.real_format, ptr %268, i64 0, i32 11
  %270 = load i8, ptr %269, align 2, !tbaa !178
  %271 = icmp eq i8 %270, 0
  %272 = load i32, ptr @flag_finite_math_only, align 4
  %273 = icmp ne i32 %272, 0
  %274 = select i1 %271, i1 true, i1 %273
  br i1 %274, label %281, label %275

275:                                              ; preds = %264
  %276 = call zeroext i8 @real_isnan(ptr noundef nonnull %15) #17
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %424

278:                                              ; preds = %275
  %279 = call zeroext i8 @real_isnan(ptr noundef nonnull %16) #17
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %281, label %424

281:                                              ; preds = %278, %264, %263, %258
  %282 = icmp eq i32 %0, 55
  br i1 %282, label %283, label %298

283:                                              ; preds = %281
  %284 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %16, ptr noundef nonnull @dconst0) #17
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %298, label %286

286:                                              ; preds = %283
  %287 = load i32, ptr @flag_trapping_math, align 4, !tbaa !154
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %424

289:                                              ; preds = %286
  switch i8 %44, label %424 [
    i8 8, label %290
    i8 9, label %290
    i8 11, label %290
    i8 17, label %290
  ]

290:                                              ; preds = %289, %289, %289, %289
  %291 = add nsw i32 %1, -38
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %292
  %294 = load ptr, ptr %293, align 8, !tbaa !139
  %295 = getelementptr inbounds %struct.real_format, ptr %294, i64 0, i32 12
  %296 = load i8, ptr %295, align 1, !tbaa !180
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %424, label %298

298:                                              ; preds = %290, %283, %281
  switch i8 %44, label %335 [
    i8 8, label %299
    i8 9, label %299
    i8 11, label %299
    i8 17, label %299
  ]

299:                                              ; preds = %298, %298, %298, %298
  %300 = add nsw i32 %1, -38
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !139
  %304 = getelementptr inbounds %struct.real_format, ptr %303, i64 0, i32 12
  %305 = load i8, ptr %304, align 1, !tbaa !180
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %335, label %307

307:                                              ; preds = %299
  switch i8 %44, label %335 [
    i8 8, label %308
    i8 9, label %308
    i8 11, label %308
    i8 17, label %308
  ]

308:                                              ; preds = %307, %307, %307, %307
  %309 = add nsw i32 %1, -38
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !139
  %313 = getelementptr inbounds %struct.real_format, ptr %312, i64 0, i32 11
  %314 = load i8, ptr %313, align 2, !tbaa !178
  %315 = icmp ne i8 %314, 0
  %316 = load i32, ptr @flag_finite_math_only, align 4
  %317 = icmp eq i32 %316, 0
  %318 = select i1 %315, i1 %317, i1 false
  %319 = load i32, ptr @flag_trapping_math, align 4
  %320 = icmp ne i32 %319, 0
  %321 = select i1 %318, i1 %320, i1 false
  br i1 %321, label %322, label %335

322:                                              ; preds = %308
  %323 = call zeroext i8 @real_isinf(ptr noundef nonnull %15) #17
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %335, label %325

325:                                              ; preds = %322
  %326 = call zeroext i8 @real_isinf(ptr noundef nonnull %16) #17
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %335, label %328

328:                                              ; preds = %325
  %329 = call zeroext i8 @real_isneg(ptr noundef nonnull %15) #17
  %330 = call zeroext i8 @real_isneg(ptr noundef nonnull %16) #17
  switch i32 %0, label %373 [
    i32 49, label %331
    i32 50, label %333
    i32 55, label %424
    i32 52, label %337
  ]

331:                                              ; preds = %328
  %332 = icmp eq i8 %329, %330
  br i1 %332, label %335, label %424

333:                                              ; preds = %328
  %334 = icmp eq i8 %329, %330
  br i1 %334, label %424, label %335

335:                                              ; preds = %333, %331, %325, %322, %308, %307, %299, %298
  %336 = icmp eq i32 %0, 52
  br i1 %336, label %337, label %373

337:                                              ; preds = %328, %335
  switch i8 %44, label %373 [
    i8 8, label %338
    i8 9, label %338
    i8 11, label %338
    i8 17, label %338
  ]

338:                                              ; preds = %337, %337, %337, %337
  %339 = add nsw i32 %1, -38
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !139
  %343 = getelementptr inbounds %struct.real_format, ptr %342, i64 0, i32 12
  %344 = load i8, ptr %343, align 1, !tbaa !180
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %373, label %346

346:                                              ; preds = %338
  switch i8 %44, label %373 [
    i8 8, label %347
    i8 9, label %347
    i8 11, label %347
    i8 17, label %347
  ]

347:                                              ; preds = %346, %346, %346, %346
  %348 = add nsw i32 %1, -38
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !139
  %352 = getelementptr inbounds %struct.real_format, ptr %351, i64 0, i32 11
  %353 = load i8, ptr %352, align 2, !tbaa !178
  %354 = icmp ne i8 %353, 0
  %355 = load i32, ptr @flag_finite_math_only, align 4
  %356 = icmp eq i32 %355, 0
  %357 = select i1 %354, i1 %356, i1 false
  %358 = load i32, ptr @flag_trapping_math, align 4
  %359 = icmp ne i32 %358, 0
  %360 = select i1 %357, i1 %359, i1 false
  br i1 %360, label %361, label %373

361:                                              ; preds = %347
  %362 = call zeroext i8 @real_isinf(ptr noundef nonnull %15) #17
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %361
  %365 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %16, ptr noundef nonnull @dconst0) #17
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %424

367:                                              ; preds = %364, %361
  %368 = call zeroext i8 @real_isinf(ptr noundef nonnull %16) #17
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %367
  %371 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %15, ptr noundef nonnull @dconst0) #17
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %373, label %424

373:                                              ; preds = %370, %367, %337, %347, %346, %338, %335, %328
  %374 = call i32 @rtx_to_tree_code(i32 noundef %0) #17
  %375 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %17, i32 noundef %374, ptr noundef nonnull %15, ptr noundef nonnull %16) #17
  call void @real_convert(ptr noundef nonnull %18, i32 noundef %1, ptr noundef nonnull %17) #17
  %376 = load i32, ptr @flag_trapping_math, align 4, !tbaa !154
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %396, label %378

378:                                              ; preds = %373
  switch i8 %44, label %396 [
    i8 8, label %379
    i8 9, label %379
    i8 11, label %379
    i8 17, label %379
  ]

379:                                              ; preds = %378, %378, %378, %378
  %380 = add nsw i32 %1, -38
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !139
  %384 = getelementptr inbounds %struct.real_format, ptr %383, i64 0, i32 12
  %385 = load i8, ptr %384, align 1, !tbaa !180
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %396, label %387

387:                                              ; preds = %379
  %388 = call zeroext i8 @real_isinf(ptr noundef nonnull %18) #17
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %396, label %390

390:                                              ; preds = %387
  %391 = call zeroext i8 @real_isinf(ptr noundef nonnull %15) #17
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = call zeroext i8 @real_isinf(ptr noundef nonnull %16) #17
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %424, label %396

396:                                              ; preds = %393, %390, %387, %379, %378, %373
  %397 = load i32, ptr @flag_rounding_math, align 4, !tbaa !154
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %417

399:                                              ; preds = %396
  switch i8 %44, label %422 [
    i8 8, label %400
    i8 9, label %400
    i8 11, label %400
    i8 17, label %400
  ]

400:                                              ; preds = %399, %399, %399, %399
  %401 = add nsw i32 %1, -38
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %402
  %404 = load ptr, ptr %403, align 8, !tbaa !139
  %405 = getelementptr inbounds %struct.real_format, ptr %404, i64 0, i32 4
  %406 = load i32, ptr %405, align 8, !tbaa !181
  %407 = add nsw i32 %1, -38
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !139
  %411 = getelementptr inbounds %struct.real_format, ptr %410, i64 0, i32 3
  %412 = load i32, ptr %411, align 4, !tbaa !182
  %413 = icmp sge i32 %406, %412
  %414 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %413, i1 true, i1 %415
  br i1 %416, label %422, label %417

417:                                              ; preds = %400, %396
  %418 = icmp eq i8 %375, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %417
  %420 = call zeroext i8 @real_identical(ptr noundef nonnull %18, ptr noundef nonnull %17) #17
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %419, %400, %399
  %423 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %18, i32 noundef %1) #17
  br label %424

424:                                              ; preds = %419, %393, %331, %328, %290, %422, %417, %370, %364, %333, %289, %286, %278, %275
  %425 = phi ptr [ %423, %422 ], [ null, %278 ], [ null, %275 ], [ null, %289 ], [ null, %286 ], [ null, %333 ], [ null, %370 ], [ null, %364 ], [ null, %417 ], [ null, %290 ], [ null, %328 ], [ null, %331 ], [ null, %393 ], [ null, %419 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #17
  br label %684

426:                                              ; preds = %214, %210, %206, %202, %199
  %427 = icmp eq i8 %44, 2
  %428 = icmp eq i8 %40, 16
  %429 = select i1 %427, i1 %428, i1 false, !prof !183
  br i1 %429, label %430, label %549, !prof !171

430:                                              ; preds = %426
  %431 = load i32, ptr %36, align 8
  %432 = trunc i32 %431 to i16
  switch i16 %432, label %549 [
    i16 32, label %433
    i16 30, label %433
  ]

433:                                              ; preds = %430, %430
  %434 = load i32, ptr %37, align 8
  %435 = trunc i32 %434 to i16
  switch i16 %435, label %549 [
    i16 32, label %436
    i16 30, label %436
  ]

436:                                              ; preds = %433, %433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #17
  %437 = load i32, ptr %36, align 8
  %438 = and i32 %437, 65535
  %439 = icmp eq i32 %438, 32
  %440 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %441 = load i64, ptr %440, align 8, !tbaa !150
  br i1 %439, label %442, label %445

442:                                              ; preds = %436
  %443 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %444 = load i64, ptr %443, align 8, !tbaa !150
  br label %447

445:                                              ; preds = %436
  %446 = ashr i64 %441, 63
  br label %447

447:                                              ; preds = %445, %442
  %448 = phi i64 [ %444, %442 ], [ %446, %445 ]
  %449 = load i32, ptr %37, align 8
  %450 = and i32 %449, 65535
  %451 = icmp eq i32 %450, 32
  %452 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %453 = load i64, ptr %452, align 8, !tbaa !150
  br i1 %451, label %454, label %457

454:                                              ; preds = %447
  %455 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %456 = load i64, ptr %455, align 8, !tbaa !150
  br label %459

457:                                              ; preds = %447
  %458 = ashr i64 %453, 63
  br label %459

459:                                              ; preds = %457, %454
  %460 = phi i64 [ %456, %454 ], [ %458, %457 ]
  switch i32 %0, label %547 [
    i32 50, label %461
    i32 49, label %465
    i32 52, label %469
    i32 55, label %471
    i32 58, label %474
    i32 59, label %477
    i32 60, label %480
    i32 61, label %483
    i32 62, label %486
    i32 63, label %489
    i32 70, label %492
    i32 71, label %500
    i32 72, label %508
    i32 73, label %516
    i32 68, label %524
    i32 67, label %524
    i32 65, label %524
    i32 66, label %524
    i32 69, label %524
  ]

461:                                              ; preds = %459
  %462 = call i32 @neg_double(i64 noundef %453, i64 noundef %460, ptr noundef nonnull %19, ptr noundef nonnull %21) #17
  %463 = load i64, ptr %19, align 8, !tbaa !175
  %464 = load i64, ptr %21, align 8, !tbaa !175
  br label %465

465:                                              ; preds = %461, %459
  %466 = phi i64 [ %453, %459 ], [ %463, %461 ]
  %467 = phi i64 [ %460, %459 ], [ %464, %461 ]
  %468 = call i32 @add_double_with_sign(i64 noundef %441, i64 noundef %448, i64 noundef %466, i64 noundef %467, ptr noundef nonnull %19, ptr noundef nonnull %21, i8 noundef zeroext 0) #17
  br label %543

469:                                              ; preds = %459
  %470 = call i32 @mul_double_with_sign(i64 noundef %441, i64 noundef %448, i64 noundef %453, i64 noundef %460, ptr noundef nonnull %19, ptr noundef nonnull %21, i8 noundef zeroext 0) #17
  br label %543

471:                                              ; preds = %459
  %472 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %441, i64 noundef %448, i64 noundef %453, i64 noundef %460, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %22) #17
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %543, label %547

474:                                              ; preds = %459
  %475 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %441, i64 noundef %448, i64 noundef %453, i64 noundef %460, ptr noundef nonnull %20, ptr noundef nonnull %22, ptr noundef nonnull %19, ptr noundef nonnull %21) #17
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %543, label %547

477:                                              ; preds = %459
  %478 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %441, i64 noundef %448, i64 noundef %453, i64 noundef %460, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %22) #17
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %543, label %547

480:                                              ; preds = %459
  %481 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %441, i64 noundef %448, i64 noundef %453, i64 noundef %460, ptr noundef nonnull %20, ptr noundef nonnull %22, ptr noundef nonnull %19, ptr noundef nonnull %21) #17
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %543, label %547

483:                                              ; preds = %459
  %484 = and i64 %453, %441
  store i64 %484, ptr %19, align 8, !tbaa !175
  %485 = and i64 %460, %448
  store i64 %485, ptr %21, align 8, !tbaa !175
  br label %543

486:                                              ; preds = %459
  %487 = or i64 %453, %441
  store i64 %487, ptr %19, align 8, !tbaa !175
  %488 = or i64 %460, %448
  store i64 %488, ptr %21, align 8, !tbaa !175
  br label %543

489:                                              ; preds = %459
  %490 = xor i64 %453, %441
  store i64 %490, ptr %19, align 8, !tbaa !175
  %491 = xor i64 %460, %448
  store i64 %491, ptr %21, align 8, !tbaa !175
  br label %543

492:                                              ; preds = %459
  %493 = icmp slt i64 %448, %460
  br i1 %493, label %498, label %494

494:                                              ; preds = %492
  %495 = icmp eq i64 %448, %460
  %496 = icmp ult i64 %441, %453
  %497 = select i1 %495, i1 %496, i1 false
  br i1 %497, label %498, label %499

498:                                              ; preds = %494, %492
  store i64 %441, ptr %19, align 8, !tbaa !175
  store i64 %448, ptr %21, align 8, !tbaa !175
  br label %543

499:                                              ; preds = %494
  store i64 %453, ptr %19, align 8, !tbaa !175
  store i64 %460, ptr %21, align 8, !tbaa !175
  br label %543

500:                                              ; preds = %459
  %501 = icmp sgt i64 %448, %460
  br i1 %501, label %506, label %502

502:                                              ; preds = %500
  %503 = icmp eq i64 %448, %460
  %504 = icmp ugt i64 %441, %453
  %505 = select i1 %503, i1 %504, i1 false
  br i1 %505, label %506, label %507

506:                                              ; preds = %502, %500
  store i64 %441, ptr %19, align 8, !tbaa !175
  store i64 %448, ptr %21, align 8, !tbaa !175
  br label %543

507:                                              ; preds = %502
  store i64 %453, ptr %19, align 8, !tbaa !175
  store i64 %460, ptr %21, align 8, !tbaa !175
  br label %543

508:                                              ; preds = %459
  %509 = icmp ult i64 %448, %460
  br i1 %509, label %514, label %510

510:                                              ; preds = %508
  %511 = icmp eq i64 %448, %460
  %512 = icmp ult i64 %441, %453
  %513 = select i1 %511, i1 %512, i1 false
  br i1 %513, label %514, label %515

514:                                              ; preds = %510, %508
  store i64 %441, ptr %19, align 8, !tbaa !175
  store i64 %448, ptr %21, align 8, !tbaa !175
  br label %543

515:                                              ; preds = %510
  store i64 %453, ptr %19, align 8, !tbaa !175
  store i64 %460, ptr %21, align 8, !tbaa !175
  br label %543

516:                                              ; preds = %459
  %517 = icmp ugt i64 %448, %460
  br i1 %517, label %522, label %518

518:                                              ; preds = %516
  %519 = icmp eq i64 %448, %460
  %520 = icmp ugt i64 %441, %453
  %521 = select i1 %519, i1 %520, i1 false
  br i1 %521, label %522, label %523

522:                                              ; preds = %518, %516
  store i64 %441, ptr %19, align 8, !tbaa !175
  store i64 %448, ptr %21, align 8, !tbaa !175
  br label %543

523:                                              ; preds = %518
  store i64 %453, ptr %19, align 8, !tbaa !175
  store i64 %460, ptr %21, align 8, !tbaa !175
  br label %543

524:                                              ; preds = %459, %459, %459, %459, %459
  %525 = icmp eq i64 %460, 0
  br i1 %525, label %526, label %547

526:                                              ; preds = %524
  %527 = zext i8 %40 to i16
  %528 = shl nuw nsw i16 %527, 3
  %529 = zext nneg i16 %528 to i64
  %530 = icmp ult i64 %453, %529
  br i1 %530, label %531, label %547

531:                                              ; preds = %526
  %532 = add i32 %0, -67
  %533 = icmp ult i32 %532, 2
  br i1 %533, label %534, label %538

534:                                              ; preds = %531
  %535 = icmp eq i32 %0, 67
  %536 = zext nneg i16 %528 to i32
  %537 = zext i1 %535 to i32
  call void @rshift_double(i64 noundef %441, i64 noundef %448, i64 noundef %453, i32 noundef %536, ptr noundef nonnull %19, ptr noundef nonnull %21, i32 noundef %537) #17
  br label %543

538:                                              ; preds = %531
  %539 = zext nneg i16 %528 to i32
  switch i32 %0, label %542 [
    i32 65, label %540
    i32 66, label %541
  ]

540:                                              ; preds = %538
  call void @lshift_double(i64 noundef %441, i64 noundef %448, i64 noundef %453, i32 noundef %539, ptr noundef nonnull %19, ptr noundef nonnull %21, i32 noundef 1) #17
  br label %543

541:                                              ; preds = %538
  call void @lrotate_double(i64 noundef %441, i64 noundef %448, i64 noundef %453, i32 noundef %539, ptr noundef nonnull %19, ptr noundef nonnull %21) #17
  br label %543

542:                                              ; preds = %538
  call void @rrotate_double(i64 noundef %441, i64 noundef %448, i64 noundef %453, i32 noundef %539, ptr noundef nonnull %19, ptr noundef nonnull %21) #17
  br label %543

543:                                              ; preds = %480, %477, %474, %542, %541, %540, %534, %523, %522, %515, %514, %507, %506, %499, %498, %489, %486, %483, %471, %469, %465
  %544 = load i64, ptr %19, align 8, !tbaa !175
  %545 = load i64, ptr %21, align 8, !tbaa !175
  %546 = call ptr @immed_double_const(i64 noundef %544, i64 noundef %545, i32 noundef %1) #17
  br label %547

547:                                              ; preds = %459, %543, %526, %524, %480, %477, %474, %471
  %548 = phi ptr [ %546, %543 ], [ null, %471 ], [ null, %474 ], [ null, %477 ], [ null, %480 ], [ null, %526 ], [ null, %524 ], [ null, %459 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #17
  br label %684

549:                                              ; preds = %433, %430, %426
  %550 = load i32, ptr %36, align 8
  %551 = and i32 %550, 65535
  %552 = icmp eq i32 %551, 30
  br i1 %552, label %553, label %684, !prof !184

553:                                              ; preds = %549
  %554 = load i32, ptr %37, align 8
  %555 = and i32 %554, 65535
  %556 = icmp eq i32 %555, 30
  %557 = icmp ult i8 %40, 9
  %558 = select i1 %556, i1 %557, i1 false, !prof !185
  %559 = icmp ne i8 %40, 0
  %560 = select i1 %558, i1 %559, i1 false, !prof !185
  br i1 %560, label %561, label %684, !prof !185

561:                                              ; preds = %553
  %562 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %563 = load i64, ptr %562, align 8, !tbaa !150
  %564 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %565 = load i64, ptr %564, align 8, !tbaa !150
  %566 = icmp ult i8 %40, 8
  br i1 %566, label %567, label %584, !prof !186

567:                                              ; preds = %561
  %568 = zext nneg i32 %42 to i64
  %569 = shl nsw i64 -1, %568
  %570 = xor i64 %569, -1
  %571 = and i64 %563, %570
  %572 = and i64 %565, %570
  %573 = add nsw i32 %42, -1
  %574 = zext nneg i32 %573 to i64
  %575 = shl nuw nsw i64 1, %574
  %576 = and i64 %571, %575
  %577 = icmp eq i64 %576, 0
  %578 = or i64 %563, %569
  %579 = select i1 %577, i64 %571, i64 %578, !prof !187
  %580 = and i64 %572, %575
  %581 = icmp eq i64 %580, 0
  %582 = or i64 %565, %569
  %583 = select i1 %581, i64 %572, i64 %582, !prof !188
  br label %584

584:                                              ; preds = %567, %561
  %585 = phi i64 [ %565, %561 ], [ %583, %567 ]
  %586 = phi i64 [ %563, %561 ], [ %579, %567 ]
  %587 = phi i64 [ %565, %561 ], [ %572, %567 ]
  %588 = phi i64 [ %563, %561 ], [ %571, %567 ]
  switch i32 %0, label %680 [
    i32 49, label %589
    i32 50, label %591
    i32 52, label %593
    i32 55, label %595
    i32 58, label %603
    i32 59, label %611
    i32 60, label %619
    i32 61, label %627
    i32 62, label %629
    i32 63, label %631
    i32 68, label %633
    i32 65, label %633
    i32 67, label %633
    i32 69, label %654
    i32 66, label %663
    i32 48, label %684
    i32 70, label %672
    i32 72, label %674
    i32 71, label %676
    i32 73, label %678
    i32 127, label %684
    i32 128, label %684
    i32 129, label %684
    i32 135, label %684
    i32 53, label %684
    i32 54, label %684
    i32 56, label %684
    i32 57, label %684
    i32 133, label %684
    i32 134, label %684
  ], !prof !189

589:                                              ; preds = %584
  %590 = add nsw i64 %586, %585
  br label %681

591:                                              ; preds = %584
  %592 = sub nsw i64 %586, %585
  br label %681

593:                                              ; preds = %584
  %594 = mul nsw i64 %586, %585
  br label %681

595:                                              ; preds = %584
  %596 = icmp eq i64 %585, 0
  br i1 %596, label %684, label %597

597:                                              ; preds = %595
  %598 = icmp eq i64 %586, -9223372036854775808
  %599 = icmp eq i64 %585, -1
  %600 = select i1 %598, i1 %599, i1 false
  br i1 %600, label %684, label %601

601:                                              ; preds = %597
  %602 = sdiv i64 %586, %585
  br label %681

603:                                              ; preds = %584
  %604 = icmp eq i64 %585, 0
  br i1 %604, label %684, label %605

605:                                              ; preds = %603
  %606 = icmp eq i64 %586, -9223372036854775808
  %607 = icmp eq i64 %585, -1
  %608 = select i1 %606, i1 %607, i1 false
  br i1 %608, label %684, label %609

609:                                              ; preds = %605
  %610 = srem i64 %586, %585
  br label %681

611:                                              ; preds = %584
  %612 = icmp eq i64 %587, 0
  br i1 %612, label %684, label %613

613:                                              ; preds = %611
  %614 = icmp eq i64 %586, -9223372036854775808
  %615 = icmp eq i64 %585, -1
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %684, label %617

617:                                              ; preds = %613
  %618 = udiv i64 %588, %587
  br label %681

619:                                              ; preds = %584
  %620 = icmp eq i64 %587, 0
  br i1 %620, label %684, label %621

621:                                              ; preds = %619
  %622 = icmp eq i64 %586, -9223372036854775808
  %623 = icmp eq i64 %585, -1
  %624 = select i1 %622, i1 %623, i1 false
  br i1 %624, label %684, label %625

625:                                              ; preds = %621
  %626 = urem i64 %588, %587
  br label %681

627:                                              ; preds = %584
  %628 = and i64 %588, %587
  br label %681

629:                                              ; preds = %584
  %630 = or i64 %588, %587
  br label %681

631:                                              ; preds = %584
  %632 = xor i64 %588, %587
  br label %681

633:                                              ; preds = %584, %584, %584
  %634 = icmp sgt i64 %587, -1
  %635 = zext i8 %40 to i64
  %636 = shl nuw nsw i64 %635, 3
  %637 = icmp slt i64 %587, %636
  %638 = select i1 %634, i1 %637, i1 false
  br i1 %638, label %639, label %684, !prof !190

639:                                              ; preds = %633
  %640 = icmp eq i32 %0, 65
  %641 = shl i64 %588, %587
  %642 = lshr i64 %588, %587
  %643 = select i1 %640, i64 %641, i64 %642, !prof !191
  %644 = icmp eq i32 %0, 67
  %645 = icmp slt i64 %586, 0
  %646 = select i1 %644, i1 %645, i1 false, !prof !192
  %647 = icmp ne i64 %587, 0
  %648 = select i1 %646, i1 %647, i1 false, !prof !192
  br i1 %648, label %649, label %681, !prof !192

649:                                              ; preds = %639
  %650 = zext nneg i32 %42 to i64
  %651 = sub nsw i64 %650, %587
  %652 = shl nsw i64 -1, %651
  %653 = or i64 %643, %652
  br label %681

654:                                              ; preds = %584
  %655 = icmp slt i64 %587, 0
  br i1 %655, label %684, label %656

656:                                              ; preds = %654
  %657 = zext nneg i32 %42 to i64
  %658 = urem i64 %587, %657
  %659 = sub nsw i64 %657, %658
  %660 = shl i64 %588, %659
  %661 = lshr i64 %588, %658
  %662 = or i64 %660, %661
  br label %681

663:                                              ; preds = %584
  %664 = icmp slt i64 %587, 0
  br i1 %664, label %684, label %665

665:                                              ; preds = %663
  %666 = zext nneg i32 %42 to i64
  %667 = urem i64 %587, %666
  %668 = shl i64 %588, %667
  %669 = sub nsw i64 %666, %667
  %670 = lshr i64 %588, %669
  %671 = or i64 %670, %668
  br label %681

672:                                              ; preds = %584
  %673 = tail call i64 @llvm.smin.i64(i64 %586, i64 %585)
  br label %681

674:                                              ; preds = %584
  %675 = tail call i64 @llvm.umin.i64(i64 %588, i64 %587)
  br label %681

676:                                              ; preds = %584
  %677 = tail call i64 @llvm.smax.i64(i64 %586, i64 %585)
  br label %681

678:                                              ; preds = %584
  %679 = tail call i64 @llvm.umax.i64(i64 %588, i64 %587)
  br label %681

680:                                              ; preds = %584
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3580, ptr noundef nonnull @.str.1) #17
  unreachable

681:                                              ; preds = %678, %676, %674, %672, %665, %656, %649, %639, %631, %629, %627, %625, %617, %609, %601, %593, %591, %589
  %682 = phi i64 [ %679, %678 ], [ %677, %676 ], [ %675, %674 ], [ %673, %672 ], [ %671, %665 ], [ %662, %656 ], [ %653, %649 ], [ %643, %639 ], [ %632, %631 ], [ %630, %629 ], [ %628, %627 ], [ %626, %625 ], [ %618, %617 ], [ %610, %609 ], [ %602, %601 ], [ %594, %593 ], [ %592, %591 ], [ %590, %589 ]
  %683 = tail call ptr @gen_int_mode(i64 noundef %682, i32 noundef %1) #17
  br label %684

684:                                              ; preds = %88, %633, %584, %584, %584, %584, %584, %584, %584, %584, %584, %584, %102, %197, %256, %424, %547, %549, %553, %584, %595, %597, %603, %605, %611, %613, %619, %621, %654, %663, %681
  %685 = phi ptr [ %198, %197 ], [ %257, %256 ], [ %425, %424 ], [ %548, %547 ], [ %683, %681 ], [ %103, %102 ], [ null, %597 ], [ null, %595 ], [ null, %605 ], [ null, %603 ], [ null, %613 ], [ null, %611 ], [ null, %621 ], [ null, %619 ], [ null, %654 ], [ null, %663 ], [ null, %584 ], [ null, %553 ], [ null, %549 ], [ null, %584 ], [ null, %584 ], [ null, %584 ], [ null, %584 ], [ null, %584 ], [ null, %584 ], [ null, %584 ], [ null, %584 ], [ null, %584 ], [ null, %584 ], [ null, %633 ], [ null, %88 ]
  %686 = icmp eq ptr %685, null
  br i1 %686, label %687, label %3458, !prof !164

687:                                              ; preds = %684
  %688 = load i8, ptr %39, align 1, !tbaa !150
  %689 = zext i8 %688 to i64
  %690 = shl nuw nsw i64 %689, 3
  switch i32 %0, label %3456 [
    i32 49, label %691
    i32 48, label %992
    i32 50, label %1051
    i32 52, label %1476
    i32 62, label %1731
    i32 63, label %2073
    i32 61, label %2325
    i32 59, label %2707
    i32 55, label %2737
    i32 60, label %2858
    i32 58, label %2893
    i32 69, label %2916
    i32 66, label %2916
    i32 67, label %2916
    i32 65, label %2941
    i32 133, label %2941
    i32 134, label %2941
    i32 68, label %2951
    i32 70, label %2961
    i32 71, label %2986
    i32 72, label %3011
    i32 73, label %3028
    i32 127, label %3458
    i32 128, label %3458
    i32 129, label %3458
    i32 135, label %3458
    i32 53, label %3458
    i32 54, label %3458
    i32 56, label %3458
    i32 57, label %3458
    i32 124, label %3043
    i32 125, label %3336
  ], !prof !193

691:                                              ; preds = %687
  switch i8 %44, label %711 [
    i8 8, label %692
    i8 9, label %692
    i8 11, label %692
    i8 17, label %692
  ], !prof !194

692:                                              ; preds = %691, %691, %691, %691
  %693 = and i8 %44, -2
  %694 = icmp eq i8 %693, 8
  br i1 %694, label %699, label %695

695:                                              ; preds = %692
  %696 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %697 = load i8, ptr %696, align 1, !tbaa !150
  %698 = zext i8 %697 to i32
  br label %699

699:                                              ; preds = %692, %695
  %700 = phi i32 [ %698, %695 ], [ %1, %692 ]
  %701 = add i32 %700, -38
  %702 = zext i32 %701 to i64
  %703 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %702
  %704 = load ptr, ptr %703, align 8, !tbaa !139
  %705 = getelementptr inbounds %struct.real_format, ptr %704, i64 0, i32 14
  %706 = load i8, ptr %705, align 1, !tbaa !195
  %707 = icmp ne i8 %706, 0
  %708 = load i32, ptr @flag_signed_zeros, align 4
  %709 = icmp ne i32 %708, 0
  %710 = select i1 %707, i1 %709, i1 false
  br i1 %710, label %716, label %711

711:                                              ; preds = %699, %691
  %712 = sext i32 %1 to i64
  %713 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %712
  %714 = load ptr, ptr %713, align 8, !tbaa !139
  %715 = icmp eq ptr %714, %37
  br i1 %715, label %3458, label %716, !prof !196

716:                                              ; preds = %711, %699
  %717 = load i32, ptr %35, align 8
  %718 = and i32 %717, 65535
  %719 = icmp eq i32 %718, 51
  br i1 %719, label %720, label %724, !prof !196

720:                                              ; preds = %716
  %721 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !150
  %723 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %34, ptr noundef %722)
  br label %3458

724:                                              ; preds = %716
  %725 = load i32, ptr %34, align 8
  %726 = and i32 %725, 65535
  %727 = icmp eq i32 %726, 51
  br i1 %727, label %728, label %732, !prof !196

728:                                              ; preds = %724
  %729 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !150
  %731 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %35, ptr noundef %730)
  br label %3458

732:                                              ; preds = %724
  switch i8 %44, label %745 [
    i8 2, label %733
    i8 3, label %733
    i8 10, label %733
    i8 12, label %733
  ], !prof !197

733:                                              ; preds = %732, %732, %732, %732
  %734 = icmp eq i32 %718, 64
  %735 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %736 = icmp eq ptr %735, %37
  %737 = select i1 %734, i1 %736, i1 false, !prof !198
  br i1 %737, label %738, label %745, !prof !196

738:                                              ; preds = %733
  %739 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !150
  %741 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %740, i32 noundef %1)
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %3458

743:                                              ; preds = %738
  %744 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %740) #17
  br label %3458

745:                                              ; preds = %732, %733
  %746 = trunc i32 %717 to i16
  switch i16 %746, label %753 [
    i16 35, label %747
    i16 45, label %747
    i16 44, label %747
  ], !prof !199

747:                                              ; preds = %745, %745, %745
  %748 = icmp eq i32 %726, 30
  br i1 %748, label %749, label %753

749:                                              ; preds = %747
  %750 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %751 = load i64, ptr %750, align 8, !tbaa !150
  %752 = call ptr @plus_constant(ptr noundef %35, i64 noundef %751) #17
  br label %3458

753:                                              ; preds = %745, %747
  %754 = trunc i32 %725 to i16
  switch i16 %754, label %761 [
    i16 35, label %755
    i16 45, label %755
    i16 44, label %755
  ], !prof !200

755:                                              ; preds = %753, %753, %753
  %756 = icmp eq i32 %718, 30
  br i1 %756, label %757, label %761, !prof !201

757:                                              ; preds = %755
  %758 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %759 = load i64, ptr %758, align 8, !tbaa !150
  %760 = call ptr @plus_constant(ptr noundef %34, i64 noundef %759) #17
  br label %3458

761:                                              ; preds = %753, %755
  %762 = and i8 %44, -2
  %763 = icmp eq i8 %762, 2
  br i1 %763, label %764, label %848, !prof !202

764:                                              ; preds = %761
  switch i16 %746, label %775 [
    i16 51, label %789
    i16 52, label %765
  ], !prof !203

765:                                              ; preds = %764
  %766 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %767 = load ptr, ptr %766, align 8, !tbaa !150
  %768 = load i32, ptr %767, align 8
  %769 = and i32 %768, 65535
  %770 = icmp eq i32 %769, 30
  br i1 %770, label %771, label %775, !prof !204

771:                                              ; preds = %765
  %772 = getelementptr inbounds %struct.rtx_def, ptr %767, i64 0, i32 1
  %773 = load i64, ptr %772, align 8, !tbaa !150
  %774 = ashr i64 %773, 63
  br label %789

775:                                              ; preds = %765, %764
  %776 = icmp eq i32 %718, 65
  br i1 %776, label %777, label %794, !prof !205

777:                                              ; preds = %775
  %778 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %779 = load ptr, ptr %778, align 8, !tbaa !150
  %780 = load i32, ptr %779, align 8
  %781 = and i32 %780, 65535
  %782 = icmp eq i32 %781, 30
  br i1 %782, label %783, label %794, !prof !206

783:                                              ; preds = %777
  %784 = getelementptr inbounds %struct.rtx_def, ptr %779, i64 0, i32 1
  %785 = load i64, ptr %784, align 8, !tbaa !150
  %786 = icmp ult i64 %785, 64
  br i1 %786, label %787, label %794, !prof !206

787:                                              ; preds = %783
  %788 = shl nuw i64 1, %785
  br label %789

789:                                              ; preds = %764, %771, %787
  %790 = phi i64 [ %788, %787 ], [ %773, %771 ], [ -1, %764 ]
  %791 = phi i64 [ 0, %787 ], [ %774, %771 ], [ -1, %764 ]
  %792 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %793 = load ptr, ptr %792, align 8, !tbaa !150
  br label %794

794:                                              ; preds = %789, %783, %777, %775
  %795 = phi ptr [ %35, %783 ], [ %35, %777 ], [ %35, %775 ], [ %793, %789 ]
  %796 = phi i64 [ 1, %783 ], [ 1, %777 ], [ 1, %775 ], [ %790, %789 ]
  %797 = phi i64 [ 0, %783 ], [ 0, %777 ], [ 0, %775 ], [ %791, %789 ]
  switch i16 %754, label %808 [
    i16 51, label %822
    i16 52, label %798
  ], !prof !207

798:                                              ; preds = %794
  %799 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %800 = load ptr, ptr %799, align 8, !tbaa !150
  %801 = load i32, ptr %800, align 8
  %802 = and i32 %801, 65535
  %803 = icmp eq i32 %802, 30
  br i1 %803, label %804, label %808, !prof !208

804:                                              ; preds = %798
  %805 = getelementptr inbounds %struct.rtx_def, ptr %800, i64 0, i32 1
  %806 = load i64, ptr %805, align 8, !tbaa !150
  %807 = ashr i64 %806, 63
  br label %822

808:                                              ; preds = %798, %794
  %809 = icmp eq i32 %726, 65
  br i1 %809, label %810, label %827, !prof !209

810:                                              ; preds = %808
  %811 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %812 = load ptr, ptr %811, align 8, !tbaa !150
  %813 = load i32, ptr %812, align 8
  %814 = and i32 %813, 65535
  %815 = icmp eq i32 %814, 30
  br i1 %815, label %816, label %827

816:                                              ; preds = %810
  %817 = getelementptr inbounds %struct.rtx_def, ptr %812, i64 0, i32 1
  %818 = load i64, ptr %817, align 8, !tbaa !150
  %819 = icmp ult i64 %818, 64
  br i1 %819, label %820, label %827

820:                                              ; preds = %816
  %821 = shl nuw i64 1, %818
  br label %822

822:                                              ; preds = %794, %804, %820
  %823 = phi i64 [ %821, %820 ], [ %806, %804 ], [ -1, %794 ]
  %824 = phi i64 [ 0, %820 ], [ %807, %804 ], [ -1, %794 ]
  %825 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %826 = load ptr, ptr %825, align 8, !tbaa !150
  br label %827

827:                                              ; preds = %822, %816, %810, %808
  %828 = phi ptr [ %34, %816 ], [ %34, %810 ], [ %34, %808 ], [ %826, %822 ]
  %829 = phi i64 [ 1, %816 ], [ 1, %810 ], [ 1, %808 ], [ %823, %822 ]
  %830 = phi i64 [ 0, %816 ], [ 0, %810 ], [ 0, %808 ], [ %824, %822 ]
  %831 = call i32 @rtx_equal_p(ptr noundef %795, ptr noundef %828) #17
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %846, label %833, !prof !210

833:                                              ; preds = %827
  %834 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1, ptr noundef %35, ptr noundef %34) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %835 = load ptr, ptr @cfun, align 8, !tbaa !139
  %836 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %835) #17
  %837 = call i32 @add_double_with_sign(i64 noundef %796, i64 noundef %797, i64 noundef %829, i64 noundef %830, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  %838 = load i64, ptr %5, align 8, !tbaa !175
  %839 = load i64, ptr %6, align 8, !tbaa !175
  %840 = call ptr @immed_double_const(i64 noundef %838, i64 noundef %839, i32 noundef %1) #17
  %841 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %795, ptr noundef %840)
  %842 = call i32 @rtx_cost(ptr noundef %841, i32 noundef 23, i8 noundef zeroext %836) #17
  %843 = call i32 @rtx_cost(ptr noundef %834, i32 noundef 23, i8 noundef zeroext %836) #17
  %844 = icmp sgt i32 %842, %843
  %845 = select i1 %844, ptr null, ptr %841, !prof !211
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %846

846:                                              ; preds = %833, %827
  %847 = phi ptr [ %845, %833 ], [ undef, %827 ]
  br i1 %832, label %848, label %3458, !prof !210

848:                                              ; preds = %846, %761
  %849 = load i32, ptr %34, align 8
  %850 = trunc i32 %849 to i16
  switch i16 %850, label %868 [
    i16 30, label %851
    i16 32, label %851
  ], !prof !212

851:                                              ; preds = %848, %848
  %852 = load i32, ptr %35, align 8
  %853 = and i32 %852, 65535
  %854 = icmp eq i32 %853, 63
  br i1 %854, label %855, label %868, !prof !213

855:                                              ; preds = %851
  %856 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %857 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %858 = load ptr, ptr %857, align 8, !tbaa !150
  %859 = load i32, ptr %858, align 8
  %860 = trunc i32 %859 to i16
  switch i16 %860, label %868 [
    i16 30, label %861
    i16 32, label %861
  ]

861:                                              ; preds = %855, %855
  %862 = call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef %34), !range !214
  %863 = icmp eq i8 %862, 0
  br i1 %863, label %868, label %864

864:                                              ; preds = %861
  %865 = load ptr, ptr %856, align 8, !tbaa !150
  %866 = call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %34, ptr noundef nonnull %858)
  %867 = call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %865, ptr noundef %866)
  br label %3458

868:                                              ; preds = %861, %851, %855, %848
  switch i8 %44, label %887 [
    i8 8, label %869
    i8 9, label %869
    i8 11, label %869
    i8 17, label %869
  ], !prof !215

869:                                              ; preds = %868, %868, %868, %868
  %870 = icmp eq i8 %762, 8
  br i1 %870, label %875, label %871

871:                                              ; preds = %869
  %872 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %873 = load i8, ptr %872, align 1, !tbaa !150
  %874 = zext i8 %873 to i32
  br label %875

875:                                              ; preds = %869, %871
  %876 = phi i32 [ %874, %871 ], [ %1, %869 ]
  %877 = add i32 %876, -38
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %878
  %880 = load ptr, ptr %879, align 8, !tbaa !139
  %881 = getelementptr inbounds %struct.real_format, ptr %880, i64 0, i32 10
  %882 = load i8, ptr %881, align 1, !tbaa !216
  %883 = icmp ne i8 %882, 0
  %884 = load i32, ptr @flag_rounding_math, align 4
  %885 = icmp ne i32 %884, 0
  %886 = select i1 %883, i1 %885, i1 false
  br i1 %886, label %904, label %887

887:                                              ; preds = %868, %875
  %888 = load i32, ptr %35, align 8
  %889 = and i32 %888, 65535
  %890 = icmp eq i32 %889, 52
  br i1 %890, label %891, label %904, !prof !217

891:                                              ; preds = %887
  %892 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %893 = load ptr, ptr %892, align 8, !tbaa !150
  %894 = load i32, ptr %893, align 8
  %895 = and i32 %894, 65535
  %896 = icmp eq i32 %895, 51
  br i1 %896, label %897, label %904, !prof !218

897:                                              ; preds = %891
  %898 = getelementptr inbounds %struct.rtx_def, ptr %893, i64 0, i32 1
  %899 = load ptr, ptr %898, align 8, !tbaa !150
  %900 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %901 = load ptr, ptr %900, align 8, !tbaa !150
  %902 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %899, ptr noundef %901)
  %903 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %34, ptr noundef %902)
  br label %3458

904:                                              ; preds = %887, %891, %875
  %905 = load i32, ptr %35, align 8
  %906 = and i32 %905, 65535
  %907 = zext nneg i32 %906 to i64
  %908 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %907
  %909 = load i32, ptr %908, align 4, !tbaa !154
  %910 = icmp ult i32 %909, 2
  %911 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %912 = icmp eq ptr %911, %37
  %913 = select i1 %910, i1 %912, i1 false, !prof !219
  br i1 %913, label %914, label %922, !prof !219

914:                                              ; preds = %904
  %915 = call ptr @reversed_comparison(ptr noundef %35, i32 noundef %1) #17
  %916 = icmp eq ptr %915, null
  br i1 %916, label %922, label %917

917:                                              ; preds = %914
  %918 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %915, i32 noundef %1)
  %919 = icmp eq ptr %918, null
  br i1 %919, label %920, label %3458

920:                                              ; preds = %917
  %921 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %915) #17
  br label %3458

922:                                              ; preds = %914, %904
  switch i8 %44, label %981 [
    i8 2, label %923
    i8 3, label %923
    i8 10, label %923
    i8 12, label %923
    i8 8, label %986
    i8 9, label %986
    i8 11, label %986
  ], !prof !220

923:                                              ; preds = %922, %922, %922, %922
  %924 = load i32, ptr %35, align 8
  %925 = trunc i32 %924 to i16
  switch i16 %925, label %950 [
    i16 49, label %977
    i16 50, label %977
    i16 35, label %926
  ], !prof !221

926:                                              ; preds = %923
  %927 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %928 = load ptr, ptr %927, align 8, !tbaa !150
  %929 = load i32, ptr %928, align 8
  %930 = and i32 %929, 65535
  %931 = icmp eq i32 %930, 49
  br i1 %931, label %932, label %950

932:                                              ; preds = %926
  %933 = getelementptr inbounds %struct.rtx_def, ptr %928, i64 0, i32 1
  %934 = load ptr, ptr %933, align 8, !tbaa !150
  %935 = load i32, ptr %934, align 8
  %936 = and i32 %935, 65535
  %937 = zext nneg i32 %936 to i64
  %938 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %937
  %939 = load i32, ptr %938, align 4, !tbaa !154
  %940 = icmp eq i32 %939, 9
  br i1 %940, label %941, label %950

941:                                              ; preds = %932
  %942 = getelementptr inbounds %struct.rtx_def, ptr %928, i64 0, i32 1, i32 0, i32 0, i64 1
  %943 = load ptr, ptr %942, align 8, !tbaa !150
  %944 = load i32, ptr %943, align 8
  %945 = and i32 %944, 65535
  %946 = zext nneg i32 %945 to i64
  %947 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %946
  %948 = load i32, ptr %947, align 4, !tbaa !154
  %949 = icmp eq i32 %948, 9
  br i1 %949, label %977, label %950, !prof !222

950:                                              ; preds = %932, %926, %923, %941
  %951 = load i32, ptr %34, align 8
  %952 = trunc i32 %951 to i16
  switch i16 %952, label %980 [
    i16 49, label %977
    i16 50, label %977
    i16 35, label %953
  ], !prof !221

953:                                              ; preds = %950
  %954 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %955 = load ptr, ptr %954, align 8, !tbaa !150
  %956 = load i32, ptr %955, align 8
  %957 = and i32 %956, 65535
  %958 = icmp eq i32 %957, 49
  br i1 %958, label %959, label %980

959:                                              ; preds = %953
  %960 = getelementptr inbounds %struct.rtx_def, ptr %955, i64 0, i32 1
  %961 = load ptr, ptr %960, align 8, !tbaa !150
  %962 = load i32, ptr %961, align 8
  %963 = and i32 %962, 65535
  %964 = zext nneg i32 %963 to i64
  %965 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %964
  %966 = load i32, ptr %965, align 4, !tbaa !154
  %967 = icmp eq i32 %966, 9
  br i1 %967, label %968, label %980

968:                                              ; preds = %959
  %969 = getelementptr inbounds %struct.rtx_def, ptr %955, i64 0, i32 1, i32 0, i32 0, i64 1
  %970 = load ptr, ptr %969, align 8, !tbaa !150
  %971 = load i32, ptr %970, align 8
  %972 = and i32 %971, 65535
  %973 = zext nneg i32 %972 to i64
  %974 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %973
  %975 = load i32, ptr %974, align 4, !tbaa !154
  %976 = icmp eq i32 %975, 9
  br i1 %976, label %977, label %980, !prof !223

977:                                              ; preds = %950, %950, %923, %923, %968, %941
  %978 = call fastcc ptr @simplify_plus_minus(i32 noundef 49, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %979 = icmp eq ptr %978, null
  br i1 %979, label %980, label %3458, !prof !224

980:                                              ; preds = %950, %959, %953, %968, %977
  switch i8 %44, label %981 [
    i8 8, label %986
    i8 9, label %986
    i8 11, label %986
  ], !prof !225

981:                                              ; preds = %922, %980
  %982 = icmp eq i8 %44, 17
  %983 = load i32, ptr @flag_associative_math, align 4
  %984 = icmp ne i32 %983, 0
  %985 = select i1 %982, i1 %984, i1 false, !prof !223
  br i1 %985, label %989, label %3457, !prof !223

986:                                              ; preds = %980, %922, %980, %922, %922, %980
  %987 = load i32, ptr @flag_associative_math, align 4, !tbaa !154
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %3457, label %989

989:                                              ; preds = %986, %981
  %990 = call fastcc ptr @simplify_associative_operation(i32 noundef 49, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %991 = icmp eq ptr %990, null
  br i1 %991, label %3457, label %3458

992:                                              ; preds = %687
  %993 = load i32, ptr %35, align 8
  %994 = and i32 %993, 65535
  %995 = trunc i32 %993 to i16
  switch i16 %995, label %3457 [
    i16 83, label %996
    i16 87, label %1002
  ], !prof !226

996:                                              ; preds = %992
  %997 = load i32, ptr %34, align 8
  %998 = and i32 %997, 65535
  %999 = icmp eq i32 %998, 85
  br i1 %999, label %1006, label %1000

1000:                                             ; preds = %996
  %1001 = icmp eq i32 %994, 87
  br i1 %1001, label %1002, label %3457, !prof !227

1002:                                             ; preds = %992, %1000
  %1003 = load i32, ptr %34, align 8
  %1004 = and i32 %1003, 65535
  %1005 = icmp eq i32 %1004, 89
  br i1 %1005, label %1006, label %3457

1006:                                             ; preds = %1002, %996
  %1007 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1008 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %1009 = load ptr, ptr %1008, align 8, !tbaa !150
  %1010 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %1011 = icmp eq ptr %1009, %1010
  br i1 %1011, label %1012, label %3457

1012:                                             ; preds = %1006
  %1013 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %1014 = load ptr, ptr %1013, align 8, !tbaa !150
  %1015 = icmp eq ptr %1014, %1010
  br i1 %1015, label %1016, label %3457

1016:                                             ; preds = %1012
  %1017 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1018 = load ptr, ptr %1007, align 8, !tbaa !150
  %1019 = load ptr, ptr %1017, align 8, !tbaa !150
  %1020 = load i32, ptr %1018, align 8
  %1021 = and i32 %1020, 65535
  %1022 = icmp eq i32 %1021, 37
  br i1 %1022, label %1023, label %3457

1023:                                             ; preds = %1016
  %1024 = load i32, ptr %1019, align 8
  %1025 = and i32 %1024, 65535
  %1026 = icmp eq i32 %1025, 37
  br i1 %1026, label %1027, label %3457

1027:                                             ; preds = %1023
  %1028 = xor i32 %1024, %1020
  %1029 = and i32 %1028, 16711680
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %3457

1031:                                             ; preds = %1027
  %1032 = getelementptr inbounds %struct.rtx_def, ptr %1018, i64 0, i32 1
  %1033 = load i32, ptr %1032, align 8, !tbaa !150
  %1034 = getelementptr inbounds %struct.rtx_def, ptr %1019, i64 0, i32 1
  %1035 = load i32, ptr %1034, align 8, !tbaa !150
  %1036 = icmp eq i32 %1033, %1035
  br i1 %1036, label %1037, label %3457

1037:                                             ; preds = %1031
  %1038 = lshr i32 %1020, 16
  %1039 = and i32 %1038, 255
  %1040 = zext nneg i32 %1039 to i64
  %1041 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1040
  %1042 = load i8, ptr %1041, align 1, !tbaa !150
  %1043 = icmp eq i8 %1042, 1
  br i1 %1043, label %1044, label %3457

1044:                                             ; preds = %1037
  %1045 = lshr i32 %1024, 16
  %1046 = and i32 %1045, 255
  %1047 = zext nneg i32 %1046 to i64
  %1048 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1047
  %1049 = load i8, ptr %1048, align 1, !tbaa !150
  %1050 = icmp eq i8 %1049, 1
  br i1 %1050, label %3458, label %3457

1051:                                             ; preds = %687
  %1052 = call i32 @rtx_equal_p(ptr noundef %36, ptr noundef %37) #17
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1081, label %1054, !prof !228

1054:                                             ; preds = %1051
  %1055 = call i32 @side_effects_p(ptr noundef %35) #17
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1081

1057:                                             ; preds = %1054
  switch i8 %44, label %1077 [
    i8 8, label %1058
    i8 9, label %1058
    i8 11, label %1058
    i8 17, label %1058
  ]

1058:                                             ; preds = %1057, %1057, %1057, %1057
  %1059 = and i8 %44, -2
  %1060 = icmp eq i8 %1059, 8
  br i1 %1060, label %1065, label %1061

1061:                                             ; preds = %1058
  %1062 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1063 = load i8, ptr %1062, align 1, !tbaa !150
  %1064 = zext i8 %1063 to i32
  br label %1065

1065:                                             ; preds = %1058, %1061
  %1066 = phi i32 [ %1064, %1061 ], [ %1, %1058 ]
  %1067 = add i32 %1066, -38
  %1068 = zext i32 %1067 to i64
  %1069 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1068
  %1070 = load ptr, ptr %1069, align 8, !tbaa !139
  %1071 = getelementptr inbounds %struct.real_format, ptr %1070, i64 0, i32 11
  %1072 = load i8, ptr %1071, align 2, !tbaa !178
  %1073 = icmp eq i8 %1072, 0
  %1074 = load i32, ptr @flag_finite_math_only, align 4
  %1075 = icmp ne i32 %1074, 0
  %1076 = select i1 %1073, i1 true, i1 %1075
  br i1 %1076, label %1077, label %1081

1077:                                             ; preds = %1057, %1065
  %1078 = sext i32 %1 to i64
  %1079 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1078
  %1080 = load ptr, ptr %1079, align 8, !tbaa !139
  br label %3458

1081:                                             ; preds = %1065, %1054, %1051
  switch i8 %44, label %1101 [
    i8 8, label %1082
    i8 9, label %1082
    i8 11, label %1082
    i8 17, label %1082
  ], !prof !229

1082:                                             ; preds = %1081, %1081, %1081, %1081
  %1083 = and i8 %44, -2
  %1084 = icmp eq i8 %1083, 8
  br i1 %1084, label %1089, label %1085

1085:                                             ; preds = %1082
  %1086 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1087 = load i8, ptr %1086, align 1, !tbaa !150
  %1088 = zext i8 %1087 to i32
  br label %1089

1089:                                             ; preds = %1082, %1085
  %1090 = phi i32 [ %1088, %1085 ], [ %1, %1082 ]
  %1091 = add i32 %1090, -38
  %1092 = zext i32 %1091 to i64
  %1093 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1092
  %1094 = load ptr, ptr %1093, align 8, !tbaa !139
  %1095 = getelementptr inbounds %struct.real_format, ptr %1094, i64 0, i32 14
  %1096 = load i8, ptr %1095, align 1, !tbaa !195
  %1097 = icmp ne i8 %1096, 0
  %1098 = load i32, ptr @flag_signed_zeros, align 4
  %1099 = icmp ne i32 %1098, 0
  %1100 = select i1 %1097, i1 %1099, i1 false
  br i1 %1100, label %1111, label %1101

1101:                                             ; preds = %1089, %1081
  %1102 = sext i32 %1 to i64
  %1103 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1102
  %1104 = load ptr, ptr %1103, align 8, !tbaa !139
  %1105 = icmp eq ptr %1104, %36
  br i1 %1105, label %1106, label %1111, !prof !230

1106:                                             ; preds = %1101
  %1107 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %34, i32 noundef %1)
  %1108 = icmp eq ptr %1107, null
  br i1 %1108, label %1109, label %3458

1109:                                             ; preds = %1106
  %1110 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %34) #17
  br label %3458

1111:                                             ; preds = %1101, %1089
  %1112 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %1113 = icmp eq ptr %1112, %36
  br i1 %1113, label %1114, label %1119, !prof !230

1114:                                             ; preds = %1111
  %1115 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %34, i32 noundef %1)
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1117, label %3458

1117:                                             ; preds = %1114
  %1118 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %34) #17
  br label %3458

1119:                                             ; preds = %1111
  switch i8 %44, label %1157 [
    i8 8, label %1120
    i8 9, label %1120
    i8 11, label %1120
    i8 17, label %1120
  ], !prof !229

1120:                                             ; preds = %1119, %1119, %1119, %1119
  %1121 = and i8 %44, -2
  %1122 = icmp eq i8 %1121, 8
  br i1 %1122, label %1127, label %1123

1123:                                             ; preds = %1120
  %1124 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1125 = load i8, ptr %1124, align 1, !tbaa !150
  %1126 = zext i8 %1125 to i32
  br label %1127

1127:                                             ; preds = %1120, %1123
  %1128 = phi i32 [ %1126, %1123 ], [ %1, %1120 ]
  %1129 = add i32 %1128, -38
  %1130 = zext i32 %1129 to i64
  %1131 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1130
  %1132 = load ptr, ptr %1131, align 8, !tbaa !139
  %1133 = getelementptr inbounds %struct.real_format, ptr %1132, i64 0, i32 14
  %1134 = load i8, ptr %1133, align 1, !tbaa !195
  %1135 = icmp ne i8 %1134, 0
  %1136 = load i32, ptr @flag_signed_zeros, align 4
  %1137 = icmp ne i32 %1136, 0
  %1138 = select i1 %1135, i1 %1137, i1 false
  br i1 %1138, label %1139, label %1157

1139:                                             ; preds = %1127
  switch i8 %44, label %1157 [
    i8 8, label %1140
    i8 9, label %1140
    i8 11, label %1140
    i8 17, label %1140
  ]

1140:                                             ; preds = %1139, %1139, %1139, %1139
  br i1 %1122, label %1145, label %1141

1141:                                             ; preds = %1140
  %1142 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1143 = load i8, ptr %1142, align 1, !tbaa !150
  %1144 = zext i8 %1143 to i32
  br label %1145

1145:                                             ; preds = %1140, %1141
  %1146 = phi i32 [ %1144, %1141 ], [ %1, %1140 ]
  %1147 = add i32 %1146, -38
  %1148 = zext i32 %1147 to i64
  %1149 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1148
  %1150 = load ptr, ptr %1149, align 8, !tbaa !139
  %1151 = getelementptr inbounds %struct.real_format, ptr %1150, i64 0, i32 10
  %1152 = load i8, ptr %1151, align 1, !tbaa !216
  %1153 = icmp ne i8 %1152, 0
  %1154 = load i32, ptr @flag_rounding_math, align 4
  %1155 = icmp ne i32 %1154, 0
  %1156 = select i1 %1153, i1 %1155, i1 false
  br i1 %1156, label %1162, label %1157

1157:                                             ; preds = %1145, %1139, %1127, %1119
  %1158 = sext i32 %1 to i64
  %1159 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1158
  %1160 = load ptr, ptr %1159, align 8, !tbaa !139
  %1161 = icmp eq ptr %1160, %37
  br i1 %1161, label %3458, label %1162, !prof !230

1162:                                             ; preds = %1157, %1145
  %1163 = and i8 %44, -2
  %1164 = icmp eq i8 %1163, 2
  br i1 %1164, label %1165, label %1257, !prof !228

1165:                                             ; preds = %1162
  %1166 = load i32, ptr %35, align 8
  %1167 = trunc i32 %1166 to i16
  switch i16 %1167, label %1178 [
    i16 51, label %1193
    i16 52, label %1168
  ], !prof !231

1168:                                             ; preds = %1165
  %1169 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %1170 = load ptr, ptr %1169, align 8, !tbaa !150
  %1171 = load i32, ptr %1170, align 8
  %1172 = and i32 %1171, 65535
  %1173 = icmp eq i32 %1172, 30
  br i1 %1173, label %1174, label %1178

1174:                                             ; preds = %1168
  %1175 = getelementptr inbounds %struct.rtx_def, ptr %1170, i64 0, i32 1
  %1176 = load i64, ptr %1175, align 8, !tbaa !150
  %1177 = ashr i64 %1176, 63
  br label %1193

1178:                                             ; preds = %1168, %1165
  %1179 = and i32 %1166, 65535
  %1180 = icmp eq i32 %1179, 65
  br i1 %1180, label %1181, label %1198, !prof !230

1181:                                             ; preds = %1178
  %1182 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %1183 = load ptr, ptr %1182, align 8, !tbaa !150
  %1184 = load i32, ptr %1183, align 8
  %1185 = and i32 %1184, 65535
  %1186 = icmp eq i32 %1185, 30
  br i1 %1186, label %1187, label %1198

1187:                                             ; preds = %1181
  %1188 = getelementptr inbounds %struct.rtx_def, ptr %1183, i64 0, i32 1
  %1189 = load i64, ptr %1188, align 8, !tbaa !150
  %1190 = icmp ult i64 %1189, 64
  br i1 %1190, label %1191, label %1198

1191:                                             ; preds = %1187
  %1192 = shl nuw i64 1, %1189
  br label %1193

1193:                                             ; preds = %1165, %1174, %1191
  %1194 = phi i64 [ %1192, %1191 ], [ %1176, %1174 ], [ -1, %1165 ]
  %1195 = phi i64 [ 0, %1191 ], [ %1177, %1174 ], [ -1, %1165 ]
  %1196 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1197 = load ptr, ptr %1196, align 8, !tbaa !150
  br label %1198

1198:                                             ; preds = %1193, %1187, %1181, %1178
  %1199 = phi ptr [ %35, %1187 ], [ %35, %1181 ], [ %35, %1178 ], [ %1197, %1193 ]
  %1200 = phi i64 [ 1, %1187 ], [ 1, %1181 ], [ 1, %1178 ], [ %1194, %1193 ]
  %1201 = phi i64 [ 0, %1187 ], [ 0, %1181 ], [ 0, %1178 ], [ %1195, %1193 ]
  %1202 = load i32, ptr %34, align 8
  %1203 = trunc i32 %1202 to i16
  switch i16 %1203, label %1216 [
    i16 51, label %1231
    i16 52, label %1204
  ], !prof !231

1204:                                             ; preds = %1198
  %1205 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %1206 = load ptr, ptr %1205, align 8, !tbaa !150
  %1207 = load i32, ptr %1206, align 8
  %1208 = and i32 %1207, 65535
  %1209 = icmp eq i32 %1208, 30
  br i1 %1209, label %1210, label %1216

1210:                                             ; preds = %1204
  %1211 = getelementptr inbounds %struct.rtx_def, ptr %1206, i64 0, i32 1
  %1212 = load i64, ptr %1211, align 8, !tbaa !150
  %1213 = sub nsw i64 0, %1212
  %1214 = icmp sgt i64 %1212, 0
  %1215 = sext i1 %1214 to i64
  br label %1231

1216:                                             ; preds = %1204, %1198
  %1217 = and i32 %1202, 65535
  %1218 = icmp eq i32 %1217, 65
  br i1 %1218, label %1219, label %1236, !prof !230

1219:                                             ; preds = %1216
  %1220 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %1221 = load ptr, ptr %1220, align 8, !tbaa !150
  %1222 = load i32, ptr %1221, align 8
  %1223 = and i32 %1222, 65535
  %1224 = icmp eq i32 %1223, 30
  br i1 %1224, label %1225, label %1236

1225:                                             ; preds = %1219
  %1226 = getelementptr inbounds %struct.rtx_def, ptr %1221, i64 0, i32 1
  %1227 = load i64, ptr %1226, align 8, !tbaa !150
  %1228 = icmp ult i64 %1227, 64
  br i1 %1228, label %1229, label %1236

1229:                                             ; preds = %1225
  %1230 = shl nsw i64 -1, %1227
  br label %1231

1231:                                             ; preds = %1198, %1210, %1229
  %1232 = phi i64 [ %1230, %1229 ], [ %1213, %1210 ], [ 1, %1198 ]
  %1233 = phi i64 [ -1, %1229 ], [ %1215, %1210 ], [ 0, %1198 ]
  %1234 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1235 = load ptr, ptr %1234, align 8, !tbaa !150
  br label %1236

1236:                                             ; preds = %1231, %1225, %1219, %1216
  %1237 = phi ptr [ %34, %1225 ], [ %34, %1219 ], [ %34, %1216 ], [ %1235, %1231 ]
  %1238 = phi i64 [ -1, %1225 ], [ -1, %1219 ], [ -1, %1216 ], [ %1232, %1231 ]
  %1239 = phi i64 [ -1, %1225 ], [ -1, %1219 ], [ -1, %1216 ], [ %1233, %1231 ]
  %1240 = call i32 @rtx_equal_p(ptr noundef %1199, ptr noundef %1237) #17
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1255, label %1242, !prof !228

1242:                                             ; preds = %1236
  %1243 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %1, ptr noundef %35, ptr noundef %34) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %1244 = load ptr, ptr @cfun, align 8, !tbaa !139
  %1245 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %1244) #17
  %1246 = call i32 @add_double_with_sign(i64 noundef %1200, i64 noundef %1201, i64 noundef %1238, i64 noundef %1239, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 0) #17
  %1247 = load i64, ptr %7, align 8, !tbaa !175
  %1248 = load i64, ptr %8, align 8, !tbaa !175
  %1249 = call ptr @immed_double_const(i64 noundef %1247, i64 noundef %1248, i32 noundef %1) #17
  %1250 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %1199, ptr noundef %1249)
  %1251 = call i32 @rtx_cost(ptr noundef %1250, i32 noundef 23, i8 noundef zeroext %1245) #17
  %1252 = call i32 @rtx_cost(ptr noundef %1243, i32 noundef 23, i8 noundef zeroext %1245) #17
  %1253 = icmp sgt i32 %1251, %1252
  %1254 = select i1 %1253, ptr null, ptr %1250
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br label %1255

1255:                                             ; preds = %1242, %1236
  %1256 = phi ptr [ %1254, %1242 ], [ undef, %1236 ]
  br i1 %1241, label %1257, label %3458, !prof !228

1257:                                             ; preds = %1255, %1162
  %1258 = load i32, ptr %34, align 8
  %1259 = and i32 %1258, 65535
  %1260 = icmp eq i32 %1259, 51
  br i1 %1260, label %1261, label %1265, !prof !230

1261:                                             ; preds = %1257
  %1262 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1263 = load ptr, ptr %1262, align 8, !tbaa !150
  %1264 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %35, ptr noundef %1263)
  br label %3458

1265:                                             ; preds = %1257
  %1266 = load i32, ptr %35, align 8
  %1267 = and i32 %1266, 65535
  %1268 = icmp eq i32 %1267, 51
  br i1 %1268, label %1269, label %1278, !prof !230

1269:                                             ; preds = %1265
  %1270 = trunc i32 %1258 to i16
  switch i16 %1270, label %1278 [
    i16 30, label %1271
    i16 32, label %1271
  ]

1271:                                             ; preds = %1269, %1269
  %1272 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %34, i32 noundef %1)
  %1273 = icmp eq ptr %1272, null
  br i1 %1273, label %1278, label %1274

1274:                                             ; preds = %1271
  %1275 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1276 = load ptr, ptr %1275, align 8, !tbaa !150
  %1277 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %1272, ptr noundef %1276)
  br label %3458

1278:                                             ; preds = %1271, %1269, %1265
  %1279 = load i32, ptr %34, align 8
  %1280 = and i32 %1279, 65535
  %1281 = trunc i32 %1279 to i16
  switch i16 %1281, label %1327 [
    i16 30, label %1282
    i16 61, label %1294
  ], !prof !232

1282:                                             ; preds = %1278
  %1283 = load i32, ptr %35, align 8
  %1284 = and i32 %1283, 16711680
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1292, label %1286, !prof !233

1286:                                             ; preds = %1282
  %1287 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1288 = load i64, ptr %1287, align 8, !tbaa !150
  %1289 = sub nsw i64 0, %1288
  %1290 = call ptr @gen_int_mode(i64 noundef %1289, i32 noundef %1) #17
  %1291 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %35, ptr noundef %1290)
  br label %3458

1292:                                             ; preds = %1282
  %1293 = icmp eq i32 %1280, 61
  br i1 %1293, label %1294, label %1327, !prof !234

1294:                                             ; preds = %1278, %1292
  %1295 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1296 = load ptr, ptr %1295, align 8, !tbaa !150
  %1297 = call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %1296) #17
  %1298 = icmp eq i32 %1297, 0
  %1299 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %1300 = load ptr, ptr %1299, align 8, !tbaa !150
  br i1 %1298, label %1312, label %1301

1301:                                             ; preds = %1294
  %1302 = load i32, ptr %1300, align 8
  %1303 = lshr i32 %1302, 16
  %1304 = and i32 %1303, 255
  %1305 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %1300, i32 noundef %1304)
  %1306 = icmp eq ptr %1305, null
  br i1 %1306, label %1307, label %1309

1307:                                             ; preds = %1301
  %1308 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %1300) #17
  br label %1309

1309:                                             ; preds = %1307, %1301
  %1310 = phi ptr [ %1308, %1307 ], [ %1305, %1301 ]
  %1311 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %35, ptr noundef %1310)
  br label %3458

1312:                                             ; preds = %1294
  %1313 = call i32 @rtx_equal_p(ptr noundef %35, ptr noundef %1300) #17
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1327, label %1315

1315:                                             ; preds = %1312
  %1316 = load ptr, ptr %1295, align 8, !tbaa !150
  %1317 = load i32, ptr %1316, align 8
  %1318 = lshr i32 %1317, 16
  %1319 = and i32 %1318, 255
  %1320 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %1316, i32 noundef %1319)
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %1322, label %1324

1322:                                             ; preds = %1315
  %1323 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %1316) #17
  br label %1324

1324:                                             ; preds = %1322, %1315
  %1325 = phi ptr [ %1323, %1322 ], [ %1320, %1315 ]
  %1326 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %35, ptr noundef %1325)
  br label %3458

1327:                                             ; preds = %1278, %1312, %1292
  %1328 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %1329 = icmp eq ptr %1328, %36
  br i1 %1329, label %1330, label %1340, !prof !234

1330:                                             ; preds = %1327
  %1331 = load i32, ptr %34, align 8
  %1332 = and i32 %1331, 65535
  %1333 = zext nneg i32 %1332 to i64
  %1334 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1333
  %1335 = load i32, ptr %1334, align 4, !tbaa !154
  %1336 = icmp ult i32 %1335, 2
  br i1 %1336, label %1337, label %1340

1337:                                             ; preds = %1330
  %1338 = call ptr @reversed_comparison(ptr noundef %34, i32 noundef %1) #17
  %1339 = icmp eq ptr %1338, null
  br i1 %1339, label %1340, label %3458

1340:                                             ; preds = %1337, %1330, %1327
  switch i8 %44, label %1359 [
    i8 8, label %1341
    i8 9, label %1341
    i8 11, label %1341
    i8 17, label %1341
  ], !prof !235

1341:                                             ; preds = %1340, %1340, %1340, %1340
  %1342 = icmp eq i8 %1163, 8
  br i1 %1342, label %1347, label %1343

1343:                                             ; preds = %1341
  %1344 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1345 = load i8, ptr %1344, align 1, !tbaa !150
  %1346 = zext i8 %1345 to i32
  br label %1347

1347:                                             ; preds = %1341, %1343
  %1348 = phi i32 [ %1346, %1343 ], [ %1, %1341 ]
  %1349 = add i32 %1348, -38
  %1350 = zext i32 %1349 to i64
  %1351 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1350
  %1352 = load ptr, ptr %1351, align 8, !tbaa !139
  %1353 = getelementptr inbounds %struct.real_format, ptr %1352, i64 0, i32 10
  %1354 = load i8, ptr %1353, align 1, !tbaa !216
  %1355 = icmp ne i8 %1354, 0
  %1356 = load i32, ptr @flag_rounding_math, align 4
  %1357 = icmp ne i32 %1356, 0
  %1358 = select i1 %1355, i1 %1357, i1 false
  br i1 %1358, label %1376, label %1359

1359:                                             ; preds = %1347, %1340
  %1360 = load i32, ptr %34, align 8
  %1361 = and i32 %1360, 65535
  %1362 = icmp eq i32 %1361, 52
  br i1 %1362, label %1363, label %1376, !prof !234

1363:                                             ; preds = %1359
  %1364 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1365 = load ptr, ptr %1364, align 8, !tbaa !150
  %1366 = load i32, ptr %1365, align 8
  %1367 = and i32 %1366, 65535
  %1368 = icmp eq i32 %1367, 51
  br i1 %1368, label %1369, label %1376

1369:                                             ; preds = %1363
  %1370 = getelementptr inbounds %struct.rtx_def, ptr %1365, i64 0, i32 1
  %1371 = load ptr, ptr %1370, align 8, !tbaa !150
  %1372 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %1373 = load ptr, ptr %1372, align 8, !tbaa !150
  %1374 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %1371, ptr noundef %1373)
  %1375 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %1374, ptr noundef %35)
  br label %3458

1376:                                             ; preds = %1359, %1363, %1347
  switch i8 %44, label %1395 [
    i8 8, label %1377
    i8 9, label %1377
    i8 11, label %1377
    i8 17, label %1377
  ], !prof !235

1377:                                             ; preds = %1376, %1376, %1376, %1376
  %1378 = icmp eq i8 %1163, 8
  br i1 %1378, label %1383, label %1379

1379:                                             ; preds = %1377
  %1380 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1381 = load i8, ptr %1380, align 1, !tbaa !150
  %1382 = zext i8 %1381 to i32
  br label %1383

1383:                                             ; preds = %1377, %1379
  %1384 = phi i32 [ %1382, %1379 ], [ %1, %1377 ]
  %1385 = add i32 %1384, -38
  %1386 = zext i32 %1385 to i64
  %1387 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1386
  %1388 = load ptr, ptr %1387, align 8, !tbaa !139
  %1389 = getelementptr inbounds %struct.real_format, ptr %1388, i64 0, i32 10
  %1390 = load i8, ptr %1389, align 1, !tbaa !216
  %1391 = icmp ne i8 %1390, 0
  %1392 = load i32, ptr @flag_rounding_math, align 4
  %1393 = icmp ne i32 %1392, 0
  %1394 = select i1 %1391, i1 %1393, i1 false
  br i1 %1394, label %1418, label %1395

1395:                                             ; preds = %1383, %1376
  %1396 = load i32, ptr %34, align 8
  %1397 = and i32 %1396, 65535
  %1398 = icmp eq i32 %1397, 52
  br i1 %1398, label %1399, label %1418, !prof !234

1399:                                             ; preds = %1395
  %1400 = load i32, ptr %35, align 8
  %1401 = and i32 %1400, 65535
  %1402 = icmp eq i32 %1401, 51
  br i1 %1402, label %1403, label %1418

1403:                                             ; preds = %1399
  %1404 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1405 = load ptr, ptr %1404, align 8, !tbaa !150
  %1406 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %1405, i32 noundef %1)
  %1407 = icmp eq ptr %1406, null
  br i1 %1407, label %1408, label %1410

1408:                                             ; preds = %1403
  %1409 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %1405) #17
  br label %1410

1410:                                             ; preds = %1408, %1403
  %1411 = phi ptr [ %1409, %1408 ], [ %1406, %1403 ]
  %1412 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %1413 = load ptr, ptr %1412, align 8, !tbaa !150
  %1414 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %1411, ptr noundef %1413)
  %1415 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1416 = load ptr, ptr %1415, align 8, !tbaa !150
  %1417 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %1414, ptr noundef %1416)
  br label %3458

1418:                                             ; preds = %1395, %1399, %1383
  switch i8 %44, label %3457 [
    i8 2, label %1419
    i8 3, label %1419
    i8 10, label %1419
    i8 12, label %1419
  ], !prof !236

1419:                                             ; preds = %1418, %1418, %1418, %1418
  %1420 = load i32, ptr %35, align 8
  %1421 = trunc i32 %1420 to i16
  switch i16 %1421, label %1446 [
    i16 49, label %1473
    i16 50, label %1473
    i16 35, label %1422
  ], !prof !221

1422:                                             ; preds = %1419
  %1423 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1424 = load ptr, ptr %1423, align 8, !tbaa !150
  %1425 = load i32, ptr %1424, align 8
  %1426 = and i32 %1425, 65535
  %1427 = icmp eq i32 %1426, 49
  br i1 %1427, label %1428, label %1446

1428:                                             ; preds = %1422
  %1429 = getelementptr inbounds %struct.rtx_def, ptr %1424, i64 0, i32 1
  %1430 = load ptr, ptr %1429, align 8, !tbaa !150
  %1431 = load i32, ptr %1430, align 8
  %1432 = and i32 %1431, 65535
  %1433 = zext nneg i32 %1432 to i64
  %1434 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1433
  %1435 = load i32, ptr %1434, align 4, !tbaa !154
  %1436 = icmp eq i32 %1435, 9
  br i1 %1436, label %1437, label %1446

1437:                                             ; preds = %1428
  %1438 = getelementptr inbounds %struct.rtx_def, ptr %1424, i64 0, i32 1, i32 0, i32 0, i64 1
  %1439 = load ptr, ptr %1438, align 8, !tbaa !150
  %1440 = load i32, ptr %1439, align 8
  %1441 = and i32 %1440, 65535
  %1442 = zext nneg i32 %1441 to i64
  %1443 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1442
  %1444 = load i32, ptr %1443, align 4, !tbaa !154
  %1445 = icmp eq i32 %1444, 9
  br i1 %1445, label %1473, label %1446, !prof !234

1446:                                             ; preds = %1428, %1422, %1419, %1437
  %1447 = load i32, ptr %34, align 8
  %1448 = trunc i32 %1447 to i16
  switch i16 %1448, label %3457 [
    i16 49, label %1473
    i16 50, label %1473
    i16 35, label %1449
  ], !prof !221

1449:                                             ; preds = %1446
  %1450 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1451 = load ptr, ptr %1450, align 8, !tbaa !150
  %1452 = load i32, ptr %1451, align 8
  %1453 = and i32 %1452, 65535
  %1454 = icmp eq i32 %1453, 49
  br i1 %1454, label %1455, label %3457

1455:                                             ; preds = %1449
  %1456 = getelementptr inbounds %struct.rtx_def, ptr %1451, i64 0, i32 1
  %1457 = load ptr, ptr %1456, align 8, !tbaa !150
  %1458 = load i32, ptr %1457, align 8
  %1459 = and i32 %1458, 65535
  %1460 = zext nneg i32 %1459 to i64
  %1461 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1460
  %1462 = load i32, ptr %1461, align 4, !tbaa !154
  %1463 = icmp eq i32 %1462, 9
  br i1 %1463, label %1464, label %3457

1464:                                             ; preds = %1455
  %1465 = getelementptr inbounds %struct.rtx_def, ptr %1451, i64 0, i32 1, i32 0, i32 0, i64 1
  %1466 = load ptr, ptr %1465, align 8, !tbaa !150
  %1467 = load i32, ptr %1466, align 8
  %1468 = and i32 %1467, 65535
  %1469 = zext nneg i32 %1468 to i64
  %1470 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1469
  %1471 = load i32, ptr %1470, align 4, !tbaa !154
  %1472 = icmp eq i32 %1471, 9
  br i1 %1472, label %1473, label %3457, !prof !234

1473:                                             ; preds = %1446, %1446, %1419, %1419, %1464, %1437
  %1474 = call fastcc ptr @simplify_plus_minus(i32 noundef 50, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %1475 = icmp eq ptr %1474, null
  br i1 %1475, label %3457, label %3458

1476:                                             ; preds = %687
  %1477 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %1478 = icmp eq ptr %1477, %37
  br i1 %1478, label %1479, label %1484, !prof !237

1479:                                             ; preds = %1476
  %1480 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %35, i32 noundef %1)
  %1481 = icmp eq ptr %1480, null
  br i1 %1481, label %1482, label %3458

1482:                                             ; preds = %1479
  %1483 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %35) #17
  br label %3458

1484:                                             ; preds = %1476
  switch i8 %44, label %1524 [
    i8 8, label %1485
    i8 9, label %1485
    i8 11, label %1485
    i8 17, label %1485
  ], !prof !238

1485:                                             ; preds = %1484, %1484, %1484, %1484
  %1486 = and i8 %44, -2
  %1487 = icmp eq i8 %1486, 8
  br i1 %1487, label %1492, label %1488

1488:                                             ; preds = %1485
  %1489 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1490 = load i8, ptr %1489, align 1, !tbaa !150
  %1491 = zext i8 %1490 to i32
  br label %1492

1492:                                             ; preds = %1485, %1488
  %1493 = phi i32 [ %1491, %1488 ], [ %1, %1485 ]
  %1494 = add i32 %1493, -38
  %1495 = zext i32 %1494 to i64
  %1496 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1495
  %1497 = load ptr, ptr %1496, align 8, !tbaa !139
  %1498 = getelementptr inbounds %struct.real_format, ptr %1497, i64 0, i32 11
  %1499 = load i8, ptr %1498, align 2, !tbaa !178
  %1500 = icmp eq i8 %1499, 0
  %1501 = load i32, ptr @flag_finite_math_only, align 4
  %1502 = icmp ne i32 %1501, 0
  %1503 = select i1 %1500, i1 true, i1 %1502
  br i1 %1503, label %1504, label %1532

1504:                                             ; preds = %1492
  switch i8 %44, label %1524 [
    i8 8, label %1505
    i8 9, label %1505
    i8 11, label %1505
    i8 17, label %1505
  ], !prof !239

1505:                                             ; preds = %1504, %1504, %1504, %1504
  %1506 = and i8 %44, -2
  %1507 = icmp eq i8 %1506, 8
  br i1 %1507, label %1512, label %1508

1508:                                             ; preds = %1505
  %1509 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1510 = load i8, ptr %1509, align 1, !tbaa !150
  %1511 = zext i8 %1510 to i32
  br label %1512

1512:                                             ; preds = %1505, %1508
  %1513 = phi i32 [ %1511, %1508 ], [ %1, %1505 ]
  %1514 = add i32 %1513, -38
  %1515 = zext i32 %1514 to i64
  %1516 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1515
  %1517 = load ptr, ptr %1516, align 8, !tbaa !139
  %1518 = getelementptr inbounds %struct.real_format, ptr %1517, i64 0, i32 14
  %1519 = load i8, ptr %1518, align 1, !tbaa !195
  %1520 = icmp ne i8 %1519, 0
  %1521 = load i32, ptr @flag_signed_zeros, align 4
  %1522 = icmp ne i32 %1521, 0
  %1523 = select i1 %1520, i1 %1522, i1 false
  br i1 %1523, label %1532, label %1524

1524:                                             ; preds = %1504, %1484, %1512
  %1525 = sext i32 %1 to i64
  %1526 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1525
  %1527 = load ptr, ptr %1526, align 8, !tbaa !139
  %1528 = icmp eq ptr %1527, %37
  br i1 %1528, label %1529, label %1532, !prof !237

1529:                                             ; preds = %1524
  %1530 = call i32 @side_effects_p(ptr noundef %35) #17
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %3458, label %1532

1532:                                             ; preds = %1524, %1529, %1512, %1492
  %1533 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1555, label %1535, !prof !240

1535:                                             ; preds = %1532
  switch i8 %44, label %1555 [
    i8 8, label %1536
    i8 9, label %1536
    i8 11, label %1536
    i8 17, label %1536
  ]

1536:                                             ; preds = %1535, %1535, %1535, %1535
  %1537 = and i8 %44, -2
  %1538 = icmp eq i8 %1537, 8
  br i1 %1538, label %1543, label %1539

1539:                                             ; preds = %1536
  %1540 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1541 = load i8, ptr %1540, align 1, !tbaa !150
  %1542 = zext i8 %1541 to i32
  br label %1543

1543:                                             ; preds = %1536, %1539
  %1544 = phi i32 [ %1542, %1539 ], [ %1, %1536 ]
  %1545 = add i32 %1544, -38
  %1546 = zext i32 %1545 to i64
  %1547 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1546
  %1548 = load ptr, ptr %1547, align 8, !tbaa !139
  %1549 = getelementptr inbounds %struct.real_format, ptr %1548, i64 0, i32 11
  %1550 = load i8, ptr %1549, align 2, !tbaa !178
  %1551 = icmp eq i8 %1550, 0
  %1552 = load i32, ptr @flag_finite_math_only, align 4
  %1553 = icmp ne i32 %1552, 0
  %1554 = select i1 %1551, i1 true, i1 %1553
  br i1 %1554, label %1555, label %1560

1555:                                             ; preds = %1543, %1535, %1532
  %1556 = sext i32 %1 to i64
  %1557 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %1556
  %1558 = load ptr, ptr %1557, align 8, !tbaa !139
  %1559 = icmp eq ptr %1558, %37
  br i1 %1559, label %3458, label %1560, !prof !237

1560:                                             ; preds = %1543, %1555
  %1561 = load i32, ptr %37, align 8
  %1562 = and i32 %1561, 65535
  %1563 = icmp eq i32 %1562, 30
  br i1 %1563, label %1564, label %1577, !prof !240

1564:                                             ; preds = %1560
  %1565 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %1566 = load i64, ptr %1565, align 8, !tbaa !150
  %1567 = call i32 @exact_log2(i64 noundef %1566) #17
  %1568 = sext i32 %1567 to i64
  %1569 = icmp sgt i32 %1567, -1
  br i1 %1569, label %1570, label %1577, !prof !241

1570:                                             ; preds = %1564
  %1571 = icmp ult i8 %688, 9
  %1572 = icmp ne i32 %1567, 63
  %1573 = or i1 %1571, %1572
  br i1 %1573, label %1574, label %1577, !prof !242

1574:                                             ; preds = %1570
  %1575 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1568) #17
  %1576 = call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef %35, ptr noundef %1575)
  br label %3458

1577:                                             ; preds = %1570, %1564, %1560
  %1578 = load i32, ptr %37, align 8
  %1579 = and i32 %1578, 65535
  %1580 = icmp eq i32 %1579, 32
  br i1 %1580, label %1581, label %1609, !prof !243

1581:                                             ; preds = %1577
  %1582 = lshr i32 %1578, 16
  %1583 = and i32 %1582, 255
  %1584 = icmp eq i32 %1583, 0
  br i1 %1584, label %1590, label %1585

1585:                                             ; preds = %1581
  %1586 = zext nneg i32 %1583 to i64
  %1587 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1586
  %1588 = load i8, ptr %1587, align 1, !tbaa !150
  %1589 = icmp eq i8 %1588, 2
  br i1 %1589, label %1590, label %1609

1590:                                             ; preds = %1585, %1581
  %1591 = load i32, ptr %35, align 8
  %1592 = lshr i32 %1591, 16
  %1593 = and i32 %1592, 255
  %1594 = icmp eq i32 %1593, %1
  br i1 %1594, label %1595, label %1609

1595:                                             ; preds = %1590
  %1596 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %1597 = load i64, ptr %1596, align 8, !tbaa !150
  %1598 = icmp eq i64 %1597, 0
  br i1 %1598, label %1599, label %1609

1599:                                             ; preds = %1595
  %1600 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %1601 = load i64, ptr %1600, align 8, !tbaa !150
  %1602 = call i32 @exact_log2(i64 noundef %1601) #17
  %1603 = icmp sgt i32 %1602, -1
  br i1 %1603, label %1604, label %1609

1604:                                             ; preds = %1599
  %1605 = add nuw i32 %1602, 64
  %1606 = zext i32 %1605 to i64
  %1607 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1606) #17
  %1608 = call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef %35, ptr noundef %1607)
  br label %3458

1609:                                             ; preds = %1585, %1599, %1595, %1590, %1577
  %1610 = load i32, ptr %37, align 8
  %1611 = and i32 %1610, 65535
  %1612 = icmp eq i32 %1611, 32
  br i1 %1612, label %1613, label %1669, !prof !243

1613:                                             ; preds = %1609
  %1614 = lshr i32 %1610, 16
  %1615 = and i32 %1614, 255
  %1616 = zext nneg i32 %1615 to i64
  %1617 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1616
  %1618 = load i8, ptr %1617, align 1, !tbaa !150
  %1619 = and i8 %1618, -2
  %1620 = icmp ne i8 %1619, 8
  %1621 = icmp eq i8 %1618, 9
  %1622 = or i1 %1621, %1620
  br i1 %1622, label %1669, label %1623

1623:                                             ; preds = %1613
  %1624 = load i32, ptr %35, align 8
  %1625 = lshr i32 %1624, 16
  %1626 = and i32 %1625, 255
  %1627 = icmp eq i32 %1626, %1
  br i1 %1627, label %1628, label %1669

1628:                                             ; preds = %1623
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #17
  %1629 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %1629, i64 32, i1 false), !tbaa.struct !177
  %1630 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %9, ptr noundef nonnull @dconst2) #17
  %1631 = icmp eq i8 %1630, 0
  br i1 %1631, label %1635, label %1632

1632:                                             ; preds = %1628
  %1633 = call ptr @copy_rtx(ptr noundef %35) #17
  %1634 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %35, ptr noundef %1633)
  br label %1666

1635:                                             ; preds = %1628
  %1636 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1658, label %1638

1638:                                             ; preds = %1635
  switch i8 %44, label %1658 [
    i8 8, label %1639
    i8 9, label %1639
    i8 11, label %1639
    i8 17, label %1639
  ]

1639:                                             ; preds = %1638, %1638, %1638, %1638
  %1640 = and i8 %44, -2
  %1641 = icmp eq i8 %1640, 8
  br i1 %1641, label %1646, label %1642

1642:                                             ; preds = %1639
  %1643 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %1644 = load i8, ptr %1643, align 1, !tbaa !150
  %1645 = zext i8 %1644 to i32
  br label %1646

1646:                                             ; preds = %1639, %1642
  %1647 = phi i32 [ %1645, %1642 ], [ %1, %1639 ]
  %1648 = add nsw i32 %1647, -38
  %1649 = zext i32 %1648 to i64
  %1650 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1649
  %1651 = load ptr, ptr %1650, align 8, !tbaa !139
  %1652 = getelementptr inbounds %struct.real_format, ptr %1651, i64 0, i32 11
  %1653 = load i8, ptr %1652, align 2, !tbaa !178
  %1654 = icmp eq i8 %1653, 0
  %1655 = load i32, ptr @flag_finite_math_only, align 4
  %1656 = icmp ne i32 %1655, 0
  %1657 = select i1 %1654, i1 true, i1 %1656
  br i1 %1657, label %1658, label %1666

1658:                                             ; preds = %1646, %1638, %1635
  %1659 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %9, ptr noundef nonnull @dconstm1) #17
  %1660 = icmp eq i8 %1659, 0
  br i1 %1660, label %1666, label %1661

1661:                                             ; preds = %1658
  %1662 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %35, i32 noundef %1)
  %1663 = icmp eq ptr %1662, null
  br i1 %1663, label %1664, label %1666

1664:                                             ; preds = %1661
  %1665 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %35) #17
  br label %1666

1666:                                             ; preds = %1646, %1664, %1661, %1658, %1632
  %1667 = phi i1 [ false, %1632 ], [ true, %1658 ], [ false, %1661 ], [ false, %1664 ], [ true, %1646 ]
  %1668 = phi ptr [ %1634, %1632 ], [ undef, %1658 ], [ %1662, %1661 ], [ %1665, %1664 ], [ undef, %1646 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #17
  br i1 %1667, label %1669, label %3458

1669:                                             ; preds = %1666, %1623, %1613, %1609
  switch i8 %44, label %1693 [
    i8 8, label %1670
    i8 9, label %1670
    i8 11, label %1670
    i8 17, label %1670
  ], !prof !244

1670:                                             ; preds = %1669, %1669, %1669, %1669
  %1671 = load i32, ptr %35, align 8
  %1672 = and i32 %1671, 65535
  %1673 = icmp eq i32 %1672, 51
  br i1 %1673, label %1674, label %1693

1674:                                             ; preds = %1670
  %1675 = load i32, ptr %34, align 8
  %1676 = and i32 %1675, 65535
  %1677 = icmp eq i32 %1676, 51
  br i1 %1677, label %1678, label %1693

1678:                                             ; preds = %1674
  %1679 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1680 = load ptr, ptr %1679, align 8, !tbaa !150
  %1681 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1682 = load ptr, ptr %1681, align 8, !tbaa !150
  %1683 = call i32 @rtx_equal_p(ptr noundef %1680, ptr noundef %1682) #17
  %1684 = icmp eq i32 %1683, 0
  br i1 %1684, label %1693, label %1685

1685:                                             ; preds = %1678
  %1686 = load ptr, ptr %1679, align 8, !tbaa !150
  %1687 = call i32 @side_effects_p(ptr noundef %1686) #17
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1689, label %1693

1689:                                             ; preds = %1685
  %1690 = load ptr, ptr %1679, align 8, !tbaa !150
  %1691 = load ptr, ptr %1681, align 8, !tbaa !150
  %1692 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %1690, ptr noundef %1691)
  br label %3458

1693:                                             ; preds = %1669, %1685, %1678, %1674, %1670
  %1694 = and i8 %44, -2
  %1695 = icmp eq i8 %1694, 8
  br i1 %1695, label %1696, label %1719, !prof !243

1696:                                             ; preds = %1693
  %1697 = load i32, ptr %35, align 8
  %1698 = and i32 %1697, 65535
  %1699 = icmp eq i32 %1698, 111
  br i1 %1699, label %1700, label %1719

1700:                                             ; preds = %1696
  %1701 = load i32, ptr %34, align 8
  %1702 = and i32 %1701, 65535
  %1703 = icmp eq i32 %1702, 111
  br i1 %1703, label %1704, label %1719

1704:                                             ; preds = %1700
  %1705 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1706 = load ptr, ptr %1705, align 8, !tbaa !150
  %1707 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1708 = load ptr, ptr %1707, align 8, !tbaa !150
  %1709 = call i32 @rtx_equal_p(ptr noundef %1706, ptr noundef %1708) #17
  %1710 = icmp eq i32 %1709, 0
  br i1 %1710, label %1719, label %1711

1711:                                             ; preds = %1704
  %1712 = load ptr, ptr %1705, align 8, !tbaa !150
  %1713 = call i32 @side_effects_p(ptr noundef %1712) #17
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1715, label %1719

1715:                                             ; preds = %1711
  %1716 = load ptr, ptr %1705, align 8, !tbaa !150
  %1717 = load ptr, ptr %1707, align 8, !tbaa !150
  %1718 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %1716, ptr noundef %1717)
  br label %3458

1719:                                             ; preds = %1711, %1704, %1700, %1696, %1693
  switch i8 %44, label %1720 [
    i8 8, label %1725
    i8 9, label %1725
    i8 11, label %1725
  ], !prof !245

1720:                                             ; preds = %1719
  %1721 = icmp ne i8 %44, 17
  %1722 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %1723 = icmp ne i32 %1722, 0
  %1724 = select i1 %1721, i1 true, i1 %1723, !prof !246
  br i1 %1724, label %1728, label %3457, !prof !246

1725:                                             ; preds = %1719, %1719, %1719
  %1726 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !154
  %1727 = icmp eq i32 %1726, 0
  br i1 %1727, label %3457, label %1728

1728:                                             ; preds = %1725, %1720
  %1729 = call fastcc ptr @simplify_associative_operation(i32 noundef 52, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %1730 = icmp eq ptr %1729, null
  br i1 %1730, label %3457, label %3458, !prof !246

1731:                                             ; preds = %687
  %1732 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %1733 = icmp eq ptr %1732, %37
  br i1 %1733, label %3458, label %1734, !prof !247

1734:                                             ; preds = %1731
  %1735 = load i32, ptr %37, align 8
  %1736 = and i32 %1735, 65535
  %1737 = icmp eq i32 %1736, 30
  br i1 %1737, label %1738, label %1745, !prof !248

1738:                                             ; preds = %1734
  %1739 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %1740 = load i64, ptr %1739, align 8, !tbaa !150
  %1741 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %38
  %1742 = load i64, ptr %1741, align 8, !tbaa !175
  %1743 = and i64 %1742, %1740
  %1744 = icmp eq i64 %1743, %1742
  br i1 %1744, label %3458, label %1745, !prof !249

1745:                                             ; preds = %1738, %1734
  %1746 = call i32 @rtx_equal_p(ptr noundef %36, ptr noundef nonnull %37) #17
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1751, label %1748, !prof !250

1748:                                             ; preds = %1745
  %1749 = call i32 @side_effects_p(ptr noundef %35) #17
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %3458, label %1751

1751:                                             ; preds = %1748, %1745
  %1752 = load i32, ptr %35, align 8
  %1753 = and i32 %1752, 65535
  %1754 = icmp eq i32 %1753, 64
  br i1 %1754, label %1755, label %1760, !prof !251

1755:                                             ; preds = %1751
  %1756 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1757 = load ptr, ptr %1756, align 8, !tbaa !150
  %1758 = call i32 @rtx_equal_p(ptr noundef %1757, ptr noundef %34) #17
  %1759 = icmp eq i32 %1758, 0
  br i1 %1759, label %1760, label %1769

1760:                                             ; preds = %1755, %1751
  %1761 = load i32, ptr %34, align 8
  %1762 = and i32 %1761, 65535
  %1763 = icmp eq i32 %1762, 64
  br i1 %1763, label %1764, label %1777, !prof !251

1764:                                             ; preds = %1760
  %1765 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1766 = load ptr, ptr %1765, align 8, !tbaa !150
  %1767 = call i32 @rtx_equal_p(ptr noundef %1766, ptr noundef %35) #17
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1777, label %1769

1769:                                             ; preds = %1764, %1755
  %1770 = call i32 @side_effects_p(ptr noundef %35) #17
  %1771 = icmp eq i32 %1770, 0
  %1772 = and i8 %44, -2
  %1773 = icmp eq i8 %1772, 2
  %1774 = and i1 %1773, %1771
  br i1 %1774, label %1775, label %1777

1775:                                             ; preds = %1769
  %1776 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  br label %3458

1777:                                             ; preds = %1764, %1769, %1760
  %1778 = load i32, ptr %34, align 8
  %1779 = and i32 %1778, 65535
  %1780 = icmp eq i32 %1779, 30
  br i1 %1780, label %1781, label %1791, !prof !248

1781:                                             ; preds = %1777
  %1782 = load i8, ptr %39, align 1, !tbaa !150
  %1783 = icmp ult i8 %1782, 9
  br i1 %1783, label %1784, label %1791, !prof !252

1784:                                             ; preds = %1781
  %1785 = call i64 @nonzero_bits(ptr noundef %35, i32 noundef %1) #17
  %1786 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1787 = load i64, ptr %1786, align 8, !tbaa !150
  %1788 = xor i64 %1787, -1
  %1789 = and i64 %1785, %1788
  %1790 = icmp eq i64 %1789, 0
  br i1 %1790, label %3458, label %1791, !prof !253

1791:                                             ; preds = %1784, %1781, %1777
  %1792 = load i32, ptr %35, align 8
  %1793 = and i32 %1792, 65535
  %1794 = icmp eq i32 %1793, 61
  br i1 %1794, label %1795, label %1840, !prof !254

1795:                                             ; preds = %1791
  %1796 = load i32, ptr %37, align 8
  %1797 = and i32 %1796, 65535
  %1798 = icmp eq i32 %1797, 30
  br i1 %1798, label %1799, label %1840, !prof !255

1799:                                             ; preds = %1795
  %1800 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1801 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %1802 = load ptr, ptr %1801, align 8, !tbaa !150
  %1803 = load i32, ptr %1802, align 8
  %1804 = and i32 %1803, 65535
  %1805 = icmp eq i32 %1804, 30
  br i1 %1805, label %1806, label %1840, !prof !256

1806:                                             ; preds = %1799
  %1807 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %38
  %1808 = load i64, ptr %1807, align 8, !tbaa !175
  %1809 = getelementptr inbounds %struct.rtx_def, ptr %1802, i64 0, i32 1
  %1810 = load i64, ptr %1809, align 8, !tbaa !150
  %1811 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %1812 = load i64, ptr %1811, align 8, !tbaa !150
  %1813 = and i64 %1812, %1810
  %1814 = icmp eq i64 %1813, %1810
  br i1 %1814, label %1815, label %1819, !prof !257

1815:                                             ; preds = %1806
  %1816 = load ptr, ptr %1800, align 8, !tbaa !150
  %1817 = call i32 @side_effects_p(ptr noundef %1816) #17
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %1837, label %1819

1819:                                             ; preds = %1815, %1806
  %1820 = or i64 %1812, %1810
  %1821 = and i64 %1820, %1808
  %1822 = icmp eq i64 %1821, %1808
  br i1 %1822, label %1823, label %1825, !prof !257

1823:                                             ; preds = %1819
  %1824 = load ptr, ptr %1800, align 8, !tbaa !150
  br label %1834

1825:                                             ; preds = %1819
  %1826 = and i64 %1813, %1808
  %1827 = icmp eq i64 %1826, 0
  br i1 %1827, label %1837, label %1828, !prof !258

1828:                                             ; preds = %1825
  %1829 = xor i64 %1812, -1
  %1830 = and i64 %1810, %1829
  %1831 = load ptr, ptr %1800, align 8, !tbaa !150
  %1832 = call ptr @gen_int_mode(i64 noundef %1830, i32 noundef %1) #17
  %1833 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1831, ptr noundef %1832)
  br label %1834

1834:                                             ; preds = %1823, %1828
  %1835 = phi ptr [ %1833, %1828 ], [ %1824, %1823 ]
  %1836 = call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1835, ptr noundef %34)
  br label %1837

1837:                                             ; preds = %1834, %1825, %1815
  %1838 = phi i1 [ false, %1815 ], [ true, %1825 ], [ false, %1834 ]
  %1839 = phi ptr [ %37, %1815 ], [ undef, %1825 ], [ %1836, %1834 ]
  br i1 %1838, label %1840, label %3458, !prof !258

1840:                                             ; preds = %1837, %1799, %1795, %1791
  %1841 = phi ptr [ %1839, %1837 ], [ undef, %1799 ], [ undef, %1795 ], [ undef, %1791 ]
  %1842 = load i32, ptr %35, align 8
  %1843 = and i32 %1842, 65535
  %1844 = icmp eq i32 %1843, 61
  br i1 %1844, label %1845, label %1864, !prof !259

1845:                                             ; preds = %1840
  %1846 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %1847 = load ptr, ptr %1846, align 8, !tbaa !150
  %1848 = call i32 @rtx_equal_p(ptr noundef %1847, ptr noundef %34) #17
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1850, label %1855, !prof !260

1850:                                             ; preds = %1845
  %1851 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %1852 = load ptr, ptr %1851, align 8, !tbaa !150
  %1853 = call i32 @rtx_equal_p(ptr noundef %1852, ptr noundef %34) #17
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1864, label %1855, !prof !260

1855:                                             ; preds = %1850, %1845
  %1856 = load ptr, ptr %1846, align 8, !tbaa !150
  %1857 = call i32 @side_effects_p(ptr noundef %1856) #17
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %1859, label %1864

1859:                                             ; preds = %1855
  %1860 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %1861 = load ptr, ptr %1860, align 8, !tbaa !150
  %1862 = call i32 @side_effects_p(ptr noundef %1861) #17
  %1863 = icmp eq i32 %1862, 0
  br i1 %1863, label %3458, label %1864

1864:                                             ; preds = %1850, %1859, %1855, %1840
  %1865 = load i32, ptr %34, align 8
  %1866 = trunc i32 %1865 to i16
  switch i16 %1866, label %1867 [
    i16 65, label %1868
    i16 39, label %1868
  ], !prof !261

1867:                                             ; preds = %1864
  br label %1868

1868:                                             ; preds = %1864, %1867, %1864
  %1869 = phi ptr [ %34, %1867 ], [ %35, %1864 ], [ %35, %1864 ]
  %1870 = phi ptr [ %35, %1867 ], [ %34, %1864 ], [ %34, %1864 ]
  %1871 = load i32, ptr %1870, align 8
  %1872 = and i32 %1871, 65535
  %1873 = icmp eq i32 %1872, 65
  br i1 %1873, label %1874, label %1910, !prof !262

1874:                                             ; preds = %1868
  %1875 = load i32, ptr %1869, align 8
  %1876 = and i32 %1875, 65535
  %1877 = icmp eq i32 %1876, 68
  br i1 %1877, label %1878, label %1910, !prof !263

1878:                                             ; preds = %1874
  %1879 = getelementptr inbounds %struct.rtx_def, ptr %1870, i64 0, i32 1
  %1880 = load ptr, ptr %1879, align 8, !tbaa !150
  %1881 = getelementptr inbounds %struct.rtx_def, ptr %1869, i64 0, i32 1
  %1882 = load ptr, ptr %1881, align 8, !tbaa !150
  %1883 = call i32 @rtx_equal_p(ptr noundef %1880, ptr noundef %1882) #17
  %1884 = icmp eq i32 %1883, 0
  br i1 %1884, label %1910, label %1885

1885:                                             ; preds = %1878
  %1886 = getelementptr inbounds %struct.rtx_def, ptr %1870, i64 0, i32 1, i32 0, i32 0, i64 1
  %1887 = load ptr, ptr %1886, align 8, !tbaa !150
  %1888 = load i32, ptr %1887, align 8
  %1889 = and i32 %1888, 65535
  %1890 = icmp eq i32 %1889, 30
  br i1 %1890, label %1891, label %1910

1891:                                             ; preds = %1885
  %1892 = getelementptr inbounds %struct.rtx_def, ptr %1869, i64 0, i32 1, i32 0, i32 0, i64 1
  %1893 = load ptr, ptr %1892, align 8, !tbaa !150
  %1894 = load i32, ptr %1893, align 8
  %1895 = and i32 %1894, 65535
  %1896 = icmp eq i32 %1895, 30
  br i1 %1896, label %1897, label %1910

1897:                                             ; preds = %1891
  %1898 = getelementptr inbounds %struct.rtx_def, ptr %1887, i64 0, i32 1
  %1899 = load i64, ptr %1898, align 8, !tbaa !150
  %1900 = getelementptr inbounds %struct.rtx_def, ptr %1893, i64 0, i32 1
  %1901 = load i64, ptr %1900, align 8, !tbaa !150
  %1902 = add nsw i64 %1901, %1899
  %1903 = load i8, ptr %39, align 1, !tbaa !150
  %1904 = zext i8 %1903 to i64
  %1905 = shl nuw nsw i64 %1904, 3
  %1906 = icmp eq i64 %1902, %1905
  br i1 %1906, label %1907, label %1910

1907:                                             ; preds = %1897
  %1908 = load ptr, ptr %1881, align 8, !tbaa !150
  %1909 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %1, ptr noundef %1908, ptr noundef nonnull %1887) #17
  br label %3458

1910:                                             ; preds = %1897, %1891, %1885, %1878, %1874, %1868
  %1911 = load i32, ptr %1870, align 8
  %1912 = and i32 %1911, 65535
  %1913 = icmp eq i32 %1912, 39
  br i1 %1913, label %1914, label %1985, !prof !264

1914:                                             ; preds = %1910
  %1915 = getelementptr inbounds %struct.rtx_def, ptr %1870, i64 0, i32 1
  %1916 = load ptr, ptr %1915, align 8, !tbaa !150
  %1917 = load i32, ptr %1916, align 8
  %1918 = and i32 %1917, 65535
  %1919 = icmp eq i32 %1918, 65
  br i1 %1919, label %1920, label %1985, !prof !265

1920:                                             ; preds = %1914
  %1921 = load i32, ptr %1869, align 8
  %1922 = and i32 %1921, 65535
  %1923 = icmp eq i32 %1922, 68
  br i1 %1923, label %1924, label %1985

1924:                                             ; preds = %1920
  %1925 = getelementptr inbounds %struct.rtx_def, ptr %1869, i64 0, i32 1
  %1926 = load ptr, ptr %1925, align 8, !tbaa !150
  %1927 = load i32, ptr %1926, align 8
  %1928 = and i32 %1927, 65535
  %1929 = icmp eq i32 %1928, 39
  br i1 %1929, label %1930, label %1985

1930:                                             ; preds = %1924
  %1931 = lshr i32 %1911, 16
  %1932 = and i32 %1931, 255
  %1933 = lshr i32 %1927, 16
  %1934 = and i32 %1933, 255
  %1935 = icmp eq i32 %1932, %1934
  br i1 %1935, label %1936, label %1985

1936:                                             ; preds = %1930
  %1937 = getelementptr inbounds %struct.rtx_def, ptr %1870, i64 0, i32 1, i32 0, i32 0, i64 1
  %1938 = load i32, ptr %1937, align 8, !tbaa !150
  %1939 = getelementptr inbounds %struct.rtx_def, ptr %1926, i64 0, i32 1
  %1940 = getelementptr inbounds %struct.rtx_def, ptr %1926, i64 0, i32 1, i32 0, i32 0, i64 1
  %1941 = load i32, ptr %1940, align 8, !tbaa !150
  %1942 = icmp eq i32 %1938, %1941
  br i1 %1942, label %1943, label %1985

1943:                                             ; preds = %1936
  %1944 = zext nneg i32 %1932 to i64
  %1945 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1944
  %1946 = load i8, ptr %1945, align 1, !tbaa !150
  %1947 = lshr i32 %1917, 16
  %1948 = and i32 %1947, 255
  %1949 = zext nneg i32 %1948 to i64
  %1950 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1949
  %1951 = load i8, ptr %1950, align 1, !tbaa !150
  %1952 = icmp ult i8 %1946, %1951
  br i1 %1952, label %1953, label %1985

1953:                                             ; preds = %1943
  %1954 = getelementptr inbounds %struct.rtx_def, ptr %1916, i64 0, i32 1
  %1955 = load ptr, ptr %1954, align 8, !tbaa !150
  %1956 = load ptr, ptr %1939, align 8, !tbaa !150
  %1957 = call i32 @rtx_equal_p(ptr noundef %1955, ptr noundef %1956) #17
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %1985, label %1959

1959:                                             ; preds = %1953
  %1960 = load ptr, ptr %1915, align 8, !tbaa !150
  %1961 = getelementptr inbounds %struct.rtx_def, ptr %1960, i64 0, i32 1, i32 0, i32 0, i64 1
  %1962 = load ptr, ptr %1961, align 8, !tbaa !150
  %1963 = load i32, ptr %1962, align 8
  %1964 = and i32 %1963, 65535
  %1965 = icmp eq i32 %1964, 30
  br i1 %1965, label %1966, label %1985

1966:                                             ; preds = %1959
  %1967 = getelementptr inbounds %struct.rtx_def, ptr %1869, i64 0, i32 1, i32 0, i32 0, i64 1
  %1968 = load ptr, ptr %1967, align 8, !tbaa !150
  %1969 = load i32, ptr %1968, align 8
  %1970 = and i32 %1969, 65535
  %1971 = icmp eq i32 %1970, 30
  br i1 %1971, label %1972, label %1985

1972:                                             ; preds = %1966
  %1973 = getelementptr inbounds %struct.rtx_def, ptr %1962, i64 0, i32 1
  %1974 = load i64, ptr %1973, align 8, !tbaa !150
  %1975 = getelementptr inbounds %struct.rtx_def, ptr %1968, i64 0, i32 1
  %1976 = load i64, ptr %1975, align 8, !tbaa !150
  %1977 = add nsw i64 %1976, %1974
  %1978 = load i8, ptr %39, align 1, !tbaa !150
  %1979 = zext i8 %1978 to i64
  %1980 = shl nuw nsw i64 %1979, 3
  %1981 = icmp eq i64 %1977, %1980
  br i1 %1981, label %1982, label %1985

1982:                                             ; preds = %1972
  %1983 = load ptr, ptr %1925, align 8, !tbaa !150
  %1984 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %1, ptr noundef %1983, ptr noundef nonnull %1962) #17
  br label %3458

1985:                                             ; preds = %1972, %1966, %1959, %1953, %1943, %1936, %1930, %1924, %1920, %1914, %1910
  %1986 = load i32, ptr %34, align 8
  %1987 = and i32 %1986, 65535
  %1988 = icmp eq i32 %1987, 30
  br i1 %1988, label %1989, label %2021, !prof !266

1989:                                             ; preds = %1985
  %1990 = load i8, ptr %39, align 1, !tbaa !150
  %1991 = icmp ult i8 %1990, 9
  br i1 %1991, label %1996, label %1992, !prof !267

1992:                                             ; preds = %1989
  %1993 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %1994 = load i64, ptr %1993, align 8, !tbaa !150
  %1995 = icmp sgt i64 %1994, 0
  br i1 %1995, label %1996, label %2021

1996:                                             ; preds = %1992, %1989
  %1997 = load i32, ptr %35, align 8
  %1998 = and i32 %1997, 65535
  %1999 = icmp eq i32 %1998, 61
  br i1 %1999, label %2000, label %2021, !prof !268

2000:                                             ; preds = %1996
  %2001 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2002 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2003 = load ptr, ptr %2002, align 8, !tbaa !150
  %2004 = load i32, ptr %2003, align 8
  %2005 = and i32 %2004, 65535
  %2006 = icmp eq i32 %2005, 30
  br i1 %2006, label %2007, label %2021, !prof !269

2007:                                             ; preds = %2000
  %2008 = getelementptr inbounds %struct.rtx_def, ptr %2003, i64 0, i32 1
  %2009 = load i64, ptr %2008, align 8, !tbaa !150
  %2010 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %2011 = load i64, ptr %2010, align 8, !tbaa !150
  %2012 = and i64 %2011, %2009
  %2013 = icmp eq i64 %2012, 0
  br i1 %2013, label %2021, label %2014, !prof !269

2014:                                             ; preds = %2007
  %2015 = load ptr, ptr %2001, align 8, !tbaa !150
  %2016 = xor i64 %2011, -1
  %2017 = and i64 %2009, %2016
  %2018 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2017) #17
  %2019 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2015, ptr noundef %2018)
  %2020 = call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %2019, ptr noundef %34)
  br label %3458

2021:                                             ; preds = %1992, %2007, %2000, %1996, %1985
  %2022 = load i32, ptr %37, align 8
  %2023 = and i32 %2022, 65535
  %2024 = icmp eq i32 %2023, 30
  br i1 %2024, label %2025, label %2070, !prof !266

2025:                                             ; preds = %2021
  %2026 = load i32, ptr %35, align 8
  %2027 = and i32 %2026, 65535
  %2028 = icmp eq i32 %2027, 67
  br i1 %2028, label %2029, label %2070, !prof !270

2029:                                             ; preds = %2025
  %2030 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2031 = load ptr, ptr %2030, align 8, !tbaa !150
  %2032 = load i32, ptr %2031, align 8
  %2033 = and i32 %2032, 65535
  %2034 = icmp eq i32 %2033, 49
  br i1 %2034, label %2035, label %2070

2035:                                             ; preds = %2029
  %2036 = getelementptr inbounds %struct.rtx_def, ptr %2031, i64 0, i32 1, i32 0, i32 0, i64 1
  %2037 = load ptr, ptr %2036, align 8, !tbaa !150
  %2038 = load i32, ptr %2037, align 8
  %2039 = and i32 %2038, 65535
  %2040 = icmp eq i32 %2039, 30
  br i1 %2040, label %2041, label %2070

2041:                                             ; preds = %2035
  %2042 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2043 = load ptr, ptr %2042, align 8, !tbaa !150
  %2044 = load i32, ptr %2043, align 8
  %2045 = and i32 %2044, 65535
  %2046 = icmp eq i32 %2045, 30
  br i1 %2046, label %2047, label %2070

2047:                                             ; preds = %2041
  %2048 = getelementptr inbounds %struct.rtx_def, ptr %2043, i64 0, i32 1
  %2049 = load i64, ptr %2048, align 8, !tbaa !150
  %2050 = icmp slt i64 %2049, 64
  br i1 %2050, label %2051, label %2070

2051:                                             ; preds = %2047
  %2052 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2053 = load i64, ptr %2052, align 8, !tbaa !150
  %2054 = and i64 %2049, 4294967295
  %2055 = shl i64 %2053, %2054
  %2056 = ashr exact i64 %2055, %2054
  %2057 = icmp eq i64 %2056, %2053
  br i1 %2057, label %2058, label %2067

2058:                                             ; preds = %2051
  %2059 = call i64 @nonzero_bits(ptr noundef nonnull %2031, i32 noundef %1) #17
  %2060 = and i64 %2059, %2055
  %2061 = icmp eq i64 %2060, 0
  br i1 %2061, label %2062, label %2067

2062:                                             ; preds = %2058
  %2063 = load ptr, ptr %2030, align 8, !tbaa !150
  %2064 = call ptr @plus_constant(ptr noundef %2063, i64 noundef %2055) #17
  %2065 = load ptr, ptr %2042, align 8, !tbaa !150
  %2066 = call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %1, ptr noundef %2064, ptr noundef %2065)
  br label %2067

2067:                                             ; preds = %2062, %2058, %2051
  %2068 = phi i1 [ false, %2062 ], [ true, %2058 ], [ true, %2051 ]
  %2069 = phi ptr [ %2066, %2062 ], [ %1841, %2058 ], [ %1841, %2051 ]
  br i1 %2068, label %2070, label %3458

2070:                                             ; preds = %2021, %2067, %2047, %2041, %2035, %2029, %2025
  %2071 = call fastcc ptr @simplify_associative_operation(i32 noundef 62, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %2072 = icmp eq ptr %2071, null
  br i1 %2072, label %3457, label %3458, !prof !271

2073:                                             ; preds = %687
  %2074 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %2075 = icmp eq ptr %2074, %37
  br i1 %2075, label %3458, label %2076, !prof !159

2076:                                             ; preds = %2073
  %2077 = load i32, ptr %37, align 8
  %2078 = and i32 %2077, 65535
  %2079 = icmp eq i32 %2078, 30
  br i1 %2079, label %2080, label %2092, !prof !158

2080:                                             ; preds = %2076
  %2081 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2082 = load i64, ptr %2081, align 8, !tbaa !150
  %2083 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %38
  %2084 = load i64, ptr %2083, align 8, !tbaa !175
  %2085 = and i64 %2084, %2082
  %2086 = icmp eq i64 %2085, %2084
  br i1 %2086, label %2087, label %2092, !prof !159

2087:                                             ; preds = %2080
  %2088 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %35, i32 noundef %1)
  %2089 = icmp eq ptr %2088, null
  br i1 %2089, label %2090, label %3458

2090:                                             ; preds = %2087
  %2091 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %35) #17
  br label %3458

2092:                                             ; preds = %2080, %2076
  %2093 = call i32 @rtx_equal_p(ptr noundef %36, ptr noundef nonnull %37) #17
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %2104, label %2095, !prof !158

2095:                                             ; preds = %2092
  %2096 = call i32 @side_effects_p(ptr noundef %35) #17
  %2097 = icmp ne i32 %2096, 0
  %2098 = icmp eq i8 %44, 1
  %2099 = or i1 %2098, %2097
  br i1 %2099, label %2104, label %2100

2100:                                             ; preds = %2095
  %2101 = sext i32 %1 to i64
  %2102 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2101
  %2103 = load ptr, ptr %2102, align 8, !tbaa !139
  br label %3458

2104:                                             ; preds = %2095, %2092
  %2105 = load i32, ptr %34, align 8
  %2106 = trunc i32 %2105 to i16
  switch i16 %2106, label %2171 [
    i16 30, label %2107
    i16 32, label %2107
  ]

2107:                                             ; preds = %2104, %2104
  %2108 = icmp eq i8 %44, 2
  br i1 %2108, label %2109, label %2148, !prof !158

2109:                                             ; preds = %2107
  %2110 = load i8, ptr %39, align 1, !tbaa !150
  %2111 = zext i8 %2110 to i32
  %2112 = shl nuw nsw i32 %2111, 3
  %2113 = icmp eq i8 %2110, 0
  br i1 %2113, label %2148, label %2114, !prof !159

2114:                                             ; preds = %2109
  %2115 = icmp ult i8 %2110, 9
  %2116 = and i32 %2105, 65535
  %2117 = icmp eq i32 %2116, 30
  %2118 = and i1 %2117, %2115
  br i1 %2118, label %2119, label %2121, !prof !272

2119:                                             ; preds = %2114
  %2120 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  br label %2133

2121:                                             ; preds = %2114
  %2122 = icmp ult i8 %2110, 17
  %2123 = and i32 %2105, 65535
  %2124 = icmp eq i32 %2123, 32
  %2125 = and i1 %2124, %2122
  br i1 %2125, label %2126, label %2148

2126:                                             ; preds = %2121
  %2127 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %2128 = load i64, ptr %2127, align 8, !tbaa !150
  %2129 = icmp eq i64 %2128, 0
  br i1 %2129, label %2130, label %2148

2130:                                             ; preds = %2126
  %2131 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %2132 = add nsw i32 %2112, -64
  br label %2133

2133:                                             ; preds = %2130, %2119
  %2134 = phi ptr [ %2120, %2119 ], [ %2131, %2130 ]
  %2135 = phi i32 [ %2112, %2119 ], [ %2132, %2130 ]
  %2136 = load i64, ptr %2134, align 8, !tbaa !150
  %2137 = icmp ult i32 %2135, 64
  %2138 = zext nneg i32 %2135 to i64
  %2139 = shl nsw i64 -1, %2138
  %2140 = xor i64 %2139, -1
  %2141 = select i1 %2137, i64 %2140, i64 -1, !prof !158
  %2142 = and i64 %2141, %2136
  %2143 = add nsw i32 %2135, -1
  %2144 = zext nneg i32 %2143 to i64
  %2145 = shl nuw i64 1, %2144
  %2146 = icmp eq i64 %2142, %2145
  %2147 = zext i1 %2146 to i8
  br label %2148

2148:                                             ; preds = %2107, %2109, %2121, %2126, %2133
  %2149 = phi i8 [ %2147, %2133 ], [ 0, %2107 ], [ 0, %2109 ], [ 0, %2126 ], [ 0, %2121 ]
  %2150 = icmp eq i8 %2149, 0
  br i1 %2150, label %2153, label %2151, !prof !158

2151:                                             ; preds = %2148
  %2152 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  br label %3458

2153:                                             ; preds = %2148
  switch i16 %2106, label %2171 [
    i16 30, label %2154
    i16 32, label %2154
  ], !prof !273

2154:                                             ; preds = %2153, %2153
  %2155 = load i32, ptr %35, align 8
  %2156 = and i32 %2155, 65535
  %2157 = icmp eq i32 %2156, 49
  br i1 %2157, label %2158, label %2171, !prof !159

2158:                                             ; preds = %2154
  %2159 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2160 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2161 = load ptr, ptr %2160, align 8, !tbaa !150
  %2162 = load i32, ptr %2161, align 8
  %2163 = trunc i32 %2162 to i16
  switch i16 %2163, label %2171 [
    i16 30, label %2164
    i16 32, label %2164
  ]

2164:                                             ; preds = %2158, %2158
  %2165 = call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %2161), !range !214
  %2166 = icmp eq i8 %2165, 0
  br i1 %2166, label %2171, label %2167

2167:                                             ; preds = %2164
  %2168 = load ptr, ptr %2159, align 8, !tbaa !150
  %2169 = call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %34, ptr noundef nonnull %2161)
  %2170 = call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %2168, ptr noundef %2169)
  br label %3458

2171:                                             ; preds = %2164, %2154, %2104, %2158, %2153
  %2172 = load i8, ptr %39, align 1, !tbaa !150
  %2173 = icmp ult i8 %2172, 9
  br i1 %2173, label %2174, label %2181, !prof !158

2174:                                             ; preds = %2171
  %2175 = call i64 @nonzero_bits(ptr noundef %35, i32 noundef %1) #17
  %2176 = call i64 @nonzero_bits(ptr noundef %34, i32 noundef %1) #17
  %2177 = and i64 %2176, %2175
  %2178 = icmp eq i64 %2177, 0
  br i1 %2178, label %2179, label %2181, !prof !159

2179:                                             ; preds = %2174
  %2180 = call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  br label %3458

2181:                                             ; preds = %2174, %2171
  %2182 = load i32, ptr %35, align 8
  %2183 = and i32 %2182, 65535
  %2184 = icmp eq i32 %2183, 64
  br i1 %2184, label %2185, label %2188, !prof !159

2185:                                             ; preds = %2181
  %2186 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2187 = load ptr, ptr %2186, align 8, !tbaa !150
  br label %2188

2188:                                             ; preds = %2185, %2181
  %2189 = phi i32 [ 1, %2185 ], [ 0, %2181 ]
  %2190 = phi ptr [ %2187, %2185 ], [ %35, %2181 ]
  %2191 = load i32, ptr %34, align 8
  %2192 = and i32 %2191, 65535
  %2193 = icmp eq i32 %2192, 64
  br i1 %2193, label %2194, label %2198, !prof !159

2194:                                             ; preds = %2188
  %2195 = add nuw nsw i32 %2189, 1
  %2196 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %2197 = load ptr, ptr %2196, align 8, !tbaa !150
  br label %2198

2198:                                             ; preds = %2194, %2188
  %2199 = phi i32 [ %2195, %2194 ], [ %2189, %2188 ]
  %2200 = phi ptr [ %2197, %2194 ], [ %34, %2188 ]
  switch i32 %2199, label %2209 [
    i32 2, label %2201
    i32 1, label %2203
  ], !prof !274

2201:                                             ; preds = %2198
  %2202 = call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %2190, ptr noundef %2200)
  br label %2209

2203:                                             ; preds = %2198
  %2204 = call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %2190, ptr noundef %2200)
  %2205 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %2204, i32 noundef %1)
  %2206 = icmp eq ptr %2205, null
  br i1 %2206, label %2207, label %2209

2207:                                             ; preds = %2203
  %2208 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %2204) #17
  br label %2209

2209:                                             ; preds = %2207, %2203, %2201, %2198
  %2210 = phi i1 [ false, %2201 ], [ true, %2198 ], [ false, %2203 ], [ false, %2207 ]
  %2211 = phi ptr [ %2202, %2201 ], [ undef, %2198 ], [ %2205, %2203 ], [ %2208, %2207 ]
  br i1 %2210, label %2212, label %3458, !prof !158

2212:                                             ; preds = %2209
  %2213 = load i32, ptr %2190, align 8
  %2214 = and i32 %2213, 65535
  %2215 = icmp eq i32 %2214, 61
  br i1 %2215, label %2216, label %2234, !prof !275

2216:                                             ; preds = %2212
  %2217 = getelementptr inbounds %struct.rtx_def, ptr %2190, i64 0, i32 1
  %2218 = getelementptr inbounds %struct.rtx_def, ptr %2190, i64 0, i32 1, i32 0, i32 0, i64 1
  %2219 = load ptr, ptr %2218, align 8, !tbaa !150
  %2220 = call i32 @rtx_equal_p(ptr noundef %2219, ptr noundef %2200) #17
  %2221 = icmp eq i32 %2220, 0
  br i1 %2221, label %2234, label %2222, !prof !276

2222:                                             ; preds = %2216
  %2223 = call i32 @side_effects_p(ptr noundef %2200) #17
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2225, label %2234, !prof !277

2225:                                             ; preds = %2222
  %2226 = load ptr, ptr %2217, align 8, !tbaa !150
  %2227 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %2226, i32 noundef %1)
  %2228 = icmp eq ptr %2227, null
  br i1 %2228, label %2229, label %2231, !prof !277

2229:                                             ; preds = %2225
  %2230 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %2226) #17
  br label %2231

2231:                                             ; preds = %2229, %2225
  %2232 = phi ptr [ %2230, %2229 ], [ %2227, %2225 ]
  %2233 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2232, ptr noundef %2200)
  br label %3458

2234:                                             ; preds = %2222, %2216, %2212
  %2235 = load i32, ptr %2190, align 8
  %2236 = and i32 %2235, 65535
  %2237 = icmp eq i32 %2236, 61
  br i1 %2237, label %2238, label %2256, !prof !278

2238:                                             ; preds = %2234
  %2239 = getelementptr inbounds %struct.rtx_def, ptr %2190, i64 0, i32 1
  %2240 = load ptr, ptr %2239, align 8, !tbaa !150
  %2241 = call i32 @rtx_equal_p(ptr noundef %2240, ptr noundef %2200) #17
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2256, label %2243

2243:                                             ; preds = %2238
  %2244 = call i32 @side_effects_p(ptr noundef %2200) #17
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2246, label %2256

2246:                                             ; preds = %2243
  %2247 = getelementptr inbounds %struct.rtx_def, ptr %2190, i64 0, i32 1, i32 0, i32 0, i64 1
  %2248 = load ptr, ptr %2247, align 8, !tbaa !150
  %2249 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %2248, i32 noundef %1)
  %2250 = icmp eq ptr %2249, null
  br i1 %2250, label %2251, label %2253

2251:                                             ; preds = %2246
  %2252 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %2248) #17
  br label %2253

2253:                                             ; preds = %2251, %2246
  %2254 = phi ptr [ %2252, %2251 ], [ %2249, %2246 ]
  %2255 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2254, ptr noundef %2200)
  br label %3458

2256:                                             ; preds = %2243, %2238, %2234
  %2257 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %2258 = icmp eq ptr %2257, %37
  br i1 %2258, label %2259, label %2269, !prof !279

2259:                                             ; preds = %2256
  %2260 = load i32, ptr %2190, align 8
  %2261 = and i32 %2260, 65535
  %2262 = zext nneg i32 %2261 to i64
  %2263 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2262
  %2264 = load i32, ptr %2263, align 4, !tbaa !154
  %2265 = icmp ult i32 %2264, 2
  br i1 %2265, label %2266, label %2269, !prof !280

2266:                                             ; preds = %2259
  %2267 = call ptr @reversed_comparison(ptr noundef nonnull %2190, i32 noundef %1) #17
  %2268 = icmp eq ptr %2267, null
  br i1 %2268, label %2269, label %3458

2269:                                             ; preds = %2266, %2259, %2256
  %2270 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %2271 = icmp eq ptr %2270, %37
  br i1 %2271, label %2272, label %2296, !prof !279

2272:                                             ; preds = %2269
  %2273 = load i32, ptr %2190, align 8
  %2274 = and i32 %2273, 65535
  %2275 = icmp eq i32 %2274, 68
  br i1 %2275, label %2276, label %2296, !prof !280

2276:                                             ; preds = %2272
  %2277 = getelementptr inbounds %struct.rtx_def, ptr %2190, i64 0, i32 1
  %2278 = getelementptr inbounds %struct.rtx_def, ptr %2190, i64 0, i32 1, i32 0, i32 0, i64 1
  %2279 = load ptr, ptr %2278, align 8, !tbaa !150
  %2280 = load i32, ptr %2279, align 8
  %2281 = and i32 %2280, 65535
  %2282 = icmp eq i32 %2281, 30
  br i1 %2282, label %2283, label %2296

2283:                                             ; preds = %2276
  %2284 = getelementptr inbounds %struct.rtx_def, ptr %2279, i64 0, i32 1
  %2285 = load i64, ptr %2284, align 8, !tbaa !150
  %2286 = load i8, ptr %39, align 1, !tbaa !150
  %2287 = zext i8 %2286 to i32
  %2288 = shl nuw nsw i32 %2287, 3
  %2289 = add nsw i32 %2288, -1
  %2290 = sext i32 %2289 to i64
  %2291 = icmp eq i64 %2285, %2290
  br i1 %2291, label %2292, label %2296

2292:                                             ; preds = %2283
  %2293 = load ptr, ptr %2277, align 8, !tbaa !150
  %2294 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %2295 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef %1, ptr noundef %2293, ptr noundef %2294) #17
  br label %3458

2296:                                             ; preds = %2283, %2276, %2272, %2269
  %2297 = load i8, ptr %39, align 1, !tbaa !150
  %2298 = icmp ult i8 %2297, 9
  br i1 %2298, label %2299, label %2322, !prof !281

2299:                                             ; preds = %2296
  %2300 = shl nuw nsw i8 %2297, 3
  %2301 = zext nneg i8 %2300 to i64
  %2302 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %38
  %2303 = load i64, ptr %2302, align 8, !tbaa !175
  %2304 = and i64 %2303, 1
  %2305 = add nuw nsw i64 %2301, 4294967295
  %2306 = and i64 %2305, 4294967295
  %2307 = shl nuw i64 1, %2306
  %2308 = icmp eq i64 %2304, %2307
  %2309 = load ptr, ptr @const_true_rtx, align 8
  %2310 = icmp eq ptr %2309, %37
  %2311 = select i1 %2308, i1 %2310, i1 false, !prof !278
  br i1 %2311, label %2312, label %2322, !prof !278

2312:                                             ; preds = %2299
  %2313 = load i32, ptr %2190, align 8
  %2314 = and i32 %2313, 65535
  %2315 = zext nneg i32 %2314 to i64
  %2316 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %2315
  %2317 = load i32, ptr %2316, align 4, !tbaa !154
  %2318 = icmp ult i32 %2317, 2
  br i1 %2318, label %2319, label %2322

2319:                                             ; preds = %2312
  %2320 = call ptr @reversed_comparison(ptr noundef nonnull %2190, i32 noundef %1) #17
  %2321 = icmp eq ptr %2320, null
  br i1 %2321, label %2322, label %3458

2322:                                             ; preds = %2319, %2312, %2299, %2296
  %2323 = call fastcc ptr @simplify_associative_operation(i32 noundef 63, i32 noundef %1, ptr noundef nonnull %2190, ptr noundef %2200)
  %2324 = icmp eq ptr %2323, null
  br i1 %2324, label %3457, label %3458, !prof !281

2325:                                             ; preds = %687
  %2326 = sext i32 %1 to i64
  %2327 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2326
  %2328 = load ptr, ptr %2327, align 8, !tbaa !139
  %2329 = icmp eq ptr %2328, %37
  br i1 %2329, label %2330, label %2333, !prof !282

2330:                                             ; preds = %2325
  %2331 = call i32 @side_effects_p(ptr noundef %35) #17
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %3458, label %2333

2333:                                             ; preds = %2330, %2325
  %2334 = load i8, ptr %39, align 1, !tbaa !150
  %2335 = icmp ult i8 %2334, 9
  br i1 %2335, label %2336, label %2362, !prof !283

2336:                                             ; preds = %2333
  %2337 = call i64 @nonzero_bits(ptr noundef %36, i32 noundef %1) #17
  %2338 = load i32, ptr %37, align 8
  %2339 = and i32 %2338, 65535
  %2340 = icmp eq i32 %2339, 30
  br i1 %2340, label %2341, label %2347, !prof !283

2341:                                             ; preds = %2336
  %2342 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2343 = load i64, ptr %2342, align 8, !tbaa !150
  %2344 = xor i64 %2343, -1
  %2345 = and i64 %2337, %2344
  %2346 = icmp eq i64 %2345, 0
  br i1 %2346, label %2359, label %2347, !prof !282

2347:                                             ; preds = %2341, %2336
  %2348 = call i64 @nonzero_bits(ptr noundef %37, i32 noundef %1) #17
  %2349 = and i64 %2348, %2337
  %2350 = icmp eq i64 %2349, 0
  br i1 %2350, label %2351, label %2359, !prof !282

2351:                                             ; preds = %2347
  %2352 = call i32 @side_effects_p(ptr noundef %35) #17
  %2353 = icmp eq i32 %2352, 0
  br i1 %2353, label %2354, label %2359

2354:                                             ; preds = %2351
  %2355 = call i32 @side_effects_p(ptr noundef %34) #17
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2357, label %2359

2357:                                             ; preds = %2354
  %2358 = load ptr, ptr %2327, align 8, !tbaa !139
  br label %2359

2359:                                             ; preds = %2341, %2357, %2354, %2351, %2347
  %2360 = phi i1 [ false, %2357 ], [ true, %2354 ], [ true, %2351 ], [ true, %2347 ], [ false, %2341 ]
  %2361 = phi ptr [ %2358, %2357 ], [ %35, %2354 ], [ %35, %2351 ], [ %35, %2347 ], [ %35, %2341 ]
  br i1 %2360, label %2362, label %3458, !prof !283

2362:                                             ; preds = %2359, %2333
  %2363 = phi ptr [ %2361, %2359 ], [ undef, %2333 ]
  %2364 = call i32 @rtx_equal_p(ptr noundef %36, ptr noundef %37) #17
  %2365 = icmp eq i32 %2364, 0
  br i1 %2365, label %2371, label %2366, !prof !283

2366:                                             ; preds = %2362
  %2367 = call i32 @side_effects_p(ptr noundef %35) #17
  %2368 = icmp ne i32 %2367, 0
  %2369 = icmp eq i8 %44, 1
  %2370 = or i1 %2369, %2368
  br i1 %2370, label %2371, label %3458

2371:                                             ; preds = %2366, %2362
  %2372 = load i32, ptr %35, align 8
  %2373 = and i32 %2372, 65535
  %2374 = icmp eq i32 %2373, 64
  br i1 %2374, label %2375, label %2380, !prof !284

2375:                                             ; preds = %2371
  %2376 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2377 = load ptr, ptr %2376, align 8, !tbaa !150
  %2378 = call i32 @rtx_equal_p(ptr noundef %2377, ptr noundef %34) #17
  %2379 = icmp eq i32 %2378, 0
  br i1 %2379, label %2380, label %2389, !prof !285

2380:                                             ; preds = %2375, %2371
  %2381 = load i32, ptr %34, align 8
  %2382 = and i32 %2381, 65535
  %2383 = icmp eq i32 %2382, 64
  br i1 %2383, label %2384, label %2396, !prof !282

2384:                                             ; preds = %2380
  %2385 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %2386 = load ptr, ptr %2385, align 8, !tbaa !150
  %2387 = call i32 @rtx_equal_p(ptr noundef %2386, ptr noundef %35) #17
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2396, label %2389

2389:                                             ; preds = %2384, %2375
  %2390 = call i32 @side_effects_p(ptr noundef %35) #17
  %2391 = icmp ne i32 %2390, 0
  %2392 = icmp eq i8 %44, 1
  %2393 = or i1 %2392, %2391
  br i1 %2393, label %2396, label %2394

2394:                                             ; preds = %2389
  %2395 = load ptr, ptr %2327, align 8, !tbaa !139
  br label %3458

2396:                                             ; preds = %2384, %2389, %2380
  %2397 = load i32, ptr %35, align 8
  %2398 = and i32 %2397, 65534
  %2399 = icmp eq i32 %2398, 98
  br i1 %2399, label %2400, label %2428, !prof !282

2400:                                             ; preds = %2396
  %2401 = load i32, ptr %37, align 8
  %2402 = and i32 %2401, 65535
  %2403 = icmp eq i32 %2402, 30
  br i1 %2403, label %2404, label %2428

2404:                                             ; preds = %2400
  %2405 = load i8, ptr %39, align 1, !tbaa !150
  %2406 = icmp ult i8 %2405, 9
  br i1 %2406, label %2407, label %2428

2407:                                             ; preds = %2404
  %2408 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2409 = load ptr, ptr %2408, align 8, !tbaa !150
  %2410 = load i32, ptr %2409, align 8
  %2411 = lshr i32 %2410, 16
  %2412 = and i32 %2411, 255
  %2413 = zext nneg i32 %2412 to i64
  %2414 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %2413
  %2415 = load i64, ptr %2414, align 8, !tbaa !175
  %2416 = xor i64 %2415, -1
  %2417 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2418 = load i64, ptr %2417, align 8, !tbaa !150
  %2419 = and i64 %2418, %2416
  %2420 = icmp eq i64 %2419, 0
  br i1 %2420, label %2421, label %2428

2421:                                             ; preds = %2407
  %2422 = call ptr @gen_int_mode(i64 noundef %2418, i32 noundef %2412) #17
  %2423 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %2412, ptr noundef nonnull %2409, ptr noundef %2422)
  %2424 = call ptr @simplify_unary_operation(i32 noundef 99, i32 noundef %1, ptr noundef %2423, i32 noundef %2412)
  %2425 = icmp eq ptr %2424, null
  br i1 %2425, label %2426, label %3458

2426:                                             ; preds = %2421
  %2427 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 99, i32 noundef %1, ptr noundef %2423) #17
  br label %3458

2428:                                             ; preds = %2407, %2404, %2400, %2396
  %2429 = and i32 %2397, 65535
  %2430 = trunc i32 %2397 to i16
  switch i16 %2430, label %2492 [
    i16 100, label %2431
    i16 62, label %2451
    i16 63, label %2474
  ], !prof !286

2431:                                             ; preds = %2428
  %2432 = load i32, ptr %37, align 8
  %2433 = and i32 %2432, 65535
  %2434 = icmp eq i32 %2433, 30
  br i1 %2434, label %2435, label %2449

2435:                                             ; preds = %2431
  %2436 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2437 = load ptr, ptr %2436, align 8, !tbaa !150
  %2438 = load i32, ptr %2437, align 8
  %2439 = lshr i32 %2438, 16
  %2440 = and i32 %2439, 255
  %2441 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2442 = load i64, ptr %2441, align 8, !tbaa !150
  %2443 = call ptr @gen_int_mode(i64 noundef %2442, i32 noundef %2440) #17
  %2444 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %2440, ptr noundef nonnull %2437, ptr noundef %2443)
  %2445 = call ptr @simplify_unary_operation(i32 noundef 100, i32 noundef %1, ptr noundef %2444, i32 noundef %2440)
  %2446 = icmp eq ptr %2445, null
  br i1 %2446, label %2447, label %3458

2447:                                             ; preds = %2435
  %2448 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 100, i32 noundef %1, ptr noundef %2444) #17
  br label %3458

2449:                                             ; preds = %2431
  %2450 = trunc i32 %2397 to i16
  switch i16 %2450, label %2492 [
    i16 62, label %2451
    i16 63, label %2474
  ], !prof !287

2451:                                             ; preds = %2428, %2449
  %2452 = load i32, ptr %37, align 8
  %2453 = and i32 %2452, 65535
  %2454 = icmp eq i32 %2453, 30
  br i1 %2454, label %2455, label %2472, !prof !288

2455:                                             ; preds = %2451
  %2456 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2457 = load ptr, ptr %2456, align 8, !tbaa !150
  %2458 = load i32, ptr %2457, align 8
  %2459 = and i32 %2458, 65535
  %2460 = icmp eq i32 %2459, 30
  br i1 %2460, label %2461, label %2472, !prof !289

2461:                                             ; preds = %2455
  %2462 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2463 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2464 = load i64, ptr %2463, align 8, !tbaa !150
  %2465 = getelementptr inbounds %struct.rtx_def, ptr %2457, i64 0, i32 1
  %2466 = load i64, ptr %2465, align 8, !tbaa !150
  %2467 = and i64 %2466, %2464
  %2468 = load ptr, ptr %2462, align 8, !tbaa !150
  %2469 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2468, ptr noundef %34)
  %2470 = call ptr @gen_int_mode(i64 noundef %2467, i32 noundef %1) #17
  %2471 = call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %2469, ptr noundef %2470)
  br label %3458

2472:                                             ; preds = %2455, %2451
  %2473 = icmp eq i32 %2429, 63
  br i1 %2473, label %2474, label %2492, !prof !290

2474:                                             ; preds = %2428, %2449, %2472
  %2475 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2476 = load ptr, ptr %2475, align 8, !tbaa !150
  %2477 = call i32 @rtx_equal_p(ptr noundef %2476, ptr noundef %34) #17
  %2478 = icmp eq i32 %2477, 0
  br i1 %2478, label %2492, label %2479

2479:                                             ; preds = %2474
  %2480 = call i32 @side_effects_p(ptr noundef %34) #17
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2482, label %2492

2482:                                             ; preds = %2479
  %2483 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2484 = load ptr, ptr %2483, align 8, !tbaa !150
  %2485 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %2484, i32 noundef %1)
  %2486 = icmp eq ptr %2485, null
  br i1 %2486, label %2487, label %2489

2487:                                             ; preds = %2482
  %2488 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %2484) #17
  br label %2489

2489:                                             ; preds = %2487, %2482
  %2490 = phi ptr [ %2488, %2487 ], [ %2485, %2482 ]
  %2491 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2490, ptr noundef %34)
  br label %3458

2492:                                             ; preds = %2428, %2449, %2479, %2474, %2472
  %2493 = load i32, ptr %35, align 8
  %2494 = and i32 %2493, 65535
  %2495 = icmp eq i32 %2494, 63
  br i1 %2495, label %2496, label %2514, !prof !290

2496:                                             ; preds = %2492
  %2497 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2498 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2499 = load ptr, ptr %2498, align 8, !tbaa !150
  %2500 = call i32 @rtx_equal_p(ptr noundef %2499, ptr noundef %34) #17
  %2501 = icmp eq i32 %2500, 0
  br i1 %2501, label %2514, label %2502

2502:                                             ; preds = %2496
  %2503 = call i32 @side_effects_p(ptr noundef %34) #17
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2505, label %2514

2505:                                             ; preds = %2502
  %2506 = load ptr, ptr %2497, align 8, !tbaa !150
  %2507 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %2506, i32 noundef %1)
  %2508 = icmp eq ptr %2507, null
  br i1 %2508, label %2509, label %2511

2509:                                             ; preds = %2505
  %2510 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %2506) #17
  br label %2511

2511:                                             ; preds = %2509, %2505
  %2512 = phi ptr [ %2510, %2509 ], [ %2507, %2505 ]
  %2513 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2512, ptr noundef %34)
  br label %3458

2514:                                             ; preds = %2502, %2496, %2492
  %2515 = load i32, ptr %35, align 8
  %2516 = and i32 %2515, 65535
  %2517 = icmp eq i32 %2516, 64
  br i1 %2517, label %2518, label %2537, !prof !291

2518:                                             ; preds = %2514
  %2519 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2520 = load ptr, ptr %2519, align 8, !tbaa !150
  %2521 = load i32, ptr %2520, align 8
  %2522 = and i32 %2521, 65535
  %2523 = icmp eq i32 %2522, 63
  br i1 %2523, label %2524, label %2537, !prof !292

2524:                                             ; preds = %2518
  %2525 = getelementptr inbounds %struct.rtx_def, ptr %2520, i64 0, i32 1
  %2526 = load ptr, ptr %2525, align 8, !tbaa !150
  %2527 = call i32 @rtx_equal_p(ptr noundef %2526, ptr noundef %34) #17
  %2528 = icmp eq i32 %2527, 0
  br i1 %2528, label %2537, label %2529

2529:                                             ; preds = %2524
  %2530 = call i32 @side_effects_p(ptr noundef %34) #17
  %2531 = icmp eq i32 %2530, 0
  br i1 %2531, label %2532, label %2537

2532:                                             ; preds = %2529
  %2533 = load ptr, ptr %2519, align 8, !tbaa !150
  %2534 = getelementptr inbounds %struct.rtx_def, ptr %2533, i64 0, i32 1, i32 0, i32 0, i64 1
  %2535 = load ptr, ptr %2534, align 8, !tbaa !150
  %2536 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2535, ptr noundef %34)
  br label %3458

2537:                                             ; preds = %2529, %2524, %2518, %2514
  %2538 = load i32, ptr %35, align 8
  %2539 = and i32 %2538, 65535
  %2540 = icmp eq i32 %2539, 64
  br i1 %2540, label %2541, label %2560, !prof !291

2541:                                             ; preds = %2537
  %2542 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2543 = load ptr, ptr %2542, align 8, !tbaa !150
  %2544 = load i32, ptr %2543, align 8
  %2545 = and i32 %2544, 65535
  %2546 = icmp eq i32 %2545, 63
  br i1 %2546, label %2547, label %2560, !prof !292

2547:                                             ; preds = %2541
  %2548 = getelementptr inbounds %struct.rtx_def, ptr %2543, i64 0, i32 1, i32 0, i32 0, i64 1
  %2549 = load ptr, ptr %2548, align 8, !tbaa !150
  %2550 = call i32 @rtx_equal_p(ptr noundef %2549, ptr noundef %34) #17
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2560, label %2552

2552:                                             ; preds = %2547
  %2553 = call i32 @side_effects_p(ptr noundef %34) #17
  %2554 = icmp eq i32 %2553, 0
  br i1 %2554, label %2555, label %2560

2555:                                             ; preds = %2552
  %2556 = load ptr, ptr %2542, align 8, !tbaa !150
  %2557 = getelementptr inbounds %struct.rtx_def, ptr %2556, i64 0, i32 1
  %2558 = load ptr, ptr %2557, align 8, !tbaa !150
  %2559 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2558, ptr noundef %34)
  br label %3458

2560:                                             ; preds = %2552, %2547, %2541, %2537
  %2561 = load i32, ptr %35, align 8
  %2562 = and i32 %2561, 65535
  %2563 = icmp eq i32 %2562, 62
  br i1 %2563, label %2564, label %2583, !prof !293

2564:                                             ; preds = %2560
  %2565 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2566 = load ptr, ptr %2565, align 8, !tbaa !150
  %2567 = call i32 @rtx_equal_p(ptr noundef %2566, ptr noundef %34) #17
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2569, label %2574, !prof !294

2569:                                             ; preds = %2564
  %2570 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2571 = load ptr, ptr %2570, align 8, !tbaa !150
  %2572 = call i32 @rtx_equal_p(ptr noundef %2571, ptr noundef %34) #17
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2583, label %2574, !prof !294

2574:                                             ; preds = %2569, %2564
  %2575 = load ptr, ptr %2565, align 8, !tbaa !150
  %2576 = call i32 @side_effects_p(ptr noundef %2575) #17
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2578, label %2583

2578:                                             ; preds = %2574
  %2579 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2580 = load ptr, ptr %2579, align 8, !tbaa !150
  %2581 = call i32 @side_effects_p(ptr noundef %2580) #17
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %3458, label %2583

2583:                                             ; preds = %2569, %2578, %2574, %2560
  %2584 = load i32, ptr %37, align 8
  %2585 = and i32 %2584, 65535
  %2586 = icmp eq i32 %2585, 30
  br i1 %2586, label %2587, label %2668, !prof !295

2587:                                             ; preds = %2583
  %2588 = load i8, ptr %39, align 1, !tbaa !150
  %2589 = icmp ult i8 %2588, 9
  br i1 %2589, label %2590, label %2668, !prof !295

2590:                                             ; preds = %2587
  %2591 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2592 = load i64, ptr %2591, align 8, !tbaa !150
  %2593 = icmp eq i64 %2592, -1
  br i1 %2593, label %2668, label %2594, !prof !290

2594:                                             ; preds = %2590
  %2595 = add nsw i64 %2592, 1
  %2596 = and i64 %2595, %2592
  %2597 = icmp eq i64 %2596, 0
  br i1 %2597, label %2598, label %2668, !prof !296

2598:                                             ; preds = %2594
  %2599 = load i32, ptr %35, align 8
  %2600 = and i32 %2599, 65535
  %2601 = add nsw i32 %2600, -49
  %2602 = icmp ult i32 %2601, 2
  br i1 %2602, label %2603, label %2668, !prof !297

2603:                                             ; preds = %2598
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  %2604 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2605 = load ptr, ptr %2604, align 8, !tbaa !150
  store ptr %2605, ptr %10, align 16, !tbaa !139
  %2606 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2607 = load ptr, ptr %2606, align 8, !tbaa !150
  %2608 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 1
  store ptr %2607, ptr %2608, align 8, !tbaa !139
  %2609 = load i32, ptr %2607, align 8
  %2610 = and i32 %2609, 65535
  %2611 = icmp eq i32 %2610, 30
  br i1 %2611, label %2612, label %2617, !prof !298

2612:                                             ; preds = %2603
  %2613 = getelementptr inbounds %struct.rtx_def, ptr %2607, i64 0, i32 1
  %2614 = load i64, ptr %2613, align 8, !tbaa !150
  %2615 = and i64 %2614, %2592
  %2616 = icmp eq i64 %2615, 0
  br i1 %2616, label %2662, label %2617, !prof !299

2617:                                             ; preds = %2612, %2603
  br label %2618

2618:                                             ; preds = %2617, %2649
  %2619 = phi i64 [ %2650, %2649 ], [ 0, %2617 ]
  %2620 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 %2619
  %2621 = load ptr, ptr %2620, align 8, !tbaa !139
  %2622 = load i32, ptr %2621, align 8
  %2623 = trunc i32 %2622 to i16
  switch i16 %2623, label %2649 [
    i16 61, label %2624
    i16 62, label %2635
    i16 63, label %2635
  ], !prof !300

2624:                                             ; preds = %2618
  %2625 = getelementptr inbounds %struct.rtx_def, ptr %2621, i64 0, i32 1, i32 0, i32 0, i64 1
  %2626 = load ptr, ptr %2625, align 8, !tbaa !150
  %2627 = load i32, ptr %2626, align 8
  %2628 = and i32 %2627, 65535
  %2629 = icmp eq i32 %2628, 30
  br i1 %2629, label %2630, label %2649

2630:                                             ; preds = %2624
  %2631 = getelementptr inbounds %struct.rtx_def, ptr %2626, i64 0, i32 1
  %2632 = load i64, ptr %2631, align 8, !tbaa !150
  %2633 = and i64 %2632, %2592
  %2634 = icmp eq i64 %2633, %2592
  br i1 %2634, label %2646, label %2649

2635:                                             ; preds = %2618, %2618
  %2636 = getelementptr inbounds %struct.rtx_def, ptr %2621, i64 0, i32 1, i32 0, i32 0, i64 1
  %2637 = load ptr, ptr %2636, align 8, !tbaa !150
  %2638 = load i32, ptr %2637, align 8
  %2639 = and i32 %2638, 65535
  %2640 = icmp eq i32 %2639, 30
  br i1 %2640, label %2641, label %2649

2641:                                             ; preds = %2635
  %2642 = getelementptr inbounds %struct.rtx_def, ptr %2637, i64 0, i32 1
  %2643 = load i64, ptr %2642, align 8, !tbaa !150
  %2644 = and i64 %2643, %2592
  %2645 = icmp eq i64 %2644, 0
  br i1 %2645, label %2646, label %2649

2646:                                             ; preds = %2641, %2630
  %2647 = getelementptr inbounds %struct.rtx_def, ptr %2621, i64 0, i32 1
  %2648 = load ptr, ptr %2647, align 8, !tbaa !150
  store ptr %2648, ptr %2620, align 8, !tbaa !139
  br label %2649

2649:                                             ; preds = %2646, %2635, %2641, %2630, %2624, %2618
  %2650 = add nuw nsw i64 %2619, 1
  %2651 = icmp eq i64 %2619, 0
  br i1 %2651, label %2618, label %2652, !prof !301, !llvm.loop !302

2652:                                             ; preds = %2649
  %2653 = load ptr, ptr %10, align 16, !tbaa !139
  %2654 = load ptr, ptr %2604, align 8, !tbaa !150
  %2655 = icmp eq ptr %2653, %2654
  %2656 = load ptr, ptr %2608, align 8
  %2657 = icmp eq ptr %2656, %2607
  %2658 = select i1 %2655, i1 %2657, i1 false
  br i1 %2658, label %2665, label %2659, !prof !303

2659:                                             ; preds = %2652
  %2660 = load ptr, ptr %2608, align 8, !tbaa !139
  %2661 = call ptr @simplify_gen_binary(i32 noundef %2600, i32 noundef %1, ptr noundef %2653, ptr noundef %2660)
  br label %2662

2662:                                             ; preds = %2612, %2659
  %2663 = phi ptr [ %2661, %2659 ], [ %2605, %2612 ]
  %2664 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2663, ptr noundef %34)
  br label %2665

2665:                                             ; preds = %2662, %2652
  %2666 = phi i1 [ true, %2652 ], [ false, %2662 ]
  %2667 = phi ptr [ %2363, %2652 ], [ %2664, %2662 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  br i1 %2666, label %2668, label %3458, !prof !298

2668:                                             ; preds = %2665, %2598, %2594, %2590, %2587, %2583
  %2669 = load i32, ptr %34, align 8
  %2670 = and i32 %2669, 65535
  %2671 = icmp eq i32 %2670, 62
  br i1 %2671, label %2672, label %2686, !prof !290

2672:                                             ; preds = %2668
  %2673 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %2674 = load ptr, ptr %2673, align 8, !tbaa !150
  %2675 = load i32, ptr %2674, align 8
  %2676 = and i32 %2675, 65535
  %2677 = icmp eq i32 %2676, 64
  br i1 %2677, label %2678, label %2686

2678:                                             ; preds = %2672
  %2679 = getelementptr inbounds %struct.rtx_def, ptr %2674, i64 0, i32 1
  %2680 = load ptr, ptr %2679, align 8, !tbaa !150
  %2681 = icmp eq ptr %2680, %35
  br i1 %2681, label %2682, label %2686

2682:                                             ; preds = %2678
  %2683 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %2684 = load ptr, ptr %2683, align 8, !tbaa !150
  %2685 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %35, ptr noundef %2684)
  br label %3458

2686:                                             ; preds = %2678, %2672, %2668
  %2687 = load i32, ptr %35, align 8
  %2688 = and i32 %2687, 65535
  %2689 = icmp eq i32 %2688, 62
  br i1 %2689, label %2690, label %2704, !prof !293

2690:                                             ; preds = %2686
  %2691 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %2692 = load ptr, ptr %2691, align 8, !tbaa !150
  %2693 = load i32, ptr %2692, align 8
  %2694 = and i32 %2693, 65535
  %2695 = icmp eq i32 %2694, 64
  br i1 %2695, label %2696, label %2704, !prof !304

2696:                                             ; preds = %2690
  %2697 = getelementptr inbounds %struct.rtx_def, ptr %2692, i64 0, i32 1
  %2698 = load ptr, ptr %2697, align 8, !tbaa !150
  %2699 = icmp eq ptr %2698, %34
  br i1 %2699, label %2700, label %2704

2700:                                             ; preds = %2696
  %2701 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %2702 = load ptr, ptr %2701, align 8, !tbaa !150
  %2703 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %34, ptr noundef %2702)
  br label %3458

2704:                                             ; preds = %2686, %2696, %2690
  %2705 = call fastcc ptr @simplify_associative_operation(i32 noundef 61, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %2706 = icmp eq ptr %2705, null
  br i1 %2706, label %3457, label %3458, !prof !295

2707:                                             ; preds = %687
  %2708 = sext i32 %1 to i64
  %2709 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2708
  %2710 = load ptr, ptr %2709, align 8, !tbaa !139
  %2711 = icmp eq ptr %2710, %36
  br i1 %2711, label %2712, label %2717

2712:                                             ; preds = %2707
  %2713 = call i32 @side_effects_p(ptr noundef %34) #17
  %2714 = icmp eq i32 %2713, 0
  br i1 %2714, label %3458, label %2715

2715:                                             ; preds = %2712
  %2716 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %34, ptr noundef %36)
  br label %3458

2717:                                             ; preds = %2707
  %2718 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2708
  %2719 = load ptr, ptr %2718, align 8, !tbaa !139
  %2720 = icmp eq ptr %2719, %37
  br i1 %2720, label %2721, label %2724

2721:                                             ; preds = %2717
  %2722 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %2723 = call ptr %2722(i32 noundef %1, ptr noundef %35) #17
  br label %3458

2724:                                             ; preds = %2717
  %2725 = load i32, ptr %37, align 8
  %2726 = and i32 %2725, 65535
  %2727 = icmp eq i32 %2726, 30
  br i1 %2727, label %2728, label %3457

2728:                                             ; preds = %2724
  %2729 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2730 = load i64, ptr %2729, align 8, !tbaa !150
  %2731 = call i32 @exact_log2(i64 noundef %2730) #17
  %2732 = icmp sgt i32 %2731, 0
  br i1 %2732, label %2733, label %3457

2733:                                             ; preds = %2728
  %2734 = zext nneg i32 %2731 to i64
  %2735 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2734) #17
  %2736 = call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %1, ptr noundef %35, ptr noundef %2735)
  br label %3458

2737:                                             ; preds = %687
  %2738 = and i8 %44, -2
  %2739 = icmp eq i8 %2738, 8
  %2740 = sext i32 %1 to i64
  %2741 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2740
  %2742 = load ptr, ptr %2741, align 8, !tbaa !139
  %2743 = icmp eq ptr %2742, %36
  br i1 %2739, label %2744, label %2835

2744:                                             ; preds = %2737
  br i1 %2743, label %2745, label %2772

2745:                                             ; preds = %2744
  switch i8 %44, label %2769 [
    i8 8, label %2746
    i8 9, label %2746
    i8 11, label %2746
    i8 17, label %2746
  ]

2746:                                             ; preds = %2745, %2745, %2745, %2745
  %2747 = add i32 %1, -38
  %2748 = zext i32 %2747 to i64
  %2749 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %2748
  %2750 = load ptr, ptr %2749, align 8, !tbaa !139
  %2751 = getelementptr inbounds %struct.real_format, ptr %2750, i64 0, i32 11
  %2752 = load i8, ptr %2751, align 2, !tbaa !178
  %2753 = icmp eq i8 %2752, 0
  %2754 = load i32, ptr @flag_finite_math_only, align 4
  %2755 = icmp ne i32 %2754, 0
  %2756 = select i1 %2753, i1 true, i1 %2755
  br i1 %2756, label %2757, label %2772

2757:                                             ; preds = %2746
  switch i8 %44, label %2769 [
    i8 8, label %2758
    i8 9, label %2758
    i8 11, label %2758
    i8 17, label %2758
  ]

2758:                                             ; preds = %2757, %2757, %2757, %2757
  %2759 = add i32 %1, -38
  %2760 = zext i32 %2759 to i64
  %2761 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %2760
  %2762 = load ptr, ptr %2761, align 8, !tbaa !139
  %2763 = getelementptr inbounds %struct.real_format, ptr %2762, i64 0, i32 14
  %2764 = load i8, ptr %2763, align 1, !tbaa !195
  %2765 = icmp ne i8 %2764, 0
  %2766 = load i32, ptr @flag_signed_zeros, align 4
  %2767 = icmp ne i32 %2766, 0
  %2768 = select i1 %2765, i1 %2767, i1 false
  br i1 %2768, label %2772, label %2769

2769:                                             ; preds = %2757, %2745, %2758
  %2770 = call i32 @side_effects_p(ptr noundef %34) #17
  %2771 = icmp eq i32 %2770, 0
  br i1 %2771, label %3458, label %2772

2772:                                             ; preds = %2769, %2758, %2746, %2744
  %2773 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2740
  %2774 = load ptr, ptr %2773, align 8, !tbaa !139
  %2775 = icmp eq ptr %2774, %37
  br i1 %2775, label %2776, label %2791

2776:                                             ; preds = %2772
  %2777 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %2778 = icmp eq i32 %2777, 0
  br i1 %2778, label %3458, label %2779

2779:                                             ; preds = %2776
  switch i8 %44, label %3458 [
    i8 8, label %2780
    i8 9, label %2780
    i8 11, label %2780
    i8 17, label %2780
  ]

2780:                                             ; preds = %2779, %2779, %2779, %2779
  %2781 = add i32 %1, -38
  %2782 = zext i32 %2781 to i64
  %2783 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %2782
  %2784 = load ptr, ptr %2783, align 8, !tbaa !139
  %2785 = getelementptr inbounds %struct.real_format, ptr %2784, i64 0, i32 11
  %2786 = load i8, ptr %2785, align 2, !tbaa !178
  %2787 = icmp eq i8 %2786, 0
  %2788 = load i32, ptr @flag_finite_math_only, align 4
  %2789 = icmp ne i32 %2788, 0
  %2790 = select i1 %2787, i1 true, i1 %2789
  br i1 %2790, label %3458, label %2791

2791:                                             ; preds = %2780, %2772
  %2792 = load i32, ptr %37, align 8
  %2793 = and i32 %2792, 65535
  %2794 = icmp eq i32 %2793, 32
  br i1 %2794, label %2795, label %3457

2795:                                             ; preds = %2791
  %2796 = load ptr, ptr %2741, align 8, !tbaa !139
  %2797 = icmp eq ptr %2796, %37
  br i1 %2797, label %3457, label %2798

2798:                                             ; preds = %2795
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #17
  %2799 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %2799, i64 32, i1 false), !tbaa.struct !177
  %2800 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %11, ptr noundef nonnull @dconstm1) #17
  %2801 = icmp eq i8 %2800, 0
  br i1 %2801, label %2822, label %2802

2802:                                             ; preds = %2798
  %2803 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %2804 = icmp eq i32 %2803, 0
  br i1 %2804, label %2817, label %2805

2805:                                             ; preds = %2802
  switch i8 %44, label %2817 [
    i8 8, label %2806
    i8 9, label %2806
    i8 11, label %2806
    i8 17, label %2806
  ]

2806:                                             ; preds = %2805, %2805, %2805, %2805
  %2807 = add i32 %1, -38
  %2808 = zext i32 %2807 to i64
  %2809 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %2808
  %2810 = load ptr, ptr %2809, align 8, !tbaa !139
  %2811 = getelementptr inbounds %struct.real_format, ptr %2810, i64 0, i32 11
  %2812 = load i8, ptr %2811, align 2, !tbaa !178
  %2813 = icmp eq i8 %2812, 0
  %2814 = load i32, ptr @flag_finite_math_only, align 4
  %2815 = icmp ne i32 %2814, 0
  %2816 = select i1 %2813, i1 true, i1 %2815
  br i1 %2816, label %2817, label %2822

2817:                                             ; preds = %2806, %2805, %2802
  %2818 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %35, i32 noundef %1)
  %2819 = icmp eq ptr %2818, null
  br i1 %2819, label %2820, label %2832

2820:                                             ; preds = %2817
  %2821 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %35) #17
  br label %2832

2822:                                             ; preds = %2806, %2798
  %2823 = load i32, ptr @flag_reciprocal_math, align 4, !tbaa !154
  %2824 = icmp eq i32 %2823, 0
  br i1 %2824, label %2832, label %2825

2825:                                             ; preds = %2822
  %2826 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %11, ptr noundef nonnull @dconst0) #17
  %2827 = icmp eq i8 %2826, 0
  br i1 %2827, label %2828, label %2832

2828:                                             ; preds = %2825
  %2829 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %11, i32 noundef 75, ptr noundef nonnull @dconst1, ptr noundef nonnull %11) #17
  %2830 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %11, i32 noundef %1) #17
  %2831 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %35, ptr noundef %2830)
  br label %2832

2832:                                             ; preds = %2828, %2825, %2822, %2820, %2817
  %2833 = phi i1 [ false, %2828 ], [ true, %2825 ], [ true, %2822 ], [ false, %2817 ], [ false, %2820 ]
  %2834 = phi ptr [ %2831, %2828 ], [ undef, %2825 ], [ undef, %2822 ], [ %2818, %2817 ], [ %2821, %2820 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  br i1 %2833, label %3457, label %3458

2835:                                             ; preds = %2737
  br i1 %2743, label %2836, label %2841

2836:                                             ; preds = %2835
  %2837 = call i32 @side_effects_p(ptr noundef %34) #17
  %2838 = icmp eq i32 %2837, 0
  br i1 %2838, label %3458, label %2839

2839:                                             ; preds = %2836
  %2840 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %34, ptr noundef %36)
  br label %3458

2841:                                             ; preds = %2835
  %2842 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2740
  %2843 = load ptr, ptr %2842, align 8, !tbaa !139
  %2844 = icmp eq ptr %2843, %37
  br i1 %2844, label %2845, label %2848

2845:                                             ; preds = %2841
  %2846 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %2847 = call ptr %2846(i32 noundef %1, ptr noundef %35) #17
  br label %3458

2848:                                             ; preds = %2841
  %2849 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %2850 = icmp eq ptr %2849, %37
  br i1 %2850, label %2851, label %3457

2851:                                             ; preds = %2848
  %2852 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %2853 = call ptr %2852(i32 noundef %1, ptr noundef %35) #17
  %2854 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %2853, i32 noundef %1)
  %2855 = icmp eq ptr %2854, null
  br i1 %2855, label %2856, label %3458

2856:                                             ; preds = %2851
  %2857 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %2853) #17
  br label %3458

2858:                                             ; preds = %687
  %2859 = sext i32 %1 to i64
  %2860 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2859
  %2861 = load ptr, ptr %2860, align 8, !tbaa !139
  %2862 = icmp eq ptr %2861, %36
  br i1 %2862, label %2863, label %2868

2863:                                             ; preds = %2858
  %2864 = call i32 @side_effects_p(ptr noundef %34) #17
  %2865 = icmp eq i32 %2864, 0
  br i1 %2865, label %3458, label %2866

2866:                                             ; preds = %2863
  %2867 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %34, ptr noundef %36)
  br label %3458

2868:                                             ; preds = %2858
  %2869 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2859
  %2870 = load ptr, ptr %2869, align 8, !tbaa !139
  %2871 = icmp eq ptr %2870, %37
  br i1 %2871, label %2872, label %2878

2872:                                             ; preds = %2868
  %2873 = call i32 @side_effects_p(ptr noundef %35) #17
  %2874 = icmp eq i32 %2873, 0
  %2875 = load ptr, ptr %2860, align 8, !tbaa !139
  br i1 %2874, label %3458, label %2876

2876:                                             ; preds = %2872
  %2877 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %35, ptr noundef %2875)
  br label %3458

2878:                                             ; preds = %2868
  %2879 = load i32, ptr %37, align 8
  %2880 = and i32 %2879, 65535
  %2881 = icmp eq i32 %2880, 30
  br i1 %2881, label %2882, label %3457

2882:                                             ; preds = %2878
  %2883 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2884 = load i64, ptr %2883, align 8, !tbaa !150
  %2885 = call i32 @exact_log2(i64 noundef %2884) #17
  %2886 = icmp sgt i32 %2885, 0
  br i1 %2886, label %2887, label %3457

2887:                                             ; preds = %2882
  %2888 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %2889 = load i64, ptr %2888, align 8, !tbaa !150
  %2890 = add nsw i64 %2889, -1
  %2891 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2890) #17
  %2892 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %35, ptr noundef %2891)
  br label %3458

2893:                                             ; preds = %687
  %2894 = sext i32 %1 to i64
  %2895 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2894
  %2896 = load ptr, ptr %2895, align 8, !tbaa !139
  %2897 = icmp eq ptr %2896, %36
  br i1 %2897, label %2898, label %2903

2898:                                             ; preds = %2893
  %2899 = call i32 @side_effects_p(ptr noundef %34) #17
  %2900 = icmp eq i32 %2899, 0
  br i1 %2900, label %3458, label %2901

2901:                                             ; preds = %2898
  %2902 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %34, ptr noundef %36)
  br label %3458

2903:                                             ; preds = %2893
  %2904 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2894
  %2905 = load ptr, ptr %2904, align 8, !tbaa !139
  %2906 = icmp eq ptr %2905, %37
  %2907 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %2908 = icmp eq ptr %2907, %37
  %2909 = select i1 %2906, i1 true, i1 %2908
  br i1 %2909, label %2910, label %3457

2910:                                             ; preds = %2903
  %2911 = call i32 @side_effects_p(ptr noundef %35) #17
  %2912 = icmp eq i32 %2911, 0
  %2913 = load ptr, ptr %2895, align 8, !tbaa !139
  br i1 %2912, label %3458, label %2914

2914:                                             ; preds = %2910
  %2915 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %35, ptr noundef %2913)
  br label %3458

2916:                                             ; preds = %687, %687, %687
  %2917 = sext i32 %1 to i64
  %2918 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2917
  %2919 = load ptr, ptr %2918, align 8, !tbaa !139
  %2920 = icmp eq ptr %2919, %37
  br i1 %2920, label %3458, label %2921, !prof !307

2921:                                             ; preds = %2916
  %2922 = icmp eq ptr %2919, %36
  br i1 %2922, label %2923, label %2926, !prof !307

2923:                                             ; preds = %2921
  %2924 = call i32 @side_effects_p(ptr noundef %34) #17
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %3458, label %2926

2926:                                             ; preds = %2923, %2921
  %2927 = load i32, ptr %36, align 8
  %2928 = and i32 %2927, 65535
  %2929 = icmp eq i32 %2928, 30
  %2930 = icmp ult i8 %688, 9
  %2931 = select i1 %2929, i1 %2930, i1 false, !prof !308
  br i1 %2931, label %2932, label %3457, !prof !308

2932:                                             ; preds = %2926
  %2933 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %2934 = load i64, ptr %2933, align 8, !tbaa !150
  %2935 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %38
  %2936 = load i64, ptr %2935, align 8, !tbaa !175
  %2937 = icmp eq i64 %2934, %2936
  br i1 %2937, label %2938, label %3457, !prof !309

2938:                                             ; preds = %2932
  %2939 = call i32 @side_effects_p(ptr noundef %34) #17
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %3458, label %3457

2941:                                             ; preds = %687, %687, %687
  %2942 = sext i32 %1 to i64
  %2943 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2942
  %2944 = load ptr, ptr %2943, align 8, !tbaa !139
  %2945 = icmp eq ptr %2944, %37
  br i1 %2945, label %3458, label %2946, !prof !310

2946:                                             ; preds = %2941
  %2947 = icmp eq ptr %2944, %36
  br i1 %2947, label %2948, label %3457, !prof !310

2948:                                             ; preds = %2946
  %2949 = call i32 @side_effects_p(ptr noundef %34) #17
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3458, label %3457

2951:                                             ; preds = %687
  %2952 = sext i32 %1 to i64
  %2953 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2952
  %2954 = load ptr, ptr %2953, align 8, !tbaa !139
  %2955 = icmp eq ptr %2954, %37
  br i1 %2955, label %3458, label %2956, !prof !311

2956:                                             ; preds = %2951
  %2957 = icmp eq ptr %2954, %36
  br i1 %2957, label %2958, label %3457, !prof !312

2958:                                             ; preds = %2956
  %2959 = call i32 @side_effects_p(ptr noundef %34) #17
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %3458, label %3457

2961:                                             ; preds = %687
  %2962 = icmp ult i8 %688, 9
  br i1 %2962, label %2963, label %2977

2963:                                             ; preds = %2961
  %2964 = load i32, ptr %37, align 8
  %2965 = and i32 %2964, 65535
  %2966 = icmp eq i32 %2965, 30
  br i1 %2966, label %2967, label %2977

2967:                                             ; preds = %2963
  %2968 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2969 = load i64, ptr %2968, align 8, !tbaa !150
  %2970 = add nuw nsw i64 %690, 4294967295
  %2971 = and i64 %2970, 4294967295
  %2972 = shl nuw i64 1, %2971
  %2973 = icmp eq i64 %2969, %2972
  br i1 %2973, label %2974, label %2977

2974:                                             ; preds = %2967
  %2975 = call i32 @side_effects_p(ptr noundef %35) #17
  %2976 = icmp eq i32 %2975, 0
  br i1 %2976, label %3458, label %2977

2977:                                             ; preds = %2974, %2967, %2963, %2961
  %2978 = call i32 @rtx_equal_p(ptr noundef %36, ptr noundef %37) #17
  %2979 = icmp eq i32 %2978, 0
  br i1 %2979, label %2983, label %2980

2980:                                             ; preds = %2977
  %2981 = call i32 @side_effects_p(ptr noundef %35) #17
  %2982 = icmp eq i32 %2981, 0
  br i1 %2982, label %3458, label %2983

2983:                                             ; preds = %2980, %2977
  %2984 = call fastcc ptr @simplify_associative_operation(i32 noundef 70, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %2985 = icmp eq ptr %2984, null
  br i1 %2985, label %3457, label %3458

2986:                                             ; preds = %687
  %2987 = icmp ult i8 %688, 9
  br i1 %2987, label %2988, label %3002

2988:                                             ; preds = %2986
  %2989 = load i32, ptr %37, align 8
  %2990 = and i32 %2989, 65535
  %2991 = icmp eq i32 %2990, 30
  br i1 %2991, label %2992, label %3002

2992:                                             ; preds = %2988
  %2993 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %2994 = load i64, ptr %2993, align 8, !tbaa !150
  %2995 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %38
  %2996 = load i64, ptr %2995, align 8, !tbaa !175
  %2997 = lshr i64 %2996, 1
  %2998 = icmp eq i64 %2994, %2997
  br i1 %2998, label %2999, label %3002

2999:                                             ; preds = %2992
  %3000 = call i32 @side_effects_p(ptr noundef %35) #17
  %3001 = icmp eq i32 %3000, 0
  br i1 %3001, label %3458, label %3002

3002:                                             ; preds = %2999, %2992, %2988, %2986
  %3003 = call i32 @rtx_equal_p(ptr noundef %36, ptr noundef %37) #17
  %3004 = icmp eq i32 %3003, 0
  br i1 %3004, label %3008, label %3005

3005:                                             ; preds = %3002
  %3006 = call i32 @side_effects_p(ptr noundef %35) #17
  %3007 = icmp eq i32 %3006, 0
  br i1 %3007, label %3458, label %3008

3008:                                             ; preds = %3005, %3002
  %3009 = call fastcc ptr @simplify_associative_operation(i32 noundef 71, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %3010 = icmp eq ptr %3009, null
  br i1 %3010, label %3457, label %3458

3011:                                             ; preds = %687
  %3012 = sext i32 %1 to i64
  %3013 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %3012
  %3014 = load ptr, ptr %3013, align 8, !tbaa !139
  %3015 = icmp eq ptr %3014, %37
  br i1 %3015, label %3016, label %3019

3016:                                             ; preds = %3011
  %3017 = call i32 @side_effects_p(ptr noundef %35) #17
  %3018 = icmp eq i32 %3017, 0
  br i1 %3018, label %3458, label %3019

3019:                                             ; preds = %3016, %3011
  %3020 = call i32 @rtx_equal_p(ptr noundef %36, ptr noundef %37) #17
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %3025, label %3022

3022:                                             ; preds = %3019
  %3023 = call i32 @side_effects_p(ptr noundef %35) #17
  %3024 = icmp eq i32 %3023, 0
  br i1 %3024, label %3458, label %3025

3025:                                             ; preds = %3022, %3019
  %3026 = call fastcc ptr @simplify_associative_operation(i32 noundef 72, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %3027 = icmp eq ptr %3026, null
  br i1 %3027, label %3457, label %3458

3028:                                             ; preds = %687
  %3029 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %3030 = icmp eq ptr %3029, %37
  br i1 %3030, label %3031, label %3034

3031:                                             ; preds = %3028
  %3032 = call i32 @side_effects_p(ptr noundef %35) #17
  %3033 = icmp eq i32 %3032, 0
  br i1 %3033, label %3458, label %3034

3034:                                             ; preds = %3031, %3028
  %3035 = call i32 @rtx_equal_p(ptr noundef %36, ptr noundef %37) #17
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3040, label %3037

3037:                                             ; preds = %3034
  %3038 = call i32 @side_effects_p(ptr noundef %35) #17
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3458, label %3040

3040:                                             ; preds = %3037, %3034
  %3041 = call fastcc ptr @simplify_associative_operation(i32 noundef 73, i32 noundef %1, ptr noundef %35, ptr noundef %34)
  %3042 = icmp eq ptr %3041, null
  br i1 %3042, label %3457, label %3458

3043:                                             ; preds = %687
  %3044 = add i8 %44, -12
  %3045 = icmp ult i8 %3044, 6
  %3046 = load i32, ptr %36, align 8
  %3047 = lshr i32 %3046, 16
  %3048 = and i32 %3047, 255
  %3049 = zext nneg i32 %3048 to i64
  %3050 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3049
  %3051 = load i8, ptr %3050, align 1, !tbaa !150
  %3052 = add i8 %3051, -12
  %3053 = icmp ult i8 %3052, 6
  br i1 %3045, label %3211, label %3054

3054:                                             ; preds = %3043
  br i1 %3053, label %3056, label %3055

3055:                                             ; preds = %3054
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2860, ptr noundef nonnull @.str.1) #17
  br label %3056

3056:                                             ; preds = %3055, %3054
  %3057 = load i32, ptr %36, align 8
  %3058 = lshr i32 %3057, 16
  %3059 = and i32 %3058, 255
  %3060 = zext nneg i32 %3059 to i64
  %3061 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3060
  %3062 = load i8, ptr %3061, align 1, !tbaa !150
  %3063 = zext i8 %3062 to i32
  %3064 = icmp eq i32 %3063, %1
  br i1 %3064, label %3066, label %3065

3065:                                             ; preds = %3056
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2861, ptr noundef nonnull @.str.1) #17
  br label %3066

3066:                                             ; preds = %3065, %3056
  %3067 = load i32, ptr %37, align 8
  %3068 = and i32 %3067, 65535
  %3069 = icmp eq i32 %3068, 15
  br i1 %3069, label %3071, label %3070

3070:                                             ; preds = %3066
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2862, ptr noundef nonnull @.str.1) #17
  br label %3071

3071:                                             ; preds = %3070, %3066
  %3072 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %3073 = load ptr, ptr %3072, align 8, !tbaa !150
  %3074 = load i32, ptr %3073, align 8, !tbaa !313
  %3075 = icmp eq i32 %3074, 1
  br i1 %3075, label %3077, label %3076

3076:                                             ; preds = %3071
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2863, ptr noundef nonnull @.str.1) #17
  br label %3077

3077:                                             ; preds = %3076, %3071
  %3078 = load ptr, ptr %3072, align 8, !tbaa !150
  %3079 = getelementptr inbounds %struct.rtvec_def, ptr %3078, i64 0, i32 1
  %3080 = load ptr, ptr %3079, align 8, !tbaa !139
  %3081 = load i32, ptr %3080, align 8
  %3082 = and i32 %3081, 65535
  %3083 = icmp eq i32 %3082, 30
  br i1 %3083, label %3085, label %3084

3084:                                             ; preds = %3077
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2864, ptr noundef nonnull @.str.1) #17
  br label %3085

3085:                                             ; preds = %3084, %3077
  %3086 = load i32, ptr %36, align 8
  %3087 = trunc i32 %3086 to i16
  switch i16 %3087, label %3271 [
    i16 33, label %3088
    i16 124, label %3098
    i16 126, label %3204
  ]

3088:                                             ; preds = %3085
  %3089 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %3090 = load ptr, ptr %3089, align 8, !tbaa !150
  %3091 = load ptr, ptr %3072, align 8, !tbaa !150
  %3092 = getelementptr inbounds %struct.rtvec_def, ptr %3091, i64 0, i32 1
  %3093 = load ptr, ptr %3092, align 8, !tbaa !139
  %3094 = getelementptr inbounds %struct.rtx_def, ptr %3093, i64 0, i32 1
  %3095 = load i64, ptr %3094, align 8, !tbaa !150
  %3096 = getelementptr inbounds %struct.rtvec_def, ptr %3090, i64 0, i32 1, i64 %3095
  %3097 = load ptr, ptr %3096, align 8, !tbaa !139
  br label %3458

3098:                                             ; preds = %3085
  %3099 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %3100 = load ptr, ptr %3099, align 8, !tbaa !150
  %3101 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %3102 = load ptr, ptr %3101, align 8, !tbaa !150
  %3103 = load i32, ptr %3100, align 8
  %3104 = lshr i32 %3103, 16
  %3105 = and i32 %3104, 255
  %3106 = zext nneg i32 %3105 to i64
  %3107 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3106
  %3108 = load i8, ptr %3107, align 1, !tbaa !150
  %3109 = zext i8 %3108 to i64
  %3110 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3109
  %3111 = load i8, ptr %3110, align 1, !tbaa !150
  %3112 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3106
  %3113 = load i8, ptr %3112, align 1, !tbaa !150
  %3114 = udiv i8 %3113, %3111
  %3115 = zext i8 %3114 to i32
  %3116 = load ptr, ptr %3072, align 8, !tbaa !150
  %3117 = getelementptr inbounds %struct.rtvec_def, ptr %3116, i64 0, i32 1
  %3118 = load ptr, ptr %3117, align 8, !tbaa !139
  %3119 = getelementptr inbounds %struct.rtx_def, ptr %3118, i64 0, i32 1
  %3120 = load i64, ptr %3119, align 8, !tbaa !150
  %3121 = trunc i64 %3120 to i32
  %3122 = load i32, ptr %3102, align 8
  %3123 = and i32 %3122, 65535
  %3124 = icmp eq i32 %3123, 15
  br i1 %3124, label %3126, label %3125

3125:                                             ; preds = %3098
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2891, ptr noundef nonnull @.str.1) #17
  br label %3126

3126:                                             ; preds = %3125, %3098
  %3127 = icmp slt i32 %3121, %3115
  br i1 %3127, label %3129, label %3128

3128:                                             ; preds = %3126
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2892, ptr noundef nonnull @.str.1) #17
  br label %3129

3129:                                             ; preds = %3128, %3126
  %3130 = getelementptr inbounds %struct.rtx_def, ptr %3102, i64 0, i32 1
  %3131 = load ptr, ptr %3130, align 8, !tbaa !150
  %3132 = shl i64 %3120, 32
  %3133 = ashr exact i64 %3132, 32
  %3134 = getelementptr inbounds %struct.rtvec_def, ptr %3131, i64 0, i32 1, i64 %3133
  %3135 = load ptr, ptr %3134, align 8, !tbaa !139
  %3136 = getelementptr inbounds %struct.rtx_def, ptr %3135, i64 0, i32 1
  %3137 = load i64, ptr %3136, align 8, !tbaa !150
  %3138 = trunc i64 %3137 to i32
  %3139 = load i32, ptr %3100, align 8
  %3140 = and i32 %3139, 65535
  %3141 = icmp eq i32 %3140, 125
  br i1 %3141, label %3142, label %3195

3142:                                             ; preds = %3129
  %3143 = getelementptr inbounds %struct.rtx_def, ptr %3100, i64 0, i32 1
  %3144 = load ptr, ptr %3143, align 8, !tbaa !150
  %3145 = getelementptr inbounds %struct.rtx_def, ptr %3100, i64 0, i32 1, i32 0, i32 0, i64 1
  %3146 = load ptr, ptr %3145, align 8, !tbaa !150
  %3147 = load i32, ptr %3144, align 8
  %3148 = lshr i32 %3147, 16
  %3149 = and i32 %3148, 255
  %3150 = load i32, ptr %3146, align 8
  %3151 = lshr i32 %3150, 16
  %3152 = and i32 %3151, 255
  %3153 = zext nneg i32 %3149 to i64
  %3154 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3153
  %3155 = load i8, ptr %3154, align 1, !tbaa !150
  %3156 = add i8 %3155, -12
  %3157 = icmp ult i8 %3156, 6
  br i1 %3157, label %3158, label %3168

3158:                                             ; preds = %3142
  %3159 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3153
  %3160 = load i8, ptr %3159, align 1, !tbaa !150
  %3161 = zext i8 %3160 to i64
  %3162 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3161
  %3163 = load i8, ptr %3162, align 1, !tbaa !150
  %3164 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3153
  %3165 = load i8, ptr %3164, align 1, !tbaa !150
  %3166 = udiv i8 %3165, %3163
  %3167 = zext i8 %3166 to i32
  br label %3168

3168:                                             ; preds = %3158, %3142
  %3169 = phi i32 [ %3167, %3158 ], [ 1, %3142 ]
  %3170 = zext nneg i32 %3152 to i64
  %3171 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3170
  %3172 = load i8, ptr %3171, align 1, !tbaa !150
  %3173 = add i8 %3172, -12
  %3174 = icmp ult i8 %3173, 6
  br i1 %3174, label %3175, label %3185

3175:                                             ; preds = %3168
  %3176 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3170
  %3177 = load i8, ptr %3176, align 1, !tbaa !150
  %3178 = zext i8 %3177 to i64
  %3179 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3178
  %3180 = load i8, ptr %3179, align 1, !tbaa !150
  %3181 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3170
  %3182 = load i8, ptr %3181, align 1, !tbaa !150
  %3183 = udiv i8 %3182, %3180
  %3184 = zext i8 %3183 to i32
  br label %3185

3185:                                             ; preds = %3175, %3168
  %3186 = phi i32 [ %3184, %3175 ], [ 1, %3168 ]
  %3187 = add nuw nsw i32 %3186, %3169
  %3188 = icmp eq i32 %3187, %3115
  br i1 %3188, label %3190, label %3189

3189:                                             ; preds = %3185
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2926, ptr noundef nonnull @.str.1) #17
  br label %3190

3190:                                             ; preds = %3189, %3185
  %3191 = icmp sgt i32 %3186, %3138
  %3192 = select i1 %3191, i32 0, i32 %3169
  %3193 = sub nsw i32 %3138, %3192
  %3194 = select i1 %3191, ptr %3144, ptr %3146
  br label %3195

3195:                                             ; preds = %3190, %3129
  %3196 = phi i32 [ %3193, %3190 ], [ %3138, %3129 ]
  %3197 = phi ptr [ %3194, %3190 ], [ %3100, %3129 ]
  %3198 = call ptr @rtvec_alloc(i32 noundef 1) #17
  %3199 = sext i32 %3196 to i64
  %3200 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %3199) #17
  %3201 = getelementptr inbounds %struct.rtvec_def, ptr %3198, i64 0, i32 1
  store ptr %3200, ptr %3201, align 8, !tbaa !139
  %3202 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %3198) #17
  %3203 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 124, i32 noundef %1, ptr noundef %3197, ptr noundef %3202) #17
  br label %3458

3204:                                             ; preds = %3085
  %3205 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %3206 = load ptr, ptr %3205, align 8, !tbaa !150
  %3207 = load i32, ptr %3206, align 8
  %3208 = lshr i32 %3207, 16
  %3209 = and i32 %3208, 255
  %3210 = icmp eq i32 %3209, %1
  br i1 %3210, label %3458, label %3271

3211:                                             ; preds = %3043
  br i1 %3053, label %3213, label %3212

3212:                                             ; preds = %3211
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2954, ptr noundef nonnull @.str.1) #17
  br label %3213

3213:                                             ; preds = %3212, %3211
  %3214 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %3215 = load i8, ptr %3214, align 1, !tbaa !150
  %3216 = load i32, ptr %36, align 8
  %3217 = lshr i32 %3216, 16
  %3218 = and i32 %3217, 255
  %3219 = zext nneg i32 %3218 to i64
  %3220 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3219
  %3221 = load i8, ptr %3220, align 1, !tbaa !150
  %3222 = icmp eq i8 %3215, %3221
  br i1 %3222, label %3224, label %3223

3223:                                             ; preds = %3213
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2956, ptr noundef nonnull @.str.1) #17
  br label %3224

3224:                                             ; preds = %3223, %3213
  %3225 = load i32, ptr %37, align 8
  %3226 = and i32 %3225, 65535
  %3227 = icmp eq i32 %3226, 15
  br i1 %3227, label %3229, label %3228

3228:                                             ; preds = %3224
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2957, ptr noundef nonnull @.str.1) #17
  br label %3229

3229:                                             ; preds = %3228, %3224
  %3230 = load i32, ptr %36, align 8
  %3231 = and i32 %3230, 65535
  %3232 = icmp eq i32 %3231, 33
  br i1 %3232, label %3233, label %3271

3233:                                             ; preds = %3229
  %3234 = zext i8 %3215 to i64
  %3235 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3234
  %3236 = load i8, ptr %3235, align 1, !tbaa !150
  %3237 = load i8, ptr %39, align 1, !tbaa !150
  %3238 = udiv i8 %3237, %3236
  %3239 = zext i8 %3238 to i32
  %3240 = call ptr @rtvec_alloc(i32 noundef %3239) #17
  %3241 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %3242 = load ptr, ptr %3241, align 8, !tbaa !150
  %3243 = load i32, ptr %3242, align 8, !tbaa !313
  %3244 = icmp eq i32 %3243, %3239
  br i1 %3244, label %3246, label %3245

3245:                                             ; preds = %3233
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2966, ptr noundef nonnull @.str.1) #17
  br label %3246

3246:                                             ; preds = %3245, %3233
  %3247 = icmp ugt i8 %3236, %3237
  br i1 %3247, label %3269, label %3248

3248:                                             ; preds = %3246
  %3249 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %3250 = zext i8 %3238 to i64
  br label %3251

3251:                                             ; preds = %3248, %3260
  %3252 = phi i64 [ 0, %3248 ], [ %3267, %3260 ]
  %3253 = load ptr, ptr %3241, align 8, !tbaa !150
  %3254 = getelementptr inbounds %struct.rtvec_def, ptr %3253, i64 0, i32 1, i64 %3252
  %3255 = load ptr, ptr %3254, align 8, !tbaa !139
  %3256 = load i32, ptr %3255, align 8
  %3257 = and i32 %3256, 65535
  %3258 = icmp eq i32 %3257, 30
  br i1 %3258, label %3260, label %3259

3259:                                             ; preds = %3251
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2971, ptr noundef nonnull @.str.1) #17
  br label %3260

3260:                                             ; preds = %3259, %3251
  %3261 = load ptr, ptr %3249, align 8, !tbaa !150
  %3262 = getelementptr inbounds %struct.rtx_def, ptr %3255, i64 0, i32 1
  %3263 = load i64, ptr %3262, align 8, !tbaa !150
  %3264 = getelementptr inbounds %struct.rtvec_def, ptr %3261, i64 0, i32 1, i64 %3263
  %3265 = load ptr, ptr %3264, align 8, !tbaa !139
  %3266 = getelementptr inbounds %struct.rtvec_def, ptr %3240, i64 0, i32 1, i64 %3252
  store ptr %3265, ptr %3266, align 8, !tbaa !139
  %3267 = add nuw nsw i64 %3252, 1
  %3268 = icmp ult i64 %3267, %3250
  br i1 %3268, label %3251, label %3269, !llvm.loop !315

3269:                                             ; preds = %3260, %3246
  %3270 = call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %3240) #17
  br label %3458

3271:                                             ; preds = %3229, %3204, %3085
  %3272 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %3273 = load ptr, ptr %3272, align 8, !tbaa !150
  %3274 = load i32, ptr %3273, align 8, !tbaa !313
  %3275 = icmp eq i32 %3274, 1
  br i1 %3275, label %3276, label %3335

3276:                                             ; preds = %3271
  %3277 = getelementptr inbounds %struct.rtvec_def, ptr %3273, i64 0, i32 1
  %3278 = load ptr, ptr %3277, align 8, !tbaa !139
  %3279 = load i32, ptr %3278, align 8
  %3280 = and i32 %3279, 65535
  %3281 = icmp eq i32 %3280, 30
  br i1 %3281, label %3282, label %3335

3282:                                             ; preds = %3276
  %3283 = load i32, ptr %36, align 8
  %3284 = and i32 %3283, 65535
  %3285 = icmp eq i32 %3284, 125
  br i1 %3285, label %3286, label %3335

3286:                                             ; preds = %3282
  %3287 = load i32, ptr %36, align 8
  %3288 = lshr i32 %3287, 16
  %3289 = and i32 %3288, 255
  %3290 = icmp ne i32 %3289, %1
  %3291 = and i32 %3287, 65535
  %3292 = icmp eq i32 %3291, 125
  %3293 = and i1 %3292, %3290
  br i1 %3293, label %3294, label %3331

3294:                                             ; preds = %3286
  %3295 = getelementptr inbounds %struct.rtx_def, ptr %3278, i64 0, i32 1
  %3296 = load i64, ptr %3295, align 8, !tbaa !150
  %3297 = load i8, ptr %39, align 1, !tbaa !150
  %3298 = zext i8 %3297 to i64
  %3299 = mul nsw i64 %3296, %3298
  %3300 = trunc i64 %3299 to i32
  br label %3301

3301:                                             ; preds = %3294, %3320
  %3302 = phi i32 [ %3322, %3320 ], [ %3300, %3294 ]
  %3303 = phi ptr [ %3323, %3320 ], [ %36, %3294 ]
  %3304 = getelementptr inbounds %struct.rtx_def, ptr %3303, i64 0, i32 1
  %3305 = load ptr, ptr %3304, align 8, !tbaa !150
  %3306 = load i32, ptr %3305, align 8
  %3307 = lshr i32 %3306, 16
  %3308 = and i32 %3307, 255
  %3309 = zext nneg i32 %3308 to i64
  %3310 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3309
  %3311 = load i8, ptr %3310, align 1, !tbaa !150
  %3312 = zext i8 %3311 to i64
  %3313 = sext i32 %3302 to i64
  %3314 = icmp slt i64 %3313, %3312
  br i1 %3314, label %3320, label %3315

3315:                                             ; preds = %3301
  %3316 = zext i8 %3311 to i32
  %3317 = sub i32 %3302, %3316
  %3318 = getelementptr inbounds %struct.rtx_def, ptr %3303, i64 0, i32 1, i32 0, i32 0, i64 1
  %3319 = load ptr, ptr %3318, align 8, !tbaa !150
  br label %3320

3320:                                             ; preds = %3315, %3301
  %3321 = phi ptr [ %3319, %3315 ], [ %3305, %3301 ]
  %3322 = phi i32 [ %3317, %3315 ], [ %3302, %3301 ]
  %3323 = call ptr @avoid_constant_pool_reference(ptr noundef %3321)
  %3324 = load i32, ptr %3323, align 8
  %3325 = lshr i32 %3324, 16
  %3326 = and i32 %3325, 255
  %3327 = icmp ne i32 %3326, %1
  %3328 = and i32 %3324, 65535
  %3329 = icmp eq i32 %3328, 125
  %3330 = and i1 %3329, %3327
  br i1 %3330, label %3301, label %3331, !llvm.loop !316

3331:                                             ; preds = %3320, %3286
  %3332 = phi ptr [ %36, %3286 ], [ %3323, %3320 ]
  %3333 = phi i32 [ %3289, %3286 ], [ %3326, %3320 ]
  %3334 = icmp eq i32 %3333, %1
  br i1 %3334, label %3458, label %3335

3335:                                             ; preds = %3331, %3282, %3276, %3271
  br label %3458

3336:                                             ; preds = %687
  %3337 = load i32, ptr %36, align 8
  %3338 = lshr i32 %3337, 16
  %3339 = and i32 %3338, 255
  %3340 = icmp eq i32 %3339, 0
  br i1 %3340, label %3341, label %3345

3341:                                             ; preds = %3336
  %3342 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %3343 = load i8, ptr %3342, align 1, !tbaa !150
  %3344 = zext i8 %3343 to i32
  br label %3345

3345:                                             ; preds = %3341, %3336
  %3346 = phi i32 [ %3344, %3341 ], [ %3339, %3336 ]
  %3347 = load i32, ptr %37, align 8
  %3348 = lshr i32 %3347, 16
  %3349 = and i32 %3348, 255
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3351, label %3355

3351:                                             ; preds = %3345
  %3352 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %3353 = load i8, ptr %3352, align 1, !tbaa !150
  %3354 = zext i8 %3353 to i32
  br label %3355

3355:                                             ; preds = %3351, %3345
  %3356 = phi i32 [ %3354, %3351 ], [ %3349, %3345 ]
  %3357 = add i8 %44, -12
  %3358 = icmp ult i8 %3357, 6
  br i1 %3358, label %3360, label %3359

3359:                                             ; preds = %3355
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3016, ptr noundef nonnull @.str.1) #17
  br label %3360

3360:                                             ; preds = %3359, %3355
  %3361 = zext nneg i32 %3346 to i64
  %3362 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3361
  %3363 = load i8, ptr %3362, align 1, !tbaa !150
  %3364 = zext i8 %3363 to i32
  %3365 = zext nneg i32 %3356 to i64
  %3366 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3365
  %3367 = load i8, ptr %3366, align 1, !tbaa !150
  %3368 = zext i8 %3367 to i32
  %3369 = add nuw nsw i32 %3368, %3364
  %3370 = load i8, ptr %39, align 1, !tbaa !150
  %3371 = zext i8 %3370 to i32
  %3372 = icmp eq i32 %3369, %3371
  br i1 %3372, label %3374, label %3373

3373:                                             ; preds = %3360
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3018, ptr noundef nonnull @.str.1) #17
  br label %3374

3374:                                             ; preds = %3373, %3360
  %3375 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3361
  %3376 = load i8, ptr %3375, align 1, !tbaa !150
  %3377 = add i8 %3376, -12
  %3378 = icmp ult i8 %3377, 6
  %3379 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %3380 = load i8, ptr %3379, align 1, !tbaa !150
  br i1 %3378, label %3381, label %3385

3381:                                             ; preds = %3374
  %3382 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3361
  %3383 = load i8, ptr %3382, align 1, !tbaa !150
  %3384 = icmp eq i8 %3380, %3383
  br i1 %3384, label %3390, label %3388

3385:                                             ; preds = %3374
  %3386 = zext i8 %3380 to i32
  %3387 = icmp eq i32 %3346, %3386
  br i1 %3387, label %3390, label %3388

3388:                                             ; preds = %3385, %3381
  %3389 = phi i32 [ 3022, %3381 ], [ 3024, %3385 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %3389, ptr noundef nonnull @.str.1) #17
  br label %3390

3390:                                             ; preds = %3388, %3385, %3381
  %3391 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3365
  %3392 = load i8, ptr %3391, align 1, !tbaa !150
  %3393 = add i8 %3392, -12
  %3394 = icmp ult i8 %3393, 6
  %3395 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %3396 = load i8, ptr %3395, align 1, !tbaa !150
  br i1 %3394, label %3397, label %3401

3397:                                             ; preds = %3390
  %3398 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3365
  %3399 = load i8, ptr %3398, align 1, !tbaa !150
  %3400 = icmp eq i8 %3396, %3399
  br i1 %3400, label %3406, label %3404

3401:                                             ; preds = %3390
  %3402 = zext i8 %3396 to i32
  %3403 = icmp eq i32 %3356, %3402
  br i1 %3403, label %3406, label %3404

3404:                                             ; preds = %3401, %3397
  %3405 = phi i32 [ 3028, %3397 ], [ 3030, %3401 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %3405, ptr noundef nonnull @.str.1) #17
  br label %3406

3406:                                             ; preds = %3404, %3401, %3397
  %3407 = load i32, ptr %36, align 8
  %3408 = trunc i32 %3407 to i16
  switch i16 %3408, label %3458 [
    i16 33, label %3409
    i16 30, label %3409
    i16 32, label %3409
  ]

3409:                                             ; preds = %3406, %3406, %3406
  %3410 = load i32, ptr %37, align 8
  %3411 = trunc i32 %3410 to i16
  switch i16 %3411, label %3458 [
    i16 33, label %3412
    i16 30, label %3412
    i16 32, label %3412
  ]

3412:                                             ; preds = %3409, %3409, %3409
  %3413 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %3414 = load i8, ptr %3413, align 1, !tbaa !150
  %3415 = zext i8 %3414 to i64
  %3416 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3415
  %3417 = load i8, ptr %3416, align 1, !tbaa !150
  %3418 = load i8, ptr %39, align 1, !tbaa !150
  %3419 = udiv i8 %3418, %3417
  %3420 = zext i8 %3419 to i32
  %3421 = call ptr @rtvec_alloc(i32 noundef %3420) #17
  br i1 %3378, label %3422, label %3426

3422:                                             ; preds = %3412
  %3423 = load i8, ptr %3362, align 1, !tbaa !150
  %3424 = udiv i8 %3423, %3417
  %3425 = zext i8 %3424 to i64
  br label %3426

3426:                                             ; preds = %3422, %3412
  %3427 = phi i64 [ %3425, %3422 ], [ 1, %3412 ]
  %3428 = icmp ugt i8 %3417, %3418
  br i1 %3428, label %3454, label %3429

3429:                                             ; preds = %3426
  %3430 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %3431 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %3432 = zext i8 %3419 to i64
  br label %3433

3433:                                             ; preds = %3429, %3449
  %3434 = phi i64 [ 0, %3429 ], [ %3452, %3449 ]
  %3435 = icmp ult i64 %3434, %3427
  br i1 %3435, label %3436, label %3440

3436:                                             ; preds = %3433
  br i1 %3378, label %3437, label %3449

3437:                                             ; preds = %3436
  %3438 = load ptr, ptr %3431, align 8, !tbaa !150
  %3439 = getelementptr inbounds %struct.rtvec_def, ptr %3438, i64 0, i32 1, i64 %3434
  br label %3446

3440:                                             ; preds = %3433
  br i1 %3394, label %3441, label %3449

3441:                                             ; preds = %3440
  %3442 = load ptr, ptr %3430, align 8, !tbaa !150
  %3443 = sub nsw i64 %3434, %3427
  %3444 = and i64 %3443, 4294967295
  %3445 = getelementptr inbounds %struct.rtvec_def, ptr %3442, i64 0, i32 1, i64 %3444
  br label %3446

3446:                                             ; preds = %3437, %3441
  %3447 = phi ptr [ %3445, %3441 ], [ %3439, %3437 ]
  %3448 = load ptr, ptr %3447, align 8, !tbaa !139
  br label %3449

3449:                                             ; preds = %3446, %3440, %3436
  %3450 = phi ptr [ %36, %3436 ], [ %37, %3440 ], [ %3448, %3446 ]
  %3451 = getelementptr inbounds %struct.rtvec_def, ptr %3421, i64 0, i32 1, i64 %3434
  store ptr %3450, ptr %3451, align 8, !tbaa !139
  %3452 = add nuw nsw i64 %3434, 1
  %3453 = icmp ult i64 %3452, %3432
  br i1 %3453, label %3433, label %3454, !llvm.loop !317

3454:                                             ; preds = %3449, %3426
  %3455 = call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %3421) #17
  br label %3458

3456:                                             ; preds = %687
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3072, ptr noundef nonnull @.str.1) #17
  br label %3457

3457:                                             ; preds = %1446, %1455, %1449, %3040, %3025, %3008, %2704, %2322, %2070, %1728, %1725, %1720, %1473, %1464, %1418, %1044, %1002, %992, %989, %986, %981, %3456, %2983, %2958, %2956, %2948, %2946, %2938, %2932, %2926, %2903, %2882, %2878, %2848, %2832, %2795, %2791, %2728, %2724, %1037, %1031, %1027, %1023, %1016, %1012, %1006, %1000
  br label %3458

3458:                                             ; preds = %2910, %2872, %3457, %3454, %3406, %3335, %3331, %3269, %3204, %3195, %3088, %3040, %3025, %3008, %2983, %2951, %2914, %2901, %2898, %2887, %2876, %2866, %2863, %2856, %2851, %2845, %2839, %2836, %2780, %2779, %2776, %2733, %2721, %2715, %2712, %2704, %2700, %2682, %2555, %2532, %2511, %2489, %2461, %2447, %2435, %2426, %2421, %2394, %2359, %2322, %2319, %2292, %2266, %2253, %2231, %2209, %2179, %2167, %2151, %2100, %2090, %2087, %2073, %2070, %2014, %1982, %1907, %1775, %1738, %1731, %1715, %1689, %1604, %1574, %1555, %1482, %1479, %1473, %1410, %1369, %1337, %1324, %1309, %1286, %1274, %1261, %1255, %1157, %1117, %1114, %1109, %1106, %1077, %1044, %977, %920, %917, %897, %864, %846, %757, %749, %743, %738, %728, %720, %711, %687, %687, %687, %687, %687, %687, %687, %687, %989, %1529, %1666, %1728, %1748, %1784, %1837, %1859, %2067, %2330, %2366, %2578, %2665, %2769, %2832, %2916, %2923, %2938, %2941, %2948, %2958, %2974, %2980, %2999, %3005, %3016, %3022, %3031, %3037, %3409, %684
  %3459 = phi ptr [ %685, %684 ], [ null, %3457 ], [ %3270, %3269 ], [ null, %3335 ], [ %3332, %3331 ], [ %3097, %3088 ], [ %3203, %3195 ], [ %2902, %2901 ], [ %2915, %2914 ], [ %2867, %2866 ], [ %2877, %2876 ], [ %2892, %2887 ], [ %2840, %2839 ], [ %2847, %2845 ], [ %2716, %2715 ], [ %2723, %2721 ], [ %2736, %2733 ], [ %2471, %2461 ], [ %2685, %2682 ], [ %2703, %2700 ], [ %2559, %2555 ], [ %2536, %2532 ], [ %2513, %2511 ], [ %2491, %2489 ], [ %2395, %2394 ], [ %2361, %2359 ], [ %2152, %2151 ], [ %2170, %2167 ], [ %2180, %2179 ], [ %2295, %2292 ], [ %2255, %2253 ], [ %2233, %2231 ], [ %2211, %2209 ], [ %2103, %2100 ], [ %1909, %1907 ], [ %1984, %1982 ], [ %2020, %2014 ], [ %1776, %1775 ], [ %1576, %1574 ], [ %1608, %1604 ], [ %1718, %1715 ], [ %1692, %1689 ], [ %1264, %1261 ], [ %1277, %1274 ], [ %1291, %1286 ], [ %1311, %1309 ], [ %1326, %1324 ], [ %1417, %1410 ], [ %1375, %1369 ], [ %1256, %1255 ], [ %1080, %1077 ], [ %723, %720 ], [ %731, %728 ], [ %752, %749 ], [ %760, %757 ], [ %867, %864 ], [ %903, %897 ], [ %847, %846 ], [ %35, %711 ], [ %978, %977 ], [ %1018, %1044 ], [ %35, %1157 ], [ %1338, %1337 ], [ %1474, %1473 ], [ %35, %1555 ], [ %35, %1731 ], [ %34, %1738 ], [ %2071, %2070 ], [ %35, %2073 ], [ %2267, %2266 ], [ %2320, %2319 ], [ %2323, %2322 ], [ %2705, %2704 ], [ %36, %2712 ], [ %35, %2779 ], [ %35, %2780 ], [ %35, %2776 ], [ %36, %2836 ], [ %36, %2863 ], [ %36, %2898 ], [ %35, %2951 ], [ %2984, %2983 ], [ %3009, %3008 ], [ %3026, %3025 ], [ %3041, %3040 ], [ null, %687 ], [ %3206, %3204 ], [ %744, %743 ], [ %741, %738 ], [ %921, %920 ], [ %918, %917 ], [ %1110, %1109 ], [ %1107, %1106 ], [ %1118, %1117 ], [ %1115, %1114 ], [ %1483, %1482 ], [ %1480, %1479 ], [ %2091, %2090 ], [ %2088, %2087 ], [ %2427, %2426 ], [ %2424, %2421 ], [ %2448, %2447 ], [ %2445, %2435 ], [ %2857, %2856 ], [ %2854, %2851 ], [ %3455, %3454 ], [ null, %3406 ], [ null, %687 ], [ null, %687 ], [ null, %687 ], [ null, %687 ], [ null, %687 ], [ null, %687 ], [ null, %687 ], [ %990, %989 ], [ %34, %1529 ], [ %1668, %1666 ], [ %1729, %1728 ], [ %35, %1748 ], [ %34, %1784 ], [ %1839, %1837 ], [ %34, %1859 ], [ %2069, %2067 ], [ %37, %2330 ], [ %35, %2366 ], [ %34, %2578 ], [ %2667, %2665 ], [ %35, %2769 ], [ %2834, %2832 ], [ %35, %2916 ], [ %35, %2923 ], [ %35, %2938 ], [ %35, %2941 ], [ %35, %2948 ], [ %35, %2958 ], [ %34, %2974 ], [ %35, %2980 ], [ %34, %2999 ], [ %35, %3005 ], [ %34, %3016 ], [ %35, %3022 ], [ %34, %3031 ], [ %35, %3037 ], [ null, %3409 ], [ %2875, %2872 ], [ %2913, %2910 ]
  ret ptr %3459
}

declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @avoid_constant_pool_reference(ptr noundef readonly %0) local_unnamed_addr #10 !prof !318 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %85 [
    i16 43, label %19
    i16 101, label %4
  ], !prof !319

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = tail call ptr @avoid_constant_pool_reference(ptr noundef %6)
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %85, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %85

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load i32, ptr %0, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = tail call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %14, i32 noundef %17) #17
  br label %85

19:                                               ; preds = %1
  %20 = and i32 %2, 16711680
  %21 = icmp eq i32 %20, 65536
  br i1 %21, label %85, label %22, !prof !320

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !150
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !321
  %26 = tail call ptr %25(ptr noundef %24) #17, !prof !333
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %47, !prof !334

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !150
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %47, !prof !335

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !150
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %47, !prof !335

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !150
  %46 = load ptr, ptr %43, align 8, !tbaa !150
  br label %47

47:                                               ; preds = %42, %36, %30, %22
  %48 = phi ptr [ %46, %42 ], [ %26, %36 ], [ %26, %30 ], [ %26, %22 ]
  %49 = phi i64 [ %45, %42 ], [ 0, %36 ], [ 0, %30 ], [ 0, %22 ]
  %50 = load i32, ptr %48, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 122
  br i1 %52, label %53, label %56, !prof !320

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !150
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi ptr [ %55, %53 ], [ %48, %47 ]
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 67174399
  %60 = icmp eq i32 %59, 67108909
  br i1 %60, label %61, label %85, !prof !320

61:                                               ; preds = %56
  %62 = tail call ptr @get_pool_constant(ptr noundef nonnull %57) #17
  %63 = tail call i32 @get_pool_mode(ptr noundef nonnull %57) #17
  %64 = icmp eq i64 %49, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, ptr %0, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %63, %68
  br i1 %69, label %85, label %70

70:                                               ; preds = %65, %61
  %71 = load i32, ptr %0, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = trunc i64 %49 to i32
  %75 = tail call ptr @simplify_subreg(i32 noundef %73, ptr noundef %62, i32 noundef %63, i32 noundef %74)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load i32, ptr %75, align 8
  %79 = and i32 %78, 65535
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !154
  %83 = icmp eq i32 %82, 9
  br i1 %83, label %85, label %84

84:                                               ; preds = %77, %70
  br label %85

85:                                               ; preds = %56, %84, %65, %77, %19, %1, %4, %9, %13
  %86 = phi ptr [ %18, %13 ], [ %0, %9 ], [ %0, %4 ], [ %0, %1 ], [ %0, %19 ], [ %75, %77 ], [ %62, %65 ], [ %0, %84 ], [ %0, %56 ]
  ret ptr %86
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8, i32 noundef) local_unnamed_addr #3

declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #3

declare i32 @get_pool_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !336 {
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [16 x i64], align 16
  %9 = alloca %struct.real_value, align 8
  %10 = alloca [16 x i64], align 16
  %11 = alloca %struct.fixed_value, align 8
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %13, label %14, !prof !337

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5137, ptr noundef nonnull @.str.1) #17
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp eq i32 %0, 0
  br i1 %15, label %16, label %17, !prof !337

16:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5138, ptr noundef nonnull @.str.1) #17
  br label %17

17:                                               ; preds = %14, %16
  %18 = icmp eq i32 %2, 1
  br i1 %18, label %19, label %20, !prof !337

19:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5139, ptr noundef nonnull @.str.1) #17
  br label %20

20:                                               ; preds = %17, %19
  %21 = icmp eq i32 %0, 1
  br i1 %21, label %22, label %23, !prof !337

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5140, ptr noundef nonnull @.str.1) #17
  br label %23

23:                                               ; preds = %20, %22
  %24 = load i32, ptr %1, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, %2
  %28 = icmp eq i32 %26, 0
  %29 = or i1 %27, %28
  br i1 %29, label %31, label %30, !prof !338

30:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5143, ptr noundef nonnull @.str.1) #17
  br label %31

31:                                               ; preds = %23, %30
  %32 = zext i32 %0 to i64
  %33 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !150
  %35 = zext i8 %34 to i32
  %36 = urem i32 %3, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !338

38:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5145, ptr noundef nonnull @.str.1) #17
  br label %39

39:                                               ; preds = %31, %38
  %40 = zext i32 %2 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !150
  %43 = zext i8 %42 to i32
  %44 = icmp ugt i32 %43, %3
  br i1 %44, label %46, label %45, !prof !338

45:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5146, ptr noundef nonnull @.str.1) #17
  br label %46

46:                                               ; preds = %39, %45
  %47 = icmp ne i32 %0, %2
  %48 = icmp ne i32 %3, 0
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %903, !prof !339

50:                                               ; preds = %46
  %51 = load i32, ptr %1, align 8
  %52 = trunc i32 %51 to i16
  switch i16 %52, label %545 [
    i16 30, label %53
    i16 32, label %53
    i16 31, label %53
    i16 33, label %53
    i16 39, label %448
    i16 100, label %528
  ], !prof !340

53:                                               ; preds = %50, %50, %50, %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %1, ptr %5, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %54 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %55 = load i8, ptr %54, align 1, !tbaa !150
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %57, label %60, !prof !341

57:                                               ; preds = %53
  %58 = and i32 %51, 65535
  %59 = icmp eq i32 %58, 30
  br i1 %59, label %446, label %60

60:                                               ; preds = %57, %53
  %61 = and i8 %55, -2
  %62 = icmp eq i8 %61, 10
  br i1 %62, label %446, label %63, !prof !341

63:                                               ; preds = %60
  %64 = and i32 %51, 65535
  %65 = icmp eq i32 %64, 33
  br i1 %65, label %66, label %79, !prof !341

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !150
  %69 = load i32, ptr %68, align 8, !tbaa !313
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1
  %71 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %40
  %72 = load i8, ptr %71, align 1, !tbaa !150
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !150
  %76 = freeze i8 %75
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 3
  br label %79

79:                                               ; preds = %66, %63
  %80 = phi i32 [ %78, %66 ], [ 512, %63 ]
  %81 = phi ptr [ %70, %66 ], [ %5, %63 ]
  %82 = phi i32 [ %69, %66 ], [ 1, %63 ]
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %277, !prof !342

84:                                               ; preds = %79
  %85 = icmp eq i32 %80, 0
  %86 = zext nneg i32 %82 to i64
  br label %87

87:                                               ; preds = %84, %274
  %88 = phi i64 [ 0, %84 ], [ %275, %274 ]
  %89 = getelementptr inbounds ptr, ptr %81, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !139
  %91 = trunc i64 %88 to i32
  %92 = mul i32 %80, %91
  %93 = lshr exact i32 %92, 3
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %6, i64 %94
  %96 = load i32, ptr %90, align 8
  %97 = trunc i32 %96 to i16
  switch i16 %97, label %273 [
    i16 30, label %98
    i16 32, label %129
    i16 31, label %223
  ], !prof !343

98:                                               ; preds = %87
  br i1 %85, label %106, label %99, !prof !344

99:                                               ; preds = %98
  %100 = call i32 @llvm.umin.i32(i32 %80, i32 64)
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !150
  br label %112

104:                                              ; preds = %112
  %105 = trunc i64 %118 to i32
  br label %106

106:                                              ; preds = %104, %98
  %107 = phi ptr [ %95, %98 ], [ %117, %104 ]
  %108 = phi i32 [ 0, %98 ], [ %105, %104 ]
  %109 = icmp ult i32 %108, %80
  br i1 %109, label %110, label %274, !prof !342

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  br label %120

112:                                              ; preds = %99, %112
  %113 = phi i64 [ 0, %99 ], [ %118, %112 ]
  %114 = phi ptr [ %95, %99 ], [ %117, %112 ]
  %115 = ashr i64 %103, %113
  %116 = trunc i64 %115 to i8
  %117 = getelementptr inbounds i8, ptr %114, i64 1
  store i8 %116, ptr %114, align 1, !tbaa !150
  %118 = add nuw nsw i64 %113, 8
  %119 = icmp ult i64 %118, %101
  br i1 %119, label %112, label %104, !prof !345, !llvm.loop !346

120:                                              ; preds = %110, %120
  %121 = phi i32 [ %108, %110 ], [ %127, %120 ]
  %122 = phi ptr [ %107, %110 ], [ %126, %120 ]
  %123 = load i64, ptr %111, align 8, !tbaa !150
  %124 = ashr i64 %123, 63
  %125 = trunc i64 %124 to i8
  %126 = getelementptr inbounds i8, ptr %122, i64 1
  store i8 %125, ptr %122, align 1, !tbaa !150
  %127 = add nuw nsw i32 %121, 8
  %128 = icmp ult i32 %127, %80
  br i1 %128, label %120, label %274, !prof !347, !llvm.loop !348

129:                                              ; preds = %87
  %130 = and i32 %96, 16711680
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %174

132:                                              ; preds = %129
  %133 = icmp ugt i32 %80, 64
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4913, ptr noundef nonnull @.str.1) #17
  br label %135

135:                                              ; preds = %134, %132
  %136 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !150
  br label %145

138:                                              ; preds = %145
  %139 = icmp ugt i32 %80, 64
  br i1 %139, label %140, label %155

140:                                              ; preds = %138
  %141 = call i32 @llvm.umin.i32(i32 %80, i32 128)
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %144 = load i64, ptr %143, align 8, !tbaa !150
  br label %165

145:                                              ; preds = %135, %145
  %146 = phi i64 [ 0, %135 ], [ %151, %145 ]
  %147 = phi ptr [ %95, %135 ], [ %150, %145 ]
  %148 = ashr i64 %137, %146
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds i8, ptr %147, i64 1
  store i8 %149, ptr %147, align 1, !tbaa !150
  %151 = add nuw nsw i64 %146, 8
  %152 = icmp ult i64 %146, 56
  br i1 %152, label %145, label %138, !llvm.loop !349

153:                                              ; preds = %165
  %154 = trunc i64 %172 to i32
  br label %155

155:                                              ; preds = %153, %138
  %156 = phi ptr [ %150, %138 ], [ %171, %153 ]
  %157 = phi i32 [ 64, %138 ], [ %154, %153 ]
  %158 = icmp ult i32 %157, %80
  br i1 %158, label %159, label %274

159:                                              ; preds = %155
  %160 = xor i32 %157, -1
  %161 = add i32 %80, %160
  %162 = lshr i32 %161, 3
  %163 = add nuw nsw i32 %162, 1
  %164 = zext nneg i32 %163 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %156, i8 0, i64 %164, i1 false), !tbaa !150
  br label %274

165:                                              ; preds = %140, %165
  %166 = phi i64 [ 64, %140 ], [ %172, %165 ]
  %167 = phi ptr [ %150, %140 ], [ %171, %165 ]
  %168 = add nsw i64 %166, -64
  %169 = ashr i64 %144, %168
  %170 = trunc i64 %169 to i8
  %171 = getelementptr inbounds i8, ptr %167, i64 1
  store i8 %170, ptr %167, align 1, !tbaa !150
  %172 = add nuw nsw i64 %166, 8
  %173 = icmp ult i64 %172, %142
  br i1 %173, label %165, label %153, !llvm.loop !350

174:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #17
  %175 = load i32, ptr %90, align 8
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !150
  %181 = zext i8 %180 to i32
  %182 = shl nuw nsw i32 %181, 3
  %183 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %178
  %184 = load i8, ptr %183, align 1, !tbaa !150
  %185 = and i8 %184, -2
  %186 = icmp eq i8 %185, 8
  br i1 %186, label %188, label %187

187:                                              ; preds = %174
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4933, ptr noundef nonnull @.str.1) #17
  br label %188

188:                                              ; preds = %187, %174
  %189 = icmp ugt i32 %182, %80
  br i1 %189, label %190, label %191

190:                                              ; preds = %188
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4934, ptr noundef nonnull @.str.1) #17
  br label %191

191:                                              ; preds = %190, %188
  %192 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %193 = load i32, ptr %90, align 8
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  %196 = call i64 @real_to_target(ptr noundef nonnull %8, ptr noundef nonnull %192, i32 noundef %195) #17
  %197 = icmp eq i8 %180, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %208, %191
  %199 = phi ptr [ %95, %191 ], [ %219, %208 ]
  %200 = phi i32 [ 0, %191 ], [ %220, %208 ]
  %201 = icmp ult i32 %200, %80
  br i1 %201, label %202, label %222

202:                                              ; preds = %198
  %203 = xor i32 %200, -1
  %204 = add i32 %80, %203
  %205 = lshr i32 %204, 3
  %206 = add nuw nsw i32 %205, 1
  %207 = zext nneg i32 %206 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %199, i8 0, i64 %207, i1 false), !tbaa !150
  br label %222

208:                                              ; preds = %191, %208
  %209 = phi i32 [ %220, %208 ], [ 0, %191 ]
  %210 = phi ptr [ %219, %208 ], [ %95, %191 ]
  %211 = lshr i32 %209, 5
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds [16 x i64], ptr %8, i64 0, i64 %212
  %214 = load i64, ptr %213, align 8, !tbaa !175
  %215 = and i32 %209, 24
  %216 = zext nneg i32 %215 to i64
  %217 = ashr i64 %214, %216
  %218 = trunc i64 %217 to i8
  %219 = getelementptr inbounds i8, ptr %210, i64 1
  store i8 %218, ptr %210, align 1, !tbaa !150
  %220 = add nuw nsw i32 %209, 8
  %221 = icmp ult i32 %220, %182
  br i1 %221, label %208, label %198, !llvm.loop !351

222:                                              ; preds = %202, %198
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #17
  br label %274

223:                                              ; preds = %87
  %224 = icmp ult i32 %80, 65
  br i1 %224, label %230, label %225

225:                                              ; preds = %223
  %226 = call i32 @llvm.umin.i32(i32 %80, i32 128)
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !150
  br label %247

230:                                              ; preds = %223
  %231 = icmp eq i32 %80, 0
  br i1 %231, label %274, label %232

232:                                              ; preds = %230
  %233 = zext nneg i32 %80 to i64
  %234 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %235 = load i64, ptr %234, align 8, !tbaa !150
  br label %236

236:                                              ; preds = %232, %236
  %237 = phi i64 [ 0, %232 ], [ %242, %236 ]
  %238 = phi ptr [ %95, %232 ], [ %241, %236 ]
  %239 = ashr i64 %235, %237
  %240 = trunc i64 %239 to i8
  %241 = getelementptr inbounds i8, ptr %238, i64 1
  store i8 %240, ptr %238, align 1, !tbaa !150
  %242 = add nuw nsw i64 %237, 8
  %243 = icmp ult i64 %242, %233
  br i1 %243, label %236, label %274, !llvm.loop !352

244:                                              ; preds = %247
  %245 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %246 = load i64, ptr %245, align 8, !tbaa !150
  br label %264

247:                                              ; preds = %225, %247
  %248 = phi i64 [ 0, %225 ], [ %253, %247 ]
  %249 = phi ptr [ %95, %225 ], [ %252, %247 ]
  %250 = ashr i64 %229, %248
  %251 = trunc i64 %250 to i8
  %252 = getelementptr inbounds i8, ptr %249, i64 1
  store i8 %251, ptr %249, align 1, !tbaa !150
  %253 = add nuw nsw i64 %248, 8
  %254 = icmp ult i64 %248, 56
  br i1 %254, label %247, label %244, !llvm.loop !353

255:                                              ; preds = %264
  %256 = trunc i64 %271 to i32
  %257 = icmp ugt i32 %80, %256
  br i1 %257, label %258, label %274

258:                                              ; preds = %255
  %259 = xor i32 %256, -1
  %260 = add i32 %80, %259
  %261 = lshr i32 %260, 3
  %262 = add nuw nsw i32 %261, 1
  %263 = zext nneg i32 %262 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %270, i8 0, i64 %263, i1 false), !tbaa !150
  br label %274

264:                                              ; preds = %244, %264
  %265 = phi i64 [ 64, %244 ], [ %271, %264 ]
  %266 = phi ptr [ %252, %244 ], [ %270, %264 ]
  %267 = add nsw i64 %265, -64
  %268 = ashr i64 %246, %267
  %269 = trunc i64 %268 to i8
  %270 = getelementptr inbounds i8, ptr %266, i64 1
  store i8 %269, ptr %266, align 1, !tbaa !150
  %271 = add nuw nsw i64 %265, 8
  %272 = icmp ult i64 %271, %227
  br i1 %272, label %264, label %255, !llvm.loop !354

273:                                              ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4981, ptr noundef nonnull @.str.1) #17
  br label %274

274:                                              ; preds = %236, %120, %258, %159, %255, %230, %155, %106, %273, %222
  %275 = add nuw nsw i64 %88, 1
  %276 = icmp eq i64 %275, %86
  br i1 %276, label %277, label %87, !prof !342, !llvm.loop !355

277:                                              ; preds = %274, %79
  %278 = load i8, ptr %41, align 1, !tbaa !150
  %279 = zext i8 %278 to i32
  %280 = icmp ugt i32 %279, %3
  br i1 %280, label %282, label %281, !prof !356

281:                                              ; preds = %277
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5001, ptr noundef nonnull @.str.1) #17
  br label %282

282:                                              ; preds = %281, %277
  %283 = add i8 %55, -12
  %284 = icmp ult i8 %283, 6
  br i1 %284, label %285, label %294, !prof !341

285:                                              ; preds = %282
  %286 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %32
  %287 = load i8, ptr %286, align 1, !tbaa !150
  %288 = zext i8 %287 to i32
  %289 = call ptr @rtvec_alloc(i32 noundef %288) #17
  %290 = getelementptr inbounds %struct.rtvec_def, ptr %289, i64 0, i32 1
  %291 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %32
  %292 = load i8, ptr %291, align 1, !tbaa !150
  %293 = zext i8 %292 to i32
  br label %294

294:                                              ; preds = %285, %282
  %295 = phi i32 [ %293, %285 ], [ %0, %282 ]
  %296 = phi ptr [ %289, %285 ], [ null, %282 ]
  %297 = phi ptr [ %290, %285 ], [ %7, %282 ]
  %298 = phi i32 [ %288, %285 ], [ 1, %282 ]
  %299 = zext i32 %295 to i64
  %300 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !150
  %302 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %299
  %303 = load i8, ptr %302, align 1, !tbaa !150
  %304 = freeze i8 %303
  %305 = zext i8 %304 to i32
  %306 = shl nuw nsw i32 %305, 3
  %307 = add i32 %305, %3
  %308 = shl i32 %307, 3
  %309 = icmp slt i32 %308, 513
  br i1 %309, label %311, label %310, !prof !356

310:                                              ; preds = %294
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5026, ptr noundef nonnull @.str.1) #17
  br label %311

311:                                              ; preds = %310, %294
  %312 = icmp eq i32 %298, 0
  br i1 %312, label %441, label %313, !prof !344

313:                                              ; preds = %311
  %314 = sext i32 %3 to i64
  %315 = getelementptr inbounds i8, ptr %6, i64 %314
  %316 = icmp eq i8 %304, 0
  %317 = icmp ult i8 %304, 9
  %318 = zext nneg i32 %298 to i64
  br label %319

319:                                              ; preds = %313, %438
  %320 = phi i64 [ 0, %313 ], [ %439, %438 ]
  %321 = trunc i64 %320 to i32
  %322 = mul i32 %306, %321
  %323 = lshr exact i32 %322, 3
  %324 = zext nneg i32 %323 to i64
  %325 = getelementptr inbounds i8, ptr %315, i64 %324
  switch i8 %301, label %437 [
    i8 2, label %326
    i8 3, label %326
    i8 8, label %373
    i8 9, label %373
    i8 4, label %394
    i8 5, label %394
    i8 6, label %394
    i8 7, label %394
  ], !prof !357

326:                                              ; preds = %319, %319
  br i1 %316, label %332, label %327, !prof !344

327:                                              ; preds = %326
  %328 = call i32 @llvm.umin.i32(i32 %306, i32 64)
  %329 = zext nneg i32 %328 to i64
  br label %339

330:                                              ; preds = %339
  %331 = trunc i64 %348 to i32
  br label %332

332:                                              ; preds = %330, %326
  %333 = phi ptr [ %325, %326 ], [ %343, %330 ]
  %334 = phi i32 [ 0, %326 ], [ %331, %330 ]
  %335 = phi i64 [ 0, %326 ], [ %347, %330 ]
  %336 = icmp ult i32 %334, %306
  br i1 %336, label %337, label %363, !prof !358

337:                                              ; preds = %332
  %338 = zext nneg i32 %334 to i64
  br label %350

339:                                              ; preds = %327, %339
  %340 = phi i64 [ %348, %339 ], [ 0, %327 ]
  %341 = phi i64 [ %347, %339 ], [ 0, %327 ]
  %342 = phi ptr [ %343, %339 ], [ %325, %327 ]
  %343 = getelementptr inbounds i8, ptr %342, i64 1
  %344 = load i8, ptr %342, align 1, !tbaa !150
  %345 = zext i8 %344 to i64
  %346 = shl i64 %345, %340
  %347 = or i64 %346, %341
  %348 = add nuw nsw i64 %340, 8
  %349 = icmp ult i64 %348, %329
  br i1 %349, label %339, label %330, !prof !359, !llvm.loop !360

350:                                              ; preds = %337, %350
  %351 = phi i64 [ %338, %337 ], [ %361, %350 ]
  %352 = phi i64 [ 0, %337 ], [ %360, %350 ]
  %353 = phi ptr [ %333, %337 ], [ %355, %350 ]
  %354 = zext nneg i32 %306 to i64
  %355 = getelementptr inbounds i8, ptr %353, i64 1
  %356 = load i8, ptr %353, align 1, !tbaa !150
  %357 = zext i8 %356 to i64
  %358 = add nsw i64 %351, -64
  %359 = shl i64 %357, %358
  %360 = or i64 %359, %352
  %361 = add nuw nsw i64 %351, 8
  %362 = icmp ult i64 %361, %354
  br i1 %362, label %350, label %363, !prof !358, !llvm.loop !361

363:                                              ; preds = %350, %332
  %364 = phi i64 [ 0, %332 ], [ %360, %350 ]
  br i1 %317, label %365, label %368, !prof !356

365:                                              ; preds = %363
  %366 = call ptr @gen_int_mode(i64 noundef %335, i32 noundef %295) #17
  %367 = getelementptr inbounds ptr, ptr %297, i64 %320
  store ptr %366, ptr %367, align 8, !tbaa !139
  br label %438

368:                                              ; preds = %363
  %369 = icmp ult i8 %304, 17
  br i1 %369, label %370, label %446

370:                                              ; preds = %368
  %371 = call ptr @immed_double_const(i64 noundef %335, i64 noundef %364, i32 noundef %295) #17
  %372 = getelementptr inbounds ptr, ptr %297, i64 %320
  store ptr %371, ptr %372, align 8, !tbaa !139
  br label %438

373:                                              ; preds = %319, %319
  %374 = icmp eq i8 %304, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %10, i8 0, i64 128, i1 false), !tbaa !175
  br i1 %374, label %391, label %375

375:                                              ; preds = %373, %375
  %376 = phi i32 [ %389, %375 ], [ 0, %373 ]
  %377 = phi ptr [ %378, %375 ], [ %325, %373 ]
  %378 = getelementptr inbounds i8, ptr %377, i64 1
  %379 = load i8, ptr %377, align 1, !tbaa !150
  %380 = zext i8 %379 to i32
  %381 = and i32 %376, 24
  %382 = shl nuw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = lshr i32 %376, 5
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds [16 x i64], ptr %10, i64 0, i64 %385
  %387 = load i64, ptr %386, align 8, !tbaa !175
  %388 = or i64 %387, %383
  store i64 %388, ptr %386, align 8, !tbaa !175
  %389 = add nuw nsw i32 %376, 8
  %390 = icmp ult i32 %389, %306
  br i1 %390, label %375, label %391, !llvm.loop !362

391:                                              ; preds = %375, %373
  call void @real_from_target(ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %295) #17
  %392 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %9, i32 noundef %295) #17
  %393 = getelementptr inbounds ptr, ptr %297, i64 %320
  store ptr %392, ptr %393, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #17
  br label %438

394:                                              ; preds = %319, %319, %319, %319
  %395 = getelementptr inbounds %struct.fixed_value, ptr %11, i64 0, i32 1
  %396 = icmp eq i8 %304, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i32 %295, ptr %395, align 8, !tbaa !363
  br i1 %396, label %402, label %397

397:                                              ; preds = %394
  %398 = call i32 @llvm.umin.i32(i32 %306, i32 64)
  %399 = zext nneg i32 %398 to i64
  br label %411

400:                                              ; preds = %411
  %401 = trunc i64 %420 to i32
  store i64 %419, ptr %11, align 8, !tbaa !366
  br label %402

402:                                              ; preds = %400, %394
  %403 = phi ptr [ %415, %400 ], [ %325, %394 ]
  %404 = phi i32 [ %401, %400 ], [ 0, %394 ]
  %405 = icmp ult i32 %404, %306
  br i1 %405, label %406, label %434

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.double_int, ptr %11, i64 0, i32 1
  %408 = zext nneg i32 %306 to i64
  %409 = load i64, ptr %407, align 8, !tbaa !367
  %410 = zext nneg i32 %404 to i64
  br label %422

411:                                              ; preds = %397, %411
  %412 = phi i64 [ %420, %411 ], [ 0, %397 ]
  %413 = phi ptr [ %415, %411 ], [ %325, %397 ]
  %414 = phi i64 [ %419, %411 ], [ 0, %397 ]
  %415 = getelementptr inbounds i8, ptr %413, i64 1
  %416 = load i8, ptr %413, align 1, !tbaa !150
  %417 = zext i8 %416 to i64
  %418 = shl i64 %417, %412
  %419 = or i64 %418, %414
  %420 = add nuw nsw i64 %412, 8
  %421 = icmp ult i64 %420, %399
  br i1 %421, label %411, label %400, !llvm.loop !368

422:                                              ; preds = %406, %422
  %423 = phi i64 [ %410, %406 ], [ %432, %422 ]
  %424 = phi ptr [ %403, %406 ], [ %426, %422 ]
  %425 = phi i64 [ %409, %406 ], [ %431, %422 ]
  %426 = getelementptr inbounds i8, ptr %424, i64 1
  %427 = load i8, ptr %424, align 1, !tbaa !150
  %428 = zext i8 %427 to i64
  %429 = add nsw i64 %423, -64
  %430 = shl i64 %428, %429
  %431 = or i64 %430, %425
  store i64 %431, ptr %407, align 8, !tbaa !367
  %432 = add nuw nsw i64 %423, 8
  %433 = icmp ult i64 %432, %408
  br i1 %433, label %422, label %434, !llvm.loop !369

434:                                              ; preds = %422, %402
  %435 = call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %11, i32 noundef %295) #17
  %436 = getelementptr inbounds ptr, ptr %297, i64 %320
  store ptr %435, ptr %436, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #17
  br label %438

437:                                              ; preds = %319
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5121, ptr noundef nonnull @.str.1) #17
  br label %438

438:                                              ; preds = %437, %434, %391, %370, %365
  %439 = add nuw nsw i64 %320, 1
  %440 = icmp eq i64 %439, %318
  br i1 %440, label %441, label %319, !prof !342, !llvm.loop !370

441:                                              ; preds = %438, %311
  br i1 %284, label %442, label %444, !prof !341

442:                                              ; preds = %441
  %443 = call ptr @gen_rtx_CONST_VECTOR(i32 noundef %0, ptr noundef %296) #17
  br label %446

444:                                              ; preds = %441
  %445 = load ptr, ptr %7, align 8, !tbaa !139
  br label %446

446:                                              ; preds = %368, %57, %60, %442, %444
  %447 = phi ptr [ %443, %442 ], [ %445, %444 ], [ %1, %57 ], [ null, %60 ], [ null, %368 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %903

448:                                              ; preds = %50
  %449 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !150
  %451 = load i32, ptr %450, align 8
  %452 = lshr i32 %451, 16
  %453 = and i32 %452, 255
  %454 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %455 = load i32, ptr %454, align 8, !tbaa !150
  %456 = add i32 %455, %3
  %457 = icmp eq i32 %453, %0
  %458 = icmp eq i32 %3, 0
  %459 = and i1 %458, %457
  %460 = icmp eq i32 %455, 0
  %461 = select i1 %459, i1 %460, i1 false, !prof !371
  br i1 %461, label %903, label %462, !prof !371

462:                                              ; preds = %448
  %463 = zext nneg i32 %453 to i64
  %464 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %463
  %465 = load i8, ptr %464, align 1, !tbaa !150
  %466 = zext i8 %465 to i32
  %467 = load i8, ptr %33, align 1, !tbaa !150
  %468 = zext i8 %467 to i32
  %469 = icmp ugt i8 %465, %467
  br i1 %469, label %470, label %477

470:                                              ; preds = %462
  %471 = icmp slt i32 %456, 0
  br i1 %471, label %903, label %472

472:                                              ; preds = %470
  %473 = urem i32 %456, %468
  %474 = icmp eq i32 %473, 0
  %475 = icmp ult i32 %456, %466
  %476 = and i1 %475, %474
  br i1 %476, label %479, label %903

477:                                              ; preds = %462
  %478 = icmp eq i32 %456, 0
  br i1 %478, label %479, label %903

479:                                              ; preds = %477, %472
  %480 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %450, i32 noundef %453, i32 noundef %456)
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %903

482:                                              ; preds = %479
  %483 = load ptr, ptr %449, align 8, !tbaa !150
  %484 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %453, ptr noundef %483, i32 noundef %456) #17
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %903, label %486

486:                                              ; preds = %482
  %487 = load ptr, ptr %449, align 8, !tbaa !150
  %488 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef %487, i32 noundef %456) #17
  %489 = load i32, ptr %1, align 8
  %490 = and i32 %489, 402653184
  %491 = icmp eq i32 %490, 268435456
  br i1 %491, label %492, label %903

492:                                              ; preds = %486
  %493 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %494 = load i8, ptr %493, align 1, !tbaa !150
  %495 = icmp eq i8 %494, 2
  br i1 %495, label %496, label %903

496:                                              ; preds = %492
  %497 = load i8, ptr %33, align 1, !tbaa !150
  %498 = zext i8 %497 to i64
  %499 = load i8, ptr %41, align 1, !tbaa !150
  %500 = zext i8 %499 to i64
  %501 = sub nsw i64 %498, %500
  %502 = load i8, ptr %464, align 1, !tbaa !150
  %503 = zext i8 %502 to i64
  %504 = sub nsw i64 %503, %500
  %505 = icmp ugt i64 %501, %504
  br i1 %505, label %903, label %506

506:                                              ; preds = %496
  %507 = tail call i32 @subreg_lowpart_p(ptr noundef %488) #17
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %903, label %509

509:                                              ; preds = %506
  %510 = load i32, ptr %488, align 8
  %511 = or i32 %510, 268435456
  store i32 %511, ptr %488, align 8
  %512 = load i32, ptr %1, align 8
  %513 = and i32 %512, 134217728
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %509
  %516 = or i32 %510, 402653184
  br label %526

517:                                              ; preds = %509
  %518 = and i32 %511, -134217729
  store i32 %518, ptr %488, align 8
  %519 = load i32, ptr %1, align 8
  %520 = and i32 %519, 134217728
  %521 = icmp eq i32 %520, 0
  %522 = and i32 %519, 67108864
  %523 = select i1 %521, i32 %522, i32 67108864
  %524 = and i32 %511, -201326593
  %525 = or disjoint i32 %523, %524
  br label %526

526:                                              ; preds = %517, %515
  %527 = phi i32 [ %525, %517 ], [ %516, %515 ]
  store i32 %527, ptr %488, align 8
  br label %903

528:                                              ; preds = %50
  %529 = load i8, ptr %33, align 1, !tbaa !150
  %530 = load i8, ptr %41, align 1, !tbaa !150
  %531 = icmp ult i8 %529, %530
  br i1 %531, label %532, label %545

532:                                              ; preds = %528
  %533 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #17
  %534 = icmp eq i32 %533, %3
  br i1 %534, label %535, label %545

535:                                              ; preds = %532
  %536 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !150
  %538 = load i32, ptr %537, align 8
  %539 = lshr i32 %538, 16
  %540 = and i32 %539, 255
  %541 = tail call ptr @simplify_unary_operation(i32 noundef 100, i32 noundef %0, ptr noundef nonnull %537, i32 noundef %540)
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %903

543:                                              ; preds = %535
  %544 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 100, i32 noundef %0, ptr noundef nonnull %537) #17
  br label %903

545:                                              ; preds = %50, %532, %528
  %546 = load i32, ptr %1, align 8
  %547 = and i32 %546, 65535
  %548 = icmp eq i32 %547, 37
  br i1 %548, label %549, label %566, !prof !372

549:                                              ; preds = %545
  %550 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %551 = load i32, ptr %550, align 8, !tbaa !150
  %552 = icmp ult i32 %551, 53
  br i1 %552, label %553, label %566, !prof !373

553:                                              ; preds = %549
  %554 = tail call i32 @simplify_subreg_regno(i32 noundef %551, i32 noundef %2, i32 noundef %3, i32 noundef %0) #17
  %555 = icmp ugt i32 %554, 52
  br i1 %555, label %564, label %556, !prof !374

556:                                              ; preds = %553
  %557 = tail call ptr @gen_rtx_REG_offset(ptr noundef nonnull %1, i32 noundef %0, i32 noundef %554, i32 noundef %3) #17
  %558 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #17
  %559 = icmp eq i32 %558, %3
  br i1 %559, label %560, label %564, !prof !375

560:                                              ; preds = %556
  %561 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %562 = load i32, ptr %561, align 8, !tbaa !150
  %563 = getelementptr inbounds %struct.rtx_def, ptr %557, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %562, ptr %563, align 8, !tbaa !150
  br label %564

564:                                              ; preds = %553, %556, %560
  %565 = phi ptr [ %557, %560 ], [ %557, %556 ], [ undef, %553 ]
  br i1 %555, label %566, label %903, !prof !374

566:                                              ; preds = %564, %549, %545
  %567 = phi ptr [ %565, %564 ], [ undef, %549 ], [ undef, %545 ]
  %568 = load i32, ptr %1, align 8
  %569 = and i32 %568, 65535
  %570 = icmp eq i32 %569, 43
  br i1 %570, label %571, label %595, !prof !376

571:                                              ; preds = %566
  %572 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %573 = load ptr, ptr %572, align 8, !tbaa !150
  %574 = tail call i32 @mode_dependent_address_p(ptr noundef %573) #17
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %595, !prof !377

576:                                              ; preds = %571
  %577 = load i32, ptr %1, align 8
  %578 = and i32 %577, 134217728
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %583, label %580, !prof !377

580:                                              ; preds = %576
  %581 = tail call i32 @have_insn_for(i32 noundef 23, i32 noundef %2) #17
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %595

583:                                              ; preds = %580, %576
  %584 = load i8, ptr %33, align 1, !tbaa !150
  %585 = load i32, ptr %1, align 8
  %586 = lshr i32 %585, 16
  %587 = and i32 %586, 255
  %588 = zext nneg i32 %587 to i64
  %589 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %588
  %590 = load i8, ptr %589, align 1, !tbaa !150
  %591 = icmp ugt i8 %584, %590
  br i1 %591, label %595, label %592, !prof !378

592:                                              ; preds = %583
  %593 = zext i32 %3 to i64
  %594 = tail call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef %0, i64 noundef %593, i32 noundef 0, i32 noundef 1) #17
  br label %903

595:                                              ; preds = %583, %580, %571, %566
  %596 = load i32, ptr %1, align 8
  %597 = trunc i32 %596 to i16
  switch i16 %597, label %699 [
    i16 41, label %598
    i16 99, label %637
    i16 98, label %637
  ], !prof !379

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %600 = load ptr, ptr %599, align 8, !tbaa !150
  %601 = load i32, ptr %600, align 8
  %602 = lshr i32 %601, 16
  %603 = and i32 %602, 255
  %604 = zext nneg i32 %603 to i64
  %605 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %604
  %606 = load i8, ptr %605, align 1, !tbaa !150
  %607 = icmp eq i8 %606, 0
  %608 = zext i8 %606 to i64
  %609 = select i1 %607, i64 %604, i64 %608
  %610 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %609
  %611 = load i8, ptr %610, align 1, !tbaa !150
  %612 = zext i8 %611 to i32
  %613 = icmp ugt i32 %612, %3
  %614 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %615 = select i1 %613, i32 0, i32 %612
  %616 = sub i32 %3, %615
  %617 = select i1 %613, ptr %599, ptr %614
  %618 = load ptr, ptr %617, align 8, !tbaa !150
  %619 = load i8, ptr %33, align 1, !tbaa !150
  %620 = zext i8 %619 to i32
  %621 = add i32 %616, %620
  %622 = icmp ugt i32 %621, %612
  br i1 %622, label %903, label %623

623:                                              ; preds = %598
  %624 = load i32, ptr %618, align 8
  %625 = lshr i32 %624, 16
  %626 = and i32 %625, 255
  %627 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %618, i32 noundef %626, i32 noundef %616)
  %628 = icmp eq ptr %627, null
  br i1 %628, label %629, label %903

629:                                              ; preds = %623
  %630 = load i32, ptr %618, align 8
  %631 = lshr i32 %630, 16
  %632 = and i32 %631, 255
  %633 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %632, ptr noundef nonnull %618, i32 noundef %616) #17
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %903, label %635

635:                                              ; preds = %629
  %636 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef nonnull %618, i32 noundef %616) #17
  br label %903

637:                                              ; preds = %595, %595
  %638 = load i8, ptr %33, align 1, !tbaa !150
  %639 = load i8, ptr %41, align 1, !tbaa !150
  %640 = icmp ult i8 %638, %639
  br i1 %640, label %641, label %699

641:                                              ; preds = %637
  %642 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #17
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %675

644:                                              ; preds = %641
  %645 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !150
  %647 = load i32, ptr %646, align 8
  %648 = lshr i32 %647, 16
  %649 = and i32 %648, 255
  %650 = icmp eq i32 %649, %0
  br i1 %650, label %672, label %651

651:                                              ; preds = %644
  %652 = load i8, ptr %33, align 1, !tbaa !150
  %653 = zext nneg i32 %649 to i64
  %654 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !150
  %656 = icmp ugt i8 %652, %655
  br i1 %656, label %660, label %657

657:                                              ; preds = %651
  %658 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %649) #17
  %659 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %646, i32 noundef %649, i32 noundef %658)
  br label %672

660:                                              ; preds = %651
  %661 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %662 = load i8, ptr %661, align 1, !tbaa !150
  %663 = and i8 %662, -2
  %664 = icmp eq i8 %663, 2
  br i1 %664, label %665, label %672

665:                                              ; preds = %660
  %666 = load i32, ptr %1, align 8
  %667 = and i32 %666, 65535
  %668 = tail call ptr @simplify_unary_operation(i32 noundef %667, i32 noundef %0, ptr noundef nonnull %646, i32 noundef %649)
  %669 = icmp eq ptr %668, null
  br i1 %669, label %670, label %672

670:                                              ; preds = %665
  %671 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %667, i32 noundef %0, ptr noundef nonnull %646) #17
  br label %672

672:                                              ; preds = %670, %665, %660, %644, %657
  %673 = phi i1 [ false, %657 ], [ false, %644 ], [ true, %660 ], [ false, %665 ], [ false, %670 ]
  %674 = phi ptr [ %659, %657 ], [ %646, %644 ], [ %567, %660 ], [ %668, %665 ], [ %671, %670 ]
  br i1 %673, label %675, label %696

675:                                              ; preds = %672, %641
  %676 = phi ptr [ %674, %672 ], [ %567, %641 ]
  %677 = load i32, ptr %1, align 8
  %678 = and i32 %677, 65535
  %679 = icmp eq i32 %678, 99
  br i1 %679, label %680, label %696

680:                                              ; preds = %675
  %681 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %682 = load ptr, ptr %681, align 8, !tbaa !150
  %683 = load i32, ptr %682, align 8
  %684 = lshr i32 %683, 16
  %685 = and i32 %684, 255
  %686 = zext nneg i32 %685 to i64
  %687 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %686
  %688 = load i8, ptr %687, align 1, !tbaa !150
  %689 = zext i8 %688 to i32
  %690 = shl nuw nsw i32 %689, 3
  %691 = icmp ult i32 %642, %690
  br i1 %691, label %696, label %692

692:                                              ; preds = %680
  %693 = sext i32 %0 to i64
  %694 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %693
  %695 = load ptr, ptr %694, align 8, !tbaa !139
  br label %696

696:                                              ; preds = %672, %675, %680, %692
  %697 = phi i1 [ false, %692 ], [ true, %680 ], [ true, %675 ], [ false, %672 ]
  %698 = phi ptr [ %695, %692 ], [ %676, %680 ], [ %676, %675 ], [ %674, %672 ]
  br i1 %697, label %699, label %903

699:                                              ; preds = %637, %696, %595
  %700 = load i32, ptr %1, align 8
  %701 = and i32 %700, 65535
  %702 = add nsw i32 %701, -67
  %703 = icmp ult i32 %702, 2
  br i1 %703, label %704, label %752, !prof !380

704:                                              ; preds = %699
  %705 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %706 = load i8, ptr %705, align 1, !tbaa !150
  %707 = and i8 %706, -2
  %708 = icmp eq i8 %707, 2
  br i1 %708, label %709, label %752, !prof !381

709:                                              ; preds = %704
  %710 = load i8, ptr %33, align 1, !tbaa !150
  %711 = zext i8 %710 to i16
  %712 = shl nuw nsw i16 %711, 3
  %713 = shl nuw nsw i16 %711, 4
  %714 = zext nneg i16 %713 to i32
  %715 = load i8, ptr %41, align 1, !tbaa !150
  %716 = zext i8 %715 to i32
  %717 = shl nuw nsw i32 %716, 3
  %718 = icmp ult i32 %717, %714
  br i1 %718, label %752, label %719, !prof !382

719:                                              ; preds = %709
  %720 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %721 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %722 = load ptr, ptr %721, align 8, !tbaa !150
  %723 = load i32, ptr %722, align 8
  %724 = and i32 %723, 65535
  %725 = icmp eq i32 %724, 30
  br i1 %725, label %726, label %752, !prof !383

726:                                              ; preds = %719
  %727 = load ptr, ptr %720, align 8, !tbaa !150
  %728 = load i32, ptr %727, align 8
  %729 = and i32 %728, 65535
  %730 = icmp eq i32 %729, 98
  br i1 %730, label %731, label %752, !prof !384

731:                                              ; preds = %726
  %732 = getelementptr inbounds %struct.rtx_def, ptr %727, i64 0, i32 1
  %733 = load ptr, ptr %732, align 8, !tbaa !150
  %734 = load i32, ptr %733, align 8
  %735 = lshr i32 %734, 16
  %736 = and i32 %735, 255
  %737 = icmp eq i32 %736, %0
  br i1 %737, label %738, label %752

738:                                              ; preds = %731
  %739 = getelementptr inbounds %struct.rtx_def, ptr %722, i64 0, i32 1
  %740 = load i64, ptr %739, align 8, !tbaa !150
  %741 = zext nneg i16 %712 to i64
  %742 = icmp slt i64 %740, %741
  br i1 %742, label %743, label %752

743:                                              ; preds = %738
  %744 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #17
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %752

746:                                              ; preds = %743
  %747 = load ptr, ptr %720, align 8, !tbaa !150
  %748 = getelementptr inbounds %struct.rtx_def, ptr %747, i64 0, i32 1
  %749 = load ptr, ptr %748, align 8, !tbaa !150
  %750 = load ptr, ptr %721, align 8, !tbaa !150
  %751 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %0, ptr noundef %749, ptr noundef %750)
  br label %903

752:                                              ; preds = %704, %699, %743, %738, %731, %726, %719, %709
  %753 = load i32, ptr %1, align 8
  %754 = and i32 %753, 65535
  %755 = add nsw i32 %754, -67
  %756 = icmp ult i32 %755, 2
  br i1 %756, label %757, label %804, !prof !380

757:                                              ; preds = %752
  %758 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %759 = load i8, ptr %758, align 1, !tbaa !150
  %760 = and i8 %759, -2
  %761 = icmp eq i8 %760, 2
  br i1 %761, label %762, label %804, !prof !381

762:                                              ; preds = %757
  %763 = load i8, ptr %33, align 1, !tbaa !150
  %764 = zext i8 %763 to i16
  %765 = shl nuw nsw i16 %764, 3
  %766 = zext nneg i16 %765 to i32
  %767 = load i8, ptr %41, align 1, !tbaa !150
  %768 = zext i8 %767 to i32
  %769 = shl nuw nsw i32 %768, 3
  %770 = icmp ugt i32 %769, %766
  br i1 %770, label %771, label %804, !prof !381

771:                                              ; preds = %762
  %772 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %773 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %774 = load ptr, ptr %773, align 8, !tbaa !150
  %775 = load i32, ptr %774, align 8
  %776 = and i32 %775, 65535
  %777 = icmp eq i32 %776, 30
  br i1 %777, label %778, label %804, !prof !383

778:                                              ; preds = %771
  %779 = load ptr, ptr %772, align 8, !tbaa !150
  %780 = load i32, ptr %779, align 8
  %781 = and i32 %780, 65535
  %782 = icmp eq i32 %781, 99
  br i1 %782, label %783, label %804, !prof !384

783:                                              ; preds = %778
  %784 = getelementptr inbounds %struct.rtx_def, ptr %779, i64 0, i32 1
  %785 = load ptr, ptr %784, align 8, !tbaa !150
  %786 = load i32, ptr %785, align 8
  %787 = lshr i32 %786, 16
  %788 = and i32 %787, 255
  %789 = icmp eq i32 %788, %0
  br i1 %789, label %790, label %804

790:                                              ; preds = %783
  %791 = getelementptr inbounds %struct.rtx_def, ptr %774, i64 0, i32 1
  %792 = load i64, ptr %791, align 8, !tbaa !150
  %793 = zext nneg i16 %765 to i64
  %794 = icmp slt i64 %792, %793
  br i1 %794, label %795, label %804

795:                                              ; preds = %790
  %796 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #17
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %804

798:                                              ; preds = %795
  %799 = load ptr, ptr %772, align 8, !tbaa !150
  %800 = getelementptr inbounds %struct.rtx_def, ptr %799, i64 0, i32 1
  %801 = load ptr, ptr %800, align 8, !tbaa !150
  %802 = load ptr, ptr %773, align 8, !tbaa !150
  %803 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %0, ptr noundef %801, ptr noundef %802)
  br label %903

804:                                              ; preds = %757, %752, %795, %790, %783, %778, %771, %762
  %805 = load i32, ptr %1, align 8
  %806 = and i32 %805, 65535
  %807 = icmp eq i32 %806, 65
  br i1 %807, label %808, label %851, !prof !385

808:                                              ; preds = %804
  %809 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %810 = load i8, ptr %809, align 1, !tbaa !150
  %811 = and i8 %810, -2
  %812 = icmp eq i8 %811, 2
  br i1 %812, label %813, label %851

813:                                              ; preds = %808
  %814 = load i8, ptr %33, align 1, !tbaa !150
  %815 = load i8, ptr %41, align 1, !tbaa !150
  %816 = icmp ult i8 %814, %815
  br i1 %816, label %817, label %851

817:                                              ; preds = %813
  %818 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %819 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %820 = load ptr, ptr %819, align 8, !tbaa !150
  %821 = load i32, ptr %820, align 8
  %822 = and i32 %821, 65535
  %823 = icmp eq i32 %822, 30
  br i1 %823, label %824, label %851

824:                                              ; preds = %817
  %825 = load ptr, ptr %818, align 8, !tbaa !150
  %826 = load i32, ptr %825, align 8
  %827 = and i32 %826, 65534
  %828 = icmp eq i32 %827, 98
  br i1 %828, label %829, label %851

829:                                              ; preds = %824
  %830 = getelementptr inbounds %struct.rtx_def, ptr %825, i64 0, i32 1
  %831 = load ptr, ptr %830, align 8, !tbaa !150
  %832 = load i32, ptr %831, align 8
  %833 = lshr i32 %832, 16
  %834 = and i32 %833, 255
  %835 = icmp eq i32 %834, %0
  br i1 %835, label %836, label %851

836:                                              ; preds = %829
  %837 = getelementptr inbounds %struct.rtx_def, ptr %820, i64 0, i32 1
  %838 = load i64, ptr %837, align 8, !tbaa !150
  %839 = zext i8 %814 to i64
  %840 = shl nuw nsw i64 %839, 3
  %841 = icmp slt i64 %838, %840
  br i1 %841, label %842, label %851

842:                                              ; preds = %836
  %843 = tail call i32 @subreg_lsb_1(i32 noundef %0, i32 noundef %2, i32 noundef %3) #17
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %851

845:                                              ; preds = %842
  %846 = load ptr, ptr %818, align 8, !tbaa !150
  %847 = getelementptr inbounds %struct.rtx_def, ptr %846, i64 0, i32 1
  %848 = load ptr, ptr %847, align 8, !tbaa !150
  %849 = load ptr, ptr %819, align 8, !tbaa !150
  %850 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %0, ptr noundef %848, ptr noundef %849)
  br label %903

851:                                              ; preds = %824, %808, %842, %836, %829, %817, %813, %804
  %852 = load i32, ptr %1, align 8
  %853 = and i32 %852, 65535
  %854 = add nsw i32 %853, -67
  %855 = icmp ult i32 %854, 2
  br i1 %855, label %856, label %903, !prof !380

856:                                              ; preds = %851
  %857 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %858 = load i8, ptr %857, align 1, !tbaa !150
  %859 = and i8 %858, -2
  %860 = icmp eq i8 %859, 2
  br i1 %860, label %861, label %903, !prof !381

861:                                              ; preds = %856
  %862 = load i8, ptr %33, align 1, !tbaa !150
  %863 = zext i8 %862 to i32
  %864 = shl nuw nsw i32 %863, 3
  %865 = icmp ugt i8 %862, 3
  br i1 %865, label %866, label %903, !prof !382

866:                                              ; preds = %861
  %867 = load i8, ptr %41, align 1, !tbaa !150
  %868 = zext i8 %867 to i16
  %869 = shl nuw nsw i16 %868, 3
  %870 = zext nneg i16 %869 to i32
  %871 = shl nuw nsw i32 %863, 4
  %872 = icmp ugt i32 %871, %870
  br i1 %872, label %903, label %873

873:                                              ; preds = %866
  %874 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %875 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %876 = load ptr, ptr %875, align 8, !tbaa !150
  %877 = load i32, ptr %876, align 8
  %878 = and i32 %877, 65535
  %879 = icmp eq i32 %878, 30
  br i1 %879, label %880, label %903

880:                                              ; preds = %873
  %881 = getelementptr inbounds %struct.rtx_def, ptr %876, i64 0, i32 1
  %882 = load i64, ptr %881, align 8, !tbaa !150
  %883 = add nsw i32 %864, -1
  %884 = zext nneg i32 %883 to i64
  %885 = or disjoint i64 %884, -9223372036854775808
  %886 = and i64 %882, %885
  %887 = icmp eq i64 %886, 0
  %888 = zext nneg i16 %869 to i64
  %889 = icmp slt i64 %882, %888
  %890 = select i1 %887, i1 %889, i1 false
  br i1 %890, label %891, label %903

891:                                              ; preds = %880
  %892 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #17
  %893 = icmp eq i32 %892, %3
  br i1 %893, label %894, label %903

894:                                              ; preds = %891
  %895 = load ptr, ptr %875, align 8, !tbaa !150
  %896 = getelementptr inbounds %struct.rtx_def, ptr %895, i64 0, i32 1
  %897 = load i64, ptr %896, align 8, !tbaa !150
  %898 = sdiv i64 %897, 8
  %899 = trunc i64 %898 to i32
  %900 = load ptr, ptr %874, align 8, !tbaa !150
  %901 = add i32 %899, %3
  %902 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef %900, i32 noundef %2, i32 noundef %901)
  br label %903

903:                                              ; preds = %696, %564, %472, %543, %535, %856, %851, %861, %866, %873, %880, %891, %635, %598, %623, %629, %477, %448, %470, %479, %526, %506, %496, %492, %486, %482, %46, %894, %845, %798, %746, %592, %446
  %904 = phi ptr [ %447, %446 ], [ %751, %746 ], [ %803, %798 ], [ %850, %845 ], [ %902, %894 ], [ %594, %592 ], [ %1, %46 ], [ null, %477 ], [ %450, %448 ], [ null, %470 ], [ %480, %479 ], [ %488, %526 ], [ %488, %506 ], [ %488, %496 ], [ %488, %492 ], [ %488, %486 ], [ null, %482 ], [ %636, %635 ], [ null, %598 ], [ %627, %623 ], [ null, %629 ], [ null, %856 ], [ null, %851 ], [ null, %891 ], [ null, %880 ], [ null, %873 ], [ null, %866 ], [ null, %861 ], [ %544, %543 ], [ %541, %535 ], [ null, %472 ], [ %565, %564 ], [ %698, %696 ]
  ret ptr %904
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @delegitimize_mem_from_attrs(ptr noundef readonly %0) local_unnamed_addr #10 !prof !386 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 43
  br i1 %10, label %11, label %176, !prof !387

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  %15 = icmp eq ptr %14, null
  br i1 %15, label %176, label %16, !prof !388

16:                                               ; preds = %11
  %17 = load ptr, ptr %14, align 8, !tbaa !389
  %18 = icmp eq ptr %17, null
  br i1 %18, label %176, label %19, !prof !391

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !392
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !393

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %176, !prof !394

27:                                               ; preds = %23, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %28 = lshr i32 %8, 16
  %29 = and i32 %28, 255
  store i32 %29, ptr %2, align 4, !tbaa !154
  %30 = load i64, ptr %17, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %32 [
    i16 32, label %65
    i16 45, label %33
    i16 46, label %33
    i16 41, label %33
    i16 42, label %33
    i16 43, label %33
    i16 44, label %33
    i16 118, label %33
  ], !prof !395

32:                                               ; preds = %27
  br label %65

33:                                               ; preds = %27, %27, %27, %27, %27, %27, %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !tbaa !154
  %34 = call ptr @get_inner_reference(ptr noundef nonnull %17, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #17
  %35 = load i64, ptr %3, align 8, !tbaa !175
  %36 = load i32, ptr %2, align 4, !tbaa !154
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !150
  %40 = zext i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 3
  %42 = icmp eq i64 %35, %41
  br i1 %42, label %43, label %62, !prof !396

43:                                               ; preds = %33
  %44 = load i64, ptr %4, align 8, !tbaa !175
  %45 = and i64 %44, 7
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %62, !prof !397

47:                                               ; preds = %43
  %48 = load ptr, ptr %5, align 8, !tbaa !139
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !397

50:                                               ; preds = %47
  %51 = call i32 @host_integerp(ptr noundef nonnull %48, i32 noundef 0) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50, %47
  %54 = load i64, ptr %4, align 8, !tbaa !175
  %55 = sdiv i64 %54, 8
  %56 = load ptr, ptr %5, align 8, !tbaa !139
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58, !prof !397

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.tree_int_cst, ptr %56, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !150
  %61 = add i64 %60, %55
  br label %62

62:                                               ; preds = %50, %33, %43, %53, %58
  %63 = phi ptr [ %34, %58 ], [ %34, %53 ], [ null, %43 ], [ null, %33 ], [ null, %50 ]
  %64 = phi i64 [ %61, %58 ], [ %55, %53 ], [ 0, %43 ], [ 0, %33 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %65

65:                                               ; preds = %62, %27, %32
  %66 = phi ptr [ null, %32 ], [ %63, %62 ], [ %17, %27 ]
  %67 = phi i64 [ 0, %32 ], [ %64, %62 ], [ 0, %27 ]
  %68 = icmp eq ptr %66, null
  br i1 %68, label %174, label %69, !prof !398

69:                                               ; preds = %65
  %70 = load i32, ptr %2, align 4, !tbaa !154
  %71 = load i32, ptr %0, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %174, !prof !399

75:                                               ; preds = %69
  %76 = load i64, ptr %66, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 32
  br i1 %78, label %79, label %174, !prof !400

79:                                               ; preds = %75
  %80 = and i64 %76, 67108864
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87, !prof !401

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %66, i64 0, i32 4
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 49152
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %174, label %87, !prof !401

87:                                               ; preds = %82, %79
  %88 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %77, i64 11
  %89 = load i8, ptr %88, align 1, !tbaa !150
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %174, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %66, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !150
  %94 = icmp eq ptr %93, null
  br i1 %94, label %174, label %95

95:                                               ; preds = %91
  %96 = load i32, ptr %93, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 43
  br i1 %98, label %99, label %174

99:                                               ; preds = %95
  %100 = load ptr, ptr %13, align 8, !tbaa !150
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.mem_attrs, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !392
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !150
  %109 = add nsw i64 %108, %67
  br label %110

110:                                              ; preds = %102, %106, %99
  %111 = phi i64 [ %67, %99 ], [ %109, %106 ], [ %67, %102 ]
  %112 = load i32, ptr %93, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 43
  br i1 %114, label %115, label %166

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !150
  %118 = load ptr, ptr %12, align 8, !tbaa !150
  %119 = icmp eq i64 %111, 0
  br i1 %119, label %158, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %118, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 49
  br i1 %123, label %124, label %163

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %126 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !150
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  br i1 %130, label %131, label %163

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !150
  %134 = icmp eq i64 %111, %133
  br i1 %134, label %154, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %117, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 49
  br i1 %138, label %139, label %163

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %141 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !150
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 30
  br i1 %145, label %146, label %163

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !150
  %149 = add nsw i64 %148, %111
  %150 = icmp eq i64 %149, %133
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = load ptr, ptr %140, align 8, !tbaa !150
  %153 = icmp eq ptr %152, null
  br i1 %153, label %163, label %154

154:                                              ; preds = %151, %131
  %155 = phi ptr [ %117, %131 ], [ %152, %151 ]
  %156 = load ptr, ptr %125, align 8, !tbaa !150
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %154, %115
  %159 = phi ptr [ %117, %115 ], [ %155, %154 ]
  %160 = phi ptr [ %118, %115 ], [ %156, %154 ]
  %161 = call i32 @rtx_equal_p(ptr noundef %160, ptr noundef %159) #17
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %154, %151, %158, %146, %139, %135, %124, %120
  %164 = load i32, ptr %2, align 4, !tbaa !154
  %165 = call ptr @adjust_address_1(ptr noundef nonnull %93, i32 noundef %164, i64 noundef %111, i32 noundef 0, i32 noundef 1) #17
  br label %174

166:                                              ; preds = %110
  %167 = load i32, ptr %0, align 8
  %168 = xor i32 %167, %112
  %169 = and i32 %168, 16711680
  %170 = icmp eq i32 %169, 0
  %171 = icmp eq i64 %111, 0
  %172 = select i1 %170, i1 %171, i1 false
  %173 = select i1 %172, ptr %93, ptr %0
  br label %174

174:                                              ; preds = %82, %166, %163, %158, %95, %91, %87, %75, %69, %65
  %175 = phi ptr [ %0, %95 ], [ %0, %91 ], [ %0, %87 ], [ %0, %75 ], [ %0, %69 ], [ %0, %65 ], [ %0, %158 ], [ %165, %163 ], [ %173, %166 ], [ %0, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %176

176:                                              ; preds = %11, %174, %23, %16, %1
  %177 = phi ptr [ %0, %11 ], [ %175, %174 ], [ %0, %23 ], [ %0, %16 ], [ %0, %1 ]
  ret ptr %177
}

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @simplify_gen_unary(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 !prof !402 {
  %5 = tail call ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !403

7:                                                ; preds = %4
  %8 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2) #17
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 !prof !404 {
  %5 = tail call ptr @avoid_constant_pool_reference(ptr noundef %2)
  %6 = tail call ptr @simplify_const_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %959, !prof !405

8:                                                ; preds = %4
  switch i32 %0, label %958 [
    i32 64, label %9
    i32 51, label %198
    i32 100, label %494
    i32 102, label %600
    i32 101, label %709
    i32 111, label %752
    i32 114, label %802
    i32 117, label %816
    i32 118, label %844
    i32 113, label %872
    i32 103, label %879
    i32 98, label %893
    i32 99, label %938
  ], !prof !406

9:                                                ; preds = %8
  %10 = load i32, ptr %2, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %16, !prof !407

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  br label %959

16:                                               ; preds = %9
  %17 = zext nneg i32 %11 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !154
  %20 = icmp ult i32 %19, 2
  %21 = icmp eq i32 %1, 13
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %35, !prof !407

23:                                               ; preds = %16
  %24 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %2, ptr noundef null) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = tail call ptr @simplify_relational_operation(i32 noundef %24, i32 noundef 13, i32 noundef 0, ptr noundef %28, ptr noundef %30)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %959

33:                                               ; preds = %26
  %34 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %24, i32 noundef 13, ptr noundef %28, ptr noundef %30) #17
  br label %959

35:                                               ; preds = %23, %16
  %36 = load i32, ptr %2, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 49
  br i1 %38, label %39, label %51, !prof !407

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !150
  %47 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %46, i32 noundef %1)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %959

49:                                               ; preds = %44
  %50 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %46) #17
  br label %959

51:                                               ; preds = %39, %35
  %52 = trunc i32 %36 to i16
  switch i16 %52, label %70 [
    i16 51, label %53
    i16 63, label %57
  ], !prof !408

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !150
  %56 = tail call ptr @plus_constant(ptr noundef %55, i64 noundef -1) #17
  br label %959

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %59 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !150
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 30
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %60, i32 noundef %1)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %58, align 8, !tbaa !150
  %69 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %68, ptr noundef nonnull %65)
  br label %959

70:                                               ; preds = %64, %57, %51
  %71 = load i32, ptr %2, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 49
  br i1 %73, label %74, label %90, !prof !407

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %76 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !150
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 30
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %77), !range !214
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %77, i32 noundef %1)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %75, align 8, !tbaa !150
  %89 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %88, ptr noundef nonnull %85)
  br label %959

90:                                               ; preds = %84, %81, %74, %70
  %91 = load i32, ptr %2, align 8
  %92 = and i32 %91, 65535
  %93 = trunc i32 %91 to i16
  switch i16 %93, label %151 [
    i16 65, label %94
    i16 39, label %111
  ], !prof !409

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !150
  %97 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %97, i32 noundef %1)
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %97) #17
  br label %104

104:                                              ; preds = %99, %102
  %105 = phi ptr [ %103, %102 ], [ %100, %99 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !150
  %108 = tail call ptr @simplify_gen_binary(i32 noundef 66, i32 noundef %1, ptr noundef %105, ptr noundef %107)
  br label %959

109:                                              ; preds = %94
  %110 = icmp eq i32 %92, 39
  br i1 %110, label %111, label %151, !prof !407

111:                                              ; preds = %90, %109
  %112 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %151, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %2, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !150
  %121 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !150
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 16
  %125 = and i32 %124, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !150
  %129 = icmp ult i8 %120, %128
  %130 = and i32 %123, 65535
  %131 = icmp eq i32 %130, 65
  %132 = and i1 %129, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %114
  %134 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !150
  %136 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %125, ptr noundef %136, i32 noundef %125)
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %125, ptr noundef %136) #17
  br label %143

143:                                              ; preds = %138, %141
  %144 = phi ptr [ %142, %141 ], [ %139, %138 ]
  %145 = load ptr, ptr %121, align 8, !tbaa !150
  %146 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1, i32 0, i32 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !150
  %148 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %125, ptr noundef %144, ptr noundef %147) #17
  %149 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %150 = tail call ptr %149(i32 noundef %1, ptr noundef %148) #17
  br label %959

151:                                              ; preds = %90, %133, %114, %111, %109
  %152 = load i32, ptr %2, align 8
  %153 = and i32 %152, 65535
  %154 = add nsw i32 %153, -61
  %155 = icmp ult i32 %154, 2
  br i1 %155, label %156, label %958, !prof !407

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !150
  %159 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !150
  %161 = load i32, ptr %158, align 8
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  %164 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %163, ptr noundef nonnull %158, i32 noundef %163)
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %163, ptr noundef nonnull %158) #17
  br label %168

168:                                              ; preds = %156, %166
  %169 = phi ptr [ %167, %166 ], [ %164, %156 ]
  %170 = load i32, ptr %160, align 8
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i32 %1, i32 %172
  %175 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %174, ptr noundef nonnull %160, i32 noundef %174)
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %174, ptr noundef nonnull %160) #17
  br label %179

179:                                              ; preds = %168, %177
  %180 = phi ptr [ %178, %177 ], [ %175, %168 ]
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 64
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i32, ptr %169, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 64
  %188 = select i1 %187, ptr %169, ptr %180
  %189 = select i1 %187, ptr %180, ptr %169
  br label %190

190:                                              ; preds = %184, %179
  %191 = phi ptr [ %169, %179 ], [ %188, %184 ]
  %192 = phi ptr [ %180, %179 ], [ %189, %184 ]
  %193 = load i32, ptr %2, align 8
  %194 = and i32 %193, 65535
  %195 = icmp eq i32 %194, 62
  %196 = select i1 %195, i32 61, i32 62
  %197 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %196, i32 noundef %1, ptr noundef %191, ptr noundef nonnull %192) #17
  br label %959

198:                                              ; preds = %8
  %199 = load i32, ptr %2, align 8
  %200 = trunc i32 %199 to i16
  switch i16 %200, label %270 [
    i16 51, label %201
    i16 49, label %204
    i16 64, label %217
    i16 50, label %221
  ], !prof !410

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !150
  br label %959

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %206 = load ptr, ptr %205, align 8, !tbaa !150
  %207 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !150
  %212 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %211, i32 noundef %1)
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %959

214:                                              ; preds = %209
  %215 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %211) #17
  br label %959

216:                                              ; preds = %204
  switch i16 %200, label %270 [
    i16 64, label %217
    i16 50, label %221
  ], !prof !411

217:                                              ; preds = %198, %216
  %218 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !150
  %220 = tail call ptr @plus_constant(ptr noundef %219, i64 noundef 1) #17
  br label %959

221:                                              ; preds = %198, %216
  %222 = zext i32 %1 to i64
  %223 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !150
  switch i8 %224, label %264 [
    i8 8, label %225
    i8 9, label %225
    i8 11, label %225
    i8 17, label %225
  ]

225:                                              ; preds = %221, %221, %221, %221
  %226 = and i8 %224, -2
  %227 = icmp eq i8 %226, 8
  br i1 %227, label %232, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %222
  %230 = load i8, ptr %229, align 1, !tbaa !150
  %231 = zext i8 %230 to i32
  br label %232

232:                                              ; preds = %225, %228
  %233 = phi i32 [ %231, %228 ], [ %1, %225 ]
  %234 = add i32 %233, -38
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !139
  %238 = getelementptr inbounds %struct.real_format, ptr %237, i64 0, i32 14
  %239 = load i8, ptr %238, align 1, !tbaa !195
  %240 = icmp ne i8 %239, 0
  %241 = load i32, ptr @flag_signed_zeros, align 4
  %242 = icmp ne i32 %241, 0
  %243 = select i1 %240, i1 %242, i1 false
  br i1 %243, label %270, label %244

244:                                              ; preds = %232
  switch i8 %224, label %264 [
    i8 8, label %245
    i8 9, label %245
    i8 11, label %245
    i8 17, label %245
  ]

245:                                              ; preds = %244, %244, %244, %244
  %246 = and i8 %224, -2
  %247 = icmp eq i8 %246, 8
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %222
  %250 = load i8, ptr %249, align 1, !tbaa !150
  %251 = zext i8 %250 to i32
  br label %252

252:                                              ; preds = %245, %248
  %253 = phi i32 [ %251, %248 ], [ %1, %245 ]
  %254 = add i32 %253, -38
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !139
  %258 = getelementptr inbounds %struct.real_format, ptr %257, i64 0, i32 10
  %259 = load i8, ptr %258, align 1, !tbaa !216
  %260 = icmp ne i8 %259, 0
  %261 = load i32, ptr @flag_rounding_math, align 4
  %262 = icmp ne i32 %261, 0
  %263 = select i1 %260, i1 %262, i1 false
  br i1 %263, label %270, label %264

264:                                              ; preds = %244, %221, %252
  %265 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %266 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %267 = load ptr, ptr %266, align 8, !tbaa !150
  %268 = load ptr, ptr %265, align 8, !tbaa !150
  %269 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %267, ptr noundef %268)
  br label %959

270:                                              ; preds = %198, %252, %232, %216
  %271 = and i32 %199, 65535
  %272 = trunc i32 %199 to i16
  switch i16 %272, label %386 [
    i16 49, label %273
    i16 52, label %340
    i16 65, label %377
  ], !prof !412

273:                                              ; preds = %270
  %274 = zext i32 %1 to i64
  %275 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !150
  switch i8 %276, label %316 [
    i8 8, label %277
    i8 9, label %277
    i8 11, label %277
    i8 17, label %277
  ]

277:                                              ; preds = %273, %273, %273, %273
  %278 = and i8 %276, -2
  %279 = icmp eq i8 %278, 8
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %274
  %282 = load i8, ptr %281, align 1, !tbaa !150
  %283 = zext i8 %282 to i32
  br label %284

284:                                              ; preds = %277, %280
  %285 = phi i32 [ %283, %280 ], [ %1, %277 ]
  %286 = add i32 %285, -38
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !139
  %290 = getelementptr inbounds %struct.real_format, ptr %289, i64 0, i32 14
  %291 = load i8, ptr %290, align 1, !tbaa !195
  %292 = icmp ne i8 %291, 0
  %293 = load i32, ptr @flag_signed_zeros, align 4
  %294 = icmp ne i32 %293, 0
  %295 = select i1 %292, i1 %294, i1 false
  br i1 %295, label %338, label %296

296:                                              ; preds = %284
  switch i8 %276, label %316 [
    i8 8, label %297
    i8 9, label %297
    i8 11, label %297
    i8 17, label %297
  ]

297:                                              ; preds = %296, %296, %296, %296
  %298 = and i8 %276, -2
  %299 = icmp eq i8 %298, 8
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %274
  %302 = load i8, ptr %301, align 1, !tbaa !150
  %303 = zext i8 %302 to i32
  br label %304

304:                                              ; preds = %297, %300
  %305 = phi i32 [ %303, %300 ], [ %1, %297 ]
  %306 = add i32 %305, -38
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !139
  %310 = getelementptr inbounds %struct.real_format, ptr %309, i64 0, i32 10
  %311 = load i8, ptr %310, align 1, !tbaa !216
  %312 = icmp ne i8 %311, 0
  %313 = load i32, ptr @flag_rounding_math, align 4
  %314 = icmp ne i32 %313, 0
  %315 = select i1 %312, i1 %314, i1 false
  br i1 %315, label %338, label %316

316:                                              ; preds = %296, %273, %304
  %317 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %318 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %319 = load ptr, ptr %318, align 8, !tbaa !150
  %320 = load i32, ptr %319, align 8
  %321 = trunc i32 %320 to i16
  switch i16 %321, label %328 [
    i16 30, label %322
    i16 32, label %322
  ]

322:                                              ; preds = %316, %316
  %323 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %319, i32 noundef %1)
  %324 = icmp eq ptr %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = load ptr, ptr %317, align 8, !tbaa !150
  %327 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %323, ptr noundef %326)
  br label %959

328:                                              ; preds = %322, %316
  %329 = load ptr, ptr %317, align 8, !tbaa !150
  %330 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %329, i32 noundef %1)
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %329) #17
  br label %334

334:                                              ; preds = %328, %332
  %335 = phi ptr [ %333, %332 ], [ %330, %328 ]
  %336 = load ptr, ptr %318, align 8, !tbaa !150
  %337 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %335, ptr noundef %336)
  br label %959

338:                                              ; preds = %304, %284
  %339 = trunc i32 %199 to i16
  switch i16 %339, label %386 [
    i16 52, label %340
    i16 65, label %377
  ], !prof !413

340:                                              ; preds = %270, %338
  %341 = zext i32 %1 to i64
  %342 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !150
  switch i8 %343, label %363 [
    i8 8, label %344
    i8 9, label %344
    i8 11, label %344
    i8 17, label %344
  ]

344:                                              ; preds = %340, %340, %340, %340
  %345 = and i8 %343, -2
  %346 = icmp eq i8 %345, 8
  br i1 %346, label %351, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %341
  %349 = load i8, ptr %348, align 1, !tbaa !150
  %350 = zext i8 %349 to i32
  br label %351

351:                                              ; preds = %344, %347
  %352 = phi i32 [ %350, %347 ], [ %1, %344 ]
  %353 = add i32 %352, -38
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !139
  %357 = getelementptr inbounds %struct.real_format, ptr %356, i64 0, i32 10
  %358 = load i8, ptr %357, align 1, !tbaa !216
  %359 = icmp ne i8 %358, 0
  %360 = load i32, ptr @flag_rounding_math, align 4
  %361 = icmp ne i32 %360, 0
  %362 = select i1 %359, i1 %361, i1 false
  br i1 %362, label %375, label %363

363:                                              ; preds = %351, %340
  %364 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !150
  %366 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %365, i32 noundef %1)
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %370

368:                                              ; preds = %363
  %369 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %365) #17
  br label %370

370:                                              ; preds = %363, %368
  %371 = phi ptr [ %369, %368 ], [ %366, %363 ]
  %372 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !150
  %374 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %371, ptr noundef %373)
  br label %959

375:                                              ; preds = %351
  %376 = icmp eq i32 %271, 65
  br i1 %376, label %377, label %386, !prof !414

377:                                              ; preds = %270, %338, %375
  %378 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !150
  %380 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %379, i32 noundef %1)
  %381 = icmp eq ptr %380, null
  br i1 %381, label %386, label %382

382:                                              ; preds = %377
  %383 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %384 = load ptr, ptr %383, align 8, !tbaa !150
  %385 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef nonnull %380, ptr noundef %384)
  br label %959

386:                                              ; preds = %270, %338, %377, %375
  %387 = load i32, ptr %2, align 8
  %388 = and i32 %387, 65535
  %389 = trunc i32 %387 to i16
  switch i16 %389, label %449 [
    i16 67, label %390
    i16 68, label %413
    i16 63, label %436
  ], !prof !412

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %392 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %393 = load ptr, ptr %392, align 8, !tbaa !150
  %394 = load i32, ptr %393, align 8
  %395 = and i32 %394, 65535
  %396 = icmp eq i32 %395, 30
  br i1 %396, label %397, label %411

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.rtx_def, ptr %393, i64 0, i32 1
  %399 = load i64, ptr %398, align 8, !tbaa !150
  %400 = zext i32 %1 to i64
  %401 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !150
  %403 = zext i8 %402 to i32
  %404 = shl nuw nsw i32 %403, 3
  %405 = add nsw i32 %404, -1
  %406 = sext i32 %405 to i64
  %407 = icmp eq i64 %399, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %397
  %409 = load ptr, ptr %391, align 8, !tbaa !150
  %410 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %1, ptr noundef %409, ptr noundef nonnull %393)
  br label %959

411:                                              ; preds = %397, %390
  %412 = trunc i32 %387 to i16
  switch i16 %412, label %449 [
    i16 68, label %413
    i16 63, label %436
  ], !prof !413

413:                                              ; preds = %386, %411
  %414 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %415 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %416 = load ptr, ptr %415, align 8, !tbaa !150
  %417 = load i32, ptr %416, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 30
  br i1 %419, label %420, label %434

420:                                              ; preds = %413
  %421 = getelementptr inbounds %struct.rtx_def, ptr %416, i64 0, i32 1
  %422 = load i64, ptr %421, align 8, !tbaa !150
  %423 = zext i32 %1 to i64
  %424 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %423
  %425 = load i8, ptr %424, align 1, !tbaa !150
  %426 = zext i8 %425 to i32
  %427 = shl nuw nsw i32 %426, 3
  %428 = add nsw i32 %427, -1
  %429 = sext i32 %428 to i64
  %430 = icmp eq i64 %422, %429
  br i1 %430, label %431, label %434

431:                                              ; preds = %420
  %432 = load ptr, ptr %414, align 8, !tbaa !150
  %433 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %1, ptr noundef %432, ptr noundef nonnull %416)
  br label %959

434:                                              ; preds = %420, %413
  %435 = icmp eq i32 %388, 63
  br i1 %435, label %436, label %449, !prof !414

436:                                              ; preds = %386, %411, %434
  %437 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %438 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %439 = load ptr, ptr %438, align 8, !tbaa !150
  %440 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %441 = icmp eq ptr %439, %440
  br i1 %441, label %442, label %449

442:                                              ; preds = %436
  %443 = load ptr, ptr %437, align 8, !tbaa !150
  %444 = tail call i64 @nonzero_bits(ptr noundef %443, i32 noundef %1) #17
  %445 = icmp eq i64 %444, 1
  br i1 %445, label %446, label %449

446:                                              ; preds = %442
  %447 = load ptr, ptr %437, align 8, !tbaa !150
  %448 = tail call ptr @plus_constant(ptr noundef %447, i64 noundef -1) #17
  br label %959

449:                                              ; preds = %386, %411, %442, %436, %434
  %450 = load i32, ptr %2, align 8
  %451 = and i32 %450, 65535
  %452 = icmp eq i32 %451, 85
  br i1 %452, label %453, label %958, !prof !414

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %455 = load ptr, ptr %454, align 8, !tbaa !150
  %456 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %457 = icmp eq ptr %455, %456
  br i1 %457, label %458, label %958

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !150
  %461 = load i32, ptr %460, align 8
  %462 = lshr i32 %461, 16
  %463 = and i32 %462, 255
  %464 = zext nneg i32 %463 to i64
  %465 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !150
  %467 = and i8 %466, -2
  %468 = icmp eq i8 %467, 2
  br i1 %468, label %469, label %958

469:                                              ; preds = %458
  %470 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %464
  %471 = load i8, ptr %470, align 1, !tbaa !150
  %472 = zext i8 %471 to i32
  %473 = shl nuw nsw i32 %472, 3
  %474 = add nsw i32 %473, -1
  %475 = sext i32 %474 to i64
  %476 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %475) #17
  %477 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %463, ptr noundef nonnull %460, ptr noundef %476)
  %478 = icmp eq i32 %463, %1
  br i1 %478, label %959, label %479

479:                                              ; preds = %469
  %480 = zext i32 %1 to i64
  %481 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !150
  %483 = icmp ugt i8 %482, %471
  br i1 %483, label %484, label %489

484:                                              ; preds = %479
  %485 = tail call ptr @simplify_unary_operation(i32 noundef 98, i32 noundef %1, ptr noundef %477, i32 noundef %463)
  %486 = icmp eq ptr %485, null
  br i1 %486, label %487, label %959

487:                                              ; preds = %484
  %488 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 98, i32 noundef %1, ptr noundef %477) #17
  br label %959

489:                                              ; preds = %479
  %490 = tail call ptr @simplify_unary_operation(i32 noundef 100, i32 noundef %1, ptr noundef %477, i32 noundef %463)
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %959

492:                                              ; preds = %489
  %493 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 100, i32 noundef %1, ptr noundef %477) #17
  br label %959

494:                                              ; preds = %8
  %495 = zext i32 %1 to i64
  %496 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %495
  %497 = load i8, ptr %496, align 1, !tbaa !150
  %498 = icmp eq i8 %497, 3
  br i1 %498, label %958, label %499

499:                                              ; preds = %494
  %500 = load i32, ptr %2, align 8
  %501 = and i32 %500, 65534
  %502 = icmp eq i32 %501, 98
  br i1 %502, label %503, label %510

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !150
  %506 = load i32, ptr %505, align 8
  %507 = lshr i32 %506, 16
  %508 = and i32 %507, 255
  %509 = icmp eq i32 %508, %1
  br i1 %509, label %959, label %510

510:                                              ; preds = %503, %499
  %511 = trunc i32 %500 to i16
  switch i16 %511, label %531 [
    i16 111, label %512
    i16 51, label %512
  ]

512:                                              ; preds = %510, %510
  %513 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !150
  %515 = load i32, ptr %514, align 8
  %516 = and i32 %515, 65534
  %517 = icmp eq i32 %516, 98
  br i1 %517, label %518, label %531

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct.rtx_def, ptr %514, i64 0, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !150
  %521 = load i32, ptr %520, align 8
  %522 = lshr i32 %521, 16
  %523 = and i32 %522, 255
  %524 = icmp eq i32 %523, %1
  br i1 %524, label %525, label %531

525:                                              ; preds = %518
  %526 = and i32 %500, 65535
  %527 = tail call ptr @simplify_unary_operation(i32 noundef %526, i32 noundef %1, ptr noundef nonnull %520, i32 noundef %1)
  %528 = icmp eq ptr %527, null
  br i1 %528, label %529, label %959

529:                                              ; preds = %525
  %530 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %526, i32 noundef %1, ptr noundef nonnull %520) #17
  br label %959

531:                                              ; preds = %512, %518, %510
  %532 = and i32 %500, 65535
  %533 = icmp eq i32 %532, 39
  br i1 %533, label %534, label %554

534:                                              ; preds = %531
  %535 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !150
  %537 = load i32, ptr %536, align 8
  %538 = and i32 %537, 65535
  %539 = icmp eq i32 %538, 100
  br i1 %539, label %540, label %554

540:                                              ; preds = %534
  %541 = tail call i32 @subreg_lowpart_p(ptr noundef %2) #17
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %554, label %543

543:                                              ; preds = %540
  %544 = load ptr, ptr %535, align 8, !tbaa !150
  %545 = getelementptr inbounds %struct.rtx_def, ptr %544, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !150
  %547 = load i32, ptr %546, align 8
  %548 = lshr i32 %547, 16
  %549 = and i32 %548, 255
  %550 = tail call ptr @simplify_unary_operation(i32 noundef 100, i32 noundef %1, ptr noundef nonnull %546, i32 noundef %549)
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %959

552:                                              ; preds = %543
  %553 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 100, i32 noundef %1, ptr noundef nonnull %546) #17
  br label %959

554:                                              ; preds = %540, %534, %531
  %555 = load i32, ptr %2, align 8
  %556 = lshr i32 %555, 16
  %557 = and i32 %556, 255
  %558 = tail call i32 @num_sign_bit_copies(ptr noundef %2, i32 noundef %557) #17
  %559 = load i32, ptr %2, align 8
  %560 = lshr i32 %559, 16
  %561 = and i32 %560, 255
  %562 = zext nneg i32 %561 to i64
  %563 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %562
  %564 = load i8, ptr %563, align 1, !tbaa !150
  %565 = zext i8 %564 to i32
  %566 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %495
  %567 = load i8, ptr %566, align 1, !tbaa !150
  %568 = zext i8 %567 to i32
  %569 = sub nsw i32 %565, %568
  %570 = shl nsw i32 %569, 3
  %571 = icmp ugt i32 %558, %570
  br i1 %571, label %572, label %584

572:                                              ; preds = %554
  %573 = and i32 %559, 65535
  %574 = icmp eq i32 %573, 68
  br i1 %574, label %575, label %581

575:                                              ; preds = %572
  %576 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %577 = load ptr, ptr %576, align 8, !tbaa !150
  %578 = load i32, ptr %577, align 8
  %579 = and i32 %578, 65535
  %580 = icmp eq i32 %579, 52
  br i1 %580, label %584, label %581

581:                                              ; preds = %575, %572
  %582 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %583 = tail call ptr %582(i32 noundef %1, ptr noundef %2) #17
  br label %959

584:                                              ; preds = %575, %554
  %585 = icmp ult i8 %567, 9
  br i1 %585, label %586, label %958

586:                                              ; preds = %584
  %587 = and i32 %559, 65535
  %588 = zext nneg i32 %587 to i64
  %589 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %588
  %590 = load i32, ptr %589, align 4, !tbaa !154
  %591 = icmp ult i32 %590, 2
  br i1 %591, label %592, label %958

592:                                              ; preds = %586
  %593 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %495
  %594 = load i64, ptr %593, align 8, !tbaa !175
  %595 = and i64 %594, 1
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %958, label %597

597:                                              ; preds = %592
  %598 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %599 = tail call ptr %598(i32 noundef %1, ptr noundef %2) #17
  br label %959

600:                                              ; preds = %8
  %601 = zext i32 %1 to i64
  %602 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %601
  %603 = load i8, ptr %602, align 1, !tbaa !150
  %604 = icmp eq i8 %603, 9
  br i1 %604, label %958, label %605

605:                                              ; preds = %600
  %606 = load i32, ptr %2, align 8
  %607 = and i32 %606, 65535
  %608 = icmp eq i32 %607, 101
  br i1 %608, label %609, label %616

609:                                              ; preds = %605
  %610 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %611 = load ptr, ptr %610, align 8, !tbaa !150
  %612 = load i32, ptr %611, align 8
  %613 = lshr i32 %612, 16
  %614 = and i32 %613, 255
  %615 = icmp eq i32 %614, %1
  br i1 %615, label %959, label %616

616:                                              ; preds = %609, %605
  %617 = icmp eq i32 %607, 102
  %618 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %619 = icmp ne i32 %618, 0
  %620 = select i1 %617, i1 %619, i1 false
  %621 = or i1 %608, %620
  br i1 %621, label %622, label %639

622:                                              ; preds = %616
  %623 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !150
  %625 = load i32, ptr %624, align 8
  %626 = lshr i32 %625, 16
  %627 = and i32 %626, 255
  %628 = zext nneg i32 %627 to i64
  %629 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %628
  %630 = load i8, ptr %629, align 1, !tbaa !150
  %631 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %601
  %632 = load i8, ptr %631, align 1, !tbaa !150
  %633 = icmp ugt i8 %630, %632
  %634 = select i1 %633, i32 102, i32 101
  %635 = tail call ptr @simplify_unary_operation(i32 noundef %634, i32 noundef %1, ptr noundef nonnull %624, i32 noundef %1)
  %636 = icmp eq ptr %635, null
  br i1 %636, label %637, label %959

637:                                              ; preds = %622
  %638 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %634, i32 noundef %1, ptr noundef nonnull %624) #17
  br label %959

639:                                              ; preds = %616
  %640 = icmp eq i32 %607, 103
  br i1 %640, label %641, label %675

641:                                              ; preds = %639
  br i1 %619, label %665, label %642

642:                                              ; preds = %641
  %643 = lshr i32 %606, 16
  %644 = and i32 %643, 255
  %645 = zext nneg i32 %644 to i64
  %646 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %645
  %647 = load i8, ptr %646, align 1, !tbaa !150
  %648 = and i8 %647, -2
  %649 = icmp eq i8 %648, 8
  br i1 %649, label %650, label %675

650:                                              ; preds = %642
  %651 = tail call i32 @significand_size(i32 noundef %644) #17
  %652 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %653 = load ptr, ptr %652, align 8, !tbaa !150
  %654 = load i32, ptr %653, align 8
  %655 = lshr i32 %654, 16
  %656 = and i32 %655, 255
  %657 = zext nneg i32 %656 to i64
  %658 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %657
  %659 = load i8, ptr %658, align 1, !tbaa !150
  %660 = zext i8 %659 to i32
  %661 = shl nuw nsw i32 %660, 3
  %662 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %653, i32 noundef %656) #17
  %663 = sub i32 %661, %662
  %664 = icmp ult i32 %651, %663
  br i1 %664, label %675, label %665

665:                                              ; preds = %650, %641
  %666 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %667 = load ptr, ptr %666, align 8, !tbaa !150
  %668 = load i32, ptr %667, align 8
  %669 = lshr i32 %668, 16
  %670 = and i32 %669, 255
  %671 = tail call ptr @simplify_unary_operation(i32 noundef 103, i32 noundef %1, ptr noundef nonnull %667, i32 noundef %670)
  %672 = icmp eq ptr %671, null
  br i1 %672, label %673, label %959

673:                                              ; preds = %665
  %674 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 103, i32 noundef %1, ptr noundef nonnull %667) #17
  br label %959

675:                                              ; preds = %650, %642, %639
  %676 = load i32, ptr %2, align 8
  %677 = trunc i32 %676 to i16
  switch i16 %677, label %697 [
    i16 111, label %678
    i16 51, label %678
  ]

678:                                              ; preds = %675, %675
  %679 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !150
  %681 = load i32, ptr %680, align 8
  %682 = and i32 %681, 65535
  %683 = icmp eq i32 %682, 101
  br i1 %683, label %684, label %697

684:                                              ; preds = %678
  %685 = getelementptr inbounds %struct.rtx_def, ptr %680, i64 0, i32 1
  %686 = load ptr, ptr %685, align 8, !tbaa !150
  %687 = load i32, ptr %686, align 8
  %688 = lshr i32 %687, 16
  %689 = and i32 %688, 255
  %690 = icmp eq i32 %689, %1
  br i1 %690, label %691, label %697

691:                                              ; preds = %684
  %692 = and i32 %676, 65535
  %693 = tail call ptr @simplify_unary_operation(i32 noundef %692, i32 noundef %1, ptr noundef nonnull %686, i32 noundef %1)
  %694 = icmp eq ptr %693, null
  br i1 %694, label %695, label %959

695:                                              ; preds = %691
  %696 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %692, i32 noundef %1, ptr noundef nonnull %686) #17
  br label %959

697:                                              ; preds = %678, %684, %675
  %698 = and i32 %676, 65535
  %699 = icmp eq i32 %698, 39
  br i1 %699, label %700, label %958

700:                                              ; preds = %697
  %701 = tail call i32 @subreg_lowpart_p(ptr noundef %2) #17
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %958, label %703

703:                                              ; preds = %700
  %704 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !150
  %706 = load i32, ptr %705, align 8
  %707 = and i32 %706, 65535
  %708 = icmp eq i32 %707, 102
  br i1 %708, label %959, label %958

709:                                              ; preds = %8
  %710 = zext i32 %1 to i64
  %711 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %710
  %712 = load i8, ptr %711, align 1, !tbaa !150
  %713 = icmp eq i8 %712, 9
  br i1 %713, label %958, label %714

714:                                              ; preds = %709
  %715 = load i32, ptr %2, align 8
  %716 = trunc i32 %715 to i16
  switch i16 %716, label %958 [
    i16 101, label %740
    i16 103, label %717
  ]

717:                                              ; preds = %714
  %718 = lshr i32 %715, 16
  %719 = and i32 %718, 255
  %720 = zext nneg i32 %719 to i64
  %721 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %720
  %722 = load i8, ptr %721, align 1, !tbaa !150
  %723 = and i8 %722, -2
  %724 = icmp eq i8 %723, 8
  br i1 %724, label %725, label %958

725:                                              ; preds = %717
  %726 = tail call i32 @significand_size(i32 noundef %719) #17
  %727 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %728 = load ptr, ptr %727, align 8, !tbaa !150
  %729 = load i32, ptr %728, align 8
  %730 = lshr i32 %729, 16
  %731 = and i32 %730, 255
  %732 = zext nneg i32 %731 to i64
  %733 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %732
  %734 = load i8, ptr %733, align 1, !tbaa !150
  %735 = zext i8 %734 to i32
  %736 = shl nuw nsw i32 %735, 3
  %737 = tail call i32 @num_sign_bit_copies(ptr noundef nonnull %728, i32 noundef %731) #17
  %738 = sub i32 %736, %737
  %739 = icmp ult i32 %726, %738
  br i1 %739, label %958, label %740

740:                                              ; preds = %725, %714
  %741 = load i32, ptr %2, align 8
  %742 = and i32 %741, 65535
  %743 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %744 = load ptr, ptr %743, align 8, !tbaa !150
  %745 = load i32, ptr %744, align 8
  %746 = lshr i32 %745, 16
  %747 = and i32 %746, 255
  %748 = tail call ptr @simplify_unary_operation(i32 noundef %742, i32 noundef %1, ptr noundef nonnull %744, i32 noundef %747)
  %749 = icmp eq ptr %748, null
  br i1 %749, label %750, label %959

750:                                              ; preds = %740
  %751 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %742, i32 noundef %1, ptr noundef nonnull %744) #17
  br label %959

752:                                              ; preds = %8
  %753 = load i32, ptr %2, align 8
  %754 = and i32 %753, 65535
  %755 = icmp eq i32 %754, 51
  br i1 %755, label %756, label %766

756:                                              ; preds = %752
  %757 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !150
  %759 = load i32, ptr %758, align 8
  %760 = lshr i32 %759, 16
  %761 = and i32 %760, 255
  %762 = tail call ptr @simplify_unary_operation(i32 noundef 111, i32 noundef %1, ptr noundef nonnull %758, i32 noundef %761)
  %763 = icmp eq ptr %762, null
  br i1 %763, label %764, label %959

764:                                              ; preds = %756
  %765 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %1, ptr noundef nonnull %758) #17
  br label %959

766:                                              ; preds = %752
  %767 = lshr i32 %753, 16
  %768 = and i32 %767, 255
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %958, label %770

770:                                              ; preds = %766
  %771 = trunc i32 %753 to i16
  switch i16 %771, label %772 [
    i16 114, label %959
    i16 111, label %959
  ]

772:                                              ; preds = %770
  %773 = zext nneg i32 %768 to i64
  %774 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !150
  %776 = icmp ult i8 %775, 9
  br i1 %776, label %777, label %792

777:                                              ; preds = %772
  %778 = tail call i64 @nonzero_bits(ptr noundef %2, i32 noundef %768) #17
  %779 = load i32, ptr %2, align 8
  %780 = lshr i32 %779, 16
  %781 = and i32 %780, 255
  %782 = zext nneg i32 %781 to i64
  %783 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %782
  %784 = load i8, ptr %783, align 1, !tbaa !150
  %785 = zext i8 %784 to i64
  %786 = shl nuw nsw i64 %785, 3
  %787 = add nuw nsw i64 %786, 4294967295
  %788 = and i64 %787, 4294967295
  %789 = shl nuw i64 1, %788
  %790 = and i64 %789, %778
  %791 = icmp eq i64 %790, 0
  br i1 %791, label %959, label %792

792:                                              ; preds = %777, %772
  %793 = tail call i32 @num_sign_bit_copies(ptr noundef %2, i32 noundef %1) #17
  %794 = zext i32 %1 to i64
  %795 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %794
  %796 = load i8, ptr %795, align 1, !tbaa !150
  %797 = zext i8 %796 to i32
  %798 = shl nuw nsw i32 %797, 3
  %799 = icmp eq i32 %793, %798
  br i1 %799, label %800, label %958

800:                                              ; preds = %792
  %801 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %2) #17
  br label %959

802:                                              ; preds = %8
  %803 = load i32, ptr %2, align 8
  %804 = and i32 %803, 65534
  %805 = icmp eq i32 %804, 98
  br i1 %805, label %806, label %958

806:                                              ; preds = %802
  %807 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %808 = load ptr, ptr %807, align 8, !tbaa !150
  %809 = load i32, ptr %808, align 8
  %810 = lshr i32 %809, 16
  %811 = and i32 %810, 255
  %812 = tail call ptr @simplify_unary_operation(i32 noundef 114, i32 noundef %1, ptr noundef nonnull %808, i32 noundef %811)
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %959

814:                                              ; preds = %806
  %815 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 114, i32 noundef %1, ptr noundef nonnull %808) #17
  br label %959

816:                                              ; preds = %8
  %817 = load i32, ptr %2, align 8
  %818 = trunc i32 %817 to i16
  switch i16 %818, label %958 [
    i16 113, label %819
    i16 99, label %819
    i16 66, label %829
    i16 69, label %829
  ]

819:                                              ; preds = %816, %816
  %820 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %821 = load ptr, ptr %820, align 8, !tbaa !150
  %822 = load i32, ptr %821, align 8
  %823 = lshr i32 %822, 16
  %824 = and i32 %823, 255
  %825 = tail call ptr @simplify_unary_operation(i32 noundef 117, i32 noundef %1, ptr noundef nonnull %821, i32 noundef %824)
  %826 = icmp eq ptr %825, null
  br i1 %826, label %827, label %959

827:                                              ; preds = %819
  %828 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 117, i32 noundef %1, ptr noundef nonnull %821) #17
  br label %959

829:                                              ; preds = %816, %816
  %830 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %831 = load ptr, ptr %830, align 8, !tbaa !150
  %832 = tail call i32 @side_effects_p(ptr noundef %831) #17
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %958

834:                                              ; preds = %829
  %835 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %836 = load ptr, ptr %835, align 8, !tbaa !150
  %837 = load i32, ptr %836, align 8
  %838 = lshr i32 %837, 16
  %839 = and i32 %838, 255
  %840 = tail call ptr @simplify_unary_operation(i32 noundef 117, i32 noundef %1, ptr noundef nonnull %836, i32 noundef %839)
  %841 = icmp eq ptr %840, null
  br i1 %841, label %842, label %959

842:                                              ; preds = %834
  %843 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 117, i32 noundef %1, ptr noundef nonnull %836) #17
  br label %959

844:                                              ; preds = %8
  %845 = load i32, ptr %2, align 8
  %846 = trunc i32 %845 to i16
  switch i16 %846, label %958 [
    i16 64, label %847
    i16 113, label %847
    i16 99, label %847
    i16 98, label %847
    i16 66, label %857
    i16 69, label %857
  ]

847:                                              ; preds = %844, %844, %844, %844
  %848 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %849 = load ptr, ptr %848, align 8, !tbaa !150
  %850 = load i32, ptr %849, align 8
  %851 = lshr i32 %850, 16
  %852 = and i32 %851, 255
  %853 = tail call ptr @simplify_unary_operation(i32 noundef 118, i32 noundef %1, ptr noundef nonnull %849, i32 noundef %852)
  %854 = icmp eq ptr %853, null
  br i1 %854, label %855, label %959

855:                                              ; preds = %847
  %856 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 118, i32 noundef %1, ptr noundef nonnull %849) #17
  br label %959

857:                                              ; preds = %844, %844
  %858 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %859 = load ptr, ptr %858, align 8, !tbaa !150
  %860 = tail call i32 @side_effects_p(ptr noundef %859) #17
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %958

862:                                              ; preds = %857
  %863 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %864 = load ptr, ptr %863, align 8, !tbaa !150
  %865 = load i32, ptr %864, align 8
  %866 = lshr i32 %865, 16
  %867 = and i32 %866, 255
  %868 = tail call ptr @simplify_unary_operation(i32 noundef 118, i32 noundef %1, ptr noundef nonnull %864, i32 noundef %867)
  %869 = icmp eq ptr %868, null
  br i1 %869, label %870, label %959

870:                                              ; preds = %862
  %871 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 118, i32 noundef %1, ptr noundef nonnull %864) #17
  br label %959

872:                                              ; preds = %8
  %873 = load i32, ptr %2, align 8
  %874 = and i32 %873, 65535
  %875 = icmp eq i32 %874, 113
  br i1 %875, label %876, label %958

876:                                              ; preds = %872
  %877 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %878 = load ptr, ptr %877, align 8, !tbaa !150
  br label %959

879:                                              ; preds = %8
  %880 = load i32, ptr %2, align 8
  %881 = and i32 %880, 65535
  %882 = icmp eq i32 %881, 98
  br i1 %882, label %883, label %958

883:                                              ; preds = %879
  %884 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %885 = load ptr, ptr %884, align 8, !tbaa !150
  %886 = load i32, ptr %885, align 8
  %887 = lshr i32 %886, 16
  %888 = and i32 %887, 255
  %889 = tail call ptr @simplify_unary_operation(i32 noundef 103, i32 noundef %1, ptr noundef nonnull %885, i32 noundef %888)
  %890 = icmp eq ptr %889, null
  br i1 %890, label %891, label %959

891:                                              ; preds = %883
  %892 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 103, i32 noundef %1, ptr noundef nonnull %885) #17
  br label %959

893:                                              ; preds = %8
  %894 = load i32, ptr %2, align 8
  %895 = and i32 %894, 65535
  %896 = icmp eq i32 %895, 100
  br i1 %896, label %897, label %919

897:                                              ; preds = %893
  %898 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %899 = load ptr, ptr %898, align 8, !tbaa !150
  %900 = load i32, ptr %899, align 8
  %901 = lshr i32 %900, 16
  %902 = and i32 %901, 255
  %903 = icmp eq i32 %902, %1
  %904 = and i32 %900, 65535
  %905 = icmp eq i32 %904, 50
  %906 = and i1 %905, %903
  br i1 %906, label %907, label %919

907:                                              ; preds = %897
  %908 = getelementptr inbounds %struct.rtx_def, ptr %899, i64 0, i32 1
  %909 = load ptr, ptr %908, align 8, !tbaa !150
  %910 = load i32, ptr %909, align 8
  %911 = and i32 %910, 65535
  %912 = icmp eq i32 %911, 44
  br i1 %912, label %913, label %919

913:                                              ; preds = %907
  %914 = getelementptr inbounds %struct.rtx_def, ptr %899, i64 0, i32 1, i32 0, i32 0, i64 1
  %915 = load ptr, ptr %914, align 8, !tbaa !150
  %916 = load i32, ptr %915, align 8
  %917 = and i32 %916, 65535
  %918 = icmp eq i32 %917, 44
  br i1 %918, label %959, label %919

919:                                              ; preds = %913, %907, %897, %893
  %920 = and i32 %894, 469827583
  %921 = icmp eq i32 %920, 268435495
  br i1 %921, label %922, label %958

922:                                              ; preds = %919
  %923 = zext i32 %1 to i64
  %924 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %923
  %925 = load i8, ptr %924, align 1, !tbaa !150
  %926 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %927 = load ptr, ptr %926, align 8, !tbaa !150
  %928 = load i32, ptr %927, align 8
  %929 = lshr i32 %928, 16
  %930 = and i32 %929, 255
  %931 = zext nneg i32 %930 to i64
  %932 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %931
  %933 = load i8, ptr %932, align 1, !tbaa !150
  %934 = icmp ugt i8 %925, %933
  br i1 %934, label %958, label %935

935:                                              ; preds = %922
  %936 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %937 = tail call ptr %936(i32 noundef %1, ptr noundef %2) #17
  br label %959

938:                                              ; preds = %8
  %939 = load i32, ptr %2, align 8
  %940 = and i32 %939, 469827583
  %941 = icmp eq i32 %940, 335544359
  br i1 %941, label %942, label %958, !prof !415

942:                                              ; preds = %938
  %943 = zext i32 %1 to i64
  %944 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %943
  %945 = load i8, ptr %944, align 1, !tbaa !150
  %946 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %947 = load ptr, ptr %946, align 8, !tbaa !150
  %948 = load i32, ptr %947, align 8
  %949 = lshr i32 %948, 16
  %950 = and i32 %949, 255
  %951 = zext nneg i32 %950 to i64
  %952 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %951
  %953 = load i8, ptr %952, align 1, !tbaa !150
  %954 = icmp ugt i8 %945, %953
  br i1 %954, label %958, label %955

955:                                              ; preds = %942
  %956 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %957 = tail call ptr %956(i32 noundef %1, ptr noundef %2) #17
  br label %959

958:                                              ; preds = %857, %844, %816, %703, %584, %942, %938, %922, %919, %879, %872, %829, %802, %792, %766, %725, %717, %714, %709, %700, %697, %600, %592, %586, %494, %458, %453, %449, %151, %8
  br label %959

959:                                              ; preds = %777, %770, %740, %958, %955, %935, %913, %876, %800, %770, %703, %609, %597, %581, %503, %469, %446, %431, %408, %382, %370, %334, %325, %264, %217, %201, %190, %143, %104, %87, %67, %53, %13, %26, %33, %44, %49, %209, %214, %484, %487, %489, %492, %525, %529, %543, %552, %622, %637, %665, %673, %691, %695, %750, %756, %764, %806, %814, %819, %827, %834, %842, %847, %855, %862, %870, %883, %891, %4
  %960 = phi ptr [ %6, %4 ], [ null, %958 ], [ %957, %955 ], [ %937, %935 ], [ %878, %876 ], [ %801, %800 ], [ %599, %597 ], [ %583, %581 ], [ %203, %201 ], [ %220, %217 ], [ %385, %382 ], [ %410, %408 ], [ %433, %431 ], [ %448, %446 ], [ %374, %370 ], [ %327, %325 ], [ %337, %334 ], [ %269, %264 ], [ %15, %13 ], [ %56, %53 ], [ %69, %67 ], [ %89, %87 ], [ %108, %104 ], [ %150, %143 ], [ %197, %190 ], [ %477, %469 ], [ %505, %503 ], [ %611, %609 ], [ %705, %703 ], [ %2, %770 ], [ %899, %913 ], [ %34, %33 ], [ %31, %26 ], [ %50, %49 ], [ %47, %44 ], [ %215, %214 ], [ %212, %209 ], [ %488, %487 ], [ %485, %484 ], [ %493, %492 ], [ %490, %489 ], [ %530, %529 ], [ %527, %525 ], [ %553, %552 ], [ %550, %543 ], [ %638, %637 ], [ %635, %622 ], [ %674, %673 ], [ %671, %665 ], [ %696, %695 ], [ %693, %691 ], [ %751, %750 ], [ %765, %764 ], [ %762, %756 ], [ %815, %814 ], [ %812, %806 ], [ %828, %827 ], [ %825, %819 ], [ %843, %842 ], [ %840, %834 ], [ %856, %855 ], [ %853, %847 ], [ %871, %870 ], [ %868, %862 ], [ %892, %891 ], [ %889, %883 ], [ %748, %740 ], [ %2, %770 ], [ %2, %777 ]
  ret ptr %960
}

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @simplify_gen_ternary(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !prof !138 {
  %7 = tail call ptr @simplify_ternary_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  ret ptr %12
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_ternary_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 !prof !416 {
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !150
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = icmp eq i8 %9, 0
  %13 = select i1 %12, i32 64, i32 %11, !prof !417
  switch i32 %0, label %381 [
    i32 119, label %14
    i32 120, label %14
    i32 47, label %71
    i32 123, label %304
  ], !prof !418

14:                                               ; preds = %6, %6
  %15 = load i32, ptr %3, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %18, label %382, !prof !419

18:                                               ; preds = %14
  %19 = load i32, ptr %4, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %382, !prof !420

22:                                               ; preds = %18
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %382, !prof !421

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !150
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !150
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, %29
  %34 = icmp ule i32 %33, %13
  %35 = icmp ult i32 %13, 65
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %382

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !150
  %40 = ashr i64 %39, %31
  %41 = icmp eq i64 %28, 64
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  %43 = shl nsw i64 -1, %28
  %44 = xor i64 %43, -1
  %45 = and i64 %40, %44
  %46 = icmp eq i32 %0, 119
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = add nsw i64 %28, -1
  %49 = shl nuw nsw i64 1, %48
  %50 = and i64 %45, %49
  %51 = icmp eq i64 %50, 0
  %52 = or i64 %40, %43
  %53 = select i1 %51, i64 %45, i64 %52
  br label %54

54:                                               ; preds = %47, %42, %37
  %55 = phi i64 [ %45, %42 ], [ %40, %37 ], [ %53, %47 ]
  %56 = icmp ult i32 %13, 64
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = add nsw i32 %13, -1
  %59 = zext nneg i32 %58 to i64
  %60 = shl nsw i64 -1, %59
  %61 = and i64 %55, %60
  %62 = icmp eq i64 %61, %60
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = zext nneg i32 %13 to i64
  %65 = shl nsw i64 -1, %64
  %66 = xor i64 %65, -1
  %67 = and i64 %55, %66
  br label %68

68:                                               ; preds = %63, %57, %54
  %69 = phi i64 [ %67, %63 ], [ %55, %57 ], [ %55, %54 ]
  %70 = tail call ptr @gen_int_mode(i64 noundef %69, i32 noundef %1) #17
  br label %383

71:                                               ; preds = %6
  %72 = load i32, ptr %3, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 30
  br i1 %74, label %75, label %79, !prof !422

75:                                               ; preds = %71
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %77 = icmp eq ptr %76, %3
  %78 = select i1 %77, ptr %5, ptr %4, !prof !423
  br label %383

79:                                               ; preds = %71
  %80 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #17
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82, !prof !424

82:                                               ; preds = %79
  %83 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %383, label %85

85:                                               ; preds = %82, %79
  %86 = load i32, ptr %3, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 80
  br i1 %88, label %89, label %153, !prof !425

89:                                               ; preds = %85
  %90 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %153, !prof !426

92:                                               ; preds = %89
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %94 = load i8, ptr %93, align 1, !tbaa !150
  switch i8 %94, label %134 [
    i8 8, label %95
    i8 9, label %95
    i8 11, label %95
    i8 17, label %95
  ], !prof !427

95:                                               ; preds = %92, %92, %92, %92
  %96 = and i8 %94, -2
  %97 = icmp eq i8 %96, 8
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %100 = load i8, ptr %99, align 1, !tbaa !150
  %101 = zext i8 %100 to i32
  br label %102

102:                                              ; preds = %95, %98
  %103 = phi i32 [ %101, %98 ], [ %1, %95 ]
  %104 = add i32 %103, -38
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !139
  %108 = getelementptr inbounds %struct.real_format, ptr %107, i64 0, i32 11
  %109 = load i8, ptr %108, align 2, !tbaa !178
  %110 = icmp eq i8 %109, 0
  %111 = load i32, ptr @flag_finite_math_only, align 4
  %112 = icmp ne i32 %111, 0
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %102
  switch i8 %94, label %134 [
    i8 8, label %115
    i8 9, label %115
    i8 11, label %115
    i8 17, label %115
  ], !prof !428

115:                                              ; preds = %114, %114, %114, %114
  %116 = and i8 %94, -2
  %117 = icmp eq i8 %116, 8
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %120 = load i8, ptr %119, align 1, !tbaa !150
  %121 = zext i8 %120 to i32
  br label %122

122:                                              ; preds = %115, %118
  %123 = phi i32 [ %121, %118 ], [ %1, %115 ]
  %124 = add i32 %123, -38
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !139
  %128 = getelementptr inbounds %struct.real_format, ptr %127, i64 0, i32 14
  %129 = load i8, ptr %128, align 1, !tbaa !195
  %130 = icmp ne i8 %129, 0
  %131 = load i32, ptr @flag_signed_zeros, align 4
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %153, label %134

134:                                              ; preds = %114, %92, %122
  %135 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !150
  %137 = tail call i32 @rtx_equal_p(ptr noundef %136, ptr noundef %4) #17
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139, !prof !426

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !150
  %142 = tail call i32 @rtx_equal_p(ptr noundef %141, ptr noundef %5) #17
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %383

144:                                              ; preds = %139, %134
  %145 = load ptr, ptr %135, align 8, !tbaa !150
  %146 = tail call i32 @rtx_equal_p(ptr noundef %145, ptr noundef %5) #17
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148, !prof !426

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !150
  %151 = tail call i32 @rtx_equal_p(ptr noundef %150, ptr noundef %4) #17
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %383

153:                                              ; preds = %148, %144, %122, %102, %89, %85
  %154 = load i32, ptr %3, align 8
  %155 = and i32 %154, 65535
  %156 = icmp eq i32 %155, 81
  br i1 %156, label %157, label %221, !prof !429

157:                                              ; preds = %153
  %158 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %221, !prof !430

160:                                              ; preds = %157
  %161 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %162 = load i8, ptr %161, align 1, !tbaa !150
  switch i8 %162, label %202 [
    i8 8, label %163
    i8 9, label %163
    i8 11, label %163
    i8 17, label %163
  ], !prof !431

163:                                              ; preds = %160, %160, %160, %160
  %164 = and i8 %162, -2
  %165 = icmp eq i8 %164, 8
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %168 = load i8, ptr %167, align 1, !tbaa !150
  %169 = zext i8 %168 to i32
  br label %170

170:                                              ; preds = %163, %166
  %171 = phi i32 [ %169, %166 ], [ %1, %163 ]
  %172 = add i32 %171, -38
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !139
  %176 = getelementptr inbounds %struct.real_format, ptr %175, i64 0, i32 11
  %177 = load i8, ptr %176, align 2, !tbaa !178
  %178 = icmp eq i8 %177, 0
  %179 = load i32, ptr @flag_finite_math_only, align 4
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %178, i1 true, i1 %180
  br i1 %181, label %182, label %221

182:                                              ; preds = %170
  switch i8 %162, label %202 [
    i8 8, label %183
    i8 9, label %183
    i8 11, label %183
    i8 17, label %183
  ], !prof !432

183:                                              ; preds = %182, %182, %182, %182
  %184 = and i8 %162, -2
  %185 = icmp eq i8 %184, 8
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %188 = load i8, ptr %187, align 1, !tbaa !150
  %189 = zext i8 %188 to i32
  br label %190

190:                                              ; preds = %183, %186
  %191 = phi i32 [ %189, %186 ], [ %1, %183 ]
  %192 = add i32 %191, -38
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !139
  %196 = getelementptr inbounds %struct.real_format, ptr %195, i64 0, i32 14
  %197 = load i8, ptr %196, align 1, !tbaa !195
  %198 = icmp ne i8 %197, 0
  %199 = load i32, ptr @flag_signed_zeros, align 4
  %200 = icmp ne i32 %199, 0
  %201 = select i1 %198, i1 %200, i1 false
  br i1 %201, label %221, label %202

202:                                              ; preds = %182, %160, %190
  %203 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !150
  %205 = tail call i32 @rtx_equal_p(ptr noundef %204, ptr noundef %4) #17
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %212, label %207, !prof !430

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !150
  %210 = tail call i32 @rtx_equal_p(ptr noundef %209, ptr noundef %5) #17
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %383

212:                                              ; preds = %207, %202
  %213 = load ptr, ptr %203, align 8, !tbaa !150
  %214 = tail call i32 @rtx_equal_p(ptr noundef %213, ptr noundef %5) #17
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %221, label %216, !prof !430

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !150
  %219 = tail call i32 @rtx_equal_p(ptr noundef %218, ptr noundef %4) #17
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %383

221:                                              ; preds = %216, %212, %190, %170, %157, %153
  %222 = load i32, ptr %3, align 8
  %223 = and i32 %222, 65535
  %224 = zext nneg i32 %223 to i64
  %225 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !154
  %227 = icmp ult i32 %226, 2
  br i1 %227, label %228, label %382, !prof !433

228:                                              ; preds = %221
  %229 = tail call i32 @side_effects_p(ptr noundef nonnull %3) #17
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %382, !prof !434

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !150
  %234 = load i32, ptr %233, align 8
  %235 = lshr i32 %234, 16
  %236 = and i32 %235, 255
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %244, !prof !435

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !150
  %241 = load i32, ptr %240, align 8
  %242 = lshr i32 %241, 16
  %243 = and i32 %242, 255
  br label %244

244:                                              ; preds = %231, %238
  %245 = phi i32 [ %243, %238 ], [ %236, %231 ]
  %246 = load i32, ptr %4, align 8
  %247 = and i32 %246, 65535
  %248 = icmp eq i32 %247, 30
  br i1 %248, label %249, label %282, !prof !436

249:                                              ; preds = %244
  %250 = load i32, ptr %5, align 8
  %251 = and i32 %250, 65535
  %252 = icmp eq i32 %251, 30
  br i1 %252, label %253, label %282, !prof !437

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %255 = load i64, ptr %254, align 8, !tbaa !150
  %256 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %257 = load i64, ptr %256, align 8, !tbaa !150
  %258 = icmp eq i64 %255, 1
  %259 = icmp eq i64 %257, 0
  %260 = select i1 %258, i1 %259, i1 false, !prof !438
  br i1 %260, label %261, label %264, !prof !439

261:                                              ; preds = %253
  %262 = load i32, ptr %3, align 8
  %263 = and i32 %262, 65535
  br label %273

264:                                              ; preds = %253
  %265 = icmp eq i64 %255, 0
  %266 = icmp eq i64 %257, 1
  %267 = select i1 %265, i1 %266, i1 false, !prof !440
  br i1 %267, label %268, label %301, !prof !439

268:                                              ; preds = %264
  %269 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %3, ptr noundef null) #17
  %270 = icmp eq i32 %269, 0
  %271 = select i1 %270, i32 2, i32 0
  %272 = select i1 %270, i32 47, i32 %269
  br i1 %270, label %301, label %273

273:                                              ; preds = %268, %261
  %274 = phi i32 [ %263, %261 ], [ %272, %268 ]
  %275 = load ptr, ptr %232, align 8, !tbaa !150
  %276 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %277 = load ptr, ptr %276, align 8, !tbaa !150
  %278 = tail call ptr @simplify_relational_operation(i32 noundef %274, i32 noundef %1, i32 noundef %245, ptr noundef %275, ptr noundef %277)
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %301

280:                                              ; preds = %273
  %281 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %274, i32 noundef %1, ptr noundef %275, ptr noundef %277) #17
  br label %301

282:                                              ; preds = %249, %244
  %283 = icmp eq i32 %245, 0
  %284 = select i1 %283, i32 %2, i32 %245, !prof !441
  %285 = load i32, ptr %3, align 8
  %286 = and i32 %285, 65535
  %287 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !150
  %289 = tail call ptr @simplify_relational_operation(i32 noundef %286, i32 noundef %2, i32 noundef %284, ptr noundef nonnull %233, ptr noundef %288)
  %290 = icmp eq ptr %289, null
  br i1 %290, label %301, label %291, !prof !442

291:                                              ; preds = %282
  %292 = load i32, ptr %289, align 8
  %293 = and i32 %292, 65535
  %294 = icmp eq i32 %293, 30
  br i1 %294, label %295, label %299

295:                                              ; preds = %291
  %296 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %297 = icmp eq ptr %289, %296
  %298 = select i1 %297, ptr %5, ptr %4
  br label %301

299:                                              ; preds = %291
  %300 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %1, ptr noundef nonnull %289, ptr noundef nonnull %4, ptr noundef %5) #17
  br label %301

301:                                              ; preds = %268, %280, %273, %282, %264, %299, %295
  %302 = phi i32 [ 1, %295 ], [ 1, %299 ], [ 2, %264 ], [ 0, %282 ], [ 1, %273 ], [ 1, %280 ], [ %271, %268 ]
  %303 = phi ptr [ %298, %295 ], [ %300, %299 ], [ undef, %264 ], [ undef, %282 ], [ %278, %273 ], [ %281, %280 ], [ undef, %268 ]
  switch i32 %302, label %383 [
    i32 0, label %382
    i32 2, label %382
  ], !prof !443

304:                                              ; preds = %6
  %305 = load i32, ptr %3, align 8
  %306 = lshr i32 %305, 16
  %307 = and i32 %306, 255
  %308 = icmp eq i32 %307, %1
  br i1 %308, label %310, label %309

309:                                              ; preds = %304
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4781, ptr noundef nonnull @.str.1) #17
  br label %310

310:                                              ; preds = %304, %309
  %311 = load i32, ptr %4, align 8
  %312 = lshr i32 %311, 16
  %313 = and i32 %312, 255
  %314 = icmp eq i32 %313, %1
  br i1 %314, label %316, label %315

315:                                              ; preds = %310
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4782, ptr noundef nonnull @.str.1) #17
  br label %316

316:                                              ; preds = %310, %315
  %317 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %318 = load i8, ptr %317, align 1, !tbaa !150
  %319 = add i8 %318, -12
  %320 = icmp ult i8 %319, 6
  br i1 %320, label %322, label %321

321:                                              ; preds = %316
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4783, ptr noundef nonnull @.str.1) #17
  br label %322

322:                                              ; preds = %316, %321
  %323 = tail call ptr @avoid_constant_pool_reference(ptr noundef %5)
  %324 = load i32, ptr %323, align 8
  %325 = and i32 %324, 65535
  %326 = icmp eq i32 %325, 30
  br i1 %326, label %327, label %382

327:                                              ; preds = %322
  %328 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %329 = load i8, ptr %328, align 1, !tbaa !150
  %330 = zext i8 %329 to i64
  %331 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !150
  %333 = load i8, ptr %8, align 1, !tbaa !150
  %334 = udiv i8 %333, %332
  %335 = zext i8 %334 to i32
  %336 = shl nsw i32 -1, %335
  %337 = xor i32 %336, -1
  %338 = getelementptr inbounds %struct.rtx_def, ptr %323, i64 0, i32 1
  %339 = load i64, ptr %338, align 8, !tbaa !150
  %340 = zext nneg i32 %337 to i64
  %341 = and i64 %339, %340
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %378, label %343

343:                                              ; preds = %327
  %344 = icmp eq i64 %341, %340
  br i1 %344, label %378, label %345

345:                                              ; preds = %343
  %346 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %3)
  %347 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %4)
  %348 = load i32, ptr %346, align 8
  %349 = and i32 %348, 65535
  %350 = icmp eq i32 %349, 33
  br i1 %350, label %351, label %378

351:                                              ; preds = %345
  %352 = load i32, ptr %347, align 8
  %353 = and i32 %352, 65535
  %354 = icmp eq i32 %353, 33
  br i1 %354, label %355, label %378

355:                                              ; preds = %351
  %356 = tail call ptr @rtvec_alloc(i32 noundef %335) #17
  %357 = icmp ugt i8 %332, %333
  br i1 %357, label %376, label %358

358:                                              ; preds = %355
  %359 = zext i8 %334 to i64
  br label %360

360:                                              ; preds = %358, %360
  %361 = phi i64 [ 0, %358 ], [ %374, %360 ]
  %362 = load i64, ptr %338, align 8, !tbaa !150
  %363 = trunc i64 %361 to i32
  %364 = shl nuw i32 1, %363
  %365 = sext i32 %364 to i64
  %366 = and i64 %362, %365
  %367 = icmp eq i64 %366, 0
  %368 = select i1 %367, ptr %347, ptr %346
  %369 = getelementptr inbounds %struct.rtx_def, ptr %368, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !150
  %371 = getelementptr inbounds %struct.rtvec_def, ptr %370, i64 0, i32 1, i64 %361
  %372 = load ptr, ptr %371, align 8, !tbaa !139
  %373 = getelementptr inbounds %struct.rtvec_def, ptr %356, i64 0, i32 1, i64 %361
  store ptr %372, ptr %373, align 8, !tbaa !139
  %374 = add nuw nsw i64 %361, 1
  %375 = icmp ult i64 %374, %359
  br i1 %375, label %360, label %376, !llvm.loop !444

376:                                              ; preds = %360, %355
  %377 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %356) #17
  br label %378

378:                                              ; preds = %345, %351, %343, %327, %376
  %379 = phi i1 [ false, %376 ], [ false, %327 ], [ false, %343 ], [ true, %351 ], [ true, %345 ]
  %380 = phi ptr [ %377, %376 ], [ %4, %327 ], [ %3, %343 ], [ undef, %351 ], [ undef, %345 ]
  br i1 %379, label %382, label %383

381:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4814, ptr noundef nonnull @.str.1) #17
  br label %382

382:                                              ; preds = %301, %322, %378, %221, %228, %14, %18, %22, %26, %381, %301
  br label %383

383:                                              ; preds = %301, %82, %207, %216, %139, %148, %378, %382, %75, %68
  %384 = phi ptr [ null, %382 ], [ %380, %378 ], [ %78, %75 ], [ %70, %68 ], [ %4, %148 ], [ %4, %139 ], [ %5, %216 ], [ %5, %207 ], [ %4, %82 ], [ %303, %301 ]
  ret ptr %384
}

declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_gen_relational(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !445 {
  %6 = tail call ptr @simplify_relational_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !446

8:                                                ; preds = %5
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4) #17
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  ret ptr %11
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_relational_operation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !447 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %11, !prof !448

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i32 [ %10, %7 ], [ %2, %5 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18, !prof !449

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %17, %14 ], [ %12, %11 ]
  %20 = tail call ptr @simplify_const_relational_operation(i32 noundef %0, i32 noundef %19, ptr noundef %3, ptr noundef %4)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22, !prof !450

22:                                               ; preds = %18
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !150
  switch i8 %25, label %406 [
    i8 8, label %26
    i8 9, label %26
    i8 12, label %33
    i8 17, label %33
    i8 13, label %33
    i8 14, label %33
    i8 15, label %33
    i8 16, label %33
  ], !prof !451

26:                                               ; preds = %22, %22
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %28 = icmp eq ptr %20, %27
  br i1 %28, label %29, label %406

29:                                               ; preds = %26
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !139
  br label %406

33:                                               ; preds = %22, %22, %22, %22, %22, %22
  %34 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %35 = icmp eq ptr %20, %34
  br i1 %35, label %36, label %406

36:                                               ; preds = %33
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !139
  br label %406

40:                                               ; preds = %18
  %41 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %3, ptr noundef %4) #17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48, !prof !452

43:                                               ; preds = %40
  %44 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %45 = icmp ne ptr %44, %3
  %46 = icmp eq ptr %44, %4
  %47 = or i1 %45, %46
  br i1 %47, label %50, label %48, !prof !453

48:                                               ; preds = %43, %40
  %49 = tail call i32 @swap_condition(i32 noundef %0) #17
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %4, %48 ], [ %3, %43 ]
  %52 = phi ptr [ %3, %48 ], [ %4, %43 ]
  %53 = phi i32 [ %49, %48 ], [ %0, %43 ]
  %54 = load i32, ptr %51, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 48
  %57 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %58 = icmp eq ptr %52, %57
  %59 = select i1 %56, i1 %58, i1 false, !prof !454
  br i1 %59, label %60, label %69, !prof !454

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !150
  %63 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !150
  %65 = tail call ptr @simplify_relational_operation(i32 noundef %53, i32 noundef %1, i32 noundef 0, ptr noundef %62, ptr noundef %64)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %406, !prof !455

67:                                               ; preds = %60
  %68 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %53, i32 noundef %1, ptr noundef %62, ptr noundef %64) #17
  br label %406

69:                                               ; preds = %50
  %70 = zext i32 %19 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !150
  %73 = icmp eq i8 %72, 1
  br i1 %73, label %406, label %74, !prof !456

74:                                               ; preds = %69
  %75 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %51)
  %76 = tail call ptr @avoid_constant_pool_reference(ptr noundef %52)
  %77 = load i32, ptr %75, align 8
  %78 = and i32 %77, 65535
  %79 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %80 = icmp eq ptr %79, %76
  br i1 %80, label %81, label %116, !prof !457

81:                                               ; preds = %74
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !154
  %85 = icmp ult i32 %84, 2
  br i1 %85, label %86, label %116, !prof !458

86:                                               ; preds = %81
  switch i32 %53, label %116 [
    i32 80, label %87
    i32 81, label %102
  ], !prof !459

87:                                               ; preds = %86
  %88 = lshr i32 %77, 16
  %89 = and i32 %88, 255
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %91, label %93, !prof !460

91:                                               ; preds = %87
  %92 = tail call ptr @simplify_rtx(ptr noundef nonnull %75)
  br label %406

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !150
  %96 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !150
  %98 = tail call ptr @simplify_relational_operation(i32 noundef %78, i32 noundef %1, i32 noundef 0, ptr noundef %95, ptr noundef %97)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %406, !prof !461

100:                                              ; preds = %93
  %101 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %78, i32 noundef %1, ptr noundef %95, ptr noundef %97) #17
  br label %406

102:                                              ; preds = %86
  %103 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %75, ptr noundef null) #17
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %114, label %105, !prof !462

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !150
  %108 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !150
  %110 = tail call ptr @simplify_relational_operation(i32 noundef %103, i32 noundef %1, i32 noundef 0, ptr noundef %107, ptr noundef %109)
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %114, !prof !463

112:                                              ; preds = %105
  %113 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %103, i32 noundef %1, ptr noundef %107, ptr noundef %109) #17
  br label %114

114:                                              ; preds = %112, %105, %102
  %115 = phi ptr [ undef, %102 ], [ %113, %112 ], [ %110, %105 ]
  br i1 %104, label %116, label %406, !prof !462

116:                                              ; preds = %114, %86, %81, %74
  %117 = icmp eq i32 %53, 89
  switch i32 %53, label %173 [
    i32 89, label %118
    i32 86, label %118
  ], !prof !464

118:                                              ; preds = %116, %116
  %119 = load i32, ptr %75, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 49
  br i1 %121, label %122, label %151, !prof !465

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %124 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !150
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 30
  br i1 %128, label %129, label %151

129:                                              ; preds = %122
  %130 = load ptr, ptr %123, align 8, !tbaa !150
  %131 = tail call i32 @rtx_equal_p(ptr noundef %76, ptr noundef %130) #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load ptr, ptr %124, align 8, !tbaa !150
  %135 = tail call i32 @rtx_equal_p(ptr noundef %76, ptr noundef %134) #17
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %133, %129
  %138 = load ptr, ptr %124, align 8, !tbaa !150
  %139 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %19, ptr noundef %138, i32 noundef %19)
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %19, ptr noundef %138) #17
  br label %143

143:                                              ; preds = %137, %141
  %144 = phi ptr [ %142, %141 ], [ %139, %137 ]
  %145 = select i1 %117, i32 86, i32 89
  %146 = load ptr, ptr %123, align 8, !tbaa !150
  %147 = tail call ptr @simplify_relational_operation(i32 noundef %145, i32 noundef %1, i32 noundef %19, ptr noundef %146, ptr noundef %144)
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %406

149:                                              ; preds = %143
  %150 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %145, i32 noundef %1, ptr noundef %146, ptr noundef %144) #17
  br label %406

151:                                              ; preds = %133, %122, %118
  switch i32 %53, label %173 [
    i32 89, label %152
    i32 86, label %152
  ], !prof !466

152:                                              ; preds = %151, %151
  %153 = load i32, ptr %75, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 49
  br i1 %155, label %156, label %173, !prof !465

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %158 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !150
  %160 = tail call i32 @rtx_equal_p(ptr noundef %76, ptr noundef %159) #17
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %156
  %163 = load ptr, ptr %157, align 8, !tbaa !150
  %164 = tail call i32 @rtx_equal_p(ptr noundef %76, ptr noundef %163) #17
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load ptr, ptr %157, align 8, !tbaa !150
  %168 = tail call ptr @copy_rtx(ptr noundef %167) #17
  %169 = tail call ptr @simplify_relational_operation(i32 noundef %53, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %168)
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %406

171:                                              ; preds = %166
  %172 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %53, i32 noundef %1, ptr noundef %75, ptr noundef %168) #17
  br label %406

173:                                              ; preds = %152, %151, %162, %156, %116
  %174 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %175 = icmp eq ptr %174, %76
  br i1 %175, label %176, label %187, !prof !467

176:                                              ; preds = %173
  switch i32 %53, label %225 [
    i32 87, label %177
    i32 88, label %182
  ], !prof !468

177:                                              ; preds = %176
  %178 = tail call ptr @simplify_relational_operation(i32 noundef 80, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %76)
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %406

180:                                              ; preds = %177
  %181 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef %1, ptr noundef %75, ptr noundef %76) #17
  br label %406

182:                                              ; preds = %176
  %183 = tail call ptr @simplify_relational_operation(i32 noundef 81, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %76)
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %406

185:                                              ; preds = %182
  %186 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 81, i32 noundef %1, ptr noundef %75, ptr noundef %76) #17
  br label %406

187:                                              ; preds = %173
  %188 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %189 = icmp eq ptr %188, %76
  br i1 %189, label %190, label %211, !prof !469

190:                                              ; preds = %187
  switch i32 %53, label %225 [
    i32 82, label %191
    i32 86, label %196
    i32 85, label %201
    i32 89, label %206
  ], !prof !470

191:                                              ; preds = %190
  %192 = tail call ptr @simplify_relational_operation(i32 noundef 83, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %174)
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %406

194:                                              ; preds = %191
  %195 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 83, i32 noundef %1, ptr noundef %75, ptr noundef %174) #17
  br label %406

196:                                              ; preds = %190
  %197 = tail call ptr @simplify_relational_operation(i32 noundef 80, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %174)
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %406

199:                                              ; preds = %196
  %200 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef %1, ptr noundef %75, ptr noundef %174) #17
  br label %406

201:                                              ; preds = %190
  %202 = tail call ptr @simplify_relational_operation(i32 noundef 84, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %174)
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %406

204:                                              ; preds = %201
  %205 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 84, i32 noundef %1, ptr noundef %75, ptr noundef %174) #17
  br label %406

206:                                              ; preds = %190
  %207 = tail call ptr @simplify_relational_operation(i32 noundef 81, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %174)
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %406, !prof !471

209:                                              ; preds = %206
  %210 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 81, i32 noundef %1, ptr noundef %75, ptr noundef %174) #17
  br label %406

211:                                              ; preds = %187
  %212 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %213 = icmp eq ptr %212, %76
  br i1 %213, label %214, label %225, !prof !472

214:                                              ; preds = %211
  switch i32 %53, label %225 [
    i32 84, label %215
    i32 83, label %220
  ], !prof !473

215:                                              ; preds = %214
  %216 = tail call ptr @simplify_relational_operation(i32 noundef 85, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %174)
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %406

218:                                              ; preds = %215
  %219 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 85, i32 noundef %1, ptr noundef %75, ptr noundef %174) #17
  br label %406

220:                                              ; preds = %214
  %221 = tail call ptr @simplify_relational_operation(i32 noundef 82, i32 noundef %1, i32 noundef %19, ptr noundef %75, ptr noundef %174)
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %406

223:                                              ; preds = %220
  %224 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef %1, ptr noundef %75, ptr noundef %174) #17
  br label %406

225:                                              ; preds = %214, %211, %190, %176
  %226 = icmp eq i32 %53, 80
  %227 = and i32 %53, -2
  %228 = icmp eq i32 %227, 80
  br i1 %228, label %229, label %264, !prof !474

229:                                              ; preds = %225
  %230 = icmp eq i32 %78, 49
  %231 = add nsw i32 %78, -49
  %232 = icmp ult i32 %231, 2
  br i1 %232, label %233, label %264, !prof !475

233:                                              ; preds = %229
  %234 = load i32, ptr %76, align 8
  %235 = and i32 %234, 65535
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !154
  %239 = icmp eq i32 %238, 9
  br i1 %239, label %240, label %264

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %242 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !150
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, 65535
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !154
  %249 = icmp eq i32 %248, 9
  br i1 %249, label %250, label %264

250:                                              ; preds = %240
  switch i8 %72, label %251 [
    i8 2, label %256
    i8 3, label %256
    i8 10, label %256
  ]

251:                                              ; preds = %250
  %252 = icmp eq i8 %72, 12
  %253 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %254 = icmp ne i32 %253, 0
  %255 = select i1 %252, i1 true, i1 %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %250, %250, %251, %250
  %257 = load ptr, ptr %241, align 8, !tbaa !150
  %258 = select i1 %230, i32 50, i32 49
  %259 = tail call ptr @simplify_gen_binary(i32 noundef %258, i32 noundef %19, ptr noundef nonnull %76, ptr noundef nonnull %243)
  %260 = tail call ptr @simplify_relational_operation(i32 noundef %53, i32 noundef %1, i32 noundef %19, ptr noundef %257, ptr noundef %259)
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %406

262:                                              ; preds = %256
  %263 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %53, i32 noundef %1, ptr noundef %257, ptr noundef %259) #17
  br label %406

264:                                              ; preds = %251, %240, %233, %229, %225
  %265 = and i1 %226, %175
  br i1 %265, label %266, label %315, !prof !476

266:                                              ; preds = %264
  %267 = zext i32 %1 to i64
  %268 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !150
  %270 = icmp eq i8 %269, 2
  %271 = icmp ne i32 %19, 0
  %272 = and i1 %271, %270
  %273 = icmp ne i32 %1, 13
  %274 = and i1 %273, %272
  %275 = icmp ne i32 %19, 13
  %276 = and i1 %275, %274
  br i1 %276, label %277, label %315, !prof !477

277:                                              ; preds = %266
  %278 = tail call i64 @nonzero_bits(ptr noundef nonnull %75, i32 noundef %19) #17
  %279 = icmp eq i64 %278, 1
  br i1 %279, label %280, label %315, !prof !478

280:                                              ; preds = %277
  %281 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %267
  %282 = load i8, ptr %281, align 1, !tbaa !150
  %283 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %70
  %284 = load i8, ptr %283, align 1, !tbaa !150
  %285 = icmp ugt i8 %282, %284
  br i1 %285, label %286, label %313, !prof !479

286:                                              ; preds = %280
  %287 = tail call ptr @avoid_constant_pool_reference(ptr noundef %75)
  %288 = tail call ptr @simplify_const_unary_operation(i32 noundef 99, i32 noundef %1, ptr noundef %287, i32 noundef %19)
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %308, !prof !405

290:                                              ; preds = %286
  %291 = load i32, ptr %75, align 8
  %292 = and i32 %291, 469827583
  %293 = icmp eq i32 %292, 335544359
  br i1 %293, label %294, label %308, !prof !415

294:                                              ; preds = %290
  %295 = load i8, ptr %281, align 1, !tbaa !150
  %296 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !150
  %298 = load i32, ptr %297, align 8
  %299 = lshr i32 %298, 16
  %300 = and i32 %299, 255
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !150
  %304 = icmp ugt i8 %295, %303
  br i1 %304, label %308, label %305

305:                                              ; preds = %294
  %306 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %307 = tail call ptr %306(i32 noundef %1, ptr noundef nonnull %75) #17
  br label %308

308:                                              ; preds = %290, %294, %286, %305
  %309 = phi ptr [ %288, %286 ], [ %307, %305 ], [ null, %294 ], [ null, %290 ]
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %406, !prof !480

311:                                              ; preds = %308
  %312 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 99, i32 noundef %1, ptr noundef %75) #17
  br label %406

313:                                              ; preds = %280
  %314 = tail call ptr @lowpart_subreg(i32 noundef %1, ptr noundef nonnull %75, i32 noundef %19) #17
  br label %406

315:                                              ; preds = %277, %266, %264
  br i1 %228, label %316, label %330, !prof !481

316:                                              ; preds = %315
  %317 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %318 = icmp eq ptr %317, %76
  %319 = icmp eq i32 %78, 63
  %320 = select i1 %318, i1 %319, i1 false, !prof !482
  br i1 %320, label %321, label %330, !prof !483

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !150
  %324 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !150
  %326 = tail call ptr @simplify_relational_operation(i32 noundef %53, i32 noundef %1, i32 noundef %19, ptr noundef %323, ptr noundef %325)
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %406

328:                                              ; preds = %321
  %329 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %53, i32 noundef %1, ptr noundef %323, ptr noundef %325) #17
  br label %406

330:                                              ; preds = %316, %315
  %331 = icmp eq i32 %78, 63
  %332 = select i1 %228, i1 %331, i1 false, !prof !481
  br i1 %332, label %333, label %380, !prof !484

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !150
  %336 = tail call i32 @rtx_equal_p(ptr noundef %335, ptr noundef %76) #17
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %350, label %338

338:                                              ; preds = %333
  %339 = load ptr, ptr %334, align 8, !tbaa !150
  %340 = tail call i32 @side_effects_p(ptr noundef %339) #17
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %344 = load ptr, ptr %343, align 8, !tbaa !150
  %345 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %346 = tail call ptr @simplify_relational_operation(i32 noundef %53, i32 noundef %1, i32 noundef %19, ptr noundef %344, ptr noundef %345)
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %406

348:                                              ; preds = %342
  %349 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %53, i32 noundef %1, ptr noundef %344, ptr noundef %345) #17
  br label %406

350:                                              ; preds = %333, %338
  %351 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %352 = load ptr, ptr %351, align 8, !tbaa !150
  %353 = tail call i32 @rtx_equal_p(ptr noundef %352, ptr noundef %76) #17
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %366, label %355

355:                                              ; preds = %350
  %356 = load ptr, ptr %351, align 8, !tbaa !150
  %357 = tail call i32 @side_effects_p(ptr noundef %356) #17
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %355
  %360 = load ptr, ptr %334, align 8, !tbaa !150
  %361 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %362 = tail call ptr @simplify_relational_operation(i32 noundef %53, i32 noundef %1, i32 noundef %19, ptr noundef %360, ptr noundef %361)
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %406

364:                                              ; preds = %359
  %365 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %53, i32 noundef %1, ptr noundef %360, ptr noundef %361) #17
  br label %406

366:                                              ; preds = %350, %355
  %367 = load i32, ptr %76, align 8
  %368 = trunc i32 %367 to i16
  switch i16 %368, label %380 [
    i16 30, label %369
    i16 32, label %369
  ]

369:                                              ; preds = %366, %366
  %370 = load ptr, ptr %351, align 8, !tbaa !150
  %371 = load i32, ptr %370, align 8
  %372 = trunc i32 %371 to i16
  switch i16 %372, label %380 [
    i16 30, label %373
    i16 32, label %373
  ]

373:                                              ; preds = %369, %369
  %374 = load ptr, ptr %334, align 8, !tbaa !150
  %375 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %19, ptr noundef nonnull %370, ptr noundef nonnull %76)
  %376 = tail call ptr @simplify_relational_operation(i32 noundef %53, i32 noundef %1, i32 noundef %19, ptr noundef %374, ptr noundef %375)
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %406

378:                                              ; preds = %373
  %379 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %53, i32 noundef %1, ptr noundef %374, ptr noundef %375) #17
  br label %406

380:                                              ; preds = %369, %366, %330
  %381 = icmp eq i32 %78, 117
  %382 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %383 = icmp eq ptr %382, %76
  %384 = select i1 %381, i1 %383, i1 false, !prof !484
  br i1 %384, label %385, label %406, !prof !484

385:                                              ; preds = %380
  switch i32 %53, label %406 [
    i32 81, label %386
    i32 84, label %386
    i32 88, label %386
    i32 80, label %396
    i32 83, label %396
    i32 87, label %396
  ]

386:                                              ; preds = %385, %385, %385
  %387 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !150
  %389 = load i32, ptr %388, align 8
  %390 = lshr i32 %389, 16
  %391 = and i32 %390, 255
  %392 = tail call ptr @simplify_relational_operation(i32 noundef 81, i32 noundef %1, i32 noundef %391, ptr noundef nonnull %388, ptr noundef %382)
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %406

394:                                              ; preds = %386
  %395 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 81, i32 noundef %1, ptr noundef nonnull %388, ptr noundef %382) #17
  br label %406

396:                                              ; preds = %385, %385, %385
  %397 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !150
  %399 = load i32, ptr %398, align 8
  %400 = lshr i32 %399, 16
  %401 = and i32 %400, 255
  %402 = tail call ptr @simplify_relational_operation(i32 noundef 80, i32 noundef %1, i32 noundef %401, ptr noundef nonnull %398, ptr noundef %382)
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %406

404:                                              ; preds = %396
  %405 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef %1, ptr noundef nonnull %398, ptr noundef %382) #17
  br label %406

406:                                              ; preds = %386, %385, %373, %26, %22, %380, %313, %114, %91, %93, %100, %143, %149, %166, %171, %177, %180, %182, %185, %191, %194, %196, %199, %201, %204, %206, %209, %215, %218, %220, %223, %256, %262, %308, %311, %321, %328, %342, %348, %359, %364, %378, %394, %396, %404, %67, %60, %69, %33, %36, %29
  %407 = phi ptr [ %32, %29 ], [ %39, %36 ], [ null, %33 ], [ null, %69 ], [ %68, %67 ], [ %65, %60 ], [ %92, %91 ], [ %115, %114 ], [ %314, %313 ], [ null, %380 ], [ %101, %100 ], [ %98, %93 ], [ %150, %149 ], [ %147, %143 ], [ %172, %171 ], [ %169, %166 ], [ %181, %180 ], [ %178, %177 ], [ %186, %185 ], [ %183, %182 ], [ %195, %194 ], [ %192, %191 ], [ %200, %199 ], [ %197, %196 ], [ %205, %204 ], [ %202, %201 ], [ %210, %209 ], [ %207, %206 ], [ %219, %218 ], [ %216, %215 ], [ %224, %223 ], [ %221, %220 ], [ %263, %262 ], [ %260, %256 ], [ %312, %311 ], [ %309, %308 ], [ %329, %328 ], [ %326, %321 ], [ %349, %348 ], [ %346, %342 ], [ %365, %364 ], [ %362, %359 ], [ %379, %378 ], [ %395, %394 ], [ %405, %404 ], [ %402, %396 ], [ %20, %22 ], [ null, %26 ], [ %376, %373 ], [ null, %385 ], [ %392, %386 ]
  ret ptr %407
}

; Function Attrs: nounwind uwtable
define dso_local ptr @simplify_replace_fn_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !485 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = lshr i32 %5, 16
  %8 = and i32 %7, 255
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10, !prof !486

10:                                               ; preds = %4
  %11 = tail call ptr %2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %232

13:                                               ; preds = %4
  %14 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef %1) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !487

16:                                               ; preds = %13
  %17 = tail call ptr @copy_rtx(ptr noundef %3) #17
  br label %232

18:                                               ; preds = %13, %10
  %19 = zext nneg i32 %6 to i64
  %20 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !154
  switch i32 %21, label %163 [
    i32 4, label %22
    i32 2, label %36
    i32 3, label %36
    i32 0, label %50
    i32 1, label %50
    i32 10, label %77
    i32 11, label %77
    i32 5, label %110
    i32 8, label %130
  ], !prof !488

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !150
  %25 = load i32, ptr %24, align 8
  %26 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %24, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %27 = load ptr, ptr %23, align 8, !tbaa !150
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %232, label %29

29:                                               ; preds = %22
  %30 = lshr i32 %25, 16
  %31 = and i32 %30, 255
  %32 = tail call ptr @simplify_unary_operation(i32 noundef %6, i32 noundef %8, ptr noundef %26, i32 noundef %31)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %232

34:                                               ; preds = %29
  %35 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %6, i32 noundef %8, ptr noundef %26) #17
  br label %232

36:                                               ; preds = %18, %18
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !150
  %39 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %38, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  %42 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %41, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %43 = load ptr, ptr %37, align 8, !tbaa !150
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %45, label %48, !prof !489

45:                                               ; preds = %36
  %46 = load ptr, ptr %40, align 8, !tbaa !150
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %232, label %48, !prof !490

48:                                               ; preds = %45, %36
  %49 = tail call ptr @simplify_gen_binary(i32 noundef %6, i32 noundef %8, ptr noundef %39, ptr noundef %42)
  br label %232

50:                                               ; preds = %18, %18
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !150
  %53 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !150
  %55 = load i32, ptr %52, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63, !prof !491

59:                                               ; preds = %50
  %60 = load i32, ptr %54, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  br label %63

63:                                               ; preds = %50, %59
  %64 = phi i32 [ %62, %59 ], [ %57, %50 ]
  %65 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %52, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %66 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %54, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %67 = load ptr, ptr %51, align 8, !tbaa !150
  %68 = icmp eq ptr %65, %67
  br i1 %68, label %69, label %72, !prof !491

69:                                               ; preds = %63
  %70 = load ptr, ptr %53, align 8, !tbaa !150
  %71 = icmp eq ptr %66, %70
  br i1 %71, label %232, label %72

72:                                               ; preds = %69, %63
  %73 = tail call ptr @simplify_relational_operation(i32 noundef %6, i32 noundef %8, i32 noundef %64, ptr noundef %65, ptr noundef %66)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %232, !prof !491

75:                                               ; preds = %72
  %76 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %6, i32 noundef %8, ptr noundef %65, ptr noundef %66) #17
  br label %232

77:                                               ; preds = %18, %18
  %78 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !150
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %79, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %84 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !150
  %86 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %85, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %87 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %88 = load ptr, ptr %87, align 8, !tbaa !150
  %89 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %88, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %90 = load ptr, ptr %78, align 8, !tbaa !150
  %91 = icmp eq ptr %83, %90
  br i1 %91, label %92, label %98, !prof !491

92:                                               ; preds = %77
  %93 = load ptr, ptr %84, align 8, !tbaa !150
  %94 = icmp eq ptr %86, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load ptr, ptr %87, align 8, !tbaa !150
  %97 = icmp eq ptr %89, %96
  br i1 %97, label %232, label %98

98:                                               ; preds = %95, %92, %77
  %99 = icmp eq i32 %82, 0
  br i1 %99, label %100, label %104, !prof !492

100:                                              ; preds = %98
  %101 = load i32, ptr %83, align 8
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  br label %104

104:                                              ; preds = %100, %98
  %105 = phi i32 [ %103, %100 ], [ %82, %98 ]
  %106 = tail call ptr @simplify_ternary_operation(i32 noundef %6, i32 noundef %8, i32 noundef %105, ptr noundef %83, ptr noundef %86, ptr noundef %89)
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %232, !prof !493

108:                                              ; preds = %104
  %109 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef %6, i32 noundef %8, ptr noundef %83, ptr noundef %86, ptr noundef %89) #17
  br label %232

110:                                              ; preds = %18
  %111 = icmp eq i32 %6, 39
  br i1 %111, label %112, label %163, !prof !494

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !150
  %115 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %114, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %116 = load ptr, ptr %113, align 8, !tbaa !150
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %232, label %118, !prof !495

118:                                              ; preds = %112
  %119 = load i32, ptr %0, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = load i32, ptr %116, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load i32, ptr %125, align 8, !tbaa !150
  %127 = tail call ptr @simplify_gen_subreg(i32 noundef %121, ptr noundef %115, i32 noundef %124, i32 noundef %126)
  %128 = icmp eq ptr %127, null
  %129 = select i1 %128, ptr %0, ptr %127, !prof !496
  br label %232

130:                                              ; preds = %18
  %131 = trunc i32 %5 to i16
  switch i16 %131, label %163 [
    i16 43, label %132
    i16 122, label %140
  ], !prof !497

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !150
  %135 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %134, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %136 = load ptr, ptr %133, align 8, !tbaa !150
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %232, label %138, !prof !498

138:                                              ; preds = %132
  %139 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %135) #17
  br label %232

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !150
  %143 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %142, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %144 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !150
  %146 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %145, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %147 = load i32, ptr %143, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 121
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !150
  %153 = tail call i32 @rtx_equal_p(ptr noundef %152, ptr noundef %146) #17
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %232

155:                                              ; preds = %150, %140
  %156 = load ptr, ptr %141, align 8, !tbaa !150
  %157 = icmp eq ptr %143, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load ptr, ptr %144, align 8, !tbaa !150
  %160 = icmp eq ptr %146, %159
  br i1 %160, label %232, label %161

161:                                              ; preds = %158, %155
  %162 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %8, ptr noundef nonnull %143, ptr noundef %146) #17
  br label %232

163:                                              ; preds = %130, %18, %110
  %164 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %19
  %165 = load ptr, ptr %164, align 8, !tbaa !139
  br label %166

166:                                              ; preds = %229, %163
  %167 = phi i64 [ %231, %229 ], [ 0, %163 ]
  %168 = phi ptr [ %230, %229 ], [ %0, %163 ]
  %169 = getelementptr inbounds i8, ptr %165, i64 %167
  %170 = load i8, ptr %169, align 1, !tbaa !150
  switch i8 %170, label %229 [
    i8 0, label %232
    i8 69, label %171
    i8 101, label %212
  ], !prof !499

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %173 = getelementptr inbounds [1 x %union.rtunion_def], ptr %172, i64 0, i64 %167
  %174 = load ptr, ptr %173, align 8, !tbaa !150
  %175 = load i32, ptr %174, align 8, !tbaa !313
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %229

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %179 = getelementptr inbounds [1 x %union.rtunion_def], ptr %178, i64 0, i64 %167
  %180 = load ptr, ptr %179, align 8, !tbaa !150
  br label %181

181:                                              ; preds = %177, %205
  %182 = phi i64 [ 0, %177 ], [ %208, %205 ]
  %183 = phi ptr [ %180, %177 ], [ %207, %205 ]
  %184 = phi ptr [ %168, %177 ], [ %206, %205 ]
  %185 = getelementptr inbounds %struct.rtvec_def, ptr %174, i64 0, i32 1, i64 %182
  %186 = load ptr, ptr %185, align 8, !tbaa !139
  %187 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %186, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %188 = load ptr, ptr %185, align 8, !tbaa !139
  %189 = icmp eq ptr %187, %188
  br i1 %189, label %205, label %190

190:                                              ; preds = %181
  %191 = icmp eq ptr %183, %174
  br i1 %191, label %192, label %201

192:                                              ; preds = %190
  %193 = tail call ptr @shallow_copy_rtvec(ptr noundef nonnull %174) #17
  %194 = icmp eq ptr %184, %0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi ptr [ %196, %195 ], [ %184, %192 ]
  %199 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %200 = getelementptr inbounds [1 x %union.rtunion_def], ptr %199, i64 0, i64 %167
  store ptr %193, ptr %200, align 8, !tbaa !150
  br label %201

201:                                              ; preds = %197, %190
  %202 = phi ptr [ %198, %197 ], [ %184, %190 ]
  %203 = phi ptr [ %193, %197 ], [ %183, %190 ]
  %204 = getelementptr inbounds %struct.rtvec_def, ptr %203, i64 0, i32 1, i64 %182
  store ptr %187, ptr %204, align 8, !tbaa !139
  br label %205

205:                                              ; preds = %181, %201
  %206 = phi ptr [ %202, %201 ], [ %184, %181 ]
  %207 = phi ptr [ %203, %201 ], [ %183, %181 ]
  %208 = add nuw nsw i64 %182, 1
  %209 = load i32, ptr %174, align 8, !tbaa !313
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %181, label %229, !llvm.loop !500

212:                                              ; preds = %166
  %213 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %214 = getelementptr inbounds [1 x %union.rtunion_def], ptr %213, i64 0, i64 %167
  %215 = load ptr, ptr %214, align 8, !tbaa !150
  %216 = icmp eq ptr %215, null
  br i1 %216, label %229, label %217

217:                                              ; preds = %212
  %218 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %215, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %219 = load ptr, ptr %214, align 8, !tbaa !150
  %220 = icmp eq ptr %218, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %217
  %222 = icmp eq ptr %168, %0
  br i1 %222, label %223, label %225

223:                                              ; preds = %221
  %224 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi ptr [ %224, %223 ], [ %168, %221 ]
  %227 = getelementptr inbounds %struct.rtx_def, ptr %226, i64 0, i32 1
  %228 = getelementptr inbounds [1 x %union.rtunion_def], ptr %227, i64 0, i64 %167
  store ptr %218, ptr %228, align 8, !tbaa !150
  br label %229

229:                                              ; preds = %205, %171, %166, %217, %225, %212
  %230 = phi ptr [ %226, %225 ], [ %168, %217 ], [ %168, %212 ], [ %168, %166 ], [ %168, %171 ], [ %206, %205 ]
  %231 = add nuw i64 %167, 1
  br label %166, !llvm.loop !501

232:                                              ; preds = %166, %158, %104, %95, %72, %69, %45, %108, %75, %34, %29, %150, %132, %112, %22, %10, %161, %138, %118, %48, %16
  %233 = phi ptr [ %139, %138 ], [ %162, %161 ], [ %129, %118 ], [ %49, %48 ], [ %17, %16 ], [ %11, %10 ], [ %0, %22 ], [ %0, %112 ], [ %0, %132 ], [ %146, %150 ], [ %35, %34 ], [ %32, %29 ], [ %76, %75 ], [ %109, %108 ], [ %0, %45 ], [ %0, %69 ], [ %73, %72 ], [ %0, %95 ], [ %106, %104 ], [ %0, %158 ], [ %168, %166 ]
  ret ptr %233
}

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !502 {
  %5 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18, !prof !503

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %10 [
    i16 39, label %18
    i16 41, label %18
  ], !prof !504

10:                                               ; preds = %7
  %11 = and i32 %8, 16711680
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !505

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %2, ptr noundef nonnull %1, i32 noundef %3) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16, !prof !505

16:                                               ; preds = %13
  %17 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %3) #17
  br label %18

18:                                               ; preds = %7, %13, %10, %7, %4, %16
  %19 = phi ptr [ %17, %16 ], [ %5, %4 ], [ null, %7 ], [ null, %10 ], [ null, %13 ], [ null, %7 ]
  ret ptr %19
}

declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @shallow_copy_rtvec(ptr noundef) local_unnamed_addr #3

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @simplify_replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !prof !506 {
  %4 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @simplify_const_unary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 !prof !507 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  %8 = alloca %struct.real_value, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.real_value, align 8
  %12 = alloca %struct.real_value, align 8
  %13 = alloca %struct.real_value, align 8
  %14 = alloca %struct.real_value, align 8
  %15 = alloca [4 x i64], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.real_value, align 8
  %19 = alloca %struct.real_value, align 8
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !150
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 3
  %25 = icmp eq i32 %0, 126
  br i1 %25, label %26, label %116, !prof !508

26:                                               ; preds = %4
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %28 = load i8, ptr %27, align 1, !tbaa !150
  %29 = add i8 %28, -12
  %30 = icmp ult i8 %29, 6
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1073, ptr noundef nonnull @.str.1) #17
  br label %32

32:                                               ; preds = %26, %31
  %33 = load i32, ptr %2, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !150
  %41 = add i8 %40, -12
  %42 = icmp ult i8 %41, 6
  %43 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %44 = load i8, ptr %43, align 1, !tbaa !150
  br i1 %42, label %48, label %45

45:                                               ; preds = %37
  %46 = trunc i32 %34 to i8
  %47 = icmp eq i8 %44, %46
  br i1 %47, label %54, label %52

48:                                               ; preds = %37
  %49 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %38
  %50 = load i8, ptr %49, align 1, !tbaa !150
  %51 = icmp eq i8 %44, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %48, %45
  %53 = phi i32 [ 1077, %45 ], [ 1080, %48 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %53, ptr noundef nonnull @.str.1) #17
  br label %54

54:                                               ; preds = %52, %48, %45, %32
  %55 = load i32, ptr %2, align 8
  %56 = trunc i32 %55 to i16
  switch i16 %56, label %116 [
    i16 30, label %57
    i16 32, label %57
    i16 33, label %57
  ]

57:                                               ; preds = %54, %54, %54
  %58 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %59 = load i8, ptr %58, align 1, !tbaa !150
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !150
  %63 = load i8, ptr %21, align 1, !tbaa !150
  %64 = udiv i8 %63, %62
  %65 = zext i8 %64 to i32
  %66 = tail call ptr @rtvec_alloc(i32 noundef %65) #17
  %67 = load i32, ptr %2, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 33
  br i1 %69, label %79, label %70

70:                                               ; preds = %57
  %71 = icmp ugt i8 %62, %63
  br i1 %71, label %114, label %72

72:                                               ; preds = %70
  %73 = zext i8 %64 to i64
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ 0, %72 ], [ %77, %74 ]
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %75
  store ptr %2, ptr %76, align 8, !tbaa !139
  %77 = add nuw nsw i64 %75, 1
  %78 = icmp ult i64 %77, %73
  br i1 %78, label %74, label %114, !llvm.loop !509

79:                                               ; preds = %57
  %80 = lshr i32 %67, 16
  %81 = and i32 %80, 255
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !150
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !150
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %82
  %89 = load i8, ptr %88, align 1, !tbaa !150
  %90 = udiv i8 %89, %87
  %91 = zext i8 %90 to i32
  %92 = icmp ult i8 %90, %64
  br i1 %92, label %94, label %93

93:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1099, ptr noundef nonnull @.str.1) #17
  br label %94

94:                                               ; preds = %79, %93
  %95 = urem i32 %65, %91
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1100, ptr noundef nonnull @.str.1) #17
  br label %98

98:                                               ; preds = %94, %97
  %99 = icmp ugt i8 %62, %63
  br i1 %99, label %114, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %102 = zext i8 %64 to i64
  br label %103

103:                                              ; preds = %100, %103
  %104 = phi i64 [ 0, %100 ], [ %112, %103 ]
  %105 = load ptr, ptr %101, align 8, !tbaa !150
  %106 = trunc i64 %104 to i32
  %107 = urem i32 %106, %91
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds %struct.rtvec_def, ptr %105, i64 0, i32 1, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !139
  %111 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %104
  store ptr %110, ptr %111, align 8, !tbaa !139
  %112 = add nuw nsw i64 %104, 1
  %113 = icmp ult i64 %112, %102
  br i1 %113, label %103, label %114, !llvm.loop !510

114:                                              ; preds = %74, %103, %70, %98
  %115 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %66) #17
  br label %711

116:                                              ; preds = %54, %4
  %117 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %118 = load i8, ptr %117, align 1, !tbaa !150
  %119 = add i8 %118, -12
  %120 = icmp ult i8 %119, 6
  br i1 %120, label %121, label %168, !prof !508

121:                                              ; preds = %116
  %122 = load i32, ptr %2, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 33
  br i1 %124, label %125, label %168

125:                                              ; preds = %121
  %126 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %127 = load i8, ptr %126, align 1, !tbaa !150
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !150
  %131 = load i8, ptr %21, align 1, !tbaa !150
  %132 = udiv i8 %131, %130
  %133 = zext i8 %132 to i32
  %134 = lshr i32 %122, 16
  %135 = and i32 %134, 255
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !150
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !150
  %142 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %136
  %143 = load i8, ptr %142, align 1, !tbaa !150
  %144 = udiv i8 %143, %141
  %145 = tail call ptr @rtvec_alloc(i32 noundef %133) #17
  %146 = icmp eq i8 %144, %132
  br i1 %146, label %148, label %147

147:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1118, ptr noundef nonnull @.str.1) #17
  br label %148

148:                                              ; preds = %125, %147
  %149 = icmp ugt i8 %130, %131
  br i1 %149, label %166, label %150

150:                                              ; preds = %148
  %151 = zext i8 %127 to i32
  %152 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %153 = zext i8 %138 to i32
  %154 = zext i8 %132 to i64
  br label %155

155:                                              ; preds = %150, %162
  %156 = phi i64 [ 0, %150 ], [ %164, %162 ]
  %157 = load ptr, ptr %152, align 8, !tbaa !150
  %158 = getelementptr inbounds %struct.rtvec_def, ptr %157, i64 0, i32 1, i64 %156
  %159 = load ptr, ptr %158, align 8, !tbaa !139
  %160 = tail call ptr @simplify_unary_operation(i32 noundef %0, i32 noundef %151, ptr noundef %159, i32 noundef %153)
  %161 = icmp eq ptr %160, null
  br i1 %161, label %711, label %162

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.rtvec_def, ptr %145, i64 0, i32 1, i64 %156
  store ptr %160, ptr %163, align 8, !tbaa !139
  %164 = add nuw nsw i64 %156, 1
  %165 = icmp ult i64 %164, %154
  br i1 %165, label %155, label %166, !llvm.loop !511

166:                                              ; preds = %162, %148
  %167 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %145) #17
  br label %711

168:                                              ; preds = %116, %121
  switch i32 %0, label %226 [
    i32 103, label %169
    i32 105, label %190
  ], !prof !512

169:                                              ; preds = %168
  %170 = load i32, ptr %2, align 8
  %171 = and i32 %170, 16711680
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %169
  %174 = trunc i32 %170 to i16
  switch i16 %174, label %188 [
    i16 32, label %175
    i16 30, label %175
  ]

175:                                              ; preds = %173, %173
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %176 = and i32 %170, 65535
  %177 = icmp eq i32 %176, 30
  %178 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !150
  br i1 %177, label %180, label %182

180:                                              ; preds = %175
  %181 = ashr i64 %179, 63
  br label %185

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = load i64, ptr %183, align 8, !tbaa !150
  br label %185

185:                                              ; preds = %182, %180
  %186 = phi i64 [ %181, %180 ], [ %184, %182 ]
  call void @real_from_integer(ptr noundef nonnull %5, i32 noundef %1, i64 noundef %179, i64 noundef %186, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %6, i32 noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  %187 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %5, i32 noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %711

188:                                              ; preds = %173, %169
  %189 = icmp eq i32 %0, 105
  br i1 %189, label %190, label %226

190:                                              ; preds = %168, %188
  %191 = load i32, ptr %2, align 8
  %192 = and i32 %191, 16711680
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %226

194:                                              ; preds = %190
  %195 = trunc i32 %191 to i16
  switch i16 %195, label %226 [
    i16 32, label %196
    i16 30, label %196
  ]

196:                                              ; preds = %194, %194
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #17
  %197 = and i32 %191, 65535
  %198 = icmp eq i32 %197, 30
  %199 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !150
  br i1 %198, label %201, label %203

201:                                              ; preds = %196
  %202 = ashr i64 %200, 63
  br label %206

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %205 = load i64, ptr %204, align 8, !tbaa !150
  br label %206

206:                                              ; preds = %203, %201
  %207 = phi i64 [ %202, %201 ], [ %205, %203 ]
  %208 = icmp eq i32 %3, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = icmp slt i64 %207, 0
  br i1 %210, label %224, label %220

211:                                              ; preds = %206
  %212 = zext i32 %3 to i64
  %213 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !150
  %215 = icmp ugt i8 %214, 15
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %212
  %218 = load i64, ptr %217, align 8, !tbaa !175
  %219 = and i64 %218, %200
  br label %220

220:                                              ; preds = %216, %211, %209
  %221 = phi i64 [ %207, %209 ], [ %207, %211 ], [ 0, %216 ]
  %222 = phi i64 [ %200, %209 ], [ %200, %211 ], [ %219, %216 ]
  call void @real_from_integer(ptr noundef nonnull %7, i32 noundef %1, i64 noundef %222, i64 noundef %221, i32 noundef 1) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #17
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %8, i32 noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %7) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #17
  %223 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %7, i32 noundef %1) #17
  br label %224

224:                                              ; preds = %209, %220
  %225 = phi ptr [ %223, %220 ], [ null, %209 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  br label %711

226:                                              ; preds = %190, %188, %194, %168
  %227 = load i32, ptr %2, align 8
  %228 = and i32 %227, 65535
  %229 = icmp eq i32 %228, 30
  %230 = icmp ult i8 %22, 9
  %231 = select i1 %229, i1 %230, i1 false, !prof !513
  %232 = icmp ne i8 %22, 0
  %233 = select i1 %231, i1 %232, i1 false, !prof !513
  br i1 %233, label %234, label %366, !prof !513

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %236 = load i64, ptr %235, align 8, !tbaa !150
  switch i32 %0, label %362 [
    i32 64, label %241
    i32 51, label %243
    i32 111, label %245
    i32 114, label %247
    i32 115, label %256
    i32 116, label %267
    i32 117, label %281
    i32 118, label %293
    i32 113, label %237
    i32 100, label %363
    i32 99, label %317
    i32 98, label %336
    i32 112, label %711
    i32 101, label %711
    i32 102, label %711
    i32 136, label %711
    i32 137, label %711
    i32 130, label %711
    i32 131, label %711
    i32 132, label %711
  ], !prof !514

237:                                              ; preds = %234
  %238 = add nsw i32 %24, -8
  %239 = zext nneg i32 %24 to i64
  %240 = sext i32 %238 to i64
  br label %307

241:                                              ; preds = %234
  %242 = xor i64 %236, -1
  br label %363

243:                                              ; preds = %234
  %244 = sub nsw i64 0, %236
  br label %363

245:                                              ; preds = %234
  %246 = tail call i64 @llvm.abs.i64(i64 %236, i1 true)
  br label %363

247:                                              ; preds = %234
  %248 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %249 = load i64, ptr %248, align 8, !tbaa !175
  %250 = and i64 %249, %236
  %251 = sub nsw i64 0, %250
  %252 = and i64 %250, %251
  %253 = tail call i32 @exact_log2(i64 noundef %252) #17
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  br label %363

256:                                              ; preds = %234
  %257 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %258 = load i64, ptr %257, align 8, !tbaa !175
  %259 = and i64 %258, %236
  %260 = load i8, ptr %21, align 1, !tbaa !150
  %261 = zext i8 %260 to i32
  %262 = shl nuw nsw i32 %261, 3
  %263 = tail call i32 @floor_log2(i64 noundef %259) #17
  %264 = xor i32 %263, -1
  %265 = add i32 %262, %264
  %266 = sext i32 %265 to i64
  br label %363

267:                                              ; preds = %234
  %268 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %269 = load i64, ptr %268, align 8, !tbaa !175
  %270 = and i64 %269, %236
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load i8, ptr %21, align 1, !tbaa !150
  %274 = zext i8 %273 to i64
  %275 = shl nuw nsw i64 %274, 3
  br label %363

276:                                              ; preds = %267
  %277 = sub nsw i64 0, %270
  %278 = and i64 %270, %277
  %279 = tail call i32 @exact_log2(i64 noundef %278) #17
  %280 = sext i32 %279 to i64
  br label %363

281:                                              ; preds = %234
  %282 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %283 = load i64, ptr %282, align 8, !tbaa !175
  %284 = and i64 %283, %236
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %363, label %286

286:                                              ; preds = %281, %286
  %287 = phi i64 [ %289, %286 ], [ 0, %281 ]
  %288 = phi i64 [ %291, %286 ], [ %284, %281 ]
  %289 = add nuw nsw i64 %287, 1
  %290 = add nsw i64 %288, -1
  %291 = and i64 %290, %288
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %363, label %286, !llvm.loop !515

293:                                              ; preds = %234
  %294 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %295 = load i64, ptr %294, align 8, !tbaa !175
  %296 = and i64 %295, %236
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %363, label %298

298:                                              ; preds = %293, %298
  %299 = phi i64 [ %301, %298 ], [ 0, %293 ]
  %300 = phi i64 [ %303, %298 ], [ %296, %293 ]
  %301 = add nuw nsw i64 %299, 1
  %302 = add nsw i64 %300, -1
  %303 = and i64 %302, %300
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %298, !llvm.loop !516

305:                                              ; preds = %298
  %306 = and i64 %301, 1
  br label %363

307:                                              ; preds = %237, %307
  %308 = phi i64 [ 0, %237 ], [ %315, %307 ]
  %309 = phi i64 [ 0, %237 ], [ %314, %307 ]
  %310 = sub nsw i64 %240, %308
  %311 = ashr i64 %236, %308
  %312 = and i64 %311, 255
  %313 = shl i64 %312, %310
  %314 = or i64 %313, %309
  %315 = add nuw nsw i64 %308, 8
  %316 = icmp ult i64 %315, %239
  br i1 %316, label %307, label %363, !llvm.loop !517

317:                                              ; preds = %234
  %318 = icmp eq i32 %3, 0
  br i1 %318, label %319, label %320, !prof !518

319:                                              ; preds = %317
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1264, ptr noundef nonnull @.str.1) #17
  br label %320

320:                                              ; preds = %317, %319
  %321 = zext i32 %3 to i64
  %322 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !150
  %324 = zext i8 %323 to i64
  %325 = shl nuw nsw i64 %324, 3
  %326 = icmp eq i8 %323, 8
  br i1 %326, label %327, label %330, !prof !518

327:                                              ; preds = %320
  %328 = icmp eq i8 %22, 8
  br i1 %328, label %363, label %329

329:                                              ; preds = %327
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1270, ptr noundef nonnull @.str.1) #17
  br label %363

330:                                              ; preds = %320
  %331 = icmp ult i8 %323, 8
  br i1 %331, label %332, label %711, !prof !519

332:                                              ; preds = %330
  %333 = shl nsw i64 -1, %325
  %334 = xor i64 %333, -1
  %335 = and i64 %236, %334
  br label %363

336:                                              ; preds = %234
  %337 = icmp eq i32 %3, 0
  %338 = select i1 %337, i32 %1, i32 %3
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !150
  %342 = zext i8 %341 to i32
  %343 = shl nuw nsw i32 %342, 3
  %344 = icmp eq i8 %341, 8
  br i1 %344, label %345, label %348

345:                                              ; preds = %336
  %346 = icmp eq i8 %22, 8
  br i1 %346, label %363, label %347

347:                                              ; preds = %345
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1287, ptr noundef nonnull @.str.1) #17
  br label %363

348:                                              ; preds = %336
  %349 = icmp ult i8 %341, 8
  br i1 %349, label %350, label %711

350:                                              ; preds = %348
  %351 = zext nneg i32 %343 to i64
  %352 = shl nsw i64 -1, %351
  %353 = xor i64 %352, -1
  %354 = and i64 %236, %353
  %355 = add nsw i32 %343, -1
  %356 = zext nneg i32 %355 to i64
  %357 = shl nuw i64 1, %356
  %358 = and i64 %354, %357
  %359 = icmp eq i64 %358, 0
  %360 = select i1 %359, i64 0, i64 %352
  %361 = add nsw i64 %360, %354
  br label %363

362:                                              ; preds = %234
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1313, ptr noundef nonnull @.str.1) #17
  unreachable

363:                                              ; preds = %307, %286, %293, %305, %281, %234, %350, %347, %345, %329, %327, %332, %272, %276, %256, %247, %245, %243, %241
  %364 = phi i64 [ %335, %332 ], [ %275, %272 ], [ %280, %276 ], [ %266, %256 ], [ %255, %247 ], [ %246, %245 ], [ %244, %243 ], [ %242, %241 ], [ %236, %327 ], [ %236, %329 ], [ %236, %345 ], [ %236, %347 ], [ %361, %350 ], [ %236, %234 ], [ 0, %281 ], [ 0, %293 ], [ %306, %305 ], [ %289, %286 ], [ %314, %307 ]
  %365 = tail call ptr @gen_int_mode(i64 noundef %364, i32 noundef %1) #17
  br label %711

366:                                              ; preds = %226
  %367 = and i32 %227, 16711680
  %368 = icmp eq i32 %367, 0
  %369 = icmp ult i8 %22, 17
  %370 = select i1 %368, i1 %369, i1 false, !prof !520
  br i1 %370, label %371, label %576, !prof !520

371:                                              ; preds = %366
  %372 = trunc i32 %227 to i16
  switch i16 %372, label %576 [
    i16 32, label %373
    i16 30, label %373
  ]

373:                                              ; preds = %371, %371
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %374 = icmp eq i32 %228, 32
  %375 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %376 = load i64, ptr %375, align 8, !tbaa !150
  br i1 %374, label %377, label %380

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %379 = load i64, ptr %378, align 8, !tbaa !150
  br label %382

380:                                              ; preds = %373
  %381 = ashr i64 %376, 63
  br label %382

382:                                              ; preds = %380, %377
  %383 = phi i64 [ %379, %377 ], [ %381, %380 ]
  switch i32 %0, label %574 [
    i32 64, label %384
    i32 51, label %387
    i32 111, label %389
    i32 114, label %394
    i32 115, label %411
    i32 116, label %434
    i32 117, label %453
    i32 118, label %472
    i32 113, label %494
    i32 100, label %525
    i32 99, label %526
    i32 98, label %538
  ]

384:                                              ; preds = %382
  %385 = xor i64 %376, -1
  store i64 %385, ptr %9, align 8, !tbaa !175
  %386 = xor i64 %383, -1
  store i64 %386, ptr %10, align 8, !tbaa !175
  br label %570

387:                                              ; preds = %382
  %388 = call i32 @neg_double(i64 noundef %376, i64 noundef %383, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  br label %570

389:                                              ; preds = %382
  %390 = icmp slt i64 %383, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %389
  %392 = call i32 @neg_double(i64 noundef %376, i64 noundef %383, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  br label %570

393:                                              ; preds = %389
  store i64 %376, ptr %9, align 8, !tbaa !175
  store i64 %383, ptr %10, align 8, !tbaa !175
  br label %570

394:                                              ; preds = %382
  store i64 0, ptr %10, align 8, !tbaa !175
  %395 = icmp eq i64 %376, 0
  br i1 %395, label %396, label %405

396:                                              ; preds = %394
  %397 = icmp eq i64 %383, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %396
  store i64 0, ptr %9, align 8, !tbaa !175
  br label %570

399:                                              ; preds = %396
  %400 = sub nsw i64 0, %383
  %401 = and i64 %383, %400
  %402 = tail call i32 @exact_log2(i64 noundef %401) #17
  %403 = add nsw i32 %402, 65
  %404 = sext i32 %403 to i64
  store i64 %404, ptr %9, align 8, !tbaa !175
  br label %570

405:                                              ; preds = %394
  %406 = sub i64 0, %376
  %407 = and i64 %376, %406
  %408 = tail call i32 @exact_log2(i64 noundef %407) #17
  %409 = add nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  store i64 %410, ptr %9, align 8, !tbaa !175
  br label %570

411:                                              ; preds = %382
  store i64 0, ptr %10, align 8, !tbaa !175
  %412 = icmp eq i64 %383, 0
  br i1 %412, label %421, label %413

413:                                              ; preds = %411
  %414 = load i8, ptr %21, align 1, !tbaa !150
  %415 = zext i8 %414 to i32
  %416 = shl nuw nsw i32 %415, 3
  %417 = tail call i32 @floor_log2(i64 noundef %383) #17
  %418 = sub i32 %416, %417
  %419 = add i32 %418, -65
  %420 = sext i32 %419 to i64
  store i64 %420, ptr %9, align 8, !tbaa !175
  br label %570

421:                                              ; preds = %411
  %422 = icmp eq i64 %376, 0
  %423 = load i8, ptr %21, align 1, !tbaa !150
  br i1 %422, label %431, label %424

424:                                              ; preds = %421
  %425 = zext i8 %423 to i32
  %426 = shl nuw nsw i32 %425, 3
  %427 = tail call i32 @floor_log2(i64 noundef %376) #17
  %428 = xor i32 %427, -1
  %429 = add i32 %426, %428
  %430 = sext i32 %429 to i64
  store i64 %430, ptr %9, align 8, !tbaa !175
  br label %570

431:                                              ; preds = %421
  %432 = zext i8 %423 to i64
  %433 = shl nuw nsw i64 %432, 3
  store i64 %433, ptr %9, align 8, !tbaa !175
  br label %570

434:                                              ; preds = %382
  store i64 0, ptr %10, align 8, !tbaa !175
  %435 = icmp eq i64 %376, 0
  br i1 %435, label %441, label %436

436:                                              ; preds = %434
  %437 = sub i64 0, %376
  %438 = and i64 %376, %437
  %439 = tail call i32 @exact_log2(i64 noundef %438) #17
  %440 = sext i32 %439 to i64
  store i64 %440, ptr %9, align 8, !tbaa !175
  br label %570

441:                                              ; preds = %434
  %442 = icmp eq i64 %383, 0
  br i1 %442, label %449, label %443

443:                                              ; preds = %441
  %444 = sub nsw i64 0, %383
  %445 = and i64 %383, %444
  %446 = tail call i32 @exact_log2(i64 noundef %445) #17
  %447 = add nsw i32 %446, 64
  %448 = sext i32 %447 to i64
  store i64 %448, ptr %9, align 8, !tbaa !175
  br label %570

449:                                              ; preds = %441
  %450 = load i8, ptr %21, align 1, !tbaa !150
  %451 = zext i8 %450 to i64
  %452 = shl nuw nsw i64 %451, 3
  store i64 %452, ptr %9, align 8, !tbaa !175
  br label %570

453:                                              ; preds = %382
  store i64 0, ptr %10, align 8, !tbaa !175
  store i64 0, ptr %9, align 8, !tbaa !175
  %454 = icmp eq i64 %376, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %458, %453
  %456 = phi i64 [ 0, %453 ], [ %461, %458 ]
  store i64 %456, ptr %9, align 8, !tbaa !175
  %457 = icmp eq i64 %383, 0
  br i1 %457, label %565, label %465

458:                                              ; preds = %453, %458
  %459 = phi i64 [ %463, %458 ], [ %376, %453 ]
  %460 = phi i64 [ %461, %458 ], [ 0, %453 ]
  %461 = add i64 %460, 1
  %462 = add i64 %459, -1
  %463 = and i64 %462, %459
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %455, label %458, !llvm.loop !521

465:                                              ; preds = %455, %465
  %466 = phi i64 [ %470, %465 ], [ %383, %455 ]
  %467 = phi i64 [ %468, %465 ], [ %456, %455 ]
  %468 = add i64 %467, 1
  %469 = add nsw i64 %466, -1
  %470 = and i64 %469, %466
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %565, label %465, !llvm.loop !522

472:                                              ; preds = %382
  store i64 0, ptr %10, align 8, !tbaa !175
  store i64 0, ptr %9, align 8, !tbaa !175
  %473 = icmp eq i64 %376, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %477, %472
  %475 = phi i64 [ 0, %472 ], [ %480, %477 ]
  store i64 %475, ptr %9, align 8, !tbaa !175
  %476 = icmp eq i64 %383, 0
  br i1 %476, label %491, label %484

477:                                              ; preds = %472, %477
  %478 = phi i64 [ %482, %477 ], [ %376, %472 ]
  %479 = phi i64 [ %480, %477 ], [ 0, %472 ]
  %480 = add i64 %479, 1
  %481 = add i64 %478, -1
  %482 = and i64 %481, %478
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %474, label %477, !llvm.loop !523

484:                                              ; preds = %474, %484
  %485 = phi i64 [ %489, %484 ], [ %383, %474 ]
  %486 = phi i64 [ %487, %484 ], [ %475, %474 ]
  %487 = add i64 %486, 1
  %488 = add nsw i64 %485, -1
  %489 = and i64 %488, %485
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %491, label %484, !llvm.loop !524

491:                                              ; preds = %484, %474
  %492 = phi i64 [ %475, %474 ], [ %487, %484 ]
  %493 = and i64 %492, 1
  store i64 %493, ptr %9, align 8, !tbaa !175
  br label %570

494:                                              ; preds = %382
  store i64 0, ptr %10, align 8, !tbaa !175
  store i64 0, ptr %9, align 8, !tbaa !175
  %495 = icmp eq i8 %22, 0
  br i1 %495, label %567, label %496

496:                                              ; preds = %494
  %497 = zext nneg i32 %24 to i64
  %498 = zext nneg i32 %24 to i64
  br label %499

499:                                              ; preds = %496, %520
  %500 = phi i64 [ 0, %496 ], [ %523, %520 ]
  %501 = phi i64 [ 0, %496 ], [ %522, %520 ]
  %502 = phi i64 [ 0, %496 ], [ %521, %520 ]
  %503 = sub nsw i64 %497, %500
  %504 = add nsw i64 %503, -8
  %505 = icmp ult i64 %500, 64
  %506 = lshr i64 %376, %500
  %507 = add nsw i64 %500, -64
  %508 = ashr i64 %383, %507
  %509 = select i1 %505, i64 %506, i64 %508
  %510 = and i64 %509, 255
  %511 = and i64 %504, 4294967232
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %499
  %514 = shl nuw i64 %510, %504
  %515 = or i64 %502, %514
  br label %520

516:                                              ; preds = %499
  %517 = add nsw i64 %503, -72
  %518 = shl i64 %510, %517
  %519 = or i64 %501, %518
  br label %520

520:                                              ; preds = %516, %513
  %521 = phi i64 [ %502, %516 ], [ %515, %513 ]
  %522 = phi i64 [ %519, %516 ], [ %501, %513 ]
  %523 = add nuw nsw i64 %500, 8
  %524 = icmp ult i64 %523, %498
  br i1 %524, label %499, label %567, !llvm.loop !525

525:                                              ; preds = %382
  store i64 %376, ptr %9, align 8, !tbaa !175
  store i64 %383, ptr %10, align 8, !tbaa !175
  br label %570

526:                                              ; preds = %382
  %527 = icmp eq i32 %3, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %526
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1435, ptr noundef nonnull @.str.1) #17
  br label %529

529:                                              ; preds = %526, %528
  %530 = zext i32 %3 to i64
  %531 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %530
  %532 = load i8, ptr %531, align 1, !tbaa !150
  %533 = icmp ugt i8 %532, 8
  br i1 %533, label %574, label %534

534:                                              ; preds = %529
  store i64 0, ptr %10, align 8, !tbaa !175
  %535 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %530
  %536 = load i64, ptr %535, align 8, !tbaa !175
  %537 = and i64 %536, %376
  store i64 %537, ptr %9, align 8, !tbaa !175
  br label %570

538:                                              ; preds = %382
  %539 = icmp eq i32 %3, 0
  br i1 %539, label %574, label %540

540:                                              ; preds = %538
  %541 = zext i32 %3 to i64
  %542 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !150
  %544 = icmp ugt i8 %543, 8
  br i1 %544, label %574, label %545

545:                                              ; preds = %540
  %546 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %541
  %547 = load i64, ptr %546, align 8, !tbaa !175
  %548 = and i64 %547, %376
  store i64 %548, ptr %9, align 8, !tbaa !175
  %549 = shl nuw nsw i8 %543, 3
  %550 = icmp eq i8 %543, 8
  br i1 %550, label %562, label %551

551:                                              ; preds = %545
  %552 = zext nneg i8 %549 to i64
  %553 = add nuw nsw i64 %552, 4294967295
  %554 = and i64 %553, 4294967295
  %555 = shl nuw i64 1, %554
  %556 = and i64 %548, %555
  %557 = icmp eq i64 %556, 0
  br i1 %557, label %562, label %558

558:                                              ; preds = %551
  %559 = zext nneg i8 %549 to i64
  %560 = shl nsw i64 -1, %559
  %561 = add i64 %548, %560
  store i64 %561, ptr %9, align 8, !tbaa !175
  br label %562

562:                                              ; preds = %558, %551, %545
  %563 = load i64, ptr %9, align 8, !tbaa !175
  %564 = ashr i64 %563, 63
  store i64 %564, ptr %10, align 8, !tbaa !175
  br label %570

565:                                              ; preds = %465, %455
  %566 = phi i64 [ %456, %455 ], [ %468, %465 ]
  store i64 %566, ptr %9, align 8, !tbaa !175
  br label %570

567:                                              ; preds = %520, %494
  %568 = phi i64 [ 0, %494 ], [ %521, %520 ]
  %569 = phi i64 [ 0, %494 ], [ %522, %520 ]
  store i64 %569, ptr %10, align 8, !tbaa !175
  store i64 %568, ptr %9, align 8, !tbaa !175
  br label %570

570:                                              ; preds = %567, %565, %436, %449, %443, %413, %431, %424, %405, %399, %398, %391, %393, %562, %534, %525, %491, %387, %384
  %571 = load i64, ptr %9, align 8, !tbaa !175
  %572 = load i64, ptr %10, align 8, !tbaa !175
  %573 = call ptr @immed_double_const(i64 noundef %571, i64 noundef %572, i32 noundef %1) #17
  br label %574

574:                                              ; preds = %382, %538, %540, %529, %570
  %575 = phi ptr [ %573, %570 ], [ null, %529 ], [ null, %540 ], [ null, %538 ], [ null, %382 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  br label %711

576:                                              ; preds = %371, %366
  %577 = icmp eq i32 %228, 32
  br i1 %577, label %578, label %711, !prof !520

578:                                              ; preds = %576
  %579 = and i8 %118, -2
  %580 = icmp eq i8 %579, 8
  br i1 %580, label %581, label %625

581:                                              ; preds = %578
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #17
  %582 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %582, i64 32, i1 false), !tbaa.struct !177
  switch i32 %0, label %620 [
    i32 112, label %583
    i32 111, label %603
    i32 51, label %604
    i32 102, label %605
    i32 101, label %621
    i32 104, label %606
    i32 64, label %608
  ]

583:                                              ; preds = %581
  %584 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %601, label %586

586:                                              ; preds = %583
  switch i8 %118, label %601 [
    i8 8, label %587
    i8 9, label %587
    i8 11, label %587
    i8 17, label %587
  ]

587:                                              ; preds = %586, %586, %586, %586
  %588 = add i32 %1, -38
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %589
  %591 = load ptr, ptr %590, align 8, !tbaa !139
  %592 = getelementptr inbounds %struct.real_format, ptr %591, i64 0, i32 11
  %593 = load i8, ptr %592, align 2, !tbaa !178
  %594 = icmp eq i8 %593, 0
  %595 = load i32, ptr @flag_finite_math_only, align 4
  %596 = icmp ne i32 %595, 0
  %597 = select i1 %594, i1 true, i1 %596
  br i1 %597, label %601, label %598

598:                                              ; preds = %587
  %599 = call zeroext i8 @real_isnan(ptr noundef nonnull %11) #17
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %601, label %623

601:                                              ; preds = %586, %598, %587, %583
  %602 = call zeroext i8 @real_sqrt(ptr noundef nonnull %12, i32 noundef %1, ptr noundef nonnull %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !177
  br label %621

603:                                              ; preds = %581
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #17
  call void @real_arithmetic2(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %13, i32 noundef 82, ptr noundef nonnull %11, ptr noundef null) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #17
  br label %621

604:                                              ; preds = %581
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #17
  call void @real_arithmetic2(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %14, i32 noundef 79, ptr noundef nonnull %11, ptr noundef null) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #17
  br label %621

605:                                              ; preds = %581
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %11, i32 noundef %1, ptr noundef nonnull byval(%struct.real_value) align 8 %582) #17
  br label %621

606:                                              ; preds = %581
  %607 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %11, i32 noundef 77, ptr noundef nonnull %11, ptr noundef null) #17
  br label %621

608:                                              ; preds = %581
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #17
  %609 = lshr i32 %227, 16
  %610 = and i32 %609, 255
  %611 = call i64 @real_to_target(ptr noundef nonnull %15, ptr noundef nonnull %11, i32 noundef %610) #17
  br label %612

612:                                              ; preds = %608, %612
  %613 = phi i64 [ 0, %608 ], [ %617, %612 ]
  %614 = getelementptr inbounds [4 x i64], ptr %15, i64 0, i64 %613
  %615 = load i64, ptr %614, align 8, !tbaa !175
  %616 = xor i64 %615, -1
  store i64 %616, ptr %614, align 8, !tbaa !175
  %617 = add nuw nsw i64 %613, 1
  %618 = icmp eq i64 %617, 4
  br i1 %618, label %619, label %612, !llvm.loop !526

619:                                              ; preds = %612
  call void @real_from_target(ptr noundef nonnull %11, ptr noundef nonnull %15, i32 noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #17
  br label %621

620:                                              ; preds = %581
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1511, ptr noundef nonnull @.str.1) #17
  br label %621

621:                                              ; preds = %620, %619, %606, %581, %605, %604, %603, %601
  %622 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %11, i32 noundef %1) #17
  br label %623

623:                                              ; preds = %598, %621
  %624 = phi ptr [ %622, %621 ], [ null, %598 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  br label %711

625:                                              ; preds = %578
  br i1 %577, label %626, label %711, !prof !520

626:                                              ; preds = %625
  %627 = lshr i32 %227, 16
  %628 = and i32 %627, 255
  %629 = zext nneg i32 %628 to i64
  %630 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %629
  %631 = load i8, ptr %630, align 1, !tbaa !150
  %632 = and i8 %631, -2
  %633 = icmp eq i8 %632, 8
  br i1 %633, label %634, label %711

634:                                              ; preds = %626
  %635 = icmp eq i8 %118, 2
  %636 = select i1 %635, i1 %369, i1 false
  %637 = select i1 %636, i1 %232, i1 false
  br i1 %637, label %638, label %711

638:                                              ; preds = %634
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #17
  %639 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %639, i64 32, i1 false), !tbaa.struct !177
  switch i32 %0, label %704 [
    i32 104, label %640
    i32 106, label %676
  ]

640:                                              ; preds = %638
  %641 = call zeroext i8 @real_isnan(ptr noundef nonnull %18) #17
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %645, label %643

643:                                              ; preds = %640
  %644 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %709

645:                                              ; preds = %640
  %646 = icmp ugt i8 %22, 8
  br i1 %646, label %647, label %652

647:                                              ; preds = %645
  %648 = add nsw i32 %24, -65
  %649 = zext nneg i32 %648 to i64
  %650 = shl nsw i64 -1, %649
  %651 = xor i64 %650, -1
  br label %657

652:                                              ; preds = %645
  %653 = add nsw i32 %24, -1
  %654 = zext nneg i32 %653 to i64
  %655 = shl nsw i64 -1, %654
  %656 = xor i64 %655, -1
  br label %657

657:                                              ; preds = %652, %647
  %658 = phi i64 [ %651, %647 ], [ 0, %652 ]
  %659 = phi i64 [ -1, %647 ], [ %656, %652 ]
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %659, i64 noundef %658, i32 noundef 0) #17
  %660 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %19, ptr noundef nonnull %18) #17
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %663, label %662

662:                                              ; preds = %657
  store i64 %658, ptr %16, align 8, !tbaa !175
  store i64 %659, ptr %17, align 8, !tbaa !175
  br label %705

663:                                              ; preds = %657
  %664 = add nsw i32 %24, -65
  %665 = zext nneg i32 %664 to i64
  %666 = shl nsw i64 -1, %665
  %667 = add nsw i32 %24, -1
  %668 = zext nneg i32 %667 to i64
  %669 = shl nsw i64 -1, %668
  %670 = select i1 %646, i64 %666, i64 -1
  %671 = select i1 %646, i64 0, i64 %669
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %671, i64 noundef %670, i32 noundef 0) #17
  %672 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %18, ptr noundef nonnull %19) #17
  %673 = icmp eq i8 %672, 0
  br i1 %673, label %675, label %674

674:                                              ; preds = %663
  store i64 %670, ptr %16, align 8, !tbaa !175
  store i64 %671, ptr %17, align 8, !tbaa !175
  br label %705

675:                                              ; preds = %663
  call void @real_to_integer2(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18) #17
  br label %705

676:                                              ; preds = %638
  %677 = call zeroext i8 @real_isnan(ptr noundef nonnull %18) #17
  %678 = icmp eq i8 %677, 0
  br i1 %678, label %679, label %682

679:                                              ; preds = %676
  %680 = call zeroext i8 @real_isneg(ptr noundef nonnull %18) #17
  %681 = icmp eq i8 %680, 0
  br i1 %681, label %684, label %682

682:                                              ; preds = %679, %676
  %683 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %709

684:                                              ; preds = %679
  %685 = icmp eq i8 %22, 16
  br i1 %685, label %697, label %686

686:                                              ; preds = %684
  %687 = icmp ugt i8 %22, 7
  br i1 %687, label %688, label %693

688:                                              ; preds = %686
  %689 = add nsw i32 %24, -64
  %690 = zext nneg i32 %689 to i64
  %691 = shl nsw i64 -1, %690
  %692 = xor i64 %691, -1
  br label %697

693:                                              ; preds = %686
  %694 = zext nneg i32 %24 to i64
  %695 = shl nsw i64 -1, %694
  %696 = xor i64 %695, -1
  br label %697

697:                                              ; preds = %684, %688, %693
  %698 = phi i64 [ %692, %688 ], [ 0, %693 ], [ -1, %684 ]
  %699 = phi i64 [ -1, %688 ], [ %696, %693 ], [ -1, %684 ]
  call void @real_from_integer(ptr noundef nonnull %19, i32 noundef 0, i64 noundef %699, i64 noundef %698, i32 noundef 1) #17
  %700 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %19, ptr noundef nonnull %18) #17
  %701 = icmp eq i8 %700, 0
  br i1 %701, label %703, label %702

702:                                              ; preds = %697
  store i64 %698, ptr %16, align 8, !tbaa !175
  store i64 %699, ptr %17, align 8, !tbaa !175
  br label %705

703:                                              ; preds = %697
  call void @real_to_integer2(ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %18) #17
  br label %705

704:                                              ; preds = %638
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1611, ptr noundef nonnull @.str.1) #17
  br label %705

705:                                              ; preds = %704, %703, %702, %675, %674, %662
  %706 = load i64, ptr %17, align 8, !tbaa !175
  %707 = load i64, ptr %16, align 8, !tbaa !175
  %708 = call ptr @immed_double_const(i64 noundef %706, i64 noundef %707, i32 noundef %1) #17
  br label %709

709:                                              ; preds = %705, %682, %643
  %710 = phi ptr [ %708, %705 ], [ %683, %682 ], [ %644, %643 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #17
  br label %711

711:                                              ; preds = %155, %576, %234, %234, %234, %234, %234, %234, %234, %626, %634, %625, %363, %330, %348, %234, %166, %709, %623, %574, %224, %185, %114
  %712 = phi ptr [ %115, %114 ], [ %187, %185 ], [ %225, %224 ], [ %575, %574 ], [ %624, %623 ], [ %710, %709 ], [ %167, %166 ], [ %365, %363 ], [ null, %330 ], [ null, %348 ], [ null, %234 ], [ null, %626 ], [ null, %625 ], [ null, %634 ], [ null, %234 ], [ null, %234 ], [ null, %234 ], [ null, %234 ], [ null, %234 ], [ null, %234 ], [ null, %234 ], [ null, %576 ], [ null, %155 ]
  ret ptr %712
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_VECTOR(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @real_value_truncate(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @neg_double(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_sqrt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @real_arithmetic2(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @real_to_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @real_from_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_const_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !527 {
  %5 = alloca [4 x i64], align 16
  %6 = alloca [4 x i64], align 16
  %7 = alloca %struct.real_value, align 8
  %8 = alloca %struct.real_value, align 8
  %9 = alloca %struct.real_value, align 8
  %10 = alloca %struct.real_value, align 8
  %11 = alloca %struct.real_value, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !150
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 3
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %22 = load i8, ptr %21, align 1, !tbaa !150
  switch i8 %22, label %23 [
    i8 12, label %27
    i8 17, label %27
    i8 13, label %27
    i8 14, label %27
    i8 15, label %27
  ], !prof !170

23:                                               ; preds = %4
  %24 = icmp eq i8 %22, 16
  %25 = icmp ne i32 %0, 125
  %26 = and i1 %25, %24
  br i1 %26, label %29, label %82, !prof !171

27:                                               ; preds = %4, %4, %4, %4, %4
  %28 = icmp eq i32 %0, 125
  br i1 %28, label %82, label %29

29:                                               ; preds = %23, %27
  %30 = load i32, ptr %2, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 33
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load i32, ptr %3, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 33
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  %38 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %16
  %39 = load i8, ptr %38, align 1, !tbaa !150
  %40 = zext i8 %39 to i32
  %41 = lshr i32 %30, 16
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !150
  %46 = lshr i32 %34, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !150
  %51 = tail call ptr @rtvec_alloc(i32 noundef %40) #17
  %52 = icmp eq i8 %45, %39
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3099, ptr noundef nonnull @.str.1) #17
  br label %54

54:                                               ; preds = %37, %53
  %55 = icmp eq i8 %50, %39
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3100, ptr noundef nonnull @.str.1) #17
  br label %57

57:                                               ; preds = %54, %56
  %58 = icmp eq i8 %39, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %16
  %61 = load i8, ptr %60, align 1, !tbaa !150
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %65 = zext i8 %39 to i64
  br label %66

66:                                               ; preds = %59, %76
  %67 = phi i64 [ 0, %59 ], [ %78, %76 ]
  %68 = load ptr, ptr %63, align 8, !tbaa !150
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !139
  %71 = load ptr, ptr %64, align 8, !tbaa !150
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %71, i64 0, i32 1, i64 %67
  %73 = load ptr, ptr %72, align 8, !tbaa !139
  %74 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %62, ptr noundef %70, ptr noundef %73)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %657, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.rtvec_def, ptr %51, i64 0, i32 1, i64 %67
  store ptr %74, ptr %77, align 8, !tbaa !139
  %78 = add nuw nsw i64 %67, 1
  %79 = icmp eq i64 %78, %65
  br i1 %79, label %80, label %66, !llvm.loop !172

80:                                               ; preds = %76, %57
  %81 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %51) #17
  br label %657

82:                                               ; preds = %29, %23, %33, %27
  switch i8 %22, label %83 [
    i8 12, label %87
    i8 17, label %87
    i8 13, label %87
    i8 14, label %87
    i8 15, label %87
  ], !prof !170

83:                                               ; preds = %82
  %84 = icmp eq i8 %22, 16
  %85 = icmp eq i32 %0, 125
  %86 = and i1 %85, %84
  br i1 %86, label %89, label %177, !prof !171

87:                                               ; preds = %82, %82, %82, %82, %82
  %88 = icmp eq i32 %0, 125
  br i1 %88, label %89, label %177

89:                                               ; preds = %83, %87
  %90 = load i32, ptr %2, align 8
  %91 = and i32 %90, 65535
  %92 = add nsw i32 %91, -30
  %93 = icmp ult i32 %92, 3
  br i1 %93, label %94, label %177

94:                                               ; preds = %89
  %95 = load i32, ptr %3, align 8
  %96 = and i32 %95, 65535
  %97 = add nsw i32 %96, -30
  %98 = icmp ult i32 %97, 3
  br i1 %98, label %99, label %177

99:                                               ; preds = %94
  %100 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %16
  %101 = load i8, ptr %100, align 1, !tbaa !150
  %102 = zext i8 %101 to i32
  %103 = tail call ptr @rtvec_alloc(i32 noundef %102) #17
  %104 = icmp ugt i8 %101, 1
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3126, ptr noundef nonnull @.str.1) #17
  br label %106

106:                                              ; preds = %99, %105
  %107 = icmp eq i8 %101, 2
  %108 = load i32, ptr %2, align 8
  br i1 %107, label %109, label %121

109:                                              ; preds = %106
  %110 = and i32 %108, 65535
  %111 = icmp eq i32 %110, 33
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3129, ptr noundef nonnull @.str.1) #17
  br label %113

113:                                              ; preds = %109, %112
  %114 = load i32, ptr %3, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 33
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3130, ptr noundef nonnull @.str.1) #17
  br label %118

118:                                              ; preds = %113, %117
  %119 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1
  store ptr %2, ptr %119, align 8, !tbaa !139
  %120 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 1
  store ptr %3, ptr %120, align 8, !tbaa !139
  br label %175

121:                                              ; preds = %106
  %122 = lshr i32 %108, 16
  %123 = and i32 %122, 255
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !150
  %127 = zext i8 %126 to i32
  %128 = load i32, ptr %3, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !150
  %134 = zext i8 %133 to i32
  %135 = and i32 %108, 65535
  %136 = icmp eq i32 %135, 33
  br i1 %136, label %138, label %137

137:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3141, ptr noundef nonnull @.str.1) #17
  br label %138

138:                                              ; preds = %121, %137
  %139 = load i32, ptr %3, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 33
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3142, ptr noundef nonnull @.str.1) #17
  br label %143

143:                                              ; preds = %138, %142
  %144 = add nuw nsw i32 %134, %127
  %145 = icmp eq i32 %144, %102
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3143, ptr noundef nonnull @.str.1) #17
  br label %147

147:                                              ; preds = %143, %146
  %148 = icmp eq i8 %126, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %151 = zext i8 %126 to i64
  br label %158

152:                                              ; preds = %158, %147
  %153 = icmp eq i8 %133, 0
  br i1 %153, label %175, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %156 = zext i8 %126 to i64
  %157 = zext i8 %133 to i64
  br label %166

158:                                              ; preds = %149, %158
  %159 = phi i64 [ 0, %149 ], [ %164, %158 ]
  %160 = load ptr, ptr %150, align 8, !tbaa !150
  %161 = getelementptr inbounds %struct.rtvec_def, ptr %160, i64 0, i32 1, i64 %159
  %162 = load ptr, ptr %161, align 8, !tbaa !139
  %163 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1, i64 %159
  store ptr %162, ptr %163, align 8, !tbaa !139
  %164 = add nuw nsw i64 %159, 1
  %165 = icmp eq i64 %164, %151
  br i1 %165, label %152, label %158, !llvm.loop !173

166:                                              ; preds = %154, %166
  %167 = phi i64 [ 0, %154 ], [ %173, %166 ]
  %168 = load ptr, ptr %155, align 8, !tbaa !150
  %169 = getelementptr inbounds %struct.rtvec_def, ptr %168, i64 0, i32 1, i64 %167
  %170 = load ptr, ptr %169, align 8, !tbaa !139
  %171 = add nuw nsw i64 %167, %156
  %172 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1, i64 %171
  store ptr %170, ptr %172, align 8, !tbaa !139
  %173 = add nuw nsw i64 %167, 1
  %174 = icmp eq i64 %173, %157
  br i1 %174, label %175, label %166, !llvm.loop !174

175:                                              ; preds = %166, %152, %118
  %176 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %103) #17
  br label %657

177:                                              ; preds = %89, %83, %94, %87
  %178 = and i8 %22, -2
  %179 = icmp eq i8 %178, 8
  br i1 %179, label %180, label %401, !prof !171

180:                                              ; preds = %177
  %181 = load i32, ptr %2, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 32
  br i1 %183, label %184, label %401

184:                                              ; preds = %180
  %185 = load i32, ptr %3, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 32
  br i1 %187, label %188, label %401

188:                                              ; preds = %184
  %189 = lshr i32 %181, 16
  %190 = and i32 %189, 255
  %191 = icmp eq i32 %190, %1
  br i1 %191, label %192, label %401

192:                                              ; preds = %188
  %193 = lshr i32 %185, 16
  %194 = and i32 %193, 255
  %195 = icmp eq i32 %194, %1
  br i1 %195, label %196, label %401

196:                                              ; preds = %192
  %197 = add i32 %0, -61
  %198 = icmp ult i32 %197, 3
  br i1 %198, label %199, label %233

199:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #17
  %200 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %201 = call i64 @real_to_target(ptr noundef nonnull %5, ptr noundef nonnull %200, i32 noundef %190) #17
  %202 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %203 = load i32, ptr %3, align 8
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 255
  %206 = call i64 @real_to_target(ptr noundef nonnull %6, ptr noundef nonnull %202, i32 noundef %205) #17
  br label %207

207:                                              ; preds = %199, %228
  %208 = phi i64 [ 0, %199 ], [ %229, %228 ]
  switch i32 %0, label %227 [
    i32 61, label %209
    i32 62, label %215
    i32 63, label %221
  ]

209:                                              ; preds = %207
  %210 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %208
  %211 = load i64, ptr %210, align 8, !tbaa !175
  %212 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %208
  %213 = load i64, ptr %212, align 8, !tbaa !175
  %214 = and i64 %213, %211
  store i64 %214, ptr %212, align 8, !tbaa !175
  br label %228

215:                                              ; preds = %207
  %216 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %208
  %217 = load i64, ptr %216, align 8, !tbaa !175
  %218 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %208
  %219 = load i64, ptr %218, align 8, !tbaa !175
  %220 = or i64 %219, %217
  store i64 %220, ptr %218, align 8, !tbaa !175
  br label %228

221:                                              ; preds = %207
  %222 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %208
  %223 = load i64, ptr %222, align 8, !tbaa !175
  %224 = getelementptr inbounds [4 x i64], ptr %5, i64 0, i64 %208
  %225 = load i64, ptr %224, align 8, !tbaa !175
  %226 = xor i64 %225, %223
  store i64 %226, ptr %224, align 8, !tbaa !175
  br label %228

227:                                              ; preds = %207
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3186, ptr noundef nonnull @.str.1) #17
  br label %228

228:                                              ; preds = %209, %215, %221, %227
  %229 = add nuw nsw i64 %208, 1
  %230 = icmp eq i64 %229, 4
  br i1 %230, label %231, label %207, !llvm.loop !176

231:                                              ; preds = %228
  call void @real_from_target(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %1) #17
  %232 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %7, i32 noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %657

233:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #17
  %234 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %234, i64 32, i1 false), !tbaa.struct !177
  %235 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %235, i64 32, i1 false), !tbaa.struct !177
  call void @real_convert(ptr noundef nonnull %8, i32 noundef %1, ptr noundef nonnull %8) #17
  call void @real_convert(ptr noundef nonnull %9, i32 noundef %1, ptr noundef nonnull %9) #17
  %236 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %256, label %238

238:                                              ; preds = %233
  switch i8 %22, label %256 [
    i8 8, label %239
    i8 9, label %239
    i8 11, label %239
    i8 17, label %239
  ]

239:                                              ; preds = %238, %238, %238, %238
  %240 = add nsw i32 %1, -38
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !139
  %244 = getelementptr inbounds %struct.real_format, ptr %243, i64 0, i32 11
  %245 = load i8, ptr %244, align 2, !tbaa !178
  %246 = icmp eq i8 %245, 0
  %247 = load i32, ptr @flag_finite_math_only, align 4
  %248 = icmp ne i32 %247, 0
  %249 = select i1 %246, i1 true, i1 %248
  br i1 %249, label %256, label %250

250:                                              ; preds = %239
  %251 = call zeroext i8 @real_isnan(ptr noundef nonnull %8) #17
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %399

253:                                              ; preds = %250
  %254 = call zeroext i8 @real_isnan(ptr noundef nonnull %9) #17
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %399

256:                                              ; preds = %253, %238, %239, %233
  %257 = icmp eq i32 %0, 55
  br i1 %257, label %258, label %273

258:                                              ; preds = %256
  %259 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %9, ptr noundef nonnull @dconst0) #17
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %273, label %261

261:                                              ; preds = %258
  %262 = load i32, ptr @flag_trapping_math, align 4, !tbaa !154
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %399

264:                                              ; preds = %261
  switch i8 %22, label %399 [
    i8 8, label %265
    i8 9, label %265
    i8 11, label %265
    i8 17, label %265
  ]

265:                                              ; preds = %264, %264, %264, %264
  %266 = add nsw i32 %1, -38
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !139
  %270 = getelementptr inbounds %struct.real_format, ptr %269, i64 0, i32 12
  %271 = load i8, ptr %270, align 1, !tbaa !180
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %399, label %273

273:                                              ; preds = %265, %258, %256
  switch i8 %22, label %310 [
    i8 8, label %274
    i8 9, label %274
    i8 11, label %274
    i8 17, label %274
  ]

274:                                              ; preds = %273, %273, %273, %273
  %275 = add nsw i32 %1, -38
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !139
  %279 = getelementptr inbounds %struct.real_format, ptr %278, i64 0, i32 12
  %280 = load i8, ptr %279, align 1, !tbaa !180
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %310, label %282

282:                                              ; preds = %274
  switch i8 %22, label %310 [
    i8 8, label %283
    i8 9, label %283
    i8 11, label %283
    i8 17, label %283
  ]

283:                                              ; preds = %282, %282, %282, %282
  %284 = add nsw i32 %1, -38
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !139
  %288 = getelementptr inbounds %struct.real_format, ptr %287, i64 0, i32 11
  %289 = load i8, ptr %288, align 2, !tbaa !178
  %290 = icmp ne i8 %289, 0
  %291 = load i32, ptr @flag_finite_math_only, align 4
  %292 = icmp eq i32 %291, 0
  %293 = select i1 %290, i1 %292, i1 false
  %294 = load i32, ptr @flag_trapping_math, align 4
  %295 = icmp ne i32 %294, 0
  %296 = select i1 %293, i1 %295, i1 false
  br i1 %296, label %297, label %310

297:                                              ; preds = %283
  %298 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #17
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %310, label %300

300:                                              ; preds = %297
  %301 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #17
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %300
  %304 = call zeroext i8 @real_isneg(ptr noundef nonnull %8) #17
  %305 = call zeroext i8 @real_isneg(ptr noundef nonnull %9) #17
  switch i32 %0, label %348 [
    i32 49, label %306
    i32 50, label %308
    i32 55, label %399
    i32 52, label %312
  ]

306:                                              ; preds = %303
  %307 = icmp eq i8 %304, %305
  br i1 %307, label %310, label %399

308:                                              ; preds = %303
  %309 = icmp eq i8 %304, %305
  br i1 %309, label %399, label %310

310:                                              ; preds = %308, %306, %282, %273, %300, %297, %283, %274
  %311 = icmp eq i32 %0, 52
  br i1 %311, label %312, label %348

312:                                              ; preds = %303, %310
  switch i8 %22, label %348 [
    i8 8, label %313
    i8 9, label %313
    i8 11, label %313
    i8 17, label %313
  ]

313:                                              ; preds = %312, %312, %312, %312
  %314 = add nsw i32 %1, -38
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !139
  %318 = getelementptr inbounds %struct.real_format, ptr %317, i64 0, i32 12
  %319 = load i8, ptr %318, align 1, !tbaa !180
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %348, label %321

321:                                              ; preds = %313
  switch i8 %22, label %348 [
    i8 8, label %322
    i8 9, label %322
    i8 11, label %322
    i8 17, label %322
  ]

322:                                              ; preds = %321, %321, %321, %321
  %323 = add nsw i32 %1, -38
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !139
  %327 = getelementptr inbounds %struct.real_format, ptr %326, i64 0, i32 11
  %328 = load i8, ptr %327, align 2, !tbaa !178
  %329 = icmp ne i8 %328, 0
  %330 = load i32, ptr @flag_finite_math_only, align 4
  %331 = icmp eq i32 %330, 0
  %332 = select i1 %329, i1 %331, i1 false
  %333 = load i32, ptr @flag_trapping_math, align 4
  %334 = icmp ne i32 %333, 0
  %335 = select i1 %332, i1 %334, i1 false
  br i1 %335, label %336, label %348

336:                                              ; preds = %322
  %337 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #17
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %336
  %340 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %9, ptr noundef nonnull @dconst0) #17
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %342, label %399

342:                                              ; preds = %339, %336
  %343 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #17
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %8, ptr noundef nonnull @dconst0) #17
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %399

348:                                              ; preds = %345, %342, %312, %303, %321, %322, %313, %310
  %349 = call i32 @rtx_to_tree_code(i32 noundef %0) #17
  %350 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %10, i32 noundef %349, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  call void @real_convert(ptr noundef nonnull %11, i32 noundef %1, ptr noundef nonnull %10) #17
  %351 = load i32, ptr @flag_trapping_math, align 4, !tbaa !154
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %371, label %353

353:                                              ; preds = %348
  switch i8 %22, label %371 [
    i8 8, label %354
    i8 9, label %354
    i8 11, label %354
    i8 17, label %354
  ]

354:                                              ; preds = %353, %353, %353, %353
  %355 = add nsw i32 %1, -38
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !139
  %359 = getelementptr inbounds %struct.real_format, ptr %358, i64 0, i32 12
  %360 = load i8, ptr %359, align 1, !tbaa !180
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %371, label %362

362:                                              ; preds = %354
  %363 = call zeroext i8 @real_isinf(ptr noundef nonnull %11) #17
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %371, label %365

365:                                              ; preds = %362
  %366 = call zeroext i8 @real_isinf(ptr noundef nonnull %8) #17
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %365
  %369 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #17
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %399, label %371

371:                                              ; preds = %353, %368, %365, %362, %354, %348
  %372 = load i32, ptr @flag_rounding_math, align 4, !tbaa !154
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %392

374:                                              ; preds = %371
  switch i8 %22, label %397 [
    i8 8, label %375
    i8 9, label %375
    i8 11, label %375
    i8 17, label %375
  ]

375:                                              ; preds = %374, %374, %374, %374
  %376 = add nsw i32 %1, -38
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !139
  %380 = getelementptr inbounds %struct.real_format, ptr %379, i64 0, i32 4
  %381 = load i32, ptr %380, align 8, !tbaa !181
  %382 = add nsw i32 %1, -38
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !139
  %386 = getelementptr inbounds %struct.real_format, ptr %385, i64 0, i32 3
  %387 = load i32, ptr %386, align 4, !tbaa !182
  %388 = icmp sge i32 %381, %387
  %389 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %388, i1 true, i1 %390
  br i1 %391, label %397, label %392

392:                                              ; preds = %375, %371
  %393 = icmp eq i8 %350, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %392
  %395 = call zeroext i8 @real_identical(ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %374, %394, %375
  %398 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %11, i32 noundef %1) #17
  br label %399

399:                                              ; preds = %394, %368, %306, %303, %265, %392, %339, %345, %308, %261, %264, %250, %253, %397
  %400 = phi ptr [ %398, %397 ], [ null, %253 ], [ null, %250 ], [ null, %264 ], [ null, %261 ], [ null, %308 ], [ null, %345 ], [ null, %339 ], [ null, %392 ], [ null, %265 ], [ null, %303 ], [ null, %306 ], [ null, %368 ], [ null, %394 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #17
  br label %657

401:                                              ; preds = %177, %192, %188, %184, %180
  %402 = icmp eq i8 %22, 2
  %403 = icmp eq i8 %18, 16
  %404 = select i1 %402, i1 %403, i1 false, !prof !183
  br i1 %404, label %405, label %522, !prof !171

405:                                              ; preds = %401
  %406 = load i32, ptr %2, align 8
  %407 = trunc i32 %406 to i16
  switch i16 %407, label %522 [
    i16 32, label %408
    i16 30, label %408
  ]

408:                                              ; preds = %405, %405
  %409 = load i32, ptr %3, align 8
  %410 = trunc i32 %409 to i16
  switch i16 %410, label %522 [
    i16 32, label %411
    i16 30, label %411
  ]

411:                                              ; preds = %408, %408
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #17
  %412 = and i32 %406, 65535
  %413 = icmp eq i32 %412, 32
  %414 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %415 = load i64, ptr %414, align 8, !tbaa !150
  br i1 %413, label %416, label %419

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %418 = load i64, ptr %417, align 8, !tbaa !150
  br label %421

419:                                              ; preds = %411
  %420 = ashr i64 %415, 63
  br label %421

421:                                              ; preds = %419, %416
  %422 = phi i64 [ %418, %416 ], [ %420, %419 ]
  %423 = and i32 %409, 65535
  %424 = icmp eq i32 %423, 32
  %425 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %426 = load i64, ptr %425, align 8, !tbaa !150
  br i1 %424, label %427, label %430

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %429 = load i64, ptr %428, align 8, !tbaa !150
  br label %432

430:                                              ; preds = %421
  %431 = ashr i64 %426, 63
  br label %432

432:                                              ; preds = %430, %427
  %433 = phi i64 [ %429, %427 ], [ %431, %430 ]
  switch i32 %0, label %520 [
    i32 50, label %434
    i32 49, label %438
    i32 52, label %442
    i32 55, label %444
    i32 58, label %447
    i32 59, label %450
    i32 60, label %453
    i32 61, label %456
    i32 62, label %459
    i32 63, label %462
    i32 70, label %465
    i32 71, label %473
    i32 72, label %481
    i32 73, label %489
    i32 68, label %497
    i32 67, label %497
    i32 65, label %497
    i32 66, label %497
    i32 69, label %497
  ]

434:                                              ; preds = %432
  %435 = call i32 @neg_double(i64 noundef %426, i64 noundef %433, ptr noundef nonnull %12, ptr noundef nonnull %14) #17
  %436 = load i64, ptr %12, align 8, !tbaa !175
  %437 = load i64, ptr %14, align 8, !tbaa !175
  br label %438

438:                                              ; preds = %432, %434
  %439 = phi i64 [ %426, %432 ], [ %436, %434 ]
  %440 = phi i64 [ %433, %432 ], [ %437, %434 ]
  %441 = call i32 @add_double_with_sign(i64 noundef %415, i64 noundef %422, i64 noundef %439, i64 noundef %440, ptr noundef nonnull %12, ptr noundef nonnull %14, i8 noundef zeroext 0) #17
  br label %516

442:                                              ; preds = %432
  %443 = call i32 @mul_double_with_sign(i64 noundef %415, i64 noundef %422, i64 noundef %426, i64 noundef %433, ptr noundef nonnull %12, ptr noundef nonnull %14, i8 noundef zeroext 0) #17
  br label %516

444:                                              ; preds = %432
  %445 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %415, i64 noundef %422, i64 noundef %426, i64 noundef %433, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %15) #17
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %516, label %520

447:                                              ; preds = %432
  %448 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %415, i64 noundef %422, i64 noundef %426, i64 noundef %433, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14) #17
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %516, label %520

450:                                              ; preds = %432
  %451 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %415, i64 noundef %422, i64 noundef %426, i64 noundef %433, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %15) #17
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %516, label %520

453:                                              ; preds = %432
  %454 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %415, i64 noundef %422, i64 noundef %426, i64 noundef %433, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %14) #17
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %516, label %520

456:                                              ; preds = %432
  %457 = and i64 %426, %415
  store i64 %457, ptr %12, align 8, !tbaa !175
  %458 = and i64 %433, %422
  store i64 %458, ptr %14, align 8, !tbaa !175
  br label %516

459:                                              ; preds = %432
  %460 = or i64 %426, %415
  store i64 %460, ptr %12, align 8, !tbaa !175
  %461 = or i64 %433, %422
  store i64 %461, ptr %14, align 8, !tbaa !175
  br label %516

462:                                              ; preds = %432
  %463 = xor i64 %426, %415
  store i64 %463, ptr %12, align 8, !tbaa !175
  %464 = xor i64 %433, %422
  store i64 %464, ptr %14, align 8, !tbaa !175
  br label %516

465:                                              ; preds = %432
  %466 = icmp slt i64 %422, %433
  br i1 %466, label %471, label %467

467:                                              ; preds = %465
  %468 = icmp eq i64 %422, %433
  %469 = icmp ult i64 %415, %426
  %470 = select i1 %468, i1 %469, i1 false
  br i1 %470, label %471, label %472

471:                                              ; preds = %467, %465
  store i64 %415, ptr %12, align 8, !tbaa !175
  store i64 %422, ptr %14, align 8, !tbaa !175
  br label %516

472:                                              ; preds = %467
  store i64 %426, ptr %12, align 8, !tbaa !175
  store i64 %433, ptr %14, align 8, !tbaa !175
  br label %516

473:                                              ; preds = %432
  %474 = icmp sgt i64 %422, %433
  br i1 %474, label %479, label %475

475:                                              ; preds = %473
  %476 = icmp eq i64 %422, %433
  %477 = icmp ugt i64 %415, %426
  %478 = select i1 %476, i1 %477, i1 false
  br i1 %478, label %479, label %480

479:                                              ; preds = %475, %473
  store i64 %415, ptr %12, align 8, !tbaa !175
  store i64 %422, ptr %14, align 8, !tbaa !175
  br label %516

480:                                              ; preds = %475
  store i64 %426, ptr %12, align 8, !tbaa !175
  store i64 %433, ptr %14, align 8, !tbaa !175
  br label %516

481:                                              ; preds = %432
  %482 = icmp ult i64 %422, %433
  br i1 %482, label %487, label %483

483:                                              ; preds = %481
  %484 = icmp eq i64 %422, %433
  %485 = icmp ult i64 %415, %426
  %486 = select i1 %484, i1 %485, i1 false
  br i1 %486, label %487, label %488

487:                                              ; preds = %483, %481
  store i64 %415, ptr %12, align 8, !tbaa !175
  store i64 %422, ptr %14, align 8, !tbaa !175
  br label %516

488:                                              ; preds = %483
  store i64 %426, ptr %12, align 8, !tbaa !175
  store i64 %433, ptr %14, align 8, !tbaa !175
  br label %516

489:                                              ; preds = %432
  %490 = icmp ugt i64 %422, %433
  br i1 %490, label %495, label %491

491:                                              ; preds = %489
  %492 = icmp eq i64 %422, %433
  %493 = icmp ugt i64 %415, %426
  %494 = select i1 %492, i1 %493, i1 false
  br i1 %494, label %495, label %496

495:                                              ; preds = %491, %489
  store i64 %415, ptr %12, align 8, !tbaa !175
  store i64 %422, ptr %14, align 8, !tbaa !175
  br label %516

496:                                              ; preds = %491
  store i64 %426, ptr %12, align 8, !tbaa !175
  store i64 %433, ptr %14, align 8, !tbaa !175
  br label %516

497:                                              ; preds = %432, %432, %432, %432, %432
  %498 = icmp eq i64 %433, 0
  br i1 %498, label %499, label %520

499:                                              ; preds = %497
  %500 = zext i8 %18 to i16
  %501 = shl nuw nsw i16 %500, 3
  %502 = zext nneg i16 %501 to i64
  %503 = icmp ult i64 %426, %502
  br i1 %503, label %504, label %520

504:                                              ; preds = %499
  %505 = add i32 %0, -67
  %506 = icmp ult i32 %505, 2
  br i1 %506, label %507, label %511

507:                                              ; preds = %504
  %508 = icmp eq i32 %0, 67
  %509 = zext nneg i16 %501 to i32
  %510 = zext i1 %508 to i32
  call void @rshift_double(i64 noundef %415, i64 noundef %422, i64 noundef %426, i32 noundef %509, ptr noundef nonnull %12, ptr noundef nonnull %14, i32 noundef %510) #17
  br label %516

511:                                              ; preds = %504
  %512 = zext nneg i16 %501 to i32
  switch i32 %0, label %515 [
    i32 65, label %513
    i32 66, label %514
  ]

513:                                              ; preds = %511
  call void @lshift_double(i64 noundef %415, i64 noundef %422, i64 noundef %426, i32 noundef %512, ptr noundef nonnull %12, ptr noundef nonnull %14, i32 noundef 1) #17
  br label %516

514:                                              ; preds = %511
  call void @lrotate_double(i64 noundef %415, i64 noundef %422, i64 noundef %426, i32 noundef %512, ptr noundef nonnull %12, ptr noundef nonnull %14) #17
  br label %516

515:                                              ; preds = %511
  call void @rrotate_double(i64 noundef %415, i64 noundef %422, i64 noundef %426, i32 noundef %512, ptr noundef nonnull %12, ptr noundef nonnull %14) #17
  br label %516

516:                                              ; preds = %453, %450, %447, %507, %514, %515, %513, %495, %496, %487, %488, %479, %480, %471, %472, %444, %462, %459, %456, %442, %438
  %517 = load i64, ptr %12, align 8, !tbaa !175
  %518 = load i64, ptr %14, align 8, !tbaa !175
  %519 = call ptr @immed_double_const(i64 noundef %517, i64 noundef %518, i32 noundef %1) #17
  br label %520

520:                                              ; preds = %432, %497, %499, %453, %450, %447, %444, %516
  %521 = phi ptr [ %519, %516 ], [ null, %444 ], [ null, %447 ], [ null, %450 ], [ null, %453 ], [ null, %499 ], [ null, %497 ], [ null, %432 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  br label %657

522:                                              ; preds = %408, %405, %401
  %523 = load i32, ptr %2, align 8
  %524 = and i32 %523, 65535
  %525 = icmp eq i32 %524, 30
  br i1 %525, label %526, label %657, !prof !184

526:                                              ; preds = %522
  %527 = load i32, ptr %3, align 8
  %528 = and i32 %527, 65535
  %529 = icmp eq i32 %528, 30
  %530 = icmp ult i8 %18, 9
  %531 = select i1 %529, i1 %530, i1 false, !prof !185
  %532 = icmp ne i8 %18, 0
  %533 = select i1 %531, i1 %532, i1 false, !prof !185
  br i1 %533, label %534, label %657, !prof !185

534:                                              ; preds = %526
  %535 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %536 = load i64, ptr %535, align 8, !tbaa !150
  %537 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %538 = load i64, ptr %537, align 8, !tbaa !150
  %539 = icmp ult i8 %18, 8
  br i1 %539, label %540, label %557, !prof !186

540:                                              ; preds = %534
  %541 = zext nneg i32 %20 to i64
  %542 = shl nsw i64 -1, %541
  %543 = xor i64 %542, -1
  %544 = and i64 %536, %543
  %545 = and i64 %538, %543
  %546 = add nsw i32 %20, -1
  %547 = zext nneg i32 %546 to i64
  %548 = shl nuw nsw i64 1, %547
  %549 = and i64 %544, %548
  %550 = icmp eq i64 %549, 0
  %551 = or i64 %536, %542
  %552 = select i1 %550, i64 %544, i64 %551, !prof !187
  %553 = and i64 %545, %548
  %554 = icmp eq i64 %553, 0
  %555 = or i64 %538, %542
  %556 = select i1 %554, i64 %545, i64 %555, !prof !188
  br label %557

557:                                              ; preds = %540, %534
  %558 = phi i64 [ %538, %534 ], [ %556, %540 ]
  %559 = phi i64 [ %536, %534 ], [ %552, %540 ]
  %560 = phi i64 [ %538, %534 ], [ %545, %540 ]
  %561 = phi i64 [ %536, %534 ], [ %544, %540 ]
  switch i32 %0, label %653 [
    i32 49, label %562
    i32 50, label %564
    i32 52, label %566
    i32 55, label %568
    i32 58, label %576
    i32 59, label %584
    i32 60, label %592
    i32 61, label %600
    i32 62, label %602
    i32 63, label %604
    i32 68, label %606
    i32 65, label %606
    i32 67, label %606
    i32 69, label %627
    i32 66, label %636
    i32 48, label %657
    i32 70, label %645
    i32 72, label %647
    i32 71, label %649
    i32 73, label %651
    i32 127, label %657
    i32 128, label %657
    i32 129, label %657
    i32 135, label %657
    i32 53, label %657
    i32 54, label %657
    i32 56, label %657
    i32 57, label %657
    i32 133, label %657
    i32 134, label %657
  ], !prof !189

562:                                              ; preds = %557
  %563 = add nsw i64 %559, %558
  br label %654

564:                                              ; preds = %557
  %565 = sub nsw i64 %559, %558
  br label %654

566:                                              ; preds = %557
  %567 = mul nsw i64 %559, %558
  br label %654

568:                                              ; preds = %557
  %569 = icmp eq i64 %558, 0
  br i1 %569, label %657, label %570

570:                                              ; preds = %568
  %571 = icmp eq i64 %559, -9223372036854775808
  %572 = icmp eq i64 %558, -1
  %573 = select i1 %571, i1 %572, i1 false
  br i1 %573, label %657, label %574

574:                                              ; preds = %570
  %575 = sdiv i64 %559, %558
  br label %654

576:                                              ; preds = %557
  %577 = icmp eq i64 %558, 0
  br i1 %577, label %657, label %578

578:                                              ; preds = %576
  %579 = icmp eq i64 %559, -9223372036854775808
  %580 = icmp eq i64 %558, -1
  %581 = select i1 %579, i1 %580, i1 false
  br i1 %581, label %657, label %582

582:                                              ; preds = %578
  %583 = srem i64 %559, %558
  br label %654

584:                                              ; preds = %557
  %585 = icmp eq i64 %560, 0
  br i1 %585, label %657, label %586

586:                                              ; preds = %584
  %587 = icmp eq i64 %559, -9223372036854775808
  %588 = icmp eq i64 %558, -1
  %589 = select i1 %587, i1 %588, i1 false
  br i1 %589, label %657, label %590

590:                                              ; preds = %586
  %591 = udiv i64 %561, %560
  br label %654

592:                                              ; preds = %557
  %593 = icmp eq i64 %560, 0
  br i1 %593, label %657, label %594

594:                                              ; preds = %592
  %595 = icmp eq i64 %559, -9223372036854775808
  %596 = icmp eq i64 %558, -1
  %597 = select i1 %595, i1 %596, i1 false
  br i1 %597, label %657, label %598

598:                                              ; preds = %594
  %599 = urem i64 %561, %560
  br label %654

600:                                              ; preds = %557
  %601 = and i64 %561, %560
  br label %654

602:                                              ; preds = %557
  %603 = or i64 %561, %560
  br label %654

604:                                              ; preds = %557
  %605 = xor i64 %561, %560
  br label %654

606:                                              ; preds = %557, %557, %557
  %607 = icmp sgt i64 %560, -1
  %608 = zext i8 %18 to i64
  %609 = shl nuw nsw i64 %608, 3
  %610 = icmp slt i64 %560, %609
  %611 = select i1 %607, i1 %610, i1 false
  br i1 %611, label %612, label %657, !prof !190

612:                                              ; preds = %606
  %613 = icmp eq i32 %0, 65
  %614 = shl i64 %561, %560
  %615 = lshr i64 %561, %560
  %616 = select i1 %613, i64 %614, i64 %615, !prof !191
  %617 = icmp eq i32 %0, 67
  %618 = icmp slt i64 %559, 0
  %619 = select i1 %617, i1 %618, i1 false, !prof !192
  %620 = icmp ne i64 %560, 0
  %621 = select i1 %619, i1 %620, i1 false, !prof !192
  br i1 %621, label %622, label %654, !prof !192

622:                                              ; preds = %612
  %623 = zext nneg i32 %20 to i64
  %624 = sub nsw i64 %623, %560
  %625 = shl nsw i64 -1, %624
  %626 = or i64 %616, %625
  br label %654

627:                                              ; preds = %557
  %628 = icmp slt i64 %560, 0
  br i1 %628, label %657, label %629

629:                                              ; preds = %627
  %630 = zext nneg i32 %20 to i64
  %631 = urem i64 %560, %630
  %632 = sub nsw i64 %630, %631
  %633 = shl i64 %561, %632
  %634 = lshr i64 %561, %631
  %635 = or i64 %633, %634
  br label %654

636:                                              ; preds = %557
  %637 = icmp slt i64 %560, 0
  br i1 %637, label %657, label %638

638:                                              ; preds = %636
  %639 = zext nneg i32 %20 to i64
  %640 = urem i64 %560, %639
  %641 = shl i64 %561, %640
  %642 = sub nsw i64 %639, %640
  %643 = lshr i64 %561, %642
  %644 = or i64 %643, %641
  br label %654

645:                                              ; preds = %557
  %646 = tail call i64 @llvm.smin.i64(i64 %559, i64 %558)
  br label %654

647:                                              ; preds = %557
  %648 = tail call i64 @llvm.umin.i64(i64 %561, i64 %560)
  br label %654

649:                                              ; preds = %557
  %650 = tail call i64 @llvm.smax.i64(i64 %559, i64 %558)
  br label %654

651:                                              ; preds = %557
  %652 = tail call i64 @llvm.umax.i64(i64 %561, i64 %560)
  br label %654

653:                                              ; preds = %557
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3580, ptr noundef nonnull @.str.1) #17
  unreachable

654:                                              ; preds = %612, %622, %651, %649, %647, %645, %638, %629, %604, %602, %600, %598, %590, %582, %574, %566, %564, %562
  %655 = phi i64 [ %652, %651 ], [ %650, %649 ], [ %648, %647 ], [ %646, %645 ], [ %644, %638 ], [ %635, %629 ], [ %626, %622 ], [ %616, %612 ], [ %605, %604 ], [ %603, %602 ], [ %601, %600 ], [ %599, %598 ], [ %591, %590 ], [ %583, %582 ], [ %575, %574 ], [ %567, %566 ], [ %565, %564 ], [ %563, %562 ]
  %656 = tail call ptr @gen_int_mode(i64 noundef %655, i32 noundef %1) #17
  br label %657

657:                                              ; preds = %66, %606, %557, %557, %557, %557, %557, %557, %557, %557, %557, %557, %522, %526, %557, %636, %627, %592, %594, %584, %586, %576, %578, %568, %570, %80, %654, %520, %399, %231, %175
  %658 = phi ptr [ %176, %175 ], [ %232, %231 ], [ %400, %399 ], [ %521, %520 ], [ %656, %654 ], [ %81, %80 ], [ null, %570 ], [ null, %568 ], [ null, %578 ], [ null, %576 ], [ null, %586 ], [ null, %584 ], [ null, %594 ], [ null, %592 ], [ null, %627 ], [ null, %636 ], [ null, %557 ], [ null, %526 ], [ null, %522 ], [ null, %557 ], [ null, %557 ], [ null, %557 ], [ null, %557 ], [ null, %557 ], [ null, %557 ], [ null, %557 ], [ null, %557 ], [ null, %557 ], [ null, %557 ], [ null, %606 ], [ null, %66 ]
  ret ptr %658
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @simplify_binary_operation_1(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #10 !prof !528 !PGOFuncName !529 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.real_value, align 8
  %12 = alloca [2 x ptr], align 16
  %13 = alloca %struct.real_value, align 8
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !150
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  switch i32 %0, label %2837 [
    i32 49, label %19
    i32 48, label %322
    i32 50, label %381
    i32 52, label %794
    i32 62, label %1051
    i32 63, label %1395
    i32 61, label %1651
    i32 59, label %2082
    i32 55, label %2112
    i32 60, label %2235
    i32 58, label %2270
    i32 69, label %2293
    i32 66, label %2293
    i32 67, label %2293
    i32 65, label %2318
    i32 133, label %2318
    i32 134, label %2318
    i32 68, label %2328
    i32 70, label %2338
    i32 71, label %2363
    i32 72, label %2388
    i32 73, label %2405
    i32 127, label %2839
    i32 128, label %2839
    i32 129, label %2839
    i32 135, label %2839
    i32 53, label %2839
    i32 54, label %2839
    i32 56, label %2839
    i32 57, label %2839
    i32 124, label %2420
    i32 125, label %2715
  ], !prof !193

19:                                               ; preds = %6
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %21 = load i8, ptr %20, align 1, !tbaa !150
  switch i8 %21, label %41 [
    i8 8, label %22
    i8 9, label %22
    i8 11, label %22
    i8 17, label %22
  ], !prof !194

22:                                               ; preds = %19, %19, %19, %19
  %23 = and i8 %21, -2
  %24 = icmp eq i8 %23, 8
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %27 = load i8, ptr %26, align 1, !tbaa !150
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %22, %25
  %30 = phi i32 [ %28, %25 ], [ %1, %22 ]
  %31 = add i32 %30, -38
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  %35 = getelementptr inbounds %struct.real_format, ptr %34, i64 0, i32 14
  %36 = load i8, ptr %35, align 1, !tbaa !195
  %37 = icmp ne i8 %36, 0
  %38 = load i32, ptr @flag_signed_zeros, align 4
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %46, label %41

41:                                               ; preds = %19, %29
  %42 = sext i32 %1 to i64
  %43 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !139
  %45 = icmp eq ptr %44, %5
  br i1 %45, label %2839, label %46, !prof !196

46:                                               ; preds = %41, %29
  %47 = load i32, ptr %2, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 51
  br i1 %49, label %50, label %54, !prof !196

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !150
  %53 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %3, ptr noundef %52)
  br label %2839

54:                                               ; preds = %46
  %55 = load i32, ptr %3, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 51
  br i1 %57, label %58, label %62, !prof !196

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !150
  %61 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %2, ptr noundef %60)
  br label %2839

62:                                               ; preds = %54
  switch i8 %21, label %75 [
    i8 2, label %63
    i8 3, label %63
    i8 10, label %63
    i8 12, label %63
  ], !prof !197

63:                                               ; preds = %62, %62, %62, %62
  %64 = icmp eq i32 %48, 64
  %65 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %66 = icmp eq ptr %65, %5
  %67 = select i1 %64, i1 %66, i1 false, !prof !198
  br i1 %67, label %68, label %75, !prof !196

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !150
  %71 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %70, i32 noundef %1)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %2839

73:                                               ; preds = %68
  %74 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %70) #17
  br label %2839

75:                                               ; preds = %62, %63
  %76 = trunc i32 %47 to i16
  switch i16 %76, label %83 [
    i16 35, label %77
    i16 45, label %77
    i16 44, label %77
  ], !prof !199

77:                                               ; preds = %75, %75, %75
  %78 = icmp eq i32 %56, 30
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !150
  %82 = tail call ptr @plus_constant(ptr noundef %2, i64 noundef %81) #17
  br label %2839

83:                                               ; preds = %75, %77
  %84 = trunc i32 %55 to i16
  switch i16 %84, label %91 [
    i16 35, label %85
    i16 45, label %85
    i16 44, label %85
  ], !prof !200

85:                                               ; preds = %83, %83, %83
  %86 = icmp eq i32 %48, 30
  br i1 %86, label %87, label %91, !prof !201

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !150
  %90 = tail call ptr @plus_constant(ptr noundef %3, i64 noundef %89) #17
  br label %2839

91:                                               ; preds = %83, %85
  %92 = and i8 %21, -2
  %93 = icmp eq i8 %92, 2
  br i1 %93, label %94, label %178, !prof !202

94:                                               ; preds = %91
  switch i16 %76, label %105 [
    i16 51, label %119
    i16 52, label %95
  ], !prof !203

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !150
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 30
  br i1 %100, label %101, label %105, !prof !204

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !150
  %104 = ashr i64 %103, 63
  br label %119

105:                                              ; preds = %94, %95
  %106 = icmp eq i32 %48, 65
  br i1 %106, label %107, label %124, !prof !205

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !150
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 30
  br i1 %112, label %113, label %124, !prof !206

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !150
  %116 = icmp ult i64 %115, 64
  br i1 %116, label %117, label %124, !prof !206

117:                                              ; preds = %113
  %118 = shl nuw i64 1, %115
  br label %119

119:                                              ; preds = %94, %117, %101
  %120 = phi i64 [ %118, %117 ], [ %103, %101 ], [ -1, %94 ]
  %121 = phi i64 [ 0, %117 ], [ %104, %101 ], [ -1, %94 ]
  %122 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !150
  br label %124

124:                                              ; preds = %119, %113, %107, %105
  %125 = phi ptr [ %2, %113 ], [ %2, %107 ], [ %2, %105 ], [ %123, %119 ]
  %126 = phi i64 [ 1, %113 ], [ 1, %107 ], [ 1, %105 ], [ %120, %119 ]
  %127 = phi i64 [ 0, %113 ], [ 0, %107 ], [ 0, %105 ], [ %121, %119 ]
  switch i16 %84, label %138 [
    i16 51, label %152
    i16 52, label %128
  ], !prof !207

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !150
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 30
  br i1 %133, label %134, label %138, !prof !208

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !150
  %137 = ashr i64 %136, 63
  br label %152

138:                                              ; preds = %124, %128
  %139 = icmp eq i32 %56, 65
  br i1 %139, label %140, label %157, !prof !209

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !150
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 30
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !150
  %149 = icmp ult i64 %148, 64
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = shl nuw i64 1, %148
  br label %152

152:                                              ; preds = %124, %150, %134
  %153 = phi i64 [ %151, %150 ], [ %136, %134 ], [ -1, %124 ]
  %154 = phi i64 [ 0, %150 ], [ %137, %134 ], [ -1, %124 ]
  %155 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !150
  br label %157

157:                                              ; preds = %152, %146, %140, %138
  %158 = phi ptr [ %3, %146 ], [ %3, %140 ], [ %3, %138 ], [ %156, %152 ]
  %159 = phi i64 [ 1, %146 ], [ 1, %140 ], [ 1, %138 ], [ %153, %152 ]
  %160 = phi i64 [ 0, %146 ], [ 0, %140 ], [ 0, %138 ], [ %154, %152 ]
  %161 = tail call i32 @rtx_equal_p(ptr noundef %125, ptr noundef %158) #17
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %176, label %163, !prof !210

163:                                              ; preds = %157
  %164 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %165 = load ptr, ptr @cfun, align 8, !tbaa !139
  %166 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %165) #17
  %167 = call i32 @add_double_with_sign(i64 noundef %126, i64 noundef %127, i64 noundef %159, i64 noundef %160, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 0) #17
  %168 = load i64, ptr %7, align 8, !tbaa !175
  %169 = load i64, ptr %8, align 8, !tbaa !175
  %170 = call ptr @immed_double_const(i64 noundef %168, i64 noundef %169, i32 noundef %1) #17
  %171 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %125, ptr noundef %170)
  %172 = call i32 @rtx_cost(ptr noundef %171, i32 noundef 23, i8 noundef zeroext %166) #17
  %173 = call i32 @rtx_cost(ptr noundef %164, i32 noundef 23, i8 noundef zeroext %166) #17
  %174 = icmp sgt i32 %172, %173
  %175 = select i1 %174, ptr null, ptr %171, !prof !211
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br label %176

176:                                              ; preds = %157, %163
  %177 = phi ptr [ %175, %163 ], [ undef, %157 ]
  br i1 %162, label %178, label %2839, !prof !210

178:                                              ; preds = %91, %176
  %179 = load i32, ptr %3, align 8
  %180 = trunc i32 %179 to i16
  switch i16 %180, label %198 [
    i16 30, label %181
    i16 32, label %181
  ], !prof !212

181:                                              ; preds = %178, %178
  %182 = load i32, ptr %2, align 8
  %183 = and i32 %182, 65535
  %184 = icmp eq i32 %183, 63
  br i1 %184, label %185, label %198, !prof !213

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %187 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !150
  %189 = load i32, ptr %188, align 8
  %190 = trunc i32 %189 to i16
  switch i16 %190, label %198 [
    i16 30, label %191
    i16 32, label %191
  ]

191:                                              ; preds = %185, %185
  %192 = call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef %3), !range !214
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %186, align 8, !tbaa !150
  %196 = call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %188)
  %197 = call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %195, ptr noundef %196)
  br label %2839

198:                                              ; preds = %191, %181, %185, %178
  switch i8 %21, label %217 [
    i8 8, label %199
    i8 9, label %199
    i8 11, label %199
    i8 17, label %199
  ], !prof !215

199:                                              ; preds = %198, %198, %198, %198
  %200 = icmp eq i8 %92, 8
  br i1 %200, label %205, label %201

201:                                              ; preds = %199
  %202 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %203 = load i8, ptr %202, align 1, !tbaa !150
  %204 = zext i8 %203 to i32
  br label %205

205:                                              ; preds = %199, %201
  %206 = phi i32 [ %204, %201 ], [ %1, %199 ]
  %207 = add i32 %206, -38
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !139
  %211 = getelementptr inbounds %struct.real_format, ptr %210, i64 0, i32 10
  %212 = load i8, ptr %211, align 1, !tbaa !216
  %213 = icmp ne i8 %212, 0
  %214 = load i32, ptr @flag_rounding_math, align 4
  %215 = icmp ne i32 %214, 0
  %216 = select i1 %213, i1 %215, i1 false
  br i1 %216, label %234, label %217

217:                                              ; preds = %198, %205
  %218 = load i32, ptr %2, align 8
  %219 = and i32 %218, 65535
  %220 = icmp eq i32 %219, 52
  br i1 %220, label %221, label %234, !prof !217

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !150
  %224 = load i32, ptr %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 51
  br i1 %226, label %227, label %234, !prof !218

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !150
  %230 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !150
  %232 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %229, ptr noundef %231)
  %233 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %3, ptr noundef %232)
  br label %2839

234:                                              ; preds = %217, %205, %221
  %235 = load i32, ptr %2, align 8
  %236 = and i32 %235, 65535
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !154
  %240 = icmp ult i32 %239, 2
  %241 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %242 = icmp eq ptr %241, %5
  %243 = select i1 %240, i1 %242, i1 false, !prof !219
  br i1 %243, label %244, label %252, !prof !219

244:                                              ; preds = %234
  %245 = call ptr @reversed_comparison(ptr noundef %2, i32 noundef %1) #17
  %246 = icmp eq ptr %245, null
  br i1 %246, label %252, label %247

247:                                              ; preds = %244
  %248 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %245, i32 noundef %1)
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %2839

250:                                              ; preds = %247
  %251 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef nonnull %245) #17
  br label %2839

252:                                              ; preds = %244, %234
  switch i8 %21, label %311 [
    i8 2, label %253
    i8 3, label %253
    i8 10, label %253
    i8 12, label %253
    i8 8, label %316
    i8 9, label %316
    i8 11, label %316
  ], !prof !220

253:                                              ; preds = %252, %252, %252, %252
  %254 = load i32, ptr %2, align 8
  %255 = trunc i32 %254 to i16
  switch i16 %255, label %280 [
    i16 49, label %307
    i16 50, label %307
    i16 35, label %256
  ], !prof !221

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !150
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 65535
  %261 = icmp eq i32 %260, 49
  br i1 %261, label %262, label %280

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !150
  %265 = load i32, ptr %264, align 8
  %266 = and i32 %265, 65535
  %267 = zext nneg i32 %266 to i64
  %268 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !154
  %270 = icmp eq i32 %269, 9
  br i1 %270, label %271, label %280

271:                                              ; preds = %262
  %272 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !150
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 65535
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !154
  %279 = icmp eq i32 %278, 9
  br i1 %279, label %307, label %280, !prof !222

280:                                              ; preds = %262, %256, %253, %271
  %281 = load i32, ptr %3, align 8
  %282 = trunc i32 %281 to i16
  switch i16 %282, label %310 [
    i16 49, label %307
    i16 50, label %307
    i16 35, label %283
  ], !prof !221

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !150
  %286 = load i32, ptr %285, align 8
  %287 = and i32 %286, 65535
  %288 = icmp eq i32 %287, 49
  br i1 %288, label %289, label %310

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.rtx_def, ptr %285, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !150
  %292 = load i32, ptr %291, align 8
  %293 = and i32 %292, 65535
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !154
  %297 = icmp eq i32 %296, 9
  br i1 %297, label %298, label %310

298:                                              ; preds = %289
  %299 = getelementptr inbounds %struct.rtx_def, ptr %285, i64 0, i32 1, i32 0, i32 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !150
  %301 = load i32, ptr %300, align 8
  %302 = and i32 %301, 65535
  %303 = zext nneg i32 %302 to i64
  %304 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %303
  %305 = load i32, ptr %304, align 4, !tbaa !154
  %306 = icmp eq i32 %305, 9
  br i1 %306, label %307, label %310, !prof !223

307:                                              ; preds = %280, %280, %253, %253, %298, %271
  %308 = call fastcc ptr @simplify_plus_minus(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %2839, !prof !224

310:                                              ; preds = %280, %289, %283, %298, %307
  switch i8 %21, label %311 [
    i8 8, label %316
    i8 9, label %316
    i8 11, label %316
  ], !prof !225

311:                                              ; preds = %252, %310
  %312 = icmp eq i8 %21, 17
  %313 = load i32, ptr @flag_associative_math, align 4
  %314 = icmp ne i32 %313, 0
  %315 = select i1 %312, i1 %314, i1 false, !prof !223
  br i1 %315, label %319, label %2838, !prof !223

316:                                              ; preds = %310, %252, %310, %252, %252, %310
  %317 = load i32, ptr @flag_associative_math, align 4, !tbaa !154
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %2838, label %319

319:                                              ; preds = %311, %316
  %320 = call fastcc ptr @simplify_associative_operation(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %321 = icmp eq ptr %320, null
  br i1 %321, label %2838, label %2839

322:                                              ; preds = %6
  %323 = load i32, ptr %2, align 8
  %324 = and i32 %323, 65535
  %325 = trunc i32 %323 to i16
  switch i16 %325, label %2838 [
    i16 83, label %326
    i16 87, label %332
  ], !prof !226

326:                                              ; preds = %322
  %327 = load i32, ptr %3, align 8
  %328 = and i32 %327, 65535
  %329 = icmp eq i32 %328, 85
  br i1 %329, label %336, label %330

330:                                              ; preds = %326
  %331 = icmp eq i32 %324, 87
  br i1 %331, label %332, label %2838, !prof !227

332:                                              ; preds = %322, %330
  %333 = load i32, ptr %3, align 8
  %334 = and i32 %333, 65535
  %335 = icmp eq i32 %334, 89
  br i1 %335, label %336, label %2838

336:                                              ; preds = %332, %326
  %337 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %338 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %339 = load ptr, ptr %338, align 8, !tbaa !150
  %340 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %341 = icmp eq ptr %339, %340
  br i1 %341, label %342, label %2838

342:                                              ; preds = %336
  %343 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %344 = load ptr, ptr %343, align 8, !tbaa !150
  %345 = icmp eq ptr %344, %340
  br i1 %345, label %346, label %2838

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %348 = load ptr, ptr %337, align 8, !tbaa !150
  %349 = load ptr, ptr %347, align 8, !tbaa !150
  %350 = load i32, ptr %348, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 37
  br i1 %352, label %353, label %2838

353:                                              ; preds = %346
  %354 = load i32, ptr %349, align 8
  %355 = and i32 %354, 65535
  %356 = icmp eq i32 %355, 37
  br i1 %356, label %357, label %2838

357:                                              ; preds = %353
  %358 = xor i32 %354, %350
  %359 = and i32 %358, 16711680
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %2838

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1
  %363 = load i32, ptr %362, align 8, !tbaa !150
  %364 = getelementptr inbounds %struct.rtx_def, ptr %349, i64 0, i32 1
  %365 = load i32, ptr %364, align 8, !tbaa !150
  %366 = icmp eq i32 %363, %365
  br i1 %366, label %367, label %2838

367:                                              ; preds = %361
  %368 = lshr i32 %350, 16
  %369 = and i32 %368, 255
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !150
  %373 = icmp eq i8 %372, 1
  br i1 %373, label %374, label %2838

374:                                              ; preds = %367
  %375 = lshr i32 %354, 16
  %376 = and i32 %375, 255
  %377 = zext nneg i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !150
  %380 = icmp eq i8 %379, 1
  br i1 %380, label %2839, label %2838

381:                                              ; preds = %6
  %382 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #17
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %413, label %384, !prof !228

384:                                              ; preds = %381
  %385 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %413

387:                                              ; preds = %384
  %388 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %389 = load i8, ptr %388, align 1, !tbaa !150
  switch i8 %389, label %409 [
    i8 8, label %390
    i8 9, label %390
    i8 11, label %390
    i8 17, label %390
  ]

390:                                              ; preds = %387, %387, %387, %387
  %391 = and i8 %389, -2
  %392 = icmp eq i8 %391, 8
  br i1 %392, label %397, label %393

393:                                              ; preds = %390
  %394 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %395 = load i8, ptr %394, align 1, !tbaa !150
  %396 = zext i8 %395 to i32
  br label %397

397:                                              ; preds = %390, %393
  %398 = phi i32 [ %396, %393 ], [ %1, %390 ]
  %399 = add i32 %398, -38
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !139
  %403 = getelementptr inbounds %struct.real_format, ptr %402, i64 0, i32 11
  %404 = load i8, ptr %403, align 2, !tbaa !178
  %405 = icmp eq i8 %404, 0
  %406 = load i32, ptr @flag_finite_math_only, align 4
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %405, i1 true, i1 %407
  br i1 %408, label %409, label %413

409:                                              ; preds = %387, %397
  %410 = sext i32 %1 to i64
  %411 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %410
  %412 = load ptr, ptr %411, align 8, !tbaa !139
  br label %2839

413:                                              ; preds = %397, %384, %381
  %414 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %415 = load i8, ptr %414, align 1, !tbaa !150
  switch i8 %415, label %435 [
    i8 8, label %416
    i8 9, label %416
    i8 11, label %416
    i8 17, label %416
  ], !prof !229

416:                                              ; preds = %413, %413, %413, %413
  %417 = and i8 %415, -2
  %418 = icmp eq i8 %417, 8
  br i1 %418, label %423, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %421 = load i8, ptr %420, align 1, !tbaa !150
  %422 = zext i8 %421 to i32
  br label %423

423:                                              ; preds = %416, %419
  %424 = phi i32 [ %422, %419 ], [ %1, %416 ]
  %425 = add i32 %424, -38
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !139
  %429 = getelementptr inbounds %struct.real_format, ptr %428, i64 0, i32 14
  %430 = load i8, ptr %429, align 1, !tbaa !195
  %431 = icmp ne i8 %430, 0
  %432 = load i32, ptr @flag_signed_zeros, align 4
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %431, i1 %433, i1 false
  br i1 %434, label %445, label %435

435:                                              ; preds = %413, %423
  %436 = sext i32 %1 to i64
  %437 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %436
  %438 = load ptr, ptr %437, align 8, !tbaa !139
  %439 = icmp eq ptr %438, %4
  br i1 %439, label %440, label %445, !prof !230

440:                                              ; preds = %435
  %441 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %3, i32 noundef %1)
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %2839

443:                                              ; preds = %440
  %444 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %3) #17
  br label %2839

445:                                              ; preds = %435, %423
  %446 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %447 = icmp eq ptr %446, %4
  br i1 %447, label %448, label %453, !prof !230

448:                                              ; preds = %445
  %449 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %3, i32 noundef %1)
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %2839

451:                                              ; preds = %448
  %452 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %3) #17
  br label %2839

453:                                              ; preds = %445
  switch i8 %415, label %491 [
    i8 8, label %454
    i8 9, label %454
    i8 11, label %454
    i8 17, label %454
  ], !prof !229

454:                                              ; preds = %453, %453, %453, %453
  %455 = and i8 %415, -2
  %456 = icmp eq i8 %455, 8
  br i1 %456, label %461, label %457

457:                                              ; preds = %454
  %458 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %459 = load i8, ptr %458, align 1, !tbaa !150
  %460 = zext i8 %459 to i32
  br label %461

461:                                              ; preds = %454, %457
  %462 = phi i32 [ %460, %457 ], [ %1, %454 ]
  %463 = add i32 %462, -38
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !139
  %467 = getelementptr inbounds %struct.real_format, ptr %466, i64 0, i32 14
  %468 = load i8, ptr %467, align 1, !tbaa !195
  %469 = icmp ne i8 %468, 0
  %470 = load i32, ptr @flag_signed_zeros, align 4
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %469, i1 %471, i1 false
  br i1 %472, label %473, label %491

473:                                              ; preds = %461
  switch i8 %415, label %491 [
    i8 8, label %474
    i8 9, label %474
    i8 11, label %474
    i8 17, label %474
  ]

474:                                              ; preds = %473, %473, %473, %473
  br i1 %456, label %479, label %475

475:                                              ; preds = %474
  %476 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %477 = load i8, ptr %476, align 1, !tbaa !150
  %478 = zext i8 %477 to i32
  br label %479

479:                                              ; preds = %474, %475
  %480 = phi i32 [ %478, %475 ], [ %1, %474 ]
  %481 = add i32 %480, -38
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !139
  %485 = getelementptr inbounds %struct.real_format, ptr %484, i64 0, i32 10
  %486 = load i8, ptr %485, align 1, !tbaa !216
  %487 = icmp ne i8 %486, 0
  %488 = load i32, ptr @flag_rounding_math, align 4
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %487, i1 %489, i1 false
  br i1 %490, label %496, label %491

491:                                              ; preds = %479, %473, %453, %461
  %492 = sext i32 %1 to i64
  %493 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %492
  %494 = load ptr, ptr %493, align 8, !tbaa !139
  %495 = icmp eq ptr %494, %5
  br i1 %495, label %2839, label %496, !prof !230

496:                                              ; preds = %479, %491
  %497 = and i8 %415, -2
  %498 = icmp eq i8 %497, 2
  br i1 %498, label %499, label %591, !prof !228

499:                                              ; preds = %496
  %500 = load i32, ptr %2, align 8
  %501 = trunc i32 %500 to i16
  switch i16 %501, label %512 [
    i16 51, label %527
    i16 52, label %502
  ], !prof !231

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %504 = load ptr, ptr %503, align 8, !tbaa !150
  %505 = load i32, ptr %504, align 8
  %506 = and i32 %505, 65535
  %507 = icmp eq i32 %506, 30
  br i1 %507, label %508, label %512

508:                                              ; preds = %502
  %509 = getelementptr inbounds %struct.rtx_def, ptr %504, i64 0, i32 1
  %510 = load i64, ptr %509, align 8, !tbaa !150
  %511 = ashr i64 %510, 63
  br label %527

512:                                              ; preds = %499, %502
  %513 = and i32 %500, 65535
  %514 = icmp eq i32 %513, 65
  br i1 %514, label %515, label %532, !prof !230

515:                                              ; preds = %512
  %516 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %517 = load ptr, ptr %516, align 8, !tbaa !150
  %518 = load i32, ptr %517, align 8
  %519 = and i32 %518, 65535
  %520 = icmp eq i32 %519, 30
  br i1 %520, label %521, label %532

521:                                              ; preds = %515
  %522 = getelementptr inbounds %struct.rtx_def, ptr %517, i64 0, i32 1
  %523 = load i64, ptr %522, align 8, !tbaa !150
  %524 = icmp ult i64 %523, 64
  br i1 %524, label %525, label %532

525:                                              ; preds = %521
  %526 = shl nuw i64 1, %523
  br label %527

527:                                              ; preds = %499, %525, %508
  %528 = phi i64 [ %526, %525 ], [ %510, %508 ], [ -1, %499 ]
  %529 = phi i64 [ 0, %525 ], [ %511, %508 ], [ -1, %499 ]
  %530 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %531 = load ptr, ptr %530, align 8, !tbaa !150
  br label %532

532:                                              ; preds = %527, %521, %515, %512
  %533 = phi ptr [ %2, %521 ], [ %2, %515 ], [ %2, %512 ], [ %531, %527 ]
  %534 = phi i64 [ 1, %521 ], [ 1, %515 ], [ 1, %512 ], [ %528, %527 ]
  %535 = phi i64 [ 0, %521 ], [ 0, %515 ], [ 0, %512 ], [ %529, %527 ]
  %536 = load i32, ptr %3, align 8
  %537 = trunc i32 %536 to i16
  switch i16 %537, label %550 [
    i16 51, label %565
    i16 52, label %538
  ], !prof !231

538:                                              ; preds = %532
  %539 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %540 = load ptr, ptr %539, align 8, !tbaa !150
  %541 = load i32, ptr %540, align 8
  %542 = and i32 %541, 65535
  %543 = icmp eq i32 %542, 30
  br i1 %543, label %544, label %550

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.rtx_def, ptr %540, i64 0, i32 1
  %546 = load i64, ptr %545, align 8, !tbaa !150
  %547 = sub nsw i64 0, %546
  %548 = icmp sgt i64 %546, 0
  %549 = sext i1 %548 to i64
  br label %565

550:                                              ; preds = %532, %538
  %551 = and i32 %536, 65535
  %552 = icmp eq i32 %551, 65
  br i1 %552, label %553, label %570, !prof !230

553:                                              ; preds = %550
  %554 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %555 = load ptr, ptr %554, align 8, !tbaa !150
  %556 = load i32, ptr %555, align 8
  %557 = and i32 %556, 65535
  %558 = icmp eq i32 %557, 30
  br i1 %558, label %559, label %570

559:                                              ; preds = %553
  %560 = getelementptr inbounds %struct.rtx_def, ptr %555, i64 0, i32 1
  %561 = load i64, ptr %560, align 8, !tbaa !150
  %562 = icmp ult i64 %561, 64
  br i1 %562, label %563, label %570

563:                                              ; preds = %559
  %564 = shl nsw i64 -1, %561
  br label %565

565:                                              ; preds = %532, %563, %544
  %566 = phi i64 [ %564, %563 ], [ %547, %544 ], [ 1, %532 ]
  %567 = phi i64 [ -1, %563 ], [ %549, %544 ], [ 0, %532 ]
  %568 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !150
  br label %570

570:                                              ; preds = %565, %559, %553, %550
  %571 = phi ptr [ %3, %559 ], [ %3, %553 ], [ %3, %550 ], [ %569, %565 ]
  %572 = phi i64 [ -1, %559 ], [ -1, %553 ], [ -1, %550 ], [ %566, %565 ]
  %573 = phi i64 [ -1, %559 ], [ -1, %553 ], [ -1, %550 ], [ %567, %565 ]
  %574 = tail call i32 @rtx_equal_p(ptr noundef %533, ptr noundef %571) #17
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %589, label %576, !prof !228

576:                                              ; preds = %570
  %577 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %1, ptr noundef %2, ptr noundef %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %578 = load ptr, ptr @cfun, align 8, !tbaa !139
  %579 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %578) #17
  %580 = call i32 @add_double_with_sign(i64 noundef %534, i64 noundef %535, i64 noundef %572, i64 noundef %573, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext 0) #17
  %581 = load i64, ptr %9, align 8, !tbaa !175
  %582 = load i64, ptr %10, align 8, !tbaa !175
  %583 = call ptr @immed_double_const(i64 noundef %581, i64 noundef %582, i32 noundef %1) #17
  %584 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %533, ptr noundef %583)
  %585 = call i32 @rtx_cost(ptr noundef %584, i32 noundef 23, i8 noundef zeroext %579) #17
  %586 = call i32 @rtx_cost(ptr noundef %577, i32 noundef 23, i8 noundef zeroext %579) #17
  %587 = icmp sgt i32 %585, %586
  %588 = select i1 %587, ptr null, ptr %584
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  br label %589

589:                                              ; preds = %570, %576
  %590 = phi ptr [ %588, %576 ], [ undef, %570 ]
  br i1 %575, label %591, label %2839, !prof !228

591:                                              ; preds = %589, %496
  %592 = load i32, ptr %3, align 8
  %593 = and i32 %592, 65535
  %594 = icmp eq i32 %593, 51
  br i1 %594, label %595, label %599, !prof !230

595:                                              ; preds = %591
  %596 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !150
  %598 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef %597)
  br label %2839

599:                                              ; preds = %591
  %600 = load i32, ptr %2, align 8
  %601 = and i32 %600, 65535
  %602 = icmp eq i32 %601, 51
  br i1 %602, label %603, label %612, !prof !230

603:                                              ; preds = %599
  %604 = trunc i32 %592 to i16
  switch i16 %604, label %612 [
    i16 30, label %605
    i16 32, label %605
  ]

605:                                              ; preds = %603, %603
  %606 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %3, i32 noundef %1)
  %607 = icmp eq ptr %606, null
  br i1 %607, label %612, label %608

608:                                              ; preds = %605
  %609 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %610 = load ptr, ptr %609, align 8, !tbaa !150
  %611 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %606, ptr noundef %610)
  br label %2839

612:                                              ; preds = %605, %603, %599
  %613 = load i32, ptr %3, align 8
  %614 = and i32 %613, 65535
  %615 = trunc i32 %613 to i16
  switch i16 %615, label %693 [
    i16 30, label %616
    i16 61, label %660
  ], !prof !232

616:                                              ; preds = %612
  %617 = load i32, ptr %2, align 8
  %618 = and i32 %617, 16711680
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %658, label %620, !prof !233

620:                                              ; preds = %616
  %621 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %622 = load i64, ptr %621, align 8, !tbaa !150
  %623 = sub nsw i64 0, %622
  %624 = call ptr @gen_int_mode(i64 noundef %623, i32 noundef %1) #17
  %625 = load i32, ptr getelementptr inbounds ([139 x i32], ptr @rtx_class, i64 0, i64 49), align 4, !tbaa !154
  switch i32 %625, label %629 [
    i32 0, label %627
    i32 1, label %626
  ], !prof !161

626:                                              ; preds = %620
  br label %627

627:                                              ; preds = %620, %626
  %628 = phi i32 [ 1691, %626 ], [ 1690, %620 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %628, ptr noundef nonnull @.str.1) #17
  br label %629

629:                                              ; preds = %627, %620
  %630 = icmp eq i32 %625, 3
  br i1 %630, label %631, label %636, !prof !162

631:                                              ; preds = %629
  %632 = call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %624) #17
  %633 = icmp eq i8 %632, 0
  %634 = select i1 %633, ptr %624, ptr %2, !prof !163
  %635 = select i1 %633, ptr %2, ptr %624, !prof !163
  br label %636

636:                                              ; preds = %631, %629
  %637 = phi ptr [ %624, %629 ], [ %634, %631 ]
  %638 = phi ptr [ %2, %629 ], [ %635, %631 ]
  %639 = call ptr @avoid_constant_pool_reference(ptr noundef %638)
  %640 = call ptr @avoid_constant_pool_reference(ptr noundef %637)
  %641 = call ptr @simplify_const_binary_operation(i32 noundef 49, i32 noundef %1, ptr noundef %639, ptr noundef %640)
  %642 = icmp eq ptr %641, null
  br i1 %642, label %643, label %645, !prof !164

643:                                              ; preds = %636
  %644 = call fastcc ptr @simplify_binary_operation_1(i32 noundef 49, i32 noundef %1, ptr noundef %638, ptr noundef %637, ptr noundef %639, ptr noundef %640)
  br label %645

645:                                              ; preds = %643, %636
  %646 = phi ptr [ %644, %643 ], [ %641, %636 ]
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %2839, !prof !165

648:                                              ; preds = %645
  br i1 %630, label %649, label %654, !prof !166

649:                                              ; preds = %648
  %650 = call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %624) #17
  %651 = icmp eq i8 %650, 0
  %652 = select i1 %651, ptr %2, ptr %624, !prof !167
  %653 = select i1 %651, ptr %624, ptr %2, !prof !167
  br label %654

654:                                              ; preds = %649, %648
  %655 = phi ptr [ %2, %648 ], [ %652, %649 ]
  %656 = phi ptr [ %624, %648 ], [ %653, %649 ]
  %657 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1, ptr noundef %655, ptr noundef %656) #17
  br label %2839

658:                                              ; preds = %616
  %659 = icmp eq i32 %614, 61
  br i1 %659, label %660, label %693, !prof !234

660:                                              ; preds = %612, %658
  %661 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %662 = load ptr, ptr %661, align 8, !tbaa !150
  %663 = call i32 @rtx_equal_p(ptr noundef %2, ptr noundef %662) #17
  %664 = icmp eq i32 %663, 0
  %665 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %666 = load ptr, ptr %665, align 8, !tbaa !150
  br i1 %664, label %678, label %667

667:                                              ; preds = %660
  %668 = load i32, ptr %666, align 8
  %669 = lshr i32 %668, 16
  %670 = and i32 %669, 255
  %671 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %666, i32 noundef %670)
  %672 = icmp eq ptr %671, null
  br i1 %672, label %673, label %675

673:                                              ; preds = %667
  %674 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %666) #17
  br label %675

675:                                              ; preds = %667, %673
  %676 = phi ptr [ %674, %673 ], [ %671, %667 ]
  %677 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %676)
  br label %2839

678:                                              ; preds = %660
  %679 = call i32 @rtx_equal_p(ptr noundef %2, ptr noundef %666) #17
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %693, label %681

681:                                              ; preds = %678
  %682 = load ptr, ptr %661, align 8, !tbaa !150
  %683 = load i32, ptr %682, align 8
  %684 = lshr i32 %683, 16
  %685 = and i32 %684, 255
  %686 = call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %682, i32 noundef %685)
  %687 = icmp eq ptr %686, null
  br i1 %687, label %688, label %690

688:                                              ; preds = %681
  %689 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef nonnull %682) #17
  br label %690

690:                                              ; preds = %681, %688
  %691 = phi ptr [ %689, %688 ], [ %686, %681 ]
  %692 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %691)
  br label %2839

693:                                              ; preds = %612, %678, %658
  %694 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %695 = icmp eq ptr %694, %4
  br i1 %695, label %696, label %706, !prof !234

696:                                              ; preds = %693
  %697 = load i32, ptr %3, align 8
  %698 = and i32 %697, 65535
  %699 = zext nneg i32 %698 to i64
  %700 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %699
  %701 = load i32, ptr %700, align 4, !tbaa !154
  %702 = icmp ult i32 %701, 2
  br i1 %702, label %703, label %706

703:                                              ; preds = %696
  %704 = call ptr @reversed_comparison(ptr noundef %3, i32 noundef %1) #17
  %705 = icmp eq ptr %704, null
  br i1 %705, label %706, label %2839

706:                                              ; preds = %703, %696, %693
  switch i8 %415, label %725 [
    i8 8, label %707
    i8 9, label %707
    i8 11, label %707
    i8 17, label %707
  ], !prof !235

707:                                              ; preds = %706, %706, %706, %706
  %708 = icmp eq i8 %497, 8
  br i1 %708, label %713, label %709

709:                                              ; preds = %707
  %710 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %711 = load i8, ptr %710, align 1, !tbaa !150
  %712 = zext i8 %711 to i32
  br label %713

713:                                              ; preds = %707, %709
  %714 = phi i32 [ %712, %709 ], [ %1, %707 ]
  %715 = add i32 %714, -38
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %716
  %718 = load ptr, ptr %717, align 8, !tbaa !139
  %719 = getelementptr inbounds %struct.real_format, ptr %718, i64 0, i32 10
  %720 = load i8, ptr %719, align 1, !tbaa !216
  %721 = icmp ne i8 %720, 0
  %722 = load i32, ptr @flag_rounding_math, align 4
  %723 = icmp ne i32 %722, 0
  %724 = select i1 %721, i1 %723, i1 false
  br i1 %724, label %742, label %725

725:                                              ; preds = %706, %713
  %726 = load i32, ptr %3, align 8
  %727 = and i32 %726, 65535
  %728 = icmp eq i32 %727, 52
  br i1 %728, label %729, label %742, !prof !234

729:                                              ; preds = %725
  %730 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %731 = load ptr, ptr %730, align 8, !tbaa !150
  %732 = load i32, ptr %731, align 8
  %733 = and i32 %732, 65535
  %734 = icmp eq i32 %733, 51
  br i1 %734, label %735, label %742

735:                                              ; preds = %729
  %736 = getelementptr inbounds %struct.rtx_def, ptr %731, i64 0, i32 1
  %737 = load ptr, ptr %736, align 8, !tbaa !150
  %738 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %739 = load ptr, ptr %738, align 8, !tbaa !150
  %740 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %737, ptr noundef %739)
  %741 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %740, ptr noundef %2)
  br label %2839

742:                                              ; preds = %725, %713, %729
  switch i8 %415, label %761 [
    i8 8, label %743
    i8 9, label %743
    i8 11, label %743
    i8 17, label %743
  ], !prof !235

743:                                              ; preds = %742, %742, %742, %742
  %744 = icmp eq i8 %497, 8
  br i1 %744, label %749, label %745

745:                                              ; preds = %743
  %746 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %747 = load i8, ptr %746, align 1, !tbaa !150
  %748 = zext i8 %747 to i32
  br label %749

749:                                              ; preds = %743, %745
  %750 = phi i32 [ %748, %745 ], [ %1, %743 ]
  %751 = add i32 %750, -38
  %752 = zext i32 %751 to i64
  %753 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %752
  %754 = load ptr, ptr %753, align 8, !tbaa !139
  %755 = getelementptr inbounds %struct.real_format, ptr %754, i64 0, i32 10
  %756 = load i8, ptr %755, align 1, !tbaa !216
  %757 = icmp ne i8 %756, 0
  %758 = load i32, ptr @flag_rounding_math, align 4
  %759 = icmp ne i32 %758, 0
  %760 = select i1 %757, i1 %759, i1 false
  br i1 %760, label %784, label %761

761:                                              ; preds = %742, %749
  %762 = load i32, ptr %3, align 8
  %763 = and i32 %762, 65535
  %764 = icmp eq i32 %763, 52
  br i1 %764, label %765, label %784, !prof !234

765:                                              ; preds = %761
  %766 = load i32, ptr %2, align 8
  %767 = and i32 %766, 65535
  %768 = icmp eq i32 %767, 51
  br i1 %768, label %769, label %784

769:                                              ; preds = %765
  %770 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %771 = load ptr, ptr %770, align 8, !tbaa !150
  %772 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %771, i32 noundef %1)
  %773 = icmp eq ptr %772, null
  br i1 %773, label %774, label %776

774:                                              ; preds = %769
  %775 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %771) #17
  br label %776

776:                                              ; preds = %769, %774
  %777 = phi ptr [ %775, %774 ], [ %772, %769 ]
  %778 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %779 = load ptr, ptr %778, align 8, !tbaa !150
  %780 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %777, ptr noundef %779)
  %781 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %782 = load ptr, ptr %781, align 8, !tbaa !150
  %783 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %1, ptr noundef %780, ptr noundef %782)
  br label %2839

784:                                              ; preds = %761, %749, %765
  switch i8 %415, label %2838 [
    i8 2, label %785
    i8 3, label %785
    i8 10, label %785
    i8 12, label %785
  ], !prof !236

785:                                              ; preds = %784, %784, %784, %784
  %786 = call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef %2), !range !214
  %787 = icmp eq i8 %786, 0
  br i1 %787, label %788, label %791, !prof !530

788:                                              ; preds = %785
  %789 = call fastcc zeroext i8 @plus_minus_operand_p(ptr noundef %3), !range !214
  %790 = icmp eq i8 %789, 0
  br i1 %790, label %2838, label %791, !prof !530

791:                                              ; preds = %788, %785
  %792 = call fastcc ptr @simplify_plus_minus(i32 noundef 50, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %793 = icmp eq ptr %792, null
  br i1 %793, label %2838, label %2839

794:                                              ; preds = %6
  %795 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %796 = icmp eq ptr %795, %5
  br i1 %796, label %797, label %802, !prof !237

797:                                              ; preds = %794
  %798 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %2, i32 noundef %1)
  %799 = icmp eq ptr %798, null
  br i1 %799, label %800, label %2839

800:                                              ; preds = %797
  %801 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %2) #17
  br label %2839

802:                                              ; preds = %794
  %803 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %804 = load i8, ptr %803, align 1, !tbaa !150
  switch i8 %804, label %844 [
    i8 8, label %805
    i8 9, label %805
    i8 11, label %805
    i8 17, label %805
  ], !prof !238

805:                                              ; preds = %802, %802, %802, %802
  %806 = and i8 %804, -2
  %807 = icmp eq i8 %806, 8
  br i1 %807, label %812, label %808

808:                                              ; preds = %805
  %809 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %810 = load i8, ptr %809, align 1, !tbaa !150
  %811 = zext i8 %810 to i32
  br label %812

812:                                              ; preds = %805, %808
  %813 = phi i32 [ %811, %808 ], [ %1, %805 ]
  %814 = add i32 %813, -38
  %815 = zext i32 %814 to i64
  %816 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %815
  %817 = load ptr, ptr %816, align 8, !tbaa !139
  %818 = getelementptr inbounds %struct.real_format, ptr %817, i64 0, i32 11
  %819 = load i8, ptr %818, align 2, !tbaa !178
  %820 = icmp eq i8 %819, 0
  %821 = load i32, ptr @flag_finite_math_only, align 4
  %822 = icmp ne i32 %821, 0
  %823 = select i1 %820, i1 true, i1 %822
  br i1 %823, label %824, label %852

824:                                              ; preds = %812
  switch i8 %804, label %844 [
    i8 8, label %825
    i8 9, label %825
    i8 11, label %825
    i8 17, label %825
  ], !prof !239

825:                                              ; preds = %824, %824, %824, %824
  %826 = and i8 %804, -2
  %827 = icmp eq i8 %826, 8
  br i1 %827, label %832, label %828

828:                                              ; preds = %825
  %829 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %830 = load i8, ptr %829, align 1, !tbaa !150
  %831 = zext i8 %830 to i32
  br label %832

832:                                              ; preds = %825, %828
  %833 = phi i32 [ %831, %828 ], [ %1, %825 ]
  %834 = add i32 %833, -38
  %835 = zext i32 %834 to i64
  %836 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %835
  %837 = load ptr, ptr %836, align 8, !tbaa !139
  %838 = getelementptr inbounds %struct.real_format, ptr %837, i64 0, i32 14
  %839 = load i8, ptr %838, align 1, !tbaa !195
  %840 = icmp ne i8 %839, 0
  %841 = load i32, ptr @flag_signed_zeros, align 4
  %842 = icmp ne i32 %841, 0
  %843 = select i1 %840, i1 %842, i1 false
  br i1 %843, label %852, label %844

844:                                              ; preds = %824, %802, %832
  %845 = sext i32 %1 to i64
  %846 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %845
  %847 = load ptr, ptr %846, align 8, !tbaa !139
  %848 = icmp eq ptr %847, %5
  br i1 %848, label %849, label %852, !prof !237

849:                                              ; preds = %844
  %850 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %2839, label %852

852:                                              ; preds = %844, %832, %812, %849
  %853 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %875, label %855, !prof !240

855:                                              ; preds = %852
  switch i8 %804, label %875 [
    i8 8, label %856
    i8 9, label %856
    i8 11, label %856
    i8 17, label %856
  ]

856:                                              ; preds = %855, %855, %855, %855
  %857 = and i8 %804, -2
  %858 = icmp eq i8 %857, 8
  br i1 %858, label %863, label %859

859:                                              ; preds = %856
  %860 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %861 = load i8, ptr %860, align 1, !tbaa !150
  %862 = zext i8 %861 to i32
  br label %863

863:                                              ; preds = %856, %859
  %864 = phi i32 [ %862, %859 ], [ %1, %856 ]
  %865 = add i32 %864, -38
  %866 = zext i32 %865 to i64
  %867 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %866
  %868 = load ptr, ptr %867, align 8, !tbaa !139
  %869 = getelementptr inbounds %struct.real_format, ptr %868, i64 0, i32 11
  %870 = load i8, ptr %869, align 2, !tbaa !178
  %871 = icmp eq i8 %870, 0
  %872 = load i32, ptr @flag_finite_math_only, align 4
  %873 = icmp ne i32 %872, 0
  %874 = select i1 %871, i1 true, i1 %873
  br i1 %874, label %875, label %880

875:                                              ; preds = %855, %863, %852
  %876 = sext i32 %1 to i64
  %877 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %876
  %878 = load ptr, ptr %877, align 8, !tbaa !139
  %879 = icmp eq ptr %878, %5
  br i1 %879, label %2839, label %880, !prof !237

880:                                              ; preds = %863, %875
  %881 = load i32, ptr %5, align 8
  %882 = and i32 %881, 65535
  %883 = icmp eq i32 %882, 30
  br i1 %883, label %884, label %897, !prof !240

884:                                              ; preds = %880
  %885 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %886 = load i64, ptr %885, align 8, !tbaa !150
  %887 = tail call i32 @exact_log2(i64 noundef %886) #17
  %888 = sext i32 %887 to i64
  %889 = icmp sgt i32 %887, -1
  br i1 %889, label %890, label %897, !prof !241

890:                                              ; preds = %884
  %891 = icmp ult i8 %16, 9
  %892 = icmp ne i32 %887, 63
  %893 = or i1 %891, %892
  br i1 %893, label %894, label %897, !prof !242

894:                                              ; preds = %890
  %895 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %888) #17
  %896 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef %2, ptr noundef %895)
  br label %2839

897:                                              ; preds = %890, %884, %880
  %898 = load i32, ptr %5, align 8
  %899 = and i32 %898, 65535
  %900 = icmp eq i32 %899, 32
  br i1 %900, label %901, label %929, !prof !243

901:                                              ; preds = %897
  %902 = lshr i32 %898, 16
  %903 = and i32 %902, 255
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %910, label %905

905:                                              ; preds = %901
  %906 = zext nneg i32 %903 to i64
  %907 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %906
  %908 = load i8, ptr %907, align 1, !tbaa !150
  %909 = icmp eq i8 %908, 2
  br i1 %909, label %910, label %929

910:                                              ; preds = %905, %901
  %911 = load i32, ptr %2, align 8
  %912 = lshr i32 %911, 16
  %913 = and i32 %912, 255
  %914 = icmp eq i32 %913, %1
  br i1 %914, label %915, label %929

915:                                              ; preds = %910
  %916 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %917 = load i64, ptr %916, align 8, !tbaa !150
  %918 = icmp eq i64 %917, 0
  br i1 %918, label %919, label %929

919:                                              ; preds = %915
  %920 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %921 = load i64, ptr %920, align 8, !tbaa !150
  %922 = tail call i32 @exact_log2(i64 noundef %921) #17
  %923 = icmp sgt i32 %922, -1
  br i1 %923, label %924, label %929

924:                                              ; preds = %919
  %925 = add nuw i32 %922, 64
  %926 = zext i32 %925 to i64
  %927 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %926) #17
  %928 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef %2, ptr noundef %927)
  br label %2839

929:                                              ; preds = %905, %919, %915, %910, %897
  %930 = load i32, ptr %5, align 8
  %931 = and i32 %930, 65535
  %932 = icmp eq i32 %931, 32
  br i1 %932, label %933, label %989, !prof !243

933:                                              ; preds = %929
  %934 = lshr i32 %930, 16
  %935 = and i32 %934, 255
  %936 = zext nneg i32 %935 to i64
  %937 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %936
  %938 = load i8, ptr %937, align 1, !tbaa !150
  %939 = and i8 %938, -2
  %940 = icmp ne i8 %939, 8
  %941 = icmp eq i8 %938, 9
  %942 = or i1 %941, %940
  br i1 %942, label %989, label %943

943:                                              ; preds = %933
  %944 = load i32, ptr %2, align 8
  %945 = lshr i32 %944, 16
  %946 = and i32 %945, 255
  %947 = icmp eq i32 %946, %1
  br i1 %947, label %948, label %989

948:                                              ; preds = %943
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #17
  %949 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %949, i64 32, i1 false), !tbaa.struct !177
  %950 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %11, ptr noundef nonnull @dconst2) #17
  %951 = icmp eq i8 %950, 0
  br i1 %951, label %955, label %952

952:                                              ; preds = %948
  %953 = call ptr @copy_rtx(ptr noundef %2) #17
  %954 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef %953)
  br label %986

955:                                              ; preds = %948
  %956 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %978, label %958

958:                                              ; preds = %955
  switch i8 %804, label %978 [
    i8 8, label %959
    i8 9, label %959
    i8 11, label %959
    i8 17, label %959
  ]

959:                                              ; preds = %958, %958, %958, %958
  %960 = and i8 %804, -2
  %961 = icmp eq i8 %960, 8
  br i1 %961, label %966, label %962

962:                                              ; preds = %959
  %963 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %964 = load i8, ptr %963, align 1, !tbaa !150
  %965 = zext i8 %964 to i32
  br label %966

966:                                              ; preds = %959, %962
  %967 = phi i32 [ %965, %962 ], [ %1, %959 ]
  %968 = add nsw i32 %967, -38
  %969 = zext i32 %968 to i64
  %970 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %969
  %971 = load ptr, ptr %970, align 8, !tbaa !139
  %972 = getelementptr inbounds %struct.real_format, ptr %971, i64 0, i32 11
  %973 = load i8, ptr %972, align 2, !tbaa !178
  %974 = icmp eq i8 %973, 0
  %975 = load i32, ptr @flag_finite_math_only, align 4
  %976 = icmp ne i32 %975, 0
  %977 = select i1 %974, i1 true, i1 %976
  br i1 %977, label %978, label %986

978:                                              ; preds = %958, %966, %955
  %979 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %11, ptr noundef nonnull @dconstm1) #17
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %986, label %981

981:                                              ; preds = %978
  %982 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %2, i32 noundef %1)
  %983 = icmp eq ptr %982, null
  br i1 %983, label %984, label %986

984:                                              ; preds = %981
  %985 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %2) #17
  br label %986

986:                                              ; preds = %966, %984, %981, %978, %952
  %987 = phi i1 [ false, %952 ], [ true, %978 ], [ false, %981 ], [ false, %984 ], [ true, %966 ]
  %988 = phi ptr [ %954, %952 ], [ undef, %978 ], [ %982, %981 ], [ %985, %984 ], [ undef, %966 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  br i1 %987, label %989, label %2839

989:                                              ; preds = %933, %986, %943, %929
  switch i8 %804, label %1013 [
    i8 8, label %990
    i8 9, label %990
    i8 11, label %990
    i8 17, label %990
  ], !prof !244

990:                                              ; preds = %989, %989, %989, %989
  %991 = load i32, ptr %2, align 8
  %992 = and i32 %991, 65535
  %993 = icmp eq i32 %992, 51
  br i1 %993, label %994, label %1013

994:                                              ; preds = %990
  %995 = load i32, ptr %3, align 8
  %996 = and i32 %995, 65535
  %997 = icmp eq i32 %996, 51
  br i1 %997, label %998, label %1013

998:                                              ; preds = %994
  %999 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1000 = load ptr, ptr %999, align 8, !tbaa !150
  %1001 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !150
  %1003 = call i32 @rtx_equal_p(ptr noundef %1000, ptr noundef %1002) #17
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1013, label %1005

1005:                                             ; preds = %998
  %1006 = load ptr, ptr %999, align 8, !tbaa !150
  %1007 = call i32 @side_effects_p(ptr noundef %1006) #17
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1009, label %1013

1009:                                             ; preds = %1005
  %1010 = load ptr, ptr %999, align 8, !tbaa !150
  %1011 = load ptr, ptr %1001, align 8, !tbaa !150
  %1012 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %1010, ptr noundef %1011)
  br label %2839

1013:                                             ; preds = %989, %1005, %998, %994, %990
  %1014 = and i8 %804, -2
  %1015 = icmp eq i8 %1014, 8
  br i1 %1015, label %1016, label %1039, !prof !243

1016:                                             ; preds = %1013
  %1017 = load i32, ptr %2, align 8
  %1018 = and i32 %1017, 65535
  %1019 = icmp eq i32 %1018, 111
  br i1 %1019, label %1020, label %1039

1020:                                             ; preds = %1016
  %1021 = load i32, ptr %3, align 8
  %1022 = and i32 %1021, 65535
  %1023 = icmp eq i32 %1022, 111
  br i1 %1023, label %1024, label %1039

1024:                                             ; preds = %1020
  %1025 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1026 = load ptr, ptr %1025, align 8, !tbaa !150
  %1027 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1028 = load ptr, ptr %1027, align 8, !tbaa !150
  %1029 = call i32 @rtx_equal_p(ptr noundef %1026, ptr noundef %1028) #17
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1039, label %1031

1031:                                             ; preds = %1024
  %1032 = load ptr, ptr %1025, align 8, !tbaa !150
  %1033 = call i32 @side_effects_p(ptr noundef %1032) #17
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1039

1035:                                             ; preds = %1031
  %1036 = load ptr, ptr %1025, align 8, !tbaa !150
  %1037 = load ptr, ptr %1027, align 8, !tbaa !150
  %1038 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %1036, ptr noundef %1037)
  br label %2839

1039:                                             ; preds = %1013, %1031, %1024, %1020, %1016
  switch i8 %804, label %1040 [
    i8 8, label %1045
    i8 9, label %1045
    i8 11, label %1045
  ], !prof !245

1040:                                             ; preds = %1039
  %1041 = icmp ne i8 %804, 17
  %1042 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %1043 = icmp ne i32 %1042, 0
  %1044 = select i1 %1041, i1 true, i1 %1043, !prof !246
  br i1 %1044, label %1048, label %2838, !prof !246

1045:                                             ; preds = %1039, %1039, %1039
  %1046 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !154
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %2838, label %1048

1048:                                             ; preds = %1045, %1040
  %1049 = call fastcc ptr @simplify_associative_operation(i32 noundef 52, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %2838, label %2839, !prof !246

1051:                                             ; preds = %6
  %1052 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %1053 = icmp eq ptr %1052, %5
  br i1 %1053, label %2839, label %1054, !prof !247

1054:                                             ; preds = %1051
  %1055 = load i32, ptr %5, align 8
  %1056 = and i32 %1055, 65535
  %1057 = icmp eq i32 %1056, 30
  br i1 %1057, label %1058, label %1065, !prof !248

1058:                                             ; preds = %1054
  %1059 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1060 = load i64, ptr %1059, align 8, !tbaa !150
  %1061 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1062 = load i64, ptr %1061, align 8, !tbaa !175
  %1063 = and i64 %1062, %1060
  %1064 = icmp eq i64 %1063, %1062
  br i1 %1064, label %2839, label %1065, !prof !249

1065:                                             ; preds = %1058, %1054
  %1066 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef nonnull %5) #17
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1071, label %1068, !prof !250

1068:                                             ; preds = %1065
  %1069 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %2839, label %1071

1071:                                             ; preds = %1068, %1065
  %1072 = load i32, ptr %2, align 8
  %1073 = and i32 %1072, 65535
  %1074 = icmp eq i32 %1073, 64
  br i1 %1074, label %1075, label %1080, !prof !251

1075:                                             ; preds = %1071
  %1076 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1077 = load ptr, ptr %1076, align 8, !tbaa !150
  %1078 = tail call i32 @rtx_equal_p(ptr noundef %1077, ptr noundef %3) #17
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1080, label %1089

1080:                                             ; preds = %1075, %1071
  %1081 = load i32, ptr %3, align 8
  %1082 = and i32 %1081, 65535
  %1083 = icmp eq i32 %1082, 64
  br i1 %1083, label %1084, label %1099, !prof !251

1084:                                             ; preds = %1080
  %1085 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1086 = load ptr, ptr %1085, align 8, !tbaa !150
  %1087 = tail call i32 @rtx_equal_p(ptr noundef %1086, ptr noundef %2) #17
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1099, label %1089

1089:                                             ; preds = %1084, %1075
  %1090 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %1091 = icmp eq i32 %1090, 0
  br i1 %1091, label %1092, label %1099

1092:                                             ; preds = %1089
  %1093 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1094 = load i8, ptr %1093, align 1, !tbaa !150
  %1095 = and i8 %1094, -2
  %1096 = icmp eq i8 %1095, 2
  br i1 %1096, label %1097, label %1099

1097:                                             ; preds = %1092
  %1098 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  br label %2839

1099:                                             ; preds = %1084, %1092, %1089, %1080
  %1100 = load i32, ptr %3, align 8
  %1101 = and i32 %1100, 65535
  %1102 = icmp eq i32 %1101, 30
  br i1 %1102, label %1103, label %1113, !prof !248

1103:                                             ; preds = %1099
  %1104 = load i8, ptr %15, align 1, !tbaa !150
  %1105 = icmp ult i8 %1104, 9
  br i1 %1105, label %1106, label %1113, !prof !252

1106:                                             ; preds = %1103
  %1107 = tail call i64 @nonzero_bits(ptr noundef %2, i32 noundef %1) #17
  %1108 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1109 = load i64, ptr %1108, align 8, !tbaa !150
  %1110 = xor i64 %1109, -1
  %1111 = and i64 %1107, %1110
  %1112 = icmp eq i64 %1111, 0
  br i1 %1112, label %2839, label %1113, !prof !253

1113:                                             ; preds = %1106, %1103, %1099
  %1114 = load i32, ptr %2, align 8
  %1115 = and i32 %1114, 65535
  %1116 = icmp eq i32 %1115, 61
  br i1 %1116, label %1117, label %1162, !prof !254

1117:                                             ; preds = %1113
  %1118 = load i32, ptr %5, align 8
  %1119 = and i32 %1118, 65535
  %1120 = icmp eq i32 %1119, 30
  br i1 %1120, label %1121, label %1162, !prof !255

1121:                                             ; preds = %1117
  %1122 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1123 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1124 = load ptr, ptr %1123, align 8, !tbaa !150
  %1125 = load i32, ptr %1124, align 8
  %1126 = and i32 %1125, 65535
  %1127 = icmp eq i32 %1126, 30
  br i1 %1127, label %1128, label %1162, !prof !256

1128:                                             ; preds = %1121
  %1129 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1130 = load i64, ptr %1129, align 8, !tbaa !175
  %1131 = getelementptr inbounds %struct.rtx_def, ptr %1124, i64 0, i32 1
  %1132 = load i64, ptr %1131, align 8, !tbaa !150
  %1133 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1134 = load i64, ptr %1133, align 8, !tbaa !150
  %1135 = and i64 %1134, %1132
  %1136 = icmp eq i64 %1135, %1132
  br i1 %1136, label %1137, label %1141, !prof !257

1137:                                             ; preds = %1128
  %1138 = load ptr, ptr %1122, align 8, !tbaa !150
  %1139 = tail call i32 @side_effects_p(ptr noundef %1138) #17
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1159, label %1141

1141:                                             ; preds = %1137, %1128
  %1142 = or i64 %1134, %1132
  %1143 = and i64 %1142, %1130
  %1144 = icmp eq i64 %1143, %1130
  br i1 %1144, label %1145, label %1147, !prof !257

1145:                                             ; preds = %1141
  %1146 = load ptr, ptr %1122, align 8, !tbaa !150
  br label %1156

1147:                                             ; preds = %1141
  %1148 = and i64 %1135, %1130
  %1149 = icmp eq i64 %1148, 0
  br i1 %1149, label %1159, label %1150, !prof !258

1150:                                             ; preds = %1147
  %1151 = xor i64 %1134, -1
  %1152 = and i64 %1132, %1151
  %1153 = load ptr, ptr %1122, align 8, !tbaa !150
  %1154 = tail call ptr @gen_int_mode(i64 noundef %1152, i32 noundef %1) #17
  %1155 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1153, ptr noundef %1154)
  br label %1156

1156:                                             ; preds = %1145, %1150
  %1157 = phi ptr [ %1155, %1150 ], [ %1146, %1145 ]
  %1158 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1157, ptr noundef %3)
  br label %1159

1159:                                             ; preds = %1156, %1147, %1137
  %1160 = phi i1 [ false, %1137 ], [ true, %1147 ], [ false, %1156 ]
  %1161 = phi ptr [ %5, %1137 ], [ undef, %1147 ], [ %1158, %1156 ]
  br i1 %1160, label %1162, label %2839, !prof !258

1162:                                             ; preds = %1159, %1121, %1117, %1113
  %1163 = phi ptr [ %1161, %1159 ], [ undef, %1121 ], [ undef, %1117 ], [ undef, %1113 ]
  %1164 = load i32, ptr %2, align 8
  %1165 = and i32 %1164, 65535
  %1166 = icmp eq i32 %1165, 61
  br i1 %1166, label %1167, label %1186, !prof !259

1167:                                             ; preds = %1162
  %1168 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1169 = load ptr, ptr %1168, align 8, !tbaa !150
  %1170 = tail call i32 @rtx_equal_p(ptr noundef %1169, ptr noundef %3) #17
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1172, label %1177, !prof !260

1172:                                             ; preds = %1167
  %1173 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1174 = load ptr, ptr %1173, align 8, !tbaa !150
  %1175 = tail call i32 @rtx_equal_p(ptr noundef %1174, ptr noundef %3) #17
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1186, label %1177, !prof !260

1177:                                             ; preds = %1172, %1167
  %1178 = load ptr, ptr %1168, align 8, !tbaa !150
  %1179 = tail call i32 @side_effects_p(ptr noundef %1178) #17
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1181, label %1186

1181:                                             ; preds = %1177
  %1182 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1183 = load ptr, ptr %1182, align 8, !tbaa !150
  %1184 = tail call i32 @side_effects_p(ptr noundef %1183) #17
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %2839, label %1186

1186:                                             ; preds = %1172, %1181, %1177, %1162
  %1187 = load i32, ptr %3, align 8
  %1188 = trunc i32 %1187 to i16
  switch i16 %1188, label %1189 [
    i16 65, label %1190
    i16 39, label %1190
  ], !prof !261

1189:                                             ; preds = %1186
  br label %1190

1190:                                             ; preds = %1186, %1186, %1189
  %1191 = phi ptr [ %3, %1189 ], [ %2, %1186 ], [ %2, %1186 ]
  %1192 = phi ptr [ %2, %1189 ], [ %3, %1186 ], [ %3, %1186 ]
  %1193 = load i32, ptr %1192, align 8
  %1194 = and i32 %1193, 65535
  %1195 = icmp eq i32 %1194, 65
  br i1 %1195, label %1196, label %1232, !prof !262

1196:                                             ; preds = %1190
  %1197 = load i32, ptr %1191, align 8
  %1198 = and i32 %1197, 65535
  %1199 = icmp eq i32 %1198, 68
  br i1 %1199, label %1200, label %1232, !prof !263

1200:                                             ; preds = %1196
  %1201 = getelementptr inbounds %struct.rtx_def, ptr %1192, i64 0, i32 1
  %1202 = load ptr, ptr %1201, align 8, !tbaa !150
  %1203 = getelementptr inbounds %struct.rtx_def, ptr %1191, i64 0, i32 1
  %1204 = load ptr, ptr %1203, align 8, !tbaa !150
  %1205 = tail call i32 @rtx_equal_p(ptr noundef %1202, ptr noundef %1204) #17
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1232, label %1207

1207:                                             ; preds = %1200
  %1208 = getelementptr inbounds %struct.rtx_def, ptr %1192, i64 0, i32 1, i32 0, i32 0, i64 1
  %1209 = load ptr, ptr %1208, align 8, !tbaa !150
  %1210 = load i32, ptr %1209, align 8
  %1211 = and i32 %1210, 65535
  %1212 = icmp eq i32 %1211, 30
  br i1 %1212, label %1213, label %1232

1213:                                             ; preds = %1207
  %1214 = getelementptr inbounds %struct.rtx_def, ptr %1191, i64 0, i32 1, i32 0, i32 0, i64 1
  %1215 = load ptr, ptr %1214, align 8, !tbaa !150
  %1216 = load i32, ptr %1215, align 8
  %1217 = and i32 %1216, 65535
  %1218 = icmp eq i32 %1217, 30
  br i1 %1218, label %1219, label %1232

1219:                                             ; preds = %1213
  %1220 = getelementptr inbounds %struct.rtx_def, ptr %1209, i64 0, i32 1
  %1221 = load i64, ptr %1220, align 8, !tbaa !150
  %1222 = getelementptr inbounds %struct.rtx_def, ptr %1215, i64 0, i32 1
  %1223 = load i64, ptr %1222, align 8, !tbaa !150
  %1224 = add nsw i64 %1223, %1221
  %1225 = load i8, ptr %15, align 1, !tbaa !150
  %1226 = zext i8 %1225 to i64
  %1227 = shl nuw nsw i64 %1226, 3
  %1228 = icmp eq i64 %1224, %1227
  br i1 %1228, label %1229, label %1232

1229:                                             ; preds = %1219
  %1230 = load ptr, ptr %1203, align 8, !tbaa !150
  %1231 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %1, ptr noundef %1230, ptr noundef nonnull %1209) #17
  br label %2839

1232:                                             ; preds = %1219, %1213, %1207, %1200, %1196, %1190
  %1233 = load i32, ptr %1192, align 8
  %1234 = and i32 %1233, 65535
  %1235 = icmp eq i32 %1234, 39
  br i1 %1235, label %1236, label %1307, !prof !264

1236:                                             ; preds = %1232
  %1237 = getelementptr inbounds %struct.rtx_def, ptr %1192, i64 0, i32 1
  %1238 = load ptr, ptr %1237, align 8, !tbaa !150
  %1239 = load i32, ptr %1238, align 8
  %1240 = and i32 %1239, 65535
  %1241 = icmp eq i32 %1240, 65
  br i1 %1241, label %1242, label %1307, !prof !265

1242:                                             ; preds = %1236
  %1243 = load i32, ptr %1191, align 8
  %1244 = and i32 %1243, 65535
  %1245 = icmp eq i32 %1244, 68
  br i1 %1245, label %1246, label %1307

1246:                                             ; preds = %1242
  %1247 = getelementptr inbounds %struct.rtx_def, ptr %1191, i64 0, i32 1
  %1248 = load ptr, ptr %1247, align 8, !tbaa !150
  %1249 = load i32, ptr %1248, align 8
  %1250 = and i32 %1249, 65535
  %1251 = icmp eq i32 %1250, 39
  br i1 %1251, label %1252, label %1307

1252:                                             ; preds = %1246
  %1253 = lshr i32 %1233, 16
  %1254 = and i32 %1253, 255
  %1255 = lshr i32 %1249, 16
  %1256 = and i32 %1255, 255
  %1257 = icmp eq i32 %1254, %1256
  br i1 %1257, label %1258, label %1307

1258:                                             ; preds = %1252
  %1259 = getelementptr inbounds %struct.rtx_def, ptr %1192, i64 0, i32 1, i32 0, i32 0, i64 1
  %1260 = load i32, ptr %1259, align 8, !tbaa !150
  %1261 = getelementptr inbounds %struct.rtx_def, ptr %1248, i64 0, i32 1
  %1262 = getelementptr inbounds %struct.rtx_def, ptr %1248, i64 0, i32 1, i32 0, i32 0, i64 1
  %1263 = load i32, ptr %1262, align 8, !tbaa !150
  %1264 = icmp eq i32 %1260, %1263
  br i1 %1264, label %1265, label %1307

1265:                                             ; preds = %1258
  %1266 = zext nneg i32 %1254 to i64
  %1267 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1266
  %1268 = load i8, ptr %1267, align 1, !tbaa !150
  %1269 = lshr i32 %1239, 16
  %1270 = and i32 %1269, 255
  %1271 = zext nneg i32 %1270 to i64
  %1272 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1271
  %1273 = load i8, ptr %1272, align 1, !tbaa !150
  %1274 = icmp ult i8 %1268, %1273
  br i1 %1274, label %1275, label %1307

1275:                                             ; preds = %1265
  %1276 = getelementptr inbounds %struct.rtx_def, ptr %1238, i64 0, i32 1
  %1277 = load ptr, ptr %1276, align 8, !tbaa !150
  %1278 = load ptr, ptr %1261, align 8, !tbaa !150
  %1279 = tail call i32 @rtx_equal_p(ptr noundef %1277, ptr noundef %1278) #17
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1307, label %1281

1281:                                             ; preds = %1275
  %1282 = load ptr, ptr %1237, align 8, !tbaa !150
  %1283 = getelementptr inbounds %struct.rtx_def, ptr %1282, i64 0, i32 1, i32 0, i32 0, i64 1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !150
  %1285 = load i32, ptr %1284, align 8
  %1286 = and i32 %1285, 65535
  %1287 = icmp eq i32 %1286, 30
  br i1 %1287, label %1288, label %1307

1288:                                             ; preds = %1281
  %1289 = getelementptr inbounds %struct.rtx_def, ptr %1191, i64 0, i32 1, i32 0, i32 0, i64 1
  %1290 = load ptr, ptr %1289, align 8, !tbaa !150
  %1291 = load i32, ptr %1290, align 8
  %1292 = and i32 %1291, 65535
  %1293 = icmp eq i32 %1292, 30
  br i1 %1293, label %1294, label %1307

1294:                                             ; preds = %1288
  %1295 = getelementptr inbounds %struct.rtx_def, ptr %1284, i64 0, i32 1
  %1296 = load i64, ptr %1295, align 8, !tbaa !150
  %1297 = getelementptr inbounds %struct.rtx_def, ptr %1290, i64 0, i32 1
  %1298 = load i64, ptr %1297, align 8, !tbaa !150
  %1299 = add nsw i64 %1298, %1296
  %1300 = load i8, ptr %15, align 1, !tbaa !150
  %1301 = zext i8 %1300 to i64
  %1302 = shl nuw nsw i64 %1301, 3
  %1303 = icmp eq i64 %1299, %1302
  br i1 %1303, label %1304, label %1307

1304:                                             ; preds = %1294
  %1305 = load ptr, ptr %1247, align 8, !tbaa !150
  %1306 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %1, ptr noundef %1305, ptr noundef nonnull %1284) #17
  br label %2839

1307:                                             ; preds = %1294, %1288, %1281, %1275, %1265, %1258, %1252, %1246, %1242, %1236, %1232
  %1308 = load i32, ptr %3, align 8
  %1309 = and i32 %1308, 65535
  %1310 = icmp eq i32 %1309, 30
  br i1 %1310, label %1311, label %1343, !prof !266

1311:                                             ; preds = %1307
  %1312 = load i8, ptr %15, align 1, !tbaa !150
  %1313 = icmp ult i8 %1312, 9
  br i1 %1313, label %1318, label %1314, !prof !267

1314:                                             ; preds = %1311
  %1315 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1316 = load i64, ptr %1315, align 8, !tbaa !150
  %1317 = icmp sgt i64 %1316, 0
  br i1 %1317, label %1318, label %1343

1318:                                             ; preds = %1314, %1311
  %1319 = load i32, ptr %2, align 8
  %1320 = and i32 %1319, 65535
  %1321 = icmp eq i32 %1320, 61
  br i1 %1321, label %1322, label %1343, !prof !268

1322:                                             ; preds = %1318
  %1323 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1324 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1325 = load ptr, ptr %1324, align 8, !tbaa !150
  %1326 = load i32, ptr %1325, align 8
  %1327 = and i32 %1326, 65535
  %1328 = icmp eq i32 %1327, 30
  br i1 %1328, label %1329, label %1343, !prof !269

1329:                                             ; preds = %1322
  %1330 = getelementptr inbounds %struct.rtx_def, ptr %1325, i64 0, i32 1
  %1331 = load i64, ptr %1330, align 8, !tbaa !150
  %1332 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1333 = load i64, ptr %1332, align 8, !tbaa !150
  %1334 = and i64 %1333, %1331
  %1335 = icmp eq i64 %1334, 0
  br i1 %1335, label %1343, label %1336, !prof !269

1336:                                             ; preds = %1329
  %1337 = load ptr, ptr %1323, align 8, !tbaa !150
  %1338 = xor i64 %1333, -1
  %1339 = and i64 %1331, %1338
  %1340 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1339) #17
  %1341 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1337, ptr noundef %1340)
  %1342 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1341, ptr noundef %3)
  br label %2839

1343:                                             ; preds = %1314, %1329, %1322, %1318, %1307
  %1344 = load i32, ptr %5, align 8
  %1345 = and i32 %1344, 65535
  %1346 = icmp eq i32 %1345, 30
  br i1 %1346, label %1347, label %1392, !prof !266

1347:                                             ; preds = %1343
  %1348 = load i32, ptr %2, align 8
  %1349 = and i32 %1348, 65535
  %1350 = icmp eq i32 %1349, 67
  br i1 %1350, label %1351, label %1392, !prof !270

1351:                                             ; preds = %1347
  %1352 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1353 = load ptr, ptr %1352, align 8, !tbaa !150
  %1354 = load i32, ptr %1353, align 8
  %1355 = and i32 %1354, 65535
  %1356 = icmp eq i32 %1355, 49
  br i1 %1356, label %1357, label %1392

1357:                                             ; preds = %1351
  %1358 = getelementptr inbounds %struct.rtx_def, ptr %1353, i64 0, i32 1, i32 0, i32 0, i64 1
  %1359 = load ptr, ptr %1358, align 8, !tbaa !150
  %1360 = load i32, ptr %1359, align 8
  %1361 = and i32 %1360, 65535
  %1362 = icmp eq i32 %1361, 30
  br i1 %1362, label %1363, label %1392

1363:                                             ; preds = %1357
  %1364 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1365 = load ptr, ptr %1364, align 8, !tbaa !150
  %1366 = load i32, ptr %1365, align 8
  %1367 = and i32 %1366, 65535
  %1368 = icmp eq i32 %1367, 30
  br i1 %1368, label %1369, label %1392

1369:                                             ; preds = %1363
  %1370 = getelementptr inbounds %struct.rtx_def, ptr %1365, i64 0, i32 1
  %1371 = load i64, ptr %1370, align 8, !tbaa !150
  %1372 = icmp slt i64 %1371, 64
  br i1 %1372, label %1373, label %1392

1373:                                             ; preds = %1369
  %1374 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1375 = load i64, ptr %1374, align 8, !tbaa !150
  %1376 = and i64 %1371, 4294967295
  %1377 = shl i64 %1375, %1376
  %1378 = ashr exact i64 %1377, %1376
  %1379 = icmp eq i64 %1378, %1375
  br i1 %1379, label %1380, label %1389

1380:                                             ; preds = %1373
  %1381 = tail call i64 @nonzero_bits(ptr noundef nonnull %1353, i32 noundef %1) #17
  %1382 = and i64 %1381, %1377
  %1383 = icmp eq i64 %1382, 0
  br i1 %1383, label %1384, label %1389

1384:                                             ; preds = %1380
  %1385 = load ptr, ptr %1352, align 8, !tbaa !150
  %1386 = tail call ptr @plus_constant(ptr noundef %1385, i64 noundef %1377) #17
  %1387 = load ptr, ptr %1364, align 8, !tbaa !150
  %1388 = tail call ptr @simplify_gen_binary(i32 noundef 67, i32 noundef %1, ptr noundef %1386, ptr noundef %1387)
  br label %1389

1389:                                             ; preds = %1373, %1380, %1384
  %1390 = phi i1 [ false, %1384 ], [ true, %1380 ], [ true, %1373 ]
  %1391 = phi ptr [ %1388, %1384 ], [ %1163, %1380 ], [ %1163, %1373 ]
  br i1 %1390, label %1392, label %2839

1392:                                             ; preds = %1343, %1389, %1369, %1363, %1357, %1351, %1347
  %1393 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 62, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %1394 = icmp eq ptr %1393, null
  br i1 %1394, label %2838, label %2839, !prof !271

1395:                                             ; preds = %6
  %1396 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %1397 = icmp eq ptr %1396, %5
  br i1 %1397, label %2839, label %1398, !prof !159

1398:                                             ; preds = %1395
  %1399 = load i32, ptr %5, align 8
  %1400 = and i32 %1399, 65535
  %1401 = icmp eq i32 %1400, 30
  br i1 %1401, label %1402, label %1414, !prof !158

1402:                                             ; preds = %1398
  %1403 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1404 = load i64, ptr %1403, align 8, !tbaa !150
  %1405 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1406 = load i64, ptr %1405, align 8, !tbaa !175
  %1407 = and i64 %1406, %1404
  %1408 = icmp eq i64 %1407, %1406
  br i1 %1408, label %1409, label %1414, !prof !159

1409:                                             ; preds = %1402
  %1410 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %2, i32 noundef %1)
  %1411 = icmp eq ptr %1410, null
  br i1 %1411, label %1412, label %2839

1412:                                             ; preds = %1409
  %1413 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %2) #17
  br label %2839

1414:                                             ; preds = %1402, %1398
  %1415 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef nonnull %5) #17
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1428, label %1417, !prof !158

1417:                                             ; preds = %1414
  %1418 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1420, label %1428

1420:                                             ; preds = %1417
  %1421 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1422 = load i8, ptr %1421, align 1, !tbaa !150
  %1423 = icmp eq i8 %1422, 1
  br i1 %1423, label %1428, label %1424

1424:                                             ; preds = %1420
  %1425 = sext i32 %1 to i64
  %1426 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1425
  %1427 = load ptr, ptr %1426, align 8, !tbaa !139
  br label %2839

1428:                                             ; preds = %1420, %1417, %1414
  %1429 = load i32, ptr %3, align 8
  %1430 = trunc i32 %1429 to i16
  switch i16 %1430, label %1497 [
    i16 30, label %1431
    i16 32, label %1431
  ]

1431:                                             ; preds = %1428, %1428
  %1432 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1433 = load i8, ptr %1432, align 1, !tbaa !150
  %1434 = icmp eq i8 %1433, 2
  br i1 %1434, label %1435, label %1474, !prof !158

1435:                                             ; preds = %1431
  %1436 = load i8, ptr %15, align 1, !tbaa !150
  %1437 = zext i8 %1436 to i32
  %1438 = shl nuw nsw i32 %1437, 3
  %1439 = icmp eq i8 %1436, 0
  br i1 %1439, label %1474, label %1440, !prof !159

1440:                                             ; preds = %1435
  %1441 = icmp ult i8 %1436, 9
  %1442 = and i32 %1429, 65535
  %1443 = icmp eq i32 %1442, 30
  %1444 = and i1 %1443, %1441
  br i1 %1444, label %1445, label %1447, !prof !272

1445:                                             ; preds = %1440
  %1446 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %1459

1447:                                             ; preds = %1440
  %1448 = icmp ult i8 %1436, 17
  %1449 = and i32 %1429, 65535
  %1450 = icmp eq i32 %1449, 32
  %1451 = and i1 %1450, %1448
  br i1 %1451, label %1452, label %1474

1452:                                             ; preds = %1447
  %1453 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1454 = load i64, ptr %1453, align 8, !tbaa !150
  %1455 = icmp eq i64 %1454, 0
  br i1 %1455, label %1456, label %1474

1456:                                             ; preds = %1452
  %1457 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %1458 = add nsw i32 %1438, -64
  br label %1459

1459:                                             ; preds = %1456, %1445
  %1460 = phi ptr [ %1446, %1445 ], [ %1457, %1456 ]
  %1461 = phi i32 [ %1438, %1445 ], [ %1458, %1456 ]
  %1462 = load i64, ptr %1460, align 8, !tbaa !150
  %1463 = icmp ult i32 %1461, 64
  %1464 = zext nneg i32 %1461 to i64
  %1465 = shl nsw i64 -1, %1464
  %1466 = xor i64 %1465, -1
  %1467 = select i1 %1463, i64 %1466, i64 -1, !prof !158
  %1468 = and i64 %1467, %1462
  %1469 = add nsw i32 %1461, -1
  %1470 = zext nneg i32 %1469 to i64
  %1471 = shl nuw i64 1, %1470
  %1472 = icmp eq i64 %1468, %1471
  %1473 = zext i1 %1472 to i8
  br label %1474

1474:                                             ; preds = %1431, %1435, %1447, %1452, %1459
  %1475 = phi i8 [ %1473, %1459 ], [ 0, %1431 ], [ 0, %1435 ], [ 0, %1452 ], [ 0, %1447 ]
  %1476 = icmp eq i8 %1475, 0
  br i1 %1476, label %1479, label %1477, !prof !158

1477:                                             ; preds = %1474
  %1478 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %2839

1479:                                             ; preds = %1474
  switch i16 %1430, label %1497 [
    i16 30, label %1480
    i16 32, label %1480
  ], !prof !273

1480:                                             ; preds = %1479, %1479
  %1481 = load i32, ptr %2, align 8
  %1482 = and i32 %1481, 65535
  %1483 = icmp eq i32 %1482, 49
  br i1 %1483, label %1484, label %1497, !prof !159

1484:                                             ; preds = %1480
  %1485 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1486 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1487 = load ptr, ptr %1486, align 8, !tbaa !150
  %1488 = load i32, ptr %1487, align 8
  %1489 = trunc i32 %1488 to i16
  switch i16 %1489, label %1497 [
    i16 30, label %1490
    i16 32, label %1490
  ]

1490:                                             ; preds = %1484, %1484
  %1491 = tail call zeroext i8 @mode_signbit_p(i32 noundef %1, ptr noundef nonnull %1487), !range !214
  %1492 = icmp eq i8 %1491, 0
  br i1 %1492, label %1497, label %1493

1493:                                             ; preds = %1490
  %1494 = load ptr, ptr %1485, align 8, !tbaa !150
  %1495 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %1487)
  %1496 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1494, ptr noundef %1495)
  br label %2839

1497:                                             ; preds = %1490, %1480, %1428, %1484, %1479
  %1498 = load i8, ptr %15, align 1, !tbaa !150
  %1499 = icmp ult i8 %1498, 9
  br i1 %1499, label %1500, label %1507, !prof !158

1500:                                             ; preds = %1497
  %1501 = tail call i64 @nonzero_bits(ptr noundef %2, i32 noundef %1) #17
  %1502 = tail call i64 @nonzero_bits(ptr noundef %3, i32 noundef %1) #17
  %1503 = and i64 %1502, %1501
  %1504 = icmp eq i64 %1503, 0
  br i1 %1504, label %1505, label %1507, !prof !159

1505:                                             ; preds = %1500
  %1506 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %2839

1507:                                             ; preds = %1500, %1497
  %1508 = load i32, ptr %2, align 8
  %1509 = and i32 %1508, 65535
  %1510 = icmp eq i32 %1509, 64
  br i1 %1510, label %1511, label %1514, !prof !159

1511:                                             ; preds = %1507
  %1512 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1513 = load ptr, ptr %1512, align 8, !tbaa !150
  br label %1514

1514:                                             ; preds = %1511, %1507
  %1515 = phi i32 [ 1, %1511 ], [ 0, %1507 ]
  %1516 = phi ptr [ %1513, %1511 ], [ %2, %1507 ]
  %1517 = load i32, ptr %3, align 8
  %1518 = and i32 %1517, 65535
  %1519 = icmp eq i32 %1518, 64
  br i1 %1519, label %1520, label %1524, !prof !159

1520:                                             ; preds = %1514
  %1521 = add nuw nsw i32 %1515, 1
  %1522 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1523 = load ptr, ptr %1522, align 8, !tbaa !150
  br label %1524

1524:                                             ; preds = %1520, %1514
  %1525 = phi i32 [ %1521, %1520 ], [ %1515, %1514 ]
  %1526 = phi ptr [ %1523, %1520 ], [ %3, %1514 ]
  switch i32 %1525, label %1535 [
    i32 2, label %1527
    i32 1, label %1529
  ], !prof !274

1527:                                             ; preds = %1524
  %1528 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1516, ptr noundef %1526)
  br label %1535

1529:                                             ; preds = %1524
  %1530 = tail call ptr @simplify_gen_binary(i32 noundef 63, i32 noundef %1, ptr noundef %1516, ptr noundef %1526)
  %1531 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %1530, i32 noundef %1)
  %1532 = icmp eq ptr %1531, null
  br i1 %1532, label %1533, label %1535

1533:                                             ; preds = %1529
  %1534 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %1530) #17
  br label %1535

1535:                                             ; preds = %1533, %1529, %1524, %1527
  %1536 = phi i1 [ false, %1527 ], [ true, %1524 ], [ false, %1529 ], [ false, %1533 ]
  %1537 = phi ptr [ %1528, %1527 ], [ undef, %1524 ], [ %1531, %1529 ], [ %1534, %1533 ]
  br i1 %1536, label %1538, label %2839, !prof !158

1538:                                             ; preds = %1535
  %1539 = load i32, ptr %1516, align 8
  %1540 = and i32 %1539, 65535
  %1541 = icmp eq i32 %1540, 61
  br i1 %1541, label %1542, label %1560, !prof !275

1542:                                             ; preds = %1538
  %1543 = getelementptr inbounds %struct.rtx_def, ptr %1516, i64 0, i32 1
  %1544 = getelementptr inbounds %struct.rtx_def, ptr %1516, i64 0, i32 1, i32 0, i32 0, i64 1
  %1545 = load ptr, ptr %1544, align 8, !tbaa !150
  %1546 = tail call i32 @rtx_equal_p(ptr noundef %1545, ptr noundef %1526) #17
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1560, label %1548, !prof !276

1548:                                             ; preds = %1542
  %1549 = tail call i32 @side_effects_p(ptr noundef %1526) #17
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1551, label %1560, !prof !277

1551:                                             ; preds = %1548
  %1552 = load ptr, ptr %1543, align 8, !tbaa !150
  %1553 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %1552, i32 noundef %1)
  %1554 = icmp eq ptr %1553, null
  br i1 %1554, label %1555, label %1557, !prof !277

1555:                                             ; preds = %1551
  %1556 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %1552) #17
  br label %1557

1557:                                             ; preds = %1551, %1555
  %1558 = phi ptr [ %1556, %1555 ], [ %1553, %1551 ]
  %1559 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1558, ptr noundef %1526)
  br label %2839

1560:                                             ; preds = %1548, %1542, %1538
  %1561 = load i32, ptr %1516, align 8
  %1562 = and i32 %1561, 65535
  %1563 = icmp eq i32 %1562, 61
  br i1 %1563, label %1564, label %1582, !prof !278

1564:                                             ; preds = %1560
  %1565 = getelementptr inbounds %struct.rtx_def, ptr %1516, i64 0, i32 1
  %1566 = load ptr, ptr %1565, align 8, !tbaa !150
  %1567 = tail call i32 @rtx_equal_p(ptr noundef %1566, ptr noundef %1526) #17
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1582, label %1569

1569:                                             ; preds = %1564
  %1570 = tail call i32 @side_effects_p(ptr noundef %1526) #17
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1572, label %1582

1572:                                             ; preds = %1569
  %1573 = getelementptr inbounds %struct.rtx_def, ptr %1516, i64 0, i32 1, i32 0, i32 0, i64 1
  %1574 = load ptr, ptr %1573, align 8, !tbaa !150
  %1575 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %1574, i32 noundef %1)
  %1576 = icmp eq ptr %1575, null
  br i1 %1576, label %1577, label %1579

1577:                                             ; preds = %1572
  %1578 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %1574) #17
  br label %1579

1579:                                             ; preds = %1572, %1577
  %1580 = phi ptr [ %1578, %1577 ], [ %1575, %1572 ]
  %1581 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1580, ptr noundef %1526)
  br label %2839

1582:                                             ; preds = %1560, %1564, %1569
  %1583 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %1584 = icmp eq ptr %1583, %5
  br i1 %1584, label %1585, label %1595, !prof !279

1585:                                             ; preds = %1582
  %1586 = load i32, ptr %1516, align 8
  %1587 = and i32 %1586, 65535
  %1588 = zext nneg i32 %1587 to i64
  %1589 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1588
  %1590 = load i32, ptr %1589, align 4, !tbaa !154
  %1591 = icmp ult i32 %1590, 2
  br i1 %1591, label %1592, label %1595, !prof !280

1592:                                             ; preds = %1585
  %1593 = tail call ptr @reversed_comparison(ptr noundef nonnull %1516, i32 noundef %1) #17
  %1594 = icmp eq ptr %1593, null
  br i1 %1594, label %1595, label %2839

1595:                                             ; preds = %1592, %1585, %1582
  %1596 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !139
  %1597 = icmp eq ptr %1596, %5
  br i1 %1597, label %1598, label %1622, !prof !279

1598:                                             ; preds = %1595
  %1599 = load i32, ptr %1516, align 8
  %1600 = and i32 %1599, 65535
  %1601 = icmp eq i32 %1600, 68
  br i1 %1601, label %1602, label %1622, !prof !280

1602:                                             ; preds = %1598
  %1603 = getelementptr inbounds %struct.rtx_def, ptr %1516, i64 0, i32 1
  %1604 = getelementptr inbounds %struct.rtx_def, ptr %1516, i64 0, i32 1, i32 0, i32 0, i64 1
  %1605 = load ptr, ptr %1604, align 8, !tbaa !150
  %1606 = load i32, ptr %1605, align 8
  %1607 = and i32 %1606, 65535
  %1608 = icmp eq i32 %1607, 30
  br i1 %1608, label %1609, label %1622

1609:                                             ; preds = %1602
  %1610 = getelementptr inbounds %struct.rtx_def, ptr %1605, i64 0, i32 1
  %1611 = load i64, ptr %1610, align 8, !tbaa !150
  %1612 = load i8, ptr %15, align 1, !tbaa !150
  %1613 = zext i8 %1612 to i32
  %1614 = shl nuw nsw i32 %1613, 3
  %1615 = add nsw i32 %1614, -1
  %1616 = sext i32 %1615 to i64
  %1617 = icmp eq i64 %1611, %1616
  br i1 %1617, label %1618, label %1622

1618:                                             ; preds = %1609
  %1619 = load ptr, ptr %1603, align 8, !tbaa !150
  %1620 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %1621 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef %1, ptr noundef %1619, ptr noundef %1620) #17
  br label %2839

1622:                                             ; preds = %1609, %1602, %1598, %1595
  %1623 = load i8, ptr %15, align 1, !tbaa !150
  %1624 = icmp ult i8 %1623, 9
  br i1 %1624, label %1625, label %1648, !prof !281

1625:                                             ; preds = %1622
  %1626 = shl nuw nsw i8 %1623, 3
  %1627 = zext nneg i8 %1626 to i64
  %1628 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %1629 = load i64, ptr %1628, align 8, !tbaa !175
  %1630 = and i64 %1629, 1
  %1631 = add nuw nsw i64 %1627, 4294967295
  %1632 = and i64 %1631, 4294967295
  %1633 = shl nuw i64 1, %1632
  %1634 = icmp eq i64 %1630, %1633
  %1635 = load ptr, ptr @const_true_rtx, align 8
  %1636 = icmp eq ptr %1635, %5
  %1637 = select i1 %1634, i1 %1636, i1 false, !prof !278
  br i1 %1637, label %1638, label %1648, !prof !278

1638:                                             ; preds = %1625
  %1639 = load i32, ptr %1516, align 8
  %1640 = and i32 %1639, 65535
  %1641 = zext nneg i32 %1640 to i64
  %1642 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1641
  %1643 = load i32, ptr %1642, align 4, !tbaa !154
  %1644 = icmp ult i32 %1643, 2
  br i1 %1644, label %1645, label %1648

1645:                                             ; preds = %1638
  %1646 = tail call ptr @reversed_comparison(ptr noundef nonnull %1516, i32 noundef %1) #17
  %1647 = icmp eq ptr %1646, null
  br i1 %1647, label %1648, label %2839

1648:                                             ; preds = %1645, %1638, %1625, %1622
  %1649 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 63, i32 noundef %1, ptr noundef nonnull %1516, ptr noundef %1526)
  %1650 = icmp eq ptr %1649, null
  br i1 %1650, label %2838, label %2839, !prof !281

1651:                                             ; preds = %6
  %1652 = sext i32 %1 to i64
  %1653 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1652
  %1654 = load ptr, ptr %1653, align 8, !tbaa !139
  %1655 = icmp eq ptr %1654, %5
  br i1 %1655, label %1656, label %1659, !prof !282

1656:                                             ; preds = %1651
  %1657 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %1658 = icmp eq i32 %1657, 0
  br i1 %1658, label %2839, label %1659

1659:                                             ; preds = %1656, %1651
  %1660 = load i8, ptr %15, align 1, !tbaa !150
  %1661 = icmp ult i8 %1660, 9
  br i1 %1661, label %1662, label %1688, !prof !283

1662:                                             ; preds = %1659
  %1663 = tail call i64 @nonzero_bits(ptr noundef %4, i32 noundef %1) #17
  %1664 = load i32, ptr %5, align 8
  %1665 = and i32 %1664, 65535
  %1666 = icmp eq i32 %1665, 30
  br i1 %1666, label %1667, label %1673, !prof !283

1667:                                             ; preds = %1662
  %1668 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1669 = load i64, ptr %1668, align 8, !tbaa !150
  %1670 = xor i64 %1669, -1
  %1671 = and i64 %1663, %1670
  %1672 = icmp eq i64 %1671, 0
  br i1 %1672, label %1685, label %1673, !prof !282

1673:                                             ; preds = %1667, %1662
  %1674 = tail call i64 @nonzero_bits(ptr noundef %5, i32 noundef %1) #17
  %1675 = and i64 %1674, %1663
  %1676 = icmp eq i64 %1675, 0
  br i1 %1676, label %1677, label %1685, !prof !282

1677:                                             ; preds = %1673
  %1678 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1680, label %1685

1680:                                             ; preds = %1677
  %1681 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1683, label %1685

1683:                                             ; preds = %1680
  %1684 = load ptr, ptr %1653, align 8, !tbaa !139
  br label %1685

1685:                                             ; preds = %1667, %1673, %1677, %1680, %1683
  %1686 = phi i1 [ false, %1683 ], [ true, %1680 ], [ true, %1677 ], [ true, %1673 ], [ false, %1667 ]
  %1687 = phi ptr [ %1684, %1683 ], [ %2, %1680 ], [ %2, %1677 ], [ %2, %1673 ], [ %2, %1667 ]
  br i1 %1686, label %1688, label %2839, !prof !283

1688:                                             ; preds = %1685, %1659
  %1689 = phi ptr [ %1687, %1685 ], [ undef, %1659 ]
  %1690 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #17
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1699, label %1692, !prof !283

1692:                                             ; preds = %1688
  %1693 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %1694 = icmp eq i32 %1693, 0
  br i1 %1694, label %1695, label %1699

1695:                                             ; preds = %1692
  %1696 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1697 = load i8, ptr %1696, align 1, !tbaa !150
  %1698 = icmp eq i8 %1697, 1
  br i1 %1698, label %1699, label %2839

1699:                                             ; preds = %1695, %1692, %1688
  %1700 = load i32, ptr %2, align 8
  %1701 = and i32 %1700, 65535
  %1702 = icmp eq i32 %1701, 64
  br i1 %1702, label %1703, label %1708, !prof !284

1703:                                             ; preds = %1699
  %1704 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1705 = load ptr, ptr %1704, align 8, !tbaa !150
  %1706 = tail call i32 @rtx_equal_p(ptr noundef %1705, ptr noundef %3) #17
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1708, label %1717, !prof !285

1708:                                             ; preds = %1703, %1699
  %1709 = load i32, ptr %3, align 8
  %1710 = and i32 %1709, 65535
  %1711 = icmp eq i32 %1710, 64
  br i1 %1711, label %1712, label %1726, !prof !282

1712:                                             ; preds = %1708
  %1713 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %1714 = load ptr, ptr %1713, align 8, !tbaa !150
  %1715 = tail call i32 @rtx_equal_p(ptr noundef %1714, ptr noundef %2) #17
  %1716 = icmp eq i32 %1715, 0
  br i1 %1716, label %1726, label %1717

1717:                                             ; preds = %1712, %1703
  %1718 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1720, label %1726

1720:                                             ; preds = %1717
  %1721 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %1722 = load i8, ptr %1721, align 1, !tbaa !150
  %1723 = icmp eq i8 %1722, 1
  br i1 %1723, label %1726, label %1724

1724:                                             ; preds = %1720
  %1725 = load ptr, ptr %1653, align 8, !tbaa !139
  br label %2839

1726:                                             ; preds = %1712, %1720, %1717, %1708
  %1727 = load i32, ptr %2, align 8
  %1728 = and i32 %1727, 65534
  %1729 = icmp eq i32 %1728, 98
  br i1 %1729, label %1730, label %1758, !prof !282

1730:                                             ; preds = %1726
  %1731 = load i32, ptr %5, align 8
  %1732 = and i32 %1731, 65535
  %1733 = icmp eq i32 %1732, 30
  br i1 %1733, label %1734, label %1758

1734:                                             ; preds = %1730
  %1735 = load i8, ptr %15, align 1, !tbaa !150
  %1736 = icmp ult i8 %1735, 9
  br i1 %1736, label %1737, label %1758

1737:                                             ; preds = %1734
  %1738 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1739 = load ptr, ptr %1738, align 8, !tbaa !150
  %1740 = load i32, ptr %1739, align 8
  %1741 = lshr i32 %1740, 16
  %1742 = and i32 %1741, 255
  %1743 = zext nneg i32 %1742 to i64
  %1744 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %1743
  %1745 = load i64, ptr %1744, align 8, !tbaa !175
  %1746 = xor i64 %1745, -1
  %1747 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1748 = load i64, ptr %1747, align 8, !tbaa !150
  %1749 = and i64 %1748, %1746
  %1750 = icmp eq i64 %1749, 0
  br i1 %1750, label %1751, label %1758

1751:                                             ; preds = %1737
  %1752 = tail call ptr @gen_int_mode(i64 noundef %1748, i32 noundef %1742) #17
  %1753 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1742, ptr noundef nonnull %1739, ptr noundef %1752)
  %1754 = tail call ptr @simplify_unary_operation(i32 noundef 99, i32 noundef %1, ptr noundef %1753, i32 noundef %1742)
  %1755 = icmp eq ptr %1754, null
  br i1 %1755, label %1756, label %2839

1756:                                             ; preds = %1751
  %1757 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 99, i32 noundef %1, ptr noundef %1753) #17
  br label %2839

1758:                                             ; preds = %1726, %1737, %1734, %1730
  %1759 = and i32 %1727, 65535
  %1760 = trunc i32 %1727 to i16
  switch i16 %1760, label %1822 [
    i16 100, label %1761
    i16 62, label %1781
    i16 63, label %1804
  ], !prof !286

1761:                                             ; preds = %1758
  %1762 = load i32, ptr %5, align 8
  %1763 = and i32 %1762, 65535
  %1764 = icmp eq i32 %1763, 30
  br i1 %1764, label %1765, label %1779

1765:                                             ; preds = %1761
  %1766 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1767 = load ptr, ptr %1766, align 8, !tbaa !150
  %1768 = load i32, ptr %1767, align 8
  %1769 = lshr i32 %1768, 16
  %1770 = and i32 %1769, 255
  %1771 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1772 = load i64, ptr %1771, align 8, !tbaa !150
  %1773 = tail call ptr @gen_int_mode(i64 noundef %1772, i32 noundef %1770) #17
  %1774 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1770, ptr noundef nonnull %1767, ptr noundef %1773)
  %1775 = tail call ptr @simplify_unary_operation(i32 noundef 100, i32 noundef %1, ptr noundef %1774, i32 noundef %1770)
  %1776 = icmp eq ptr %1775, null
  br i1 %1776, label %1777, label %2839

1777:                                             ; preds = %1765
  %1778 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 100, i32 noundef %1, ptr noundef %1774) #17
  br label %2839

1779:                                             ; preds = %1761
  %1780 = trunc i32 %1727 to i16
  switch i16 %1780, label %1822 [
    i16 62, label %1781
    i16 63, label %1804
  ], !prof !287

1781:                                             ; preds = %1758, %1779
  %1782 = load i32, ptr %5, align 8
  %1783 = and i32 %1782, 65535
  %1784 = icmp eq i32 %1783, 30
  br i1 %1784, label %1785, label %1802, !prof !288

1785:                                             ; preds = %1781
  %1786 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1787 = load ptr, ptr %1786, align 8, !tbaa !150
  %1788 = load i32, ptr %1787, align 8
  %1789 = and i32 %1788, 65535
  %1790 = icmp eq i32 %1789, 30
  br i1 %1790, label %1791, label %1802, !prof !289

1791:                                             ; preds = %1785
  %1792 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1793 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1794 = load i64, ptr %1793, align 8, !tbaa !150
  %1795 = getelementptr inbounds %struct.rtx_def, ptr %1787, i64 0, i32 1
  %1796 = load i64, ptr %1795, align 8, !tbaa !150
  %1797 = and i64 %1796, %1794
  %1798 = load ptr, ptr %1792, align 8, !tbaa !150
  %1799 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1798, ptr noundef %3)
  %1800 = tail call ptr @gen_int_mode(i64 noundef %1797, i32 noundef %1) #17
  %1801 = tail call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %1, ptr noundef %1799, ptr noundef %1800)
  br label %2839

1802:                                             ; preds = %1785, %1781
  %1803 = icmp eq i32 %1759, 63
  br i1 %1803, label %1804, label %1822, !prof !290

1804:                                             ; preds = %1758, %1779, %1802
  %1805 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1806 = load ptr, ptr %1805, align 8, !tbaa !150
  %1807 = tail call i32 @rtx_equal_p(ptr noundef %1806, ptr noundef %3) #17
  %1808 = icmp eq i32 %1807, 0
  br i1 %1808, label %1822, label %1809

1809:                                             ; preds = %1804
  %1810 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1812, label %1822

1812:                                             ; preds = %1809
  %1813 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1814 = load ptr, ptr %1813, align 8, !tbaa !150
  %1815 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %1814, i32 noundef %1)
  %1816 = icmp eq ptr %1815, null
  br i1 %1816, label %1817, label %1819

1817:                                             ; preds = %1812
  %1818 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %1814) #17
  br label %1819

1819:                                             ; preds = %1812, %1817
  %1820 = phi ptr [ %1818, %1817 ], [ %1815, %1812 ]
  %1821 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1820, ptr noundef %3)
  br label %2839

1822:                                             ; preds = %1758, %1779, %1809, %1804, %1802
  %1823 = load i32, ptr %2, align 8
  %1824 = and i32 %1823, 65535
  %1825 = icmp eq i32 %1824, 63
  br i1 %1825, label %1826, label %1844, !prof !290

1826:                                             ; preds = %1822
  %1827 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1828 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1829 = load ptr, ptr %1828, align 8, !tbaa !150
  %1830 = tail call i32 @rtx_equal_p(ptr noundef %1829, ptr noundef %3) #17
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1844, label %1832

1832:                                             ; preds = %1826
  %1833 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1835, label %1844

1835:                                             ; preds = %1832
  %1836 = load ptr, ptr %1827, align 8, !tbaa !150
  %1837 = tail call ptr @simplify_unary_operation(i32 noundef 64, i32 noundef %1, ptr noundef %1836, i32 noundef %1)
  %1838 = icmp eq ptr %1837, null
  br i1 %1838, label %1839, label %1841

1839:                                             ; preds = %1835
  %1840 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %1, ptr noundef %1836) #17
  br label %1841

1841:                                             ; preds = %1835, %1839
  %1842 = phi ptr [ %1840, %1839 ], [ %1837, %1835 ]
  %1843 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1842, ptr noundef %3)
  br label %2839

1844:                                             ; preds = %1832, %1826, %1822
  %1845 = load i32, ptr %2, align 8
  %1846 = and i32 %1845, 65535
  %1847 = icmp eq i32 %1846, 64
  br i1 %1847, label %1848, label %1867, !prof !291

1848:                                             ; preds = %1844
  %1849 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1850 = load ptr, ptr %1849, align 8, !tbaa !150
  %1851 = load i32, ptr %1850, align 8
  %1852 = and i32 %1851, 65535
  %1853 = icmp eq i32 %1852, 63
  br i1 %1853, label %1854, label %1867, !prof !292

1854:                                             ; preds = %1848
  %1855 = getelementptr inbounds %struct.rtx_def, ptr %1850, i64 0, i32 1
  %1856 = load ptr, ptr %1855, align 8, !tbaa !150
  %1857 = tail call i32 @rtx_equal_p(ptr noundef %1856, ptr noundef %3) #17
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %1867, label %1859

1859:                                             ; preds = %1854
  %1860 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %1861 = icmp eq i32 %1860, 0
  br i1 %1861, label %1862, label %1867

1862:                                             ; preds = %1859
  %1863 = load ptr, ptr %1849, align 8, !tbaa !150
  %1864 = getelementptr inbounds %struct.rtx_def, ptr %1863, i64 0, i32 1, i32 0, i32 0, i64 1
  %1865 = load ptr, ptr %1864, align 8, !tbaa !150
  %1866 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1865, ptr noundef %3)
  br label %2839

1867:                                             ; preds = %1859, %1854, %1848, %1844
  %1868 = load i32, ptr %2, align 8
  %1869 = and i32 %1868, 65535
  %1870 = icmp eq i32 %1869, 64
  br i1 %1870, label %1871, label %1890, !prof !291

1871:                                             ; preds = %1867
  %1872 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1873 = load ptr, ptr %1872, align 8, !tbaa !150
  %1874 = load i32, ptr %1873, align 8
  %1875 = and i32 %1874, 65535
  %1876 = icmp eq i32 %1875, 63
  br i1 %1876, label %1877, label %1890, !prof !292

1877:                                             ; preds = %1871
  %1878 = getelementptr inbounds %struct.rtx_def, ptr %1873, i64 0, i32 1, i32 0, i32 0, i64 1
  %1879 = load ptr, ptr %1878, align 8, !tbaa !150
  %1880 = tail call i32 @rtx_equal_p(ptr noundef %1879, ptr noundef %3) #17
  %1881 = icmp eq i32 %1880, 0
  br i1 %1881, label %1890, label %1882

1882:                                             ; preds = %1877
  %1883 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %1884 = icmp eq i32 %1883, 0
  br i1 %1884, label %1885, label %1890

1885:                                             ; preds = %1882
  %1886 = load ptr, ptr %1872, align 8, !tbaa !150
  %1887 = getelementptr inbounds %struct.rtx_def, ptr %1886, i64 0, i32 1
  %1888 = load ptr, ptr %1887, align 8, !tbaa !150
  %1889 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1888, ptr noundef %3)
  br label %2839

1890:                                             ; preds = %1882, %1877, %1871, %1867
  %1891 = load i32, ptr %2, align 8
  %1892 = and i32 %1891, 65535
  %1893 = icmp eq i32 %1892, 62
  br i1 %1893, label %1894, label %1913, !prof !293

1894:                                             ; preds = %1890
  %1895 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1896 = load ptr, ptr %1895, align 8, !tbaa !150
  %1897 = tail call i32 @rtx_equal_p(ptr noundef %1896, ptr noundef %3) #17
  %1898 = icmp eq i32 %1897, 0
  br i1 %1898, label %1899, label %1904, !prof !294

1899:                                             ; preds = %1894
  %1900 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1901 = load ptr, ptr %1900, align 8, !tbaa !150
  %1902 = tail call i32 @rtx_equal_p(ptr noundef %1901, ptr noundef %3) #17
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %1913, label %1904, !prof !294

1904:                                             ; preds = %1899, %1894
  %1905 = load ptr, ptr %1895, align 8, !tbaa !150
  %1906 = tail call i32 @side_effects_p(ptr noundef %1905) #17
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1908, label %1913

1908:                                             ; preds = %1904
  %1909 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1910 = load ptr, ptr %1909, align 8, !tbaa !150
  %1911 = tail call i32 @side_effects_p(ptr noundef %1910) #17
  %1912 = icmp eq i32 %1911, 0
  br i1 %1912, label %2839, label %1913

1913:                                             ; preds = %1899, %1908, %1904, %1890
  %1914 = load i32, ptr %5, align 8
  %1915 = and i32 %1914, 65535
  %1916 = icmp eq i32 %1915, 30
  br i1 %1916, label %1917, label %1997, !prof !295

1917:                                             ; preds = %1913
  %1918 = load i8, ptr %15, align 1, !tbaa !150
  %1919 = icmp ult i8 %1918, 9
  br i1 %1919, label %1920, label %1997, !prof !295

1920:                                             ; preds = %1917
  %1921 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %1922 = load i64, ptr %1921, align 8, !tbaa !150
  %1923 = icmp eq i64 %1922, -1
  br i1 %1923, label %1997, label %1924, !prof !290

1924:                                             ; preds = %1920
  %1925 = add nsw i64 %1922, 1
  %1926 = and i64 %1925, %1922
  %1927 = icmp eq i64 %1926, 0
  br i1 %1927, label %1928, label %1997, !prof !296

1928:                                             ; preds = %1924
  %1929 = load i32, ptr %2, align 8
  %1930 = and i32 %1929, 65535
  %1931 = add nsw i32 %1930, -49
  %1932 = icmp ult i32 %1931, 2
  br i1 %1932, label %1933, label %1997, !prof !297

1933:                                             ; preds = %1928
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #17
  %1934 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %1935 = load ptr, ptr %1934, align 8, !tbaa !150
  store ptr %1935, ptr %12, align 16, !tbaa !139
  %1936 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %1937 = load ptr, ptr %1936, align 8, !tbaa !150
  %1938 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 1
  store ptr %1937, ptr %1938, align 8, !tbaa !139
  %1939 = load i32, ptr %1937, align 8
  %1940 = and i32 %1939, 65535
  %1941 = icmp eq i32 %1940, 30
  br i1 %1941, label %1942, label %1947, !prof !298

1942:                                             ; preds = %1933
  %1943 = getelementptr inbounds %struct.rtx_def, ptr %1937, i64 0, i32 1
  %1944 = load i64, ptr %1943, align 8, !tbaa !150
  %1945 = and i64 %1944, %1922
  %1946 = icmp eq i64 %1945, 0
  br i1 %1946, label %1991, label %1947, !prof !299

1947:                                             ; preds = %1942, %1933
  br label %1948

1948:                                             ; preds = %1947, %1979
  %1949 = phi i64 [ %1980, %1979 ], [ 0, %1947 ]
  %1950 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 %1949
  %1951 = load ptr, ptr %1950, align 8, !tbaa !139
  %1952 = load i32, ptr %1951, align 8
  %1953 = trunc i32 %1952 to i16
  switch i16 %1953, label %1979 [
    i16 61, label %1954
    i16 62, label %1965
    i16 63, label %1965
  ], !prof !300

1954:                                             ; preds = %1948
  %1955 = getelementptr inbounds %struct.rtx_def, ptr %1951, i64 0, i32 1, i32 0, i32 0, i64 1
  %1956 = load ptr, ptr %1955, align 8, !tbaa !150
  %1957 = load i32, ptr %1956, align 8
  %1958 = and i32 %1957, 65535
  %1959 = icmp eq i32 %1958, 30
  br i1 %1959, label %1960, label %1979

1960:                                             ; preds = %1954
  %1961 = getelementptr inbounds %struct.rtx_def, ptr %1956, i64 0, i32 1
  %1962 = load i64, ptr %1961, align 8, !tbaa !150
  %1963 = and i64 %1962, %1922
  %1964 = icmp eq i64 %1963, %1922
  br i1 %1964, label %1976, label %1979

1965:                                             ; preds = %1948, %1948
  %1966 = getelementptr inbounds %struct.rtx_def, ptr %1951, i64 0, i32 1, i32 0, i32 0, i64 1
  %1967 = load ptr, ptr %1966, align 8, !tbaa !150
  %1968 = load i32, ptr %1967, align 8
  %1969 = and i32 %1968, 65535
  %1970 = icmp eq i32 %1969, 30
  br i1 %1970, label %1971, label %1979

1971:                                             ; preds = %1965
  %1972 = getelementptr inbounds %struct.rtx_def, ptr %1967, i64 0, i32 1
  %1973 = load i64, ptr %1972, align 8, !tbaa !150
  %1974 = and i64 %1973, %1922
  %1975 = icmp eq i64 %1974, 0
  br i1 %1975, label %1976, label %1979

1976:                                             ; preds = %1971, %1960
  %1977 = getelementptr inbounds %struct.rtx_def, ptr %1951, i64 0, i32 1
  %1978 = load ptr, ptr %1977, align 8, !tbaa !150
  store ptr %1978, ptr %1950, align 8, !tbaa !139
  br label %1979

1979:                                             ; preds = %1976, %1965, %1960, %1954, %1971, %1948
  %1980 = add nuw nsw i64 %1949, 1
  %1981 = icmp eq i64 %1949, 0
  br i1 %1981, label %1948, label %1982, !prof !301, !llvm.loop !302

1982:                                             ; preds = %1979
  %1983 = load ptr, ptr %12, align 16, !tbaa !139
  %1984 = icmp eq ptr %1983, %1935
  %1985 = load ptr, ptr %1938, align 8
  %1986 = icmp eq ptr %1985, %1937
  %1987 = select i1 %1984, i1 %1986, i1 false
  br i1 %1987, label %1994, label %1988, !prof !303

1988:                                             ; preds = %1982
  %1989 = load ptr, ptr %1938, align 8, !tbaa !139
  %1990 = tail call ptr @simplify_gen_binary(i32 noundef %1930, i32 noundef %1, ptr noundef %1983, ptr noundef %1989)
  br label %1991

1991:                                             ; preds = %1942, %1988
  %1992 = phi ptr [ %1990, %1988 ], [ %1935, %1942 ]
  %1993 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %1992, ptr noundef %3)
  br label %1994

1994:                                             ; preds = %1991, %1982
  %1995 = phi i1 [ true, %1982 ], [ false, %1991 ]
  %1996 = phi ptr [ %1689, %1982 ], [ %1993, %1991 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #17
  br i1 %1995, label %1997, label %2839, !prof !298

1997:                                             ; preds = %1928, %1994, %1924, %1920, %1917, %1913
  %1998 = load i32, ptr %3, align 8
  %1999 = and i32 %1998, 65535
  %2000 = icmp eq i32 %1999, 62
  br i1 %2000, label %2001, label %2015, !prof !290

2001:                                             ; preds = %1997
  %2002 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %2003 = load ptr, ptr %2002, align 8, !tbaa !150
  %2004 = load i32, ptr %2003, align 8
  %2005 = and i32 %2004, 65535
  %2006 = icmp eq i32 %2005, 64
  br i1 %2006, label %2007, label %2015

2007:                                             ; preds = %2001
  %2008 = getelementptr inbounds %struct.rtx_def, ptr %2003, i64 0, i32 1
  %2009 = load ptr, ptr %2008, align 8, !tbaa !150
  %2010 = icmp eq ptr %2009, %2
  br i1 %2010, label %2011, label %2015

2011:                                             ; preds = %2007
  %2012 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %2013 = load ptr, ptr %2012, align 8, !tbaa !150
  %2014 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %2013)
  br label %2839

2015:                                             ; preds = %2007, %2001, %1997
  %2016 = load i32, ptr %2, align 8
  %2017 = and i32 %2016, 65535
  %2018 = icmp eq i32 %2017, 62
  br i1 %2018, label %2019, label %2033, !prof !293

2019:                                             ; preds = %2015
  %2020 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %2021 = load ptr, ptr %2020, align 8, !tbaa !150
  %2022 = load i32, ptr %2021, align 8
  %2023 = and i32 %2022, 65535
  %2024 = icmp eq i32 %2023, 64
  br i1 %2024, label %2025, label %2033, !prof !304

2025:                                             ; preds = %2019
  %2026 = getelementptr inbounds %struct.rtx_def, ptr %2021, i64 0, i32 1
  %2027 = load ptr, ptr %2026, align 8, !tbaa !150
  %2028 = icmp eq ptr %2027, %3
  br i1 %2028, label %2029, label %2033

2029:                                             ; preds = %2025
  %2030 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %2031 = load ptr, ptr %2030, align 8, !tbaa !150
  %2032 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %2031)
  br label %2839

2033:                                             ; preds = %2015, %2025, %2019
  %2034 = icmp eq i32 %1999, 61
  br i1 %2034, label %2035, label %2049, !prof !531

2035:                                             ; preds = %2033
  %2036 = icmp eq i32 %2017, 61
  br i1 %2036, label %2037, label %2044

2037:                                             ; preds = %2035
  %2038 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %2039 = load ptr, ptr %2038, align 8, !tbaa !150
  %2040 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %2039)
  %2041 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %2042 = load ptr, ptr %2041, align 8, !tbaa !150
  %2043 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2040, ptr noundef %2042)
  br label %2079

2044:                                             ; preds = %2035
  %2045 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %2046 = icmp eq i8 %2045, 0
  br i1 %2046, label %2047, label %2049

2047:                                             ; preds = %2044
  %2048 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2)
  br label %2079

2049:                                             ; preds = %2044, %2033
  %2050 = phi ptr [ %2, %2033 ], [ %3, %2044 ]
  %2051 = phi ptr [ %3, %2033 ], [ %2, %2044 ]
  %2052 = load i32, ptr %2050, align 8
  %2053 = and i32 %2052, 65535
  %2054 = icmp eq i32 %2053, 61
  br i1 %2054, label %2055, label %2079, !prof !531

2055:                                             ; preds = %2049
  %2056 = getelementptr inbounds %struct.rtx_def, ptr %2050, i64 0, i32 1
  %2057 = getelementptr inbounds %struct.rtx_def, ptr %2050, i64 0, i32 1, i32 0, i32 0, i64 1
  %2058 = load ptr, ptr %2057, align 8, !tbaa !150
  %2059 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2058, ptr noundef nonnull %2051) #17
  %2060 = icmp eq i8 %2059, 0
  br i1 %2060, label %2066, label %2061

2061:                                             ; preds = %2055
  %2062 = load ptr, ptr %2056, align 8, !tbaa !150
  %2063 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2062, ptr noundef nonnull %2051)
  %2064 = load ptr, ptr %2057, align 8, !tbaa !150
  %2065 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2063, ptr noundef %2064)
  br label %2079

2066:                                             ; preds = %2055
  %2067 = load ptr, ptr %2057, align 8, !tbaa !150
  %2068 = tail call ptr @simplify_binary_operation(i32 noundef 61, i32 noundef %1, ptr noundef %2067, ptr noundef nonnull %2051)
  %2069 = icmp eq ptr %2068, null
  %2070 = load ptr, ptr %2056, align 8, !tbaa !150
  br i1 %2069, label %2073, label %2071

2071:                                             ; preds = %2066
  %2072 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2070, ptr noundef nonnull %2068)
  br label %2079

2073:                                             ; preds = %2066
  %2074 = tail call ptr @simplify_binary_operation(i32 noundef 61, i32 noundef %1, ptr noundef %2070, ptr noundef nonnull %2051)
  %2075 = icmp eq ptr %2074, null
  br i1 %2075, label %2079, label %2076

2076:                                             ; preds = %2073
  %2077 = load ptr, ptr %2057, align 8, !tbaa !150
  %2078 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef nonnull %2074, ptr noundef %2077)
  br label %2079

2079:                                             ; preds = %2037, %2047, %2049, %2061, %2071, %2073, %2076
  %2080 = phi ptr [ %2043, %2037 ], [ %2065, %2061 ], [ %2072, %2071 ], [ %2078, %2076 ], [ %2048, %2047 ], [ null, %2073 ], [ null, %2049 ]
  %2081 = icmp eq ptr %2080, null
  br i1 %2081, label %2838, label %2839, !prof !295

2082:                                             ; preds = %6
  %2083 = sext i32 %1 to i64
  %2084 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2083
  %2085 = load ptr, ptr %2084, align 8, !tbaa !139
  %2086 = icmp eq ptr %2085, %4
  br i1 %2086, label %2087, label %2092

2087:                                             ; preds = %2082
  %2088 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2089 = icmp eq i32 %2088, 0
  br i1 %2089, label %2839, label %2090

2090:                                             ; preds = %2087
  %2091 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4)
  br label %2839

2092:                                             ; preds = %2082
  %2093 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2083
  %2094 = load ptr, ptr %2093, align 8, !tbaa !139
  %2095 = icmp eq ptr %2094, %5
  br i1 %2095, label %2096, label %2099

2096:                                             ; preds = %2092
  %2097 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %2098 = tail call ptr %2097(i32 noundef %1, ptr noundef %2) #17
  br label %2839

2099:                                             ; preds = %2092
  %2100 = load i32, ptr %5, align 8
  %2101 = and i32 %2100, 65535
  %2102 = icmp eq i32 %2101, 30
  br i1 %2102, label %2103, label %2838

2103:                                             ; preds = %2099
  %2104 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2105 = load i64, ptr %2104, align 8, !tbaa !150
  %2106 = tail call i32 @exact_log2(i64 noundef %2105) #17
  %2107 = icmp sgt i32 %2106, 0
  br i1 %2107, label %2108, label %2838

2108:                                             ; preds = %2103
  %2109 = zext nneg i32 %2106 to i64
  %2110 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2109) #17
  %2111 = tail call ptr @simplify_gen_binary(i32 noundef 68, i32 noundef %1, ptr noundef %2, ptr noundef %2110)
  br label %2839

2112:                                             ; preds = %6
  %2113 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %2114 = load i8, ptr %2113, align 1, !tbaa !150
  %2115 = and i8 %2114, -2
  %2116 = icmp eq i8 %2115, 8
  %2117 = sext i32 %1 to i64
  %2118 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2117
  %2119 = load ptr, ptr %2118, align 8, !tbaa !139
  %2120 = icmp eq ptr %2119, %4
  br i1 %2116, label %2121, label %2212

2121:                                             ; preds = %2112
  br i1 %2120, label %2122, label %2149

2122:                                             ; preds = %2121
  switch i8 %2114, label %2146 [
    i8 8, label %2123
    i8 9, label %2123
    i8 11, label %2123
    i8 17, label %2123
  ]

2123:                                             ; preds = %2122, %2122, %2122, %2122
  %2124 = add i32 %1, -38
  %2125 = zext i32 %2124 to i64
  %2126 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %2125
  %2127 = load ptr, ptr %2126, align 8, !tbaa !139
  %2128 = getelementptr inbounds %struct.real_format, ptr %2127, i64 0, i32 11
  %2129 = load i8, ptr %2128, align 2, !tbaa !178
  %2130 = icmp eq i8 %2129, 0
  %2131 = load i32, ptr @flag_finite_math_only, align 4
  %2132 = icmp ne i32 %2131, 0
  %2133 = select i1 %2130, i1 true, i1 %2132
  br i1 %2133, label %2134, label %2149

2134:                                             ; preds = %2123
  switch i8 %2114, label %2146 [
    i8 8, label %2135
    i8 9, label %2135
    i8 11, label %2135
    i8 17, label %2135
  ]

2135:                                             ; preds = %2134, %2134, %2134, %2134
  %2136 = add i32 %1, -38
  %2137 = zext i32 %2136 to i64
  %2138 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %2137
  %2139 = load ptr, ptr %2138, align 8, !tbaa !139
  %2140 = getelementptr inbounds %struct.real_format, ptr %2139, i64 0, i32 14
  %2141 = load i8, ptr %2140, align 1, !tbaa !195
  %2142 = icmp ne i8 %2141, 0
  %2143 = load i32, ptr @flag_signed_zeros, align 4
  %2144 = icmp ne i32 %2143, 0
  %2145 = select i1 %2142, i1 %2144, i1 false
  br i1 %2145, label %2149, label %2146

2146:                                             ; preds = %2134, %2122, %2135
  %2147 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2839, label %2149

2149:                                             ; preds = %2146, %2135, %2123, %2121
  %2150 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2117
  %2151 = load ptr, ptr %2150, align 8, !tbaa !139
  %2152 = icmp eq ptr %2151, %5
  br i1 %2152, label %2153, label %2168

2153:                                             ; preds = %2149
  %2154 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %2155 = icmp eq i32 %2154, 0
  br i1 %2155, label %2839, label %2156

2156:                                             ; preds = %2153
  switch i8 %2114, label %2839 [
    i8 8, label %2157
    i8 9, label %2157
    i8 11, label %2157
    i8 17, label %2157
  ]

2157:                                             ; preds = %2156, %2156, %2156, %2156
  %2158 = add i32 %1, -38
  %2159 = zext i32 %2158 to i64
  %2160 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %2159
  %2161 = load ptr, ptr %2160, align 8, !tbaa !139
  %2162 = getelementptr inbounds %struct.real_format, ptr %2161, i64 0, i32 11
  %2163 = load i8, ptr %2162, align 2, !tbaa !178
  %2164 = icmp eq i8 %2163, 0
  %2165 = load i32, ptr @flag_finite_math_only, align 4
  %2166 = icmp ne i32 %2165, 0
  %2167 = select i1 %2164, i1 true, i1 %2166
  br i1 %2167, label %2839, label %2168

2168:                                             ; preds = %2157, %2149
  %2169 = load i32, ptr %5, align 8
  %2170 = and i32 %2169, 65535
  %2171 = icmp eq i32 %2170, 32
  br i1 %2171, label %2172, label %2838

2172:                                             ; preds = %2168
  %2173 = load ptr, ptr %2118, align 8, !tbaa !139
  %2174 = icmp eq ptr %2173, %5
  br i1 %2174, label %2838, label %2175

2175:                                             ; preds = %2172
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #17
  %2176 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %2176, i64 32, i1 false), !tbaa.struct !177
  %2177 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %13, ptr noundef nonnull @dconstm1) #17
  %2178 = icmp eq i8 %2177, 0
  br i1 %2178, label %2199, label %2179

2179:                                             ; preds = %2175
  %2180 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2194, label %2182

2182:                                             ; preds = %2179
  switch i8 %2114, label %2194 [
    i8 8, label %2183
    i8 9, label %2183
    i8 11, label %2183
    i8 17, label %2183
  ]

2183:                                             ; preds = %2182, %2182, %2182, %2182
  %2184 = add i32 %1, -38
  %2185 = zext i32 %2184 to i64
  %2186 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %2185
  %2187 = load ptr, ptr %2186, align 8, !tbaa !139
  %2188 = getelementptr inbounds %struct.real_format, ptr %2187, i64 0, i32 11
  %2189 = load i8, ptr %2188, align 2, !tbaa !178
  %2190 = icmp eq i8 %2189, 0
  %2191 = load i32, ptr @flag_finite_math_only, align 4
  %2192 = icmp ne i32 %2191, 0
  %2193 = select i1 %2190, i1 true, i1 %2192
  br i1 %2193, label %2194, label %2199

2194:                                             ; preds = %2182, %2183, %2179
  %2195 = call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %2, i32 noundef %1)
  %2196 = icmp eq ptr %2195, null
  br i1 %2196, label %2197, label %2209

2197:                                             ; preds = %2194
  %2198 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %2) #17
  br label %2209

2199:                                             ; preds = %2183, %2175
  %2200 = load i32, ptr @flag_reciprocal_math, align 4, !tbaa !154
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2209, label %2202

2202:                                             ; preds = %2199
  %2203 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %13, ptr noundef nonnull @dconst0) #17
  %2204 = icmp eq i8 %2203, 0
  br i1 %2204, label %2205, label %2209

2205:                                             ; preds = %2202
  %2206 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %13, i32 noundef 75, ptr noundef nonnull @dconst1, ptr noundef nonnull %13) #17
  %2207 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %13, i32 noundef %1) #17
  %2208 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %1, ptr noundef %2, ptr noundef %2207)
  br label %2209

2209:                                             ; preds = %2197, %2194, %2199, %2202, %2205
  %2210 = phi i1 [ false, %2205 ], [ true, %2202 ], [ true, %2199 ], [ false, %2194 ], [ false, %2197 ]
  %2211 = phi ptr [ %2208, %2205 ], [ undef, %2202 ], [ undef, %2199 ], [ %2195, %2194 ], [ %2198, %2197 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #17
  br i1 %2210, label %2838, label %2839

2212:                                             ; preds = %2112
  br i1 %2120, label %2213, label %2218

2213:                                             ; preds = %2212
  %2214 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2839, label %2216

2216:                                             ; preds = %2213
  %2217 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4)
  br label %2839

2218:                                             ; preds = %2212
  %2219 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2117
  %2220 = load ptr, ptr %2219, align 8, !tbaa !139
  %2221 = icmp eq ptr %2220, %5
  br i1 %2221, label %2222, label %2225

2222:                                             ; preds = %2218
  %2223 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %2224 = tail call ptr %2223(i32 noundef %1, ptr noundef %2) #17
  br label %2839

2225:                                             ; preds = %2218
  %2226 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %2227 = icmp eq ptr %2226, %5
  br i1 %2227, label %2228, label %2838

2228:                                             ; preds = %2225
  %2229 = load ptr, ptr getelementptr inbounds (%struct.rtl_hooks, ptr @rtl_hooks, i64 0, i32 1), align 8, !tbaa !305
  %2230 = tail call ptr %2229(i32 noundef %1, ptr noundef %2) #17
  %2231 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %1, ptr noundef %2230, i32 noundef %1)
  %2232 = icmp eq ptr %2231, null
  br i1 %2232, label %2233, label %2839

2233:                                             ; preds = %2228
  %2234 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %2230) #17
  br label %2839

2235:                                             ; preds = %6
  %2236 = sext i32 %1 to i64
  %2237 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2236
  %2238 = load ptr, ptr %2237, align 8, !tbaa !139
  %2239 = icmp eq ptr %2238, %4
  br i1 %2239, label %2240, label %2245

2240:                                             ; preds = %2235
  %2241 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2839, label %2243

2243:                                             ; preds = %2240
  %2244 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4)
  br label %2839

2245:                                             ; preds = %2235
  %2246 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2236
  %2247 = load ptr, ptr %2246, align 8, !tbaa !139
  %2248 = icmp eq ptr %2247, %5
  br i1 %2248, label %2249, label %2255

2249:                                             ; preds = %2245
  %2250 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2251 = icmp eq i32 %2250, 0
  %2252 = load ptr, ptr %2237, align 8, !tbaa !139
  br i1 %2251, label %2839, label %2253

2253:                                             ; preds = %2249
  %2254 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %2252)
  br label %2839

2255:                                             ; preds = %2245
  %2256 = load i32, ptr %5, align 8
  %2257 = and i32 %2256, 65535
  %2258 = icmp eq i32 %2257, 30
  br i1 %2258, label %2259, label %2838

2259:                                             ; preds = %2255
  %2260 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2261 = load i64, ptr %2260, align 8, !tbaa !150
  %2262 = tail call i32 @exact_log2(i64 noundef %2261) #17
  %2263 = icmp sgt i32 %2262, 0
  br i1 %2263, label %2264, label %2838

2264:                                             ; preds = %2259
  %2265 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %2266 = load i64, ptr %2265, align 8, !tbaa !150
  %2267 = add nsw i64 %2266, -1
  %2268 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2267) #17
  %2269 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %2268)
  br label %2839

2270:                                             ; preds = %6
  %2271 = sext i32 %1 to i64
  %2272 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2271
  %2273 = load ptr, ptr %2272, align 8, !tbaa !139
  %2274 = icmp eq ptr %2273, %4
  br i1 %2274, label %2275, label %2280

2275:                                             ; preds = %2270
  %2276 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2277 = icmp eq i32 %2276, 0
  br i1 %2277, label %2839, label %2278

2278:                                             ; preds = %2275
  %2279 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %3, ptr noundef %4)
  br label %2839

2280:                                             ; preds = %2270
  %2281 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %2271
  %2282 = load ptr, ptr %2281, align 8, !tbaa !139
  %2283 = icmp eq ptr %2282, %5
  %2284 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %2285 = icmp eq ptr %2284, %5
  %2286 = select i1 %2283, i1 true, i1 %2285
  br i1 %2286, label %2287, label %2838

2287:                                             ; preds = %2280
  %2288 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2289 = icmp eq i32 %2288, 0
  %2290 = load ptr, ptr %2272, align 8, !tbaa !139
  br i1 %2289, label %2839, label %2291

2291:                                             ; preds = %2287
  %2292 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %1, ptr noundef %2, ptr noundef %2290)
  br label %2839

2293:                                             ; preds = %6, %6, %6
  %2294 = sext i32 %1 to i64
  %2295 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2294
  %2296 = load ptr, ptr %2295, align 8, !tbaa !139
  %2297 = icmp eq ptr %2296, %5
  br i1 %2297, label %2839, label %2298, !prof !307

2298:                                             ; preds = %2293
  %2299 = icmp eq ptr %2296, %4
  br i1 %2299, label %2300, label %2303, !prof !307

2300:                                             ; preds = %2298
  %2301 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2839, label %2303

2303:                                             ; preds = %2300, %2298
  %2304 = load i32, ptr %4, align 8
  %2305 = and i32 %2304, 65535
  %2306 = icmp eq i32 %2305, 30
  %2307 = icmp ult i8 %16, 9
  %2308 = select i1 %2306, i1 %2307, i1 false, !prof !308
  br i1 %2308, label %2309, label %2838, !prof !308

2309:                                             ; preds = %2303
  %2310 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2311 = load i64, ptr %2310, align 8, !tbaa !150
  %2312 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %2313 = load i64, ptr %2312, align 8, !tbaa !175
  %2314 = icmp eq i64 %2311, %2313
  br i1 %2314, label %2315, label %2838, !prof !309

2315:                                             ; preds = %2309
  %2316 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2317 = icmp eq i32 %2316, 0
  br i1 %2317, label %2839, label %2838

2318:                                             ; preds = %6, %6, %6
  %2319 = sext i32 %1 to i64
  %2320 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2319
  %2321 = load ptr, ptr %2320, align 8, !tbaa !139
  %2322 = icmp eq ptr %2321, %5
  br i1 %2322, label %2839, label %2323, !prof !310

2323:                                             ; preds = %2318
  %2324 = icmp eq ptr %2321, %4
  br i1 %2324, label %2325, label %2838, !prof !310

2325:                                             ; preds = %2323
  %2326 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2839, label %2838

2328:                                             ; preds = %6
  %2329 = sext i32 %1 to i64
  %2330 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2329
  %2331 = load ptr, ptr %2330, align 8, !tbaa !139
  %2332 = icmp eq ptr %2331, %5
  br i1 %2332, label %2839, label %2333, !prof !311

2333:                                             ; preds = %2328
  %2334 = icmp eq ptr %2331, %4
  br i1 %2334, label %2335, label %2838, !prof !312

2335:                                             ; preds = %2333
  %2336 = tail call i32 @side_effects_p(ptr noundef %3) #17
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2839, label %2838

2338:                                             ; preds = %6
  %2339 = icmp ult i8 %16, 9
  br i1 %2339, label %2340, label %2354

2340:                                             ; preds = %2338
  %2341 = load i32, ptr %5, align 8
  %2342 = and i32 %2341, 65535
  %2343 = icmp eq i32 %2342, 30
  br i1 %2343, label %2344, label %2354

2344:                                             ; preds = %2340
  %2345 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2346 = load i64, ptr %2345, align 8, !tbaa !150
  %2347 = add nuw nsw i64 %18, 4294967295
  %2348 = and i64 %2347, 4294967295
  %2349 = shl nuw i64 1, %2348
  %2350 = icmp eq i64 %2346, %2349
  br i1 %2350, label %2351, label %2354

2351:                                             ; preds = %2344
  %2352 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2353 = icmp eq i32 %2352, 0
  br i1 %2353, label %2839, label %2354

2354:                                             ; preds = %2351, %2344, %2340, %2338
  %2355 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #17
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2360, label %2357

2357:                                             ; preds = %2354
  %2358 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2359 = icmp eq i32 %2358, 0
  br i1 %2359, label %2839, label %2360

2360:                                             ; preds = %2357, %2354
  %2361 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 70, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %2362 = icmp eq ptr %2361, null
  br i1 %2362, label %2838, label %2839

2363:                                             ; preds = %6
  %2364 = icmp ult i8 %16, 9
  br i1 %2364, label %2365, label %2379

2365:                                             ; preds = %2363
  %2366 = load i32, ptr %5, align 8
  %2367 = and i32 %2366, 65535
  %2368 = icmp eq i32 %2367, 30
  br i1 %2368, label %2369, label %2379

2369:                                             ; preds = %2365
  %2370 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2371 = load i64, ptr %2370, align 8, !tbaa !150
  %2372 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %14
  %2373 = load i64, ptr %2372, align 8, !tbaa !175
  %2374 = lshr i64 %2373, 1
  %2375 = icmp eq i64 %2371, %2374
  br i1 %2375, label %2376, label %2379

2376:                                             ; preds = %2369
  %2377 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2839, label %2379

2379:                                             ; preds = %2376, %2369, %2365, %2363
  %2380 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #17
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2385, label %2382

2382:                                             ; preds = %2379
  %2383 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2384 = icmp eq i32 %2383, 0
  br i1 %2384, label %2839, label %2385

2385:                                             ; preds = %2382, %2379
  %2386 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 71, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %2387 = icmp eq ptr %2386, null
  br i1 %2387, label %2838, label %2839

2388:                                             ; preds = %6
  %2389 = sext i32 %1 to i64
  %2390 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %2389
  %2391 = load ptr, ptr %2390, align 8, !tbaa !139
  %2392 = icmp eq ptr %2391, %5
  br i1 %2392, label %2393, label %2396

2393:                                             ; preds = %2388
  %2394 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2395 = icmp eq i32 %2394, 0
  br i1 %2395, label %2839, label %2396

2396:                                             ; preds = %2393, %2388
  %2397 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #17
  %2398 = icmp eq i32 %2397, 0
  br i1 %2398, label %2402, label %2399

2399:                                             ; preds = %2396
  %2400 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %2839, label %2402

2402:                                             ; preds = %2399, %2396
  %2403 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 72, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %2404 = icmp eq ptr %2403, null
  br i1 %2404, label %2838, label %2839

2405:                                             ; preds = %6
  %2406 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %2407 = icmp eq ptr %2406, %5
  br i1 %2407, label %2408, label %2411

2408:                                             ; preds = %2405
  %2409 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2839, label %2411

2411:                                             ; preds = %2408, %2405
  %2412 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #17
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %2417, label %2414

2414:                                             ; preds = %2411
  %2415 = tail call i32 @side_effects_p(ptr noundef %2) #17
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2839, label %2417

2417:                                             ; preds = %2414, %2411
  %2418 = tail call fastcc ptr @simplify_associative_operation(i32 noundef 73, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %2419 = icmp eq ptr %2418, null
  br i1 %2419, label %2838, label %2839

2420:                                             ; preds = %6
  %2421 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %2422 = load i8, ptr %2421, align 1, !tbaa !150
  %2423 = add i8 %2422, -12
  %2424 = icmp ult i8 %2423, 6
  %2425 = load i32, ptr %4, align 8
  %2426 = lshr i32 %2425, 16
  %2427 = and i32 %2426, 255
  %2428 = zext nneg i32 %2427 to i64
  %2429 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2428
  %2430 = load i8, ptr %2429, align 1, !tbaa !150
  %2431 = add i8 %2430, -12
  %2432 = icmp ult i8 %2431, 6
  br i1 %2424, label %2590, label %2433

2433:                                             ; preds = %2420
  br i1 %2432, label %2435, label %2434

2434:                                             ; preds = %2433
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2860, ptr noundef nonnull @.str.1) #17
  br label %2435

2435:                                             ; preds = %2433, %2434
  %2436 = load i32, ptr %4, align 8
  %2437 = lshr i32 %2436, 16
  %2438 = and i32 %2437, 255
  %2439 = zext nneg i32 %2438 to i64
  %2440 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2439
  %2441 = load i8, ptr %2440, align 1, !tbaa !150
  %2442 = zext i8 %2441 to i32
  %2443 = icmp eq i32 %2442, %1
  br i1 %2443, label %2445, label %2444

2444:                                             ; preds = %2435
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2861, ptr noundef nonnull @.str.1) #17
  br label %2445

2445:                                             ; preds = %2435, %2444
  %2446 = load i32, ptr %5, align 8
  %2447 = and i32 %2446, 65535
  %2448 = icmp eq i32 %2447, 15
  br i1 %2448, label %2450, label %2449

2449:                                             ; preds = %2445
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2862, ptr noundef nonnull @.str.1) #17
  br label %2450

2450:                                             ; preds = %2445, %2449
  %2451 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2452 = load ptr, ptr %2451, align 8, !tbaa !150
  %2453 = load i32, ptr %2452, align 8, !tbaa !313
  %2454 = icmp eq i32 %2453, 1
  br i1 %2454, label %2456, label %2455

2455:                                             ; preds = %2450
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2863, ptr noundef nonnull @.str.1) #17
  br label %2456

2456:                                             ; preds = %2450, %2455
  %2457 = load ptr, ptr %2451, align 8, !tbaa !150
  %2458 = getelementptr inbounds %struct.rtvec_def, ptr %2457, i64 0, i32 1
  %2459 = load ptr, ptr %2458, align 8, !tbaa !139
  %2460 = load i32, ptr %2459, align 8
  %2461 = and i32 %2460, 65535
  %2462 = icmp eq i32 %2461, 30
  br i1 %2462, label %2464, label %2463

2463:                                             ; preds = %2456
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2864, ptr noundef nonnull @.str.1) #17
  br label %2464

2464:                                             ; preds = %2456, %2463
  %2465 = load i32, ptr %4, align 8
  %2466 = trunc i32 %2465 to i16
  switch i16 %2466, label %2650 [
    i16 33, label %2467
    i16 124, label %2477
    i16 126, label %2583
  ]

2467:                                             ; preds = %2464
  %2468 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2469 = load ptr, ptr %2468, align 8, !tbaa !150
  %2470 = load ptr, ptr %2451, align 8, !tbaa !150
  %2471 = getelementptr inbounds %struct.rtvec_def, ptr %2470, i64 0, i32 1
  %2472 = load ptr, ptr %2471, align 8, !tbaa !139
  %2473 = getelementptr inbounds %struct.rtx_def, ptr %2472, i64 0, i32 1
  %2474 = load i64, ptr %2473, align 8, !tbaa !150
  %2475 = getelementptr inbounds %struct.rtvec_def, ptr %2469, i64 0, i32 1, i64 %2474
  %2476 = load ptr, ptr %2475, align 8, !tbaa !139
  br label %2839

2477:                                             ; preds = %2464
  %2478 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2479 = load ptr, ptr %2478, align 8, !tbaa !150
  %2480 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %2481 = load ptr, ptr %2480, align 8, !tbaa !150
  %2482 = load i32, ptr %2479, align 8
  %2483 = lshr i32 %2482, 16
  %2484 = and i32 %2483, 255
  %2485 = zext nneg i32 %2484 to i64
  %2486 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2485
  %2487 = load i8, ptr %2486, align 1, !tbaa !150
  %2488 = zext i8 %2487 to i64
  %2489 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2488
  %2490 = load i8, ptr %2489, align 1, !tbaa !150
  %2491 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2485
  %2492 = load i8, ptr %2491, align 1, !tbaa !150
  %2493 = udiv i8 %2492, %2490
  %2494 = zext i8 %2493 to i32
  %2495 = load ptr, ptr %2451, align 8, !tbaa !150
  %2496 = getelementptr inbounds %struct.rtvec_def, ptr %2495, i64 0, i32 1
  %2497 = load ptr, ptr %2496, align 8, !tbaa !139
  %2498 = getelementptr inbounds %struct.rtx_def, ptr %2497, i64 0, i32 1
  %2499 = load i64, ptr %2498, align 8, !tbaa !150
  %2500 = trunc i64 %2499 to i32
  %2501 = load i32, ptr %2481, align 8
  %2502 = and i32 %2501, 65535
  %2503 = icmp eq i32 %2502, 15
  br i1 %2503, label %2505, label %2504

2504:                                             ; preds = %2477
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2891, ptr noundef nonnull @.str.1) #17
  br label %2505

2505:                                             ; preds = %2477, %2504
  %2506 = icmp slt i32 %2500, %2494
  br i1 %2506, label %2508, label %2507

2507:                                             ; preds = %2505
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2892, ptr noundef nonnull @.str.1) #17
  br label %2508

2508:                                             ; preds = %2505, %2507
  %2509 = getelementptr inbounds %struct.rtx_def, ptr %2481, i64 0, i32 1
  %2510 = load ptr, ptr %2509, align 8, !tbaa !150
  %2511 = shl i64 %2499, 32
  %2512 = ashr exact i64 %2511, 32
  %2513 = getelementptr inbounds %struct.rtvec_def, ptr %2510, i64 0, i32 1, i64 %2512
  %2514 = load ptr, ptr %2513, align 8, !tbaa !139
  %2515 = getelementptr inbounds %struct.rtx_def, ptr %2514, i64 0, i32 1
  %2516 = load i64, ptr %2515, align 8, !tbaa !150
  %2517 = trunc i64 %2516 to i32
  %2518 = load i32, ptr %2479, align 8
  %2519 = and i32 %2518, 65535
  %2520 = icmp eq i32 %2519, 125
  br i1 %2520, label %2521, label %2574

2521:                                             ; preds = %2508
  %2522 = getelementptr inbounds %struct.rtx_def, ptr %2479, i64 0, i32 1
  %2523 = load ptr, ptr %2522, align 8, !tbaa !150
  %2524 = getelementptr inbounds %struct.rtx_def, ptr %2479, i64 0, i32 1, i32 0, i32 0, i64 1
  %2525 = load ptr, ptr %2524, align 8, !tbaa !150
  %2526 = load i32, ptr %2523, align 8
  %2527 = lshr i32 %2526, 16
  %2528 = and i32 %2527, 255
  %2529 = load i32, ptr %2525, align 8
  %2530 = lshr i32 %2529, 16
  %2531 = and i32 %2530, 255
  %2532 = zext nneg i32 %2528 to i64
  %2533 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2532
  %2534 = load i8, ptr %2533, align 1, !tbaa !150
  %2535 = add i8 %2534, -12
  %2536 = icmp ult i8 %2535, 6
  br i1 %2536, label %2537, label %2547

2537:                                             ; preds = %2521
  %2538 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2532
  %2539 = load i8, ptr %2538, align 1, !tbaa !150
  %2540 = zext i8 %2539 to i64
  %2541 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2540
  %2542 = load i8, ptr %2541, align 1, !tbaa !150
  %2543 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2532
  %2544 = load i8, ptr %2543, align 1, !tbaa !150
  %2545 = udiv i8 %2544, %2542
  %2546 = zext i8 %2545 to i32
  br label %2547

2547:                                             ; preds = %2521, %2537
  %2548 = phi i32 [ %2546, %2537 ], [ 1, %2521 ]
  %2549 = zext nneg i32 %2531 to i64
  %2550 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2549
  %2551 = load i8, ptr %2550, align 1, !tbaa !150
  %2552 = add i8 %2551, -12
  %2553 = icmp ult i8 %2552, 6
  br i1 %2553, label %2554, label %2564

2554:                                             ; preds = %2547
  %2555 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2549
  %2556 = load i8, ptr %2555, align 1, !tbaa !150
  %2557 = zext i8 %2556 to i64
  %2558 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2557
  %2559 = load i8, ptr %2558, align 1, !tbaa !150
  %2560 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2549
  %2561 = load i8, ptr %2560, align 1, !tbaa !150
  %2562 = udiv i8 %2561, %2559
  %2563 = zext i8 %2562 to i32
  br label %2564

2564:                                             ; preds = %2547, %2554
  %2565 = phi i32 [ %2563, %2554 ], [ 1, %2547 ]
  %2566 = add nuw nsw i32 %2565, %2548
  %2567 = icmp eq i32 %2566, %2494
  br i1 %2567, label %2569, label %2568

2568:                                             ; preds = %2564
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2926, ptr noundef nonnull @.str.1) #17
  br label %2569

2569:                                             ; preds = %2564, %2568
  %2570 = icmp sgt i32 %2565, %2517
  %2571 = select i1 %2570, i32 0, i32 %2548
  %2572 = sub nsw i32 %2517, %2571
  %2573 = select i1 %2570, ptr %2523, ptr %2525
  br label %2574

2574:                                             ; preds = %2508, %2569
  %2575 = phi i32 [ %2572, %2569 ], [ %2517, %2508 ]
  %2576 = phi ptr [ %2573, %2569 ], [ %2479, %2508 ]
  %2577 = tail call ptr @rtvec_alloc(i32 noundef 1) #17
  %2578 = sext i32 %2575 to i64
  %2579 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2578) #17
  %2580 = getelementptr inbounds %struct.rtvec_def, ptr %2577, i64 0, i32 1
  store ptr %2579, ptr %2580, align 8, !tbaa !139
  %2581 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %2577) #17
  %2582 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 124, i32 noundef %1, ptr noundef %2576, ptr noundef %2581) #17
  br label %2839

2583:                                             ; preds = %2464
  %2584 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2585 = load ptr, ptr %2584, align 8, !tbaa !150
  %2586 = load i32, ptr %2585, align 8
  %2587 = lshr i32 %2586, 16
  %2588 = and i32 %2587, 255
  %2589 = icmp eq i32 %2588, %1
  br i1 %2589, label %2839, label %2650

2590:                                             ; preds = %2420
  br i1 %2432, label %2592, label %2591

2591:                                             ; preds = %2590
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2954, ptr noundef nonnull @.str.1) #17
  br label %2592

2592:                                             ; preds = %2590, %2591
  %2593 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2594 = load i8, ptr %2593, align 1, !tbaa !150
  %2595 = load i32, ptr %4, align 8
  %2596 = lshr i32 %2595, 16
  %2597 = and i32 %2596, 255
  %2598 = zext nneg i32 %2597 to i64
  %2599 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2598
  %2600 = load i8, ptr %2599, align 1, !tbaa !150
  %2601 = icmp eq i8 %2594, %2600
  br i1 %2601, label %2603, label %2602

2602:                                             ; preds = %2592
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2956, ptr noundef nonnull @.str.1) #17
  br label %2603

2603:                                             ; preds = %2592, %2602
  %2604 = load i32, ptr %5, align 8
  %2605 = and i32 %2604, 65535
  %2606 = icmp eq i32 %2605, 15
  br i1 %2606, label %2608, label %2607

2607:                                             ; preds = %2603
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2957, ptr noundef nonnull @.str.1) #17
  br label %2608

2608:                                             ; preds = %2603, %2607
  %2609 = load i32, ptr %4, align 8
  %2610 = and i32 %2609, 65535
  %2611 = icmp eq i32 %2610, 33
  br i1 %2611, label %2612, label %2650

2612:                                             ; preds = %2608
  %2613 = zext i8 %2594 to i64
  %2614 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2613
  %2615 = load i8, ptr %2614, align 1, !tbaa !150
  %2616 = load i8, ptr %15, align 1, !tbaa !150
  %2617 = udiv i8 %2616, %2615
  %2618 = zext i8 %2617 to i32
  %2619 = tail call ptr @rtvec_alloc(i32 noundef %2618) #17
  %2620 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2621 = load ptr, ptr %2620, align 8, !tbaa !150
  %2622 = load i32, ptr %2621, align 8, !tbaa !313
  %2623 = icmp eq i32 %2622, %2618
  br i1 %2623, label %2625, label %2624

2624:                                             ; preds = %2612
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2966, ptr noundef nonnull @.str.1) #17
  br label %2625

2625:                                             ; preds = %2612, %2624
  %2626 = icmp ugt i8 %2615, %2616
  br i1 %2626, label %2648, label %2627

2627:                                             ; preds = %2625
  %2628 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2629 = zext i8 %2617 to i64
  br label %2630

2630:                                             ; preds = %2627, %2639
  %2631 = phi i64 [ 0, %2627 ], [ %2646, %2639 ]
  %2632 = load ptr, ptr %2620, align 8, !tbaa !150
  %2633 = getelementptr inbounds %struct.rtvec_def, ptr %2632, i64 0, i32 1, i64 %2631
  %2634 = load ptr, ptr %2633, align 8, !tbaa !139
  %2635 = load i32, ptr %2634, align 8
  %2636 = and i32 %2635, 65535
  %2637 = icmp eq i32 %2636, 30
  br i1 %2637, label %2639, label %2638

2638:                                             ; preds = %2630
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2971, ptr noundef nonnull @.str.1) #17
  br label %2639

2639:                                             ; preds = %2630, %2638
  %2640 = load ptr, ptr %2628, align 8, !tbaa !150
  %2641 = getelementptr inbounds %struct.rtx_def, ptr %2634, i64 0, i32 1
  %2642 = load i64, ptr %2641, align 8, !tbaa !150
  %2643 = getelementptr inbounds %struct.rtvec_def, ptr %2640, i64 0, i32 1, i64 %2642
  %2644 = load ptr, ptr %2643, align 8, !tbaa !139
  %2645 = getelementptr inbounds %struct.rtvec_def, ptr %2619, i64 0, i32 1, i64 %2631
  store ptr %2644, ptr %2645, align 8, !tbaa !139
  %2646 = add nuw nsw i64 %2631, 1
  %2647 = icmp ult i64 %2646, %2629
  br i1 %2647, label %2630, label %2648, !llvm.loop !315

2648:                                             ; preds = %2639, %2625
  %2649 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %2619) #17
  br label %2839

2650:                                             ; preds = %2464, %2608, %2583
  %2651 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2652 = load ptr, ptr %2651, align 8, !tbaa !150
  %2653 = load i32, ptr %2652, align 8, !tbaa !313
  %2654 = icmp eq i32 %2653, 1
  br i1 %2654, label %2655, label %2714

2655:                                             ; preds = %2650
  %2656 = getelementptr inbounds %struct.rtvec_def, ptr %2652, i64 0, i32 1
  %2657 = load ptr, ptr %2656, align 8, !tbaa !139
  %2658 = load i32, ptr %2657, align 8
  %2659 = and i32 %2658, 65535
  %2660 = icmp eq i32 %2659, 30
  br i1 %2660, label %2661, label %2714

2661:                                             ; preds = %2655
  %2662 = load i32, ptr %4, align 8
  %2663 = and i32 %2662, 65535
  %2664 = icmp eq i32 %2663, 125
  br i1 %2664, label %2665, label %2714

2665:                                             ; preds = %2661
  %2666 = load i32, ptr %4, align 8
  %2667 = lshr i32 %2666, 16
  %2668 = and i32 %2667, 255
  %2669 = icmp ne i32 %2668, %1
  %2670 = and i32 %2666, 65535
  %2671 = icmp eq i32 %2670, 125
  %2672 = and i1 %2671, %2669
  br i1 %2672, label %2673, label %2710

2673:                                             ; preds = %2665
  %2674 = getelementptr inbounds %struct.rtx_def, ptr %2657, i64 0, i32 1
  %2675 = load i64, ptr %2674, align 8, !tbaa !150
  %2676 = load i8, ptr %15, align 1, !tbaa !150
  %2677 = zext i8 %2676 to i64
  %2678 = mul nsw i64 %2675, %2677
  %2679 = trunc i64 %2678 to i32
  br label %2680

2680:                                             ; preds = %2673, %2699
  %2681 = phi i32 [ %2701, %2699 ], [ %2679, %2673 ]
  %2682 = phi ptr [ %2702, %2699 ], [ %4, %2673 ]
  %2683 = getelementptr inbounds %struct.rtx_def, ptr %2682, i64 0, i32 1
  %2684 = load ptr, ptr %2683, align 8, !tbaa !150
  %2685 = load i32, ptr %2684, align 8
  %2686 = lshr i32 %2685, 16
  %2687 = and i32 %2686, 255
  %2688 = zext nneg i32 %2687 to i64
  %2689 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2688
  %2690 = load i8, ptr %2689, align 1, !tbaa !150
  %2691 = zext i8 %2690 to i64
  %2692 = sext i32 %2681 to i64
  %2693 = icmp slt i64 %2692, %2691
  br i1 %2693, label %2699, label %2694

2694:                                             ; preds = %2680
  %2695 = zext i8 %2690 to i32
  %2696 = sub i32 %2681, %2695
  %2697 = getelementptr inbounds %struct.rtx_def, ptr %2682, i64 0, i32 1, i32 0, i32 0, i64 1
  %2698 = load ptr, ptr %2697, align 8, !tbaa !150
  br label %2699

2699:                                             ; preds = %2680, %2694
  %2700 = phi ptr [ %2698, %2694 ], [ %2684, %2680 ]
  %2701 = phi i32 [ %2696, %2694 ], [ %2681, %2680 ]
  %2702 = tail call ptr @avoid_constant_pool_reference(ptr noundef %2700)
  %2703 = load i32, ptr %2702, align 8
  %2704 = lshr i32 %2703, 16
  %2705 = and i32 %2704, 255
  %2706 = icmp ne i32 %2705, %1
  %2707 = and i32 %2703, 65535
  %2708 = icmp eq i32 %2707, 125
  %2709 = and i1 %2708, %2706
  br i1 %2709, label %2680, label %2710, !llvm.loop !316

2710:                                             ; preds = %2699, %2665
  %2711 = phi ptr [ %4, %2665 ], [ %2702, %2699 ]
  %2712 = phi i32 [ %2668, %2665 ], [ %2705, %2699 ]
  %2713 = icmp eq i32 %2712, %1
  br i1 %2713, label %2839, label %2714

2714:                                             ; preds = %2710, %2661, %2655, %2650
  br label %2839

2715:                                             ; preds = %6
  %2716 = load i32, ptr %4, align 8
  %2717 = lshr i32 %2716, 16
  %2718 = and i32 %2717, 255
  %2719 = icmp eq i32 %2718, 0
  br i1 %2719, label %2720, label %2724

2720:                                             ; preds = %2715
  %2721 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2722 = load i8, ptr %2721, align 1, !tbaa !150
  %2723 = zext i8 %2722 to i32
  br label %2724

2724:                                             ; preds = %2715, %2720
  %2725 = phi i32 [ %2723, %2720 ], [ %2718, %2715 ]
  %2726 = load i32, ptr %5, align 8
  %2727 = lshr i32 %2726, 16
  %2728 = and i32 %2727, 255
  %2729 = icmp eq i32 %2728, 0
  br i1 %2729, label %2730, label %2734

2730:                                             ; preds = %2724
  %2731 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2732 = load i8, ptr %2731, align 1, !tbaa !150
  %2733 = zext i8 %2732 to i32
  br label %2734

2734:                                             ; preds = %2724, %2730
  %2735 = phi i32 [ %2733, %2730 ], [ %2728, %2724 ]
  %2736 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %2737 = load i8, ptr %2736, align 1, !tbaa !150
  %2738 = add i8 %2737, -12
  %2739 = icmp ult i8 %2738, 6
  br i1 %2739, label %2741, label %2740

2740:                                             ; preds = %2734
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3016, ptr noundef nonnull @.str.1) #17
  br label %2741

2741:                                             ; preds = %2734, %2740
  %2742 = zext nneg i32 %2725 to i64
  %2743 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2742
  %2744 = load i8, ptr %2743, align 1, !tbaa !150
  %2745 = zext i8 %2744 to i32
  %2746 = zext nneg i32 %2735 to i64
  %2747 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2746
  %2748 = load i8, ptr %2747, align 1, !tbaa !150
  %2749 = zext i8 %2748 to i32
  %2750 = add nuw nsw i32 %2749, %2745
  %2751 = load i8, ptr %15, align 1, !tbaa !150
  %2752 = zext i8 %2751 to i32
  %2753 = icmp eq i32 %2750, %2752
  br i1 %2753, label %2755, label %2754

2754:                                             ; preds = %2741
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3018, ptr noundef nonnull @.str.1) #17
  br label %2755

2755:                                             ; preds = %2741, %2754
  %2756 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2742
  %2757 = load i8, ptr %2756, align 1, !tbaa !150
  %2758 = add i8 %2757, -12
  %2759 = icmp ult i8 %2758, 6
  %2760 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2761 = load i8, ptr %2760, align 1, !tbaa !150
  br i1 %2759, label %2762, label %2766

2762:                                             ; preds = %2755
  %2763 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2742
  %2764 = load i8, ptr %2763, align 1, !tbaa !150
  %2765 = icmp eq i8 %2761, %2764
  br i1 %2765, label %2771, label %2769

2766:                                             ; preds = %2755
  %2767 = zext i8 %2761 to i32
  %2768 = icmp eq i32 %2725, %2767
  br i1 %2768, label %2771, label %2769

2769:                                             ; preds = %2766, %2762
  %2770 = phi i32 [ 3022, %2762 ], [ 3024, %2766 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %2770, ptr noundef nonnull @.str.1) #17
  br label %2771

2771:                                             ; preds = %2769, %2766, %2762
  %2772 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2746
  %2773 = load i8, ptr %2772, align 1, !tbaa !150
  %2774 = add i8 %2773, -12
  %2775 = icmp ult i8 %2774, 6
  %2776 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2777 = load i8, ptr %2776, align 1, !tbaa !150
  br i1 %2775, label %2778, label %2782

2778:                                             ; preds = %2771
  %2779 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2746
  %2780 = load i8, ptr %2779, align 1, !tbaa !150
  %2781 = icmp eq i8 %2777, %2780
  br i1 %2781, label %2787, label %2785

2782:                                             ; preds = %2771
  %2783 = zext i8 %2777 to i32
  %2784 = icmp eq i32 %2735, %2783
  br i1 %2784, label %2787, label %2785

2785:                                             ; preds = %2782, %2778
  %2786 = phi i32 [ 3028, %2778 ], [ 3030, %2782 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %2786, ptr noundef nonnull @.str.1) #17
  br label %2787

2787:                                             ; preds = %2785, %2782, %2778
  %2788 = load i32, ptr %4, align 8
  %2789 = trunc i32 %2788 to i16
  switch i16 %2789, label %2839 [
    i16 33, label %2790
    i16 30, label %2790
    i16 32, label %2790
  ]

2790:                                             ; preds = %2787, %2787, %2787
  %2791 = load i32, ptr %5, align 8
  %2792 = trunc i32 %2791 to i16
  switch i16 %2792, label %2839 [
    i16 33, label %2793
    i16 30, label %2793
    i16 32, label %2793
  ]

2793:                                             ; preds = %2790, %2790, %2790
  %2794 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %2795 = load i8, ptr %2794, align 1, !tbaa !150
  %2796 = zext i8 %2795 to i64
  %2797 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2796
  %2798 = load i8, ptr %2797, align 1, !tbaa !150
  %2799 = load i8, ptr %15, align 1, !tbaa !150
  %2800 = udiv i8 %2799, %2798
  %2801 = zext i8 %2800 to i32
  %2802 = tail call ptr @rtvec_alloc(i32 noundef %2801) #17
  br i1 %2759, label %2803, label %2807

2803:                                             ; preds = %2793
  %2804 = load i8, ptr %2743, align 1, !tbaa !150
  %2805 = udiv i8 %2804, %2798
  %2806 = zext i8 %2805 to i64
  br label %2807

2807:                                             ; preds = %2793, %2803
  %2808 = phi i64 [ %2806, %2803 ], [ 1, %2793 ]
  %2809 = icmp ugt i8 %2798, %2799
  br i1 %2809, label %2835, label %2810

2810:                                             ; preds = %2807
  %2811 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %2812 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %2813 = zext i8 %2800 to i64
  br label %2814

2814:                                             ; preds = %2810, %2830
  %2815 = phi i64 [ 0, %2810 ], [ %2833, %2830 ]
  %2816 = icmp ult i64 %2815, %2808
  br i1 %2816, label %2817, label %2821

2817:                                             ; preds = %2814
  br i1 %2759, label %2818, label %2830

2818:                                             ; preds = %2817
  %2819 = load ptr, ptr %2812, align 8, !tbaa !150
  %2820 = getelementptr inbounds %struct.rtvec_def, ptr %2819, i64 0, i32 1, i64 %2815
  br label %2827

2821:                                             ; preds = %2814
  br i1 %2775, label %2822, label %2830

2822:                                             ; preds = %2821
  %2823 = load ptr, ptr %2811, align 8, !tbaa !150
  %2824 = sub nsw i64 %2815, %2808
  %2825 = and i64 %2824, 4294967295
  %2826 = getelementptr inbounds %struct.rtvec_def, ptr %2823, i64 0, i32 1, i64 %2825
  br label %2827

2827:                                             ; preds = %2822, %2818
  %2828 = phi ptr [ %2820, %2818 ], [ %2826, %2822 ]
  %2829 = load ptr, ptr %2828, align 8, !tbaa !139
  br label %2830

2830:                                             ; preds = %2827, %2821, %2817
  %2831 = phi ptr [ %4, %2817 ], [ %5, %2821 ], [ %2829, %2827 ]
  %2832 = getelementptr inbounds %struct.rtvec_def, ptr %2802, i64 0, i32 1, i64 %2815
  store ptr %2831, ptr %2832, align 8, !tbaa !139
  %2833 = add nuw nsw i64 %2815, 1
  %2834 = icmp ult i64 %2833, %2813
  br i1 %2834, label %2814, label %2835, !llvm.loop !317

2835:                                             ; preds = %2830, %2807
  %2836 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %1, ptr noundef %2802) #17
  br label %2839

2837:                                             ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3072, ptr noundef nonnull @.str.1) #17
  br label %2838

2838:                                             ; preds = %2417, %2402, %2385, %2079, %1648, %1392, %1048, %1045, %1040, %791, %788, %784, %374, %332, %322, %319, %316, %311, %2333, %2335, %346, %353, %357, %361, %367, %2280, %2360, %2323, %2325, %2315, %2309, %2303, %2255, %2259, %2209, %2172, %2168, %2225, %2099, %2103, %330, %336, %342, %2837
  br label %2839

2839:                                             ; preds = %2287, %2249, %2790, %2414, %2408, %2399, %2393, %2382, %2376, %2357, %2351, %2335, %2325, %2318, %2315, %2300, %2293, %2209, %2146, %1994, %1908, %1695, %1656, %1389, %1181, %1159, %1106, %1068, %1048, %986, %849, %654, %645, %319, %6, %6, %6, %6, %6, %6, %6, %2835, %2787, %2233, %2228, %1777, %1765, %1756, %1751, %1412, %1409, %800, %797, %451, %448, %443, %440, %250, %247, %73, %68, %2583, %6, %2417, %2402, %2385, %2360, %2328, %2275, %2240, %2213, %2153, %2157, %2156, %2087, %2079, %1648, %1645, %1592, %1395, %1392, %1058, %1051, %875, %791, %703, %491, %374, %307, %41, %176, %589, %1535, %1685, %2710, %2838, %2714, %2648, %2574, %2467, %2291, %2278, %2264, %2253, %2243, %2222, %2216, %2108, %2096, %2090, %2029, %2011, %1885, %1862, %1841, %1819, %1791, %1724, %1618, %1579, %1557, %1505, %1493, %1477, %1424, %1336, %1304, %1229, %1097, %1035, %1009, %924, %894, %776, %735, %690, %675, %608, %595, %409, %227, %194, %87, %79, %58, %50
  %2840 = phi ptr [ null, %2838 ], [ %2649, %2648 ], [ null, %2714 ], [ %2711, %2710 ], [ %2476, %2467 ], [ %2582, %2574 ], [ %2279, %2278 ], [ %2292, %2291 ], [ %2244, %2243 ], [ %2254, %2253 ], [ %2269, %2264 ], [ %2217, %2216 ], [ %2224, %2222 ], [ %2091, %2090 ], [ %2098, %2096 ], [ %2111, %2108 ], [ %1801, %1791 ], [ %2014, %2011 ], [ %2032, %2029 ], [ %1889, %1885 ], [ %1866, %1862 ], [ %1843, %1841 ], [ %1821, %1819 ], [ %1725, %1724 ], [ %1687, %1685 ], [ %1478, %1477 ], [ %1496, %1493 ], [ %1506, %1505 ], [ %1621, %1618 ], [ %1581, %1579 ], [ %1559, %1557 ], [ %1537, %1535 ], [ %1427, %1424 ], [ %1231, %1229 ], [ %1306, %1304 ], [ %1342, %1336 ], [ %1098, %1097 ], [ %896, %894 ], [ %928, %924 ], [ %1038, %1035 ], [ %1012, %1009 ], [ %598, %595 ], [ %611, %608 ], [ %677, %675 ], [ %692, %690 ], [ %783, %776 ], [ %741, %735 ], [ %590, %589 ], [ %412, %409 ], [ %53, %50 ], [ %61, %58 ], [ %82, %79 ], [ %90, %87 ], [ %197, %194 ], [ %233, %227 ], [ %177, %176 ], [ %2, %41 ], [ %308, %307 ], [ %348, %374 ], [ %2, %491 ], [ %704, %703 ], [ %792, %791 ], [ %2, %875 ], [ %2, %1051 ], [ %3, %1058 ], [ %1393, %1392 ], [ %2, %1395 ], [ %1593, %1592 ], [ %1646, %1645 ], [ %1649, %1648 ], [ %2080, %2079 ], [ %4, %2087 ], [ %2, %2156 ], [ %2, %2157 ], [ %2, %2153 ], [ %4, %2213 ], [ %4, %2240 ], [ %4, %2275 ], [ %2, %2328 ], [ %2361, %2360 ], [ %2386, %2385 ], [ %2403, %2402 ], [ %2418, %2417 ], [ null, %6 ], [ %2585, %2583 ], [ %74, %73 ], [ %71, %68 ], [ %251, %250 ], [ %248, %247 ], [ %444, %443 ], [ %441, %440 ], [ %452, %451 ], [ %449, %448 ], [ %801, %800 ], [ %798, %797 ], [ %1413, %1412 ], [ %1410, %1409 ], [ %1757, %1756 ], [ %1754, %1751 ], [ %1778, %1777 ], [ %1775, %1765 ], [ %2234, %2233 ], [ %2231, %2228 ], [ %2836, %2835 ], [ null, %2787 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ %320, %319 ], [ %657, %654 ], [ %646, %645 ], [ %3, %849 ], [ %988, %986 ], [ %1049, %1048 ], [ %2, %1068 ], [ %3, %1106 ], [ %1161, %1159 ], [ %3, %1181 ], [ %1391, %1389 ], [ %5, %1656 ], [ %2, %1695 ], [ %3, %1908 ], [ %1996, %1994 ], [ %2, %2146 ], [ %2211, %2209 ], [ %2, %2293 ], [ %2, %2300 ], [ %2, %2315 ], [ %2, %2318 ], [ %2, %2325 ], [ %2, %2335 ], [ %3, %2351 ], [ %2, %2357 ], [ %3, %2376 ], [ %2, %2382 ], [ %3, %2393 ], [ %2, %2399 ], [ %3, %2408 ], [ %2, %2414 ], [ null, %2790 ], [ %2252, %2249 ], [ %2290, %2287 ]
  ret ptr %2840
}

declare void @real_convert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_to_tree_code(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @add_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @mul_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lrotate_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rrotate_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @simplify_const_relational_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !532 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  br label %9

9:                                                ; preds = %98, %4
  %10 = phi i32 [ %0, %4 ], [ %99, %98 ]
  %11 = phi i32 [ %1, %4 ], [ %48, %98 ]
  %12 = phi ptr [ %2, %4 ], [ %93, %98 ]
  %13 = phi ptr [ %3, %4 ], [ %100, %98 ]
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %24, !prof !533

15:                                               ; preds = %9
  %16 = load i32, ptr %12, align 8
  %17 = and i32 %16, 16711680
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, ptr %13, align 8
  %21 = and i32 %20, 16711680
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4259, ptr noundef nonnull @.str.1) #17
  br label %24

24:                                               ; preds = %9, %19, %23
  %25 = load i32, ptr %12, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 48
  %28 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %29 = icmp eq ptr %28, %13
  %30 = select i1 %27, i1 %29, i1 false, !prof !534
  br i1 %30, label %31, label %45, !prof !534

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !150
  %35 = load ptr, ptr %32, align 8, !tbaa !150
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45, !prof !535

40:                                               ; preds = %31
  %41 = load i32, ptr %34, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %617, label %45

45:                                               ; preds = %40, %31, %24
  %46 = phi ptr [ %13, %24 ], [ %34, %31 ], [ %34, %40 ]
  %47 = phi ptr [ %12, %24 ], [ %35, %31 ], [ %35, %40 ]
  %48 = phi i32 [ %11, %24 ], [ %38, %31 ], [ %43, %40 ]
  %49 = load i32, ptr %47, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !150
  %55 = icmp eq i8 %54, 1
  br i1 %55, label %617, label %56, !prof !536

56:                                               ; preds = %45
  %57 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %47, ptr noundef %46) #17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59, !prof !537

59:                                               ; preds = %56
  %60 = tail call i32 @swap_condition(i32 noundef %10) #17
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi ptr [ %47, %59 ], [ %46, %56 ]
  %63 = phi ptr [ %46, %59 ], [ %47, %56 ]
  %64 = phi i32 [ %60, %59 ], [ %10, %56 ]
  %65 = tail call ptr @avoid_constant_pool_reference(ptr noundef %63)
  %66 = tail call ptr @avoid_constant_pool_reference(ptr noundef %62)
  %67 = zext i32 %48 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !150
  switch i8 %69, label %123 [
    i8 2, label %70
    i8 3, label %70
    i8 10, label %70
    i8 12, label %70
    i8 8, label %102
    i8 9, label %102
    i8 11, label %102
    i8 17, label %102
  ], !prof !538

70:                                               ; preds = %61, %61, %61, %61
  %71 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %72 = icmp ne ptr %66, %71
  %73 = and i32 %64, -2
  %74 = icmp eq i32 %73, 80
  %75 = select i1 %72, i1 %74, i1 false, !prof !539
  br i1 %75, label %76, label %101, !prof !540

76:                                               ; preds = %70
  %77 = load i32, ptr %63, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 37
  br i1 %79, label %84, label %80, !prof !541

80:                                               ; preds = %76
  %81 = load i32, ptr %65, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 30
  br i1 %83, label %84, label %92, !prof !542

84:                                               ; preds = %80, %76
  %85 = load i32, ptr %62, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %101, label %88, !prof !543

88:                                               ; preds = %84
  %89 = load i32, ptr %66, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 30
  br i1 %91, label %101, label %92, !prof !544

92:                                               ; preds = %88, %80
  %93 = tail call ptr @simplify_binary_operation(i32 noundef 50, i32 noundef %48, ptr noundef nonnull %63, ptr noundef %62)
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95, !prof !233

95:                                               ; preds = %92
  %96 = tail call zeroext i8 @nonzero_address_p(ptr noundef nonnull %93) #17
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %101, !prof !545

98:                                               ; preds = %95
  %99 = tail call i32 @signed_condition(i32 noundef %64) #17
  %100 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %9

101:                                              ; preds = %92, %95, %88, %84, %70
  switch i8 %69, label %123 [
    i8 8, label %102
    i8 9, label %102
    i8 11, label %102
    i8 17, label %102
  ], !prof !546

102:                                              ; preds = %101, %61, %101, %61, %101, %61, %61, %101
  %103 = and i8 %69, -2
  %104 = icmp eq i8 %103, 8
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %67
  %107 = load i8, ptr %106, align 1, !tbaa !150
  %108 = zext i8 %107 to i32
  br label %109

109:                                              ; preds = %102, %105
  %110 = phi i32 [ %108, %105 ], [ %48, %102 ]
  %111 = add i32 %110, -38
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !139
  %115 = getelementptr inbounds %struct.real_format, ptr %114, i64 0, i32 11
  %116 = load i8, ptr %115, align 2, !tbaa !178
  %117 = icmp eq i8 %116, 0
  %118 = load i32, ptr @flag_finite_math_only, align 4
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %117, i1 true, i1 %119
  %121 = icmp eq i32 %64, 91
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %125, label %127

123:                                              ; preds = %61, %101
  %124 = icmp eq i32 %64, 91
  br i1 %124, label %125, label %127, !prof !547

125:                                              ; preds = %109, %123
  %126 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %617

127:                                              ; preds = %123, %109
  switch i8 %69, label %149 [
    i8 8, label %128
    i8 9, label %128
    i8 11, label %128
    i8 17, label %128
  ], !prof !546

128:                                              ; preds = %127, %127, %127, %127
  %129 = and i8 %69, -2
  %130 = icmp eq i8 %129, 8
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %67
  %133 = load i8, ptr %132, align 1, !tbaa !150
  %134 = zext i8 %133 to i32
  br label %135

135:                                              ; preds = %128, %131
  %136 = phi i32 [ %134, %131 ], [ %48, %128 ]
  %137 = add i32 %136, -38
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !139
  %141 = getelementptr inbounds %struct.real_format, ptr %140, i64 0, i32 11
  %142 = load i8, ptr %141, align 2, !tbaa !178
  %143 = icmp eq i8 %142, 0
  %144 = load i32, ptr @flag_finite_math_only, align 4
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %143, i1 true, i1 %145
  %147 = icmp eq i32 %64, 90
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %151, label %153

149:                                              ; preds = %127
  %150 = icmp eq i32 %64, 90
  br i1 %150, label %151, label %153, !prof !547

151:                                              ; preds = %135, %149
  %152 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %617

153:                                              ; preds = %149, %135
  %154 = load i32, ptr %65, align 8
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !150
  switch i8 %159, label %204 [
    i8 8, label %160
    i8 9, label %160
    i8 11, label %160
    i8 17, label %160
  ], !prof !546

160:                                              ; preds = %153, %153, %153, %153
  %161 = and i8 %159, -2
  %162 = icmp eq i8 %161, 8
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %157
  %165 = load i8, ptr %164, align 1, !tbaa !150
  %166 = zext i8 %165 to i32
  br label %167

167:                                              ; preds = %160, %163
  %168 = phi i32 [ %166, %163 ], [ %156, %160 ]
  %169 = add nsw i32 %168, -38
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !139
  %173 = getelementptr inbounds %struct.real_format, ptr %172, i64 0, i32 11
  %174 = load i8, ptr %173, align 2, !tbaa !178
  %175 = icmp eq i8 %174, 0
  %176 = load i32, ptr @flag_finite_math_only, align 4
  %177 = icmp ne i32 %176, 0
  %178 = select i1 %175, i1 true, i1 %177
  %179 = icmp eq i32 %64, 92
  %180 = select i1 %178, i1 true, i1 %179
  %181 = icmp eq i32 %64, 95
  %182 = select i1 %180, i1 true, i1 %181
  %183 = icmp eq i32 %64, 93
  %184 = select i1 %182, i1 true, i1 %183
  br i1 %184, label %204, label %185

185:                                              ; preds = %167
  switch i32 %64, label %212 [
    i32 97, label %186
    i32 85, label %186
    i32 83, label %186
  ]

186:                                              ; preds = %185, %185, %185
  %187 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %204, label %189

189:                                              ; preds = %186
  switch i8 %159, label %204 [
    i8 8, label %190
    i8 9, label %190
    i8 11, label %190
    i8 17, label %190
  ]

190:                                              ; preds = %189, %189, %189, %189
  br i1 %162, label %195, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %157
  %193 = load i8, ptr %192, align 1, !tbaa !150
  %194 = zext i8 %193 to i32
  br label %195

195:                                              ; preds = %190, %191
  %196 = phi i32 [ %194, %191 ], [ %156, %190 ]
  %197 = add nsw i32 %196, -38
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !139
  %201 = getelementptr inbounds %struct.real_format, ptr %200, i64 0, i32 11
  %202 = load i8, ptr %201, align 2, !tbaa !178
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %189, %153, %195, %186, %167
  %205 = tail call i32 @rtx_equal_p(ptr noundef nonnull %65, ptr noundef %66) #17
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %212, label %207, !prof !548

207:                                              ; preds = %204
  %208 = tail call i32 @side_effects_p(ptr noundef nonnull %65) #17
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = tail call fastcc ptr @comparison_result(i32 noundef %64, i32 noundef 1)
  br label %617

212:                                              ; preds = %195, %185, %207, %204
  %213 = load i32, ptr %65, align 8
  %214 = and i32 %213, 65535
  %215 = icmp eq i32 %214, 32
  br i1 %215, label %216, label %253, !prof !547

216:                                              ; preds = %212
  %217 = load i32, ptr %66, align 8
  %218 = and i32 %217, 65535
  %219 = icmp eq i32 %218, 32
  br i1 %219, label %220, label %253

220:                                              ; preds = %216
  %221 = lshr i32 %213, 16
  %222 = and i32 %221, 255
  %223 = zext nneg i32 %222 to i64
  %224 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !150
  %226 = and i8 %225, -2
  %227 = icmp eq i8 %226, 8
  br i1 %227, label %228, label %253

228:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  %229 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %229, i64 32, i1 false), !tbaa.struct !177
  %230 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %230, i64 32, i1 false), !tbaa.struct !177
  %231 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #17
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = call zeroext i8 @real_isnan(ptr noundef nonnull %6) #17
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %233, %228
  switch i32 %64, label %251 [
    i32 92, label %237
    i32 96, label %237
    i32 94, label %237
    i32 95, label %237
    i32 93, label %237
    i32 80, label %237
    i32 90, label %237
    i32 81, label %239
    i32 85, label %239
    i32 83, label %239
    i32 84, label %239
    i32 82, label %239
    i32 97, label %239
    i32 91, label %239
  ]

237:                                              ; preds = %236, %236, %236, %236, %236, %236, %236
  %238 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %251

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236
  %240 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %251

241:                                              ; preds = %233
  %242 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = call zeroext i8 @real_compare(i32 noundef 97, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %246 = icmp eq i8 %245, 0
  %247 = select i1 %246, i32 4, i32 2
  br label %248

248:                                              ; preds = %241, %244
  %249 = phi i32 [ %247, %244 ], [ 1, %241 ]
  %250 = call fastcc ptr @comparison_result(i32 noundef %64, i32 noundef %249)
  br label %251

251:                                              ; preds = %236, %248, %239, %237
  %252 = phi ptr [ %240, %239 ], [ %238, %237 ], [ %250, %248 ], [ null, %236 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %617

253:                                              ; preds = %220, %216, %212
  %254 = icmp eq i8 %69, 2
  %255 = icmp eq i32 %48, 0
  %256 = or i1 %255, %254
  br i1 %256, label %257, label %338, !prof !548

257:                                              ; preds = %253
  %258 = trunc i32 %213 to i16
  switch i16 %258, label %338 [
    i16 32, label %259
    i16 30, label %259
  ], !prof !549

259:                                              ; preds = %257, %257
  %260 = load i32, ptr %66, align 8
  %261 = trunc i32 %260 to i16
  switch i16 %261, label %338 [
    i16 32, label %262
    i16 30, label %262
  ], !prof !550

262:                                              ; preds = %259, %259
  %263 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %264 = load i8, ptr %263, align 1, !tbaa !150
  %265 = zext i8 %264 to i32
  %266 = shl nuw nsw i32 %265, 3
  %267 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %268 = load i64, ptr %267, align 8, !tbaa !150
  br i1 %215, label %269, label %272, !prof !496

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %271 = load i64, ptr %270, align 8, !tbaa !150
  br label %274

272:                                              ; preds = %262
  %273 = ashr i64 %268, 63
  br label %274

274:                                              ; preds = %272, %269
  %275 = phi i64 [ %271, %269 ], [ %273, %272 ]
  %276 = and i32 %260, 65535
  %277 = icmp eq i32 %276, 32
  %278 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %279 = load i64, ptr %278, align 8, !tbaa !150
  br i1 %277, label %280, label %283, !prof !496

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %282 = load i64, ptr %281, align 8, !tbaa !150
  br label %285

283:                                              ; preds = %274
  %284 = ashr i64 %279, 63
  br label %285

285:                                              ; preds = %283, %280
  %286 = phi i64 [ %282, %280 ], [ %284, %283 ]
  %287 = add i8 %264, -1
  %288 = icmp ult i8 %287, 7
  br i1 %288, label %289, label %306, !prof !498

289:                                              ; preds = %285
  %290 = zext nneg i32 %266 to i64
  %291 = shl nsw i64 -1, %290
  %292 = xor i64 %291, -1
  %293 = and i64 %268, %292
  %294 = and i64 %279, %292
  %295 = add nsw i32 %266, -1
  %296 = zext nneg i32 %295 to i64
  %297 = shl nuw nsw i64 1, %296
  %298 = and i64 %268, %297
  %299 = icmp eq i64 %298, 0
  %300 = select i1 %299, i64 0, i64 %291, !prof !498
  %301 = or i64 %300, %268
  %302 = and i64 %279, %297
  %303 = icmp eq i64 %302, 0
  %304 = select i1 %303, i64 0, i64 %291, !prof !498
  %305 = or i64 %304, %279
  br label %306

306:                                              ; preds = %289, %285
  %307 = phi i64 [ %268, %285 ], [ %301, %289 ]
  %308 = phi i64 [ %279, %285 ], [ %305, %289 ]
  %309 = phi i64 [ %268, %285 ], [ %293, %289 ]
  %310 = phi i64 [ %279, %285 ], [ %294, %289 ]
  %311 = icmp ult i8 %287, 8
  br i1 %311, label %312, label %315, !prof !498

312:                                              ; preds = %306
  %313 = ashr i64 %307, 63
  %314 = ashr i64 %308, 63
  br label %315

315:                                              ; preds = %312, %306
  %316 = phi i64 [ %313, %312 ], [ %275, %306 ]
  %317 = phi i64 [ %314, %312 ], [ %286, %306 ]
  %318 = phi i64 [ 0, %312 ], [ %275, %306 ]
  %319 = phi i64 [ 0, %312 ], [ %286, %306 ]
  %320 = icmp eq i64 %318, %319
  %321 = icmp eq i64 %309, %310
  %322 = select i1 %320, i1 %321, i1 false, !prof !498
  br i1 %322, label %323, label %325, !prof !496

323:                                              ; preds = %315
  %324 = tail call fastcc ptr @comparison_result(i32 noundef %64, i32 noundef 1)
  br label %617

325:                                              ; preds = %315
  %326 = icmp slt i64 %316, %317
  %327 = icmp eq i64 %316, %317
  %328 = icmp ult i64 %309, %310
  %329 = select i1 %327, i1 %328, i1 false, !prof !498
  %330 = select i1 %326, i1 true, i1 %329, !prof !496
  %331 = select i1 %330, i32 2, i32 4, !prof !496
  %332 = icmp ult i64 %318, %319
  %333 = select i1 %320, i1 %328, i1 false, !prof !498
  %334 = select i1 %332, i1 true, i1 %333, !prof !496
  %335 = select i1 %334, i32 8, i32 16, !prof !496
  %336 = or disjoint i32 %335, %331
  %337 = tail call fastcc ptr @comparison_result(i32 noundef %64, i32 noundef %336)
  br label %617

338:                                              ; preds = %259, %257, %253
  %339 = and i8 %69, -2
  %340 = icmp eq i8 %339, 2
  br i1 %340, label %341, label %458, !prof !551

341:                                              ; preds = %338
  %342 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %343 = load i8, ptr %342, align 1, !tbaa !150
  %344 = icmp ult i8 %343, 9
  br i1 %344, label %345, label %458, !prof !551

345:                                              ; preds = %341
  %346 = load i32, ptr %66, align 8
  %347 = and i32 %346, 65535
  %348 = icmp eq i32 %347, 30
  br i1 %348, label %349, label %458, !prof !552

349:                                              ; preds = %345
  %350 = tail call i64 @nonzero_bits(ptr noundef nonnull %65, i32 noundef %48) #17
  %351 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %352 = load i64, ptr %351, align 8, !tbaa !150
  %353 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %67
  %354 = load i64, ptr %353, align 8, !tbaa !175
  %355 = lshr i64 %354, 1
  %356 = icmp ugt i64 %350, %355
  br i1 %356, label %357, label %376, !prof !553

357:                                              ; preds = %349
  %358 = add i32 %64, -90
  %359 = icmp ult i32 %358, -4
  %360 = zext i1 %359 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call void @get_mode_bounds(i32 noundef %48, i32 noundef %360, i32 noundef %48, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %361 = load ptr, ptr %7, align 8, !tbaa !139
  %362 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1
  %363 = load i64, ptr %362, align 8, !tbaa !150
  %364 = load ptr, ptr %8, align 8, !tbaa !139
  %365 = getelementptr inbounds %struct.rtx_def, ptr %364, i64 0, i32 1
  %366 = load i64, ptr %365, align 8, !tbaa !150
  br i1 %359, label %367, label %373, !prof !554

367:                                              ; preds = %357
  %368 = call i32 @num_sign_bit_copies(ptr noundef nonnull %65, i32 noundef %48) #17
  %369 = add i32 %368, -1
  %370 = zext i32 %369 to i64
  %371 = ashr i64 %363, %370
  %372 = ashr i64 %366, %370
  br label %373

373:                                              ; preds = %357, %367
  %374 = phi i64 [ %371, %367 ], [ %363, %357 ]
  %375 = phi i64 [ %372, %367 ], [ %366, %357 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br label %376

376:                                              ; preds = %349, %373
  %377 = phi i64 [ %374, %373 ], [ 0, %349 ]
  %378 = phi i64 [ %375, %373 ], [ %350, %349 ]
  switch i32 %64, label %455 [
    i32 86, label %379
    i32 82, label %387
    i32 88, label %395
    i32 84, label %403
    i32 81, label %411
    i32 87, label %417
    i32 83, label %425
    i32 89, label %433
    i32 85, label %441
    i32 80, label %449
  ], !prof !555

379:                                              ; preds = %376
  %380 = icmp ugt i64 %352, %377
  br i1 %380, label %383, label %381

381:                                              ; preds = %379
  %382 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %455

383:                                              ; preds = %379
  %384 = icmp ule i64 %352, %378
  %385 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %386 = select i1 %384, ptr undef, ptr %385
  br label %455

387:                                              ; preds = %376
  %388 = icmp sgt i64 %352, %377
  br i1 %388, label %391, label %389, !prof !556

389:                                              ; preds = %387
  %390 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %455

391:                                              ; preds = %387
  %392 = icmp sle i64 %352, %378
  %393 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %394 = select i1 %392, ptr undef, ptr %393, !prof !556
  br label %455

395:                                              ; preds = %376
  %396 = icmp ult i64 %352, %378
  br i1 %396, label %399, label %397, !prof !557

397:                                              ; preds = %395
  %398 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %455

399:                                              ; preds = %395
  %400 = icmp uge i64 %352, %377
  %401 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %402 = select i1 %400, ptr undef, ptr %401, !prof !557
  br label %455

403:                                              ; preds = %376
  %404 = icmp slt i64 %352, %378
  br i1 %404, label %407, label %405, !prof !558

405:                                              ; preds = %403
  %406 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %455

407:                                              ; preds = %403
  %408 = icmp sge i64 %352, %377
  %409 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %410 = select i1 %408, ptr undef, ptr %409, !prof !558
  br label %455

411:                                              ; preds = %376
  %412 = icmp sge i64 %352, %377
  %413 = icmp sle i64 %352, %378
  %414 = select i1 %412, i1 %413, i1 false, !prof !559
  %415 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %416 = select i1 %414, ptr undef, ptr %415, !prof !559
  br label %455

417:                                              ; preds = %376
  %418 = icmp ult i64 %352, %378
  br i1 %418, label %421, label %419, !prof !560

419:                                              ; preds = %417
  %420 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %455

421:                                              ; preds = %417
  %422 = icmp uge i64 %352, %377
  %423 = load ptr, ptr @const_true_rtx, align 8
  %424 = select i1 %422, ptr undef, ptr %423, !prof !560
  br label %455

425:                                              ; preds = %376
  %426 = icmp slt i64 %352, %378
  br i1 %426, label %429, label %427, !prof !561

427:                                              ; preds = %425
  %428 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %455

429:                                              ; preds = %425
  %430 = icmp sge i64 %352, %377
  %431 = load ptr, ptr @const_true_rtx, align 8
  %432 = select i1 %430, ptr undef, ptr %431, !prof !561
  br label %455

433:                                              ; preds = %376
  %434 = icmp ugt i64 %352, %377
  br i1 %434, label %437, label %435, !prof !562

435:                                              ; preds = %433
  %436 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %455

437:                                              ; preds = %433
  %438 = icmp ule i64 %352, %378
  %439 = load ptr, ptr @const_true_rtx, align 8
  %440 = select i1 %438, ptr undef, ptr %439, !prof !562
  br label %455

441:                                              ; preds = %376
  %442 = icmp sgt i64 %352, %377
  br i1 %442, label %445, label %443, !prof !563

443:                                              ; preds = %441
  %444 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %455

445:                                              ; preds = %441
  %446 = icmp sle i64 %352, %378
  %447 = load ptr, ptr @const_true_rtx, align 8
  %448 = select i1 %446, ptr undef, ptr %447, !prof !563
  br label %455

449:                                              ; preds = %376
  %450 = icmp sge i64 %352, %377
  %451 = icmp sle i64 %352, %378
  %452 = select i1 %450, i1 %451, i1 false, !prof !564
  %453 = load ptr, ptr @const_true_rtx, align 8
  %454 = select i1 %452, ptr undef, ptr %453, !prof !564
  br label %455

455:                                              ; preds = %449, %445, %437, %429, %421, %411, %407, %399, %391, %383, %376, %443, %435, %427, %419, %405, %397, %389, %381
  %456 = phi i1 [ false, %443 ], [ false, %435 ], [ false, %427 ], [ false, %419 ], [ false, %405 ], [ false, %397 ], [ false, %389 ], [ false, %381 ], [ true, %376 ], [ %384, %383 ], [ %392, %391 ], [ %400, %399 ], [ %408, %407 ], [ %414, %411 ], [ %422, %421 ], [ %430, %429 ], [ %438, %437 ], [ %446, %445 ], [ %452, %449 ]
  %457 = phi ptr [ %444, %443 ], [ %436, %435 ], [ %428, %427 ], [ %420, %419 ], [ %406, %405 ], [ %398, %397 ], [ %390, %389 ], [ %382, %381 ], [ undef, %376 ], [ %386, %383 ], [ %394, %391 ], [ %402, %399 ], [ %410, %407 ], [ %416, %411 ], [ %424, %421 ], [ %432, %429 ], [ %440, %437 ], [ %448, %445 ], [ %454, %449 ]
  br i1 %456, label %458, label %617, !prof !565

458:                                              ; preds = %338, %455, %345, %341
  %459 = phi ptr [ %457, %455 ], [ undef, %345 ], [ undef, %341 ], [ undef, %338 ]
  %460 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  %461 = icmp eq ptr %66, %460
  br i1 %461, label %462, label %513, !prof !566

462:                                              ; preds = %458
  %463 = call zeroext i8 @nonzero_address_p(ptr noundef nonnull %65) #17
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %470, label %465, !prof !567

465:                                              ; preds = %462
  switch i32 %64, label %470 [
    i32 88, label %466
    i32 81, label %466
    i32 87, label %468
    i32 80, label %468
  ]

466:                                              ; preds = %465, %465
  %467 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %617

468:                                              ; preds = %465, %465
  %469 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %617

470:                                              ; preds = %465, %462
  %471 = load i32, ptr %63, align 8
  %472 = and i32 %471, 65535
  %473 = icmp eq i32 %472, 62
  br i1 %473, label %474, label %513, !prof !568

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  %476 = load ptr, ptr %475, align 8, !tbaa !150
  %477 = call ptr @avoid_constant_pool_reference(ptr noundef %476)
  %478 = load i32, ptr %477, align 8
  %479 = and i32 %478, 65535
  %480 = icmp ne i32 %479, 30
  %481 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %482 = icmp eq ptr %477, %481
  %483 = select i1 %480, i1 true, i1 %482, !prof !569
  br i1 %483, label %510, label %484, !prof !569

484:                                              ; preds = %474
  %485 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %486 = load i8, ptr %485, align 1, !tbaa !150
  %487 = icmp ult i8 %486, 9
  br i1 %487, label %488, label %498

488:                                              ; preds = %484
  %489 = shl nuw nsw i8 %486, 3
  %490 = zext nneg i8 %489 to i64
  %491 = add nuw nsw i64 %490, 4294967295
  %492 = getelementptr inbounds %struct.rtx_def, ptr %477, i64 0, i32 1
  %493 = load i64, ptr %492, align 8, !tbaa !150
  %494 = and i64 %491, 4294967295
  %495 = shl nuw i64 1, %494
  %496 = and i64 %493, %495
  %497 = icmp ne i64 %496, 0
  br label %498

498:                                              ; preds = %488, %484
  %499 = phi i1 [ false, %484 ], [ %497, %488 ]
  switch i32 %64, label %510 [
    i32 81, label %500
    i32 88, label %500
    i32 80, label %501
    i32 87, label %501
    i32 85, label %503
    i32 84, label %503
    i32 83, label %507
    i32 82, label %507
  ]

500:                                              ; preds = %498, %498
  br label %510

501:                                              ; preds = %498, %498
  %502 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %510

503:                                              ; preds = %498, %498
  %504 = load ptr, ptr @const_true_rtx, align 8
  %505 = xor i1 %499, true
  %506 = select i1 %499, ptr %504, ptr %459
  br label %510

507:                                              ; preds = %498, %498
  %508 = xor i1 %499, true
  %509 = select i1 %499, ptr %481, ptr %459
  br label %510

510:                                              ; preds = %500, %501, %498, %503, %507, %474
  %511 = phi i1 [ true, %474 ], [ false, %501 ], [ false, %500 ], [ true, %498 ], [ %505, %503 ], [ %508, %507 ]
  %512 = phi ptr [ %459, %474 ], [ %502, %501 ], [ %481, %500 ], [ %459, %498 ], [ %506, %503 ], [ %509, %507 ]
  br i1 %511, label %513, label %617, !prof !569

513:                                              ; preds = %470, %510, %458
  %514 = sext i32 %48 to i64
  %515 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %514
  %516 = load ptr, ptr %515, align 8, !tbaa !139
  %517 = icmp eq ptr %66, %516
  br i1 %517, label %518, label %617, !prof !566

518:                                              ; preds = %513
  %519 = load i32, ptr %65, align 8
  %520 = trunc i32 %519 to i16
  switch i16 %520, label %617 [
    i16 111, label %527
    i16 101, label %521
  ], !prof !570

521:                                              ; preds = %518
  %522 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !150
  %524 = load i32, ptr %523, align 8
  %525 = and i32 %524, 65535
  %526 = icmp eq i32 %525, 111
  br i1 %526, label %527, label %617

527:                                              ; preds = %518, %521
  switch i32 %64, label %617 [
    i32 85, label %528
    i32 82, label %573
    i32 93, label %615
  ]

528:                                              ; preds = %527
  %529 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !154
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %550, label %531

531:                                              ; preds = %528
  switch i8 %69, label %561 [
    i8 8, label %532
    i8 9, label %532
    i8 11, label %532
    i8 17, label %532
    i8 2, label %551
    i8 3, label %551
    i8 10, label %551
    i8 12, label %551
  ]

532:                                              ; preds = %531, %531, %531, %531
  %533 = icmp eq i8 %339, 8
  br i1 %533, label %538, label %534

534:                                              ; preds = %532
  %535 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %67
  %536 = load i8, ptr %535, align 1, !tbaa !150
  %537 = zext i8 %536 to i32
  br label %538

538:                                              ; preds = %532, %534
  %539 = phi i32 [ %537, %534 ], [ %48, %532 ]
  %540 = add i32 %539, -38
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !139
  %544 = getelementptr inbounds %struct.real_format, ptr %543, i64 0, i32 11
  %545 = load i8, ptr %544, align 2, !tbaa !178
  %546 = icmp eq i8 %545, 0
  %547 = load i32, ptr @flag_finite_math_only, align 4
  %548 = icmp ne i32 %547, 0
  %549 = select i1 %546, i1 true, i1 %548
  br i1 %549, label %550, label %617

550:                                              ; preds = %538, %528
  switch i8 %69, label %561 [
    i8 2, label %551
    i8 3, label %551
    i8 10, label %551
    i8 12, label %551
  ]

551:                                              ; preds = %550, %550, %550, %550, %531, %531, %531, %531
  %552 = load i32, ptr @flag_wrapv, align 4, !tbaa !154
  %553 = icmp eq i32 %552, 0
  %554 = load i32, ptr @flag_trapv, align 4
  %555 = icmp eq i32 %554, 0
  %556 = select i1 %553, i1 %555, i1 false
  %557 = load i32, ptr @flag_strict_overflow, align 4
  %558 = icmp ne i32 %557, 0
  %559 = select i1 %556, i1 %558, i1 false
  br i1 %559, label %560, label %617

560:                                              ; preds = %551
  switch i8 %69, label %561 [
    i8 2, label %566
    i8 3, label %566
    i8 10, label %566
  ]

561:                                              ; preds = %550, %531, %560
  %562 = icmp eq i8 %69, 12
  %563 = load i32, ptr @warn_strict_overflow, align 4
  %564 = icmp sgt i32 %563, 1
  %565 = select i1 %562, i1 %564, i1 false
  br i1 %565, label %569, label %571

566:                                              ; preds = %560, %560, %560
  %567 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !154
  %568 = icmp sgt i32 %567, 1
  br i1 %568, label %569, label %571

569:                                              ; preds = %561, %566
  %570 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 187, ptr noundef nonnull @.str.2) #17
  br label %571

571:                                              ; preds = %561, %569, %566
  %572 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %617

573:                                              ; preds = %527
  switch i8 %69, label %603 [
    i8 8, label %574
    i8 9, label %574
    i8 11, label %574
    i8 17, label %574
    i8 2, label %593
    i8 3, label %593
    i8 10, label %593
    i8 12, label %593
  ]

574:                                              ; preds = %573, %573, %573, %573
  %575 = icmp eq i8 %339, 8
  br i1 %575, label %580, label %576

576:                                              ; preds = %574
  %577 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %67
  %578 = load i8, ptr %577, align 1, !tbaa !150
  %579 = zext i8 %578 to i32
  br label %580

580:                                              ; preds = %574, %576
  %581 = phi i32 [ %579, %576 ], [ %48, %574 ]
  %582 = add i32 %581, -38
  %583 = zext i32 %582 to i64
  %584 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %583
  %585 = load ptr, ptr %584, align 8, !tbaa !139
  %586 = getelementptr inbounds %struct.real_format, ptr %585, i64 0, i32 11
  %587 = load i8, ptr %586, align 2, !tbaa !178
  %588 = icmp eq i8 %587, 0
  %589 = load i32, ptr @flag_finite_math_only, align 4
  %590 = icmp ne i32 %589, 0
  %591 = select i1 %588, i1 true, i1 %590
  br i1 %591, label %592, label %617

592:                                              ; preds = %580
  switch i8 %69, label %603 [
    i8 2, label %593
    i8 3, label %593
    i8 10, label %593
    i8 12, label %593
  ]

593:                                              ; preds = %592, %592, %592, %592, %573, %573, %573, %573
  %594 = load i32, ptr @flag_wrapv, align 4, !tbaa !154
  %595 = icmp eq i32 %594, 0
  %596 = load i32, ptr @flag_trapv, align 4
  %597 = icmp eq i32 %596, 0
  %598 = select i1 %595, i1 %597, i1 false
  %599 = load i32, ptr @flag_strict_overflow, align 4
  %600 = icmp ne i32 %599, 0
  %601 = select i1 %598, i1 %600, i1 false
  br i1 %601, label %602, label %617

602:                                              ; preds = %593
  switch i8 %69, label %603 [
    i8 2, label %608
    i8 3, label %608
    i8 10, label %608
  ]

603:                                              ; preds = %592, %573, %602
  %604 = icmp eq i8 %69, 12
  %605 = load i32, ptr @warn_strict_overflow, align 4
  %606 = icmp sgt i32 %605, 1
  %607 = select i1 %604, i1 %606, i1 false
  br i1 %607, label %611, label %613

608:                                              ; preds = %602, %602, %602
  %609 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !154
  %610 = icmp sgt i32 %609, 1
  br i1 %610, label %611, label %613

611:                                              ; preds = %603, %608
  %612 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 187, ptr noundef nonnull @.str.3) #17
  br label %613

613:                                              ; preds = %603, %611, %608
  %614 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %617

615:                                              ; preds = %527
  %616 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %617

617:                                              ; preds = %593, %538, %527, %521, %510, %455, %40, %513, %580, %551, %518, %323, %325, %45, %615, %613, %571, %468, %466, %251, %210, %151, %125
  %618 = phi ptr [ %126, %125 ], [ %152, %151 ], [ %252, %251 ], [ %467, %466 ], [ %469, %468 ], [ %616, %615 ], [ %614, %613 ], [ %572, %571 ], [ %211, %210 ], [ null, %45 ], [ %324, %323 ], [ %337, %325 ], [ null, %518 ], [ null, %551 ], [ null, %580 ], [ null, %513 ], [ null, %40 ], [ %457, %455 ], [ %512, %510 ], [ null, %521 ], [ null, %527 ], [ null, %538 ], [ null, %593 ]
  ret ptr %618
}

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @nonzero_address_p(ptr noundef) local_unnamed_addr #3

declare i32 @signed_condition(i32 noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @comparison_result(i32 noundef %0, i32 noundef %1) unnamed_addr #13 !prof !571 !PGOFuncName !572 {
  switch i32 %0, label %67 [
    i32 81, label %3
    i32 92, label %3
    i32 80, label %9
    i32 97, label %9
    i32 85, label %15
    i32 96, label %15
    i32 82, label %21
    i32 93, label %21
    i32 83, label %27
    i32 94, label %27
    i32 84, label %33
    i32 95, label %33
    i32 89, label %39
    i32 86, label %45
    i32 87, label %51
    i32 88, label %57
    i32 91, label %63
    i32 90, label %65
  ], !prof !573

3:                                                ; preds = %2, %2
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr @const_true_rtx, align 8
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %8 = select i1 %5, ptr %7, ptr %6, !prof !574
  br label %69

9:                                                ; preds = %2, %2
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %13 = load ptr, ptr @const_true_rtx, align 8
  %14 = select i1 %11, ptr %13, ptr %12, !prof !574
  br label %69

15:                                               ; preds = %2, %2
  %16 = and i32 %1, 2
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @const_true_rtx, align 8
  %19 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %20 = select i1 %17, ptr %19, ptr %18
  br label %69

21:                                               ; preds = %2, %2
  %22 = and i32 %1, 2
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %25 = load ptr, ptr @const_true_rtx, align 8
  %26 = select i1 %23, ptr %25, ptr %24
  br label %69

27:                                               ; preds = %2, %2
  %28 = and i32 %1, 4
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr @const_true_rtx, align 8
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %32 = select i1 %29, ptr %31, ptr %30
  br label %69

33:                                               ; preds = %2, %2
  %34 = and i32 %1, 4
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %37 = load ptr, ptr @const_true_rtx, align 8
  %38 = select i1 %35, ptr %37, ptr %36
  br label %69

39:                                               ; preds = %2
  %40 = and i32 %1, 8
  %41 = icmp eq i32 %40, 0
  %42 = load ptr, ptr @const_true_rtx, align 8
  %43 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %44 = select i1 %41, ptr %43, ptr %42
  br label %69

45:                                               ; preds = %2
  %46 = and i32 %1, 8
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %49 = load ptr, ptr @const_true_rtx, align 8
  %50 = select i1 %47, ptr %49, ptr %48
  br label %69

51:                                               ; preds = %2
  %52 = and i32 %1, 16
  %53 = icmp eq i32 %52, 0
  %54 = load ptr, ptr @const_true_rtx, align 8
  %55 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %56 = select i1 %53, ptr %55, ptr %54
  br label %69

57:                                               ; preds = %2
  %58 = and i32 %1, 16
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %61 = load ptr, ptr @const_true_rtx, align 8
  %62 = select i1 %59, ptr %61, ptr %60
  br label %69

63:                                               ; preds = %2
  %64 = load ptr, ptr @const_true_rtx, align 8, !tbaa !139
  br label %69

65:                                               ; preds = %2
  %66 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %69

67:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4236, ptr noundef nonnull @.str.1) #17
  %68 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !139
  br label %69

69:                                               ; preds = %67, %65, %63, %57, %51, %45, %39, %33, %27, %21, %15, %9, %3
  %70 = phi ptr [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %57 ], [ %56, %51 ], [ %50, %45 ], [ %44, %39 ], [ %38, %33 ], [ %32, %27 ], [ %26, %21 ], [ %20, %15 ], [ %14, %9 ], [ %8, %3 ]
  ret ptr %70
}

declare i64 @nonzero_bits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @get_mode_bounds(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @num_sign_bit_copies(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_subreg(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @simplify_subreg_regno(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG_offset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mode_dependent_address_p(ptr noundef) local_unnamed_addr #3

declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_lsb_1(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @simplify_rtx(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !575 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = lshr i32 %2, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !154
  switch i32 %8, label %90 [
    i32 4, label %9
    i32 3, label %16
    i32 2, label %27
    i32 10, label %33
    i32 11, label %33
    i32 0, label %44
    i32 1, label %44
    i32 5, label %62
    i32 8, label %73
  ], !prof !576

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call ptr @simplify_unary_operation(i32 noundef %3, i32 noundef %5, ptr noundef nonnull %11, i32 noundef %14)
  br label %90

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !150
  %21 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %18, ptr noundef %20) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !577

23:                                               ; preds = %16
  %24 = load ptr, ptr %19, align 8, !tbaa !150
  %25 = load ptr, ptr %17, align 8, !tbaa !150
  %26 = tail call ptr @simplify_gen_binary(i32 noundef %3, i32 noundef %5, ptr noundef %24, ptr noundef %25)
  br label %90

27:                                               ; preds = %16, %1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !150
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !150
  %32 = tail call ptr @simplify_binary_operation(i32 noundef %3, i32 noundef %5, ptr noundef %29, ptr noundef %31)
  br label %90

33:                                               ; preds = %1, %1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !150
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !150
  %43 = tail call ptr @simplify_ternary_operation(i32 noundef %3, i32 noundef %5, i32 noundef %38, ptr noundef nonnull %35, ptr noundef %40, ptr noundef %42)
  br label %90

44:                                               ; preds = %1, %1
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !150
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !150
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  br label %57

57:                                               ; preds = %44, %51
  %58 = phi i32 [ %56, %51 ], [ %49, %44 ]
  %59 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !150
  %61 = tail call ptr @simplify_relational_operation(i32 noundef %3, i32 noundef %5, i32 noundef %58, ptr noundef nonnull %46, ptr noundef %60)
  br label %90

62:                                               ; preds = %1
  %63 = icmp eq i32 %3, 39
  br i1 %63, label %64, label %90

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !150
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load i32, ptr %70, align 8, !tbaa !150
  %72 = tail call ptr @simplify_subreg(i32 noundef %5, ptr noundef nonnull %66, i32 noundef %69, i32 noundef %71)
  br label %90

73:                                               ; preds = %1
  %74 = icmp eq i32 %3, 122
  br i1 %74, label %75, label %90

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !150
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 121
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !150
  %84 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !150
  %86 = tail call i32 @rtx_equal_p(ptr noundef %83, ptr noundef %85) #17
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %84, align 8, !tbaa !150
  br label %90

90:                                               ; preds = %62, %75, %81, %73, %1, %88, %64, %57, %33, %27, %23, %9
  %91 = phi ptr [ %89, %88 ], [ %72, %64 ], [ %61, %57 ], [ %43, %33 ], [ %32, %27 ], [ %26, %23 ], [ %15, %9 ], [ null, %1 ], [ null, %73 ], [ null, %81 ], [ null, %75 ], [ null, %62 ]
  ret ptr %91
}

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @significand_size(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @reversed_comparison(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @plus_minus_operand_p(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !578 !PGOFuncName !579 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %29 [
    i16 49, label %30
    i16 50, label %30
    i16 35, label %4
  ], !prof !221

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 49
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !154
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !154
  %27 = icmp eq i32 %26, 9
  %28 = zext i1 %27 to i8
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %1, %1, %29, %4, %10, %19
  %31 = phi i8 [ 0, %10 ], [ 0, %4 ], [ %28, %19 ], [ 1, %1 ], [ 0, %29 ], [ 1, %1 ]
  ret i8 %31
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @simplify_plus_minus(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 !prof !580 !PGOFuncName !581 {
  %5 = alloca [8 x %struct.simplify_plus_minus_op_data], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  store ptr %2, ptr %5, align 16, !tbaa !582
  %6 = getelementptr inbounds %struct.simplify_plus_minus_op_data, ptr %5, i64 0, i32 1
  store i16 0, ptr %6, align 8, !tbaa !584
  %7 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 1
  store ptr %3, ptr %7, align 16, !tbaa !582
  %8 = icmp eq i32 %0, 50
  %9 = zext i1 %8 to i16
  %10 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !584
  br label %11

11:                                               ; preds = %114, %4
  %12 = phi i32 [ 0, %4 ], [ %115, %114 ]
  %13 = phi i32 [ 0, %4 ], [ %116, %114 ]
  %14 = phi i32 [ 2, %4 ], [ %118, %114 ]
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %20, label %114, !prof !585

16:                                               ; preds = %108
  %17 = add nuw nsw i64 %21, 1
  %18 = sext i32 %113 to i64
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %114, !prof !586, !llvm.loop !587

20:                                               ; preds = %11, %16
  %21 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %22 = phi i32 [ %113, %16 ], [ %14, %11 ]
  %23 = phi i32 [ %112, %16 ], [ 0, %11 ]
  %24 = phi i32 [ %110, %16 ], [ %13, %11 ]
  %25 = phi i32 [ %109, %16 ], [ %12, %11 ]
  %26 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %21
  %27 = load ptr, ptr %26, align 16, !tbaa !582
  %28 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %21, i32 1
  %29 = load i16, ptr %28, align 8, !tbaa !584
  %30 = sext i16 %29 to i32
  %31 = load i32, ptr %27, align 8
  %32 = and i32 %31, 65535
  %33 = trunc i32 %31 to i16
  switch i16 %33, label %108 [
    i16 49, label %34
    i16 50, label %34
    i16 51, label %49
    i16 35, label %54
    i16 64, label %88
    i16 30, label %100
  ], !prof !588

34:                                               ; preds = %20, %20
  %35 = icmp eq i32 %22, 7
  br i1 %35, label %108, label %36, !prof !589

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %38 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !150
  %40 = sext i32 %22 to i64
  %41 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %40
  store ptr %39, ptr %41, align 16, !tbaa !582
  %42 = icmp eq i32 %32, 50
  %43 = zext i1 %42 to i16
  %44 = xor i16 %29, %43
  %45 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %40, i32 1
  store i16 %44, ptr %45, align 8, !tbaa !584
  %46 = add nsw i32 %22, 1
  %47 = load ptr, ptr %37, align 8, !tbaa !150
  store ptr %47, ptr %26, align 16, !tbaa !582
  %48 = or i32 %25, %30
  br label %108

49:                                               ; preds = %20
  %50 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !150
  store ptr %51, ptr %26, align 16, !tbaa !582
  %52 = icmp eq i16 %29, 0
  %53 = zext i1 %52 to i16
  store i16 %53, ptr %28, align 8, !tbaa !584
  br label %108

54:                                               ; preds = %20
  %55 = icmp slt i32 %22, 7
  br i1 %55, label %56, label %108

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !150
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 49
  br i1 %61, label %62, label %108

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !150
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !154
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %108

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !150
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !154
  %79 = icmp eq i32 %78, 9
  br i1 %79, label %80, label %108

80:                                               ; preds = %71
  store ptr %64, ptr %26, align 16, !tbaa !582
  %81 = load ptr, ptr %57, align 8, !tbaa !150
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !150
  %84 = sext i32 %22 to i64
  %85 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %84
  store ptr %83, ptr %85, align 16, !tbaa !582
  %86 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %84, i32 1
  store i16 %29, ptr %86, align 8, !tbaa !584
  %87 = add nsw i32 %22, 1
  br label %108

88:                                               ; preds = %20
  %89 = icmp eq i32 %22, 7
  br i1 %89, label %108, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !139
  %92 = sext i32 %22 to i64
  %93 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %92
  store ptr %91, ptr %93, align 16, !tbaa !582
  %94 = add nsw i32 %22, 1
  %95 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %92, i32 1
  store i16 %29, ptr %95, align 8, !tbaa !584
  %96 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !150
  store ptr %97, ptr %26, align 16, !tbaa !582
  %98 = icmp eq i16 %29, 0
  %99 = zext i1 %98 to i16
  store i16 %99, ptr %28, align 8, !tbaa !584
  br label %108

100:                                              ; preds = %20
  %101 = add nsw i32 %24, 1
  %102 = icmp eq i16 %29, 0
  br i1 %102, label %108, label %103, !prof !590

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !150
  %106 = sub nsw i64 0, %105
  %107 = tail call ptr @gen_int_mode(i64 noundef %106, i32 noundef %1) #17
  store ptr %107, ptr %26, align 16, !tbaa !582
  store i16 0, ptr %28, align 8, !tbaa !584
  br label %108

108:                                              ; preds = %20, %36, %49, %80, %71, %62, %56, %54, %90, %88, %103, %100, %34
  %109 = phi i32 [ %25, %34 ], [ 1, %103 ], [ %25, %100 ], [ 1, %90 ], [ %25, %88 ], [ 1, %80 ], [ %25, %71 ], [ %25, %62 ], [ %25, %56 ], [ %25, %54 ], [ 1, %49 ], [ %48, %36 ], [ %25, %20 ]
  %110 = phi i32 [ %24, %34 ], [ %101, %103 ], [ %101, %100 ], [ %24, %90 ], [ %24, %88 ], [ %24, %80 ], [ %24, %71 ], [ %24, %62 ], [ %24, %56 ], [ %24, %54 ], [ %24, %49 ], [ %24, %36 ], [ %24, %20 ]
  %111 = phi i1 [ false, %34 ], [ true, %103 ], [ true, %100 ], [ true, %90 ], [ true, %88 ], [ true, %80 ], [ true, %71 ], [ true, %62 ], [ true, %56 ], [ true, %54 ], [ true, %49 ], [ true, %36 ], [ true, %20 ]
  %112 = phi i32 [ %23, %34 ], [ 1, %103 ], [ %23, %100 ], [ 1, %90 ], [ %23, %88 ], [ 1, %80 ], [ %23, %71 ], [ %23, %62 ], [ %23, %56 ], [ %23, %54 ], [ 1, %49 ], [ 1, %36 ], [ %23, %20 ]
  %113 = phi i32 [ 7, %34 ], [ %22, %103 ], [ %22, %100 ], [ %94, %90 ], [ 7, %88 ], [ %87, %80 ], [ %22, %71 ], [ %22, %62 ], [ %22, %56 ], [ %22, %54 ], [ %22, %49 ], [ %46, %36 ], [ %22, %20 ]
  br i1 %111, label %16, label %489, !prof !591

114:                                              ; preds = %16, %11
  %115 = phi i32 [ %12, %11 ], [ %109, %16 ]
  %116 = phi i32 [ %13, %11 ], [ %110, %16 ]
  %117 = phi i32 [ 0, %11 ], [ %112, %16 ]
  %118 = phi i32 [ %14, %11 ], [ %113, %16 ]
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %120, label %11, !prof !592, !llvm.loop !593

120:                                              ; preds = %114
  %121 = icmp sgt i32 %116, 1
  %122 = select i1 %121, i32 1, i32 %115, !prof !594
  %123 = icmp sgt i32 %118, 1
  br i1 %123, label %125, label %124, !prof !595

124:                                              ; preds = %120
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3725, ptr noundef nonnull @.str.1) #17
  br label %125

125:                                              ; preds = %120, %124
  %126 = icmp eq i32 %118, 2
  br i1 %126, label %127, label %151, !prof !224

127:                                              ; preds = %125
  %128 = load i16, ptr %6, align 8, !tbaa !584
  %129 = icmp ne i16 %128, 0
  %130 = load i16, ptr %10, align 8
  %131 = icmp ne i16 %130, 0
  %132 = select i1 %129, i1 true, i1 %131
  %133 = select i1 %132, i32 50, i32 49
  %134 = select i1 %129, i1 %131, i1 false
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load ptr, ptr %5, align 16, !tbaa !582
  %137 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %136) #17
  %138 = load ptr, ptr %7, align 16, !tbaa !582
  br label %147

139:                                              ; preds = %127
  %140 = icmp eq i16 %128, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %139
  %142 = load ptr, ptr %7, align 16, !tbaa !582
  %143 = load ptr, ptr %5, align 16, !tbaa !582
  br label %147

144:                                              ; preds = %139
  %145 = load ptr, ptr %5, align 16, !tbaa !582
  %146 = load ptr, ptr %7, align 16, !tbaa !582
  br label %147

147:                                              ; preds = %141, %144, %135
  %148 = phi ptr [ %137, %135 ], [ %142, %141 ], [ %145, %144 ]
  %149 = phi ptr [ %138, %135 ], [ %143, %141 ], [ %146, %144 ]
  %150 = tail call ptr @simplify_const_binary_operation(i32 noundef %133, i32 noundef %1, ptr noundef %148, ptr noundef %149)
  br label %489

151:                                              ; preds = %125, %384
  %152 = phi i32 [ %363, %384 ], [ %122, %125 ]
  %153 = phi i32 [ %385, %384 ], [ %118, %125 ]
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %155, label %158, !prof !596

155:                                              ; preds = %151
  %156 = add nsw i32 %153, -1
  %157 = zext i32 %156 to i64
  br label %165

158:                                              ; preds = %233, %151
  %159 = phi i32 [ %152, %151 ], [ %234, %233 ]
  %160 = icmp sgt i32 %153, 1
  br i1 %160, label %161, label %362, !prof !596

161:                                              ; preds = %158
  %162 = add nsw i32 %153, -2
  %163 = zext i32 %162 to i64
  %164 = zext nneg i32 %153 to i64
  br label %241

165:                                              ; preds = %155, %233
  %166 = phi i64 [ 1, %155 ], [ %235, %233 ]
  %167 = phi i64 [ 0, %155 ], [ %236, %233 ]
  %168 = phi i32 [ %152, %155 ], [ %234, %233 ]
  %169 = add nsw i64 %166, -1
  %170 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %169
  %171 = load ptr, ptr %170, align 16, !tbaa !582
  %172 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %166
  %173 = load ptr, ptr %172, align 16, !tbaa !582
  %174 = tail call i32 @commutative_operand_precedence(ptr noundef %173) #17
  %175 = tail call i32 @commutative_operand_precedence(ptr noundef %171) #17
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %179, label %177, !prof !597

177:                                              ; preds = %165
  %178 = icmp sgt i32 %174, %175
  br label %193

179:                                              ; preds = %165
  %180 = load i32, ptr %171, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 37
  br i1 %182, label %183, label %233, !prof !598

183:                                              ; preds = %179
  %184 = load i32, ptr %173, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 37
  br i1 %186, label %187, label %233, !prof !598

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !150
  %190 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !150
  %192 = icmp ugt i32 %189, %191
  br label %193

193:                                              ; preds = %177, %187
  %194 = phi i1 [ %178, %177 ], [ %192, %187 ]
  br i1 %194, label %195, label %233, !prof !599

195:                                              ; preds = %193
  %196 = load ptr, ptr %172, align 16, !tbaa.struct !600
  %197 = getelementptr inbounds i8, ptr %172, i64 8
  %198 = load i64, ptr %197, align 8, !tbaa.struct !602
  br label %199

199:                                              ; preds = %228, %195
  %200 = phi i64 [ %206, %228 ], [ %167, %195 ]
  %201 = add nuw nsw i64 %200, 1
  %202 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %201
  %203 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %202, ptr noundef nonnull align 16 dereferenceable(16) %203, i64 16, i1 false), !tbaa.struct !600
  %204 = icmp eq i64 %200, 0
  br i1 %204, label %230, label %205, !prof !603

205:                                              ; preds = %199
  %206 = add nsw i64 %200, -1
  %207 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %206
  %208 = load ptr, ptr %207, align 16, !tbaa !582
  %209 = tail call i32 @commutative_operand_precedence(ptr noundef %196) #17
  %210 = tail call i32 @commutative_operand_precedence(ptr noundef %208) #17
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %214, label %212, !prof !597

212:                                              ; preds = %205
  %213 = icmp sgt i32 %209, %210
  br label %228

214:                                              ; preds = %205
  %215 = load i32, ptr %208, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 37
  br i1 %217, label %218, label %230, !prof !598

218:                                              ; preds = %214
  %219 = load i32, ptr %196, align 8
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 37
  br i1 %221, label %222, label %230, !prof !598

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %224 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !150
  %226 = load i32, ptr %223, align 8, !tbaa !150
  %227 = icmp ugt i32 %225, %226
  br label %228

228:                                              ; preds = %212, %222
  %229 = phi i1 [ %213, %212 ], [ %227, %222 ]
  br i1 %229, label %199, label %230, !prof !604, !llvm.loop !605

230:                                              ; preds = %218, %214, %228, %199
  %231 = phi ptr [ %203, %218 ], [ %203, %214 ], [ %203, %228 ], [ %5, %199 ]
  store ptr %196, ptr %231, align 16, !tbaa.struct !600
  %232 = getelementptr inbounds i8, ptr %231, i64 8
  store i64 %198, ptr %232, align 8, !tbaa.struct !602
  br label %233

233:                                              ; preds = %183, %179, %193, %230
  %234 = phi i32 [ 1, %230 ], [ %168, %193 ], [ %168, %179 ], [ %168, %183 ]
  %235 = add nuw nsw i64 %166, 1
  %236 = add nuw nsw i64 %167, 1
  %237 = icmp eq i64 %236, %157
  br i1 %237, label %158, label %165, !prof !606, !llvm.loop !607

238:                                              ; preds = %356
  %239 = icmp sgt i64 %242, 2
  %240 = add nsw i64 %243, -1
  br i1 %239, label %241, label %362, !prof !608, !llvm.loop !609

241:                                              ; preds = %161, %238
  %242 = phi i64 [ %164, %161 ], [ %246, %238 ]
  %243 = phi i64 [ %163, %161 ], [ %240, %238 ]
  %244 = phi i32 [ 0, %161 ], [ %358, %238 ]
  %245 = phi i32 [ %159, %161 ], [ %357, %238 ]
  %246 = add nsw i64 %242, -1
  %247 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %246
  %248 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %246, i32 1
  br label %249

249:                                              ; preds = %241, %356
  %250 = phi i64 [ %243, %241 ], [ %359, %356 ]
  %251 = phi i32 [ %244, %241 ], [ %358, %356 ]
  %252 = phi i32 [ %245, %241 ], [ %357, %356 ]
  %253 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %250
  %254 = load ptr, ptr %253, align 16, !tbaa !582
  %255 = load ptr, ptr %247, align 16, !tbaa !582
  %256 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %250, i32 1
  %257 = load i16, ptr %256, align 8, !tbaa !584
  %258 = load i16, ptr %248, align 8, !tbaa !584
  %259 = icmp ne ptr %254, null
  %260 = icmp ne ptr %255, null
  %261 = select i1 %259, i1 %260, i1 false, !prof !610
  br i1 %261, label %262, label %356, !prof !610

262:                                              ; preds = %249
  %263 = icmp eq i16 %257, %258
  br i1 %263, label %266, label %264, !prof !610

264:                                              ; preds = %262
  %265 = icmp eq i16 %257, 0
  br label %269

266:                                              ; preds = %262
  %267 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %254, ptr noundef nonnull %255) #17
  %268 = icmp eq i8 %267, 0
  br label %269

269:                                              ; preds = %266, %264
  %270 = phi i1 [ %268, %266 ], [ %265, %264 ]
  %271 = phi i32 [ 49, %266 ], [ 50, %264 ]
  %272 = select i1 %270, ptr %254, ptr %255, !prof !610
  %273 = select i1 %270, ptr %255, ptr %254, !prof !610
  %274 = load i32, ptr %272, align 8
  %275 = trunc i32 %274 to i16
  switch i16 %275, label %307 [
    i16 35, label %276
    i16 30, label %276
  ], !prof !611

276:                                              ; preds = %269, %269
  %277 = load i32, ptr %273, align 8
  %278 = trunc i32 %277 to i16
  switch i16 %278, label %307 [
    i16 35, label %279
    i16 30, label %279
  ]

279:                                              ; preds = %276, %276
  %280 = and i32 %274, 65535
  %281 = icmp eq i32 %280, 35
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.rtx_def, ptr %272, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !150
  br label %285

285:                                              ; preds = %279, %282
  %286 = phi ptr [ %284, %282 ], [ %272, %279 ]
  %287 = and i32 %277, 65535
  %288 = icmp eq i32 %287, 35
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !150
  br label %292

292:                                              ; preds = %285, %289
  %293 = phi ptr [ %291, %289 ], [ %273, %285 ]
  %294 = tail call ptr @simplify_binary_operation(i32 noundef %271, i32 noundef %1, ptr noundef %286, ptr noundef %293)
  %295 = icmp eq ptr %294, null
  br i1 %295, label %309, label %296

296:                                              ; preds = %292
  %297 = load i32, ptr %294, align 8
  %298 = and i32 %297, 65535
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !154
  %302 = icmp eq i32 %301, 9
  br i1 %302, label %309, label %303

303:                                              ; preds = %296
  %304 = lshr i32 %297, 16
  %305 = and i32 %304, 255
  %306 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %305, ptr noundef nonnull %294) #17
  br label %309

307:                                              ; preds = %276, %269
  %308 = tail call ptr @simplify_binary_operation(i32 noundef %271, i32 noundef %1, ptr noundef nonnull %272, ptr noundef nonnull %273)
  br label %309

309:                                              ; preds = %292, %296, %303, %307
  %310 = phi ptr [ %308, %307 ], [ %294, %296 ], [ %306, %303 ], [ null, %292 ]
  %311 = icmp eq ptr %310, null
  br i1 %311, label %356, label %312, !prof !610

312:                                              ; preds = %309
  %313 = load i32, ptr %310, align 8
  %314 = and i32 %313, 65535
  %315 = icmp eq i32 %314, 35
  br i1 %315, label %316, label %330

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.rtx_def, ptr %310, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !150
  %319 = load i32, ptr %318, align 8
  %320 = and i32 %319, 65535
  %321 = icmp eq i32 %320, %271
  br i1 %321, label %322, label %330

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.rtx_def, ptr %318, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !150
  %325 = icmp eq ptr %324, %272
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.rtx_def, ptr %318, i64 0, i32 1, i32 0, i32 0, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !150
  %329 = icmp eq ptr %328, %273
  br i1 %329, label %356, label %330

330:                                              ; preds = %326, %322, %316, %312
  %331 = and i16 %258, %257
  %332 = sext i16 %331 to i32
  %333 = icmp eq i32 %314, 51
  br i1 %333, label %334, label %339

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.rtx_def, ptr %310, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !150
  %337 = icmp eq i16 %331, 0
  %338 = zext i1 %337 to i32
  br label %339

339:                                              ; preds = %334, %330
  %340 = phi i32 [ %338, %334 ], [ %332, %330 ]
  %341 = phi ptr [ %336, %334 ], [ %310, %330 ]
  %342 = load i32, ptr %341, align 8
  %343 = and i32 %342, 65535
  %344 = icmp eq i32 %343, 30
  %345 = icmp ne i32 %340, 0
  %346 = select i1 %344, i1 %345, i1 false
  br i1 %346, label %347, label %352

347:                                              ; preds = %339
  %348 = getelementptr inbounds %struct.rtx_def, ptr %341, i64 0, i32 1
  %349 = load i64, ptr %348, align 8, !tbaa !150
  %350 = sub nsw i64 0, %349
  %351 = tail call ptr @gen_int_mode(i64 noundef %350, i32 noundef %1) #17
  br label %352

352:                                              ; preds = %347, %339
  %353 = phi i32 [ 0, %347 ], [ %340, %339 ]
  %354 = phi ptr [ %351, %347 ], [ %341, %339 ]
  store ptr %354, ptr %247, align 16, !tbaa !582
  %355 = trunc i32 %353 to i16
  store i16 %355, ptr %248, align 8, !tbaa !584
  store ptr null, ptr %253, align 16, !tbaa !582
  br label %356

356:                                              ; preds = %309, %326, %352, %249
  %357 = phi i32 [ %252, %249 ], [ %252, %326 ], [ 1, %352 ], [ %252, %309 ]
  %358 = phi i32 [ %251, %249 ], [ %251, %326 ], [ 1, %352 ], [ %251, %309 ]
  %359 = add nsw i64 %250, -1
  %360 = trunc i64 %250 to i32
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %249, label %238, !prof !612, !llvm.loop !613

362:                                              ; preds = %238, %158
  %363 = phi i32 [ %159, %158 ], [ %357, %238 ]
  %364 = phi i32 [ 0, %158 ], [ %358, %238 ]
  %365 = icmp eq i32 %363, 0
  br i1 %365, label %489, label %366, !prof !224

366:                                              ; preds = %362
  %367 = icmp sgt i32 %153, 0
  br i1 %367, label %368, label %384, !prof !596

368:                                              ; preds = %366
  %369 = zext nneg i32 %153 to i64
  br label %370

370:                                              ; preds = %368, %380
  %371 = phi i64 [ 0, %368 ], [ %382, %380 ]
  %372 = phi i32 [ 0, %368 ], [ %381, %380 ]
  %373 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %371
  %374 = load ptr, ptr %373, align 16, !tbaa !582
  %375 = icmp eq ptr %374, null
  br i1 %375, label %380, label %376, !prof !614

376:                                              ; preds = %370
  %377 = sext i32 %372 to i64
  %378 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %378, ptr noundef nonnull align 16 dereferenceable(16) %373, i64 16, i1 false), !tbaa.struct !600
  %379 = add nsw i32 %372, 1
  br label %380

380:                                              ; preds = %370, %376
  %381 = phi i32 [ %379, %376 ], [ %372, %370 ]
  %382 = add nuw nsw i64 %371, 1
  %383 = icmp eq i64 %382, %369
  br i1 %383, label %384, label %370, !prof !615, !llvm.loop !616

384:                                              ; preds = %380, %366
  %385 = phi i32 [ 0, %366 ], [ %381, %380 ]
  %386 = icmp eq i32 %364, 0
  br i1 %386, label %387, label %151, !prof !595, !llvm.loop !617

387:                                              ; preds = %384
  %388 = icmp eq i32 %385, 2
  br i1 %388, label %389, label %407, !prof !224

389:                                              ; preds = %387
  %390 = load ptr, ptr %7, align 16, !tbaa !582
  %391 = load i32, ptr %390, align 8
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 30
  br i1 %393, label %394, label %407

394:                                              ; preds = %389
  %395 = load ptr, ptr %5, align 16, !tbaa !582
  %396 = load i32, ptr %395, align 8
  %397 = and i32 %396, 65535
  %398 = zext nneg i32 %397 to i64
  %399 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !154
  %401 = icmp eq i32 %400, 9
  %402 = load i16, ptr %6, align 8
  %403 = icmp ne i16 %402, 0
  %404 = select i1 %401, i1 %403, i1 false
  br i1 %404, label %405, label %407

405:                                              ; preds = %394
  %406 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %1, ptr noundef nonnull %390, ptr noundef nonnull %395) #17
  br label %489

407:                                              ; preds = %394, %389, %387
  %408 = icmp sgt i32 %385, 1
  br i1 %408, label %409, label %445, !prof !595

409:                                              ; preds = %407
  %410 = add nsw i32 %385, -1
  %411 = zext nneg i32 %410 to i64
  %412 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %411
  %413 = load ptr, ptr %412, align 16, !tbaa !582
  %414 = load i32, ptr %413, align 8
  %415 = and i32 %414, 65535
  %416 = icmp eq i32 %415, 30
  br i1 %416, label %417, label %445, !prof !594

417:                                              ; preds = %409
  %418 = add nsw i32 %385, -2
  %419 = zext nneg i32 %418 to i64
  %420 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %419
  %421 = load ptr, ptr %420, align 16, !tbaa !582
  %422 = load i32, ptr %421, align 8
  %423 = and i32 %422, 65535
  %424 = zext nneg i32 %423 to i64
  %425 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !154
  %427 = icmp eq i32 %426, 9
  br i1 %427, label %428, label %445, !prof !618

428:                                              ; preds = %417
  %429 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %411, i32 1
  %430 = load i16, ptr %429, align 8, !tbaa !584
  %431 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %419, i32 1
  %432 = load i16, ptr %431, align 8, !tbaa !584
  %433 = icmp eq i16 %430, %432
  br i1 %433, label %439, label %434

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.rtx_def, ptr %413, i64 0, i32 1
  %436 = load i64, ptr %435, align 8, !tbaa !150
  %437 = sub nsw i64 0, %436
  %438 = tail call ptr @gen_int_mode(i64 noundef %437, i32 noundef %1) #17
  br label %439

439:                                              ; preds = %434, %428
  %440 = phi ptr [ %438, %434 ], [ %413, %428 ]
  %441 = load ptr, ptr %420, align 16, !tbaa !582
  %442 = getelementptr inbounds %struct.rtx_def, ptr %440, i64 0, i32 1
  %443 = load i64, ptr %442, align 8, !tbaa !150
  %444 = tail call ptr @plus_constant(ptr noundef %441, i64 noundef %443) #17
  store ptr %444, ptr %420, align 16, !tbaa !582
  br label %445

445:                                              ; preds = %439, %417, %409, %407
  %446 = phi i32 [ %410, %439 ], [ %385, %417 ], [ %385, %409 ], [ %385, %407 ]
  %447 = icmp sgt i32 %446, 0
  br i1 %447, label %448, label %459, !prof !619

448:                                              ; preds = %445, %453
  %449 = phi i64 [ %455, %453 ], [ 0, %445 ]
  %450 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %449, i32 1
  %451 = load i16, ptr %450, align 8, !tbaa !584
  %452 = icmp eq i16 %451, 0
  br i1 %452, label %457, label %453, !prof !595

453:                                              ; preds = %448
  %454 = zext nneg i32 %446 to i64
  %455 = add nuw nsw i64 %449, 1
  %456 = icmp eq i64 %455, %454
  br i1 %456, label %459, label %448, !prof !224, !llvm.loop !620

457:                                              ; preds = %448
  %458 = trunc i64 %449 to i32
  br label %459

459:                                              ; preds = %457, %453, %445
  %460 = phi i32 [ 0, %445 ], [ %458, %457 ], [ %446, %453 ]
  %461 = icmp eq i32 %460, %446
  br i1 %461, label %462, label %465, !prof !224

462:                                              ; preds = %459
  %463 = load ptr, ptr %5, align 16, !tbaa !582
  %464 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %1, ptr noundef %463) #17
  store ptr %464, ptr %5, align 16, !tbaa !582
  br label %472

465:                                              ; preds = %459
  %466 = icmp eq i32 %460, 0
  br i1 %466, label %472, label %467, !prof !595

467:                                              ; preds = %465
  %468 = load ptr, ptr %5, align 16, !tbaa !582
  %469 = zext nneg i32 %460 to i64
  %470 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %470, i64 16, i1 false), !tbaa.struct !600
  store ptr %468, ptr %470, align 16, !tbaa !582
  %471 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %469, i32 1
  store i16 1, ptr %471, align 8, !tbaa !584
  br label %472

472:                                              ; preds = %465, %467, %462
  %473 = load ptr, ptr %5, align 16, !tbaa !582
  %474 = icmp sgt i32 %446, 1
  br i1 %474, label %475, label %489, !prof !596

475:                                              ; preds = %472
  %476 = zext nneg i32 %446 to i64
  br label %477

477:                                              ; preds = %475, %477
  %478 = phi i64 [ 1, %475 ], [ %487, %477 ]
  %479 = phi ptr [ %473, %475 ], [ %486, %477 ]
  %480 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %478
  %481 = getelementptr inbounds [8 x %struct.simplify_plus_minus_op_data], ptr %5, i64 0, i64 %478, i32 1
  %482 = load i16, ptr %481, align 8, !tbaa !584
  %483 = icmp eq i16 %482, 0
  %484 = select i1 %483, i32 49, i32 50, !prof !621
  %485 = load ptr, ptr %480, align 16, !tbaa !582
  %486 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %484, i32 noundef %1, ptr noundef %479, ptr noundef %485) #17
  %487 = add nuw nsw i64 %478, 1
  %488 = icmp eq i64 %487, %476
  br i1 %488, label %489, label %477, !prof !606, !llvm.loop !622

489:                                              ; preds = %108, %362, %477, %472, %405, %147
  %490 = phi ptr [ %150, %147 ], [ %406, %405 ], [ %473, %472 ], [ %486, %477 ], [ null, %362 ], [ null, %108 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #17
  ret ptr %490
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @simplify_associative_operation(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 !prof !623 !PGOFuncName !624 {
  %5 = load i32, ptr %3, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %24, !prof !531

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  %15 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %14)
  %16 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !150
  %18 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %15, ptr noundef %17)
  br label %54

19:                                               ; preds = %8
  %20 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2)
  br label %54

24:                                               ; preds = %19, %4
  %25 = phi ptr [ %2, %4 ], [ %3, %19 ]
  %26 = phi ptr [ %3, %4 ], [ %2, %19 ]
  %27 = load i32, ptr %25, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %30, label %54, !prof !531

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !150
  %34 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %33, ptr noundef nonnull %26) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %31, align 8, !tbaa !150
  %38 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %37, ptr noundef nonnull %26)
  %39 = load ptr, ptr %32, align 8, !tbaa !150
  %40 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %38, ptr noundef %39)
  br label %54

41:                                               ; preds = %30
  %42 = load ptr, ptr %32, align 8, !tbaa !150
  %43 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %42, ptr noundef nonnull %26)
  %44 = icmp eq ptr %43, null
  %45 = load ptr, ptr %31, align 8, !tbaa !150
  br i1 %44, label %48, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef %45, ptr noundef nonnull %43)
  br label %54

48:                                               ; preds = %41
  %49 = tail call ptr @simplify_binary_operation(i32 noundef %0, i32 noundef %1, ptr noundef %45, ptr noundef nonnull %26)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %32, align 8, !tbaa !150
  %53 = tail call ptr @simplify_gen_binary(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %49, ptr noundef %52)
  br label %54

54:                                               ; preds = %24, %48, %51, %46, %36, %22, %12
  %55 = phi ptr [ %18, %12 ], [ %40, %36 ], [ %47, %46 ], [ %53, %51 ], [ %23, %22 ], [ null, %48 ], [ null, %24 ]
  ret ptr %55
}

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare i32 @commutative_operand_precedence(ptr noundef) local_unnamed_addr #3

declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!137}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!35 = !{ptr @simplify_gen_binary, ptr @swap_commutative_operands_p, i64 743131}
!36 = !{ptr @simplify_gen_binary, ptr @avoid_constant_pool_reference, i64 1559394}
!37 = !{ptr @simplify_gen_binary, ptr @simplify_const_binary_operation, i64 779697}
!38 = !{ptr @simplify_gen_binary, ptr @simplify_binary_operation_1, i64 775593}
!39 = !{ptr @simplify_gen_binary, ptr @gen_rtx_fmt_ee_stat, i64 683267}
!40 = !{ptr @simplify_binary_operation, ptr @swap_commutative_operands_p, i64 486710}
!41 = !{ptr @simplify_binary_operation, ptr @avoid_constant_pool_reference, i64 2824408}
!42 = !{ptr @simplify_binary_operation, ptr @gen_int_mode, i64 296226}
!43 = !{ptr @simplify_binary_operation, ptr @rtx_equal_p, i64 940623}
!44 = !{ptr @simplify_binary_operation, ptr @gen_rtx_fmt_ee_stat, i64 61}
!45 = !{ptr @simplify_binary_operation, ptr @optimize_function_for_speed_p, i64 61}
!46 = !{ptr @simplify_binary_operation, ptr @add_double_with_sign, i64 61}
!47 = !{ptr @simplify_binary_operation, ptr @immed_double_const, i64 61}
!48 = !{ptr @simplify_binary_operation, ptr @simplify_gen_binary, i64 229643}
!49 = !{ptr @simplify_binary_operation, ptr @rtx_cost, i64 122}
!50 = !{ptr @simplify_binary_operation, ptr @simplify_plus_minus, i64 1762}
!51 = !{ptr @simplify_binary_operation, ptr @exact_log2, i64 187}
!52 = !{ptr @simplify_binary_operation, ptr @gen_rtx_CONST_INT, i64 125}
!53 = !{ptr @simplify_binary_operation, ptr @simplify_associative_operation, i64 196816}
!54 = !{ptr @simplify_binary_operation, ptr @nonzero_bits, i64 387296}
!55 = !{ptr @simplify_binary_operation, ptr @side_effects_p, i64 49}
!56 = !{ptr @simplify_binary_operation, ptr @simplify_unary_operation, i64 49}
!57 = !{ptr @simplify_binary_operation, ptr @gen_rtx_fmt_e_stat, i64 49}
!58 = !{ptr @simplify_subreg, ptr @gen_int_mode, i64 284232}
!59 = !{ptr @simplify_subreg, ptr @simplify_subreg_regno, i64 3121}
!60 = !{ptr @simplify_subreg, ptr @gen_rtx_REG_offset, i64 3121}
!61 = !{ptr @simplify_subreg, ptr @subreg_lowpart_offset, i64 3121}
!62 = !{ptr @simplify_subreg, ptr @mode_dependent_address_p, i64 64495}
!63 = !{ptr @simplify_subreg, ptr @adjust_address_1, i64 40210}
!64 = !{ptr @delegitimize_mem_from_attrs, ptr @get_inner_reference, i64 103150}
!65 = !{ptr @simplify_gen_unary, ptr @simplify_unary_operation, i64 12581}
!66 = !{ptr @simplify_gen_unary, ptr @gen_rtx_fmt_e_stat, i64 3787}
!67 = !{ptr @simplify_unary_operation, ptr @avoid_constant_pool_reference, i64 65563}
!68 = !{ptr @simplify_unary_operation, ptr @simplify_const_unary_operation, i64 65563}
!69 = !{ptr @simplify_ternary_operation, ptr @rtx_equal_p, i64 1794644}
!70 = !{ptr @simplify_ternary_operation, ptr @side_effects_p, i64 1201560}
!71 = !{ptr @simplify_ternary_operation, ptr @simplify_relational_operation, i64 603652}
!72 = !{ptr @simplify_gen_relational, ptr @simplify_relational_operation, i64 224412}
!73 = !{ptr @simplify_gen_relational, ptr @gen_rtx_fmt_ee_stat, i64 37686}
!74 = !{ptr @simplify_relational_operation, ptr @simplify_const_relational_operation, i64 2234362}
!75 = !{ptr @simplify_relational_operation, ptr @swap_commutative_operands_p, i64 2234358}
!76 = !{ptr @simplify_relational_operation, ptr @swap_condition, i64 112}
!77 = !{ptr @simplify_relational_operation, ptr @simplify_relational_operation, i64 221231}
!78 = !{ptr @simplify_relational_operation, ptr @gen_rtx_fmt_ee_stat, i64 220927}
!79 = !{ptr @simplify_relational_operation, ptr @avoid_constant_pool_reference, i64 3173364}
!80 = !{ptr @simplify_relational_operation, ptr @reversed_comparison_code, i64 8591}
!81 = !{ptr @simplify_relational_operation, ptr @nonzero_bits, i64 32321}
!82 = !{ptr @simplify_relational_operation, ptr @simplify_const_unary_operation, i64 184}
!83 = !{ptr @simplify_relational_operation, ptr @gen_rtx_fmt_e_stat, i64 184}
!84 = !{ptr @simplify_relational_operation, ptr @lowpart_subreg, i64 273}
!85 = !{ptr @simplify_replace_fn_rtx, ptr @rtx_equal_p, i64 9616}
!86 = !{ptr @simplify_replace_fn_rtx, ptr @copy_rtx, i64 1203}
!87 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_replace_fn_rtx, i64 7216}
!88 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_gen_binary, i64 1195}
!89 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_relational_operation, i64 8}
!90 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_ternary_operation, i64 8}
!91 = !{ptr @simplify_replace_fn_rtx, ptr @gen_rtx_fmt_eee_stat, i64 4}
!92 = !{ptr @simplify_replace_fn_rtx, ptr @simplify_gen_subreg, i64 4}
!93 = !{ptr @simplify_gen_subreg, ptr @simplify_subreg, i64 369517}
!94 = !{ptr @simplify_gen_subreg, ptr @validate_subreg, i64 43554}
!95 = !{ptr @simplify_gen_subreg, ptr @gen_rtx_SUBREG, i64 43554}
!96 = !{ptr @simplify_replace_rtx, ptr @simplify_replace_fn_rtx, i64 2400}
!97 = !{ptr @simplify_const_unary_operation, ptr @gen_int_mode, i64 8923}
!98 = !{ptr @simplify_const_binary_operation, ptr @gen_int_mode, i64 49167}
!99 = !{ptr @simplify_binary_operation_1, ptr @rtx_equal_p, i64 619738}
!100 = !{ptr @simplify_binary_operation_1, ptr @gen_rtx_fmt_ee_stat, i64 132141}
!101 = !{ptr @simplify_binary_operation_1, ptr @optimize_function_for_speed_p, i64 40}
!102 = !{ptr @simplify_binary_operation_1, ptr @add_double_with_sign, i64 40}
!103 = !{ptr @simplify_binary_operation_1, ptr @immed_double_const, i64 40}
!104 = !{ptr @simplify_binary_operation_1, ptr @simplify_gen_binary, i64 559}
!105 = !{ptr @simplify_binary_operation_1, ptr @rtx_cost, i64 80}
!106 = !{ptr @simplify_binary_operation_1, ptr @simplify_plus_minus, i64 1161}
!107 = !{ptr @simplify_binary_operation_1, ptr @gen_int_mode, i64 150946}
!108 = !{ptr @simplify_binary_operation_1, ptr @swap_commutative_operands_p, i64 143674}
!109 = !{ptr @simplify_binary_operation_1, ptr @avoid_constant_pool_reference, i64 301488}
!110 = !{ptr @simplify_binary_operation_1, ptr @simplify_const_binary_operation, i64 150744}
!111 = !{ptr @simplify_binary_operation_1, ptr @simplify_binary_operation_1, i64 149950}
!112 = !{ptr @simplify_binary_operation_1, ptr @plus_minus_operand_p, i64 28}
!113 = !{ptr @simplify_binary_operation_1, ptr @exact_log2, i64 124}
!114 = !{ptr @simplify_binary_operation_1, ptr @gen_rtx_CONST_INT, i64 82}
!115 = !{ptr @simplify_binary_operation_1, ptr @simplify_associative_operation, i64 2601}
!116 = !{ptr @simplify_binary_operation_1, ptr @nonzero_bits, i64 255173}
!117 = !{ptr @simplify_binary_operation_1, ptr @side_effects_p, i64 33}
!118 = !{ptr @simplify_binary_operation_1, ptr @simplify_unary_operation, i64 33}
!119 = !{ptr @simplify_binary_operation_1, ptr @gen_rtx_fmt_e_stat, i64 33}
!120 = !{ptr @simplify_const_relational_operation, ptr @swap_commutative_operands_p, i64 2533998}
!121 = !{ptr @simplify_const_relational_operation, ptr @swap_condition, i64 131}
!122 = !{ptr @simplify_const_relational_operation, ptr @avoid_constant_pool_reference, i64 5069661}
!123 = !{ptr @simplify_const_relational_operation, ptr @simplify_binary_operation, i64 444011}
!124 = !{ptr @simplify_const_relational_operation, ptr @nonzero_address_p, i64 1635683}
!125 = !{ptr @simplify_const_relational_operation, ptr @signed_condition, i64 444011}
!126 = !{ptr @simplify_const_relational_operation, ptr @rtx_equal_p, i64 2089987}
!127 = !{ptr @simplify_const_relational_operation, ptr @comparison_result, i64 5}
!128 = !{ptr @simplify_const_relational_operation, ptr @nonzero_bits, i64 2089704}
!129 = !{ptr @simplify_const_relational_operation, ptr @get_mode_bounds, i64 1806768}
!130 = !{ptr @simplify_const_relational_operation, ptr @num_sign_bit_copies, i64 1722861}
!131 = !{ptr @simplify_rtx, ptr @swap_commutative_operands_p, i64 25887}
!132 = !{ptr @simplify_rtx, ptr @simplify_binary_operation, i64 25887}
!133 = !{ptr @simplify_plus_minus, ptr @commutative_operand_precedence, i64 22472}
!134 = !{ptr @simplify_plus_minus, ptr @swap_commutative_operands_p, i64 12040}
!135 = !{ptr @simplify_plus_minus, ptr @simplify_binary_operation, i64 12040}
!136 = !{ptr @simplify_plus_minus, ptr @gen_rtx_fmt_ee_stat, i64 6888}
!137 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!138 = !{!"function_entry_count", i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"any pointer", !141, i64 0}
!141 = !{!"omnipotent char", !142, i64 0}
!142 = !{!"Simple C/C++ TBAA"}
!143 = !{!144, !140, i64 8}
!144 = !{!"_IO_FILE", !145, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40, !140, i64 48, !140, i64 56, !140, i64 64, !140, i64 72, !140, i64 80, !140, i64 88, !140, i64 96, !140, i64 104, !145, i64 112, !145, i64 116, !146, i64 120, !147, i64 128, !141, i64 130, !141, i64 131, !140, i64 136, !146, i64 144, !140, i64 152, !140, i64 160, !140, i64 168, !140, i64 176, !146, i64 184, !145, i64 192, !141, i64 196}
!145 = !{!"int", !141, i64 0}
!146 = !{!"long", !141, i64 0}
!147 = !{!"short", !141, i64 0}
!148 = !{!144, !140, i64 16}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{!141, !141, i64 0}
!151 = !{!144, !140, i64 40}
!152 = !{!144, !140, i64 48}
!153 = !{!144, !145, i64 0}
!154 = !{!145, !145, i64 0}
!155 = distinct !{!155, !156, !157}
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !{!"branch_weights", i32 198, i32 0}
!159 = !{!"branch_weights", i32 0, i32 198}
!160 = !{!"function_entry_count", i64 779697}
!161 = !{!"branch_weights", i32 -1615286830, i32 0, i32 0}
!162 = !{!"branch_weights", i32 807383, i32 1535262}
!163 = !{!"branch_weights", i32 806374, i32 1009}
!164 = !{!"branch_weights", i32 2330314, i32 12331}
!165 = !{!"branch_weights", i32 815368, i32 115073}
!166 = !{!"branch_weights", i32 566133, i32 249235}
!167 = !{!"branch_weights", i32 565646, i32 487}
!168 = !{!"function_entry_count", i64 1412204}
!169 = !{!"branch_weights", i32 -371540104, i32 0, i32 0, i32 2063301519}
!170 = !{!"branch_weights", i32 2446605, i32 0, i32 0, i32 0, i32 0, i32 0}
!171 = !{!"branch_weights", i32 0, i32 2446605}
!172 = distinct !{!172, !156, !157}
!173 = distinct !{!173, !156, !157}
!174 = distinct !{!174, !156, !157}
!175 = !{!146, !146, i64 0}
!176 = distinct !{!176, !156, !157}
!177 = !{i64 0, i64 4, !154, i64 0, i64 4, !154, i64 0, i64 4, !154, i64 0, i64 4, !154, i64 0, i64 4, !154, i64 0, i64 4, !154, i64 8, i64 24, !150}
!178 = !{!179, !141, i64 46}
!179 = !{!"real_format", !140, i64 0, !140, i64 8, !145, i64 16, !145, i64 20, !145, i64 24, !145, i64 28, !145, i64 32, !145, i64 36, !145, i64 40, !141, i64 44, !141, i64 45, !141, i64 46, !141, i64 47, !141, i64 48, !141, i64 49, !141, i64 50, !141, i64 51}
!180 = !{!179, !141, i64 47}
!181 = !{!179, !145, i64 24}
!182 = !{!179, !145, i64 20}
!183 = !{!"branch_weights", i32 1666838, i32 779767}
!184 = !{!"branch_weights", i32 194966, i32 2251639}
!185 = !{!"branch_weights", i32 116291, i32 78675}
!186 = !{!"branch_weights", i32 116291, i32 0}
!187 = !{!"branch_weights", i32 9461, i32 106830}
!188 = !{!"branch_weights", i32 112093, i32 4198}
!189 = !{!"branch_weights", i32 0, i32 4962, i32 0, i32 528, i32 0, i32 0, i32 0, i32 0, i32 6278, i32 257, i32 38, i32 103884, i32 344, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!190 = !{!"branch_weights", i32 -1579098300, i32 0}
!191 = !{!"branch_weights", i32 344, i32 103884}
!192 = !{!"branch_weights", i32 0, i32 104228}
!193 = !{!"branch_weights", i32 0, i32 467326, i32 779767, i32 379576, i32 311, i32 7291, i32 198, i32 320194, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101764, i32 107231, i32 0, i32 0, i32 166656, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!194 = !{!"branch_weights", i32 467326, i32 0, i32 0, i32 0, i32 0}
!195 = !{!179, !141, i64 49}
!196 = !{!"branch_weights", i32 0, i32 467326}
!197 = !{!"branch_weights", i32 0, i32 467326, i32 0, i32 0, i32 0}
!198 = !{!"branch_weights", i32 22, i32 467304}
!199 = !{!"branch_weights", i32 467326, i32 0, i32 0, i32 0}
!200 = !{!"branch_weights", i32 467280, i32 0, i32 0, i32 46}
!201 = !{!"branch_weights", i32 0, i32 46}
!202 = !{!"branch_weights", i32 467326, i32 0}
!203 = !{!"branch_weights", i32 467253, i32 0, i32 73}
!204 = !{!"branch_weights", i32 73, i32 0}
!205 = !{!"branch_weights", i32 249, i32 467004}
!206 = !{!"branch_weights", i32 249, i32 0}
!207 = !{!"branch_weights", i32 467320, i32 0, i32 6}
!208 = !{!"branch_weights", i32 6, i32 0}
!209 = !{!"branch_weights", i32 0, i32 467320}
!210 = !{!"branch_weights", i32 467225, i32 101}
!211 = !{!"branch_weights", i32 99, i32 2}
!212 = !{!"branch_weights", i32 16906, i32 450319, i32 0}
!213 = !{!"branch_weights", i32 0, i32 450319}
!214 = !{i8 0, i8 2}
!215 = !{!"branch_weights", i32 467225, i32 0, i32 0, i32 0, i32 0}
!216 = !{!179, !141, i64 45}
!217 = !{!"branch_weights", i32 67, i32 467158}
!218 = !{!"branch_weights", i32 0, i32 67}
!219 = !{!"branch_weights", i32 0, i32 467225}
!220 = !{!"branch_weights", i32 0, i32 -905344827, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!221 = !{!"branch_weights", i32 928686, i32 2918, i32 0, i32 0}
!222 = !{!"branch_weights", i32 2918, i32 464307}
!223 = !{!"branch_weights", i32 0, i32 464307}
!224 = !{!"branch_weights", i32 0, i32 2918}
!225 = !{!"branch_weights", i32 464307, i32 0, i32 0, i32 0}
!226 = !{!"branch_weights", i32 -1919824428, i32 0, i32 0}
!227 = !{!"branch_weights", i32 0, i32 779767}
!228 = !{!"branch_weights", i32 379576, i32 0}
!229 = !{!"branch_weights", i32 379576, i32 0, i32 0, i32 0, i32 0}
!230 = !{!"branch_weights", i32 0, i32 379576}
!231 = !{!"branch_weights", i32 379576, i32 0, i32 0}
!232 = !{!"branch_weights", i32 1296, i32 13663440, i32 0}
!233 = !{!"branch_weights", i32 0, i32 379540}
!234 = !{!"branch_weights", i32 0, i32 36}
!235 = !{!"branch_weights", i32 36, i32 0, i32 0, i32 0, i32 0}
!236 = !{!"branch_weights", i32 0, i32 36, i32 0, i32 0, i32 0}
!237 = !{!"branch_weights", i32 0, i32 311}
!238 = !{!"branch_weights", i32 96721, i32 0, i32 0, i32 0, i32 0}
!239 = !{!"branch_weights", i32 311, i32 0, i32 0, i32 0, i32 0}
!240 = !{!"branch_weights", i32 311, i32 0}
!241 = !{!"branch_weights", i32 207, i32 104}
!242 = !{!"branch_weights", i32 207, i32 0}
!243 = !{!"branch_weights", i32 0, i32 104}
!244 = !{!"branch_weights", i32 104, i32 0, i32 0, i32 0, i32 0}
!245 = !{!"branch_weights", i32 104, i32 0, i32 0, i32 0}
!246 = !{!"branch_weights", i32 104, i32 0}
!247 = !{!"branch_weights", i32 308, i32 6983}
!248 = !{!"branch_weights", i32 1685, i32 5298}
!249 = !{!"branch_weights", i32 0, i32 1685}
!250 = !{!"branch_weights", i32 6983, i32 0}
!251 = !{!"branch_weights", i32 0, i32 6983}
!252 = !{!"branch_weights", i32 1685, i32 0}
!253 = !{!"branch_weights", i32 400, i32 1285}
!254 = !{!"branch_weights", i32 2028, i32 4555}
!255 = !{!"branch_weights", i32 1016, i32 1012}
!256 = !{!"branch_weights", i32 1016, i32 0}
!257 = !{!"branch_weights", i32 0, i32 1016}
!258 = !{!"branch_weights", i32 762, i32 254}
!259 = !{!"branch_weights", i32 1774, i32 4555}
!260 = !{!"branch_weights", i32 1774, i32 0}
!261 = !{!"branch_weights", i32 4765, i32 0, i32 1564}
!262 = !{!"branch_weights", i32 12, i32 6317}
!263 = !{!"branch_weights", i32 0, i32 12}
!264 = !{!"branch_weights", i32 1564, i32 4765}
!265 = !{!"branch_weights", i32 0, i32 1564}
!266 = !{!"branch_weights", i32 1031, i32 5298}
!267 = !{!"branch_weights", i32 1031, i32 0}
!268 = !{!"branch_weights", i32 762, i32 269}
!269 = !{!"branch_weights", i32 762, i32 0}
!270 = !{!"branch_weights", i32 0, i32 1031}
!271 = !{!"branch_weights", i32 6329, i32 0}
!272 = !{!"branch_weights", i32 39204, i32 0}
!273 = !{!"branch_weights", i32 0, i32 198, i32 0}
!274 = !{!"branch_weights", i32 198, i32 0, i32 0}
!275 = !{!"branch_weights", i32 82, i32 116}
!276 = !{!"branch_weights", i32 0, i32 82}
!277 = !{!"branch_weights", i32 82, i32 0}
!278 = !{!"branch_weights", i32 0, i32 116}
!279 = !{!"branch_weights", i32 100, i32 16}
!280 = !{!"branch_weights", i32 0, i32 100}
!281 = !{!"branch_weights", i32 116, i32 0}
!282 = !{!"branch_weights", i32 0, i32 320194}
!283 = !{!"branch_weights", i32 320194, i32 0}
!284 = !{!"branch_weights", i32 664, i32 319530}
!285 = !{!"branch_weights", i32 664, i32 0}
!286 = !{!"branch_weights", i32 -401333568, i32 0, i32 16620724, i32 0}
!287 = !{!"branch_weights", i32 -1107235108, i32 13607448, i32 0}
!288 = !{!"branch_weights", i32 1361, i32 0}
!289 = !{!"branch_weights", i32 254, i32 1107}
!290 = !{!"branch_weights", i32 0, i32 319940}
!291 = !{!"branch_weights", i32 664, i32 319276}
!292 = !{!"branch_weights", i32 0, i32 664}
!293 = !{!"branch_weights", i32 1107, i32 318833}
!294 = !{!"branch_weights", i32 1107, i32 0}
!295 = !{!"branch_weights", i32 319940, i32 0}
!296 = !{!"branch_weights", i32 304636, i32 15304}
!297 = !{!"branch_weights", i32 112, i32 304524}
!298 = !{!"branch_weights", i32 112, i32 0}
!299 = !{!"branch_weights", i32 0, i32 112}
!300 = !{!"branch_weights", i32 224, i32 0, i32 0, i32 0}
!301 = !{!"branch_weights", i32 112, i32 112}
!302 = distinct !{!302, !156, !157}
!303 = !{!"branch_weights", i32 12544, i32 0}
!304 = !{!"branch_weights", i32 0, i32 1107}
!305 = !{!306, !140, i64 8}
!306 = !{!"rtl_hooks", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32}
!307 = !{!"branch_weights", i32 0, i32 101764}
!308 = !{!"branch_weights", i32 64858, i32 36906}
!309 = !{!"branch_weights", i32 0, i32 64858}
!310 = !{!"branch_weights", i32 0, i32 107231}
!311 = !{!"branch_weights", i32 100466, i32 66190}
!312 = !{!"branch_weights", i32 0, i32 66190}
!313 = !{!314, !145, i64 0}
!314 = !{!"rtvec_def", !145, i64 0, !141, i64 8}
!315 = distinct !{!315, !156, !157}
!316 = distinct !{!316, !156, !157}
!317 = distinct !{!317, !156, !157}
!318 = !{!"function_entry_count", i64 20062240}
!319 = !{!"branch_weights", i32 15633008, i32 4429232, i32 0}
!320 = !{!"branch_weights", i32 0, i32 4429232}
!321 = !{!322, !140, i64 1040}
!322 = !{!"gcc_target", !323, i64 0, !325, i64 368, !326, i64 664, !145, i64 744, !140, i64 752, !140, i64 760, !140, i64 768, !140, i64 776, !140, i64 784, !140, i64 792, !140, i64 800, !140, i64 808, !140, i64 816, !140, i64 824, !140, i64 832, !140, i64 840, !140, i64 848, !140, i64 856, !140, i64 864, !140, i64 872, !140, i64 880, !140, i64 888, !140, i64 896, !140, i64 904, !140, i64 912, !140, i64 920, !140, i64 928, !140, i64 936, !140, i64 944, !140, i64 952, !140, i64 960, !140, i64 968, !140, i64 976, !140, i64 984, !140, i64 992, !140, i64 1000, !140, i64 1008, !140, i64 1016, !140, i64 1024, !140, i64 1032, !140, i64 1040, !140, i64 1048, !140, i64 1056, !146, i64 1064, !146, i64 1072, !140, i64 1080, !140, i64 1088, !140, i64 1096, !140, i64 1104, !140, i64 1112, !140, i64 1120, !140, i64 1128, !140, i64 1136, !140, i64 1144, !140, i64 1152, !140, i64 1160, !140, i64 1168, !327, i64 1176, !140, i64 1232, !140, i64 1240, !140, i64 1248, !140, i64 1256, !140, i64 1264, !140, i64 1272, !140, i64 1280, !140, i64 1288, !140, i64 1296, !140, i64 1304, !140, i64 1312, !140, i64 1320, !140, i64 1328, !140, i64 1336, !140, i64 1344, !140, i64 1352, !140, i64 1360, !140, i64 1368, !140, i64 1376, !140, i64 1384, !140, i64 1392, !140, i64 1400, !140, i64 1408, !140, i64 1416, !140, i64 1424, !140, i64 1432, !140, i64 1440, !140, i64 1448, !140, i64 1456, !146, i64 1464, !328, i64 1472, !140, i64 1664, !140, i64 1672, !140, i64 1680, !140, i64 1688, !140, i64 1696, !140, i64 1704, !140, i64 1712, !140, i64 1720, !140, i64 1728, !140, i64 1736, !140, i64 1744, !140, i64 1752, !140, i64 1760, !140, i64 1768, !140, i64 1776, !329, i64 1784, !330, i64 1792, !331, i64 1896, !332, i64 1968, !140, i64 2016, !141, i64 2024, !141, i64 2025, !141, i64 2026, !141, i64 2027, !141, i64 2028, !141, i64 2029, !141, i64 2030, !141, i64 2031, !141, i64 2032, !141, i64 2033, !141, i64 2034, !141, i64 2035}
!323 = !{!"asm_out", !140, i64 0, !140, i64 8, !140, i64 16, !324, i64 24, !324, i64 56, !140, i64 88, !140, i64 96, !140, i64 104, !140, i64 112, !140, i64 120, !140, i64 128, !140, i64 136, !140, i64 144, !140, i64 152, !140, i64 160, !140, i64 168, !140, i64 176, !140, i64 184, !140, i64 192, !140, i64 200, !140, i64 208, !140, i64 216, !140, i64 224, !140, i64 232, !140, i64 240, !140, i64 248, !140, i64 256, !140, i64 264, !140, i64 272, !140, i64 280, !140, i64 288, !140, i64 296, !140, i64 304, !140, i64 312, !140, i64 320, !140, i64 328, !140, i64 336, !140, i64 344, !140, i64 352, !140, i64 360}
!324 = !{!"asm_int_op", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24}
!325 = !{!"sched", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40, !140, i64 48, !140, i64 56, !140, i64 64, !140, i64 72, !140, i64 80, !140, i64 88, !140, i64 96, !140, i64 104, !140, i64 112, !140, i64 120, !140, i64 128, !140, i64 136, !140, i64 144, !140, i64 152, !140, i64 160, !140, i64 168, !140, i64 176, !140, i64 184, !140, i64 192, !140, i64 200, !140, i64 208, !140, i64 216, !140, i64 224, !140, i64 232, !140, i64 240, !140, i64 248, !140, i64 256, !140, i64 264, !140, i64 272, !140, i64 280, !140, i64 288}
!326 = !{!"vectorize", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40, !140, i64 48, !140, i64 56, !140, i64 64, !140, i64 72}
!327 = !{!"addr_space", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40, !140, i64 48}
!328 = !{!"calls", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40, !140, i64 48, !140, i64 56, !140, i64 64, !140, i64 72, !140, i64 80, !140, i64 88, !140, i64 96, !140, i64 104, !140, i64 112, !140, i64 120, !140, i64 128, !140, i64 136, !140, i64 144, !140, i64 152, !140, i64 160, !140, i64 168, !140, i64 176, !140, i64 184}
!329 = !{!"c", !140, i64 0}
!330 = !{!"cxx", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40, !140, i64 48, !140, i64 56, !140, i64 64, !140, i64 72, !140, i64 80, !140, i64 88, !140, i64 96}
!331 = !{!"emutls", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40, !140, i64 48, !140, i64 56, !141, i64 64, !141, i64 65}
!332 = !{!"target_option_hooks", !140, i64 0, !140, i64 8, !140, i64 16, !140, i64 24, !140, i64 32, !140, i64 40}
!333 = !{!"VP", i32 0, i64 4429232, i64 7903926320118498188, i64 4429232}
!334 = !{!"branch_weights", i32 61438, i32 4367794}
!335 = !{!"branch_weights", i32 61438, i32 0}
!336 = !{!"function_entry_count", i64 633368}
!337 = !{!"branch_weights", i32 0, i32 633368}
!338 = !{!"branch_weights", i32 633368, i32 0}
!339 = !{!"branch_weights", i32 633151, i32 217}
!340 = !{!"branch_weights", i32 317301, i32 284232, i32 0, i32 0, i32 0, i32 31618, i32 0}
!341 = !{!"branch_weights", i32 0, i32 284232}
!342 = !{!"branch_weights", i32 284231, i32 1}
!343 = !{!"branch_weights", i32 0, i32 284232, i32 0, i32 0}
!344 = !{!"branch_weights", i32 1, i32 284231}
!345 = !{!"branch_weights", i32 1989625, i32 284231}
!346 = distinct !{!346, !156, !157}
!347 = !{!"branch_weights", i32 15632761, i32 284231}
!348 = distinct !{!348, !156, !157}
!349 = distinct !{!349, !156, !157}
!350 = distinct !{!350, !156, !157}
!351 = distinct !{!351, !156, !157}
!352 = distinct !{!352, !156, !157}
!353 = distinct !{!353, !156, !157}
!354 = distinct !{!354, !156, !157}
!355 = distinct !{!355, !156, !157}
!356 = !{!"branch_weights", i32 284232, i32 0}
!357 = !{!"branch_weights", i32 0, i32 284232, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!358 = !{!"branch_weights", i32 0, i32 1}
!359 = !{!"branch_weights", i32 778804, i32 284231}
!360 = distinct !{!360, !156, !157}
!361 = distinct !{!361, !156, !157}
!362 = distinct !{!362, !156, !157}
!363 = !{!364, !145, i64 16}
!364 = !{!"fixed_value", !365, i64 0, !145, i64 16}
!365 = !{!"", !146, i64 0, !146, i64 8}
!366 = !{!364, !146, i64 0}
!367 = !{!364, !146, i64 8}
!368 = distinct !{!368, !156, !157}
!369 = distinct !{!369, !156, !157}
!370 = distinct !{!370, !156, !157}
!371 = !{!"branch_weights", i32 31618, i32 0}
!372 = !{!"branch_weights", i32 243432, i32 73869}
!373 = !{!"branch_weights", i32 3121, i32 240311}
!374 = !{!"branch_weights", i32 0, i32 3121}
!375 = !{!"branch_weights", i32 3121, i32 0}
!376 = !{!"branch_weights", i32 64495, i32 249685}
!377 = !{!"branch_weights", i32 64495, i32 0}
!378 = !{!"branch_weights", i32 24285, i32 40210}
!379 = !{!"branch_weights", i32 273970, i32 0, i32 0, i32 0}
!380 = !{!"branch_weights", i32 243, i32 273727}
!381 = !{!"branch_weights", i32 243, i32 0}
!382 = !{!"branch_weights", i32 0, i32 243}
!383 = !{!"branch_weights", i32 5, i32 238}
!384 = !{!"branch_weights", i32 0, i32 5}
!385 = !{!"branch_weights", i32 0, i32 273970}
!386 = !{!"function_entry_count", i64 10219170}
!387 = !{!"branch_weights", i32 254376, i32 9964794}
!388 = !{!"branch_weights", i32 174, i32 254202}
!389 = !{!390, !140, i64 0}
!390 = !{!"mem_attrs", !140, i64 0, !140, i64 8, !140, i64 16, !145, i64 24, !145, i64 28, !141, i64 32}
!391 = !{!"branch_weights", i32 84, i32 254118}
!392 = !{!390, !140, i64 8}
!393 = !{!"branch_weights", i32 24, i32 254094}
!394 = !{!"branch_weights", i32 254094, i32 0}
!395 = !{!"branch_weights", i32 902, i32 150066, i32 0, i32 0, i32 103150, i32 0, i32 0, i32 0, i32 0}
!396 = !{!"branch_weights", i32 2740, i32 100410}
!397 = !{!"branch_weights", i32 2740, i32 0}
!398 = !{!"branch_weights", i32 101312, i32 152806}
!399 = !{!"branch_weights", i32 152806, i32 0}
!400 = !{!"branch_weights", i32 150066, i32 2740}
!401 = !{!"branch_weights", i32 150066, i32 0}
!402 = !{!"function_entry_count", i64 12581}
!403 = !{!"branch_weights", i32 3787, i32 8794}
!404 = !{!"function_entry_count", i64 65563}
!405 = !{!"branch_weights", i32 56824, i32 8923}
!406 = !{!"branch_weights", i32 0, i32 654, i32 6148, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50022}
!407 = !{!"branch_weights", i32 0, i32 654}
!408 = !{!"branch_weights", i32 654, i32 0, i32 0}
!409 = !{!"branch_weights", i32 427716, i32 0, i32 0}
!410 = !{!"branch_weights", i32 37797904, i32 0, i32 0, i32 0, i32 0}
!411 = !{!"branch_weights", i32 6148, i32 0, i32 0}
!412 = !{!"branch_weights", i32 -664006143, i32 0, i32 0, i32 0}
!413 = !{!"branch_weights", i32 37797904, i32 0, i32 0}
!414 = !{!"branch_weights", i32 0, i32 6148}
!415 = !{!"branch_weights", i32 0, i32 50022}
!416 = !{!"function_entry_count", i64 697467}
!417 = !{!"branch_weights", i32 603656, i32 93811}
!418 = !{!"branch_weights", i32 0, i32 38, i32 88645, i32 608784, i32 0}
!419 = !{!"branch_weights", i32 29937, i32 58746}
!420 = !{!"branch_weights", i32 29937, i32 0}
!421 = !{!"branch_weights", i32 0, i32 29937}
!422 = !{!"branch_weights", i32 4, i32 608780}
!423 = !{!"branch_weights", i32 2, i32 2}
!424 = !{!"branch_weights", i32 608780, i32 0}
!425 = !{!"branch_weights", i32 288892, i32 319888}
!426 = !{!"branch_weights", i32 288892, i32 0}
!427 = !{!"branch_weights", i32 -1686886432, i32 0, i32 0, i32 0, i32 0}
!428 = !{!"branch_weights", i32 288892, i32 0, i32 0, i32 0, i32 0}
!429 = !{!"branch_weights", i32 304040, i32 304740}
!430 = !{!"branch_weights", i32 304040, i32 0}
!431 = !{!"branch_weights", i32 -1406207246, i32 0, i32 0, i32 0, i32 0}
!432 = !{!"branch_weights", i32 304040, i32 0, i32 0, i32 0, i32 0}
!433 = !{!"branch_weights", i32 608628, i32 152}
!434 = !{!"branch_weights", i32 608628, i32 0}
!435 = !{!"branch_weights", i32 0, i32 608628}
!436 = !{!"branch_weights", i32 4976, i32 603652}
!437 = !{!"branch_weights", i32 4976, i32 0}
!438 = !{!"branch_weights", i32 3, i32 4973}
!439 = !{!"branch_weights", i32 0, i32 4976}
!440 = !{!"branch_weights", i32 922, i32 4054}
!441 = !{!"branch_weights", i32 0, i32 603652}
!442 = !{!"branch_weights", i32 603652, i32 0}
!443 = !{!"branch_weights", i32 0, i32 603652, i32 4976}
!444 = distinct !{!444, !156, !157}
!445 = !{!"function_entry_count", i64 224412}
!446 = !{!"branch_weights", i32 37686, i32 186726}
!447 = !{!"function_entry_count", i64 2234362}
!448 = !{!"branch_weights", i32 699603, i32 1534759}
!449 = !{!"branch_weights", i32 56, i32 2234306}
!450 = !{!"branch_weights", i32 2234358, i32 4}
!451 = !{!"branch_weights", i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!452 = !{!"branch_weights", i32 2234246, i32 112}
!453 = !{!"branch_weights", i32 2234246, i32 0}
!454 = !{!"branch_weights", i32 199926, i32 2034432}
!455 = !{!"branch_weights", i32 199622, i32 304}
!456 = !{!"branch_weights", i32 447842, i32 1586590}
!457 = !{!"branch_weights", i32 590692, i32 995898}
!458 = !{!"branch_weights", i32 20791, i32 569901}
!459 = !{!"branch_weights", i32 0, i32 12200, i32 8591}
!460 = !{!"branch_weights", i32 0, i32 12200}
!461 = !{!"branch_weights", i32 12200, i32 0}
!462 = !{!"branch_weights", i32 0, i32 8591}
!463 = !{!"branch_weights", i32 8591, i32 0}
!464 = !{!"branch_weights", i32 1565285, i32 514, i32 0}
!465 = !{!"branch_weights", i32 0, i32 514}
!466 = !{!"branch_weights", i32 0, i32 514, i32 0}
!467 = !{!"branch_weights", i32 569901, i32 995898}
!468 = !{!"branch_weights", i32 569901, i32 0, i32 0}
!469 = !{!"branch_weights", i32 230216, i32 765682}
!470 = !{!"branch_weights", i32 229702, i32 0, i32 0, i32 0, i32 514}
!471 = !{!"branch_weights", i32 514, i32 0}
!472 = !{!"branch_weights", i32 200, i32 765482}
!473 = !{!"branch_weights", i32 200, i32 0, i32 0}
!474 = !{!"branch_weights", i32 1501285, i32 64000}
!475 = !{!"branch_weights", i32 0, i32 1501285}
!476 = !{!"branch_weights", i32 263265, i32 1302020}
!477 = !{!"branch_weights", i32 32321, i32 230944}
!478 = !{!"branch_weights", i32 457, i32 31864}
!479 = !{!"branch_weights", i32 184, i32 273}
!480 = !{!"branch_weights", i32 184, i32 0}
!481 = !{!"branch_weights", i32 1500828, i32 64000}
!482 = !{!"branch_weights", i32 568580, i32 932248}
!483 = !{!"branch_weights", i32 0, i32 1500828}
!484 = !{!"branch_weights", i32 0, i32 1564828}
!485 = !{!"function_entry_count", i64 9616}
!486 = !{!"branch_weights", i32 9616, i32 0}
!487 = !{!"branch_weights", i32 8413, i32 1203}
!488 = !{!"branch_weights", i32 1221, i32 0, i32 2388, i32 4, i32 0, i32 8, i32 8, i32 0, i32 2388, i32 2396}
!489 = !{!"branch_weights", i32 1201, i32 1191}
!490 = !{!"branch_weights", i32 1197, i32 4}
!491 = !{!"branch_weights", i32 0, i32 8}
!492 = !{!"branch_weights", i32 8, i32 0}
!493 = !{!"branch_weights", i32 4, i32 4}
!494 = !{!"branch_weights", i32 2388, i32 0}
!495 = !{!"branch_weights", i32 2384, i32 4}
!496 = !{!"branch_weights", i32 0, i32 4}
!497 = !{!"branch_weights", i32 2392, i32 4, i32 0}
!498 = !{!"branch_weights", i32 4, i32 0}
!499 = !{!"branch_weights", i32 8381, i32 3613, i32 0, i32 0}
!500 = distinct !{!500, !156, !157}
!501 = distinct !{!501, !156, !157}
!502 = !{!"function_entry_count", i64 369517}
!503 = !{!"branch_weights", i32 43554, i32 325963}
!504 = !{!"branch_weights", i32 43554, i32 0, i32 0}
!505 = !{!"branch_weights", i32 0, i32 43554}
!506 = !{!"function_entry_count", i64 2400}
!507 = !{!"function_entry_count", i64 65747}
!508 = !{!"branch_weights", i32 0, i32 65747}
!509 = distinct !{!509, !156, !157}
!510 = distinct !{!510, !156, !157}
!511 = distinct !{!511, !156, !157}
!512 = !{!"branch_weights", i32 65747, i32 0, i32 0}
!513 = !{!"branch_weights", i32 8923, i32 56824}
!514 = !{!"branch_weights", i32 0, i32 2568, i32 3813, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2542, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!515 = distinct !{!515, !156, !157}
!516 = distinct !{!516, !156, !157}
!517 = distinct !{!517, !156, !157}
!518 = !{!"branch_weights", i32 0, i32 2542}
!519 = !{!"branch_weights", i32 2542, i32 0}
!520 = !{!"branch_weights", i32 0, i32 56824}
!521 = distinct !{!521, !156, !157}
!522 = distinct !{!522, !156, !157}
!523 = distinct !{!523, !156, !157}
!524 = distinct !{!524, !156, !157}
!525 = distinct !{!525, !156, !157}
!526 = distinct !{!526, !156, !157}
!527 = !{!"function_entry_count", i64 1034401}
!528 = !{!"function_entry_count", i64 925543}
!529 = !{!"simplify-rtx.c;simplify_binary_operation_1"}
!530 = !{!"branch_weights", i32 36, i32 0}
!531 = !{!"branch_weights", i32 0, i32 326489}
!532 = !{!"function_entry_count", i64 2613902}
!533 = !{!"branch_weights", i32 0, i32 2613902}
!534 = !{!"branch_weights", i32 199926, i32 2413976}
!535 = !{!"branch_weights", i32 0, i32 199926}
!536 = !{!"branch_weights", i32 447842, i32 2166060}
!537 = !{!"branch_weights", i32 2165948, i32 112}
!538 = !{!"branch_weights", i32 0, i32 -515954102, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!539 = !{!"branch_weights", i32 1147419, i32 1018641}
!540 = !{!"branch_weights", i32 1067832, i32 1098228}
!541 = !{!"branch_weights", i32 688288, i32 379544}
!542 = !{!"branch_weights", i32 4, i32 379540}
!543 = !{!"branch_weights", i32 0, i32 688292}
!544 = !{!"branch_weights", i32 688292, i32 0}
!545 = !{!"branch_weights", i32 379540, i32 0}
!546 = !{!"branch_weights", i32 1786520, i32 0, i32 0, i32 0, i32 0}
!547 = !{!"branch_weights", i32 0, i32 1786520}
!548 = !{!"branch_weights", i32 1786520, i32 0}
!549 = !{!"branch_weights", i32 1786516, i32 0, i32 4}
!550 = !{!"branch_weights", i32 0, i32 0, i32 4}
!551 = !{!"branch_weights", i32 1786516, i32 0}
!552 = !{!"branch_weights", i32 1786278, i32 238}
!553 = !{!"branch_weights", i32 1544424, i32 241854}
!554 = !{!"branch_weights", i32 1472701, i32 71723}
!555 = !{!"branch_weights", i32 0, i32 0, i32 2943, i32 67855, i32 506, i32 979049, i32 3400, i32 4459, i32 786, i32 385, i32 726895}
!556 = !{!"branch_weights", i32 2943, i32 0}
!557 = !{!"branch_weights", i32 67855, i32 0}
!558 = !{!"branch_weights", i32 506, i32 0}
!559 = !{!"branch_weights", i32 979049, i32 0}
!560 = !{!"branch_weights", i32 3400, i32 0}
!561 = !{!"branch_weights", i32 4459, i32 0}
!562 = !{!"branch_weights", i32 786, i32 0}
!563 = !{!"branch_weights", i32 385, i32 0}
!564 = !{!"branch_weights", i32 726895, i32 0}
!565 = !{!"branch_weights", i32 1786278, i32 0}
!566 = !{!"branch_weights", i32 1018641, i32 767875}
!567 = !{!"branch_weights", i32 1018641, i32 0}
!568 = !{!"branch_weights", i32 1423, i32 1017218}
!569 = !{!"branch_weights", i32 1423, i32 0}
!570 = !{!"branch_weights", i32 1018641, i32 0, i32 0}
!571 = !{!"function_entry_count", i64 4}
!572 = !{!"simplify-rtx.c;comparison_result"}
!573 = !{!"branch_weights", i32 0, i32 2, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!574 = !{!"branch_weights", i32 2, i32 0}
!575 = !{!"function_entry_count", i64 25975}
!576 = !{!"branch_weights", i32 88, i32 0, i32 25887, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!577 = !{!"branch_weights", i32 25887, i32 0}
!578 = !{!"function_entry_count", i64 28}
!579 = !{!"simplify-rtx.c;plus_minus_operand_p"}
!580 = !{!"function_entry_count", i64 2918}
!581 = !{!"simplify-rtx.c;simplify_plus_minus"}
!582 = !{!583, !140, i64 0}
!583 = !{!"simplify_plus_minus_op_data", !140, i64 0, !147, i64 8}
!584 = !{!583, !147, i64 8}
!585 = !{!"branch_weights", i32 6521, i32 1}
!586 = !{!"branch_weights", i32 15277, i32 6521}
!587 = distinct !{!587, !156, !157}
!588 = !{!"branch_weights", i32 15800, i32 3970, i32 0, i32 0, i32 0, i32 0, i32 2028}
!589 = !{!"branch_weights", i32 0, i32 3970}
!590 = !{!"branch_weights", i32 2028, i32 0}
!591 = !{!"branch_weights", i32 21798, i32 0}
!592 = !{!"branch_weights", i32 2918, i32 3604}
!593 = distinct !{!593, !156, !157}
!594 = !{!"branch_weights", i32 822, i32 2096}
!595 = !{!"branch_weights", i32 2918, i32 0}
!596 = !{!"branch_weights", i32 2917, i32 1}
!597 = !{!"branch_weights", i32 9504, i32 1732}
!598 = !{!"branch_weights", i32 9504, i32 0}
!599 = !{!"branch_weights", i32 4510, i32 2378}
!600 = !{i64 0, i64 8, !139, i64 8, i64 2, !601}
!601 = !{!147, !147, i64 0}
!602 = !{i64 0, i64 2, !601}
!603 = !{!"branch_weights", i32 2770, i32 4348}
!604 = !{!"branch_weights", i32 2608, i32 1740}
!605 = distinct !{!605, !156, !157}
!606 = !{!"branch_weights", i32 2917, i32 3971}
!607 = distinct !{!607, !156, !157}
!608 = !{!"branch_weights", i32 3971, i32 2917}
!609 = distinct !{!609, !156, !157}
!610 = !{!"branch_weights", i32 12038, i32 0}
!611 = !{!"branch_weights", i32 12038, i32 0, i32 0}
!612 = !{!"branch_weights", i32 5151, i32 6887}
!613 = distinct !{!613, !156, !157}
!614 = !{!"branch_weights", i32 0, i32 9806}
!615 = !{!"branch_weights", i32 2917, i32 6889}
!616 = distinct !{!616, !156, !157}
!617 = distinct !{!617, !156, !157}
!618 = !{!"branch_weights", i32 0, i32 822}
!619 = !{!"branch_weights", i32 1, i32 0}
!620 = distinct !{!620, !156, !157}
!621 = !{!"branch_weights", i32 6888, i32 0}
!622 = distinct !{!622, !156, !157}
!623 = !{!"function_entry_count", i64 199417}
!624 = !{!"simplify-rtx.c;simplify_associative_operation"}
