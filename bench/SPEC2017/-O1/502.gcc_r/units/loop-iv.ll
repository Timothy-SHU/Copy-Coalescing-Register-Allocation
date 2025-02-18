; ModuleID = 'loop-iv.c'
source_filename = "loop-iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_iv = type { ptr, ptr, i32, ptr, ptr, i32, i32, i8 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_rd_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.biv_entry = type { i32, %struct.rtx_iv }
%struct.niter_desc = type { ptr, ptr, i8, i8, i64, i64, ptr, ptr, ptr, i8, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_link = type { ptr, ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"not simple\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"invariant \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" * iteration\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" (in %s)\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c" %s to %s\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" (first special)\00", align 1
@current_loop = internal unnamed_addr global ptr null, align 8
@clean_slate = internal unnamed_addr global i1 false, align 1
@bivs = internal unnamed_addr global ptr null, align 8
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"loop-iv.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@iv_ref_table = internal unnamed_addr global ptr null, align 8
@iv_ref_table_size = internal unnamed_addr global i32 0, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"Loop %d is simple:\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"  simple exit %d -> %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"  assumptions: \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"  does not roll if: \00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"  infinite if: \00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"  number of iterations: \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"  upper bound: \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Loop %d is not simple.\0A\00", align 1
@flag_tree_loop_optimize = external local_unnamed_addr global i32, align 4
@warn_unsafe_loop_optimizations = external local_unnamed_addr global i32, align 4
@flag_unsafe_loop_optimizations = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [39 x i8] c"assuming that the loop is not infinite\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"cannot optimize possibly infinite loops\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"assuming that the loop counter does not overflow\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"cannot optimize loop, the loop counter may overflow\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Analyzing operand \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c" of insn \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"  not simple.\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Analyzing def of \00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c" in insn \00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"  already analysed.\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"  is \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Analyzing \00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c" for bivness.\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@reg_obstack = external global %struct.bitmap_obstack, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@.str.36 = private unnamed_addr constant [33 x i8] c";; improved upper bound by one.\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !39
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !38 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !38 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !55

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_iv_info(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !38 {
  %3 = load ptr, ptr %1, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 10, i64 1, ptr %0)
  br label %72

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 10, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %12, %7
  %20 = load ptr, ptr %1, align 8, !tbaa !58
  tail call void @print_rtl(ptr noundef %0, ptr noundef %20) #18
  %21 = load ptr, ptr %8, align 8, !tbaa !60
  %22 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 3, i64 1, ptr %0)
  %26 = load ptr, ptr %8, align 8, !tbaa !60
  tail call void @print_rtl(ptr noundef %0, ptr noundef %26) #18
  %27 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 12, i64 1, ptr %0)
  br label %28

28:                                               ; preds = %24, %19
  %29 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !61
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %33)
  %35 = load i32, ptr %29, align 4, !tbaa !61
  %36 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !62
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !63
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  %45 = zext i32 %37 to i64
  %46 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %44, ptr noundef %47)
  br label %49

49:                                               ; preds = %39, %28
  %50 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 3, i64 1, ptr %0)
  %56 = load ptr, ptr %50, align 8, !tbaa !64
  tail call void @print_rtl(ptr noundef %0, ptr noundef %56) #18
  br label %57

57:                                               ; preds = %54, %49
  %58 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !65
  %60 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 3, i64 1, ptr %0)
  %64 = load ptr, ptr %58, align 8, !tbaa !65
  tail call void @print_rtl(ptr noundef %0, ptr noundef %64) #18
  br label %65

65:                                               ; preds = %62, %57
  %66 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %67 = load i8, ptr %66, align 8
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %0)
  br label %72

72:                                               ; preds = %5, %70, %65
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @lowpart_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !66 {
  %4 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #18
  %5 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4) #18
  ret ptr %5
}

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @iv_analysis_loop_init(ptr noundef %0) local_unnamed_addr #9 !prof !38 {
  %2 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #18
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  store ptr %0, ptr @current_loop, align 8, !tbaa !39
  %4 = load i1, ptr @clean_slate, align 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @df_set_flags(i32 noundef 36) #18
  %7 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @biv_hash, ptr noundef nonnull @biv_eq, ptr noundef nonnull @free) #18
  store ptr %7, ptr @bivs, align 8, !tbaa !39
  store i1 true, ptr @clean_slate, align 1
  br label %9

8:                                                ; preds = %1
  tail call fastcc void @clear_iv_info()
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %20, %13 ], [ 0, %9 ]
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %18) #18
  %20 = add nuw nsw i64 %14, 1
  %21 = load i32, ptr %10, align 4, !tbaa !67
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %13, label %24, !llvm.loop !73

24:                                               ; preds = %13, %9
  %25 = load ptr, ptr @df, align 8, !tbaa !39
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 1, i64 4
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  tail call void @df_remove_problem(ptr noundef %27) #18
  tail call void @df_process_deferred_rescans() #18
  tail call void @df_chain_add_problem(i32 noundef 2) #18
  tail call void @df_note_add_problem() #18
  tail call void @df_set_blocks(ptr noundef %3) #18
  tail call void @df_analyze() #18
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @df_dump_region(ptr noundef nonnull %28) #18
  br label %31

31:                                               ; preds = %30, %24
  tail call fastcc void @check_iv_ref_table_size()
  tail call void @bitmap_obstack_free(ptr noundef %3) #18
  tail call void @free(ptr noundef %2)
  ret void
}

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @biv_hash(ptr nocapture noundef readonly %0) #11 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !74
  ret i32 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @biv_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !38 {
  %3 = load i32, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: cold nounwind uwtable
define internal fastcc void @clear_iv_info() unnamed_addr #9 !prof !38 {
  %1 = load ptr, ptr @df, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 3, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !76
  tail call fastcc void @check_iv_ref_table_size()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @iv_ref_table, align 8, !tbaa !39
  %7 = zext i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %14
  %9 = phi i64 [ 0, %5 ], [ %15, %14 ]
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @free(ptr noundef %11)
  store ptr null, ptr %10, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !79

17:                                               ; preds = %14, %0
  %18 = load ptr, ptr @bivs, align 8, !tbaa !39
  tail call void @htab_empty(ptr noundef %18) #18
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @df_remove_problem(ptr noundef) local_unnamed_addr #3

declare void @df_process_deferred_rescans() local_unnamed_addr #3

declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_set_blocks(ptr noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare void @df_dump_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_iv_ref_table_size() unnamed_addr #9 !prof !38 {
  %1 = load i32, ptr @iv_ref_table_size, align 4, !tbaa !54
  %2 = load ptr, ptr @df, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !76
  %5 = icmp ult i32 %1, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = lshr i32 %4, 2
  %8 = add i32 %7, %4
  %9 = load ptr, ptr @iv_ref_table, align 8, !tbaa !39
  %10 = zext i32 %8 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = tail call ptr @xrealloc(ptr noundef %9, i64 noundef %11) #18
  store ptr %12, ptr @iv_ref_table, align 8, !tbaa !39
  %13 = load i32, ptr @iv_ref_table_size, align 4, !tbaa !54
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = sub i32 %8, %13
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  store i32 %8, ptr @iv_ref_table_size, align 4, !tbaa !54
  br label %19

19:                                               ; preds = %6, %0
  ret void
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @iv_analyze_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #9 !prof !38 {
  %5 = alloca %struct.rtx_iv, align 8
  %6 = alloca %struct.rtx_iv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #18
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 6
  store i32 0, ptr %9, align 4, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %10 = load i32, ptr %1, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %2
  %14 = icmp eq i32 %12, 0
  %15 = or i1 %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 938, ptr noundef nonnull @.str.9) #18
  br label %17

17:                                               ; preds = %4, %16
  %18 = load i32, ptr %1, align 8
  %19 = and i32 %18, 65535
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = icmp eq i32 %19, 37
  %26 = icmp eq i32 %8, 39
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %17
  %29 = tail call fastcc zeroext i8 @iv_analyze_op(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3), !range !80
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %250, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %9, align 4, !tbaa !61
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %250

34:                                               ; preds = %31
  store i32 %2, ptr %9, align 4, !tbaa !61
  %35 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 5
  store i32 %2, ptr %35, align 8, !tbaa !62
  br label %250

36:                                               ; preds = %24
  %37 = trunc i32 %7 to i16
  switch i16 %37, label %250 [
    i16 37, label %79
    i16 98, label %38
    i16 99, label %38
    i16 51, label %38
    i16 49, label %44
    i16 50, label %44
    i16 52, label %49
    i16 65, label %68
  ]

38:                                               ; preds = %36, %36, %36
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  br label %79

44:                                               ; preds = %36, %36
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  br label %79

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !54
  %59 = icmp eq i32 %58, 9
  %60 = select i1 %59, ptr %53, ptr %51
  %61 = select i1 %59, ptr %51, ptr %53
  %62 = load i32, ptr %60, align 8
  %63 = and i32 %62, 65535
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !54
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %79, label %250

68:                                               ; preds = %36
  %69 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !50
  %71 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !54
  %78 = icmp eq i32 %77, 9
  br i1 %78, label %79, label %250

79:                                               ; preds = %36, %68, %49, %44, %38
  %80 = phi ptr [ %72, %68 ], [ %60, %49 ], [ null, %44 ], [ null, %38 ], [ null, %36 ]
  %81 = phi ptr [ %70, %68 ], [ %61, %49 ], [ %46, %44 ], [ %40, %38 ], [ %1, %36 ]
  %82 = phi ptr [ null, %68 ], [ null, %49 ], [ %48, %44 ], [ null, %38 ], [ null, %36 ]
  %83 = phi i32 [ %2, %68 ], [ %2, %49 ], [ %2, %44 ], [ %43, %38 ], [ %2, %36 ]
  %84 = icmp eq ptr %81, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = call zeroext i8 @iv_analyze_expr(ptr noundef %0, ptr noundef nonnull %81, i32 noundef %83, ptr noundef nonnull %5), !range !80
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %250, label %88

88:                                               ; preds = %85, %79
  %89 = icmp eq ptr %82, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = call zeroext i8 @iv_analyze_expr(ptr noundef %0, ptr noundef nonnull %82, i32 noundef %83, ptr noundef nonnull %6), !range !80
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %250, label %93

93:                                               ; preds = %90, %88
  switch i16 %37, label %246 [
    i16 98, label %94
    i16 99, label %94
    i16 51, label %126
    i16 49, label %127
    i16 50, label %127
    i16 52, label %240
    i16 65, label %243
  ]

94:                                               ; preds = %93, %93
  %95 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !60
  %97 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 7
  %101 = load i8, ptr %100, align 8
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = call ptr @get_iv_value(ptr noundef nonnull %5, ptr noundef %97)
  %106 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 5
  %107 = load i32, ptr %106, align 8, !tbaa !62
  %108 = tail call ptr @simplify_gen_unary(i32 noundef %8, i32 noundef %2, ptr noundef %105, i32 noundef %107) #18
  store ptr %108, ptr %5, align 8, !tbaa !58
  %109 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 2
  store i32 0, ptr %109, align 8, !tbaa !63
  store i32 %2, ptr %106, align 8, !tbaa !62
  %110 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 6
  store i32 %2, ptr %110, align 4, !tbaa !61
  %111 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %112 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 3
  store ptr %111, ptr %112, align 8, !tbaa !65
  %113 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %114 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 4
  store ptr %113, ptr %114, align 8, !tbaa !64
  br label %246

115:                                              ; preds = %99, %94
  %116 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 5
  %117 = load i32, ptr %116, align 8, !tbaa !62
  %118 = icmp eq i32 %117, %2
  br i1 %118, label %119, label %250

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !63
  %122 = icmp ne i32 %121, 0
  %123 = icmp ne i32 %121, %8
  %124 = and i1 %122, %123
  %125 = select i1 %122, i32 %121, i32 %8
  store i32 %125, ptr %120, align 8
  br i1 %124, label %250, label %246

126:                                              ; preds = %93
  call fastcc void @iv_neg(ptr noundef nonnull %5)
  br label %246

127:                                              ; preds = %93, %93
  %128 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !63
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %155

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 6
  %133 = load i32, ptr %132, align 4, !tbaa !61
  %134 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 5
  %135 = load i32, ptr %134, align 8, !tbaa !62
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !60
  %140 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = zext i32 %135 to i64
  %144 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !50
  %146 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 5
  %147 = load i32, ptr %146, align 8, !tbaa !62
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !50
  %151 = icmp ult i8 %145, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  store i32 %147, ptr %134, align 8, !tbaa !62
  %153 = load ptr, ptr %5, align 8, !tbaa !58
  %154 = tail call ptr @simplify_gen_unary(i32 noundef 99, i32 noundef %147, ptr noundef %153, i32 noundef %133) #18
  store ptr %154, ptr %5, align 8, !tbaa !58
  br label %155

155:                                              ; preds = %152, %142, %137, %131, %127
  %156 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 2
  %157 = load i32, ptr %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %183

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 6
  %161 = load i32, ptr %160, align 4, !tbaa !61
  %162 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 5
  %163 = load i32, ptr %162, align 8, !tbaa !62
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %183

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !60
  %168 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = zext i32 %163 to i64
  %172 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !50
  %174 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 5
  %175 = load i32, ptr %174, align 8, !tbaa !62
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !50
  %179 = icmp ult i8 %173, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  store i32 %175, ptr %162, align 8, !tbaa !62
  %181 = load ptr, ptr %6, align 8, !tbaa !58
  %182 = tail call ptr @simplify_gen_unary(i32 noundef 99, i32 noundef %175, ptr noundef %181, i32 noundef %161) #18
  store ptr %182, ptr %6, align 8, !tbaa !58
  br label %183

183:                                              ; preds = %180, %170, %165, %159, %155
  %184 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 5
  %185 = load i32, ptr %184, align 8, !tbaa !62
  %186 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 5
  %187 = load i32, ptr %186, align 8, !tbaa !62
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %250

189:                                              ; preds = %183
  %190 = or i32 %157, %129
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 6
  %194 = load i32, ptr %193, align 4, !tbaa !61
  %195 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 6
  %196 = load i32, ptr %195, align 4, !tbaa !61
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %198, label %250

198:                                              ; preds = %192
  %199 = load ptr, ptr %5, align 8, !tbaa !58
  %200 = load ptr, ptr %6, align 8, !tbaa !58
  %201 = tail call ptr @simplify_gen_binary(i32 noundef %8, i32 noundef %185, ptr noundef %199, ptr noundef %200) #18
  store ptr %201, ptr %5, align 8, !tbaa !58
  %202 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !60
  %204 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !60
  %206 = tail call ptr @simplify_gen_binary(i32 noundef %8, i32 noundef %185, ptr noundef %203, ptr noundef %205) #18
  store ptr %206, ptr %202, align 8, !tbaa !60
  br label %246

207:                                              ; preds = %189
  %208 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, %185
  %211 = select i1 %158, i1 %210, i1 false
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !60
  %215 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %216 = icmp eq ptr %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !65
  %220 = load ptr, ptr %6, align 8, !tbaa !58
  %221 = tail call ptr @simplify_gen_binary(i32 noundef %8, i32 noundef %185, ptr noundef %219, ptr noundef %220) #18
  store ptr %221, ptr %218, align 8, !tbaa !65
  br label %246

222:                                              ; preds = %212, %207
  %223 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 6
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, %185
  %226 = select i1 %130, i1 %225, i1 false
  br i1 %226, label %227, label %250

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !60
  %230 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %231 = icmp eq ptr %229, %230
  br i1 %231, label %232, label %250

232:                                              ; preds = %227
  %233 = load ptr, ptr %5, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !81
  %234 = icmp eq i32 %8, 50
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  call fastcc void @iv_neg(ptr noundef nonnull %5)
  br label %236

236:                                              ; preds = %235, %232
  %237 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !65
  %239 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %185, ptr noundef %238, ptr noundef %233) #18
  store ptr %239, ptr %237, align 8, !tbaa !65
  br label %246

240:                                              ; preds = %93
  %241 = call fastcc zeroext i8 @iv_mult(ptr noundef nonnull %5, ptr noundef %80), !range !80
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %250, label %246

243:                                              ; preds = %93
  %244 = call fastcc zeroext i8 @iv_shift(ptr noundef nonnull %5, ptr noundef %80), !range !80
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %198, %217, %236, %119, %104, %93, %126, %243, %240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !81
  %247 = load ptr, ptr %3, align 8, !tbaa !58
  %248 = icmp ne ptr %247, null
  %249 = zext i1 %248 to i8
  br label %250

250:                                              ; preds = %115, %243, %240, %183, %192, %222, %227, %90, %68, %49, %119, %85, %36, %31, %34, %28, %246
  %251 = phi i8 [ %249, %246 ], [ 0, %28 ], [ 1, %34 ], [ 1, %31 ], [ 0, %36 ], [ 0, %85 ], [ 0, %119 ], [ 0, %49 ], [ 0, %68 ], [ 0, %90 ], [ 0, %227 ], [ 0, %222 ], [ 0, %192 ], [ 0, %183 ], [ 0, %240 ], [ 0, %243 ], [ 0, %115 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #18
  ret i8 %251
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @iv_analyze_op(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !38 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !39
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 18, i64 1, ptr nonnull %5)
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @print_rtl(ptr noundef %9, ptr noundef %1) #18
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %11 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 9, i64 1, ptr %10)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %13 = tail call i32 @print_rtl_single(ptr noundef %12, ptr noundef %0) #18
  br label %14

14:                                               ; preds = %7, %3
  %15 = tail call i32 @function_invariant_p(ptr noundef %1) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %94

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 39
  br i1 %20, label %21, label %86

21:                                               ; preds = %17
  %22 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %1) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %124, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = tail call fastcc zeroext i8 @iv_analyze_op(ptr noundef %0, ptr noundef %26, ptr noundef %2), !range !80
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %124, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %1, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 7
  %39 = load i8, ptr %38, align 8
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = tail call ptr @get_iv_value(ptr noundef %2, ptr noundef %35)
  %44 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !62
  %46 = tail call i32 @subreg_lowpart_offset(i32 noundef %32, i32 noundef %45) #18
  %47 = tail call ptr @simplify_gen_subreg(i32 noundef %32, ptr noundef %43, i32 noundef %45, i32 noundef %46) #18
  store ptr %47, ptr %2, align 8, !tbaa !58
  %48 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 2
  store i32 0, ptr %48, align 8, !tbaa !63
  store i32 %32, ptr %44, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 6
  store i32 %32, ptr %49, align 4, !tbaa !61
  %50 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %51 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !65
  %52 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %53 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 4
  store ptr %52, ptr %53, align 8, !tbaa !64
  br label %124

54:                                               ; preds = %37, %29
  %55 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !62
  %57 = icmp eq i32 %56, %32
  br i1 %57, label %124, label %58

