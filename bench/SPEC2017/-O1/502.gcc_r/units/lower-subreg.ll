; ModuleID = 'lower-subreg.c'
source_filename = "lower-subreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_bitmap_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"subreg1\00", align 1
@pass_lower_subreg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_lower_subreg, ptr @rest_of_handle_lower_subreg, ptr null, ptr null, i32 0, i32 118, i32 0, i32 0, i32 0, i32 0, i32 11 } }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"subreg2\00", align 1
@pass_lower_subreg2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_handle_lower_subreg, ptr @rest_of_handle_lower_subreg2, ptr null, ptr null, i32 0, i32 118, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@flag_split_wide_types = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@decomposable_context = internal unnamed_addr global ptr null, align 8
@non_decomposable_context = internal unnamed_addr global ptr null, align 8
@reg_copy_graph = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@recog_data = external global %struct.recog_data, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"lower-subreg.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"; Splitting reg %u ->\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@.str.6 = private unnamed_addr constant [34 x i8] c"; Replacing insn: %d with insns: \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !41
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !40 {
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
  br i1 %23, label %7, label %24, !llvm.loop !57

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_lower_subreg() #9 !prof !60 !PGOFuncName !61 {
  %1 = load i32, ptr @flag_split_wide_types, align 4, !tbaa !56
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_lower_subreg() #10 !prof !62 !PGOFuncName !63 {
  tail call fastcc void @decompose_multiword_subregs()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_lower_subreg2() #10 !prof !62 !PGOFuncName !64 {
  tail call fastcc void @decompose_multiword_subregs()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decompose_multiword_subregs() unnamed_addr #10 !prof !60 !PGOFuncName !65 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @df, align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !66

4:                                                ; preds = %0
  %5 = tail call i32 @df_set_flags(i32 noundef 32) #15
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32 @max_reg_num() #15
  %8 = icmp ugt i32 %7, 53
  br i1 %8, label %9, label %30, !prof !67

9:                                                ; preds = %6
  %10 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !41
  %11 = zext i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %25
  %13 = phi i64 [ 53, %9 ], [ %26, %25 ]
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !68

17:                                               ; preds = %12
  %18 = load i32, ptr %15, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !52
  %24 = icmp ugt i8 %23, 4
  br i1 %24, label %28, label %25, !prof !68

25:                                               ; preds = %12, %17
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %30, label %12, !prof !69, !llvm.loop !70

28:                                               ; preds = %17
  %29 = trunc i64 %13 to i32
  br label %30

30:                                               ; preds = %28, %25, %6
  %31 = phi i32 [ 53, %6 ], [ %29, %28 ], [ %7, %25 ]
  %32 = icmp eq i32 %31, %7
  br i1 %32, label %946, label %33, !prof !71

33:                                               ; preds = %30
  %34 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  store ptr %34, ptr @decomposable_context, align 8, !tbaa !41
  %35 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  store ptr %35, ptr @non_decomposable_context, align 8, !tbaa !41
  %36 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %7) #15
  store ptr %36, ptr @reg_copy_graph, align 8, !tbaa !41
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %36, align 8, !tbaa !72
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi i32 [ %39, %38 ], [ 0, %33 ]
  %42 = sub nsw i32 %7, %41
  br i1 %37, label %49, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %36, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !74
  %46 = load i32, ptr %36, align 8, !tbaa !72
  %47 = sub i32 %45, %46
  %48 = icmp uge i32 %47, %42
  br label %51

49:                                               ; preds = %40
  %50 = icmp eq i32 %41, %7
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi i1 [ %48, %43 ], [ %50, %49 ]
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %36, i32 noundef %42) #15
  store ptr %54, ptr @reg_copy_graph, align 8, !tbaa !41
  br label %55

55:                                               ; preds = %51, %53
  %56 = load ptr, ptr @reg_copy_graph, align 8, !nonnull !75, !noundef !75
  store i32 %7, ptr %56, align 8, !tbaa !72
  %57 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %56, i64 0, i32 2
  %58 = zext i32 %7 to i64
  %59 = shl nuw nsw i64 %58, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %57, i8 0, i64 %59, i1 false)
  %60 = load ptr, ptr @cfun, align 8, !tbaa !41
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = load ptr, ptr %62, align 8, !tbaa !78
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !80
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !82
  %68 = icmp eq ptr %65, %67
  br i1 %68, label %263, label %69

69:                                               ; preds = %55, %254
  %70 = phi ptr [ %256, %254 ], [ %65, %55 ]
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = icmp eq ptr %73, null
  br i1 %74, label %254, label %75

75:                                               ; preds = %69, %250
  %76 = phi ptr [ %252, %250 ], [ %73, %69 ]
  %77 = load ptr, ptr %71, align 8, !tbaa !52
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !83
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = icmp eq ptr %76, %81
  br i1 %82, label %254, label %83

83:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #15
  %84 = load i32, ptr %76, align 8
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, -7
  %87 = icmp ult i32 %86, 4
  br i1 %87, label %88, label %250

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !52
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65534
  %93 = icmp eq i32 %92, 24
  br i1 %93, label %250, label %94

94:                                               ; preds = %88
  %95 = and i32 %91, 65535
  %96 = icmp eq i32 %95, 23
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = call ptr @single_set_2(ptr noundef nonnull %76, ptr noundef nonnull %90) #15
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi ptr [ %98, %97 ], [ %90, %94 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %174, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !52
  %105 = load i32, ptr %104, align 8
  %106 = trunc i32 %105 to i16
  switch i16 %106, label %174 [
    i16 65, label %107
    i16 68, label %107
    i16 99, label %107
  ]

107:                                              ; preds = %102, %102, %102
  %108 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %109 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  %111 = load ptr, ptr %108, align 8, !tbaa !52
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 37
  br i1 %114, label %115, label %174

115:                                              ; preds = %107
  %116 = load i32, ptr %110, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 37
  br i1 %118, label %119, label %174

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !52
  %122 = icmp ult i32 %121, 53
  br i1 %122, label %174, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !52
  %126 = icmp ult i32 %125, 53
  br i1 %126, label %174, label %127

127:                                              ; preds = %123
  %128 = lshr i32 %105, 16
  %129 = and i32 %128, 255
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !52
  %133 = and i8 %132, -2
  %134 = icmp eq i8 %133, 2
  br i1 %134, label %135, label %174

135:                                              ; preds = %127
  %136 = and i32 %105, 65535
  %137 = icmp eq i32 %136, 99
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = lshr i32 %116, 16
  %140 = and i32 %139, 255
  %141 = load i32, ptr @word_mode, align 4, !tbaa !56
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %174

143:                                              ; preds = %138
  %144 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %130
  %145 = load i8, ptr %144, align 1, !tbaa !52
  %146 = icmp eq i8 %145, 8
  br i1 %146, label %164, label %174

147:                                              ; preds = %135
  %148 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !52
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 30
  br i1 %152, label %153, label %174

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1
  %155 = load i64, ptr %154, align 8, !tbaa !52
  %156 = icmp slt i64 %155, 32
  br i1 %156, label %174, label %157

157:                                              ; preds = %153
  %158 = lshr i32 %116, 16
  %159 = and i32 %158, 255
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !52
  %163 = icmp eq i8 %162, 8
  br i1 %163, label %164, label %174

164:                                              ; preds = %157, %143
  %165 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  %166 = call zeroext i8 @bitmap_set_bit(ptr noundef %165, i32 noundef %121) #15
  %167 = load i32, ptr %104, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 99
  br i1 %169, label %250, label %170

170:                                              ; preds = %164
  %171 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  %172 = load i32, ptr %124, align 8, !tbaa !52
  %173 = call zeroext i8 @bitmap_set_bit(ptr noundef %171, i32 noundef %172) #15
  br label %250

174:                                              ; preds = %157, %102, %147, %153, %138, %143, %107, %115, %119, %123, %127, %99
  %175 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 1, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !52
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load ptr, ptr %89, align 8, !tbaa !52
  %180 = call i32 @recog(ptr noundef %179, ptr noundef nonnull %76, ptr noundef null) #15
  store i32 %180, ptr %175, align 8, !tbaa !52
  br label %181

181:                                              ; preds = %174, %178
  call void @extract_insn(ptr noundef nonnull %76) #15
  %182 = call fastcc ptr @simple_move(ptr noundef nonnull %76)
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 0, ptr %1, align 4, !tbaa !56
  br label %226

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !52
  %188 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1, i32 0, i32 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !52
  %190 = load i32, ptr %187, align 8
  %191 = and i32 %190, 65535
  %192 = icmp eq i32 %191, 37
  br i1 %192, label %193, label %225

193:                                              ; preds = %185
  %194 = load i32, ptr %189, align 8
  %195 = and i32 %194, 65535
  %196 = icmp eq i32 %195, 37
  br i1 %196, label %197, label %225

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !52
  %200 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1
  %201 = load i32, ptr %200, align 8, !tbaa !52
  %202 = icmp ult i32 %199, 53
  %203 = icmp ult i32 %201, 53
  %204 = select i1 %202, i1 true, i1 %203
  br i1 %204, label %225, label %205

205:                                              ; preds = %197
  %206 = lshr i32 %190, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !52
  %211 = icmp ult i8 %210, 5
  br i1 %211, label %225, label %212

212:                                              ; preds = %205
  %213 = load ptr, ptr @reg_copy_graph, align 8
  %214 = zext i32 %201 to i64
  %215 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %213, i64 0, i32 2, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !41
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %220 = load ptr, ptr @reg_copy_graph, align 8
  %221 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %220, i64 0, i32 2, i64 %214
  store ptr %219, ptr %221, align 8, !tbaa !41
  br label %222

222:                                              ; preds = %218, %212
  %223 = phi ptr [ %219, %218 ], [ %216, %212 ]
  %224 = call zeroext i8 @bitmap_set_bit(ptr noundef %223, i32 noundef %199) #15
  store i32 1, ptr %1, align 4, !tbaa !56
  br label %226

225:                                              ; preds = %205, %197, %193, %185
  store i32 2, ptr %1, align 4, !tbaa !56
  br label %226

226:                                              ; preds = %222, %225, %184
  %227 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !85
  %228 = icmp sgt i8 %227, 0
  br i1 %228, label %229, label %250

229:                                              ; preds = %226
  %230 = zext nneg i8 %227 to i64
  %231 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %232

232:                                              ; preds = %229, %247
  %233 = phi i64 [ 0, %229 ], [ %248, %247 ]
  %234 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %233
  %235 = call i32 @for_each_rtx(ptr noundef nonnull %234, ptr noundef nonnull @find_decomposable_subregs, ptr noundef nonnull %1) #15
  %236 = load i32, ptr %1, align 4, !tbaa !56
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %247

238:                                              ; preds = %232
  %239 = load ptr, ptr %231, align 8, !tbaa !52
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 17
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = icmp eq i64 %233, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %243
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1147, ptr noundef nonnull @.str.3) #15
  br label %246

246:                                              ; preds = %243, %245
  store i32 0, ptr %1, align 4, !tbaa !56
  br label %247

247:                                              ; preds = %232, %238, %246
  %248 = add nuw nsw i64 %233, 1
  %249 = icmp eq i64 %248, %230
  br i1 %249, label %250, label %232, !llvm.loop !87