58:                                               ; preds = %54
  %59 = zext nneg i32 %32 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !50
  %62 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 6
  %63 = load i32, ptr %62, align 4, !tbaa !61
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !50
  %67 = icmp ugt i8 %61, %66
  br i1 %67, label %124, label %68

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 2
  store i32 0, ptr %69, align 8, !tbaa !63
  store i32 %32, ptr %62, align 4, !tbaa !61
  %70 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  %72 = load ptr, ptr %2, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !64
  %75 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %56, ptr noundef %72, ptr noundef %74) #18
  %76 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %56, ptr noundef %71, ptr noundef %75) #18
  store ptr %76, ptr %2, align 8, !tbaa !58
  %77 = load i32, ptr %55, align 8, !tbaa !62
  %78 = load ptr, ptr %33, align 8, !tbaa !60
  %79 = load ptr, ptr %73, align 8, !tbaa !64
  %80 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %77, ptr noundef %78, ptr noundef %79) #18
  store ptr %80, ptr %33, align 8, !tbaa !60
  %81 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  store ptr %81, ptr %73, align 8, !tbaa !64
  %82 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %82, ptr %70, align 8, !tbaa !65
  %83 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 7
  %84 = load i8, ptr %83, align 8
  %85 = and i8 %84, -2
  store i8 %85, ptr %83, align 8
  br label %124

86:                                               ; preds = %17
  %87 = call fastcc i32 @iv_get_reaching_def(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4), !range !82
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %91 = icmp eq ptr %90, null
  br i1 %91, label %124, label %92

92:                                               ; preds = %89
  %93 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr nonnull %90)
  br label %124

94:                                               ; preds = %14, %86
  %95 = phi i32 [ %87, %86 ], [ 1, %14 ]
  switch i32 %95, label %121 [
    i32 1, label %96
    i32 2, label %119
  ]

96:                                               ; preds = %94
  %97 = load i32, ptr %1, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 6
  store i32 %99, ptr %100, align 4, !tbaa !61
  store ptr %1, ptr %2, align 8, !tbaa !58
  %101 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %102 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !60
  %103 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 7
  %104 = load i8, ptr %103, align 8
  %105 = and i8 %104, -2
  store i8 %105, ptr %103, align 8
  %106 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 2
  store i32 0, ptr %106, align 8, !tbaa !63
  %107 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 5
  store i32 %99, ptr %107, align 8, !tbaa !62
  %108 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %109 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 3
  store ptr %108, ptr %109, align 8, !tbaa !65
  %110 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %111 = getelementptr inbounds %struct.rtx_iv, ptr %2, i64 0, i32 4
  store ptr %110, ptr %111, align 8, !tbaa !64
  %112 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %113 = icmp eq ptr %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %96
  %115 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 2, i64 1, ptr nonnull %112)
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @dump_iv_info(ptr noundef %116, ptr noundef nonnull %2)
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %118 = tail call i32 @fputc(i32 10, ptr %117)
  br label %124

119:                                              ; preds = %94
  %120 = tail call fastcc zeroext i8 @iv_analyze_biv(ptr noundef %1, ptr noundef %2), !range !80
  br label %124

121:                                              ; preds = %94
  %122 = load ptr, ptr %4, align 8, !tbaa !39
  %123 = tail call fastcc zeroext i8 @iv_analyze_def(ptr noundef %122, ptr noundef %2), !range !80
  br label %124

124:                                              ; preds = %68, %58, %54, %42, %96, %114, %89, %92, %24, %21, %121, %119
  %125 = phi i8 [ %120, %119 ], [ %123, %121 ], [ 0, %21 ], [ 0, %24 ], [ 0, %92 ], [ 0, %89 ], [ 1, %114 ], [ 1, %96 ], [ 1, %68 ], [ 1, %42 ], [ 1, %54 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %125
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @iv_neg(ptr nocapture noundef %0) unnamed_addr #9 !prof !38 {
  %2 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !62
  br i1 %4, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !58
  %9 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %6, ptr noundef %8, i32 noundef %6) #18
  store ptr %9, ptr %0, align 8, !tbaa !58
  %10 = load i32, ptr %5, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %10, ptr noundef %12, i32 noundef %10) #18
  store ptr %13, ptr %11, align 8, !tbaa !60
  br label %22

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %6, ptr noundef %16, i32 noundef %6) #18
  store ptr %17, ptr %15, align 8, !tbaa !65
  %18 = load i32, ptr %5, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %18, ptr noundef %20, i32 noundef %18) #18
  store ptr %21, ptr %19, align 8, !tbaa !64
  br label %22

22:                                               ; preds = %14, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @iv_mult(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  %3 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %7, %4
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !63
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !58
  %17 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %4, ptr noundef %16, ptr noundef nonnull %1) #18
  store ptr %17, ptr %0, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %4, ptr noundef %21, ptr noundef nonnull %1) #18
  store ptr %22, ptr %20, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %18, %15 ], [ %23, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %4, ptr noundef %26, ptr noundef nonnull %1) #18
  store ptr %27, ptr %25, align 8, !tbaa !39
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i8 [ 0, %2 ], [ 1, %24 ]
  ret i8 %29
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @iv_shift(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  %3 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %7, %4
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !63
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !58
  %17 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %4, ptr noundef %16, ptr noundef nonnull %1) #18
  store ptr %17, ptr %0, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %4, ptr noundef %21, ptr noundef nonnull %1) #18
  store ptr %22, ptr %20, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %18, %15 ], [ %23, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %4, ptr noundef %26, ptr noundef nonnull %1) #18
  store ptr %27, ptr %25, align 8, !tbaa !39
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i8 [ 0, %2 ], [ 1, %24 ]
  ret i8 %29
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @iv_analyze(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %1), !range !80
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %12, %10 ], [ %1, %6 ]
  %15 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef %14) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %0, %13 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = tail call ptr @df_find_use(ptr noundef %20, ptr noundef %14) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %17, label %23, !llvm.loop !83

23:                                               ; preds = %17, %13, %3
  %24 = phi ptr [ %0, %3 ], [ %0, %13 ], [ %20, %17 ]
  %25 = tail call fastcc zeroext i8 @iv_analyze_op(ptr noundef %24, ptr noundef %1, ptr noundef %2), !range !80
  ret i8 %25
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @simple_reg_p(ptr noundef %0) unnamed_addr #9 !prof !38 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %0, %1 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !50
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = lshr i32 %13, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = icmp eq i8 %25, 2
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %20, %16, %11, %5
  %29 = phi i8 [ 0, %5 ], [ 0, %11 ], [ 0, %16 ], [ %27, %20 ]
  ret i8 %29
}

declare ptr @df_find_use(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @iv_analyze_result(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = tail call ptr @df_find_def(ptr noundef %0, ptr noundef %1) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @iv_analyze_def(ptr noundef nonnull %4, ptr noundef %2), !range !80
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8 [ %7, %6 ], [ 0, %3 ]
  ret i8 %9
}

declare ptr @df_find_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @iv_analyze_def(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !38 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 17, i64 1, ptr nonnull %8)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @print_rtl(ptr noundef %12, ptr noundef %7) #18
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %14 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 9, i64 1, ptr %13)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %16 = tail call i32 @print_rtl_single(ptr noundef %15, ptr noundef %5) #18
  br label %17

17:                                               ; preds = %10, %2
  tail call fastcc void @check_iv_ref_table_size()
  %18 = load ptr, ptr @iv_ref_table, align 8, !tbaa !39
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 20, i64 1, ptr nonnull %26)
  br label %30

30:                                               ; preds = %28, %25
  %31 = load ptr, ptr @iv_ref_table, align 8, !tbaa !39
  %32 = load i32, ptr %19, align 4, !tbaa !50
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %35, i64 56, i1 false), !tbaa.struct !81
  br label %94

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  store i32 0, ptr %37, align 4, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %38 = load i32, ptr %7, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  %42 = load i32, ptr %5, align 8
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -7
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 23
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %48) #18
  br label %54

54:                                               ; preds = %41, %46, %52
  %55 = phi ptr [ %53, %52 ], [ null, %41 ], [ %48, %46 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %98, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %98

63:                                               ; preds = %57
  %64 = icmp eq ptr %59, %7
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1084, ptr noundef nonnull @.str.9) #18
  br label %66

66:                                               ; preds = %63, %65
  %67 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %5) #18
  %68 = icmp eq ptr %67, null
  %69 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %70 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = select i1 %68, ptr %70, ptr %69
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = load i32, ptr %7, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = tail call zeroext i8 @iv_analyze_expr(ptr noundef nonnull %5, ptr noundef %72, i32 noundef %75, ptr noundef nonnull %1), !range !80
  %77 = tail call ptr @xmalloc(i64 noundef 56) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %77, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !81
  tail call fastcc void @check_iv_ref_table_size()
  %78 = load ptr, ptr @iv_ref_table, align 8, !tbaa !39
  %79 = load i32, ptr %19, align 4, !tbaa !50
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  store ptr %77, ptr %81, align 8, !tbaa !39
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %66
  tail call void @print_rtl(ptr noundef nonnull %82, ptr noundef nonnull %7) #18
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %86 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 9, i64 1, ptr %85)
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %88 = tail call i32 @print_rtl_single(ptr noundef %87, ptr noundef nonnull %5) #18
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %90 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 5, i64 1, ptr %89)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @dump_iv_info(ptr noundef %91, ptr noundef nonnull %1)
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %93 = tail call i32 @fputc(i32 10, ptr %92)
  br label %94

94:                                               ; preds = %66, %84, %30
  %95 = load ptr, ptr %1, align 8, !tbaa !58
  %96 = icmp ne ptr %95, null
  %97 = zext i1 %96 to i8
  br label %98

98:                                               ; preds = %94, %57, %54, %36
  %99 = phi i8 [ 0, %36 ], [ 0, %54 ], [ 0, %57 ], [ %97, %94 ]
  ret i8 %99
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @biv_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !38 {
  %3 = alloca %struct.rtx_iv, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %1), !range !80
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @df_find_def(ptr noundef %0, ptr noundef %1) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1218, ptr noundef nonnull @.str.9) #18
  br label %11

11:                                               ; preds = %7, %10
  %12 = call fastcc zeroext i8 @latch_dominating_def(ptr noundef %1, ptr noundef nonnull %4), !range !80
  %13 = icmp ne i8 %12, 0
  %14 = load ptr, ptr %4, align 8
  %15 = icmp eq ptr %14, %8
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = call fastcc zeroext i8 @iv_analyze_biv(ptr noundef %1, ptr noundef nonnull %3), !range !80
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %24 = icmp ne ptr %22, %23
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %17, %11, %2, %20
  %27 = phi i8 [ %25, %20 ], [ 0, %2 ], [ 0, %11 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret i8 %27
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @latch_dominating_def(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !38 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = load ptr, ptr @current_loop, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.loop, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !71
  %10 = load ptr, ptr @df, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1, i64 3
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !87
  %15 = icmp ugt i32 %14, %9
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = zext i32 %9 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  br label %22

22:                                               ; preds = %2, %16
  %23 = phi ptr [ %21, %16 ], [ null, %2 ]
  %24 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = zext i32 %4 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = icmp eq ptr %29, null
  br i1 %30, label %86, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.df_rd_bb_info, ptr %23, i64 0, i32 4
  br label %33

33:                                               ; preds = %31, %81
  %34 = phi ptr [ %29, %31 ], [ %84, %81 ]
  %35 = phi ptr [ null, %31 ], [ %82, %81 ]
  %36 = load ptr, ptr @df, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = load i32, ptr %34, align 8
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.df_artificial_ref, ptr %34, i64 0, i32 1
  br label %49

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %34, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = load ptr, ptr %46, align 8, !tbaa !84
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi ptr [ %43, %42 ], [ %48, %44 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !71
  %54 = tail call i32 @bitmap_bit_p(ptr noundef %38, i32 noundef %53) #18
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %32, align 8, !tbaa !92
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %34, i64 0, i32 7
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = tail call i32 @bitmap_bit_p(ptr noundef %57, i32 noundef %59) #18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %56
  %63 = icmp eq ptr %35, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %62
  %65 = load ptr, ptr @current_loop, align 8, !tbaa !39
  %66 = load i32, ptr %34, align 8
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.df_artificial_ref, ptr %34, i64 0, i32 1
  br label %76

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %34, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !50
  %74 = load ptr, ptr %73, align 8, !tbaa !84
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 1
  br label %76

76:                                               ; preds = %71, %69
  %77 = phi ptr [ %70, %69 ], [ %75, %71 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  %79 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %65, ptr noundef %78) #18
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76, %49, %56
  %82 = phi ptr [ %35, %56 ], [ %35, %49 ], [ %34, %76 ]
  %83 = getelementptr inbounds %struct.df_base_ref, ptr %34, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %33, !llvm.loop !94

86:                                               ; preds = %81, %22
  %87 = phi ptr [ null, %22 ], [ %82, %81 ]
  store ptr %87, ptr %1, align 8, !tbaa !39
  br label %88

88:                                               ; preds = %76, %62, %86
  %89 = phi i8 [ 1, %86 ], [ 0, %62 ], [ 0, %76 ]
  ret i8 %89
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @iv_analyze_biv(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !38 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 10, i64 1, ptr nonnull %8)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @print_rtl(ptr noundef %12, ptr noundef %0) #18
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %14 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 14, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %24, label %143

24:                                               ; preds = %19
  %25 = lshr i32 %16, 16
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  store i32 %26, ptr %27, align 4, !tbaa !61
  store ptr %0, ptr %1, align 8, !tbaa !58
  %28 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %29 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, -2
  store i8 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  store i32 0, ptr %33, align 8, !tbaa !63
  %34 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  store i32 %26, ptr %34, align 8, !tbaa !62
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %36 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 3
  store ptr %35, ptr %36, align 8, !tbaa !65
  %37 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 4
  store ptr %37, ptr %38, align 8, !tbaa !64
  br label %143

39:                                               ; preds = %15
  %40 = call fastcc zeroext i8 @latch_dominating_def(ptr noundef nonnull %0, ptr noundef nonnull %7), !range !80
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %44 = icmp eq ptr %43, null
  br i1 %44, label %143, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr nonnull %43)
  br label %143

47:                                               ; preds = %39
  %48 = load ptr, ptr %7, align 8, !tbaa !39
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, ptr %0, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  store i32 %53, ptr %54, align 4, !tbaa !61
  store ptr %0, ptr %1, align 8, !tbaa !58
  %55 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %56 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  store ptr %55, ptr %56, align 8, !tbaa !60
  %57 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %58 = load i8, ptr %57, align 8
  %59 = and i8 %58, -2
  store i8 %59, ptr %57, align 8
  %60 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  store i32 0, ptr %60, align 8, !tbaa !63
  %61 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  store i32 %53, ptr %61, align 8, !tbaa !62
  %62 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %63 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 3
  store ptr %62, ptr %63, align 8, !tbaa !65
  %64 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %65 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 4
  store ptr %64, ptr %65, align 8, !tbaa !64
  br label %143

66:                                               ; preds = %47
  %67 = load ptr, ptr @bivs, align 8, !tbaa !39
  %68 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !50
  %70 = tail call ptr @htab_find_with_hash(ptr noundef %67, ptr noundef nonnull %0, i32 noundef %69) #18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.biv_entry, ptr %70, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %73, i64 56, i1 false), !tbaa.struct !81
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 20, i64 1, ptr nonnull %74)
  br label %78

78:                                               ; preds = %76, %72
  %79 = load ptr, ptr %1, align 8, !tbaa !58
  %80 = icmp ne ptr %79, null
  br label %143

81:                                               ; preds = %66
  %82 = load i32, ptr %0, align 8
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  %85 = call fastcc zeroext i8 @get_biv_step_1(ptr noundef nonnull %48, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %84, ptr noundef nonnull %4), !range !80
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %81
  %88 = load i32, ptr %5, align 4, !tbaa !54
  %89 = icmp eq i32 %88, %84
  %90 = load i32, ptr %6, align 4, !tbaa !54
  %91 = icmp eq i32 %90, 0
  %92 = xor i1 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 799, ptr noundef nonnull @.str.9) #18
  br label %94

94:                                               ; preds = %93, %87
  br i1 %89, label %95, label %100

95:                                               ; preds = %94
  %96 = load ptr, ptr %4, align 8, !tbaa !39
  %97 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 800, ptr noundef nonnull @.str.9) #18
  br label %100

100:                                              ; preds = %94, %95, %99
  br i1 %86, label %101, label %102

101:                                              ; preds = %81, %100
  store ptr null, ptr %1, align 8, !tbaa !58
  br label %122

102:                                              ; preds = %100
  %103 = load ptr, ptr %4, align 8, !tbaa !39
  %104 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %84, ptr noundef nonnull %0, ptr noundef %103) #18
  store ptr %104, ptr %1, align 8, !tbaa !58
  %105 = load ptr, ptr %3, align 8, !tbaa !39
  %106 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %84, ptr noundef %105, ptr noundef %103) #18
  %107 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  store ptr %106, ptr %107, align 8, !tbaa !60
  %108 = load i32, ptr %5, align 4, !tbaa !54
  %109 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  store i32 %108, ptr %109, align 4, !tbaa !61
  %110 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  store i32 %84, ptr %110, align 8, !tbaa !62
  %111 = load i32, ptr %6, align 4, !tbaa !54
  %112 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  store i32 %111, ptr %112, align 8, !tbaa !63
  %113 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %114 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 4
  store ptr %113, ptr %114, align 8, !tbaa !64
  %115 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 3
  store ptr %103, ptr %115, align 8, !tbaa !65
  %116 = icmp ne i32 %108, %84
  %117 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %118 = zext i1 %116 to i8
  %119 = load i8, ptr %117, align 8
  %120 = and i8 %119, -2
  %121 = or disjoint i8 %120, %118
  store i8 %121, ptr %117, align 8
  br label %122

122:                                              ; preds = %102, %101
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 2, i64 1, ptr nonnull %123)
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !39
  tail call void @dump_iv_info(ptr noundef %127, ptr noundef %1)
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %129 = tail call i32 @fputc(i32 10, ptr %128)
  br label %130

130:                                              ; preds = %125, %122
  %131 = tail call ptr @xmalloc(i64 noundef 64) #18
  %132 = load ptr, ptr @bivs, align 8, !tbaa !39
  %133 = load i32, ptr %68, align 8, !tbaa !50
  %134 = tail call ptr @htab_find_slot_with_hash(ptr noundef %132, ptr noundef nonnull %0, i32 noundef %133, i32 noundef 1) #18
  %135 = load i32, ptr %68, align 8, !tbaa !50
  store i32 %135, ptr %131, align 8, !tbaa !74
  %136 = getelementptr inbounds %struct.biv_entry, ptr %131, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %136, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !81
  %137 = load ptr, ptr %134, align 8, !tbaa !39
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 841, ptr noundef nonnull @.str.9) #18
  br label %140

140:                                              ; preds = %130, %139
  store ptr %131, ptr %134, align 8, !tbaa !39
  %141 = load ptr, ptr %1, align 8, !tbaa !58
  %142 = icmp ne ptr %141, null
  br label %143

143:                                              ; preds = %42, %45, %19, %140, %78, %50, %24
  %144 = phi i1 [ %80, %78 ], [ %142, %140 ], [ true, %50 ], [ true, %24 ], [ false, %19 ], [ false, %45 ], [ false, %42 ]
  %145 = zext i1 %144 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i8 %145
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_iv_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !38 {
  %3 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1239, ptr noundef nonnull @.str.9) #18
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %12 = icmp eq ptr %10, %11
  %13 = icmp eq ptr %11, %1
  %14 = or i1 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !62
  %18 = load ptr, ptr %0, align 8, !tbaa !58
  %19 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %17, ptr noundef %10, ptr noundef %1) #18
  %20 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %17, ptr noundef %18, ptr noundef %19) #18
  br label %23

21:                                               ; preds = %8
  %22 = load ptr, ptr %0, align 8, !tbaa !58
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %20, %15 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !61
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %23
  %31 = tail call i32 @subreg_lowpart_offset(i32 noundef %28, i32 noundef %26) #18
  %32 = tail call ptr @simplify_gen_subreg(i32 noundef %28, ptr noundef %24, i32 noundef %26, i32 noundef %31) #18
  %33 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !63
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %25, align 8, !tbaa !62
  %38 = load i32, ptr %27, align 4, !tbaa !61
  %39 = tail call ptr @simplify_gen_unary(i32 noundef %34, i32 noundef %37, ptr noundef %32, i32 noundef %38) #18
  %40 = load i32, ptr %25, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !65
  %43 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %40, ptr noundef %44, ptr noundef %39) #18
  %46 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %40, ptr noundef %42, ptr noundef %45) #18
  br label %47

47:                                               ; preds = %30, %23, %36
  %48 = phi ptr [ %46, %36 ], [ %24, %23 ], [ %32, %30 ]
  ret ptr %48
}

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @iv_analysis_done() local_unnamed_addr #9 !prof !38 {
  %1 = load i1, ptr @clean_slate, align 1
  br i1 %1, label %2, label %5

2:                                                ; preds = %0
  tail call fastcc void @clear_iv_info()
  store i1 false, ptr @clean_slate, align 1
  tail call void @df_finish_pass(i8 noundef zeroext 1) #18
  %3 = load ptr, ptr @bivs, align 8, !tbaa !39
  tail call void @htab_delete(ptr noundef %3) #18
  %4 = load ptr, ptr @iv_ref_table, align 8, !tbaa !39
  tail call void @free(ptr noundef %4)
  store ptr null, ptr @iv_ref_table, align 8, !tbaa !39
  store i32 0, ptr @iv_ref_table_size, align 4, !tbaa !54
  store ptr null, ptr @bivs, align 8, !tbaa !39
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

declare void @df_finish_pass(i8 noundef zeroext) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @canon_condition(ptr noundef readonly %0) local_unnamed_addr #9 !prof !38 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %5, ptr noundef %7) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @swap_condition(i32 noundef %3) #18
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ %3, %1 ]
  %14 = phi ptr [ %5, %10 ], [ %7, %1 ]
  %15 = phi ptr [ %7, %10 ], [ %5, %1 ]
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, ptr %14, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %20, %12
  %25 = phi i32 [ %23, %20 ], [ %18, %12 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1650, ptr noundef nonnull @.str.9) #18
  br label %28

28:                                               ; preds = %24, %27
  %29 = load i32, ptr %14, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %32, label %82

32:                                               ; preds = %28
  %33 = zext nneg i32 %25 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !50
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %82, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %39 = load i8, ptr %38, align 1, !tbaa !50
  %40 = icmp ult i8 %39, 9
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !50
  %44 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %33
  %45 = load i64, ptr %44, align 8, !tbaa !95
  switch i32 %13, label %82 [
    i32 84, label %46
    i32 82, label %55
    i32 88, label %72
    i32 86, label %77
  ]

46:                                               ; preds = %41
  %47 = lshr i64 %45, 1
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %82, label %49

49:                                               ; preds = %46
  %50 = add nsw i64 %43, 1
  %51 = load i32, ptr %15, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = tail call ptr @gen_int_mode(i64 noundef %50, i32 noundef %53) #18
  br label %82

55:                                               ; preds = %41
  %56 = and i64 %45, %43
  %57 = load i32, ptr %15, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !50
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 3
  %65 = add nuw nsw i64 %64, 4294967295
  %66 = and i64 %65, 4294967295
  %67 = shl nuw i64 1, %66
  %68 = icmp eq i64 %56, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %55
  %70 = add nsw i64 %43, -1
  %71 = tail call ptr @gen_int_mode(i64 noundef %70, i32 noundef %25) #18
  br label %82

72:                                               ; preds = %41
  %73 = icmp ult i64 %43, %45
  br i1 %73, label %74, label %82

74:                                               ; preds = %72
  %75 = add i64 %43, 1
  %76 = tail call ptr @gen_int_mode(i64 noundef %75, i32 noundef %25) #18
  br label %82

77:                                               ; preds = %41
  %78 = icmp eq i64 %43, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = add i64 %43, -1
  %81 = tail call ptr @gen_int_mode(i64 noundef %80, i32 noundef %25) #18
  br label %82

82:                                               ; preds = %49, %46, %69, %55, %74, %72, %79, %77, %41, %37, %32, %28
  %83 = phi i32 [ %13, %37 ], [ %13, %32 ], [ %13, %28 ], [ %13, %41 ], [ 87, %79 ], [ 86, %77 ], [ 89, %74 ], [ 88, %72 ], [ 83, %69 ], [ 82, %55 ], [ 85, %49 ], [ 84, %46 ]
  %84 = phi ptr [ %14, %37 ], [ %14, %32 ], [ %14, %28 ], [ %14, %41 ], [ %81, %79 ], [ %14, %77 ], [ %76, %74 ], [ %14, %72 ], [ %71, %69 ], [ %14, %55 ], [ %54, %49 ], [ %14, %46 ]
  %85 = load ptr, ptr %4, align 8, !tbaa !50
  %86 = icmp eq ptr %15, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load ptr, ptr %6, align 8, !tbaa !50
  %89 = icmp eq ptr %84, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %83, %92
  %94 = and i32 %91, 16711680
  %95 = icmp eq i32 %94, 1048576
  %96 = and i1 %93, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %90, %87, %82
  %98 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %83, i32 noundef 16, ptr noundef nonnull %15, ptr noundef %84) #18
  br label %99

99:                                               ; preds = %90, %97
  %100 = phi ptr [ %98, %97 ], [ %0, %90 ]
  ret ptr %100
}

declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @simplify_using_condition(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !39
  %5 = load ptr, ptr %1, align 8, !tbaa !39
  %6 = icmp eq ptr %2, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = call i32 @for_each_rtx(ptr noundef nonnull %4, ptr noundef nonnull @altered_reg_used, ptr noundef nonnull %2) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %97

10:                                               ; preds = %7, %3
  %11 = load ptr, ptr %4, align 8, !tbaa !39
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 81
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !54
  %29 = icmp eq i32 %28, 9
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load ptr, ptr %1, align 8, !tbaa !39
  %32 = call ptr @simplify_replace_rtx(ptr noundef %31, ptr noundef nonnull %17, ptr noundef nonnull %23) #18
  br label %95

33:                                               ; preds = %21, %15, %10
  %34 = load i32, ptr %5, align 8
  %35 = and i32 %34, 65535
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !54
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %97

40:                                               ; preds = %33
  %41 = call ptr @reversed_condition(ptr noundef nonnull %11) #18
  %42 = call ptr @reversed_condition(ptr noundef nonnull %5) #18
  %43 = load ptr, ptr %4, align 8, !tbaa !39
  %44 = call ptr @canon_condition(ptr noundef %43)
  store ptr %44, ptr %4, align 8, !tbaa !39
  %45 = call ptr @canon_condition(ptr noundef nonnull %5)
  %46 = icmp eq ptr %41, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = call ptr @canon_condition(ptr noundef nonnull %41)
  br label %49

49:                                               ; preds = %47, %40
  %50 = phi ptr [ %48, %47 ], [ null, %40 ]
  %51 = icmp eq ptr %42, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call ptr @canon_condition(ptr noundef nonnull %42)
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ %53, %52 ], [ null, %49 ]
  %56 = load ptr, ptr %4, align 8, !tbaa !39
  %57 = call i32 @rtx_equal_p(ptr noundef %45, ptr noundef %56) #18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  br label %95

61:                                               ; preds = %54
  %62 = icmp ne ptr %50, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = call i32 @rtx_equal_p(ptr noundef %45, ptr noundef nonnull %50) #18
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  br label %95

68:                                               ; preds = %63, %61
  %69 = load ptr, ptr %4, align 8, !tbaa !39
  %70 = call fastcc zeroext i8 @implies_p(ptr noundef %69, ptr noundef %45)
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  br label %95

74:                                               ; preds = %68
  %75 = icmp ne ptr %55, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = load ptr, ptr %4, align 8, !tbaa !39
  %78 = call fastcc zeroext i8 @implies_p(ptr noundef %77, ptr noundef nonnull %55)
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  br label %95

82:                                               ; preds = %76, %74
  br i1 %62, label %83, label %88

83:                                               ; preds = %82
  %84 = call fastcc zeroext i8 @implies_p(ptr noundef %45, ptr noundef nonnull %50)
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  br label %95

88:                                               ; preds = %83, %82
  %89 = and i1 %62, %75
  br i1 %89, label %90, label %97

90:                                               ; preds = %88
  %91 = call fastcc zeroext i8 @implies_p(ptr noundef nonnull %55, ptr noundef nonnull %50)
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  br label %95

95:                                               ; preds = %30, %59, %66, %72, %80, %86, %93
  %96 = phi ptr [ %94, %93 ], [ %87, %86 ], [ %81, %80 ], [ %73, %72 ], [ %67, %66 ], [ %60, %59 ], [ %32, %30 ]
  store ptr %96, ptr %1, align 8, !tbaa !39
  br label %97

97:                                               ; preds = %95, %88, %90, %33, %7
  ret void
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @altered_reg_used(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !38 {
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %9) #18
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  ret i32 %12
}

declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @reversed_condition(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @implies_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 81
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = load i32, ptr %8, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = tail call ptr @simplify_replace_rtx(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %10) #18
  %16 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %273, label %18

18:                                               ; preds = %14, %6
  %19 = load i32, ptr %10, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = tail call ptr @simplify_replace_rtx(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %8) #18
  %24 = load ptr, ptr @const_true_rtx, align 8
  %25 = icmp eq ptr %23, %24
  %26 = icmp eq ptr %24, %1
  %27 = or i1 %25, %26
  br i1 %27, label %273, label %31

28:                                               ; preds = %18, %2
  %29 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %273, label %31

31:                                               ; preds = %22, %28
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !54
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %38, label %273

38:                                               ; preds = %31
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !54
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %45, label %273

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !50
  %52 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = load i32, ptr %47, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = load i32, ptr %51, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %45
  %62 = icmp eq i32 %56, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %61
  %64 = load i32, ptr %49, align 8
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = load i32, ptr %53, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %66, %69
  %71 = select i1 %70, i32 %66, i32 0
  br label %72

72:                                               ; preds = %45, %61, %63
  %73 = phi i32 [ %71, %63 ], [ %56, %61 ], [ 0, %45 ]
  %74 = trunc i32 %32 to i16
  switch i16 %74, label %97 [
    i16 83, label %75
    i16 85, label %75
  ]

75:                                               ; preds = %72, %72
  %76 = trunc i32 %39 to i16
  switch i16 %76, label %97 [
    i16 82, label %77
    i16 84, label %77
  ]

77:                                               ; preds = %75, %75
  %78 = icmp eq i32 %33, 83
  %79 = select i1 %78, ptr %49, ptr %47
  %80 = icmp eq i32 %40, 82
  %81 = select i1 %80, ptr %53, ptr %51
  %82 = zext nneg i32 %73 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !50
  %85 = and i8 %84, -2
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %87, label %96

87:                                               ; preds = %77
  %88 = select i1 %80, ptr %51, ptr %53
  %89 = select i1 %78, ptr %47, ptr %49
  %90 = tail call i32 @rtx_equal_p(ptr noundef %89, ptr noundef %88) #18
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %73, ptr noundef %81, ptr noundef %79) #18
  %94 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %273, label %96

96:                                               ; preds = %77, %92, %87
  br label %273

97:                                               ; preds = %75, %72
  %98 = icmp eq i32 %40, 80
  br i1 %98, label %99, label %106

99:                                               ; preds = %97
  switch i16 %74, label %106 [
    i16 83, label %100
    i16 87, label %100
    i16 85, label %100
    i16 89, label %100
  ]

100:                                              ; preds = %99, %99, %99, %99
  %101 = tail call i32 @rtx_equal_p(ptr noundef nonnull %47, ptr noundef nonnull %51) #18
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef %53) #18
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %273

106:                                              ; preds = %103, %99, %100, %97
  %107 = load i32, ptr %0, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 80
  br i1 %109, label %110, label %239

110:                                              ; preds = %106
  %111 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %112 = icmp eq ptr %49, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i32, ptr %1, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 87
  %117 = icmp eq ptr %53, %111
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = icmp eq i32 %115, 86
  %121 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %122 = icmp eq ptr %53, %121
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %127

124:                                              ; preds = %119, %113
  %125 = tail call i32 @rtx_equal_p(ptr noundef nonnull %47, ptr noundef nonnull %51) #18
  %126 = trunc i32 %125 to i8
  br label %273

127:                                              ; preds = %119, %110
  br i1 %109, label %128, label %239

128:                                              ; preds = %127
  %129 = load i32, ptr %49, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 30
  br i1 %131, label %132, label %164

132:                                              ; preds = %128
  %133 = load i32, ptr %1, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 89
  %136 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %137 = icmp eq ptr %53, %136
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %164

139:                                              ; preds = %132
  %140 = load i32, ptr %51, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 49
  br i1 %142, label %143, label %164

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %145 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !50
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 30
  br i1 %149, label %150, label %164

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !50
  %153 = icmp eq i64 %152, 9223372036854775807
  br i1 %153, label %164, label %154

154:                                              ; preds = %150
  %155 = add nsw i64 %152, 1
  %156 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !50
  %158 = sub nsw i64 0, %157
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load ptr, ptr %144, align 8, !tbaa !50
  %162 = tail call i32 @rtx_equal_p(ptr noundef nonnull %47, ptr noundef %161) #18
  %163 = trunc i32 %162 to i8
  br label %273

164:                                              ; preds = %154, %150, %143, %139, %132, %128
  br i1 %109, label %165, label %239

165:                                              ; preds = %164
  %166 = load i32, ptr %49, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 30
  br i1 %168, label %169, label %239

169:                                              ; preds = %165
  %170 = load i32, ptr %1, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 87
  br i1 %172, label %173, label %204

173:                                              ; preds = %169
  %174 = load i32, ptr %51, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 49
  %177 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %178 = icmp eq ptr %53, %177
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %180, label %204

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %182 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !50
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 30
  br i1 %186, label %187, label %204

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %189 = load i64, ptr %188, align 8, !tbaa !50
  %190 = icmp eq i64 %189, -9223372036854775808
  br i1 %190, label %204, label %191

191:                                              ; preds = %187
  %192 = load ptr, ptr %181, align 8, !tbaa !50
  %193 = tail call i32 @rtx_equal_p(ptr noundef %192, ptr noundef nonnull %47) #18
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !50
  %198 = load ptr, ptr %182, align 8, !tbaa !50
  %199 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !50
  %201 = sub nsw i64 0, %200
  %202 = icmp eq i64 %197, %201
  %203 = zext i1 %202 to i8
  br label %273

204:                                              ; preds = %191, %187, %180, %173, %169
  %205 = load i32, ptr %1, align 8
  %206 = and i32 %205, 65535
  %207 = icmp eq i32 %206, 86
  br i1 %207, label %208, label %239

208:                                              ; preds = %204
  %209 = load i32, ptr %51, align 8
  %210 = and i32 %209, 65535
  %211 = icmp eq i32 %210, 49
  %212 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %213 = icmp eq ptr %53, %212
  %214 = select i1 %211, i1 %213, i1 false
  br i1 %214, label %215, label %239

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %217 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !50
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 30
  br i1 %221, label %222, label %239

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !50
  %225 = icmp eq i64 %224, -9223372036854775808
  br i1 %225, label %239, label %226

226:                                              ; preds = %222
  %227 = load ptr, ptr %216, align 8, !tbaa !50
  %228 = tail call i32 @rtx_equal_p(ptr noundef %227, ptr noundef nonnull %47) #18
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %232 = load i64, ptr %231, align 8, !tbaa !50
  %233 = load ptr, ptr %217, align 8, !tbaa !50
  %234 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1
  %235 = load i64, ptr %234, align 8, !tbaa !50
  %236 = sub nsw i64 0, %235
  %237 = icmp eq i64 %232, %236
  %238 = zext i1 %237 to i8
  br label %273

239:                                              ; preds = %106, %127, %204, %208, %215, %222, %226, %165, %164
  %240 = load i32, ptr %0, align 8
  %241 = and i32 %240, 65535
  %242 = and i32 %240, 65534
  %243 = icmp eq i32 %242, 82
  br i1 %243, label %244, label %273

244:                                              ; preds = %239
  %245 = load i32, ptr %49, align 8
  %246 = and i32 %245, 65535
  %247 = icmp eq i32 %246, 30
  br i1 %247, label %248, label %273

248:                                              ; preds = %244
  %249 = icmp eq i32 %241, 83
  %250 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %251 = icmp eq ptr %49, %250
  %252 = select i1 %249, i1 %251, i1 false
  br i1 %252, label %257, label %253

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %255 = load i64, ptr %254, align 8, !tbaa !50
  %256 = icmp sgt i64 %255, -1
  br i1 %256, label %257, label %273

257:                                              ; preds = %248, %253
  %258 = load i32, ptr %1, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 89
  br i1 %260, label %261, label %273

261:                                              ; preds = %257
  %262 = load i32, ptr %53, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 30
  br i1 %264, label %265, label %273

265:                                              ; preds = %261
  %266 = tail call i32 @rtx_equal_p(ptr noundef nonnull %47, ptr noundef nonnull %51) #18
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %270 = load i64, ptr %269, align 8, !tbaa !50
  %271 = lshr i64 %270, 63
  %272 = trunc i64 %271 to i8
  br label %273

273:                                              ; preds = %253, %92, %28, %14, %239, %38, %31, %244, %257, %261, %265, %103, %22, %268, %230, %195, %160, %124, %96
  %274 = phi i8 [ 0, %96 ], [ %126, %124 ], [ %163, %160 ], [ %203, %195 ], [ %238, %230 ], [ %272, %268 ], [ 1, %22 ], [ 0, %38 ], [ 0, %31 ], [ 1, %103 ], [ 0, %239 ], [ 0, %265 ], [ 0, %261 ], [ 0, %257 ], [ 0, %244 ], [ 1, %14 ], [ 1, %28 ], [ 1, %92 ], [ 0, %253 ]
  ret i8 %274
}