250:                                              ; preds = %247, %226, %170, %164, %88, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  %251 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %252 = load ptr, ptr %251, align 8, !tbaa !52
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %75, !llvm.loop !88

254:                                              ; preds = %75, %250, %69
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 6
  %256 = load ptr, ptr %255, align 8, !tbaa !80
  %257 = load ptr, ptr @cfun, align 8, !tbaa !41
  %258 = getelementptr inbounds %struct.function, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !76
  %260 = getelementptr inbounds %struct.control_flow_graph, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !82
  %262 = icmp eq ptr %256, %261
  br i1 %262, label %263, label %69, !llvm.loop !89

263:                                              ; preds = %254, %55
  %264 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  %265 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !41
  %266 = call zeroext i8 @bitmap_and_compl_into(ptr noundef %264, ptr noundef %265) #15
  %267 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  %268 = load ptr, ptr %267, align 8, !tbaa !90
  %269 = icmp eq ptr %268, null
  br i1 %269, label %921, label %270

270:                                              ; preds = %263
  %271 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %272 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  %273 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  call void @bitmap_copy(ptr noundef %271, ptr noundef %273) #15
  br label %274

274:                                              ; preds = %359, %270
  call void @bitmap_clear(ptr noundef %272) #15
  %275 = load ptr, ptr %271, align 8, !tbaa !90
  %276 = icmp eq ptr %275, null
  %277 = select i1 %276, ptr @bitmap_zero_bits, ptr %275
  %278 = getelementptr inbounds %struct.bitmap_element_def, ptr %277, i64 0, i32 2
  %279 = load i32, ptr %278, align 8, !tbaa !92
  %280 = shl i32 %279, 7
  %281 = getelementptr inbounds %struct.bitmap_element_def, ptr %277, i64 0, i32 3
  %282 = load i64, ptr %281, align 8, !tbaa !94
  %283 = icmp eq i64 %282, 0
  %284 = zext i1 %283 to i32
  %285 = or disjoint i32 %280, %284
  br label %286

286:                                              ; preds = %356, %274
  %287 = phi i32 [ 0, %274 ], [ %342, %356 ]
  %288 = phi i64 [ %282, %274 ], [ %357, %356 ]
  %289 = phi ptr [ %277, %274 ], [ %344, %356 ]
  %290 = phi i32 [ %285, %274 ], [ %358, %356 ]
  %291 = icmp eq i64 %288, 0
  br i1 %291, label %306, label %292

292:                                              ; preds = %320, %286
  %293 = phi i32 [ %287, %286 ], [ %321, %320 ]
  %294 = phi i64 [ %288, %286 ], [ %325, %320 ]
  %295 = phi ptr [ %289, %286 ], [ %312, %320 ]
  %296 = phi i32 [ %290, %286 ], [ %322, %320 ]
  %297 = and i64 %294, 1
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %341

299:                                              ; preds = %292, %299
  %300 = phi i32 [ %303, %299 ], [ %296, %292 ]
  %301 = phi i64 [ %302, %299 ], [ %294, %292 ]
  %302 = lshr exact i64 %301, 1
  %303 = add i32 %300, 1
  %304 = and i64 %301, 2
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %299, label %341, !llvm.loop !95

306:                                              ; preds = %286
  %307 = add i32 %290, 63
  %308 = and i32 %307, -64
  %309 = add i32 %287, 1
  br label %310

310:                                              ; preds = %337, %306
  %311 = phi i64 [ %288, %306 ], [ %332, %337 ]
  %312 = phi ptr [ %289, %306 ], [ %335, %337 ]
  %313 = phi i32 [ %308, %306 ], [ %340, %337 ]
  %314 = phi i32 [ %309, %306 ], [ 0, %337 ]
  %315 = icmp eq i32 %314, 2
  br i1 %315, label %331, label %316

316:                                              ; preds = %310
  %317 = add i32 %313, 128
  %318 = shl i32 %314, 6
  %319 = sub i32 %317, %318
  br label %320

320:                                              ; preds = %316, %327
  %321 = phi i32 [ %329, %327 ], [ %314, %316 ]
  %322 = phi i32 [ %328, %327 ], [ %313, %316 ]
  %323 = zext i32 %321 to i64
  %324 = getelementptr inbounds %struct.bitmap_element_def, ptr %312, i64 0, i32 3, i64 %323
  %325 = load i64, ptr %324, align 8, !tbaa !94
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %292

327:                                              ; preds = %320
  %328 = add i32 %322, 64
  %329 = add i32 %321, 1
  %330 = icmp eq i32 %329, 2
  br i1 %330, label %331, label %320, !llvm.loop !96

331:                                              ; preds = %327, %310
  %332 = phi i64 [ %311, %310 ], [ %325, %327 ]
  %333 = phi i32 [ %313, %310 ], [ %319, %327 ]
  %334 = phi i32 [ %314, %310 ], [ 2, %327 ]
  %335 = load ptr, ptr %312, align 8, !tbaa !97
  %336 = icmp eq ptr %335, null
  br i1 %336, label %341, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.bitmap_element_def, ptr %335, i64 0, i32 2
  %339 = load i32, ptr %338, align 8, !tbaa !92
  %340 = shl i32 %339, 7
  br label %310, !llvm.loop !98

341:                                              ; preds = %331, %299, %292
  %342 = phi i32 [ %293, %292 ], [ %293, %299 ], [ %334, %331 ]
  %343 = phi i64 [ %294, %292 ], [ %302, %299 ], [ %332, %331 ]
  %344 = phi ptr [ %295, %292 ], [ %295, %299 ], [ %335, %331 ]
  %345 = phi i32 [ %296, %292 ], [ %303, %299 ], [ %333, %331 ]
  %346 = phi i1 [ false, %292 ], [ false, %299 ], [ true, %331 ]
  br i1 %346, label %359, label %347

347:                                              ; preds = %341
  %348 = load ptr, ptr @reg_copy_graph, align 8
  %349 = zext i32 %345 to i64
  %350 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %348, i64 0, i32 2, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !41
  %352 = icmp eq ptr %351, null
  br i1 %352, label %356, label %353

353:                                              ; preds = %347
  %354 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !41
  %355 = call zeroext i8 @bitmap_ior_and_compl_into(ptr noundef %272, ptr noundef nonnull %351, ptr noundef %354) #15
  br label %356

356:                                              ; preds = %353, %347
  %357 = lshr i64 %343, 1
  %358 = add i32 %345, 1
  br label %286, !llvm.loop !99

359:                                              ; preds = %341
  %360 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  %361 = call zeroext i8 @bitmap_and_compl(ptr noundef nonnull %271, ptr noundef %272, ptr noundef %360) #15
  %362 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  %363 = call zeroext i8 @bitmap_ior_into(ptr noundef %362, ptr noundef %272) #15
  %364 = load ptr, ptr %271, align 8, !tbaa !90
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %274, !llvm.loop !100

366:                                              ; preds = %359
  call void @bitmap_obstack_free(ptr noundef nonnull %271) #15
  call void @bitmap_obstack_free(ptr noundef %272) #15
  %367 = load ptr, ptr @cfun, align 8, !tbaa !41
  %368 = getelementptr inbounds %struct.function, ptr %367, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !76
  %370 = getelementptr inbounds %struct.control_flow_graph, ptr %369, i64 0, i32 5
  %371 = load i32, ptr %370, align 8, !tbaa !101
  %372 = call ptr @sbitmap_alloc(i32 noundef %371) #15
  call void @sbitmap_zero(ptr noundef %372) #15
  %373 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  %374 = load ptr, ptr %373, align 8, !tbaa !90
  %375 = icmp eq ptr %374, null
  %376 = select i1 %375, ptr @bitmap_zero_bits, ptr %374
  %377 = getelementptr inbounds %struct.bitmap_element_def, ptr %376, i64 0, i32 2
  %378 = load i32, ptr %377, align 8, !tbaa !92
  %379 = shl i32 %378, 7
  %380 = getelementptr inbounds %struct.bitmap_element_def, ptr %376, i64 0, i32 3
  %381 = load i64, ptr %380, align 8, !tbaa !94
  %382 = icmp eq i64 %381, 0
  %383 = zext i1 %382 to i32
  %384 = or disjoint i32 %379, %383
  br label %385

385:                                              ; preds = %499, %366
  %386 = phi i64 [ %381, %366 ], [ %500, %499 ]
  %387 = phi i32 [ 0, %366 ], [ %442, %499 ]
  %388 = phi ptr [ %376, %366 ], [ %443, %499 ]
  %389 = phi i32 [ %384, %366 ], [ %501, %499 ]
  %390 = icmp eq i64 %386, 0
  br i1 %390, label %405, label %391

391:                                              ; preds = %419, %385
  %392 = phi i64 [ %386, %385 ], [ %424, %419 ]
  %393 = phi i32 [ %387, %385 ], [ %420, %419 ]
  %394 = phi ptr [ %388, %385 ], [ %411, %419 ]
  %395 = phi i32 [ %389, %385 ], [ %421, %419 ]
  %396 = and i64 %392, 1
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %440

398:                                              ; preds = %391, %398
  %399 = phi i32 [ %402, %398 ], [ %395, %391 ]
  %400 = phi i64 [ %401, %398 ], [ %392, %391 ]
  %401 = lshr exact i64 %400, 1
  %402 = add i32 %399, 1
  %403 = and i64 %400, 2
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %398, label %440, !llvm.loop !95

405:                                              ; preds = %385
  %406 = add i32 %389, 63
  %407 = and i32 %406, -64
  %408 = add i32 %387, 1
  br label %409

409:                                              ; preds = %436, %405
  %410 = phi i64 [ %386, %405 ], [ %431, %436 ]
  %411 = phi ptr [ %388, %405 ], [ %434, %436 ]
  %412 = phi i32 [ %407, %405 ], [ %439, %436 ]
  %413 = phi i32 [ %408, %405 ], [ 0, %436 ]
  %414 = icmp eq i32 %413, 2
  br i1 %414, label %430, label %415

415:                                              ; preds = %409
  %416 = add i32 %412, 128
  %417 = shl i32 %413, 6
  %418 = sub i32 %416, %417
  br label %419

419:                                              ; preds = %415, %426
  %420 = phi i32 [ %428, %426 ], [ %413, %415 ]
  %421 = phi i32 [ %427, %426 ], [ %412, %415 ]
  %422 = zext i32 %420 to i64
  %423 = getelementptr inbounds %struct.bitmap_element_def, ptr %411, i64 0, i32 3, i64 %422
  %424 = load i64, ptr %423, align 8, !tbaa !94
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %391

426:                                              ; preds = %419
  %427 = add i32 %421, 64
  %428 = add i32 %420, 1
  %429 = icmp eq i32 %428, 2
  br i1 %429, label %430, label %419, !llvm.loop !96

430:                                              ; preds = %426, %409
  %431 = phi i64 [ %410, %409 ], [ %424, %426 ]
  %432 = phi i32 [ %412, %409 ], [ %418, %426 ]
  %433 = phi i32 [ %413, %409 ], [ 2, %426 ]
  %434 = load ptr, ptr %411, align 8, !tbaa !97
  %435 = icmp eq ptr %434, null
  br i1 %435, label %440, label %436

436:                                              ; preds = %430
  %437 = getelementptr inbounds %struct.bitmap_element_def, ptr %434, i64 0, i32 2
  %438 = load i32, ptr %437, align 8, !tbaa !92
  %439 = shl i32 %438, 7
  br label %409, !llvm.loop !98

440:                                              ; preds = %430, %398, %391
  %441 = phi i64 [ %392, %391 ], [ %401, %398 ], [ %431, %430 ]
  %442 = phi i32 [ %393, %391 ], [ %393, %398 ], [ %433, %430 ]
  %443 = phi ptr [ %394, %391 ], [ %394, %398 ], [ %434, %430 ]
  %444 = phi i32 [ %395, %391 ], [ %402, %398 ], [ %432, %430 ]
  %445 = phi i1 [ false, %391 ], [ false, %398 ], [ true, %430 ]
  br i1 %445, label %502, label %446

446:                                              ; preds = %440
  %447 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !41
  %448 = zext i32 %444 to i64
  %449 = getelementptr inbounds ptr, ptr %447, i64 %448
  %450 = load ptr, ptr %449, align 8, !tbaa !41
  store ptr null, ptr %449, align 8, !tbaa !41
  %451 = load i32, ptr %450, align 8
  %452 = lshr i32 %451, 16
  %453 = and i32 %452, 255
  %454 = zext nneg i32 %453 to i64
  %455 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !52
  %457 = zext i8 %456 to i32
  %458 = add nuw nsw i32 %457, 3
  %459 = lshr i32 %458, 2
  %460 = call ptr @rtvec_alloc(i32 noundef %459) #15
  %461 = icmp eq i8 %456, 0
  br i1 %461, label %473, label %462

462:                                              ; preds = %446
  %463 = zext nneg i32 %459 to i64
  br label %464

464:                                              ; preds = %462, %464
  %465 = phi i64 [ 0, %462 ], [ %471, %464 ]
  %466 = load i32, ptr @word_mode, align 4, !tbaa !56
  %467 = trunc i64 %465 to i32
  %468 = shl i32 %467, 2
  %469 = call ptr @gen_reg_rtx_offset(ptr noundef nonnull %450, i32 noundef %466, i32 noundef %468) #15
  %470 = getelementptr inbounds %struct.rtvec_def, ptr %460, i64 0, i32 1, i64 %465
  store ptr %469, ptr %470, align 8, !tbaa !41
  %471 = add nuw nsw i64 %465, 1
  %472 = icmp eq i64 %471, %463
  br i1 %472, label %473, label %464, !llvm.loop !102

473:                                              ; preds = %464, %446
  %474 = load i32, ptr %450, align 8
  %475 = and i32 %474, -65536
  %476 = or disjoint i32 %475, 42
  store i32 %476, ptr %450, align 8
  %477 = getelementptr inbounds %struct.rtx_def, ptr %450, i64 0, i32 1
  store ptr %460, ptr %477, align 8, !tbaa !52
  %478 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %479 = icmp eq ptr %478, null
  br i1 %479, label %499, label %480

480:                                              ; preds = %473
  %481 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %478, ptr noundef nonnull @.str.4, i32 noundef %444)
  %482 = icmp eq i8 %456, 0
  br i1 %482, label %496, label %483

483:                                              ; preds = %480
  %484 = zext nneg i32 %459 to i64
  br label %485

485:                                              ; preds = %483, %485
  %486 = phi i64 [ 0, %483 ], [ %494, %485 ]
  %487 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %488 = load ptr, ptr %477, align 8, !tbaa !52
  %489 = getelementptr inbounds %struct.rtvec_def, ptr %488, i64 0, i32 1, i64 %486
  %490 = load ptr, ptr %489, align 8, !tbaa !41
  %491 = getelementptr inbounds %struct.rtx_def, ptr %490, i64 0, i32 1
  %492 = load i32, ptr %491, align 8, !tbaa !52
  %493 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %487, ptr noundef nonnull @.str.5, i32 noundef %492)
  %494 = add nuw nsw i64 %486, 1
  %495 = icmp eq i64 %494, %484
  br i1 %495, label %496, label %485, !llvm.loop !103

496:                                              ; preds = %485, %480
  %497 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %498 = call i32 @fputc(i32 noundef 10, ptr noundef %497)
  br label %499

499:                                              ; preds = %473, %496
  %500 = lshr i64 %441, 1
  %501 = add i32 %444, 1
  br label %385, !llvm.loop !104

502:                                              ; preds = %440
  %503 = load ptr, ptr @cfun, align 8, !tbaa !41
  %504 = getelementptr inbounds %struct.function, ptr %503, i64 0, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !76
  %506 = load ptr, ptr %505, align 8, !tbaa !78
  %507 = getelementptr inbounds %struct.basic_block_def, ptr %506, i64 0, i32 6
  %508 = load ptr, ptr %507, align 8, !tbaa !80
  %509 = getelementptr inbounds %struct.control_flow_graph, ptr %505, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !82
  %511 = icmp eq ptr %508, %510
  br i1 %511, label %826, label %512

512:                                              ; preds = %502, %817
  %513 = phi ptr [ %819, %817 ], [ %508, %502 ]
  %514 = getelementptr inbounds %struct.basic_block_def, ptr %513, i64 0, i32 7
  %515 = load ptr, ptr %514, align 8, !tbaa !52
  %516 = load ptr, ptr %515, align 8, !tbaa !52
  %517 = icmp eq ptr %516, null
  br i1 %517, label %817, label %518

518:                                              ; preds = %512, %812
  %519 = phi ptr [ %815, %812 ], [ %516, %512 ]
  %520 = load ptr, ptr %514, align 8, !tbaa !52
  %521 = getelementptr inbounds %struct.rtl_bb_info, ptr %520, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !83
  %523 = getelementptr inbounds %struct.rtx_def, ptr %522, i64 0, i32 1, i32 0, i32 0, i64 2
  %524 = load ptr, ptr %523, align 8, !tbaa !52
  %525 = icmp eq ptr %519, %524
  br i1 %525, label %817, label %526

526:                                              ; preds = %518
  %527 = load i32, ptr %519, align 8
  %528 = and i32 %527, 65535
  %529 = add nsw i32 %528, -7
  %530 = icmp ult i32 %529, 4
  br i1 %530, label %531, label %812

531:                                              ; preds = %526
  %532 = getelementptr inbounds %struct.rtx_def, ptr %519, i64 1
  %533 = load ptr, ptr %532, align 8, !tbaa !52
  %534 = load i32, ptr %533, align 8
  %535 = trunc i32 %534 to i16
  switch i16 %535, label %589 [
    i16 25, label %536
    i16 24, label %575
  ]

536:                                              ; preds = %531
  %537 = getelementptr inbounds %struct.rtx_def, ptr %533, i64 0, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !52
  %539 = load i32, ptr %538, align 8
  %540 = trunc i32 %539 to i16
  switch i16 %540, label %812 [
    i16 42, label %547
    i16 39, label %541
  ]

541:                                              ; preds = %536
  %542 = getelementptr inbounds %struct.rtx_def, ptr %538, i64 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !52
  %544 = load i32, ptr %543, align 8
  %545 = and i32 %544, 65535
  %546 = icmp eq i32 %545, 42
  br i1 %546, label %547, label %812

547:                                              ; preds = %536, %541
  %548 = lshr i32 %539, 16
  %549 = and i32 %548, 255
  %550 = zext nneg i32 %549 to i64
  %551 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %550
  %552 = load i8, ptr %551, align 1, !tbaa !52
  %553 = zext i8 %552 to i32
  %554 = add nuw nsw i32 %553, 3
  %555 = lshr i32 %554, 2
  %556 = load i32, ptr @word_mode, align 4, !tbaa !56
  %557 = call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %556, ptr noundef nonnull %538, i32 noundef %549, i32 noundef 0)
  %558 = call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %537, ptr noundef %557, i8 noundef zeroext 0) #15
  %559 = call zeroext i8 @df_insn_rescan(ptr noundef nonnull %519) #15
  %560 = icmp eq i8 %558, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %547
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 859, ptr noundef nonnull @.str.3) #15
  br label %562

562:                                              ; preds = %561, %547
  %563 = add nsw i32 %555, -1
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %574, label %565

565:                                              ; preds = %562, %565
  %566 = phi i32 [ %572, %565 ], [ %563, %562 ]
  %567 = load i32, ptr @word_mode, align 4, !tbaa !56
  %568 = shl i32 %566, 2
  %569 = call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %567, ptr noundef nonnull %538, i32 noundef %549, i32 noundef %568)
  %570 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %569) #15
  %571 = call ptr @emit_insn_after(ptr noundef %570, ptr noundef nonnull %519) #15
  %572 = add i32 %566, -1
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %565, !llvm.loop !105

574:                                              ; preds = %565, %562
  call fastcc void @resolve_reg_notes(ptr noundef nonnull %519)
  br label %812

575:                                              ; preds = %531
  %576 = getelementptr inbounds %struct.rtx_def, ptr %533, i64 0, i32 1
  %577 = load ptr, ptr %576, align 8, !tbaa !52
  %578 = load i32, ptr %577, align 8
  %579 = trunc i32 %578 to i16
  switch i16 %579, label %588 [
    i16 42, label %586
    i16 39, label %580
  ]

580:                                              ; preds = %575
  %581 = getelementptr inbounds %struct.rtx_def, ptr %577, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !52
  %583 = load i32, ptr %582, align 8
  %584 = and i32 %583, 65535
  %585 = icmp eq i32 %584, 42
  br i1 %585, label %586, label %588

586:                                              ; preds = %575, %580
  %587 = call ptr @delete_insn(ptr noundef nonnull %519) #15
  br label %812

588:                                              ; preds = %580, %575
  call fastcc void @resolve_reg_notes(ptr noundef nonnull %519)
  br label %812

589:                                              ; preds = %531
  %590 = icmp eq i32 %528, 7
  br i1 %590, label %591, label %594

591:                                              ; preds = %589
  %592 = call i32 @for_each_rtx(ptr noundef nonnull %532, ptr noundef nonnull @adjust_decomposed_uses, ptr noundef null) #15
  %593 = call zeroext i8 @df_insn_rescan(ptr noundef nonnull %519) #15
  call fastcc void @resolve_reg_notes(ptr noundef nonnull %519)
  br label %812

594:                                              ; preds = %589
  %595 = getelementptr inbounds %struct.rtx_def, ptr %519, i64 1, i32 1
  %596 = load i32, ptr %595, align 8, !tbaa !52
  %597 = icmp slt i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %594
  %599 = call i32 @recog(ptr noundef nonnull %533, ptr noundef nonnull %519, ptr noundef null) #15
  store i32 %599, ptr %595, align 8, !tbaa !52
  br label %600

600:                                              ; preds = %594, %598
  call void @extract_insn(ptr noundef nonnull %519) #15
  %601 = call fastcc ptr @simple_move(ptr noundef nonnull %519)
  %602 = icmp eq ptr %601, null
  br i1 %602, label %653, label %603

603:                                              ; preds = %600
  %604 = call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %519) #15
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %613, label %606

606:                                              ; preds = %603
  %607 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !56
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %612, label %609

609:                                              ; preds = %606
  %610 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %519) #15
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %609, %606
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1216, ptr noundef nonnull @.str.3) #15
  br label %613

613:                                              ; preds = %603, %609, %612
  %614 = call fastcc ptr @resolve_simple_move(ptr noundef nonnull %601, ptr noundef nonnull %519)
  %615 = icmp eq ptr %614, %519
  br i1 %615, label %774, label %616