; Function Attrs: cold nounwind uwtable
define dso_local void @find_simple_exit(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !38 {
  %3 = alloca %struct.rtx_iv, align 8
  %4 = alloca %struct.rtx_iv, align 8
  %5 = alloca %struct.rtx_iv, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.niter_desc, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #18
  %10 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 2
  store i8 0, ptr %10, align 8, !tbaa !96
  %11 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !67
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %816, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 2
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 1
  %19 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 6
  %20 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 3
  %21 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 11
  %22 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 5
  %23 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 3
  %24 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 4
  %26 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 4
  %27 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 8
  %28 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 8
  br label %29

29:                                               ; preds = %15, %811
  %30 = phi i64 [ 0, %15 ], [ %812, %811 ]
  %31 = phi i8 [ 0, %15 ], [ %37, %811 ]
  %32 = getelementptr inbounds ptr, ptr %11, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 1
  br label %35

35:                                               ; preds = %809, %29
  %36 = phi i32 [ 0, %29 ], [ %810, %809 ]
  %37 = phi i8 [ %31, %29 ], [ %800, %809 ]
  %38 = load ptr, ptr %34, align 8, !tbaa !39
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %38, align 8, !tbaa !98
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %41, %40 ], [ 0, %35 ]
  %44 = icmp eq i32 %43, %36
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = zext i32 %36 to i64
  %47 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  br label %49

49:                                               ; preds = %42, %45
  %50 = phi ptr [ %48, %45 ], [ null, %42 ]
  br i1 %44, label %811, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !100
  %54 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %53) #18
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %799

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %57 = load ptr, ptr %50, align 8, !tbaa !102
  store i8 0, ptr %16, align 8, !tbaa !96
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !103
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %777

61:                                               ; preds = %56
  %62 = load ptr, ptr %17, align 8, !tbaa !86
  %63 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %62, ptr noundef %57) #18
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %777, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct.rtl_bb_info, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !104
  %70 = call i32 @any_condjump_p(ptr noundef %69) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %777, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !106
  %75 = getelementptr inbounds %struct.VEC_edge_base, ptr %74, i64 0, i32 2, i64 0
  %76 = load ptr, ptr %75, align 8, !tbaa !39
  %77 = icmp eq ptr %76, %50
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.VEC_edge_base, ptr %74, i64 0, i32 2, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !39
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi ptr [ %80, %78 ], [ %76, %72 ]
  store ptr %50, ptr %9, align 8, !tbaa !107
  store ptr %82, ptr %18, align 8, !tbaa !108
  %83 = load ptr, ptr %82, align 8, !tbaa !102
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !50
  %86 = getelementptr inbounds %struct.rtl_bb_info, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !104
  %88 = call ptr @get_condition(ptr noundef %87, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0) #18
  %89 = icmp eq ptr %88, null
  br i1 %89, label %777, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.edge_def, ptr %82, i64 0, i32 7
  %92 = load i32, ptr %91, align 8, !tbaa !109
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = call ptr @reversed_condition(ptr noundef nonnull %88) #18
  %97 = icmp eq ptr %96, null
  br i1 %97, label %777, label %98

98:                                               ; preds = %95, %90
  %99 = phi ptr [ %96, %95 ], [ %88, %90 ]
  %100 = load ptr, ptr %8, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  store i8 1, ptr %16, align 8, !tbaa !96
  store i8 0, ptr %20, align 1, !tbaa !110
  store ptr null, ptr %21, align 8, !tbaa !111
  store i64 0, ptr %22, align 8, !tbaa !112
  %101 = load i32, ptr %99, align 8
  %102 = and i32 %101, 65535
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !54
  %106 = icmp ult i32 %105, 2
  br i1 %106, label %108, label %107

107:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2284, ptr noundef nonnull @.str.9) #18
  br label %108

108:                                              ; preds = %107, %98
  %109 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !50
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !50
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  br label %121

121:                                              ; preds = %115, %108
  %122 = phi i32 [ %120, %115 ], [ %113, %108 ]
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2290, ptr noundef nonnull @.str.9) #18
  br label %125

125:                                              ; preds = %124, %121
  %126 = zext nneg i32 %122 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !50
  %129 = and i8 %128, -2
  %130 = icmp eq i8 %129, 2
  br i1 %130, label %131, label %775

131:                                              ; preds = %125
  %132 = load ptr, ptr %109, align 8, !tbaa !50
  %133 = call zeroext i8 @iv_analyze(ptr noundef %100, ptr noundef %132, ptr noundef nonnull %3), !range !80
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %775, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 5
  %137 = load i32, ptr %136, align 8, !tbaa !62
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 6
  store i32 %122, ptr %136, align 8, !tbaa !62
  store i32 %122, ptr %140, align 4, !tbaa !61
  br label %141

141:                                              ; preds = %139, %135
  %142 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !50
  %144 = call zeroext i8 @iv_analyze(ptr noundef %100, ptr noundef %143, ptr noundef nonnull %4), !range !80
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %775, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 5
  %148 = load i32, ptr %147, align 8, !tbaa !62
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 6
  store i32 %122, ptr %147, align 8, !tbaa !62
  store i32 %122, ptr %151, align 4, !tbaa !61
  br label %152

152:                                              ; preds = %150, %146
  %153 = load i32, ptr %136, align 8, !tbaa !62
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !50
  %157 = icmp ugt i8 %156, 8
  br i1 %157, label %775, label %158

158:                                              ; preds = %152
  %159 = load i32, ptr %147, align 8, !tbaa !62
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !50
  %163 = icmp ugt i8 %162, 8
  br i1 %163, label %775, label %164

164:                                              ; preds = %158
  %165 = trunc i32 %101 to i16
  switch i16 %165, label %775 [
    i16 82, label %166
    i16 83, label %166
    i16 86, label %166
    i16 87, label %166
    i16 80, label %168
    i16 84, label %168
    i16 88, label %168
    i16 85, label %168
    i16 89, label %168
  ]

166:                                              ; preds = %164, %164, %164, %164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !81
  %167 = call i32 @swap_condition(i32 noundef %102) #18
  br label %168

168:                                              ; preds = %164, %164, %164, %164, %166, %164
  %169 = phi i32 [ %102, %164 ], [ %167, %166 ], [ %102, %164 ], [ %102, %164 ], [ %102, %164 ], [ %102, %164 ]
  %170 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 7
  %171 = load i8, ptr %170, align 8
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %775

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 4
  %176 = load ptr, ptr %175, align 8, !tbaa !64
  %177 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %179, label %775

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !65
  %182 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %184, label %775

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 7
  %186 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 4
  %187 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 3
  %188 = load i8, ptr %185, align 8
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  %191 = load ptr, ptr %186, align 8
  %192 = icmp eq ptr %191, %177
  %193 = select i1 %190, i1 %192, i1 false
  %194 = load ptr, ptr %187, align 8
  %195 = icmp eq ptr %194, %182
  %196 = select i1 %193, i1 %195, i1 false
  br i1 %196, label %197, label %775

197:                                              ; preds = %184
  switch i32 %169, label %233 [
    i32 84, label %198
    i32 85, label %198
    i32 88, label %206
    i32 89, label %206
    i32 80, label %214
  ]

198:                                              ; preds = %197, %197
  %199 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 2
  %200 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 2
  %201 = load i32, ptr %199, align 8, !tbaa !63
  %202 = icmp eq i32 %201, 99
  %203 = load i32, ptr %200, align 8
  %204 = icmp eq i32 %203, 99
  %205 = select i1 %202, i1 true, i1 %204
  br i1 %205, label %775, label %234

206:                                              ; preds = %197, %197
  %207 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 2
  %208 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 2
  %209 = load i32, ptr %207, align 8, !tbaa !63
  %210 = icmp eq i32 %209, 98
  %211 = load i32, ptr %208, align 8
  %212 = icmp eq i32 %211, 98
  %213 = select i1 %210, i1 true, i1 %212
  br i1 %213, label %775, label %234

214:                                              ; preds = %197
  %215 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 2
  %216 = load i32, ptr %215, align 8, !tbaa !63
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 2
  %220 = load i32, ptr %219, align 8, !tbaa !63
  %221 = icmp eq i32 %220, 0
  %222 = icmp eq i32 %216, %220
  %223 = or i1 %221, %222
  br i1 %223, label %224, label %775

224:                                              ; preds = %218, %214
  %225 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 2
  %226 = icmp eq i32 %216, 98
  %227 = zext i1 %226 to i8
  %228 = load i32, ptr %225, align 8, !tbaa !63
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %224
  %231 = icmp eq i32 %228, 98
  %232 = zext i1 %231 to i8
  br label %234

233:                                              ; preds = %197
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2129, ptr noundef nonnull @.str.9) #18
  br label %234

234:                                              ; preds = %224, %206, %233, %230, %198
  %235 = phi i8 [ undef, %233 ], [ %232, %230 ], [ 1, %198 ], [ 0, %206 ], [ %227, %224 ]
  %236 = load i32, ptr %136, align 8, !tbaa !62
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !50
  %240 = load i32, ptr %147, align 8, !tbaa !62
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !50
  %244 = icmp ult i8 %239, %243
  %245 = select i1 %244, i32 %240, i32 %236
  %246 = icmp eq i32 %236, %245
  br i1 %246, label %261, label %247

247:                                              ; preds = %234
  %248 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 6
  %249 = load i32, ptr %248, align 4, !tbaa !61
  %250 = icmp eq i32 %249, %236
  br i1 %250, label %251, label %775

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !60
  %254 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %255 = icmp eq ptr %253, %254
  br i1 %255, label %256, label %775

256:                                              ; preds = %251
  %257 = icmp eq i8 %235, 0
  %258 = select i1 %257, i32 99, i32 98
  %259 = load ptr, ptr %3, align 8, !tbaa !58
  %260 = call ptr @simplify_gen_unary(i32 noundef %258, i32 noundef %245, ptr noundef %259, i32 noundef %249) #18
  store ptr %260, ptr %3, align 8, !tbaa !58
  store i32 %245, ptr %136, align 8, !tbaa !62
  br label %261

261:                                              ; preds = %256, %234
  %262 = icmp eq i32 %240, %245
  br i1 %262, label %277, label %263

263:                                              ; preds = %261
  %264 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 6
  %265 = load i32, ptr %264, align 4, !tbaa !61
  %266 = icmp eq i32 %265, %240
  br i1 %266, label %267, label %775

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !60
  %270 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %271 = icmp eq ptr %269, %270
  br i1 %271, label %272, label %775

272:                                              ; preds = %267
  %273 = icmp eq i8 %235, 0
  %274 = select i1 %273, i32 99, i32 98
  %275 = load ptr, ptr %4, align 8, !tbaa !58
  %276 = call ptr @simplify_gen_unary(i32 noundef %274, i32 noundef %245, ptr noundef %275, i32 noundef %265) #18
  store ptr %276, ptr %4, align 8, !tbaa !58
  store i32 %245, ptr %147, align 8, !tbaa !62
  br label %277

277:                                              ; preds = %272, %261
  %278 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 6
  %279 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 6
  %280 = load i32, ptr %278, align 4, !tbaa !61
  %281 = load i32, ptr %136, align 8, !tbaa !62
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !60
  %286 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %287 = icmp eq ptr %285, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 6
  %290 = load i32, ptr %289, align 4, !tbaa !61
  %291 = icmp eq i32 %280, %290
  br i1 %291, label %293, label %292

292:                                              ; preds = %288
  call fastcc void @shorten_into_mode(ptr noundef nonnull %3, i32 noundef %290, i32 noundef %169, i8 noundef zeroext %235, ptr noundef nonnull %9)
  br label %293

293:                                              ; preds = %292, %288, %283, %277
  %294 = load i32, ptr %279, align 4, !tbaa !61
  %295 = load i32, ptr %147, align 8, !tbaa !62
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !60
  %300 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %301 = icmp eq ptr %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load i32, ptr %278, align 4, !tbaa !61
  %304 = icmp eq i32 %303, %294
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = call i32 @swap_condition(i32 noundef %169) #18
  call fastcc void @shorten_into_mode(ptr noundef nonnull %4, i32 noundef %303, i32 noundef %306, i8 noundef zeroext %235, ptr noundef nonnull %9)
  br label %307

307:                                              ; preds = %305, %302, %297, %293
  %308 = load i32, ptr %278, align 4, !tbaa !61
  %309 = load i32, ptr %279, align 4, !tbaa !61
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %775

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 10
  %313 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 9
  %314 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 1
  store i32 %308, ptr %312, align 4, !tbaa !113
  store i8 %235, ptr %313, align 8, !tbaa !114
  %315 = load i32, ptr %136, align 8, !tbaa !62
  %316 = zext i32 %308 to i64
  %317 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !50
  %319 = zext i8 %318 to i64
  %320 = shl nuw nsw i64 %319, 3
  %321 = icmp eq i32 %169, 85
  %322 = and i32 %169, -2
  %323 = icmp eq i32 %322, 84
  %324 = zext i1 %323 to i32
  call void @get_mode_bounds(i32 noundef %308, i32 noundef %324, i32 noundef %315, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %325 = load ptr, ptr %6, align 8, !tbaa !39
  %326 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %327 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %325, i32 noundef %315, i32 noundef %326) #18
  %328 = load ptr, ptr %7, align 8, !tbaa !39
  %329 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %330 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %328, i32 noundef %315, i32 noundef %329) #18
  %331 = load ptr, ptr %314, align 8, !tbaa !60
  %332 = load i32, ptr %331, align 8
  %333 = and i32 %332, 65535
  %334 = icmp eq i32 %333, 30
  br i1 %334, label %335, label %775

335:                                              ; preds = %311
  %336 = getelementptr inbounds %struct.rtx_iv, ptr %4, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !60
  %338 = load i32, ptr %337, align 8
  %339 = and i32 %338, 65535
  %340 = icmp eq i32 %339, 30
  br i1 %340, label %341, label %775

341:                                              ; preds = %335
  %342 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %343 = icmp eq ptr %331, %342
  %344 = icmp eq ptr %337, %342
  %345 = or i1 %343, %344
  br i1 %345, label %351, label %346

346:                                              ; preds = %341
  %347 = icmp eq i32 %169, 80
  br i1 %347, label %348, label %775

348:                                              ; preds = %346
  %349 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %315, ptr noundef nonnull %331, ptr noundef nonnull %337) #18
  store ptr %349, ptr %314, align 8, !tbaa !60
  %350 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %350, ptr %336, align 8, !tbaa !60
  br label %351

351:                                              ; preds = %348, %341
  %352 = load ptr, ptr %314, align 8, !tbaa !60
  %353 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %354 = icmp eq ptr %352, %353
  %355 = load ptr, ptr %336, align 8
  %356 = icmp eq ptr %355, %353
  %357 = select i1 %354, i1 %356, i1 false
  br i1 %357, label %775, label %358

358:                                              ; preds = %351
  %359 = icmp eq i32 %169, 80
  br i1 %359, label %375, label %360

360:                                              ; preds = %358
  br i1 %354, label %361, label %365

361:                                              ; preds = %360
  %362 = getelementptr inbounds %struct.rtx_def, ptr %355, i64 0, i32 1
  %363 = load i64, ptr %362, align 8, !tbaa !50
  %364 = sub nsw i64 0, %363
  br label %368

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 0, i32 1
  %367 = load i64, ptr %366, align 8, !tbaa !50
  br label %368

368:                                              ; preds = %365, %361
  %369 = phi i64 [ %364, %361 ], [ %367, %365 ]
  %370 = icmp slt i64 %369, 0
  br i1 %370, label %775, label %371

371:                                              ; preds = %368
  %372 = call i64 @llvm.ctpop.i64(i64 %369), !range !115
  %373 = icmp ult i64 %372, 2
  %374 = zext i1 %373 to i8
  br label %375

375:                                              ; preds = %371, %358
  %376 = phi i8 [ %374, %371 ], [ 0, %358 ]
  switch i32 %169, label %408 [
    i32 85, label %377
    i32 89, label %377
  ]

377:                                              ; preds = %375, %375
  br i1 %354, label %378, label %388

378:                                              ; preds = %377
  %379 = load ptr, ptr %3, align 8, !tbaa !58
  %380 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %381 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %379, i32 noundef %315, i32 noundef %380) #18
  %382 = call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef 16, i32 noundef %308, ptr noundef %381, ptr noundef %330) #18
  %383 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %384 = icmp eq ptr %382, %383
  br i1 %384, label %761, label %385

385:                                              ; preds = %378
  %386 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !39
  %387 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %315, ptr noundef %379, ptr noundef %386) #18
  store ptr %387, ptr %3, align 8, !tbaa !58
  br label %398

388:                                              ; preds = %377
  %389 = load ptr, ptr %4, align 8, !tbaa !58
  %390 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %391 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %389, i32 noundef %315, i32 noundef %390) #18
  %392 = call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef 16, i32 noundef %308, ptr noundef %391, ptr noundef %327) #18
  %393 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %394 = icmp eq ptr %392, %393
  br i1 %394, label %761, label %395

395:                                              ; preds = %388
  %396 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !39
  %397 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %315, ptr noundef %389, ptr noundef %396) #18
  store ptr %397, ptr %4, align 8, !tbaa !58
  br label %398

398:                                              ; preds = %395, %385
  %399 = phi ptr [ %382, %385 ], [ %392, %395 ]
  %400 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %401 = icmp eq ptr %399, %400
  br i1 %401, label %406, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 7
  %404 = load ptr, ptr %403, align 8, !tbaa !116
  %405 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %399, ptr noundef %404) #18
  store ptr %405, ptr %403, align 8, !tbaa !116
  br label %406

406:                                              ; preds = %402, %398
  %407 = select i1 %321, i32 84, i32 88
  br label %408

408:                                              ; preds = %406, %375
  %409 = phi i32 [ %169, %375 ], [ %407, %406 ]
  %410 = phi i1 [ true, %375 ], [ false, %406 ]
  %411 = icmp eq i32 %409, 80
  br i1 %411, label %545, label %412

412:                                              ; preds = %408
  %413 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %414 = icmp eq ptr %352, %413
  br i1 %414, label %415, label %421

415:                                              ; preds = %412
  %416 = load ptr, ptr %3, align 8, !tbaa !58
  %417 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %418 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %416, i32 noundef %315, i32 noundef %417) #18
  %419 = call i32 @rtx_equal_p(ptr noundef %418, ptr noundef %327) #18
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %427, label %757

421:                                              ; preds = %412
  %422 = load ptr, ptr %4, align 8, !tbaa !58
  %423 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %424 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %422, i32 noundef %315, i32 noundef %423) #18
  %425 = call i32 @rtx_equal_p(ptr noundef %424, ptr noundef %330) #18
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %757

427:                                              ; preds = %421, %415
  %428 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %429 = icmp eq ptr %352, %428
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  %431 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %315, ptr noundef %355, i32 noundef %315) #18
  br label %432

432:                                              ; preds = %430, %427
  %433 = phi ptr [ %431, %430 ], [ %352, %427 ]
  %434 = load ptr, ptr %4, align 8, !tbaa !58
  %435 = load ptr, ptr %3, align 8
  %436 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %315, ptr noundef %434, ptr noundef %435) #18
  %437 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %438 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %436, i32 noundef %315, i32 noundef %437) #18
  %439 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %308, ptr noundef %438, ptr noundef %433) #18
  %440 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %441 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %442 = load i32, ptr %439, align 8
  %443 = and i32 %442, 65535
  %444 = icmp eq i32 %443, 30
  br i1 %444, label %445, label %477

445:                                              ; preds = %432
  br i1 %410, label %453, label %446

446:                                              ; preds = %445
  %447 = getelementptr inbounds %struct.rtx_def, ptr %439, i64 0, i32 1
  %448 = load i64, ptr %447, align 8, !tbaa !50
  %449 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1
  %450 = load i64, ptr %449, align 8, !tbaa !50
  %451 = add nsw i64 %450, -1
  %452 = icmp eq i64 %448, %451
  br i1 %452, label %477, label %453