616:                                              ; preds = %613
  %617 = getelementptr inbounds %struct.rtx_def, ptr %614, i64 1, i32 1
  %618 = load i32, ptr %617, align 8, !tbaa !52
  %619 = icmp slt i32 %618, 0
  br i1 %619, label %620, label %624

620:                                              ; preds = %616
  %621 = getelementptr inbounds %struct.rtx_def, ptr %614, i64 1
  %622 = load ptr, ptr %621, align 8, !tbaa !52
  %623 = call i32 @recog(ptr noundef %622, ptr noundef %614, ptr noundef null) #15
  store i32 %623, ptr %617, align 8, !tbaa !52
  br label %624

624:                                              ; preds = %616, %620
  call void @extract_insn(ptr noundef %614) #15
  br i1 %605, label %774, label %625

625:                                              ; preds = %624
  %626 = getelementptr inbounds %struct.basic_block_def, ptr %513, i64 0, i32 9
  %627 = load i32, ptr %626, align 8, !tbaa !106
  %628 = load ptr, ptr %372, align 8, !tbaa !107
  %629 = icmp eq ptr %628, null
  br i1 %629, label %644, label %630

630:                                              ; preds = %625
  %631 = lshr i32 %627, 6
  %632 = zext nneg i32 %631 to i64
  %633 = getelementptr inbounds %struct.simple_bitmap_def, ptr %372, i64 0, i32 3, i64 %632
  %634 = load i64, ptr %633, align 8, !tbaa !94
  %635 = and i32 %627, 63
  %636 = zext nneg i32 %635 to i64
  %637 = shl nuw i64 1, %636
  %638 = and i64 %634, %637
  %639 = icmp eq i64 %638, 0
  br i1 %639, label %640, label %644

640:                                              ; preds = %630
  %641 = getelementptr inbounds i8, ptr %628, i64 %632
  %642 = load i8, ptr %641, align 1, !tbaa !52
  %643 = add i8 %642, 1
  store i8 %643, ptr %641, align 1, !tbaa !52
  br label %644

644:                                              ; preds = %625, %630, %640
  %645 = and i32 %627, 63
  %646 = zext nneg i32 %645 to i64
  %647 = shl nuw i64 1, %646
  %648 = lshr i32 %627, 6
  %649 = zext nneg i32 %648 to i64
  %650 = getelementptr inbounds %struct.simple_bitmap_def, ptr %372, i64 0, i32 3, i64 %649
  %651 = load i64, ptr %650, align 8, !tbaa !94
  %652 = or i64 %651, %647
  store i64 %652, ptr %650, align 8, !tbaa !94
  br label %774

653:                                              ; preds = %600
  %654 = load i32, ptr %519, align 8
  %655 = and i32 %654, 65535
  %656 = add nsw i32 %655, -7
  %657 = icmp ult i32 %656, 4
  br i1 %657, label %658, label %665

658:                                              ; preds = %653
  %659 = load ptr, ptr %532, align 8, !tbaa !52
  %660 = load i32, ptr %659, align 8
  %661 = and i32 %660, 65535
  %662 = icmp eq i32 %661, 23
  br i1 %662, label %665, label %663

663:                                              ; preds = %658
  %664 = call ptr @single_set_2(ptr noundef nonnull %519, ptr noundef nonnull %659) #15
  br label %665

665:                                              ; preds = %663, %658, %653
  %666 = phi ptr [ %664, %663 ], [ null, %653 ], [ %659, %658 ]
  %667 = icmp eq ptr %666, null
  br i1 %667, label %762, label %668

668:                                              ; preds = %665
  %669 = getelementptr inbounds %struct.rtx_def, ptr %666, i64 0, i32 1
  %670 = getelementptr inbounds %struct.rtx_def, ptr %666, i64 0, i32 1, i32 0, i32 0, i64 1
  %671 = load ptr, ptr %670, align 8, !tbaa !52
  %672 = load i32, ptr %671, align 8
  %673 = trunc i32 %672 to i16
  switch i16 %673, label %762 [
    i16 65, label %674
    i16 68, label %674
    i16 99, label %674
  ]

674:                                              ; preds = %668, %668, %668
  %675 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 0, i32 1
  %676 = load ptr, ptr %675, align 8, !tbaa !52
  %677 = load ptr, ptr %669, align 8, !tbaa !52
  %678 = load i32, ptr %677, align 8
  %679 = and i32 %678, 65535
  %680 = icmp eq i32 %679, 42
  br i1 %680, label %685, label %681

681:                                              ; preds = %674
  %682 = load i32, ptr %676, align 8
  %683 = and i32 %682, 65535
  %684 = icmp eq i32 %683, 42
  br i1 %684, label %685, label %762

685:                                              ; preds = %681, %674
  %686 = and i32 %672, 65535
  %687 = icmp eq i32 %686, 68
  %688 = icmp eq i32 %686, 99
  %689 = or i1 %688, %687
  %690 = select i1 %689, i32 0, i32 4
  %691 = xor i32 %690, 4
  %692 = select i1 %687, i32 4, i32 0
  call void @start_sequence() #15
  %693 = load i32, ptr @word_mode, align 4, !tbaa !56
  %694 = load ptr, ptr %669, align 8, !tbaa !52
  %695 = load i32, ptr %694, align 8
  %696 = lshr i32 %695, 16
  %697 = and i32 %696, 255
  %698 = call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %693, ptr noundef nonnull %694, i32 noundef %697, i32 noundef %690)
  %699 = load i32, ptr @word_mode, align 4, !tbaa !56
  %700 = load ptr, ptr %669, align 8, !tbaa !52
  %701 = load i32, ptr %700, align 8
  %702 = lshr i32 %701, 16
  %703 = and i32 %702, 255
  %704 = call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %699, ptr noundef nonnull %700, i32 noundef %703, i32 noundef %691)
  %705 = load i32, ptr @word_mode, align 4, !tbaa !56
  %706 = load i32, ptr %676, align 8
  %707 = lshr i32 %706, 16
  %708 = and i32 %707, 255
  %709 = call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %705, ptr noundef nonnull %676, i32 noundef %708, i32 noundef %692)
  %710 = load i32, ptr %671, align 8
  %711 = and i32 %710, 65535
  %712 = icmp eq i32 %711, 99
  br i1 %712, label %728, label %713

713:                                              ; preds = %685
  %714 = getelementptr inbounds %struct.rtx_def, ptr %671, i64 0, i32 1, i32 0, i32 0, i64 1
  %715 = load ptr, ptr %714, align 8, !tbaa !52
  %716 = getelementptr inbounds %struct.rtx_def, ptr %715, i64 0, i32 1
  %717 = load i64, ptr %716, align 8, !tbaa !52
  %718 = trunc i64 %717 to i32
  %719 = icmp sgt i32 %718, 32
  br i1 %719, label %720, label %728

720:                                              ; preds = %713
  %721 = icmp eq i32 %711, 65
  %722 = select i1 %721, i32 83, i32 84
  %723 = load i32, ptr @word_mode, align 4, !tbaa !56
  %724 = add i64 %717, 4294967264
  %725 = and i64 %724, 4294967295
  %726 = call ptr @build_int_cst(ptr noundef null, i64 noundef %725) #15
  %727 = call ptr @expand_shift(i32 noundef %722, i32 noundef %723, ptr noundef %709, ptr noundef %726, ptr noundef %698, i32 noundef 1) #15
  br label %728

728:                                              ; preds = %720, %713, %685
  %729 = phi ptr [ %709, %685 ], [ %727, %720 ], [ %709, %713 ]
  %730 = icmp eq ptr %698, %729
  br i1 %730, label %733, label %731

731:                                              ; preds = %728
  %732 = call ptr @emit_move_insn(ptr noundef %698, ptr noundef %729) #15
  br label %733

733:                                              ; preds = %731, %728
  %734 = load i32, ptr @word_mode, align 4, !tbaa !56
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %735
  %737 = load ptr, ptr %736, align 8, !tbaa !41
  %738 = call ptr @emit_move_insn(ptr noundef %704, ptr noundef %737) #15
  %739 = call ptr @get_insns() #15
  call void @end_sequence() #15
  %740 = call ptr @emit_insn_before(ptr noundef %739, ptr noundef nonnull %519) #15
  %741 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %742 = icmp eq ptr %741, null
  br i1 %742, label %760, label %743

743:                                              ; preds = %733
  %744 = getelementptr inbounds %struct.rtx_def, ptr %519, i64 0, i32 1
  %745 = load i32, ptr %744, align 8, !tbaa !52
  %746 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %741, ptr noundef nonnull @.str.6, i32 noundef %745)
  %747 = icmp eq ptr %739, %519
  br i1 %747, label %757, label %748

748:                                              ; preds = %743, %748
  %749 = phi ptr [ %755, %748 ], [ %739, %743 ]
  %750 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %751 = getelementptr inbounds %struct.rtx_def, ptr %749, i64 0, i32 1
  %752 = load i32, ptr %751, align 8, !tbaa !52
  %753 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %750, ptr noundef nonnull @.str.7, i32 noundef %752)
  %754 = getelementptr inbounds %struct.rtx_def, ptr %749, i64 0, i32 1, i32 0, i32 0, i64 2
  %755 = load ptr, ptr %754, align 8, !tbaa !52
  %756 = icmp eq ptr %755, %519
  br i1 %756, label %757, label %748, !llvm.loop !109

757:                                              ; preds = %748, %743
  %758 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %759 = call i32 @fputc(i32 10, ptr %758)
  br label %760

760:                                              ; preds = %757, %733
  %761 = call ptr @delete_insn(ptr noundef nonnull %519) #15
  br label %762

762:                                              ; preds = %681, %665, %668, %760
  %763 = phi ptr [ %739, %760 ], [ null, %665 ], [ null, %668 ], [ null, %681 ]
  %764 = icmp eq ptr %763, null
  br i1 %764, label %774, label %765

765:                                              ; preds = %762
  %766 = getelementptr inbounds %struct.rtx_def, ptr %763, i64 1, i32 1
  %767 = load i32, ptr %766, align 8, !tbaa !52
  %768 = icmp slt i32 %767, 0
  br i1 %768, label %769, label %773

769:                                              ; preds = %765
  %770 = getelementptr inbounds %struct.rtx_def, ptr %763, i64 1
  %771 = load ptr, ptr %770, align 8, !tbaa !52
  %772 = call i32 @recog(ptr noundef %771, ptr noundef nonnull %763, ptr noundef null) #15
  store i32 %772, ptr %766, align 8, !tbaa !52
  br label %773

773:                                              ; preds = %765, %769
  call void @extract_insn(ptr noundef nonnull %763) #15
  br label %774

774:                                              ; preds = %762, %773, %613, %644, %624
  %775 = phi ptr [ %614, %624 ], [ %614, %644 ], [ %614, %613 ], [ %763, %773 ], [ %519, %762 ]
  %776 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !85
  %777 = icmp sgt i8 %776, 0
  br i1 %777, label %778, label %787

778:                                              ; preds = %774
  %779 = zext nneg i8 %776 to i64
  br label %780

780:                                              ; preds = %778, %780
  %781 = phi i64 [ %779, %778 ], [ %782, %780 ]
  %782 = add nsw i64 %781, -1
  %783 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %782
  %784 = load ptr, ptr %783, align 8, !tbaa !41
  %785 = call i32 @for_each_rtx(ptr noundef %784, ptr noundef nonnull @resolve_subreg_use, ptr noundef %775) #15
  %786 = icmp sgt i64 %781, 1
  br i1 %786, label %780, label %787, !llvm.loop !110

787:                                              ; preds = %780, %774
  call fastcc void @resolve_reg_notes(ptr noundef %775)
  %788 = call i32 @num_validated_changes() #15
  %789 = icmp sgt i32 %788, 0
  br i1 %789, label %790, label %812

790:                                              ; preds = %787
  %791 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !111
  %792 = icmp sgt i8 %791, 0
  br i1 %792, label %793, label %808

793:                                              ; preds = %790
  %794 = zext nneg i8 %791 to i64
  br label %795

795:                                              ; preds = %793, %795
  %796 = phi i64 [ %794, %793 ], [ %797, %795 ]
  %797 = add nsw i64 %796, -1
  %798 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %797
  %799 = load ptr, ptr %798, align 8, !tbaa !41
  %800 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %797
  %801 = load i8, ptr %800, align 1, !tbaa !52
  %802 = sext i8 %801 to i64
  %803 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %802
  %804 = load ptr, ptr %803, align 8, !tbaa !41
  %805 = load ptr, ptr %804, align 8, !tbaa !41
  %806 = call zeroext i8 @validate_unshare_change(ptr noundef %775, ptr noundef %799, ptr noundef %805, i8 noundef zeroext 1) #15
  %807 = icmp sgt i64 %796, 1
  br i1 %807, label %795, label %808, !llvm.loop !112

808:                                              ; preds = %795, %790
  %809 = call i32 @apply_change_group() #15
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %812

811:                                              ; preds = %808
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1260, ptr noundef nonnull @.str.3) #15
  br label %812

812:                                              ; preds = %541, %588, %586, %574, %536, %526, %591, %811, %808, %787
  %813 = phi ptr [ %519, %526 ], [ %519, %591 ], [ %775, %811 ], [ %775, %808 ], [ %775, %787 ], [ %519, %536 ], [ %519, %574 ], [ %519, %586 ], [ %519, %588 ], [ %519, %541 ]
  %814 = getelementptr inbounds %struct.rtx_def, ptr %813, i64 0, i32 1, i32 0, i32 0, i64 2
  %815 = load ptr, ptr %814, align 8, !tbaa !52
  %816 = icmp eq ptr %815, null
  br i1 %816, label %817, label %518, !llvm.loop !113

817:                                              ; preds = %518, %812, %512
  %818 = getelementptr inbounds %struct.basic_block_def, ptr %513, i64 0, i32 6
  %819 = load ptr, ptr %818, align 8, !tbaa !80
  %820 = load ptr, ptr @cfun, align 8, !tbaa !41
  %821 = getelementptr inbounds %struct.function, ptr %820, i64 0, i32 1
  %822 = load ptr, ptr %821, align 8, !tbaa !76
  %823 = getelementptr inbounds %struct.control_flow_graph, ptr %822, i64 0, i32 1
  %824 = load ptr, ptr %823, align 8, !tbaa !82
  %825 = icmp eq ptr %819, %824
  br i1 %825, label %826, label %512, !llvm.loop !114

826:                                              ; preds = %817, %502
  %827 = getelementptr inbounds %struct.simple_bitmap_def, ptr %372, i64 0, i32 2
  %828 = load i32, ptr %827, align 4, !tbaa !115
  %829 = getelementptr inbounds %struct.simple_bitmap_def, ptr %372, i64 0, i32 3
  %830 = icmp eq i32 %828, 0
  br i1 %830, label %833, label %831

831:                                              ; preds = %826
  %832 = load i64, ptr %829, align 8, !tbaa !94
  br label %833

833:                                              ; preds = %826, %831
  %834 = phi i64 [ %832, %831 ], [ 0, %826 ]
  br label %835

835:                                              ; preds = %833, %916
  %836 = phi i32 [ %875, %916 ], [ 0, %833 ]
  %837 = phi i32 [ %918, %916 ], [ 0, %833 ]
  %838 = phi i64 [ %917, %916 ], [ %834, %833 ]
  %839 = phi i32 [ %878, %916 ], [ undef, %833 ]
  %840 = icmp eq i64 %838, 0
  br i1 %840, label %841, label %848

841:                                              ; preds = %835
  %842 = add i32 %836, 1
  %843 = call i32 @llvm.umax.i32(i32 %828, i32 %842)
  %844 = add i32 %836, 1
  %845 = icmp ult i32 %844, %828
  br i1 %845, label %858, label %873

846:                                              ; preds = %858
  %847 = shl i32 %859, 6
  br label %848

848:                                              ; preds = %846, %835
  %849 = phi i32 [ %836, %835 ], [ %859, %846 ]
  %850 = phi i32 [ %837, %835 ], [ %847, %846 ]
  %851 = phi i64 [ %838, %835 ], [ %862, %846 ]
  %852 = phi i1 [ %840, %835 ], [ %863, %846 ]
  %853 = and i64 %851, 1
  %854 = icmp eq i64 %853, 0
  br i1 %854, label %864, label %873

855:                                              ; preds = %858
  %856 = add i32 %859, 1
  %857 = icmp ult i32 %856, %828
  br i1 %857, label %858, label %871, !llvm.loop !116

858:                                              ; preds = %841, %855
  %859 = phi i32 [ %856, %855 ], [ %844, %841 ]
  %860 = zext i32 %859 to i64
  %861 = getelementptr inbounds i64, ptr %829, i64 %860
  %862 = load i64, ptr %861, align 8, !tbaa !94
  %863 = icmp eq i64 %862, 0
  br i1 %863, label %855, label %846, !llvm.loop !116

864:                                              ; preds = %848, %864
  %865 = phi i64 [ %868, %864 ], [ %851, %848 ]
  %866 = phi i32 [ %867, %864 ], [ %850, %848 ]
  %867 = add i32 %866, 1
  %868 = lshr exact i64 %865, 1
  %869 = and i64 %865, 2
  %870 = icmp eq i64 %869, 0
  br i1 %870, label %864, label %873, !llvm.loop !117

871:                                              ; preds = %855
  %872 = shl i32 %859, 6
  br label %873

873:                                              ; preds = %864, %871, %841, %848
  %874 = phi i1 [ %852, %848 ], [ %840, %841 ], [ %863, %871 ], [ %852, %864 ]
  %875 = phi i32 [ %849, %848 ], [ %843, %841 ], [ %843, %871 ], [ %849, %864 ]
  %876 = phi i32 [ %850, %848 ], [ %837, %841 ], [ %872, %871 ], [ %867, %864 ]
  %877 = phi i64 [ %851, %848 ], [ %838, %841 ], [ %862, %871 ], [ %868, %864 ]
  %878 = phi i32 [ %850, %848 ], [ %839, %841 ], [ %839, %871 ], [ %867, %864 ]
  br i1 %874, label %919, label %879

879:                                              ; preds = %873
  %880 = load ptr, ptr @cfun, align 8, !tbaa !41
  %881 = getelementptr inbounds %struct.function, ptr %880, i64 0, i32 1
  %882 = load ptr, ptr %881, align 8, !tbaa !76
  %883 = getelementptr inbounds %struct.control_flow_graph, ptr %882, i64 0, i32 2
  %884 = load ptr, ptr %883, align 8, !tbaa !118
  %885 = zext i32 %878 to i64
  %886 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %884, i64 0, i32 2, i64 %885
  %887 = load ptr, ptr %886, align 8, !tbaa !41
  %888 = getelementptr inbounds %struct.basic_block_def, ptr %887, i64 0, i32 7
  %889 = load ptr, ptr %888, align 8, !tbaa !52
  %890 = getelementptr inbounds %struct.rtl_bb_info, ptr %889, i64 0, i32 1
  %891 = load ptr, ptr %890, align 8, !tbaa !83
  %892 = load ptr, ptr %889, align 8, !tbaa !52
  %893 = icmp eq ptr %892, %891
  br i1 %893, label %916, label %894

894:                                              ; preds = %879, %911
  %895 = phi ptr [ %914, %911 ], [ %892, %879 ]
  %896 = phi ptr [ %913, %911 ], [ %887, %879 ]
  %897 = call zeroext i8 @control_flow_insn_p(ptr noundef %895) #15
  %898 = icmp eq i8 %897, 0
  br i1 %898, label %909, label %899

899:                                              ; preds = %894
  %900 = call ptr @split_block(ptr noundef %896, ptr noundef %895) #15
  %901 = getelementptr inbounds %struct.basic_block_def, ptr %896, i64 0, i32 7
  %902 = load ptr, ptr %901, align 8, !tbaa !52
  %903 = getelementptr inbounds %struct.rtl_bb_info, ptr %902, i64 0, i32 1
  %904 = load ptr, ptr %903, align 8, !tbaa !83
  call void @rtl_make_eh_edge(ptr noundef null, ptr noundef %896, ptr noundef %904) #15
  %905 = getelementptr inbounds %struct.edge_def, ptr %900, i64 0, i32 1
  %906 = load ptr, ptr %905, align 8, !tbaa !119
  %907 = getelementptr inbounds %struct.basic_block_def, ptr %906, i64 0, i32 7
  %908 = load ptr, ptr %907, align 8, !tbaa !52
  br label %911

909:                                              ; preds = %894
  %910 = getelementptr inbounds %struct.rtx_def, ptr %895, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %911

911:                                              ; preds = %909, %899
  %912 = phi ptr [ %908, %899 ], [ %910, %909 ]
  %913 = phi ptr [ %906, %899 ], [ %896, %909 ]
  %914 = load ptr, ptr %912, align 8, !tbaa !52
  %915 = icmp eq ptr %914, %891
  br i1 %915, label %916, label %894, !llvm.loop !121

916:                                              ; preds = %911, %879
  %917 = lshr i64 %877, 1
  %918 = add i32 %876, 1
  br label %835, !llvm.loop !122

919:                                              ; preds = %873
  %920 = load ptr, ptr %372, align 8, !tbaa !107
  call void @free(ptr noundef %920)
  call void @free(ptr noundef %372)
  br label %921

921:                                              ; preds = %919, %263
  br label %922

922:                                              ; preds = %921, %939
  %923 = phi i32 [ %940, %939 ], [ 0, %921 ]
  %924 = load ptr, ptr @reg_copy_graph, align 8
  %925 = icmp eq ptr %924, null
  br i1 %925, label %933, label %926

926:                                              ; preds = %922
  %927 = load i32, ptr %924, align 8, !tbaa !72
  %928 = icmp ugt i32 %927, %923
  br i1 %928, label %929, label %933

929:                                              ; preds = %926
  %930 = zext i32 %923 to i64
  %931 = getelementptr inbounds %struct.VEC_bitmap_base, ptr %924, i64 0, i32 2, i64 %930
  %932 = load ptr, ptr %931, align 8, !tbaa !41
  br label %933

933:                                              ; preds = %922, %926, %929
  %934 = phi ptr [ %932, %929 ], [ null, %926 ], [ null, %922 ]
  %935 = phi i1 [ false, %929 ], [ true, %926 ], [ true, %922 ]
  br i1 %935, label %941, label %936