453:                                              ; preds = %446, %445
  %454 = icmp eq ptr %352, %440
  br i1 %454, label %455, label %466

455:                                              ; preds = %453
  %456 = load ptr, ptr %6, align 8, !tbaa !39
  %457 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %315, ptr noundef %456, ptr noundef %433) #18
  %458 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %315, ptr noundef %457, ptr noundef nonnull %439) #18
  %459 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %460 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %458, i32 noundef %315, i32 noundef %459) #18
  %461 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %462 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %435, i32 noundef %315, i32 noundef %461) #18
  %463 = call ptr @simplify_gen_relational(i32 noundef %409, i32 noundef 16, i32 noundef %308, ptr noundef %460, ptr noundef %462) #18
  %464 = call i32 @reverse_condition(i32 noundef %409) #18
  %465 = call ptr @simplify_gen_relational(i32 noundef %464, i32 noundef 16, i32 noundef %308, ptr noundef %460, ptr noundef %462) #18
  br label %477

466:                                              ; preds = %453
  %467 = load ptr, ptr %7, align 8, !tbaa !39
  %468 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %315, ptr noundef %467, ptr noundef %433) #18
  %469 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %315, ptr noundef %468, ptr noundef nonnull %439) #18
  %470 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %471 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %469, i32 noundef %315, i32 noundef %470) #18
  %472 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %473 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %434, i32 noundef %315, i32 noundef %472) #18
  %474 = call ptr @simplify_gen_relational(i32 noundef %409, i32 noundef 16, i32 noundef %308, ptr noundef %473, ptr noundef %471) #18
  %475 = call i32 @reverse_condition(i32 noundef %409) #18
  %476 = call ptr @simplify_gen_relational(i32 noundef %475, i32 noundef 16, i32 noundef %308, ptr noundef %473, ptr noundef %471) #18
  br label %477

477:                                              ; preds = %466, %455, %446, %432
  %478 = phi ptr [ %465, %455 ], [ %476, %466 ], [ %441, %432 ], [ %441, %446 ]
  %479 = phi ptr [ %463, %455 ], [ %474, %466 ], [ %440, %432 ], [ %441, %446 ]
  %480 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %481 = icmp eq ptr %479, %480
  br i1 %481, label %545, label %482

482:                                              ; preds = %477
  %483 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %484 = icmp eq ptr %479, %483
  br i1 %484, label %492, label %485

485:                                              ; preds = %482
  %486 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 8
  %487 = icmp eq i8 %376, 0
  %488 = select i1 %487, ptr %19, ptr %486
  %489 = select i1 %487, ptr %479, ptr %478
  %490 = load ptr, ptr %488, align 8, !tbaa !39
  %491 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %489, ptr noundef %490) #18
  store ptr %491, ptr %488, align 8, !tbaa !39
  br label %492

492:                                              ; preds = %485, %482
  %493 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 0, i32 1
  %494 = load i64, ptr %493, align 8, !tbaa !50
  %495 = getelementptr inbounds %struct.rtx_def, ptr %355, i64 0, i32 1
  %496 = load i64, ptr %495, align 8, !tbaa !50
  %497 = sub nsw i64 %494, %496
  %498 = load i32, ptr %434, align 8
  %499 = and i32 %498, 65535
  %500 = icmp eq i32 %499, 30
  br i1 %500, label %501, label %504

501:                                              ; preds = %492
  %502 = getelementptr inbounds %struct.rtx_def, ptr %434, i64 0, i32 1
  %503 = load i64, ptr %502, align 8, !tbaa !50
  br label %508

504:                                              ; preds = %492
  %505 = getelementptr inbounds %struct.rtx_def, ptr %330, i64 0, i32 1
  %506 = load i64, ptr %505, align 8, !tbaa !50
  %507 = sub nsw i64 %506, %497
  br label %508

508:                                              ; preds = %504, %501
  %509 = phi i64 [ %503, %501 ], [ %507, %504 ]
  %510 = load i32, ptr %435, align 8
  %511 = and i32 %510, 65535
  %512 = icmp eq i32 %511, 30
  %513 = select i1 %512, ptr %435, ptr %327
  %514 = getelementptr inbounds %struct.rtx_def, ptr %513, i64 0, i32 1
  %515 = load i64, ptr %514, align 8, !tbaa !50
  %516 = sub nsw i64 %509, %515
  %517 = sdiv i64 %516, %497
  %518 = add nsw i64 %517, 1
  store i64 %518, ptr %22, align 8, !tbaa !112
  %519 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %520 = icmp eq ptr %352, %519
  br i1 %520, label %521, label %524

521:                                              ; preds = %508
  %522 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %315, ptr noundef nonnull %435, ptr noundef nonnull %439) #18
  store ptr %522, ptr %3, align 8, !tbaa !58
  %523 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %315, ptr noundef %522, ptr noundef %433) #18
  store ptr %523, ptr %3, align 8, !tbaa !58
  br label %527

524:                                              ; preds = %508
  %525 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %315, ptr noundef nonnull %434, ptr noundef nonnull %439) #18
  store ptr %525, ptr %4, align 8, !tbaa !58
  %526 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %315, ptr noundef %525, ptr noundef %433) #18
  store ptr %526, ptr %4, align 8, !tbaa !58
  br label %527

527:                                              ; preds = %524, %521
  %528 = load ptr, ptr %3, align 8, !tbaa !58
  %529 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %530 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %528, i32 noundef %315, i32 noundef %529) #18
  %531 = load ptr, ptr %4, align 8, !tbaa !58
  %532 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %533 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %531, i32 noundef %315, i32 noundef %532) #18
  %534 = call i32 @reverse_condition(i32 noundef %409) #18
  %535 = call ptr @simplify_gen_relational(i32 noundef %534, i32 noundef 16, i32 noundef %308, ptr noundef %530, ptr noundef %533) #18
  %536 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %537 = icmp eq ptr %535, %536
  br i1 %537, label %761, label %538

538:                                              ; preds = %527
  %539 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %540 = icmp eq ptr %535, %539
  br i1 %540, label %545, label %541

541:                                              ; preds = %538
  %542 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 7
  %543 = load ptr, ptr %542, align 8, !tbaa !116
  %544 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %535, ptr noundef %543) #18
  store ptr %544, ptr %542, align 8, !tbaa !116
  br label %545

545:                                              ; preds = %541, %538, %477, %408
  %546 = phi i32 [ %409, %477 ], [ 80, %538 ], [ 80, %541 ], [ 80, %408 ]
  %547 = icmp eq i32 %546, 80
  br i1 %547, label %548, label %619

548:                                              ; preds = %545
  %549 = load ptr, ptr %4, align 8, !tbaa !58
  %550 = load ptr, ptr %3, align 8, !tbaa !58
  %551 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %315, ptr noundef %549, ptr noundef %550) #18
  store ptr %551, ptr %4, align 8, !tbaa !58
  %552 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %552, ptr %3, align 8, !tbaa !58
  %553 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %315, ptr noundef %352, ptr noundef %355) #18
  store ptr %553, ptr %314, align 8, !tbaa !60
  %554 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %554, ptr %336, align 8, !tbaa !60
  %555 = getelementptr inbounds %struct.rtx_def, ptr %553, i64 0, i32 1
  %556 = load i64, ptr %555, align 8, !tbaa !50
  %557 = icmp slt i64 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %548
  %559 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %315, ptr noundef %553, i32 noundef %308) #18
  store ptr %559, ptr %314, align 8, !tbaa !60
  %560 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %315, ptr noundef %551, i32 noundef %308) #18
  store ptr %560, ptr %4, align 8, !tbaa !58
  br label %561

561:                                              ; preds = %558, %548
  %562 = load ptr, ptr %314, align 8, !tbaa !60
  %563 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %564 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %562, i32 noundef %315, i32 noundef %563) #18
  store ptr %564, ptr %314, align 8, !tbaa !60
  %565 = getelementptr inbounds %struct.rtx_def, ptr %564, i64 0, i32 1
  %566 = load i64, ptr %565, align 8, !tbaa !50
  %567 = and i64 %566, 1
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %569, label %578

569:                                              ; preds = %561, %569
  %570 = phi i64 [ %574, %569 ], [ 1, %561 ]
  %571 = phi i64 [ %575, %569 ], [ %320, %561 ]
  %572 = phi i64 [ %573, %569 ], [ %566, %561 ]
  %573 = lshr exact i64 %572, 1
  %574 = shl i64 %570, 1
  %575 = add i64 %571, -1
  %576 = and i64 %572, 2
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %569, label %578, !llvm.loop !117

578:                                              ; preds = %569, %561
  %579 = phi i64 [ %566, %561 ], [ %573, %569 ]
  %580 = phi i64 [ %320, %561 ], [ %575, %569 ]
  %581 = phi i64 [ 1, %561 ], [ %574, %569 ]
  %582 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 8
  %583 = add i64 %580, -1
  %584 = shl i64 2, %583
  %585 = add i64 %584, -1
  %586 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %585) #18
  %587 = load ptr, ptr %4, align 8, !tbaa !58
  %588 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %589 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %587, i32 noundef %315, i32 noundef %588) #18
  %590 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %581) #18
  %591 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %308, ptr noundef %589, ptr noundef %590) #18
  %592 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %593 = call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef 16, i32 noundef %308, ptr noundef %591, ptr noundef %592) #18
  %594 = load ptr, ptr %582, align 8, !tbaa !118
  %595 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %593, ptr noundef %594) #18
  store ptr %595, ptr %582, align 8, !tbaa !118
  %596 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %581) #18
  %597 = call ptr @simplify_gen_binary(i32 noundef 59, i32 noundef %308, ptr noundef %589, ptr noundef %596) #18
  %598 = trunc i64 %580 to i32
  %599 = add i32 %598, -1
  %600 = zext nneg i32 %599 to i64
  %601 = shl i64 2, %600
  %602 = add i64 %601, -1
  %603 = icmp sgt i32 %598, 1
  br i1 %603, label %604, label %614

604:                                              ; preds = %578, %604
  %605 = phi i32 [ %612, %604 ], [ 0, %578 ]
  %606 = phi i64 [ %609, %604 ], [ 1, %578 ]
  %607 = phi i64 [ %611, %604 ], [ %579, %578 ]
  %608 = mul i64 %606, %607
  %609 = and i64 %608, %602
  %610 = mul i64 %607, %607
  %611 = and i64 %610, %602
  %612 = add nuw nsw i32 %605, 1
  %613 = icmp eq i32 %612, %599
  br i1 %613, label %614, label %604, !llvm.loop !119

614:                                              ; preds = %604, %578
  %615 = phi i64 [ 1, %578 ], [ %609, %604 ]
  %616 = call ptr @gen_int_mode(i64 noundef %615, i32 noundef %308) #18
  %617 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %308, ptr noundef %597, ptr noundef %616) #18
  %618 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %308, ptr noundef %617, ptr noundef %586) #18
  br label %710

619:                                              ; preds = %545
  %620 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %621 = icmp eq ptr %355, %620
  br i1 %621, label %622, label %658

622:                                              ; preds = %619
  %623 = load ptr, ptr %3, align 8, !tbaa !58
  %624 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %625 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %623, i32 noundef %315, i32 noundef %624) #18
  %626 = load ptr, ptr %4, align 8, !tbaa !58
  %627 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %628 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %626, i32 noundef %315, i32 noundef %627) #18
  %629 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %630 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %352, i32 noundef %315, i32 noundef %629) #18
  %631 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %308, ptr noundef %330, ptr noundef %630) #18
  %632 = icmp eq i8 %376, 0
  br i1 %632, label %643, label %633

633:                                              ; preds = %622
  %634 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 8
  %635 = call i32 @reverse_condition(i32 noundef %546) #18
  %636 = call ptr @simplify_gen_relational(i32 noundef %635, i32 noundef 16, i32 noundef %308, ptr noundef %628, ptr noundef %631) #18
  %637 = call ptr @copy_rtx(ptr noundef %625) #18
  %638 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %308, ptr noundef %637, ptr noundef %352) #18
  %639 = call ptr @copy_rtx(ptr noundef %628) #18
  %640 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %308, ptr noundef %639, ptr noundef %352) #18
  %641 = call ptr @simplify_gen_relational(i32 noundef %546, i32 noundef 16, i32 noundef %308, ptr noundef %638, ptr noundef %640) #18
  %642 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef 16, ptr noundef %636, ptr noundef %641) #18
  br label %645

643:                                              ; preds = %622
  %644 = call ptr @simplify_gen_relational(i32 noundef %546, i32 noundef 16, i32 noundef %308, ptr noundef %628, ptr noundef %631) #18
  br label %645

645:                                              ; preds = %643, %633
  %646 = phi ptr [ %19, %643 ], [ %634, %633 ]
  %647 = phi ptr [ %644, %643 ], [ %642, %633 ]
  %648 = load ptr, ptr %646, align 8, !tbaa !39
  %649 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %647, ptr noundef %648) #18
  store ptr %649, ptr %646, align 8, !tbaa !39
  %650 = load ptr, ptr %314, align 8, !tbaa !60
  %651 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %315, ptr noundef %626, ptr noundef %650) #18
  %652 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %653 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %651, i32 noundef %315, i32 noundef %652) #18
  %654 = call i32 @reverse_condition(i32 noundef %546) #18
  %655 = call ptr @simplify_gen_relational(i32 noundef %654, i32 noundef 16, i32 noundef %308, ptr noundef %625, ptr noundef %653) #18
  %656 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %308, ptr noundef %628, ptr noundef %352) #18
  %657 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %308, ptr noundef %656, ptr noundef %625) #18
  br label %695

658:                                              ; preds = %619
  %659 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %308, ptr noundef %355, i32 noundef %308) #18
  %660 = load ptr, ptr %3, align 8, !tbaa !58
  %661 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %662 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %660, i32 noundef %315, i32 noundef %661) #18
  %663 = load ptr, ptr %4, align 8, !tbaa !58
  %664 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %665 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %663, i32 noundef %315, i32 noundef %664) #18
  %666 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %667 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %659, i32 noundef %315, i32 noundef %666) #18
  %668 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %308, ptr noundef %327, ptr noundef %667) #18
  %669 = icmp eq i8 %376, 0
  br i1 %669, label %680, label %670

670:                                              ; preds = %658
  %671 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 8
  %672 = call i32 @reverse_condition(i32 noundef %546) #18
  %673 = call ptr @simplify_gen_relational(i32 noundef %672, i32 noundef 16, i32 noundef %308, ptr noundef %668, ptr noundef %662) #18
  %674 = call ptr @copy_rtx(ptr noundef %662) #18
  %675 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %308, ptr noundef %674, ptr noundef %659) #18
  %676 = call ptr @copy_rtx(ptr noundef %665) #18
  %677 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %308, ptr noundef %676, ptr noundef %659) #18
  %678 = call ptr @simplify_gen_relational(i32 noundef %546, i32 noundef 16, i32 noundef %308, ptr noundef %675, ptr noundef %677) #18
  %679 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef 16, ptr noundef %673, ptr noundef %678) #18
  br label %682

680:                                              ; preds = %658
  %681 = call ptr @simplify_gen_relational(i32 noundef %546, i32 noundef 16, i32 noundef %308, ptr noundef %668, ptr noundef %662) #18
  br label %682

682:                                              ; preds = %680, %670
  %683 = phi ptr [ %19, %680 ], [ %671, %670 ]
  %684 = phi ptr [ %681, %680 ], [ %679, %670 ]
  %685 = load ptr, ptr %683, align 8, !tbaa !39
  %686 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %684, ptr noundef %685) #18
  store ptr %686, ptr %683, align 8, !tbaa !39
  %687 = load ptr, ptr %336, align 8, !tbaa !60
  %688 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %315, ptr noundef %660, ptr noundef %687) #18
  %689 = call i32 @subreg_lowpart_offset(i32 noundef %308, i32 noundef %315) #18
  %690 = call ptr @simplify_gen_subreg(i32 noundef %308, ptr noundef %688, i32 noundef %315, i32 noundef %689) #18
  %691 = call i32 @reverse_condition(i32 noundef %546) #18
  %692 = call ptr @simplify_gen_relational(i32 noundef %691, i32 noundef 16, i32 noundef %308, ptr noundef %690, ptr noundef %665) #18
  %693 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %308, ptr noundef %662, ptr noundef %659) #18
  %694 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %308, ptr noundef %665, ptr noundef %693) #18
  br label %695

695:                                              ; preds = %682, %645
  %696 = phi ptr [ %655, %645 ], [ %692, %682 ]
  %697 = phi ptr [ %352, %645 ], [ %659, %682 ]
  %698 = phi ptr [ %657, %645 ], [ %694, %682 ]
  %699 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %700 = icmp eq ptr %696, %699
  br i1 %700, label %761, label %701

701:                                              ; preds = %695
  %702 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %703 = icmp eq ptr %696, %702
  br i1 %703, label %708, label %704

704:                                              ; preds = %701
  %705 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 7
  %706 = load ptr, ptr %705, align 8, !tbaa !116
  %707 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %696, ptr noundef %706) #18
  store ptr %707, ptr %705, align 8, !tbaa !116
  br label %708

708:                                              ; preds = %704, %701
  %709 = call ptr @simplify_gen_binary(i32 noundef 59, i32 noundef %308, ptr noundef %698, ptr noundef %697) #18
  br label %710

710:                                              ; preds = %708, %614
  %711 = phi ptr [ %709, %708 ], [ %618, %614 ]
  store ptr %711, ptr %21, align 8, !tbaa !111
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %19)
  %712 = load ptr, ptr %19, align 8, !tbaa !120
  %713 = icmp eq ptr %712, null
  br i1 %713, label %719, label %714

714:                                              ; preds = %710
  %715 = getelementptr inbounds %struct.rtx_def, ptr %712, i64 0, i32 1
  %716 = load ptr, ptr %715, align 8, !tbaa !50
  %717 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %718 = icmp eq ptr %716, %717
  br i1 %718, label %775, label %719

719:                                              ; preds = %714, %710
  %720 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 7
  %721 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 8
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %720)
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %721)
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %21)
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %19)
  %722 = load ptr, ptr %19, align 8, !tbaa !120
  %723 = icmp eq ptr %722, null
  br i1 %723, label %729, label %724

724:                                              ; preds = %719
  %725 = getelementptr inbounds %struct.rtx_def, ptr %722, i64 0, i32 1
  %726 = load ptr, ptr %725, align 8, !tbaa !50
  %727 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %728 = icmp eq ptr %726, %727
  br i1 %728, label %775, label %729

729:                                              ; preds = %724, %719
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %720)
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %721)
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %21)
  %730 = load ptr, ptr %720, align 8, !tbaa !116
  %731 = icmp eq ptr %730, null
  br i1 %731, label %737, label %732

732:                                              ; preds = %729
  %733 = getelementptr inbounds %struct.rtx_def, ptr %730, i64 0, i32 1
  %734 = load ptr, ptr %733, align 8, !tbaa !50
  %735 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %736 = icmp eq ptr %734, %735
  br i1 %736, label %771, label %737

737:                                              ; preds = %732, %729
  %738 = load ptr, ptr %21, align 8, !tbaa !111
  %739 = load i32, ptr %738, align 8
  %740 = and i32 %739, 65535
  %741 = icmp eq i32 %740, 30
  br i1 %741, label %742, label %751