936:                                              ; preds = %933
  %937 = icmp eq ptr %934, null
  br i1 %937, label %939, label %938

938:                                              ; preds = %936
  call void @bitmap_obstack_free(ptr noundef nonnull %934) #15
  br label %939

939:                                              ; preds = %936, %938
  %940 = add i32 %923, 1
  br label %922, !llvm.loop !123

941:                                              ; preds = %933
  br i1 %925, label %943, label %942

942:                                              ; preds = %941
  call void @free(ptr noundef %924)
  br label %943

943:                                              ; preds = %941, %942
  store ptr null, ptr @reg_copy_graph, align 8, !tbaa !41
  %944 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  call void @bitmap_obstack_free(ptr noundef %944) #15
  store ptr null, ptr @decomposable_context, align 8, !tbaa !41
  %945 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !41
  call void @bitmap_obstack_free(ptr noundef %945) #15
  store ptr null, ptr @non_decomposable_context, align 8, !tbaa !41
  br label %946

946:                                              ; preds = %30, %943
  ret void
}

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @simple_move(ptr noundef %0) unnamed_addr #12 !prof !40 {
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !85
  %3 = icmp eq i8 %2, 2
  br i1 %3, label %4, label %66

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %11) #15
  br label %17

17:                                               ; preds = %4, %9, %15
  %18 = phi ptr [ %16, %15 ], [ null, %4 ], [ %11, %9 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = load ptr, ptr @recog_data, align 8, !tbaa !41
  %24 = icmp eq ptr %22, %23
  %25 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8
  %26 = icmp eq ptr %22, %25
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %20
  %29 = tail call fastcc zeroext i8 @simple_move_operand(ptr noundef %22), !range !124
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = load ptr, ptr @recog_data, align 8, !tbaa !41
  %35 = icmp eq ptr %33, %34
  %36 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8
  %37 = icmp eq ptr %33, %36
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %31
  %40 = load i32, ptr %33, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 17
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call fastcc zeroext i8 @simple_move_operand(ptr noundef nonnull %33), !range !124
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %43, %39
  %47 = load ptr, ptr %32, align 8, !tbaa !52
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !52
  %54 = and i8 %53, -2
  %55 = icmp eq i8 %54, 2
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %51
  %58 = load i8, ptr %57, align 1, !tbaa !52
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 3
  %61 = tail call i32 @mode_for_size(i32 noundef %60, i32 noundef 2, i32 noundef 0) #15
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %46, %56
  %64 = icmp eq i8 %53, 3
  %65 = select i1 %64, ptr null, ptr %18
  br label %66

66:                                               ; preds = %43, %63, %56, %31, %28, %20, %17, %1
  %67 = phi ptr [ null, %1 ], [ null, %17 ], [ null, %20 ], [ null, %28 ], [ null, %31 ], [ null, %56 ], [ %65, %63 ], [ null, %43 ]
  ret ptr %67
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @find_decomposable_subregs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !40 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %77 [
    i16 39, label %9
    i16 37, label %50
    i16 43, label %74
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = icmp ult i32 %17, 53
  br i1 %18, label %47, label %19

19:                                               ; preds = %15
  %20 = lshr i32 %7, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !52
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %12, 16
  %27 = and i32 %26, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !52
  %31 = add nuw nsw i32 %25, 3
  %32 = and i32 %31, 508
  %33 = icmp eq i32 %32, 4
  %34 = icmp ugt i8 %30, 4
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %43, label %36

36:                                               ; preds = %19
  %37 = icmp ugt i8 %24, 4
  %38 = icmp eq i8 %24, %30
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %21, i32 noundef %27) #15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %19
  %44 = phi ptr [ @decomposable_context, %19 ], [ @non_decomposable_context, %40 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !41
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %45, i32 noundef %17) #15
  br label %47

47:                                               ; preds = %43, %36, %40, %15, %9
  %48 = phi i1 [ false, %9 ], [ false, %15 ], [ true, %40 ], [ true, %36 ], [ false, %43 ]
  %49 = phi i32 [ 0, %9 ], [ -1, %15 ], [ undef, %40 ], [ undef, %36 ], [ -1, %43 ]
  br i1 %48, label %77, label %78

50:                                               ; preds = %6
  %51 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !52
  %53 = icmp ult i32 %52, 53
  br i1 %53, label %77, label %54

54:                                               ; preds = %50
  %55 = lshr i32 %7, 16
  %56 = and i32 %55, 255
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !52
  %60 = icmp ugt i8 %59, 4
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = load i32, ptr %1, align 4, !tbaa !56
  switch i32 %62, label %73 [
    i32 0, label %63
    i32 1, label %66
    i32 2, label %77
  ]

63:                                               ; preds = %61
  %64 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !41
  %65 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %64, i32 noundef %52) #15
  br label %77

66:                                               ; preds = %61
  %67 = load i32, ptr @word_mode, align 4, !tbaa !56
  %68 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %56, i32 noundef %67) #15
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr @decomposable_context, align 8, !tbaa !41
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %71, i32 noundef %52) #15
  br label %77

73:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 331, ptr noundef nonnull @.str.3) #15
  br label %77

74:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !56
  %75 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %76 = call i32 @for_each_rtx(ptr noundef nonnull %75, ptr noundef nonnull @find_decomposable_subregs, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %78

77:                                               ; preds = %6, %50, %54, %66, %70, %73, %61, %63, %47
  br label %78

78:                                               ; preds = %2, %47, %77, %74
  %79 = phi i32 [ 0, %77 ], [ %49, %47 ], [ -1, %74 ], [ 0, %2 ]
  ret i32 %79
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @resolve_simple_move(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #12 !prof !40 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = load ptr, ptr %3, align 8, !tbaa !52
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !52
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 3
  %15 = lshr i32 %14, 2
  %16 = icmp ult i8 %12, 5
  br i1 %16, label %308, label %17

17:                                               ; preds = %2
  tail call void @start_sequence() #15
  %18 = load i32, ptr %5, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 39
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8, ptr %11, align 1, !tbaa !52
  %33 = lshr i32 %24, 16
  %34 = and i32 %33, 255
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !52
  %38 = icmp eq i8 %32, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %31, %27
  %40 = tail call ptr @gen_reg_rtx(i32 noundef %9) #15
  %41 = load i32, ptr %6, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %46, ptr %47, align 8, !tbaa !52
  br label %48

48:                                               ; preds = %39, %44, %31, %21, %17
  %49 = phi ptr [ %6, %44 ], [ %6, %39 ], [ null, %31 ], [ null, %21 ], [ null, %17 ]
  %50 = phi ptr [ %40, %44 ], [ %40, %39 ], [ %6, %31 ], [ %6, %21 ], [ %6, %17 ]
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 39
  br i1 %53, label %54, label %93

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 42
  br i1 %59, label %60, label %93

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !52
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8, ptr %11, align 1, !tbaa !52
  %66 = lshr i32 %57, 16
  %67 = and i32 %66, 255
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !52
  %71 = icmp eq i8 %65, %70
  br i1 %71, label %93, label %72

72:                                               ; preds = %64, %60
  %73 = tail call ptr @gen_reg_rtx(i32 noundef %9) #15
  %74 = tail call ptr @emit_move_insn(ptr noundef %73, ptr noundef nonnull %5) #15
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = add nsw i32 %76, -7
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 23
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = tail call ptr @single_set_2(ptr noundef nonnull %74, ptr noundef nonnull %81) #15
  br label %87

87:                                               ; preds = %72, %79, %85
  %88 = phi ptr [ %86, %85 ], [ null, %72 ], [ %81, %79 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 680, ptr noundef nonnull @.str.3) #15
  br label %91

91:                                               ; preds = %87, %90
  %92 = tail call fastcc ptr @resolve_simple_move(ptr noundef %88, ptr noundef nonnull %74)
  br label %93

93:                                               ; preds = %91, %64, %54, %48
  %94 = phi ptr [ %73, %91 ], [ %5, %64 ], [ %5, %54 ], [ %5, %48 ]
  %95 = load ptr, ptr %4, align 8, !tbaa !52
  %96 = icmp eq ptr %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %93
  %98 = load ptr, ptr %3, align 8, !tbaa !52
  %99 = icmp eq ptr %50, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %97
  %101 = load i32, ptr %94, align 8
  %102 = trunc i32 %101 to i16
  switch i16 %102, label %110 [
    i16 42, label %127
    i16 39, label %103
  ]

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !52
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 42
  %109 = zext i1 %108 to i8
  br label %110

110:                                              ; preds = %100, %103
  %111 = phi i8 [ %109, %103 ], [ 0, %100 ]
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i32, ptr %50, align 8
  %115 = trunc i32 %114 to i16
  switch i16 %115, label %123 [
    i16 42, label %127
    i16 39, label %116
  ]

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !52
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 42
  %122 = zext i1 %121 to i8
  br label %123

123:                                              ; preds = %113, %116
  %124 = phi i8 [ %122, %116 ], [ 0, %113 ]
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  tail call void @end_sequence() #15
  br label %308

127:                                              ; preds = %113, %100, %123, %110, %97, %93
  %128 = load i32, ptr %94, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 43
  br i1 %130, label %136, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %50, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 43
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  br i1 %130, label %136, label %139

136:                                              ; preds = %127, %135
  %137 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %138 = tail call i32 @for_each_rtx(ptr noundef nonnull %137, ptr noundef nonnull @resolve_subreg_use, ptr noundef null) #15
  br label %139

139:                                              ; preds = %136, %135
  %140 = load i32, ptr %50, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 43
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %145 = tail call i32 @for_each_rtx(ptr noundef nonnull %144, ptr noundef nonnull @resolve_subreg_use, ptr noundef null) #15
  br label %146

146:                                              ; preds = %143, %139
  %147 = tail call i32 @apply_change_group() #15
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 714, ptr noundef nonnull @.str.3) #15
  br label %150

150:                                              ; preds = %131, %149, %146
  %151 = tail call fastcc zeroext i8 @can_decompose_p(ptr noundef nonnull %94), !range !124
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = tail call i32 @side_effects_p(ptr noundef nonnull %94) #15
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, ptr %94, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 17
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %153, %150
  %161 = tail call ptr @gen_reg_rtx(i32 noundef %9) #15
  %162 = tail call ptr @emit_move_insn(ptr noundef %161, ptr noundef nonnull %94) #15
  br label %163

163:                                              ; preds = %160, %156
  %164 = phi ptr [ %161, %160 ], [ %94, %156 ]
  %165 = tail call i32 @push_operand(ptr noundef nonnull %50, i32 noundef %9) #15
  %166 = trunc i32 %165 to i8
  %167 = tail call fastcc zeroext i8 @can_decompose_p(ptr noundef nonnull %50), !range !124
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %188, label %169

169:                                              ; preds = %163
  %170 = tail call i32 @side_effects_p(ptr noundef nonnull %50) #15
  %171 = icmp eq i32 %170, 0
  %172 = icmp ne i8 %166, 0
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %174, label %188

174:                                              ; preds = %169
  %175 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %176 = load i8, ptr %175, align 1, !tbaa !52
  %177 = and i8 %176, -2
  %178 = icmp eq i8 %177, 2
  br i1 %178, label %212, label %179

179:                                              ; preds = %174
  %180 = load i32, ptr %50, align 8
  %181 = trunc i32 %180 to i16
  switch i16 %181, label %188 [
    i16 42, label %212
    i16 39, label %182
  ]

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !52
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 42
  br i1 %187, label %212, label %188

188:                                              ; preds = %179, %182, %169, %163
  %189 = icmp eq ptr %49, null
  %190 = select i1 %189, ptr %50, ptr %49
  %191 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %192 = load i8, ptr %191, align 1, !tbaa !52
  %193 = and i8 %192, -2
  %194 = icmp eq i8 %193, 2
  br i1 %194, label %202, label %195

195:                                              ; preds = %188
  %196 = load i8, ptr %11, align 1, !tbaa !52
  %197 = zext i8 %196 to i32
  %198 = shl nuw nsw i32 %197, 3
  %199 = tail call i32 @mode_for_size(i32 noundef %198, i32 noundef 2, i32 noundef 0) #15
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 752, ptr noundef nonnull @.str.3) #15
  br label %202