742:                                              ; preds = %737
  %743 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 4
  %744 = getelementptr inbounds %struct.rtx_def, ptr %738, i64 0, i32 1
  %745 = load i64, ptr %744, align 8, !tbaa !50
  store i8 1, ptr %20, align 1, !tbaa !110
  %746 = load i32, ptr %312, align 4, !tbaa !113
  %747 = zext i32 %746 to i64
  %748 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %747
  %749 = load i64, ptr %748, align 8, !tbaa !95
  %750 = and i64 %749, %745
  store i64 %750, ptr %743, align 8, !tbaa !121
  store i64 %750, ptr %22, align 8, !tbaa !112
  br label %776

751:                                              ; preds = %737
  %752 = load i64, ptr %22, align 8, !tbaa !112
  %753 = icmp eq i64 %752, 0
  br i1 %753, label %754, label %756

754:                                              ; preds = %751
  %755 = call fastcc i64 @determine_max_iter(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %711)
  store i64 %755, ptr %22, align 8, !tbaa !112
  br label %756

756:                                              ; preds = %754, %751
  store ptr %711, ptr %21, align 8, !tbaa !111
  br label %776

757:                                              ; preds = %421, %415
  %758 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 8
  %759 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %760 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %759, ptr noundef null) #18
  store ptr %760, ptr %758, align 8, !tbaa !118
  br label %761

761:                                              ; preds = %757, %695, %527, %388, %378
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %19)
  %762 = load ptr, ptr %19, align 8, !tbaa !120
  %763 = icmp eq ptr %762, null
  br i1 %763, label %769, label %764

764:                                              ; preds = %761
  %765 = getelementptr inbounds %struct.rtx_def, ptr %762, i64 0, i32 1
  %766 = load ptr, ptr %765, align 8, !tbaa !50
  %767 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %768 = icmp eq ptr %766, %767
  br i1 %768, label %775, label %769

769:                                              ; preds = %764, %761
  %770 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 8
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %770)
  br label %771

771:                                              ; preds = %769, %732
  %772 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 7
  %773 = getelementptr inbounds %struct.niter_desc, ptr %9, i64 0, i32 4
  store i8 1, ptr %20, align 1, !tbaa !110
  store ptr null, ptr %772, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %773, i8 0, i64 16, i1 false)
  %774 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %774, ptr %21, align 8, !tbaa !111
  br label %776

775:                                              ; preds = %724, %307, %206, %164, %764, %714, %368, %351, %346, %335, %311, %267, %263, %251, %247, %218, %198, %184, %179, %174, %168, %158, %152, %141, %131, %125
  store i8 0, ptr %16, align 8, !tbaa !96
  br label %776

776:                                              ; preds = %775, %771, %756, %742
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  br label %777

777:                                              ; preds = %56, %61, %65, %81, %95, %776
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  %778 = load i8, ptr %16, align 8, !tbaa !96
  %779 = icmp eq i8 %778, 0
  br i1 %779, label %799, label %780

780:                                              ; preds = %777
  %781 = icmp eq i8 %37, 0
  br i1 %781, label %798, label %782

782:                                              ; preds = %780
  %783 = load i8, ptr %23, align 1, !tbaa !110
  %784 = icmp eq i8 %783, 0
  br i1 %784, label %799, label %785

785:                                              ; preds = %782
  %786 = load i8, ptr %24, align 1, !tbaa !110
  %787 = icmp eq i8 %786, 0
  br i1 %787, label %792, label %788

788:                                              ; preds = %785
  %789 = load i64, ptr %25, align 8, !tbaa !121
  %790 = load i64, ptr %26, align 8, !tbaa !121
  %791 = icmp ult i64 %789, %790
  br i1 %791, label %792, label %799

792:                                              ; preds = %788, %785
  %793 = load ptr, ptr %27, align 8, !tbaa !118
  %794 = icmp eq ptr %793, null
  br i1 %794, label %798, label %795

795:                                              ; preds = %792
  %796 = load ptr, ptr %28, align 8, !tbaa !118
  %797 = icmp eq ptr %796, null
  br i1 %797, label %799, label %798

798:                                              ; preds = %780, %792, %795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %9, i64 80, i1 false), !tbaa.struct !122
  br label %799

799:                                              ; preds = %795, %798, %51, %777, %788, %782
  %800 = phi i8 [ %37, %51 ], [ 1, %788 ], [ 1, %798 ], [ 1, %782 ], [ %37, %777 ], [ 1, %795 ]
  %801 = load ptr, ptr %34, align 8, !tbaa !39
  %802 = icmp eq ptr %801, null
  br i1 %802, label %805, label %803

803:                                              ; preds = %799
  %804 = load i32, ptr %801, align 8, !tbaa !98
  br label %805

805:                                              ; preds = %803, %799
  %806 = phi i32 [ %804, %803 ], [ 0, %799 ]
  %807 = icmp ult i32 %36, %806
  br i1 %807, label %809, label %808

808:                                              ; preds = %805
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 738, ptr noundef nonnull @.str.9) #18
  br label %809

809:                                              ; preds = %805, %808
  %810 = add i32 %36, 1
  br label %35, !llvm.loop !123

811:                                              ; preds = %49
  %812 = add nuw nsw i64 %30, 1
  %813 = load i32, ptr %12, align 4, !tbaa !67
  %814 = zext i32 %813 to i64
  %815 = icmp ult i64 %812, %814
  br i1 %815, label %29, label %816, !llvm.loop !124

816:                                              ; preds = %811, %2
  %817 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %818 = icmp eq ptr %817, null
  br i1 %818, label %885, label %819

819:                                              ; preds = %816
  %820 = load i8, ptr %10, align 8, !tbaa !96
  %821 = icmp eq i8 %820, 0
  %822 = load i32, ptr %0, align 8, !tbaa !125
  br i1 %821, label %883, label %823

823:                                              ; preds = %819
  %824 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %817, ptr noundef nonnull @.str.10, i32 noundef %822)
  %825 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %826 = load ptr, ptr %1, align 8, !tbaa !107
  %827 = load ptr, ptr %826, align 8, !tbaa !102
  %828 = getelementptr inbounds %struct.basic_block_def, ptr %827, i64 0, i32 9
  %829 = load i32, ptr %828, align 8, !tbaa !71
  %830 = getelementptr inbounds %struct.edge_def, ptr %826, i64 0, i32 1
  %831 = load ptr, ptr %830, align 8, !tbaa !100
  %832 = getelementptr inbounds %struct.basic_block_def, ptr %831, i64 0, i32 9
  %833 = load i32, ptr %832, align 8, !tbaa !71
  %834 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %825, ptr noundef nonnull @.str.11, i32 noundef %829, i32 noundef %833)
  %835 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 6
  %836 = load ptr, ptr %835, align 8, !tbaa !120
  %837 = icmp eq ptr %836, null
  br i1 %837, label %845, label %838

838:                                              ; preds = %823
  %839 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %840 = call i64 @fwrite(ptr nonnull @.str.12, i64 15, i64 1, ptr %839)
  %841 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %842 = load ptr, ptr %835, align 8, !tbaa !120
  call void @print_rtl(ptr noundef %841, ptr noundef %842) #18
  %843 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %844 = call i32 @fputc(i32 10, ptr %843)
  br label %845

845:                                              ; preds = %838, %823
  %846 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 7
  %847 = load ptr, ptr %846, align 8, !tbaa !116
  %848 = icmp eq ptr %847, null
  br i1 %848, label %856, label %849

849:                                              ; preds = %845
  %850 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %851 = call i64 @fwrite(ptr nonnull @.str.14, i64 20, i64 1, ptr %850)
  %852 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %853 = load ptr, ptr %846, align 8, !tbaa !116
  call void @print_rtl(ptr noundef %852, ptr noundef %853) #18
  %854 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %855 = call i32 @fputc(i32 10, ptr %854)
  br label %856

856:                                              ; preds = %849, %845
  %857 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 8
  %858 = load ptr, ptr %857, align 8, !tbaa !118
  %859 = icmp eq ptr %858, null
  br i1 %859, label %867, label %860

860:                                              ; preds = %856
  %861 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %862 = call i64 @fwrite(ptr nonnull @.str.15, i64 15, i64 1, ptr %861)
  %863 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %864 = load ptr, ptr %857, align 8, !tbaa !118
  call void @print_rtl(ptr noundef %863, ptr noundef %864) #18
  %865 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %866 = call i32 @fputc(i32 10, ptr %865)
  br label %867

867:                                              ; preds = %860, %856
  %868 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %869 = call i64 @fwrite(ptr nonnull @.str.16, i64 24, i64 1, ptr %868)
  %870 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %871 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 11
  %872 = load ptr, ptr %871, align 8, !tbaa !111
  call void @print_rtl(ptr noundef %870, ptr noundef %872) #18
  %873 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %874 = call i32 @fputc(i32 10, ptr %873)
  %875 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %876 = call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %875)
  %877 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %878 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 5
  %879 = load i64, ptr %878, align 8, !tbaa !112
  %880 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %877, ptr noundef nonnull @.str.18, i64 noundef %879)
  %881 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %882 = call i32 @fputc(i32 10, ptr %881)
  br label %885

883:                                              ; preds = %819
  %884 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %817, ptr noundef nonnull @.str.19, i32 noundef %822)
  br label %885

885:                                              ; preds = %867, %883, %816
  call void @free(ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #18
  ret void
}

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_simple_loop_desc(ptr noundef %0) local_unnamed_addr #9 !prof !38 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #18
  tail call void @iv_analysis_loop_init(ptr noundef %0)
  tail call void @find_simple_exit(ptr noundef %0, ptr noundef %6)
  store ptr %6, ptr %2, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !96
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %14, %10
  %19 = load i32, ptr @flag_tree_loop_optimize, align 4, !tbaa !54
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr @warn_unsafe_loop_optimizations, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !118
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !54
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.21, ptr @.str.20
  %32 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 216, ptr noundef nonnull @.str.22, ptr noundef nonnull %31) #18
  br label %33

33:                                               ; preds = %28, %24
  %34 = load ptr, ptr %11, align 8, !tbaa !120
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !54
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.24, ptr @.str.23
  %40 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 216, ptr noundef nonnull @.str.22, ptr noundef nonnull %39) #18
  br label %41

41:                                               ; preds = %33, %36, %18
  %42 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !54
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  store ptr null, ptr %11, align 8, !tbaa !120
  %45 = getelementptr inbounds %struct.niter_desc, ptr %6, i64 0, i32 8
  store ptr null, ptr %45, align 8, !tbaa !118
  br label %46

46:                                               ; preds = %14, %5, %44, %41, %1
  %47 = phi ptr [ %3, %1 ], [ %6, %41 ], [ %6, %44 ], [ %6, %5 ], [ %6, %14 ]
  ret ptr %47
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @free_simple_loop_desc(ptr nocapture noundef %0) local_unnamed_addr #14 !prof !38 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  store ptr null, ptr %2, align 8, !tbaa !126
  br label %6

6:                                                ; preds = %1, %5
  ret void
}

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @function_invariant_p(ptr noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @iv_get_reaching_def(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !38 {
  store ptr null, ptr %2, align 8, !tbaa !39
  %4 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %1), !range !80
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %80, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ %1, %6 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 339, ptr noundef nonnull @.str.9) #18
  br label %19

19:                                               ; preds = %13, %18
  %20 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef nonnull %14) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 342, ptr noundef nonnull @.str.9) #18
  br label %23

23:                                               ; preds = %19, %22
  %24 = getelementptr inbounds %struct.df_base_ref, ptr %20, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %80, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.df_link, ptr %25, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %80

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 8, !tbaa !129
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 2097152
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.df_base_ref, ptr %32, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  %39 = load ptr, ptr %38, align 8, !tbaa !84
  %40 = and i32 %33, 255
  %41 = icmp eq i32 %40, 1
  %42 = getelementptr inbounds %struct.df_artificial_ref, ptr %32, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  %44 = select i1 %41, ptr %42, ptr %43
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = icmp eq ptr %47, %45
  br i1 %48, label %49, label %69

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = load ptr, ptr @df, align 8, !tbaa !39
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !130
  %54 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !50
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !131
  %61 = load i32, ptr %50, align 8, !tbaa !50
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %53, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !39
  %65 = getelementptr inbounds %struct.df_insn_info, ptr %64, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !131
  %67 = icmp slt i32 %60, %66
  %68 = zext i1 %67 to i8
  br label %71

69:                                               ; preds = %36
  %70 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %47, ptr noundef %45) #18
  br label %71

71:                                               ; preds = %69, %49
  %72 = phi i8 [ %68, %49 ], [ %70, %69 ]
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store ptr %32, ptr %2, align 8, !tbaa !39
  br label %80

75:                                               ; preds = %71
  %76 = load ptr, ptr @current_loop, align 8, !tbaa !39
  %77 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %76, ptr noundef %45) #18
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %78, i32 0, i32 2
  br label %80

80:                                               ; preds = %75, %31, %27, %23, %3, %74
  %81 = phi i32 [ 3, %74 ], [ 0, %3 ], [ 1, %23 ], [ 0, %27 ], [ 0, %31 ], [ %79, %75 ]
  ret i32 %81
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @get_biv_step_1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #9 !prof !38 {
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %24

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call ptr @single_set_2(ptr noundef nonnull %11, ptr noundef nonnull %18) #18
  br label %24

24:                                               ; preds = %7, %16, %22
  %25 = phi ptr [ %23, %22 ], [ null, %7 ], [ %18, %16 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %173, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %11) #18
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = select i1 %29, ptr %31, ptr %30
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = trunc i32 %34 to i16
  switch i16 %36, label %173 [
    i16 39, label %89
    i16 37, label %89
    i16 49, label %37
    i16 50, label %37
    i16 98, label %80
    i16 99, label %80
  ]

37:                                               ; preds = %27, %27
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = icmp eq i32 %35, 49
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, ptr %39, align 8
  %45 = and i32 %44, 65535
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !54
  %49 = icmp eq i32 %48, 9
  %50 = select i1 %49, ptr %39, ptr %41
  %51 = select i1 %49, ptr %41, ptr %39
  br label %52

52:                                               ; preds = %43, %37
  %53 = phi ptr [ %41, %37 ], [ %50, %43 ]
  %54 = phi ptr [ %39, %37 ], [ %51, %43 ]
  %55 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %54), !range !80
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %173, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %53, align 8
  %59 = and i32 %58, 65535
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !54
  %63 = icmp eq i32 %62, 9
  br i1 %63, label %64, label %173

64:                                               ; preds = %57
  %65 = load i32, ptr %33, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, %5
  br i1 %68, label %89, label %69

69:                                               ; preds = %64
  %70 = load i32, ptr %54, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 39
  br i1 %72, label %73, label %173

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = icmp eq i32 %78, %5
  br i1 %79, label %89, label %173

80:                                               ; preds = %27, %27
  %81 = lshr i32 %34, 16
  %82 = and i32 %81, 255
  %83 = icmp eq i32 %82, %5
  br i1 %83, label %84, label %173

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !50
  %87 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %86), !range !80
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %173, label %89

89:                                               ; preds = %27, %84, %64, %73, %27
  %90 = phi ptr [ %33, %27 ], [ %54, %73 ], [ %54, %64 ], [ %86, %84 ], [ %33, %27 ]
  %91 = phi ptr [ null, %27 ], [ %53, %73 ], [ %53, %64 ], [ null, %84 ], [ null, %27 ]
  %92 = phi ptr [ null, %27 ], [ %54, %73 ], [ %54, %64 ], [ %86, %84 ], [ null, %27 ]
  %93 = load i32, ptr %90, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 39
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %90) #18
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %173, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !50
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  %105 = icmp eq i32 %104, %5
  br i1 %105, label %106, label %173

106:                                              ; preds = %89, %99
  %107 = phi ptr [ %101, %99 ], [ %90, %89 ]
  %108 = call fastcc i32 @iv_get_reaching_def(ptr noundef nonnull %11, ptr noundef nonnull %107, ptr noundef nonnull %8), !range !82
  %109 = icmp ult i32 %108, 2
  br i1 %109, label %173, label %110

110:                                              ; preds = %106
  %111 = icmp eq i32 %108, 2
  br i1 %111, label %112, label %118

112:                                              ; preds = %110
  %113 = tail call i32 @rtx_equal_p(ptr noundef nonnull %107, ptr noundef %1) #18
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %173, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %116, ptr %2, align 8, !tbaa !39
  store i32 0, ptr %4, align 4, !tbaa !54
  store i32 %5, ptr %3, align 4, !tbaa !54
  %117 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %117, ptr %6, align 8, !tbaa !39
  br label %122

118:                                              ; preds = %110
  %119 = load ptr, ptr %8, align 8, !tbaa !39
  %120 = tail call fastcc zeroext i8 @get_biv_step_1(ptr noundef %119, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6), !range !80
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %173, label %122

122:                                              ; preds = %118, %115
  %123 = load i32, ptr %90, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 39
  br i1 %125, label %126, label %142

126:                                              ; preds = %122
  %127 = lshr i32 %123, 16
  %128 = and i32 %127, 255
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !50
  %132 = load i32, ptr %3, align 4, !tbaa !54
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !50
  %136 = icmp ugt i8 %131, %135
  br i1 %136, label %173, label %137

137:                                              ; preds = %126
  store i32 %128, ptr %3, align 4, !tbaa !54
  %138 = load ptr, ptr %2, align 8, !tbaa !39
  %139 = load ptr, ptr %6, align 8, !tbaa !39
  %140 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %5, ptr noundef %138, ptr noundef %139) #18
  store ptr %140, ptr %2, align 8, !tbaa !39
  %141 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %141, ptr %6, align 8, !tbaa !39
  store i32 0, ptr %4, align 4, !tbaa !54
  br label %142

142:                                              ; preds = %137, %122
  switch i16 %36, label %173 [
    i16 37, label %172
    i16 39, label %172
    i16 49, label %143
    i16 50, label %143
    i16 98, label %157
    i16 99, label %157
  ]

143:                                              ; preds = %142, %142
  %144 = load i32, ptr %3, align 4, !tbaa !54
  %145 = icmp eq i32 %144, %5
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr %33, align 8
  %148 = lshr i32 %147, 16
  %149 = and i32 %148, 255
  %150 = icmp eq i32 %149, %5
  br i1 %150, label %154, label %151

151:                                              ; preds = %146, %143
  %152 = load ptr, ptr %2, align 8, !tbaa !39
  %153 = tail call ptr @simplify_gen_binary(i32 noundef %35, i32 noundef %5, ptr noundef %152, ptr noundef %91) #18
  store ptr %153, ptr %2, align 8, !tbaa !39
  br label %172

154:                                              ; preds = %146
  %155 = load ptr, ptr %6, align 8, !tbaa !39
  %156 = tail call ptr @simplify_gen_binary(i32 noundef %35, i32 noundef %5, ptr noundef %155, ptr noundef %91) #18
  store ptr %156, ptr %6, align 8, !tbaa !39
  br label %172

157:                                              ; preds = %142, %142
  %158 = load i32, ptr %92, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = load i32, ptr %3, align 4, !tbaa !54
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load i32, ptr %4, align 4, !tbaa !54
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load ptr, ptr %6, align 8, !tbaa !39
  %168 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %171, label %170