202:                                              ; preds = %188, %201, %195
  %203 = phi i32 [ %199, %195 ], [ 1, %201 ], [ %9, %188 ]
  %204 = tail call ptr @gen_reg_rtx(i32 noundef %203) #15
  %205 = load i32, ptr %190, align 8
  %206 = and i32 %205, 65535
  %207 = icmp eq i32 %206, 37
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1, i32 0, i32 0, i64 2
  %210 = load ptr, ptr %209, align 8, !tbaa !52
  %211 = getelementptr inbounds %struct.rtx_def, ptr %204, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %210, ptr %211, align 8, !tbaa !52
  br label %212

212:                                              ; preds = %179, %174, %202, %208, %182
  %213 = phi i32 [ %9, %179 ], [ %9, %182 ], [ %203, %208 ], [ %203, %202 ], [ %9, %174 ]
  %214 = phi ptr [ %49, %179 ], [ %49, %182 ], [ %190, %208 ], [ %190, %202 ], [ %49, %174 ]
  %215 = phi ptr [ %50, %179 ], [ %50, %182 ], [ %204, %208 ], [ %204, %202 ], [ %50, %174 ]
  %216 = icmp eq i8 %166, 0
  br i1 %216, label %252, label %217

217:                                              ; preds = %212
  %218 = load i8, ptr %11, align 1, !tbaa !52
  %219 = and i8 %218, 3
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %217
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 763, ptr noundef nonnull @.str.3) #15
  br label %222

222:                                              ; preds = %217, %221
  %223 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !52
  %225 = load i32, ptr %224, align 8
  %226 = and i32 %225, 65535
  %227 = icmp eq i32 %226, 78
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 764, ptr noundef nonnull @.str.3) #15
  br label %229

229:                                              ; preds = %222, %228
  %230 = load ptr, ptr %223, align 8, !tbaa !52
  %231 = load i32, ptr %230, align 8
  %232 = and i32 %231, 65535
  %233 = icmp eq i32 %232, 79
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 765, ptr noundef nonnull @.str.3) #15
  br label %235

235:                                              ; preds = %234, %229
  %236 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %237

237:                                              ; preds = %235, %237
  %238 = phi i32 [ %240, %237 ], [ %15, %235 ]
  %239 = phi i32 [ %250, %237 ], [ 0, %235 ]
  %240 = add nsw i32 %238, -1
  %241 = load ptr, ptr %223, align 8, !tbaa !52
  %242 = tail call ptr @copy_rtx(ptr noundef %241) #15
  %243 = load i32, ptr @word_mode, align 4, !tbaa !56
  %244 = shl i32 %240, 2
  %245 = zext i32 %244 to i64
  %246 = tail call ptr @adjust_automodify_address_1(ptr noundef %215, i32 noundef %243, ptr noundef %242, i64 noundef %245, i32 noundef 0) #15
  %247 = load i32, ptr @word_mode, align 4, !tbaa !56
  %248 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %247, ptr noundef %164, i32 noundef %9, i32 noundef %244)
  %249 = tail call ptr @emit_move_insn(ptr noundef %246, ptr noundef %248) #15
  %250 = add nuw nsw i32 %239, 1
  %251 = icmp eq i32 %250, %236
  br i1 %251, label %274, label %237, !llvm.loop !125

252:                                              ; preds = %212
  %253 = load i32, ptr %215, align 8
  %254 = and i32 %253, 65535
  %255 = icmp eq i32 %254, 37
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !52
  %259 = icmp ult i32 %258, 53
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = tail call ptr @emit_clobber(ptr noundef nonnull %215) #15
  br label %262

262:                                              ; preds = %252, %256, %260
  %263 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %264

264:                                              ; preds = %262, %264
  %265 = phi i32 [ %272, %264 ], [ 0, %262 ]
  %266 = load i32, ptr @word_mode, align 4, !tbaa !56
  %267 = shl nuw nsw i32 %265, 2
  %268 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %266, ptr noundef nonnull %215, i32 noundef %213, i32 noundef %267)
  %269 = load i32, ptr @word_mode, align 4, !tbaa !56
  %270 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %269, ptr noundef %164, i32 noundef %9, i32 noundef %267)
  %271 = tail call ptr @emit_move_insn(ptr noundef %268, ptr noundef %270) #15
  %272 = add nuw nsw i32 %265, 1
  %273 = icmp eq i32 %272, %263
  br i1 %273, label %274, label %264, !llvm.loop !126

274:                                              ; preds = %237, %264
  %275 = icmp eq ptr %214, null
  br i1 %275, label %304, label %276

276:                                              ; preds = %274
  %277 = icmp eq i32 %213, %9
  br i1 %277, label %283, label %278

278:                                              ; preds = %276
  %279 = load i32, ptr %215, align 8
  %280 = lshr i32 %279, 16
  %281 = and i32 %280, 255
  %282 = tail call ptr @simplify_gen_subreg(i32 noundef %9, ptr noundef nonnull %215, i32 noundef %281, i32 noundef 0) #15
  br label %283

283:                                              ; preds = %276, %278
  %284 = phi ptr [ %282, %278 ], [ %215, %276 ]
  %285 = tail call ptr @emit_move_insn(ptr noundef nonnull %214, ptr noundef %284) #15
  %286 = load i32, ptr %285, align 8
  %287 = and i32 %286, 65535
  %288 = add nsw i32 %287, -7
  %289 = icmp ult i32 %288, 4
  br i1 %289, label %290, label %298

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.rtx_def, ptr %285, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !52
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 23
  br i1 %295, label %298, label %296

296:                                              ; preds = %290
  %297 = tail call ptr @single_set_2(ptr noundef nonnull %285, ptr noundef nonnull %292) #15
  br label %298

298:                                              ; preds = %283, %290, %296
  %299 = phi ptr [ %297, %296 ], [ null, %283 ], [ %292, %290 ]
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 818, ptr noundef nonnull @.str.3) #15
  br label %302

302:                                              ; preds = %298, %301
  %303 = tail call fastcc ptr @resolve_simple_move(ptr noundef %299, ptr noundef nonnull %285)
  br label %304

304:                                              ; preds = %302, %274
  %305 = tail call ptr @get_insns() #15
  tail call void @end_sequence() #15
  tail call void @copy_reg_eh_region_note_forward(ptr noundef %1, ptr noundef %305, ptr noundef null) #15
  %306 = tail call ptr @emit_insn_before(ptr noundef %305, ptr noundef %1) #15
  %307 = tail call ptr @delete_insn(ptr noundef %1) #15
  br label %308

308:                                              ; preds = %2, %304, %126
  %309 = phi ptr [ %305, %304 ], [ %1, %126 ], [ %1, %2 ]
  ret ptr %309
}

; Function Attrs: cold nounwind uwtable
define internal i32 @resolve_subreg_use(ptr noundef %0, ptr noundef %1) #12 !prof !40 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 42
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %17, ptr noundef %19, i32 noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = icmp eq ptr %1, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 514, ptr noundef nonnull @.str.3) #15
  br label %32

27:                                               ; preds = %15
  %28 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %22, i8 noundef zeroext 1) #15
  br label %32

29:                                               ; preds = %5, %9
  %30 = icmp eq i32 %7, 42
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %29, %26, %24, %2, %27
  %33 = phi i32 [ -1, %27 ], [ 0, %2 ], [ 1, %24 ], [ 1, %26 ], [ %31, %29 ]
  ret i32 %33
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @resolve_reg_notes(ptr noundef %0) unnamed_addr #12 !prof !40 {
  %2 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @num_validated_changes() #15
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %7 = tail call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @resolve_subreg_use, ptr noundef null) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %2) #15
  br label %14

10:                                               ; preds = %4
  %11 = tail call i32 @num_validated_changes() #15
  %12 = icmp eq i32 %5, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @df_notes_rescan(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %9, %13, %10, %1
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14, %35
  %19 = phi ptr [ %37, %35 ], [ %16, %14 ]
  %20 = phi ptr [ %36, %35 ], [ %15, %14 ]
  %21 = load i32, ptr %19, align 8
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i8
  switch i8 %23, label %33 [
    i8 1, label %24
    i8 6, label %24
  ]

24:                                               ; preds = %18, %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 42
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  store ptr %32, ptr %20, align 8, !tbaa !41
  br label %35

33:                                               ; preds = %24, %18
  %34 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %20, %30 ], [ %34, %33 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %18, !llvm.loop !127

39:                                               ; preds = %35, %14
  ret void
}

declare i32 @num_validated_changes() local_unnamed_addr #3

declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rtl_make_eh_edge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @simple_move_operand(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !40 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %28

17:                                               ; preds = %8
  %18 = trunc i32 %10 to i16
  switch i16 %18, label %27 [
    i16 44, label %28
    i16 45, label %28
    i16 121, label %28
    i16 35, label %28
    i16 43, label %19
  ]

19:                                               ; preds = %17
  %20 = and i32 %10, 134217728
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = tail call i32 @mode_dependent_address_p(ptr noundef %24) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %17
  br label %28

28:                                               ; preds = %17, %17, %17, %19, %22, %17, %8, %27
  %29 = phi i8 [ 1, %27 ], [ 0, %8 ], [ 0, %17 ], [ 0, %22 ], [ 0, %19 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ]
  ret i8 %29
}

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mode_dependent_address_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_and_compl_into(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 !prof !40 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %82

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 42
  br i1 %13, label %14, label %82

14:                                               ; preds = %8
  %15 = lshr i32 %5, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !52
  %20 = lshr i32 %11, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !52
  %25 = icmp eq i8 %19, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load i32, ptr %27, align 8, !tbaa !52
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @simplify_gen_subreg_concatn(i32 noundef %0, ptr noundef nonnull %10, i32 noundef %21, i32 noundef %3)
  br label %78

32:                                               ; preds = %26, %14
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load i32, ptr %33, align 8, !tbaa !52
  %35 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %16, ptr noundef nonnull %10, i32 noundef %34)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = zext i32 %0 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !52
  %41 = load i32, ptr %1, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !52
  %47 = icmp ugt i8 %40, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 439, ptr noundef nonnull @.str.3) #15
  br label %49

49:                                               ; preds = %37, %48
  %50 = load i32, ptr %1, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !52
  %56 = load ptr, ptr %9, align 8, !tbaa !52
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !52
  %63 = icmp ugt i8 %55, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 441, ptr noundef nonnull @.str.3) #15
  br label %65

65:                                               ; preds = %49, %64
  %66 = load ptr, ptr %9, align 8, !tbaa !52
  %67 = load i32, ptr %33, align 8, !tbaa !52
  %68 = add i32 %67, %3
  %69 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %0, ptr noundef %66, i32 noundef %68)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 444, ptr noundef nonnull @.str.3) #15
  br label %78

72:                                               ; preds = %32
  %73 = load i32, ptr %35, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = icmp eq i32 %75, %2
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 450, ptr noundef nonnull @.str.3) #15
  br label %78

78:                                               ; preds = %77, %72, %71, %65, %30
  %79 = phi ptr [ %1, %30 ], [ %1, %65 ], [ %1, %71 ], [ %35, %72 ], [ %35, %77 ]
  %80 = phi ptr [ %31, %30 ], [ %69, %65 ], [ %69, %71 ], [ undef, %72 ], [ undef, %77 ]
  %81 = phi i1 [ false, %30 ], [ false, %65 ], [ false, %71 ], [ true, %72 ], [ true, %77 ]
  br i1 %81, label %82, label %118

82:                                               ; preds = %78, %8, %4
  %83 = phi ptr [ %79, %78 ], [ %1, %8 ], [ %1, %4 ]
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 42
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %0, ptr noundef nonnull %83, i32 noundef %3)
  br label %118

89:                                               ; preds = %82
  %90 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %83, i32 noundef %2, i32 noundef %3) #15
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %118

92:                                               ; preds = %89
  %93 = load i32, ptr %83, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 39
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load i32, ptr %97, align 8, !tbaa !52
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %102 = zext i32 %2 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !52
  %105 = load ptr, ptr %101, align 8, !tbaa !52
  %106 = load i32, ptr %105, align 8
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !52
  %112 = icmp ugt i8 %104, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %100
  %114 = sext i32 %0 to i64
  %115 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !41
  br label %118

117:                                              ; preds = %92, %96, %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 468, ptr noundef nonnull @.str.3) #15
  br label %118

118:                                              ; preds = %89, %117, %78, %113, %87
  %119 = phi ptr [ %88, %87 ], [ %116, %113 ], [ %80, %78 ], [ %90, %89 ], [ %90, %117 ]
  ret ptr %119
}

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @simplify_subreg_concatn(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #12 !prof !40 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 42
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 395, ptr noundef nonnull @.str.3) #15
  br label %8

8:                                                ; preds = %3, %7
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  %13 = urem i32 %2, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 396, ptr noundef nonnull @.str.3) #15
  br label %16

16:                                               ; preds = %8, %15
  %17 = load i32, ptr %1, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !52
  %23 = zext i8 %22 to i32
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 399, ptr noundef nonnull @.str.3) #15
  br label %26

26:                                               ; preds = %16, %25
  %27 = load i8, ptr %10, align 1, !tbaa !52
  %28 = load i8, ptr %21, align 1, !tbaa !52
  %29 = icmp ugt i8 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 400, ptr noundef nonnull @.str.3) #15
  br label %31

31:                                               ; preds = %26, %30
  %32 = load i8, ptr %21, align 1, !tbaa !52
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  %36 = load i32, ptr %35, align 8, !tbaa !128
  %37 = sdiv i32 %33, %36
  %38 = urem i32 %2, %37
  %39 = udiv i32 %2, %37
  %40 = load i8, ptr %10, align 1, !tbaa !52
  %41 = zext i8 %40 to i32
  %42 = add i32 %38, %41
  %43 = icmp ugt i32 %42, %37
  br i1 %43, label %52, label %44

44:                                               ; preds = %31
  %45 = zext i32 %39 to i64
  %46 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  %51 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %47, i32 noundef %50, i32 noundef %38) #15
  br label %52

52:                                               ; preds = %31, %44
  %53 = phi ptr [ %51, %44 ], [ null, %31 ]
  ret ptr %53
}

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @adjust_decomposed_uses(ptr nocapture noundef %0, ptr nocapture readnone %1) #12 !prof !40 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 42
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = tail call fastcc ptr @simplify_subreg_concatn(i32 noundef %17, ptr noundef %19, i32 noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store ptr %22, ptr %0, align 8, !tbaa !41
  br label %28

25:                                               ; preds = %15
  %26 = load ptr, ptr %0, align 8, !tbaa !41
  %27 = tail call ptr @copy_rtx(ptr noundef %26) #15
  br label %28

28:                                               ; preds = %5, %24, %25, %9
  %29 = phi ptr [ %22, %24 ], [ %27, %25 ], [ %3, %9 ], [ %3, %5 ]
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call ptr @copy_rtx(ptr noundef nonnull %29) #15
  store ptr %34, ptr %0, align 8, !tbaa !41
  br label %35

35:                                               ; preds = %28, %33, %2
  ret i32 0
}

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @can_decompose_p(ptr noundef %0) unnamed_addr #12 !prof !40 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = icmp ult i32 %7, 53
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, ptr @word_mode, align 4, !tbaa !56
  %11 = lshr i32 %2, 16
  %12 = and i32 %11, 255
  %13 = tail call zeroext i8 @validate_subreg(i32 noundef %10, i32 noundef %12, ptr noundef nonnull %0, i32 noundef 4) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr @word_mode, align 4, !tbaa !56
  %17 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %7, i32 noundef %16) #15
  %18 = icmp ne i8 %17, 0
  br label %23

19:                                               ; preds = %5
  %20 = load ptr, ptr @non_decomposable_context, align 8, !tbaa !41
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %7) #15
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %1, %19, %15, %9
  %24 = phi i1 [ %22, %19 ], [ false, %9 ], [ %18, %15 ], [ true, %1 ]
  %25 = zext i1 %24 to i8
  ret i8 %25
}

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @adjust_automodify_address_1(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @copy_reg_eh_region_note_forward(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_subreg(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_shift(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

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
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @rest_of_handle_lower_subreg, ptr @decompose_multiword_subregs, i64 38}
!36 = !{ptr @rest_of_handle_lower_subreg2, ptr @decompose_multiword_subregs, i64 38}
!37 = !{ptr @decompose_multiword_subregs, ptr @df_set_flags, i64 38}
!38 = !{ptr @decompose_multiword_subregs, ptr @max_reg_num, i64 76}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !42, i64 8}
!46 = !{!"_IO_FILE", !47, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !47, i64 112, !47, i64 116, !48, i64 120, !49, i64 128, !43, i64 130, !43, i64 131, !42, i64 136, !48, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !48, i64 184, !47, i64 192, !43, i64 196}
!47 = !{!"int", !43, i64 0}
!48 = !{!"long", !43, i64 0}
!49 = !{!"short", !43, i64 0}
!50 = !{!46, !42, i64 16}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!43, !43, i64 0}
!53 = !{!46, !42, i64 40}
!54 = !{!46, !42, i64 48}
!55 = !{!46, !47, i64 0}
!56 = !{!47, !47, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"function_entry_count", i64 76}
!61 = !{!"lower-subreg.c;gate_handle_lower_subreg"}
!62 = !{!"function_entry_count", i64 38}
!63 = !{!"lower-subreg.c;rest_of_handle_lower_subreg"}
!64 = !{!"lower-subreg.c;rest_of_handle_lower_subreg2"}
!65 = !{!"lower-subreg.c;decompose_multiword_subregs"}
!66 = !{!"branch_weights", i32 38, i32 38}
!67 = !{!"branch_weights", i32 151, i32 1}
!68 = !{!"branch_weights", i32 0, i32 579294}
!69 = !{!"branch_weights", i32 151, i32 1158437}
!70 = distinct !{!70, !58, !59}
!71 = !{!"branch_weights", i32 76, i32 0}
!72 = !{!73, !47, i64 0}
!73 = !{!"VEC_bitmap_base", !47, i64 0, !47, i64 4, !43, i64 8}
!74 = !{!73, !47, i64 4}
!75 = !{}
!76 = !{!77, !42, i64 8}
!77 = !{!"function", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !47, i64 124, !42, i64 128, !47, i64 136, !47, i64 137, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139}
!78 = !{!79, !42, i64 0}
!79 = !{!"control_flow_graph", !42, i64 0, !42, i64 8, !42, i64 16, !47, i64 24, !47, i64 28, !47, i64 32, !42, i64 40, !47, i64 48, !43, i64 52, !43, i64 60, !47, i64 68, !47, i64 72}
!80 = !{!81, !42, i64 56}
!81 = !{!"basic_block_def", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !43, i64 32, !42, i64 48, !42, i64 56, !43, i64 64, !48, i64 72, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !47, i64 96}
!82 = !{!79, !42, i64 8}
!83 = !{!84, !42, i64 8}
!84 = !{!"rtl_bb_info", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !47, i64 32}
!85 = !{!86, !43, i64 1086}
!86 = !{!"recog_data", !43, i64 0, !43, i64 240, !43, i64 480, !43, i64 720, !43, i64 840, !43, i64 960, !43, i64 1072, !43, i64 1086, !43, i64 1087, !43, i64 1088, !43, i64 1089, !42, i64 1120}
!87 = distinct !{!87, !58, !59}
!88 = distinct !{!88, !58, !59}
!89 = distinct !{!89, !58, !59}
!90 = !{!91, !42, i64 0}
!91 = !{!"bitmap_head_def", !42, i64 0, !42, i64 8, !47, i64 16, !42, i64 24}
!92 = !{!93, !47, i64 16}
!93 = !{!"bitmap_element_def", !42, i64 0, !42, i64 8, !47, i64 16, !43, i64 24}
!94 = !{!48, !48, i64 0}
!95 = distinct !{!95, !58, !59}
!96 = distinct !{!96, !58, !59}
!97 = !{!93, !42, i64 0}
!98 = distinct !{!98, !59}
!99 = distinct !{!99, !58, !59}
!100 = distinct !{!100, !58, !59}
!101 = !{!79, !47, i64 32}
!102 = distinct !{!102, !58, !59}
!103 = distinct !{!103, !58, !59}
!104 = distinct !{!104, !58, !59}
!105 = distinct !{!105, !58, !59}
!106 = !{!81, !47, i64 80}
!107 = !{!108, !42, i64 0}
!108 = !{!"simple_bitmap_def", !42, i64 0, !47, i64 8, !47, i64 12, !43, i64 16}
!109 = distinct !{!109, !58, !59}
!110 = distinct !{!110, !58, !59}
!111 = !{!86, !43, i64 1087}
!112 = distinct !{!112, !58, !59}
!113 = distinct !{!113, !58, !59}
!114 = distinct !{!114, !58, !59}
!115 = !{!108, !47, i64 12}
!116 = distinct !{!116, !58, !59}
!117 = distinct !{!117, !58, !59}
!118 = !{!79, !42, i64 16}
!119 = !{!120, !42, i64 8}
!120 = !{!"edge_def", !42, i64 0, !42, i64 8, !43, i64 16, !42, i64 24, !42, i64 32, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !48, i64 56}
!121 = distinct !{!121, !58, !59}
!122 = distinct !{!122, !58, !59}
!123 = distinct !{!123, !58, !59}
!124 = !{i8 0, i8 2}
!125 = distinct !{!125, !58, !59}
!126 = distinct !{!126, !58, !59}
!127 = distinct !{!127, !58, !59}
!128 = !{!129, !47, i64 0}
!129 = !{!"rtvec_def", !47, i64 0, !43, i64 8}