170:                                              ; preds = %166, %163, %157
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 768, ptr noundef nonnull @.str.9) #18
  br label %171

171:                                              ; preds = %166, %170
  store i32 %35, ptr %4, align 4, !tbaa !54
  br label %172

172:                                              ; preds = %142, %151, %154, %142, %171
  br label %173

173:                                              ; preds = %142, %106, %99, %84, %73, %52, %27, %126, %118, %112, %96, %80, %69, %57, %24, %172
  %174 = phi i8 [ 1, %172 ], [ 0, %24 ], [ 0, %57 ], [ 0, %69 ], [ 0, %80 ], [ 0, %96 ], [ 0, %112 ], [ 0, %118 ], [ 0, %126 ], [ 0, %27 ], [ 0, %52 ], [ 0, %73 ], [ 0, %84 ], [ 0, %99 ], [ 0, %106 ], [ 0, %142 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret i8 %174
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @get_mode_bounds(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !38 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = load ptr, ptr %2, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %423, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !54
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %423, label %16

16:                                               ; preds = %9
  %17 = icmp eq i32 %11, 3
  br i1 %17, label %18, label %74

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  store ptr %20, ptr %4, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  store ptr %22, ptr %5, align 8, !tbaa !39
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %18, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %18 ]
  %26 = load ptr, ptr %4, align 8, !tbaa !39
  %27 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  tail call fastcc void @eliminate_implied_condition(i32 noundef %1, ptr noundef %26, ptr noundef nonnull %27)
  %28 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %24, !llvm.loop !132

31:                                               ; preds = %24, %31
  %32 = phi ptr [ %36, %31 ], [ %22, %24 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  call fastcc void @eliminate_implied_condition(i32 noundef %1, ptr noundef %34, ptr noundef nonnull %4)
  %35 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %31, !llvm.loop !133

38:                                               ; preds = %31, %18
  switch i32 %1, label %45 [
    i32 61, label %39
    i32 62, label %42
  ]

39:                                               ; preds = %38
  %40 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %41 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  br label %46

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %44 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  br label %46

45:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1856, ptr noundef nonnull @.str.9) #18
  br label %46

46:                                               ; preds = %45, %42, %39
  %47 = phi ptr [ undef, %45 ], [ %44, %42 ], [ %41, %39 ]
  %48 = phi ptr [ undef, %45 ], [ %43, %42 ], [ %40, %39 ]
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4)
  %49 = load ptr, ptr %4, align 8, !tbaa !39
  %50 = icmp eq ptr %49, %47
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 8, !tbaa !39
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  store ptr %47, ptr %53, align 8, !tbaa !50
  %54 = load ptr, ptr %2, align 8, !tbaa !39
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %55, align 8, !tbaa !50
  br label %423

56:                                               ; preds = %46
  %57 = icmp eq ptr %49, %48
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = load ptr, ptr %5, align 8, !tbaa !39
  store ptr %59, ptr %2, align 8, !tbaa !39
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  br label %423

60:                                               ; preds = %56
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5)
  %61 = load ptr, ptr %5, align 8, !tbaa !39
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  %66 = icmp eq ptr %65, %47
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store ptr %61, ptr %2, align 8, !tbaa !39
  br label %423

68:                                               ; preds = %63, %60
  %69 = load ptr, ptr %4, align 8, !tbaa !39
  %70 = load ptr, ptr %2, align 8, !tbaa !39
  %71 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !50
  %72 = load ptr, ptr %2, align 8, !tbaa !39
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %61, ptr %73, align 8, !tbaa !50
  br label %423

74:                                               ; preds = %16
  %75 = icmp eq i32 %1, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1885, ptr noundef nonnull @.str.9) #18
  br label %77

77:                                               ; preds = %74, %76
  br label %78

78:                                               ; preds = %77, %78
  %79 = tail call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @replace_single_def_regs, ptr noundef nonnull %2) #18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %78, !llvm.loop !134

81:                                               ; preds = %78
  %82 = load ptr, ptr %2, align 8, !tbaa !39
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !54
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %423, label %89

89:                                               ; preds = %81
  %90 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %91 = load ptr, ptr %90, align 8, !tbaa !102
  %92 = load ptr, ptr @cfun, align 8, !tbaa !39
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !135
  %95 = load ptr, ptr %94, align 8, !tbaa !137
  %96 = icmp eq ptr %91, %95
  br i1 %96, label %423, label %97

97:                                               ; preds = %89
  %98 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #18
  %99 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #18
  %100 = load ptr, ptr %2, align 8, !tbaa !39
  store ptr null, ptr %6, align 8, !tbaa !39
  br label %101

101:                                              ; preds = %408, %97
  %102 = phi ptr [ undef, %97 ], [ %371, %408 ]
  %103 = phi ptr [ undef, %97 ], [ %372, %408 ]
  %104 = phi ptr [ %90, %97 ], [ %411, %408 ]
  %105 = phi ptr [ %100, %97 ], [ %373, %408 ]
  %106 = phi i8 [ 1, %97 ], [ %374, %408 ]
  %107 = load ptr, ptr %104, align 8, !tbaa !102
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !50
  %110 = getelementptr inbounds %struct.rtl_bb_info, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !104
  %112 = tail call i32 @any_condjump_p(ptr noundef %111) #18
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %173, label %114

114:                                              ; preds = %101
  %115 = load ptr, ptr %104, align 8, !tbaa !102
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !50
  %118 = getelementptr inbounds %struct.rtl_bb_info, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !104
  %120 = tail call ptr @get_condition(ptr noundef %119, ptr noundef null, i32 noundef 0, i32 noundef 1) #18
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.edge_def, ptr %104, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !109
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = tail call ptr @reversed_condition(ptr noundef nonnull %120) #18
  br label %129

129:                                              ; preds = %127, %122, %114
  %130 = phi ptr [ %128, %127 ], [ %120, %122 ], [ null, %114 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %170, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %2, align 8, !tbaa !39
  tail call void @simplify_using_condition(ptr noundef nonnull %130, ptr noundef nonnull %2, ptr noundef %98)
  %134 = load ptr, ptr %2, align 8, !tbaa !39
  %135 = icmp eq ptr %133, %134
  br i1 %135, label %164, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr %134, align 8
  %138 = and i32 %137, 65535
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !54
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %161, label %143

143:                                              ; preds = %136
  %144 = load ptr, ptr %6, align 8, !tbaa !50
  %145 = icmp eq ptr %144, null
  br i1 %145, label %161, label %150

146:                                              ; preds = %150
  %147 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !50
  %149 = icmp eq ptr %148, null
  br i1 %149, label %161, label %150, !llvm.loop !139

150:                                              ; preds = %143, %146
  %151 = phi ptr [ %148, %146 ], [ %144, %143 ]
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !50
  tail call void @simplify_using_condition(ptr noundef %153, ptr noundef nonnull %2, ptr noundef %98)
  %154 = load ptr, ptr %2, align 8, !tbaa !39
  %155 = load i32, ptr %154, align 8
  %156 = and i32 %155, 65535
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !54
  %160 = icmp ne i32 %159, 9
  br i1 %160, label %146, label %161

161:                                              ; preds = %150, %146, %143, %136
  %162 = phi i1 [ false, %136 ], [ true, %143 ], [ %160, %146 ], [ %160, %150 ]
  %163 = phi i32 [ 7, %136 ], [ 0, %143 ], [ 7, %150 ], [ 0, %146 ]
  br i1 %162, label %164, label %167

164:                                              ; preds = %161, %132
  %165 = load ptr, ptr %6, align 8, !tbaa !39
  %166 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %130, ptr noundef %165) #18
  store ptr %166, ptr %6, align 8, !tbaa !39
  br label %167

167:                                              ; preds = %161, %164
  %168 = phi i32 [ 0, %164 ], [ %163, %161 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167, %129
  br label %171

171:                                              ; preds = %167, %170
  %172 = phi i32 [ 0, %170 ], [ %168, %167 ]
  switch i32 %172, label %423 [
    i32 0, label %173
    i32 7, label %412
  ]

173:                                              ; preds = %171, %101
  %174 = load ptr, ptr %104, align 8, !tbaa !102
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 7
  %176 = load ptr, ptr %175, align 8, !tbaa !50
  %177 = getelementptr inbounds %struct.rtl_bb_info, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !50
  %179 = icmp eq ptr %178, null
  br i1 %179, label %370, label %180

180:                                              ; preds = %173, %366
  %181 = phi ptr [ %368, %366 ], [ %178, %173 ]
  %182 = phi i8 [ %365, %366 ], [ %106, %173 ]
  %183 = phi ptr [ %364, %366 ], [ %105, %173 ]
  %184 = phi ptr [ %362, %366 ], [ %103, %173 ]
  %185 = phi ptr [ %361, %366 ], [ %102, %173 ]
  %186 = load ptr, ptr %104, align 8, !tbaa !102
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %186, i64 0, i32 7
  %188 = load ptr, ptr %187, align 8, !tbaa !50
  %189 = load ptr, ptr %188, align 8, !tbaa !140
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !50
  %192 = icmp eq ptr %181, %191
  br i1 %192, label %370, label %193

193:                                              ; preds = %180
  %194 = load ptr, ptr %2, align 8, !tbaa !39
  %195 = load i32, ptr %181, align 8
  %196 = and i32 %195, 65535
  %197 = add nsw i32 %196, -7
  %198 = icmp ult i32 %197, 4
  br i1 %198, label %199, label %360

199:                                              ; preds = %193
  tail call void @bitmap_clear(ptr noundef %99) #18
  %200 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !50
  tail call void @note_stores(ptr noundef %201, ptr noundef nonnull @mark_altered, ptr noundef %99) #18
  %202 = load i32, ptr %181, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 10
  br i1 %204, label %205, label %217

205:                                              ; preds = %199, %214
  %206 = phi i64 [ %215, %214 ], [ 0, %199 ]
  %207 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !95
  %208 = shl nuw i64 1, %206
  %209 = and i64 %207, %208
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %205
  %212 = trunc i64 %206 to i32
  %213 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %99, i32 noundef %212) #18
  br label %214

214:                                              ; preds = %205, %211
  %215 = add nuw nsw i64 %206, 1
  %216 = icmp eq i64 %215, 53
  br i1 %216, label %217, label %205, !llvm.loop !141

217:                                              ; preds = %214, %199
  %218 = load i32, ptr %181, align 8
  %219 = and i32 %218, 65535
  %220 = add nsw i32 %219, -7
  %221 = icmp ult i32 %220, 4
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load ptr, ptr %200, align 8, !tbaa !50
  %224 = load i32, ptr %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 23
  br i1 %226, label %229, label %227

227:                                              ; preds = %222
  %228 = tail call ptr @single_set_2(ptr noundef nonnull %181, ptr noundef nonnull %223) #18
  br label %229

229:                                              ; preds = %227, %222, %217
  %230 = phi ptr [ %228, %227 ], [ null, %217 ], [ %223, %222 ]
  %231 = icmp eq ptr %230, null
  br i1 %231, label %299, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.rtx_def, ptr %230, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !50
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 37
  br i1 %237, label %238, label %299

238:                                              ; preds = %232
  %239 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %181) #18
  %240 = icmp eq ptr %239, null
  %241 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %242 = getelementptr inbounds %struct.rtx_def, ptr %230, i64 0, i32 1, i32 0, i32 0, i64 1
  %243 = select i1 %240, ptr %242, ptr %241
  %244 = load ptr, ptr %243, align 8, !tbaa !50
  %245 = tail call i32 @function_invariant_p(ptr noundef %244) #18
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %298

247:                                              ; preds = %238
  %248 = load i32, ptr %244, align 8
  %249 = and i32 %248, 65535
  %250 = icmp eq i32 %249, 37
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !50
  %254 = icmp ult i32 %253, 53
  br i1 %254, label %255, label %298

255:                                              ; preds = %251, %247
  %256 = trunc i32 %248 to i16
  switch i16 %256, label %299 [
    i16 49, label %257
    i16 50, label %257
    i16 61, label %257
    i16 65, label %283
    i16 67, label %283
    i16 68, label %283
    i16 52, label %283
  ]

257:                                              ; preds = %255, %255, %255
  %258 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !50
  %260 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !50
  %262 = load i32, ptr %259, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 37
  br i1 %264, label %265, label %269

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.rtx_def, ptr %259, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !50
  %268 = icmp ult i32 %267, 53
  br i1 %268, label %269, label %272

269:                                              ; preds = %265, %257
  %270 = tail call i32 @function_invariant_p(ptr noundef nonnull %259) #18
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %299, label %272

272:                                              ; preds = %265, %269
  %273 = load i32, ptr %261, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 37
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1
  %278 = load i32, ptr %277, align 8, !tbaa !50
  %279 = icmp ult i32 %278, 53
  br i1 %279, label %280, label %298

280:                                              ; preds = %276, %272
  %281 = tail call i32 @function_invariant_p(ptr noundef nonnull %261) #18
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %299, label %298

283:                                              ; preds = %255, %255, %255, %255
  %284 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !50
  %286 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1, i32 0, i32 0, i64 1
  %287 = load ptr, ptr %286, align 8, !tbaa !50
  %288 = load i32, ptr %285, align 8
  %289 = and i32 %288, 65535
  %290 = icmp eq i32 %289, 37
  br i1 %290, label %291, label %299

291:                                              ; preds = %283
  %292 = getelementptr inbounds %struct.rtx_def, ptr %285, i64 0, i32 1
  %293 = load i32, ptr %292, align 8, !tbaa !50
  %294 = icmp ult i32 %293, 53
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  %296 = tail call i32 @function_invariant_p(ptr noundef %287) #18
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %280, %276, %251, %238, %295
  br label %299

299:                                              ; preds = %295, %280, %269, %255, %291, %283, %229, %232, %298
  %300 = phi ptr [ %185, %229 ], [ %244, %298 ], [ %185, %232 ], [ %185, %283 ], [ %185, %291 ], [ %185, %255 ], [ %185, %269 ], [ %185, %280 ], [ %185, %295 ]
  %301 = phi ptr [ %184, %229 ], [ %234, %298 ], [ %184, %232 ], [ %184, %283 ], [ %184, %291 ], [ %184, %255 ], [ %184, %269 ], [ %184, %280 ], [ %184, %295 ]
  %302 = phi i1 [ true, %229 ], [ false, %298 ], [ true, %232 ], [ true, %283 ], [ true, %291 ], [ true, %255 ], [ true, %269 ], [ true, %280 ], [ true, %295 ]
  br i1 %302, label %341, label %303

303:                                              ; preds = %299
  tail call fastcc void @replace_in_expr(ptr noundef nonnull %2, ptr noundef %301, ptr noundef %300)
  %304 = load ptr, ptr %2, align 8, !tbaa !39
  %305 = load i32, ptr %304, align 8
  %306 = and i32 %305, 65535
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !54
  %310 = icmp eq i32 %309, 9
  br i1 %310, label %339, label %311

311:                                              ; preds = %303
  %312 = load ptr, ptr %6, align 8, !tbaa !39
  %313 = icmp eq ptr %312, null
  br i1 %313, label %339, label %314

314:                                              ; preds = %311, %335
  %315 = phi ptr [ %337, %335 ], [ %312, %311 ]
  %316 = phi ptr [ %336, %335 ], [ %6, %311 ]
  %317 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !50
  %319 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @replace_in_expr(ptr noundef nonnull %317, ptr noundef %301, ptr noundef %300)
  %320 = load ptr, ptr %317, align 8, !tbaa !50
  %321 = load i32, ptr %320, align 8
  %322 = and i32 %321, 65535
  %323 = zext nneg i32 %322 to i64
  %324 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !54
  %326 = icmp eq i32 %325, 9
  br i1 %326, label %327, label %329

327:                                              ; preds = %314
  %328 = load ptr, ptr %319, align 8, !tbaa !39
  store ptr %328, ptr %316, align 8, !tbaa !39
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %315) #18
  br label %335

329:                                              ; preds = %314
  %330 = icmp eq ptr %318, %320
  br i1 %330, label %331, label %334

331:                                              ; preds = %329
  %332 = load ptr, ptr %2, align 8, !tbaa !39
  %333 = icmp eq ptr %194, %332
  br i1 %333, label %335, label %334

334:                                              ; preds = %331, %329
  tail call void @simplify_using_condition(ptr noundef nonnull %320, ptr noundef nonnull %2, ptr noundef %98)
  br label %335

335:                                              ; preds = %331, %334, %327
  %336 = phi ptr [ %316, %327 ], [ %319, %334 ], [ %319, %331 ]
  %337 = load ptr, ptr %336, align 8, !tbaa !39
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %314, !llvm.loop !142

339:                                              ; preds = %335, %311, %303
  %340 = phi i32 [ 7, %303 ], [ 0, %311 ], [ 0, %335 ]
  br i1 %310, label %360, label %344

341:                                              ; preds = %299
  %342 = tail call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @altered_reg_used, ptr noundef %99) #18
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %360

344:                                              ; preds = %341, %339
  %345 = load ptr, ptr %2, align 8, !tbaa !39
  %346 = load i32, ptr %345, align 8
  %347 = and i32 %346, 65535
  %348 = zext nneg i32 %347 to i64
  %349 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !54
  %351 = icmp eq i32 %350, 9
  br i1 %351, label %360, label %352

352:                                              ; preds = %344
  %353 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %98, ptr noundef %99) #18
  %354 = tail call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @altered_reg_used, ptr noundef %98) #18
  %355 = icmp eq i32 %354, 0
  %356 = select i1 %355, i8 %182, i8 0
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %352
  %359 = load ptr, ptr %2, align 8, !tbaa !39
  br label %360

360:                                              ; preds = %344, %193, %352, %358, %341, %339
  %361 = phi ptr [ %300, %352 ], [ %300, %358 ], [ %300, %341 ], [ %300, %339 ], [ %185, %193 ], [ %300, %344 ]
  %362 = phi ptr [ %301, %352 ], [ %301, %358 ], [ %301, %341 ], [ %301, %339 ], [ %184, %193 ], [ %301, %344 ]
  %363 = phi i32 [ 0, %352 ], [ 0, %358 ], [ 7, %341 ], [ %340, %339 ], [ 13, %193 ], [ 7, %344 ]
  %364 = phi ptr [ %183, %352 ], [ %359, %358 ], [ %183, %341 ], [ %183, %339 ], [ %183, %193 ], [ %183, %344 ]
  %365 = phi i8 [ %356, %352 ], [ %356, %358 ], [ %182, %341 ], [ %182, %339 ], [ %182, %193 ], [ %182, %344 ]
  switch i32 %363, label %423 [
    i32 0, label %366
    i32 13, label %366
    i32 7, label %412
  ]

366:                                              ; preds = %360, %360
  %367 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !50
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %180, !llvm.loop !143

370:                                              ; preds = %180, %366, %173
  %371 = phi ptr [ %102, %173 ], [ %185, %180 ], [ %361, %366 ]
  %372 = phi ptr [ %103, %173 ], [ %184, %180 ], [ %362, %366 ]
  %373 = phi ptr [ %105, %173 ], [ %183, %180 ], [ %364, %366 ]
  %374 = phi i8 [ %106, %173 ], [ %182, %180 ], [ %365, %366 ]
  %375 = load ptr, ptr %104, align 8, !tbaa !102
  %376 = load ptr, ptr %375, align 8, !tbaa !144
  %377 = icmp eq ptr %376, null
  br i1 %377, label %382, label %378

378:                                              ; preds = %370
  %379 = load i32, ptr %376, align 8, !tbaa !98
  %380 = icmp eq i32 %379, 1
  %381 = zext i1 %380 to i8
  br label %382

382:                                              ; preds = %370, %378
  %383 = phi i8 [ %381, %378 ], [ 0, %370 ]
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %412, label %385

385:                                              ; preds = %382
  br i1 %377, label %389, label %386

386:                                              ; preds = %385
  %387 = load i32, ptr %376, align 8, !tbaa !98
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %390, label %389

389:                                              ; preds = %386, %385
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 655, ptr noundef nonnull @.str.9) #18
  br label %390

390:                                              ; preds = %386, %389
  %391 = load ptr, ptr %375, align 8, !tbaa !144
  %392 = getelementptr inbounds %struct.VEC_edge_base, ptr %391, i64 0, i32 2, i64 0
  %393 = load ptr, ptr %392, align 8, !tbaa !39
  %394 = load ptr, ptr %393, align 8, !tbaa !102
  %395 = load ptr, ptr @cfun, align 8, !tbaa !39
  %396 = getelementptr inbounds %struct.function, ptr %395, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !135
  %398 = load ptr, ptr %397, align 8, !tbaa !137
  %399 = icmp eq ptr %394, %398
  br i1 %399, label %412, label %400

400:                                              ; preds = %390
  %401 = load ptr, ptr %104, align 8, !tbaa !102
  %402 = load ptr, ptr %401, align 8, !tbaa !144
  %403 = icmp eq ptr %402, null
  br i1 %403, label %407, label %404

404:                                              ; preds = %400
  %405 = load i32, ptr %402, align 8, !tbaa !98
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %408, label %407

407:                                              ; preds = %400, %404
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 655, ptr noundef nonnull @.str.9) #18
  br label %408

408:                                              ; preds = %404, %407
  %409 = load ptr, ptr %401, align 8, !tbaa !144
  %410 = getelementptr inbounds %struct.VEC_edge_base, ptr %409, i64 0, i32 2, i64 0
  %411 = load ptr, ptr %410, align 8, !tbaa !39
  br label %101, !llvm.loop !145

412:                                              ; preds = %171, %390, %382, %360
  %413 = phi ptr [ %364, %360 ], [ %373, %390 ], [ %373, %382 ], [ %105, %171 ]
  call void @free_EXPR_LIST_list(ptr noundef nonnull %6) #18
  %414 = load ptr, ptr %2, align 8, !tbaa !39
  %415 = load i32, ptr %414, align 8
  %416 = and i32 %415, 65535
  %417 = zext nneg i32 %416 to i64
  %418 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %417
  %419 = load i32, ptr %418, align 4, !tbaa !54
  %420 = icmp eq i32 %419, 9
  br i1 %420, label %422, label %421

421:                                              ; preds = %412
  store ptr %413, ptr %2, align 8, !tbaa !39
  br label %422

422:                                              ; preds = %421, %412
  call void @bitmap_obstack_free(ptr noundef %98) #18
  call void @bitmap_obstack_free(ptr noundef %99) #18
  br label %423

423:                                              ; preds = %171, %360, %89, %81, %9, %3, %422, %68, %67, %58, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @determine_max_iter(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #9 !prof !38 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 61
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !50
  %21 = add i64 %20, 1
  %22 = and i64 %21, %20
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %18, %12, %3
  %25 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 10
  %26 = load i32, ptr %25, align 4, !tbaa !113
  %27 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 9
  %28 = load i8, ptr %27, align 8, !tbaa !114
  %29 = zext i8 %28 to i32
  call void @get_mode_bounds(i32 noundef %26, i32 noundef %29, i32 noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %30 = load ptr, ptr %5, align 8, !tbaa !39
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !50
  %33 = load ptr, ptr %4, align 8, !tbaa !39
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !50
  %36 = sub nsw i64 %32, %35
  %37 = load i32, ptr %8, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 59
  br i1 %39, label %40, label %49

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !50
  br label %49

49:                                               ; preds = %24, %46
  %50 = phi i64 [ %48, %46 ], [ 1, %24 ]
  %51 = load i8, ptr %27, align 8, !tbaa !114
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 89, i32 85
  %54 = load i32, ptr %25, align 4, !tbaa !113
  %55 = call ptr @simplify_gen_relational(i32 noundef %53, i32 noundef 0, i32 noundef %54, ptr noundef %2, ptr noundef %30) #18
  store ptr %55, ptr %6, align 8, !tbaa !39
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6)
  %56 = load ptr, ptr %6, align 8, !tbaa !39
  %57 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = add i64 %36, -1
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i64 @fwrite(ptr nonnull @.str.36, i64 32, i64 1, ptr nonnull %61)
  br label %65

65:                                               ; preds = %59, %63, %49
  %66 = phi i64 [ %60, %63 ], [ %60, %59 ], [ %36, %49 ]
  %67 = udiv i64 %66, %50
  br label %68

68:                                               ; preds = %40, %18, %65
  %69 = phi i64 [ %67, %65 ], [ %20, %18 ], [ %36, %40 ]
  %70 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 5
  store i64 %69, ptr %70, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i64 %69
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @shorten_into_mode(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nocapture noundef %4) unnamed_addr #9 !prof !38 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %8 = zext i8 %3 to i32
  %9 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !62
  call void @get_mode_bounds(i32 noundef %1, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %11 = load i32, ptr %9, align 8, !tbaa !62
  %12 = load ptr, ptr %0, align 8, !tbaa !58
  %13 = load ptr, ptr %6, align 8, !tbaa !39
  %14 = call ptr @simplify_gen_relational(i32 noundef 85, i32 noundef 16, i32 noundef %11, ptr noundef %12, ptr noundef %13) #18
  %15 = load i32, ptr %9, align 8, !tbaa !62
  %16 = load ptr, ptr %0, align 8, !tbaa !58
  %17 = load ptr, ptr %7, align 8, !tbaa !39
  %18 = call ptr @simplify_gen_relational(i32 noundef 83, i32 noundef 16, i32 noundef %15, ptr noundef %16, ptr noundef %17) #18
  switch i32 %2, label %61 [
    i32 84, label %19
    i32 85, label %19
    i32 88, label %19
    i32 89, label %19
    i32 82, label %33
    i32 83, label %33
    i32 86, label %33
    i32 87, label %33
    i32 80, label %47
  ]

19:                                               ; preds = %5, %5, %5, %5
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %21 = icmp eq ptr %14, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %14, ptr noundef %24) #18
  store ptr %25, ptr %23, align 8, !tbaa !118
  br label %26

26:                                               ; preds = %22, %19
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %28 = icmp eq ptr %18, %27
  br i1 %28, label %62, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !116
  %32 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %18, ptr noundef %31) #18
  store ptr %32, ptr %30, align 8, !tbaa !116
  br label %62

33:                                               ; preds = %5, %5, %5, %5
  %34 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %35 = icmp eq ptr %18, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !118
  %39 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %18, ptr noundef %38) #18
  store ptr %39, ptr %37, align 8, !tbaa !118
  br label %40

40:                                               ; preds = %36, %33
  %41 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %42 = icmp eq ptr %14, %41
  br i1 %42, label %62, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !116
  %46 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %14, ptr noundef %45) #18
  store ptr %46, ptr %44, align 8, !tbaa !116
  br label %62

47:                                               ; preds = %5
  %48 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %49 = icmp eq ptr %18, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !118
  %53 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %18, ptr noundef %52) #18
  store ptr %53, ptr %51, align 8, !tbaa !118
  br label %54

54:                                               ; preds = %50, %47
  %55 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  %56 = icmp eq ptr %14, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !118
  %60 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %14, ptr noundef %59) #18
  store ptr %60, ptr %58, align 8, !tbaa !118
  br label %62

61:                                               ; preds = %5
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2071, ptr noundef nonnull @.str.9) #18
  br label %62

62:                                               ; preds = %26, %54, %57, %40, %43, %29, %61
  %63 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  store i32 %1, ptr %63, align 4, !tbaa !61
  %64 = icmp eq i8 %3, 0
  %65 = select i1 %64, i32 99, i32 98
  %66 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  store i32 %65, ptr %66, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @replace_single_def_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !38 {
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %90

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !50
  br label %10

10:                                               ; preds = %79, %7
  %11 = phi ptr [ undef, %7 ], [ %80, %79 ]
  %12 = phi i32 [ %9, %7 ], [ %81, %79 ]
  %13 = load ptr, ptr @df, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = load ptr, ptr %18, align 8, !tbaa !146
  %20 = icmp eq ptr %19, null
  br i1 %20, label %79, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i32, ptr %19, align 8
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %79, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -7
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 23
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = tail call ptr @single_set_2(ptr noundef nonnull %32, ptr noundef nonnull %39) #18
  br label %45

45:                                               ; preds = %29, %37, %43
  %46 = phi ptr [ %44, %43 ], [ null, %29 ], [ %39, %37 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %79, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 37
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !50
  %57 = icmp eq i32 %56, %12
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load ptr, ptr %30, align 8, !tbaa !50
  %60 = load ptr, ptr %59, align 8, !tbaa !84
  %61 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %60) #18
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  %66 = tail call i32 @function_invariant_p(ptr noundef %65) #18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !50
  br label %79

70:                                               ; preds = %63, %58
  %71 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 37
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !50
  br label %79, !llvm.loop !148

79:                                               ; preds = %10, %70, %45, %48, %54, %21, %25, %76, %68
  %80 = phi ptr [ %69, %68 ], [ %72, %76 ], [ %11, %25 ], [ %11, %21 ], [ %11, %54 ], [ %11, %48 ], [ %11, %45 ], [ %72, %70 ], [ %11, %10 ]
  %81 = phi i32 [ %12, %68 ], [ %78, %76 ], [ %12, %25 ], [ %12, %21 ], [ %12, %54 ], [ %12, %48 ], [ %12, %45 ], [ %12, %70 ], [ %12, %10 ]
  %82 = phi i32 [ 2, %68 ], [ 3, %76 ], [ 1, %25 ], [ 1, %21 ], [ 1, %54 ], [ 1, %48 ], [ 1, %45 ], [ 2, %70 ], [ 1, %10 ]
  switch i32 %82, label %90 [
    i32 2, label %83
    i32 3, label %10
  ]

83:                                               ; preds = %79
  %84 = tail call i32 @function_invariant_p(ptr noundef %80) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %1, align 8, !tbaa !39
  %88 = load ptr, ptr %0, align 8, !tbaa !39
  %89 = tail call ptr @simplify_replace_rtx(ptr noundef %87, ptr noundef %88, ptr noundef %80) #18
  store ptr %89, ptr %1, align 8, !tbaa !39
  br label %90

90:                                               ; preds = %79, %83, %2, %86
  %91 = phi i32 [ 1, %86 ], [ 0, %2 ], [ -1, %83 ], [ -1, %79 ]
  ret i32 %91
}

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @mark_altered(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #9 !prof !38 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !50
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %17) #18
  br label %19

19:                                               ; preds = %10, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @replace_in_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !38 {
  %4 = load ptr, ptr %0, align 8, !tbaa !39
  %5 = tail call ptr @simplify_replace_rtx(ptr noundef %4, ptr noundef %1, ptr noundef %2) #18
  store ptr %5, ptr %0, align 8, !tbaa !39
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %3, %7
  %8 = tail call i32 @for_each_rtx(ptr noundef nonnull %0, ptr noundef nonnull @replace_single_def_regs, ptr noundef nonnull %0) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %7, !llvm.loop !149

10:                                               ; preds = %7, %3
  ret void
}

declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @eliminate_implied_condition(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !38 {
  switch i32 %0, label %16 [
    i32 61, label %4
    i32 62, label %10
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 8, !tbaa !39
  %6 = tail call fastcc zeroext i8 @implies_p(ptr noundef %1, ptr noundef %5)
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @const_true_rtx, align 8, !tbaa !39
  store ptr %9, ptr %2, align 8, !tbaa !39
  br label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr %2, align 8, !tbaa !39
  %12 = tail call fastcc zeroext i8 @implies_p(ptr noundef %11, ptr noundef %1)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !39
  store ptr %15, ptr %2, align 8, !tbaa !39
  br label %17

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1800, ptr noundef nonnull @.str.9) #18
  br label %17

17:                                               ; preds = %10, %14, %4, %8, %16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @lowpart_subreg, ptr @subreg_lowpart_offset, i64 273}
!36 = !{ptr @lowpart_subreg, ptr @simplify_gen_subreg, i64 273}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !40, i64 8}
!44 = !{!"_IO_FILE", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !45, i64 112, !45, i64 116, !46, i64 120, !47, i64 128, !41, i64 130, !41, i64 131, !40, i64 136, !46, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !46, i64 184, !45, i64 192, !41, i64 196}
!45 = !{!"int", !41, i64 0}
!46 = !{!"long", !41, i64 0}
!47 = !{!"short", !41, i64 0}
!48 = !{!44, !40, i64 16}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!41, !41, i64 0}
!51 = !{!44, !40, i64 40}
!52 = !{!44, !40, i64 48}
!53 = !{!44, !45, i64 0}
!54 = !{!45, !45, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !40, i64 0}
!59 = !{!"rtx_iv", !40, i64 0, !40, i64 8, !45, i64 16, !40, i64 24, !40, i64 32, !45, i64 40, !45, i64 44, !45, i64 48}
!60 = !{!59, !40, i64 8}
!61 = !{!59, !45, i64 44}
!62 = !{!59, !45, i64 40}
!63 = !{!59, !45, i64 16}
!64 = !{!59, !40, i64 32}
!65 = !{!59, !40, i64 24}
!66 = !{!"function_entry_count", i64 273}
!67 = !{!68, !45, i64 36}
!68 = !{!"loop", !45, i64 0, !45, i64 4, !40, i64 8, !40, i64 16, !69, i64 24, !45, i64 32, !45, i64 36, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !70, i64 80, !70, i64 96, !41, i64 112, !41, i64 113, !45, i64 116, !40, i64 120, !40, i64 128, !41, i64 136, !40, i64 144}
!69 = !{!"lpt_decision", !45, i64 0, !45, i64 4}
!70 = !{!"", !46, i64 0, !46, i64 8}
!71 = !{!72, !45, i64 80}
!72 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !40, i64 48, !40, i64 56, !41, i64 64, !46, i64 72, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96}
!73 = distinct !{!73, !56, !57}
!74 = !{!75, !45, i64 0}
!75 = !{!"biv_entry", !45, i64 0, !59, i64 8}
!76 = !{!77, !45, i64 164}
!77 = !{!"df", !41, i64 0, !41, i64 64, !40, i64 128, !78, i64 136, !78, i64 176, !40, i64 216, !40, i64 224, !40, i64 232, !45, i64 240, !45, i64 244, !40, i64 248, !45, i64 256, !45, i64 260, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !40, i64 320, !40, i64 328, !40, i64 336, !45, i64 344, !45, i64 348, !40, i64 352, !45, i64 360, !45, i64 364, !41, i64 365, !41, i64 366}
!78 = !{!"df_ref_info", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36}
!79 = distinct !{!79, !56, !57}
!80 = !{i8 0, i8 2}
!81 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 4, !54, i64 24, i64 8, !39, i64 32, i64 8, !39, i64 40, i64 4, !54, i64 44, i64 4, !54, i64 48, i64 4, !54}
!82 = !{i32 0, i32 4}
!83 = distinct !{!83, !56, !57}
!84 = !{!85, !40, i64 0}
!85 = !{!"df_insn_info", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !45, i64 40}
!86 = !{!68, !40, i64 16}
!87 = !{!88, !45, i64 16}
!88 = !{!"dataflow", !40, i64 0, !40, i64 8, !45, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 53, !41, i64 54}
!89 = !{!88, !40, i64 8}
!90 = !{!77, !40, i64 216}
!91 = !{!77, !40, i64 128}
!92 = !{!93, !40, i64 32}
!93 = !{!"df_rd_bb_info", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32}
!94 = distinct !{!94, !56, !57}
!95 = !{!46, !46, i64 0}
!96 = !{!97, !41, i64 16}
!97 = !{!"niter_desc", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 17, !46, i64 24, !46, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !41, i64 64, !45, i64 68, !40, i64 72}
!98 = !{!99, !45, i64 0}
!99 = !{!"VEC_edge_base", !45, i64 0, !45, i64 4, !41, i64 8}
!100 = !{!101, !40, i64 8}
!101 = !{!"edge_def", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 24, !40, i64 32, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !46, i64 56}
!102 = !{!101, !40, i64 0}
!103 = !{!72, !40, i64 24}
!104 = !{!105, !40, i64 8}
!105 = !{!"rtl_bb_info", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !45, i64 32}
!106 = !{!72, !40, i64 8}
!107 = !{!97, !40, i64 0}
!108 = !{!97, !40, i64 8}
!109 = !{!101, !45, i64 48}
!110 = !{!97, !41, i64 17}
!111 = !{!97, !40, i64 72}
!112 = !{!97, !46, i64 32}
!113 = !{!97, !45, i64 68}
!114 = !{!97, !41, i64 64}
!115 = !{i64 0, i64 64}
!116 = !{!97, !40, i64 48}
!117 = distinct !{!117, !56, !57}
!118 = !{!97, !40, i64 56}
!119 = distinct !{!119, !56, !57}
!120 = !{!97, !40, i64 40}
!121 = !{!97, !46, i64 24}
!122 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 1, !50, i64 17, i64 1, !50, i64 24, i64 8, !95, i64 32, i64 8, !95, i64 40, i64 8, !39, i64 48, i64 8, !39, i64 56, i64 8, !39, i64 64, i64 1, !50, i64 68, i64 4, !54, i64 72, i64 8, !39}
!123 = distinct !{!123, !56, !57}
!124 = distinct !{!124, !56, !57}
!125 = !{!68, !45, i64 0}
!126 = !{!68, !40, i64 64}
!127 = !{!128, !40, i64 8}
!128 = !{!"df_link", !40, i64 0, !40, i64 8}
!129 = !{!128, !40, i64 0}
!130 = !{!77, !40, i64 248}
!131 = !{!85, !45, i64 40}
!132 = distinct !{!132, !56, !57}
!133 = distinct !{!133, !56, !57}
!134 = distinct !{!134, !57}
!135 = !{!136, !40, i64 8}
!136 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !40, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139}
!137 = !{!138, !40, i64 0}
!138 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 60, !45, i64 68, !45, i64 72}
!139 = distinct !{!139, !56, !57}
!140 = !{!105, !40, i64 0}
!141 = distinct !{!141, !56, !57}
!142 = distinct !{!142, !56, !57}
!143 = distinct !{!143, !56, !57}
!144 = !{!72, !40, i64 0}
!145 = distinct !{!145, !57}
!146 = !{!147, !40, i64 0}
!147 = !{!"df_reg_info", !40, i64 0, !45, i64 8}
!148 = distinct !{!148, !57}
!149 = distinct !{!149, !56, !57}
