; ModuleID = 'regstat.c'
source_filename = "regstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_reg_info = type { ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_mw_hardreg = type { ptr, i32, i32, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@regstat_n_sets_and_refs = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [10 x i8] c"regstat.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@df_bitmap_obstack = external global %struct.bitmap_obstack, align 8
@reg_info_p = dso_local local_unnamed_addr global ptr null, align 8
@setjmp_crosses = internal unnamed_addr global ptr null, align 8
@max_regno = external local_unnamed_addr global i32, align 4
@reg_info_p_size = dso_local local_unnamed_addr global i64 0, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !64 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !65
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !64 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !65
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !64 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !65
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !65
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !64 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !64 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !64 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !64 {
  %2 = load i32, ptr %0, align 8, !tbaa !79
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !64 {
  %2 = load i32, ptr %0, align 8, !tbaa !79
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !64 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #12
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
  br i1 %23, label %7, label %24, !llvm.loop !81

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @regstat_init_n_sets_and_refs() local_unnamed_addr #8 !prof !84 {
  %1 = tail call i32 @max_reg_num() #12
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !76
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !85

4:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 37) #12
  br label %5

5:                                                ; preds = %4, %0
  tail call void @df_grow_reg_info() #12
  %6 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !85

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %5, %8
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #12
  store ptr %12, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  %13 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !80
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %1, 0
  br i1 %14, label %23, label %16, !prof !85

16:                                               ; preds = %9
  br i1 %15, label %90, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr @df, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  br label %30

23:                                               ; preds = %9
  br i1 %15, label %90, label %24, !prof !90

24:                                               ; preds = %23
  %25 = load ptr, ptr @df, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  br label %71

30:                                               ; preds = %17, %57
  %31 = phi i32 [ 0, %17 ], [ %69, %57 ]
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %20, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.df_reg_info, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !91
  %37 = load ptr, ptr %34, align 8, !tbaa !76
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %30, %52
  %40 = phi ptr [ %55, %52 ], [ %37, %30 ]
  %41 = phi i32 [ %53, %52 ], [ %36, %30 ]
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %40, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %43, align 8, !tbaa !93
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 7
  %50 = sext i1 %49 to i32
  %51 = add nsw i32 %41, %50
  br label %52

52:                                               ; preds = %45, %39
  %53 = phi i32 [ %41, %39 ], [ %51, %45 ]
  %54 = getelementptr inbounds %struct.df_base_ref, ptr %40, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !76
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %39, !llvm.loop !95

57:                                               ; preds = %52, %30
  %58 = phi i32 [ %36, %30 ], [ %53, %52 ]
  %59 = getelementptr inbounds ptr, ptr %22, i64 %32
  %60 = load ptr, ptr %59, align 8, !tbaa !65
  %61 = getelementptr inbounds %struct.df_reg_info, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !91
  %63 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %32
  store i32 %62, ptr %63, align 4, !tbaa !96
  %64 = sext i32 %31 to i64
  %65 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !96
  %67 = add nsw i32 %66, %58
  %68 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %32, i32 1
  store i32 %67, ptr %68, align 4, !tbaa !98
  %69 = add nuw i32 %31, 1
  %70 = icmp eq i32 %69, %1
  br i1 %70, label %90, label %30, !llvm.loop !99

71:                                               ; preds = %24, %71
  %72 = phi i32 [ 0, %24 ], [ %88, %71 ]
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %27, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !65
  %76 = getelementptr inbounds %struct.df_reg_info, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !91
  %78 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %73
  store i32 %77, ptr %78, align 4, !tbaa !96
  %79 = getelementptr inbounds ptr, ptr %29, i64 %73
  %80 = load ptr, ptr %79, align 8, !tbaa !65
  %81 = getelementptr inbounds %struct.df_reg_info, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !91
  %83 = sext i32 %72 to i64
  %84 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !96
  %86 = add i32 %85, %82
  %87 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %73, i32 1
  store i32 %86, ptr %87, align 4, !tbaa !98
  %88 = add nuw i32 %72, 1
  %89 = icmp eq i32 %88, %1
  br i1 %89, label %90, label %71, !prof !100, !llvm.loop !101

90:                                               ; preds = %57, %71, %16, %23
  %91 = load i8, ptr @timevar_enable, align 1, !tbaa !76
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93, !prof !85

93:                                               ; preds = %90
  tail call void @timevar_pop_1(i32 noundef 37) #12
  br label %94

94:                                               ; preds = %93, %90
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @df_grow_reg_info() local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @regstat_free_n_sets_and_refs() local_unnamed_addr #8 !prof !84 {
  %1 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !102

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  tail call void @free(ptr noundef %5)
  store ptr null, ptr @regstat_n_sets_and_refs, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @regstat_compute_ri() local_unnamed_addr #8 !prof !103 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #12
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #12
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #12
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #12
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #12
  %6 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !104

8:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 356, ptr noundef nonnull @.str.1) #12
  br label %9

9:                                                ; preds = %0, %8
  %10 = load i8, ptr @timevar_enable, align 1, !tbaa !76
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !104

12:                                               ; preds = %9
  tail call void @timevar_push_1(i32 noundef 37) #12
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #12
  store ptr %14, ptr @setjmp_crosses, align 8, !tbaa !65
  %15 = tail call i32 @max_reg_num() #12
  store i32 %15, ptr @max_regno, align 4, !tbaa !80
  %16 = sext i32 %15 to i64
  store i64 %16, ptr @reg_info_p_size, align 8, !tbaa !105
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 28) #12
  store ptr %17, ptr @reg_info_p, align 8, !tbaa !65
  %18 = load ptr, ptr @cfun, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !112
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %753, label %27, !prof !113

27:                                               ; preds = %13, %744
  %28 = phi ptr [ %749, %744 ], [ %20, %13 ]
  %29 = phi ptr [ %746, %744 ], [ %23, %13 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !114
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !115
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %33, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = tail call ptr @df_get_live_out(ptr noundef %36) #12
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %37) #12
  tail call void @bitmap_clear(ptr noundef %3) #12
  %38 = load ptr, ptr %1, align 8, !tbaa !116
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr @bitmap_zero_bits, ptr %38, !prof !118
  %41 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !119
  %43 = shl i32 %42, 7
  %44 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 0
  %45 = load i64, ptr %44, align 8, !tbaa !105
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = or disjoint i32 %43, %47
  %49 = load ptr, ptr @reg_info_p, align 8
  br label %50

50:                                               ; preds = %111, %27
  %51 = phi i32 [ 0, %27 ], [ %106, %111 ]
  %52 = phi ptr [ %40, %27 ], [ %107, %111 ]
  %53 = phi i32 [ %48, %27 ], [ %115, %111 ]
  %54 = phi i64 [ %45, %27 ], [ %114, %111 ]
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %70, label %56, !prof !121

56:                                               ; preds = %84, %50
  %57 = phi i32 [ %51, %50 ], [ %85, %84 ]
  %58 = phi ptr [ %52, %50 ], [ %75, %84 ]
  %59 = phi i32 [ %53, %50 ], [ %86, %84 ]
  %60 = phi i64 [ %54, %50 ], [ %89, %84 ]
  %61 = and i64 %60, 1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %105, !prof !122

63:                                               ; preds = %56, %63
  %64 = phi i64 [ %66, %63 ], [ %60, %56 ]
  %65 = phi i32 [ %67, %63 ], [ %59, %56 ]
  %66 = lshr exact i64 %64, 1
  %67 = add i32 %65, 1
  %68 = and i64 %64, 2
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %63, label %105, !prof !123, !llvm.loop !124

70:                                               ; preds = %50
  %71 = add i32 %53, 63
  %72 = and i32 %71, -64
  %73 = add i32 %51, 1
  br label %74

74:                                               ; preds = %101, %70
  %75 = phi ptr [ %52, %70 ], [ %99, %101 ]
  %76 = phi i32 [ %72, %70 ], [ %104, %101 ]
  %77 = phi i64 [ %54, %70 ], [ %97, %101 ]
  %78 = phi i32 [ %73, %70 ], [ 0, %101 ]
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %95, label %80, !prof !125

80:                                               ; preds = %74
  %81 = add i32 %76, 128
  %82 = shl i32 %78, 6
  %83 = sub i32 %81, %82
  br label %84

84:                                               ; preds = %80, %91
  %85 = phi i32 [ %93, %91 ], [ %78, %80 ]
  %86 = phi i32 [ %92, %91 ], [ %76, %80 ]
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds %struct.bitmap_element_def, ptr %75, i64 0, i32 3, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !105
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %56, !prof !126

91:                                               ; preds = %84
  %92 = add i32 %86, 64
  %93 = add i32 %85, 1
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %84, !prof !127, !llvm.loop !128

95:                                               ; preds = %91, %74
  %96 = phi i32 [ %76, %74 ], [ %83, %91 ]
  %97 = phi i64 [ %77, %74 ], [ %89, %91 ]
  %98 = phi i32 [ %78, %74 ], [ 2, %91 ]
  %99 = load ptr, ptr %75, align 8, !tbaa !129
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101, !prof !130

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.bitmap_element_def, ptr %99, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !119
  %104 = shl i32 %103, 7
  br label %74, !llvm.loop !131

105:                                              ; preds = %95, %63, %56
  %106 = phi i32 [ %57, %56 ], [ %57, %63 ], [ %98, %95 ]
  %107 = phi ptr [ %58, %56 ], [ %58, %63 ], [ %99, %95 ]
  %108 = phi i32 [ %59, %56 ], [ %67, %63 ], [ %96, %95 ]
  %109 = phi i64 [ %60, %56 ], [ %66, %63 ], [ %97, %95 ]
  %110 = phi i1 [ false, %56 ], [ false, %63 ], [ true, %95 ]
  br i1 %110, label %116, label %111, !prof !132

111:                                              ; preds = %105
  %112 = zext i32 %108 to i64
  %113 = getelementptr inbounds %struct.reg_info_t, ptr %49, i64 %112, i32 6
  store i32 -1, ptr %113, align 4, !tbaa !133
  %114 = lshr i64 %109, 1
  %115 = add i32 %108, 1
  br label %50, !llvm.loop !135

116:                                              ; preds = %105
  %117 = load ptr, ptr @df, align 8, !tbaa !65
  %118 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !65
  %120 = getelementptr inbounds %struct.dataflow, ptr %119, i64 0, i32 2
  %121 = load i32, ptr %120, align 8, !tbaa !136
  %122 = icmp ugt i32 %121, %31
  tail call void @llvm.assume(i1 %122)
  %123 = getelementptr inbounds %struct.dataflow, ptr %119, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !138
  %125 = getelementptr inbounds ptr, ptr %124, i64 %34
  %126 = load ptr, ptr %125, align 8, !tbaa !65
  %127 = load ptr, ptr %126, align 8, !tbaa !139
  %128 = load ptr, ptr %127, align 8, !tbaa !65
  %129 = icmp eq ptr %128, null
  br i1 %129, label %144, label %130, !prof !141

130:                                              ; preds = %116, %140
  %131 = phi ptr [ %142, %140 ], [ %128, %116 ]
  %132 = phi ptr [ %141, %140 ], [ %127, %116 ]
  %133 = load i32, ptr %131, align 8
  %134 = and i32 %133, 131072
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.df_base_ref, ptr %131, i64 0, i32 6
  %138 = load i32, ptr %137, align 8, !tbaa !76
  %139 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %1, i32 noundef %138) #12
  br label %140

140:                                              ; preds = %136, %130
  %141 = getelementptr inbounds ptr, ptr %132, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !65
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %130, !prof !141, !llvm.loop !142

144:                                              ; preds = %140, %116
  %145 = load ptr, ptr @df, align 8, !tbaa !65
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !65
  %148 = getelementptr inbounds %struct.dataflow, ptr %147, i64 0, i32 2
  %149 = load i32, ptr %148, align 8, !tbaa !136
  %150 = icmp ugt i32 %149, %31
  tail call void @llvm.assume(i1 %150)
  %151 = getelementptr inbounds %struct.dataflow, ptr %147, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !138
  %153 = getelementptr inbounds ptr, ptr %152, i64 %34
  %154 = load ptr, ptr %153, align 8, !tbaa !65
  %155 = getelementptr inbounds %struct.df_scan_bb_info, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !143
  %157 = load ptr, ptr %156, align 8, !tbaa !65
  %158 = icmp eq ptr %157, null
  br i1 %158, label %174, label %159, !prof !144

159:                                              ; preds = %144, %170
  %160 = phi ptr [ %172, %170 ], [ %157, %144 ]
  %161 = phi ptr [ %171, %170 ], [ %156, %144 ]
  %162 = load i32, ptr %160, align 8
  %163 = and i32 %162, 131072
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %170, !prof !145

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.df_base_ref, ptr %160, i64 0, i32 6
  %167 = load i32, ptr %166, align 8, !tbaa !76
  %168 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %1, i32 noundef %167) #12
  %169 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %167) #12
  br label %170

170:                                              ; preds = %165, %159
  %171 = getelementptr inbounds ptr, ptr %161, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !65
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %159, !prof !146, !llvm.loop !147

174:                                              ; preds = %170, %144
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 7
  %176 = load ptr, ptr %175, align 8, !tbaa !76
  %177 = getelementptr inbounds %struct.rtl_bb_info, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !76
  %179 = icmp eq ptr %178, null
  br i1 %179, label %661, label %180, !prof !113

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  br label %184

184:                                              ; preds = %180, %656
  %185 = phi ptr [ %178, %180 ], [ %659, %656 ]
  %186 = phi i32 [ 0, %180 ], [ %657, %656 ]
  %187 = load ptr, ptr %175, align 8, !tbaa !76
  %188 = load ptr, ptr %187, align 8, !tbaa !148
  %189 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !76
  %191 = icmp eq ptr %185, %190
  br i1 %191, label %661, label %192, !prof !150

192:                                              ; preds = %184
  %193 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %194 = load i32, ptr %193, align 8, !tbaa !76
  %195 = load i32, ptr %185, align 8
  %196 = and i32 %195, 65535
  %197 = add nsw i32 %196, -11
  %198 = icmp ult i32 %197, -3
  br i1 %198, label %656, label %199, !prof !151

199:                                              ; preds = %192
  %200 = load ptr, ptr %4, align 8, !tbaa !116
  %201 = icmp eq ptr %200, null
  %202 = select i1 %201, ptr @bitmap_zero_bits, ptr %200, !prof !152
  %203 = getelementptr inbounds %struct.bitmap_element_def, ptr %202, i64 0, i32 2
  %204 = load i32, ptr %203, align 8, !tbaa !119
  %205 = shl i32 %204, 7
  %206 = getelementptr inbounds %struct.bitmap_element_def, ptr %202, i64 0, i32 3, i64 0
  %207 = load i64, ptr %206, align 8, !tbaa !105
  %208 = icmp eq i64 %207, 0
  %209 = zext i1 %208 to i32
  %210 = or disjoint i32 %205, %209
  %211 = load ptr, ptr @reg_info_p, align 8
  br label %212

212:                                              ; preds = %273, %199
  %213 = phi i32 [ %210, %199 ], [ %279, %273 ]
  %214 = phi i64 [ %207, %199 ], [ %278, %273 ]
  %215 = phi i32 [ 0, %199 ], [ %270, %273 ]
  %216 = phi ptr [ %202, %199 ], [ %271, %273 ]
  %217 = icmp eq i64 %214, 0
  br i1 %217, label %232, label %218, !prof !153

218:                                              ; preds = %246, %212
  %219 = phi i32 [ %213, %212 ], [ %248, %246 ]
  %220 = phi i64 [ %214, %212 ], [ %251, %246 ]
  %221 = phi i32 [ %215, %212 ], [ %247, %246 ]
  %222 = phi ptr [ %216, %212 ], [ %239, %246 ]
  %223 = and i64 %220, 1
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %267, !prof !154

225:                                              ; preds = %218, %225
  %226 = phi i64 [ %228, %225 ], [ %220, %218 ]
  %227 = phi i32 [ %229, %225 ], [ %219, %218 ]
  %228 = lshr exact i64 %226, 1
  %229 = add i32 %227, 1
  %230 = and i64 %226, 2
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %225, label %267, !prof !155, !llvm.loop !124

232:                                              ; preds = %212
  %233 = add i32 %213, 63
  %234 = and i32 %233, -64
  %235 = add i32 %215, 1
  br label %236

236:                                              ; preds = %263, %232
  %237 = phi i32 [ %234, %232 ], [ %266, %263 ]
  %238 = phi i64 [ %214, %232 ], [ %259, %263 ]
  %239 = phi ptr [ %216, %232 ], [ %261, %263 ]
  %240 = phi i32 [ %235, %232 ], [ 0, %263 ]
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %257, label %242, !prof !156

242:                                              ; preds = %236
  %243 = add i32 %237, 128
  %244 = shl i32 %240, 6
  %245 = sub i32 %243, %244
  br label %246

246:                                              ; preds = %242, %253
  %247 = phi i32 [ %255, %253 ], [ %240, %242 ]
  %248 = phi i32 [ %254, %253 ], [ %237, %242 ]
  %249 = zext i32 %247 to i64
  %250 = getelementptr inbounds %struct.bitmap_element_def, ptr %239, i64 0, i32 3, i64 %249
  %251 = load i64, ptr %250, align 8, !tbaa !105
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %218, !prof !157

253:                                              ; preds = %246
  %254 = add i32 %248, 64
  %255 = add i32 %247, 1
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %246, !prof !158, !llvm.loop !128

257:                                              ; preds = %253, %236
  %258 = phi i32 [ %237, %236 ], [ %245, %253 ]
  %259 = phi i64 [ %238, %236 ], [ %251, %253 ]
  %260 = phi i32 [ %240, %236 ], [ 2, %253 ]
  %261 = load ptr, ptr %239, align 8, !tbaa !129
  %262 = icmp eq ptr %261, null
  br i1 %262, label %267, label %263, !prof !159

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.bitmap_element_def, ptr %261, i64 0, i32 2
  %265 = load i32, ptr %264, align 8, !tbaa !119
  %266 = shl i32 %265, 7
  br label %236, !llvm.loop !131

267:                                              ; preds = %257, %225, %218
  %268 = phi i32 [ %219, %218 ], [ %229, %225 ], [ %258, %257 ]
  %269 = phi i64 [ %220, %218 ], [ %228, %225 ], [ %259, %257 ]
  %270 = phi i32 [ %221, %218 ], [ %221, %225 ], [ %260, %257 ]
  %271 = phi ptr [ %222, %218 ], [ %222, %225 ], [ %261, %257 ]
  %272 = phi i1 [ false, %218 ], [ false, %225 ], [ true, %257 ]
  br i1 %272, label %280, label %273, !prof !160

273:                                              ; preds = %267
  %274 = zext i32 %268 to i64
  %275 = getelementptr inbounds %struct.reg_info_t, ptr %211, i64 %274, i32 2
  %276 = load i32, ptr %275, align 4, !tbaa !161
  %277 = add nsw i32 %276, 1
  store i32 %277, ptr %275, align 4, !tbaa !161
  %278 = lshr i64 %269, 1
  %279 = add i32 %268, 1
  br label %212, !llvm.loop !162

280:                                              ; preds = %267
  %281 = add nsw i32 %186, 1
  tail call void @bitmap_clear(ptr noundef %2) #12
  %282 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 1, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !76
  %284 = icmp eq ptr %283, null
  br i1 %284, label %305, label %285, !prof !163

285:                                              ; preds = %280
  %286 = load ptr, ptr @reg_info_p, align 8
  br label %287

287:                                              ; preds = %285, %301
  %288 = phi ptr [ %283, %285 ], [ %303, %301 ]
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 16711680
  %291 = icmp eq i32 %290, 65536
  br i1 %291, label %292, label %301, !prof !164

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.rtx_def, ptr %288, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !76
  %295 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 0, i32 1
  %296 = load i32, ptr %295, align 8, !tbaa !76
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.reg_info_t, ptr %286, i64 %297, i32 1
  %299 = load i32, ptr %298, align 4, !tbaa !165
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr %298, align 4, !tbaa !165
  br label %301

301:                                              ; preds = %292, %287
  %302 = getelementptr inbounds %struct.rtx_def, ptr %288, i64 0, i32 1, i32 0, i32 0, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !76
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %287, !prof !166, !llvm.loop !167

305:                                              ; preds = %301, %280
  %306 = load i32, ptr %185, align 8
  %307 = and i32 %306, 65535
  %308 = icmp eq i32 %307, 10
  br i1 %308, label %309, label %428, !prof !168

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  %311 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %185) #12
  %312 = tail call ptr @find_reg_note(ptr noundef nonnull %185, i32 noundef 30, ptr noundef null) #12
  %313 = icmp eq ptr %312, null
  %314 = load ptr, ptr %1, align 8, !tbaa !116
  %315 = icmp eq ptr %314, null
  %316 = select i1 %315, ptr @bitmap_zero_bits, ptr %314, !prof !169
  %317 = getelementptr inbounds %struct.bitmap_element_def, ptr %316, i64 0, i32 2
  %318 = load i32, ptr %317, align 8, !tbaa !119
  %319 = shl i32 %318, 7
  %320 = getelementptr inbounds %struct.bitmap_element_def, ptr %316, i64 0, i32 3, i64 0
  %321 = load i64, ptr %320, align 8, !tbaa !105
  %322 = icmp eq i64 %321, 0
  %323 = zext i1 %322 to i32
  %324 = or disjoint i32 %319, %323
  %325 = icmp eq i8 %311, 0
  br label %326

326:                                              ; preds = %425, %309
  %327 = phi i32 [ %324, %309 ], [ %427, %425 ]
  %328 = phi i64 [ %321, %309 ], [ %426, %425 ]
  %329 = phi i32 [ 0, %309 ], [ %384, %425 ]
  %330 = phi ptr [ %316, %309 ], [ %385, %425 ]
  %331 = icmp eq i64 %328, 0
  br i1 %331, label %346, label %332, !prof !170

332:                                              ; preds = %360, %326
  %333 = phi i32 [ %327, %326 ], [ %362, %360 ]
  %334 = phi i64 [ %328, %326 ], [ %365, %360 ]
  %335 = phi i32 [ %329, %326 ], [ %361, %360 ]
  %336 = phi ptr [ %330, %326 ], [ %353, %360 ]
  %337 = and i64 %334, 1
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %381, !prof !171

339:                                              ; preds = %332, %339
  %340 = phi i64 [ %342, %339 ], [ %334, %332 ]
  %341 = phi i32 [ %343, %339 ], [ %333, %332 ]
  %342 = lshr exact i64 %340, 1
  %343 = add i32 %341, 1
  %344 = and i64 %340, 2
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %339, label %381, !prof !172, !llvm.loop !124

346:                                              ; preds = %326
  %347 = add i32 %327, 63
  %348 = and i32 %347, -64
  %349 = add i32 %329, 1
  br label %350

350:                                              ; preds = %377, %346
  %351 = phi i32 [ %348, %346 ], [ %380, %377 ]
  %352 = phi i64 [ %328, %346 ], [ %373, %377 ]
  %353 = phi ptr [ %330, %346 ], [ %375, %377 ]
  %354 = phi i32 [ %349, %346 ], [ 0, %377 ]
  %355 = icmp eq i32 %354, 2
  br i1 %355, label %371, label %356, !prof !173

356:                                              ; preds = %350
  %357 = add i32 %351, 128
  %358 = shl i32 %354, 6
  %359 = sub i32 %357, %358
  br label %360

360:                                              ; preds = %356, %367
  %361 = phi i32 [ %369, %367 ], [ %354, %356 ]
  %362 = phi i32 [ %368, %367 ], [ %351, %356 ]
  %363 = zext i32 %361 to i64
  %364 = getelementptr inbounds %struct.bitmap_element_def, ptr %353, i64 0, i32 3, i64 %363
  %365 = load i64, ptr %364, align 8, !tbaa !105
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %332, !prof !174

367:                                              ; preds = %360
  %368 = add i32 %362, 64
  %369 = add i32 %361, 1
  %370 = icmp eq i32 %369, 2
  br i1 %370, label %371, label %360, !prof !175, !llvm.loop !128

371:                                              ; preds = %367, %350
  %372 = phi i32 [ %351, %350 ], [ %359, %367 ]
  %373 = phi i64 [ %352, %350 ], [ %365, %367 ]
  %374 = phi i32 [ %354, %350 ], [ 2, %367 ]
  %375 = load ptr, ptr %353, align 8, !tbaa !129
  %376 = icmp eq ptr %375, null
  br i1 %376, label %381, label %377, !prof !176

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.bitmap_element_def, ptr %375, i64 0, i32 2
  %379 = load i32, ptr %378, align 8, !tbaa !119
  %380 = shl i32 %379, 7
  br label %350, !llvm.loop !131

381:                                              ; preds = %371, %339, %332
  %382 = phi i32 [ %333, %332 ], [ %343, %339 ], [ %372, %371 ]
  %383 = phi i64 [ %334, %332 ], [ %342, %339 ], [ %373, %371 ]
  %384 = phi i32 [ %335, %332 ], [ %335, %339 ], [ %374, %371 ]
  %385 = phi ptr [ %336, %332 ], [ %336, %339 ], [ %375, %371 ]
  %386 = phi i1 [ false, %332 ], [ false, %339 ], [ true, %371 ]
  br i1 %386, label %428, label %387, !prof !177

387:                                              ; preds = %381
  %388 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %389 = zext i32 %382 to i64
  %390 = getelementptr inbounds %struct.reg_info_t, ptr %388, i64 %389, i32 3
  %391 = load i32, ptr %390, align 4, !tbaa !178
  %392 = add nsw i32 %391, 1
  store i32 %392, ptr %390, align 4, !tbaa !178
  %393 = load i32, ptr @optimize_size, align 4, !tbaa !80
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %412, !prof !179

395:                                              ; preds = %387
  %396 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %406, label %398, !prof !179

398:                                              ; preds = %395
  %399 = load ptr, ptr @cfun, align 8, !tbaa !65
  %400 = getelementptr inbounds %struct.function, ptr %399, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !106
  %402 = load ptr, ptr %401, align 8, !tbaa !108
  %403 = getelementptr inbounds %struct.basic_block_def, ptr %402, i64 0, i32 8
  %404 = load i64, ptr %403, align 8, !tbaa !180
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %412, label %406

406:                                              ; preds = %398, %395
  %407 = load i32, ptr %310, align 8, !tbaa !181
  %408 = add i32 %407, 9
  %409 = icmp ult i32 %408, 19
  br i1 %409, label %412, label %410, !prof !182

410:                                              ; preds = %406
  %411 = sdiv i32 %407, 10
  br label %412

412:                                              ; preds = %398, %410, %406, %387
  %413 = phi i32 [ 1000, %387 ], [ %411, %410 ], [ 1, %406 ], [ 1000, %398 ]
  %414 = getelementptr inbounds %struct.reg_info_t, ptr %388, i64 %389, i32 4
  %415 = load i32, ptr %414, align 4, !tbaa !183
  %416 = add nsw i32 %415, %413
  store i32 %416, ptr %414, align 4, !tbaa !183
  br i1 %325, label %421, label %417, !prof !179

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.reg_info_t, ptr %388, i64 %389, i32 5
  %419 = load i32, ptr %418, align 4, !tbaa !184
  %420 = add nsw i32 %419, 1
  store i32 %420, ptr %418, align 4, !tbaa !184
  br label %421

421:                                              ; preds = %417, %412
  br i1 %313, label %425, label %422, !prof !179

422:                                              ; preds = %421
  %423 = load ptr, ptr @setjmp_crosses, align 8, !tbaa !65
  %424 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %423, i32 noundef %382) #12
  br label %425

425:                                              ; preds = %422, %421
  %426 = lshr i64 %383, 1
  %427 = add i32 %382, 1
  br label %326, !llvm.loop !185

428:                                              ; preds = %381, %305
  %429 = load ptr, ptr @df, align 8, !tbaa !65
  %430 = getelementptr inbounds %struct.df, ptr %429, i64 0, i32 10
  %431 = load ptr, ptr %430, align 8, !tbaa !186
  %432 = zext i32 %194 to i64
  %433 = getelementptr inbounds ptr, ptr %431, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !65
  %435 = getelementptr inbounds %struct.df_insn_info, ptr %434, i64 0, i32 4
  %436 = load ptr, ptr %435, align 8, !tbaa !187
  %437 = load ptr, ptr %436, align 8, !tbaa !65
  %438 = icmp eq ptr %437, null
  br i1 %438, label %475, label %439, !prof !141

439:                                              ; preds = %428, %471
  %440 = phi ptr [ %473, %471 ], [ %437, %428 ]
  %441 = phi ptr [ %472, %471 ], [ %436, %428 ]
  %442 = getelementptr inbounds %struct.df_mw_hardreg, ptr %440, i64 0, i32 1
  %443 = load i32, ptr %442, align 8
  %444 = and i32 %443, 65535
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %471

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.df_mw_hardreg, ptr %440, i64 0, i32 2
  %448 = load i32, ptr %447, align 4, !tbaa !188
  %449 = getelementptr inbounds %struct.df_mw_hardreg, ptr %440, i64 0, i32 3
  %450 = load i32, ptr %449, align 8, !tbaa !190
  %451 = icmp ugt i32 %448, %450
  br i1 %451, label %463, label %456

452:                                              ; preds = %460
  %453 = add i32 %457, 1
  %454 = load i32, ptr %449, align 8, !tbaa !190
  %455 = icmp ugt i32 %453, %454
  br i1 %455, label %463, label %456, !llvm.loop !191

456:                                              ; preds = %446, %452
  %457 = phi i32 [ %453, %452 ], [ %448, %446 ]
  %458 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %1, i32 noundef %457) #12
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %471

460:                                              ; preds = %456
  %461 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %457) #12
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %452, label %471

463:                                              ; preds = %452, %446
  %464 = load i32, ptr %447, align 4, !tbaa !188
  %465 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %464) #12
  %466 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %467 = zext i32 %464 to i64
  %468 = getelementptr inbounds %struct.reg_info_t, ptr %466, i64 %467, i32 2
  %469 = load i32, ptr %468, align 4, !tbaa !161
  %470 = add nsw i32 %469, 1
  store i32 %470, ptr %468, align 4, !tbaa !161
  br label %471

471:                                              ; preds = %460, %456, %463, %439
  %472 = getelementptr inbounds ptr, ptr %441, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !65
  %474 = icmp eq ptr %473, null
  br i1 %474, label %475, label %439, !prof !141, !llvm.loop !192

475:                                              ; preds = %471, %428
  %476 = load ptr, ptr @df, align 8, !tbaa !65
  %477 = getelementptr inbounds %struct.df, ptr %476, i64 0, i32 10
  %478 = load ptr, ptr %477, align 8, !tbaa !186
  %479 = getelementptr inbounds ptr, ptr %478, i64 %432
  %480 = load ptr, ptr %479, align 8, !tbaa !65
  %481 = getelementptr inbounds %struct.df_insn_info, ptr %480, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !193
  %483 = load ptr, ptr %482, align 8, !tbaa !65
  %484 = icmp eq ptr %483, null
  br i1 %484, label %585, label %485, !prof !194

485:                                              ; preds = %475, %581
  %486 = phi ptr [ %583, %581 ], [ %483, %475 ]
  %487 = phi ptr [ %582, %581 ], [ %482, %475 ]
  %488 = load i32, ptr %185, align 8
  %489 = and i32 %488, 65535
  %490 = icmp eq i32 %489, 10
  br i1 %490, label %491, label %495, !prof !195

491:                                              ; preds = %485
  %492 = load i32, ptr %486, align 8
  %493 = and i32 %492, 12582912
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %581, !prof !196

495:                                              ; preds = %491, %485
  %496 = getelementptr inbounds %struct.df_base_ref, ptr %486, i64 0, i32 6
  %497 = load i32, ptr %496, align 8, !tbaa !76
  %498 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %1, i32 noundef %497) #12
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %516, label %500, !prof !197

500:                                              ; preds = %495
  %501 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %497) #12
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %509, label %503, !prof !198

503:                                              ; preds = %500
  %504 = load i32, ptr %486, align 8
  %505 = and i32 %504, 1114112
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %529, !prof !199

507:                                              ; preds = %503
  %508 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %4, i32 noundef %497) #12
  br label %529

509:                                              ; preds = %500
  %510 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %497) #12
  %511 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %512 = zext i32 %497 to i64
  %513 = getelementptr inbounds %struct.reg_info_t, ptr %511, i64 %512, i32 2
  %514 = load i32, ptr %513, align 4, !tbaa !161
  %515 = add nsw i32 %514, %281
  store i32 %515, ptr %513, align 4, !tbaa !161
  br label %529

516:                                              ; preds = %495
  %517 = load i32, ptr %486, align 8
  %518 = and i32 %517, 268435456
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %529, !prof !200

520:                                              ; preds = %516
  %521 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %497) #12
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %529, !prof !200

523:                                              ; preds = %520
  %524 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %525 = zext i32 %497 to i64
  %526 = getelementptr inbounds %struct.reg_info_t, ptr %524, i64 %525, i32 2
  %527 = load i32, ptr %526, align 4, !tbaa !161
  %528 = add nsw i32 %527, 1
  store i32 %528, ptr %526, align 4, !tbaa !161
  br label %529

529:                                              ; preds = %523, %520, %516, %509, %507, %503
  %530 = icmp ugt i32 %497, 52
  br i1 %530, label %531, label %569, !prof !201

531:                                              ; preds = %529
  %532 = load i32, ptr @optimize_size, align 4, !tbaa !80
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %551, !prof !202

534:                                              ; preds = %531
  %535 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %545, label %537, !prof !202

537:                                              ; preds = %534
  %538 = load ptr, ptr @cfun, align 8, !tbaa !65
  %539 = getelementptr inbounds %struct.function, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !106
  %541 = load ptr, ptr %540, align 8, !tbaa !108
  %542 = getelementptr inbounds %struct.basic_block_def, ptr %541, i64 0, i32 8
  %543 = load i64, ptr %542, align 8, !tbaa !180
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %551, label %545

545:                                              ; preds = %537, %534
  %546 = load i32, ptr %181, align 8, !tbaa !181
  %547 = add i32 %546, 9
  %548 = icmp ult i32 %547, 19
  br i1 %548, label %551, label %549, !prof !203

549:                                              ; preds = %545
  %550 = sdiv i32 %546, 10
  br label %551

551:                                              ; preds = %537, %549, %545, %531
  %552 = phi i32 [ 1000, %531 ], [ %550, %549 ], [ 1, %545 ], [ 1000, %537 ]
  %553 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %554 = zext i32 %497 to i64
  %555 = getelementptr inbounds %struct.reg_info_t, ptr %553, i64 %554
  %556 = load i32, ptr %555, align 4, !tbaa !204
  %557 = add nsw i32 %556, %552
  store i32 %557, ptr %555, align 4, !tbaa !204
  %558 = getelementptr inbounds %struct.reg_info_t, ptr %553, i64 %554, i32 6
  %559 = load i32, ptr %558, align 4, !tbaa !133
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %564, !prof !205

561:                                              ; preds = %551
  %562 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %563 = load i32, ptr %562, align 8, !tbaa !114
  br label %567

564:                                              ; preds = %551
  %565 = load i32, ptr %182, align 8, !tbaa !114
  %566 = icmp eq i32 %559, %565
  br i1 %566, label %569, label %567, !prof !206

567:                                              ; preds = %564, %561
  %568 = phi i32 [ %563, %561 ], [ -1, %564 ]
  store i32 %568, ptr %558, align 4, !tbaa !133
  br label %569

569:                                              ; preds = %567, %564, %529
  %570 = load i32, ptr %486, align 8
  %571 = and i32 %570, 12582912
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %575, !prof !207

573:                                              ; preds = %569
  %574 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %497) #12
  br label %575

575:                                              ; preds = %573, %569
  %576 = load i32, ptr %486, align 8
  %577 = and i32 %576, 1114112
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %581, !prof !208

579:                                              ; preds = %575
  %580 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %1, i32 noundef %497) #12
  br label %581

581:                                              ; preds = %579, %575, %491
  %582 = getelementptr inbounds ptr, ptr %487, i64 1
  %583 = load ptr, ptr %582, align 8, !tbaa !65
  %584 = icmp eq ptr %583, null
  br i1 %584, label %585, label %485, !prof !209, !llvm.loop !210

585:                                              ; preds = %581, %475
  %586 = load ptr, ptr @df, align 8, !tbaa !65
  %587 = getelementptr inbounds %struct.df, ptr %586, i64 0, i32 10
  %588 = load ptr, ptr %587, align 8, !tbaa !186
  %589 = getelementptr inbounds ptr, ptr %588, i64 %432
  %590 = load ptr, ptr %589, align 8, !tbaa !65
  %591 = getelementptr inbounds %struct.df_insn_info, ptr %590, i64 0, i32 2
  %592 = load ptr, ptr %591, align 8, !tbaa !211
  %593 = load ptr, ptr %592, align 8, !tbaa !65
  %594 = icmp eq ptr %593, null
  br i1 %594, label %656, label %595, !prof !212

595:                                              ; preds = %585, %652
  %596 = phi ptr [ %654, %652 ], [ %593, %585 ]
  %597 = phi ptr [ %653, %652 ], [ %592, %585 ]
  %598 = getelementptr inbounds %struct.df_base_ref, ptr %596, i64 0, i32 6
  %599 = load i32, ptr %598, align 8, !tbaa !76
  %600 = icmp ugt i32 %599, 52
  br i1 %600, label %601, label %640, !prof !213

601:                                              ; preds = %595
  %602 = load i32, ptr @optimize_size, align 4, !tbaa !80
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %621, !prof !214

604:                                              ; preds = %601
  %605 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %615, label %607, !prof !214

607:                                              ; preds = %604
  %608 = load ptr, ptr @cfun, align 8, !tbaa !65
  %609 = getelementptr inbounds %struct.function, ptr %608, i64 0, i32 1
  %610 = load ptr, ptr %609, align 8, !tbaa !106
  %611 = load ptr, ptr %610, align 8, !tbaa !108
  %612 = getelementptr inbounds %struct.basic_block_def, ptr %611, i64 0, i32 8
  %613 = load i64, ptr %612, align 8, !tbaa !180
  %614 = icmp eq i64 %613, 0
  br i1 %614, label %621, label %615

615:                                              ; preds = %607, %604
  %616 = load i32, ptr %183, align 8, !tbaa !181
  %617 = add i32 %616, 9
  %618 = icmp ult i32 %617, 19
  br i1 %618, label %621, label %619, !prof !215

619:                                              ; preds = %615
  %620 = sdiv i32 %616, 10
  br label %621

621:                                              ; preds = %607, %619, %615, %601
  %622 = phi i32 [ 1000, %601 ], [ %620, %619 ], [ 1, %615 ], [ 1000, %607 ]
  %623 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %624 = zext i32 %599 to i64
  %625 = getelementptr inbounds %struct.reg_info_t, ptr %623, i64 %624
  %626 = load i32, ptr %625, align 4, !tbaa !204
  %627 = add nsw i32 %626, %622
  store i32 %627, ptr %625, align 4, !tbaa !204
  %628 = getelementptr inbounds %struct.reg_info_t, ptr %623, i64 %624, i32 6
  %629 = load i32, ptr %628, align 4, !tbaa !133
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %634, !prof !216

631:                                              ; preds = %621
  %632 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %633 = load i32, ptr %632, align 8, !tbaa !114
  br label %638

634:                                              ; preds = %621
  %635 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %636 = load i32, ptr %635, align 8, !tbaa !114
  %637 = icmp eq i32 %629, %636
  br i1 %637, label %640, label %638, !prof !217

638:                                              ; preds = %634, %631
  %639 = phi i32 [ %633, %631 ], [ -1, %634 ]
  store i32 %639, ptr %628, align 4, !tbaa !133
  br label %640

640:                                              ; preds = %638, %634, %595
  %641 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %1, i32 noundef %599) #12
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %652, !prof !218

643:                                              ; preds = %640
  %644 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %1, i32 noundef %599) #12
  %645 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %646 = zext i32 %599 to i64
  %647 = getelementptr inbounds %struct.reg_info_t, ptr %645, i64 %646, i32 2
  %648 = load i32, ptr %647, align 4, !tbaa !161
  %649 = add nsw i32 %648, 1
  store i32 %649, ptr %647, align 4, !tbaa !161
  %650 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %4, i32 noundef %599) #12
  %651 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %599) #12
  br label %652

652:                                              ; preds = %643, %640
  %653 = getelementptr inbounds ptr, ptr %597, i64 1
  %654 = load ptr, ptr %653, align 8, !tbaa !65
  %655 = icmp eq ptr %654, null
  br i1 %655, label %656, label %595, !prof !219, !llvm.loop !220

656:                                              ; preds = %652, %585, %192
  %657 = phi i32 [ %186, %192 ], [ %281, %585 ], [ %281, %652 ]
  %658 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %659 = load ptr, ptr %658, align 8, !tbaa !76
  %660 = icmp eq ptr %659, null
  br i1 %660, label %661, label %184, !prof !221, !llvm.loop !222

661:                                              ; preds = %656, %184, %174
  %662 = phi i32 [ 0, %174 ], [ %657, %656 ], [ %186, %184 ]
  %663 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef nonnull %1, ptr noundef %5) #12
  %664 = load ptr, ptr %1, align 8, !tbaa !116
  %665 = icmp eq ptr %664, null
  %666 = select i1 %665, ptr @bitmap_zero_bits, ptr %664, !prof !118
  %667 = getelementptr inbounds %struct.bitmap_element_def, ptr %666, i64 0, i32 2
  %668 = load i32, ptr %667, align 8, !tbaa !119
  %669 = shl i32 %668, 7
  %670 = getelementptr inbounds %struct.bitmap_element_def, ptr %666, i64 0, i32 3, i64 0
  %671 = load i64, ptr %670, align 8, !tbaa !105
  %672 = icmp eq i64 %671, 0
  %673 = zext i1 %672 to i32
  %674 = or disjoint i32 %669, %673
  %675 = load ptr, ptr @reg_info_p, align 8
  br label %676

676:                                              ; preds = %737, %661
  %677 = phi i32 [ 0, %661 ], [ %732, %737 ]
  %678 = phi ptr [ %666, %661 ], [ %733, %737 ]
  %679 = phi i32 [ %674, %661 ], [ %743, %737 ]
  %680 = phi i64 [ %671, %661 ], [ %742, %737 ]
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %696, label %682, !prof !223

682:                                              ; preds = %710, %676
  %683 = phi i32 [ %677, %676 ], [ %711, %710 ]
  %684 = phi ptr [ %678, %676 ], [ %701, %710 ]
  %685 = phi i32 [ %679, %676 ], [ %712, %710 ]
  %686 = phi i64 [ %680, %676 ], [ %715, %710 ]
  %687 = and i64 %686, 1
  %688 = icmp eq i64 %687, 0
  br i1 %688, label %689, label %731, !prof !224

689:                                              ; preds = %682, %689
  %690 = phi i64 [ %692, %689 ], [ %686, %682 ]
  %691 = phi i32 [ %693, %689 ], [ %685, %682 ]
  %692 = lshr exact i64 %690, 1
  %693 = add i32 %691, 1
  %694 = and i64 %690, 2
  %695 = icmp eq i64 %694, 0
  br i1 %695, label %689, label %731, !prof !225, !llvm.loop !124

696:                                              ; preds = %676
  %697 = add i32 %679, 63
  %698 = and i32 %697, -64
  %699 = add i32 %677, 1
  br label %700

700:                                              ; preds = %727, %696
  %701 = phi ptr [ %678, %696 ], [ %725, %727 ]
  %702 = phi i32 [ %698, %696 ], [ %730, %727 ]
  %703 = phi i64 [ %680, %696 ], [ %723, %727 ]
  %704 = phi i32 [ %699, %696 ], [ 0, %727 ]
  %705 = icmp eq i32 %704, 2
  br i1 %705, label %721, label %706, !prof !226

706:                                              ; preds = %700
  %707 = add i32 %702, 128
  %708 = shl i32 %704, 6
  %709 = sub i32 %707, %708
  br label %710

710:                                              ; preds = %706, %717
  %711 = phi i32 [ %719, %717 ], [ %704, %706 ]
  %712 = phi i32 [ %718, %717 ], [ %702, %706 ]
  %713 = zext i32 %711 to i64
  %714 = getelementptr inbounds %struct.bitmap_element_def, ptr %701, i64 0, i32 3, i64 %713
  %715 = load i64, ptr %714, align 8, !tbaa !105
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %717, label %682, !prof !227

717:                                              ; preds = %710
  %718 = add i32 %712, 64
  %719 = add i32 %711, 1
  %720 = icmp eq i32 %719, 2
  br i1 %720, label %721, label %710, !prof !228, !llvm.loop !128

721:                                              ; preds = %717, %700
  %722 = phi i32 [ %702, %700 ], [ %709, %717 ]
  %723 = phi i64 [ %703, %700 ], [ %715, %717 ]
  %724 = phi i32 [ %704, %700 ], [ 2, %717 ]
  %725 = load ptr, ptr %701, align 8, !tbaa !129
  %726 = icmp eq ptr %725, null
  br i1 %726, label %731, label %727, !prof !229

727:                                              ; preds = %721
  %728 = getelementptr inbounds %struct.bitmap_element_def, ptr %725, i64 0, i32 2
  %729 = load i32, ptr %728, align 8, !tbaa !119
  %730 = shl i32 %729, 7
  br label %700, !llvm.loop !131

731:                                              ; preds = %721, %689, %682
  %732 = phi i32 [ %683, %682 ], [ %683, %689 ], [ %724, %721 ]
  %733 = phi ptr [ %684, %682 ], [ %684, %689 ], [ %725, %721 ]
  %734 = phi i32 [ %685, %682 ], [ %693, %689 ], [ %722, %721 ]
  %735 = phi i64 [ %686, %682 ], [ %692, %689 ], [ %723, %721 ]
  %736 = phi i1 [ false, %682 ], [ false, %689 ], [ true, %721 ]
  br i1 %736, label %744, label %737, !prof !230

737:                                              ; preds = %731
  %738 = zext i32 %734 to i64
  %739 = getelementptr inbounds %struct.reg_info_t, ptr %675, i64 %738, i32 2
  %740 = load i32, ptr %739, align 4, !tbaa !161
  %741 = add nsw i32 %740, %662
  store i32 %741, ptr %739, align 4, !tbaa !161
  %742 = lshr i64 %735, 1
  %743 = add i32 %734, 1
  br label %676, !llvm.loop !231

744:                                              ; preds = %731
  tail call void @bitmap_clear(ptr noundef %5) #12
  tail call void @bitmap_clear(ptr noundef %4) #12
  %745 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %746 = load ptr, ptr %745, align 8, !tbaa !110
  %747 = load ptr, ptr @cfun, align 8, !tbaa !65
  %748 = getelementptr inbounds %struct.function, ptr %747, i64 0, i32 1
  %749 = load ptr, ptr %748, align 8, !tbaa !106
  %750 = getelementptr inbounds %struct.control_flow_graph, ptr %749, i64 0, i32 1
  %751 = load ptr, ptr %750, align 8, !tbaa !112
  %752 = icmp eq ptr %746, %751
  br i1 %752, label %753, label %27, !prof !232, !llvm.loop !233

753:                                              ; preds = %744, %13
  tail call void @bitmap_obstack_free(ptr noundef %1) #12
  tail call void @bitmap_obstack_free(ptr noundef %2) #12
  tail call void @bitmap_obstack_free(ptr noundef %3) #12
  %754 = load ptr, ptr @setjmp_crosses, align 8, !tbaa !65
  %755 = load ptr, ptr %754, align 8, !tbaa !116
  %756 = icmp eq ptr %755, null
  %757 = select i1 %756, ptr @bitmap_zero_bits, ptr %755, !prof !104
  %758 = getelementptr inbounds %struct.bitmap_element_def, ptr %757, i64 0, i32 2
  %759 = load i32, ptr %758, align 8, !tbaa !119
  %760 = icmp eq i32 %759, 0
  %761 = shl i32 %759, 7
  %762 = select i1 %760, i32 53, i32 %761, !prof !104
  %763 = getelementptr inbounds %struct.bitmap_element_def, ptr %757, i64 0, i32 3, i64 0
  %764 = load i64, ptr %763, align 8, !tbaa !105
  %765 = and i32 %762, 53
  %766 = zext nneg i32 %765 to i64
  %767 = lshr i64 %764, %766
  %768 = icmp eq i64 %767, 0
  %769 = zext i1 %768 to i32
  %770 = add nuw nsw i32 %762, %769
  %771 = load ptr, ptr @reg_info_p, align 8
  br label %772

772:                                              ; preds = %833, %753
  %773 = phi i64 [ %767, %753 ], [ %837, %833 ]
  %774 = phi i32 [ 0, %753 ], [ %829, %833 ]
  %775 = phi i32 [ %770, %753 ], [ %838, %833 ]
  %776 = phi ptr [ %757, %753 ], [ %831, %833 ]
  %777 = icmp eq i64 %773, 0
  br i1 %777, label %792, label %778, !prof !104

778:                                              ; preds = %806, %772
  %779 = phi i64 [ %773, %772 ], [ %811, %806 ]
  %780 = phi i32 [ %774, %772 ], [ %807, %806 ]
  %781 = phi i32 [ %775, %772 ], [ %808, %806 ]
  %782 = phi ptr [ %776, %772 ], [ %799, %806 ]
  %783 = and i64 %779, 1
  %784 = icmp eq i64 %783, 0
  br i1 %784, label %785, label %827

785:                                              ; preds = %778, %785
  %786 = phi i32 [ %789, %785 ], [ %781, %778 ]
  %787 = phi i64 [ %788, %785 ], [ %779, %778 ]
  %788 = lshr exact i64 %787, 1
  %789 = add i32 %786, 1
  %790 = and i64 %787, 2
  %791 = icmp eq i64 %790, 0
  br i1 %791, label %785, label %827, !llvm.loop !124

792:                                              ; preds = %772
  %793 = add i32 %775, 63
  %794 = and i32 %793, -64
  %795 = add i32 %774, 1
  br label %796

796:                                              ; preds = %823, %792
  %797 = phi i64 [ %773, %792 ], [ %818, %823 ]
  %798 = phi i32 [ %794, %792 ], [ %826, %823 ]
  %799 = phi ptr [ %776, %792 ], [ %821, %823 ]
  %800 = phi i32 [ %795, %792 ], [ 0, %823 ]
  %801 = icmp eq i32 %800, 2
  br i1 %801, label %817, label %802, !prof !113

802:                                              ; preds = %796
  %803 = add i32 %798, 128
  %804 = shl i32 %800, 6
  %805 = sub i32 %803, %804
  br label %806

806:                                              ; preds = %802, %813
  %807 = phi i32 [ %815, %813 ], [ %800, %802 ]
  %808 = phi i32 [ %814, %813 ], [ %798, %802 ]
  %809 = zext i32 %807 to i64
  %810 = getelementptr inbounds %struct.bitmap_element_def, ptr %799, i64 0, i32 3, i64 %809
  %811 = load i64, ptr %810, align 8, !tbaa !105
  %812 = icmp eq i64 %811, 0
  br i1 %812, label %813, label %778, !prof !104

813:                                              ; preds = %806
  %814 = add i32 %808, 64
  %815 = add i32 %807, 1
  %816 = icmp eq i32 %815, 2
  br i1 %816, label %817, label %806, !prof !234, !llvm.loop !128

817:                                              ; preds = %813, %796
  %818 = phi i64 [ %797, %796 ], [ %811, %813 ]
  %819 = phi i32 [ %798, %796 ], [ %805, %813 ]
  %820 = phi i32 [ %800, %796 ], [ 2, %813 ]
  %821 = load ptr, ptr %799, align 8, !tbaa !129
  %822 = icmp eq ptr %821, null
  br i1 %822, label %827, label %823, !prof !104

823:                                              ; preds = %817
  %824 = getelementptr inbounds %struct.bitmap_element_def, ptr %821, i64 0, i32 2
  %825 = load i32, ptr %824, align 8, !tbaa !119
  %826 = shl i32 %825, 7
  br label %796, !llvm.loop !131

827:                                              ; preds = %817, %785, %778
  %828 = phi i64 [ %779, %778 ], [ %788, %785 ], [ %818, %817 ]
  %829 = phi i32 [ %780, %778 ], [ %780, %785 ], [ %820, %817 ]
  %830 = phi i32 [ %781, %778 ], [ %789, %785 ], [ %819, %817 ]
  %831 = phi ptr [ %782, %778 ], [ %782, %785 ], [ %821, %817 ]
  %832 = phi i1 [ false, %778 ], [ false, %785 ], [ true, %817 ]
  br i1 %832, label %839, label %833, !prof !104

833:                                              ; preds = %827
  %834 = zext i32 %830 to i64
  %835 = getelementptr inbounds %struct.reg_info_t, ptr %771, i64 %834, i32 6
  store i32 0, ptr %835, align 4, !tbaa !133
  %836 = getelementptr inbounds %struct.reg_info_t, ptr %771, i64 %834, i32 2
  store i32 -1, ptr %836, align 4, !tbaa !161
  %837 = lshr i64 %828, 1
  %838 = add i32 %830, 1
  br label %772, !llvm.loop !235

839:                                              ; preds = %827
  tail call void @bitmap_obstack_free(ptr noundef %4) #12
  tail call void @bitmap_obstack_free(ptr noundef %5) #12
  %840 = load i8, ptr @timevar_enable, align 1, !tbaa !76
  %841 = icmp eq i8 %840, 0
  br i1 %841, label %843, label %842, !prof !104

842:                                              ; preds = %839
  tail call void @timevar_pop_1(i32 noundef 37) #12
  br label %843

843:                                              ; preds = %842, %839
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @regstat_free_ri() local_unnamed_addr #8 !prof !103 {
  %1 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !236

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %0, %3
  store i64 0, ptr @reg_info_p_size, align 8, !tbaa !105
  %5 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  tail call void @free(ptr noundef %5)
  store ptr null, ptr @reg_info_p, align 8, !tbaa !65
  %6 = load ptr, ptr @setjmp_crosses, align 8, !tbaa !65
  tail call void @bitmap_obstack_free(ptr noundef %6) #12
  store ptr null, ptr @setjmp_crosses, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @regstat_get_setjmp_crosses() local_unnamed_addr #10 !prof !237 {
  %1 = load ptr, ptr @setjmp_crosses, align 8, !tbaa !65
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local void @regstat_compute_calls_crossed() local_unnamed_addr #8 !prof !237 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #12
  %2 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !238

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #12
  br label %5

5:                                                ; preds = %0, %4
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !76
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !238

8:                                                ; preds = %5
  tail call void @timevar_push_1(i32 noundef 37) #12
  br label %9

9:                                                ; preds = %8, %5
  %10 = tail call i32 @max_reg_num() #12
  store i32 %10, ptr @max_regno, align 4, !tbaa !80
  %11 = sext i32 %10 to i64
  store i64 %11, ptr @reg_info_p_size, align 8, !tbaa !105
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 28) #12
  store ptr %12, ptr @reg_info_p, align 8, !tbaa !65
  %13 = load ptr, ptr @cfun, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %282, label %22, !prof !113

22:                                               ; preds = %9, %273
  %23 = phi ptr [ %278, %273 ], [ %15, %9 ]
  %24 = phi ptr [ %275, %273 ], [ %18, %9 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !114
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %28, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = tail call ptr @df_get_live_out(ptr noundef %31) #12
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %32) #12
  %33 = load ptr, ptr @df, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.dataflow, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !136
  %38 = icmp ugt i32 %37, %26
  tail call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds %struct.dataflow, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !138
  %41 = getelementptr inbounds ptr, ptr %40, i64 %29
  %42 = load ptr, ptr %41, align 8, !tbaa !65
  %43 = load ptr, ptr %42, align 8, !tbaa !139
  %44 = load ptr, ptr %43, align 8, !tbaa !65
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46, !prof !141

46:                                               ; preds = %22, %56
  %47 = phi ptr [ %58, %56 ], [ %44, %22 ]
  %48 = phi ptr [ %57, %56 ], [ %43, %22 ]
  %49 = load i32, ptr %47, align 8
  %50 = and i32 %49, 131072
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.df_base_ref, ptr %47, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !76
  %55 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %54) #12
  br label %56

56:                                               ; preds = %52, %46
  %57 = getelementptr inbounds ptr, ptr %48, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !65
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %46, !prof !141, !llvm.loop !239

60:                                               ; preds = %56, %22
  %61 = load ptr, ptr @df, align 8, !tbaa !65
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !65
  %64 = getelementptr inbounds %struct.dataflow, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !136
  %66 = icmp ugt i32 %65, %26
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds %struct.dataflow, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !138
  %69 = getelementptr inbounds ptr, ptr %68, i64 %29
  %70 = load ptr, ptr %69, align 8, !tbaa !65
  %71 = getelementptr inbounds %struct.df_scan_bb_info, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !143
  %73 = load ptr, ptr %72, align 8, !tbaa !65
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75, !prof !240

75:                                               ; preds = %60, %85
  %76 = phi ptr [ %87, %85 ], [ %73, %60 ]
  %77 = phi ptr [ %86, %85 ], [ %72, %60 ]
  %78 = load i32, ptr %76, align 8
  %79 = and i32 %78, 131072
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85, !prof !241

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.df_base_ref, ptr %76, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !76
  %84 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %83) #12
  br label %85

85:                                               ; preds = %81, %75
  %86 = getelementptr inbounds ptr, ptr %77, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !65
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %75, !prof !242, !llvm.loop !243

89:                                               ; preds = %85, %60
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !76
  %92 = getelementptr inbounds %struct.rtl_bb_info, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !76
  %94 = icmp eq ptr %93, null
  br i1 %94, label %273, label %95, !prof !244

95:                                               ; preds = %89, %269
  %96 = phi ptr [ %271, %269 ], [ %93, %89 ]
  %97 = load ptr, ptr %90, align 8, !tbaa !76
  %98 = load ptr, ptr %97, align 8, !tbaa !148
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !76
  %101 = icmp eq ptr %96, %100
  br i1 %101, label %273, label %102, !prof !245

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !76
  %105 = load i32, ptr %96, align 8
  %106 = and i32 %105, 65535
  %107 = add nsw i32 %106, -7
  %108 = icmp ult i32 %107, 4
  br i1 %108, label %109, label %269, !prof !246

109:                                              ; preds = %102
  %110 = icmp eq i32 %106, 10
  br i1 %110, label %111, label %217, !prof !247

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 11
  %113 = load ptr, ptr %1, align 8, !tbaa !116
  %114 = icmp eq ptr %113, null
  %115 = select i1 %114, ptr @bitmap_zero_bits, ptr %113, !prof !248
  %116 = getelementptr inbounds %struct.bitmap_element_def, ptr %115, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !119
  %118 = shl i32 %117, 7
  %119 = getelementptr inbounds %struct.bitmap_element_def, ptr %115, i64 0, i32 3, i64 0
  %120 = load i64, ptr %119, align 8, !tbaa !105
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = or disjoint i32 %118, %122
  %124 = load ptr, ptr @reg_info_p, align 8
  %125 = load ptr, ptr @cfun, align 8
  br label %126

126:                                              ; preds = %210, %111
  %127 = phi i64 [ %120, %111 ], [ %215, %210 ]
  %128 = phi i32 [ 0, %111 ], [ %183, %210 ]
  %129 = phi i32 [ %123, %111 ], [ %216, %210 ]
  %130 = phi ptr [ %115, %111 ], [ %185, %210 ]
  %131 = icmp eq i64 %127, 0
  br i1 %131, label %146, label %132, !prof !249

132:                                              ; preds = %160, %126
  %133 = phi i64 [ %127, %126 ], [ %165, %160 ]
  %134 = phi i32 [ %128, %126 ], [ %161, %160 ]
  %135 = phi i32 [ %129, %126 ], [ %162, %160 ]
  %136 = phi ptr [ %130, %126 ], [ %153, %160 ]
  %137 = and i64 %133, 1
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %181, !prof !250

139:                                              ; preds = %132, %139
  %140 = phi i32 [ %143, %139 ], [ %135, %132 ]
  %141 = phi i64 [ %142, %139 ], [ %133, %132 ]
  %142 = lshr exact i64 %141, 1
  %143 = add i32 %140, 1
  %144 = and i64 %141, 2
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %139, label %181, !prof !251, !llvm.loop !124

146:                                              ; preds = %126
  %147 = add i32 %129, 63
  %148 = and i32 %147, -64
  %149 = add i32 %128, 1
  br label %150

150:                                              ; preds = %177, %146
  %151 = phi i64 [ %127, %146 ], [ %172, %177 ]
  %152 = phi i32 [ %148, %146 ], [ %180, %177 ]
  %153 = phi ptr [ %130, %146 ], [ %175, %177 ]
  %154 = phi i32 [ %149, %146 ], [ 0, %177 ]
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %171, label %156, !prof !252

156:                                              ; preds = %150
  %157 = add i32 %152, 128
  %158 = shl i32 %154, 6
  %159 = sub i32 %157, %158
  br label %160

160:                                              ; preds = %156, %167
  %161 = phi i32 [ %169, %167 ], [ %154, %156 ]
  %162 = phi i32 [ %168, %167 ], [ %152, %156 ]
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds %struct.bitmap_element_def, ptr %153, i64 0, i32 3, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !105
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %132, !prof !253

167:                                              ; preds = %160
  %168 = add i32 %162, 64
  %169 = add i32 %161, 1
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %160, !prof !254, !llvm.loop !128

171:                                              ; preds = %167, %150
  %172 = phi i64 [ %151, %150 ], [ %165, %167 ]
  %173 = phi i32 [ %152, %150 ], [ %159, %167 ]
  %174 = phi i32 [ %154, %150 ], [ 2, %167 ]
  %175 = load ptr, ptr %153, align 8, !tbaa !129
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177, !prof !253

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.bitmap_element_def, ptr %175, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !119
  %180 = shl i32 %179, 7
  br label %150, !llvm.loop !131

181:                                              ; preds = %171, %139, %132
  %182 = phi i64 [ %133, %132 ], [ %142, %139 ], [ %172, %171 ]
  %183 = phi i32 [ %134, %132 ], [ %134, %139 ], [ %174, %171 ]
  %184 = phi i32 [ %135, %132 ], [ %143, %139 ], [ %173, %171 ]
  %185 = phi ptr [ %136, %132 ], [ %136, %139 ], [ %175, %171 ]
  %186 = phi i1 [ false, %132 ], [ false, %139 ], [ true, %171 ]
  br i1 %186, label %217, label %187, !prof !249

187:                                              ; preds = %181
  %188 = zext i32 %184 to i64
  %189 = getelementptr inbounds %struct.reg_info_t, ptr %124, i64 %188, i32 3
  %190 = load i32, ptr %189, align 4, !tbaa !178
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %189, align 4, !tbaa !178
  %192 = load i32, ptr @optimize_size, align 4, !tbaa !80
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %210, !prof !255

194:                                              ; preds = %187
  %195 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !80
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %204, label %197, !prof !255

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !106
  %200 = load ptr, ptr %199, align 8, !tbaa !108
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %200, i64 0, i32 8
  %202 = load i64, ptr %201, align 8, !tbaa !180
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %197, %194
  %205 = load i32, ptr %112, align 8, !tbaa !181
  %206 = add i32 %205, 9
  %207 = icmp ult i32 %206, 19
  br i1 %207, label %210, label %208, !prof !256

208:                                              ; preds = %204
  %209 = sdiv i32 %205, 10
  br label %210

210:                                              ; preds = %197, %208, %204, %187
  %211 = phi i32 [ 1000, %187 ], [ %209, %208 ], [ 1, %204 ], [ 1000, %197 ]
  %212 = getelementptr inbounds %struct.reg_info_t, ptr %124, i64 %188, i32 4
  %213 = load i32, ptr %212, align 4, !tbaa !183
  %214 = add nsw i32 %213, %211
  store i32 %214, ptr %212, align 4, !tbaa !183
  %215 = lshr i64 %182, 1
  %216 = add i32 %184, 1
  br label %126, !llvm.loop !257

217:                                              ; preds = %181, %109
  %218 = load ptr, ptr @df, align 8, !tbaa !65
  %219 = getelementptr inbounds %struct.df, ptr %218, i64 0, i32 10
  %220 = load ptr, ptr %219, align 8, !tbaa !186
  %221 = zext i32 %104 to i64
  %222 = getelementptr inbounds ptr, ptr %220, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !65
  %224 = getelementptr inbounds %struct.df_insn_info, ptr %223, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !193
  %226 = load ptr, ptr %225, align 8, !tbaa !65
  %227 = icmp eq ptr %226, null
  br i1 %227, label %250, label %228, !prof !258

228:                                              ; preds = %217, %246
  %229 = phi ptr [ %248, %246 ], [ %226, %217 ]
  %230 = phi ptr [ %247, %246 ], [ %225, %217 ]
  %231 = load i32, ptr %96, align 8
  %232 = and i32 %231, 65535
  %233 = icmp eq i32 %232, 10
  br i1 %233, label %234, label %238, !prof !259

234:                                              ; preds = %228
  %235 = load i32, ptr %229, align 8
  %236 = and i32 %235, 12582912
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %246, !prof !260

238:                                              ; preds = %234, %228
  %239 = load i32, ptr %229, align 8
  %240 = and i32 %239, 1114112
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246, !prof !261

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.df_base_ref, ptr %229, i64 0, i32 6
  %244 = load i32, ptr %243, align 8, !tbaa !76
  %245 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %244) #12
  br label %246

246:                                              ; preds = %242, %238, %234
  %247 = getelementptr inbounds ptr, ptr %230, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !65
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %228, !prof !262, !llvm.loop !263

250:                                              ; preds = %246, %217
  %251 = load ptr, ptr @df, align 8, !tbaa !65
  %252 = getelementptr inbounds %struct.df, ptr %251, i64 0, i32 10
  %253 = load ptr, ptr %252, align 8, !tbaa !186
  %254 = getelementptr inbounds ptr, ptr %253, i64 %221
  %255 = load ptr, ptr %254, align 8, !tbaa !65
  %256 = getelementptr inbounds %struct.df_insn_info, ptr %255, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !211
  %258 = load ptr, ptr %257, align 8, !tbaa !65
  %259 = icmp eq ptr %258, null
  br i1 %259, label %269, label %260, !prof !264

260:                                              ; preds = %250, %260
  %261 = phi ptr [ %267, %260 ], [ %258, %250 ]
  %262 = phi ptr [ %266, %260 ], [ %257, %250 ]
  %263 = getelementptr inbounds %struct.df_base_ref, ptr %261, i64 0, i32 6
  %264 = load i32, ptr %263, align 8, !tbaa !76
  %265 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %264) #12
  %266 = getelementptr inbounds ptr, ptr %262, i64 1
  %267 = load ptr, ptr %266, align 8, !tbaa !65
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %260, !prof !265, !llvm.loop !266

269:                                              ; preds = %260, %250, %102
  %270 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %271 = load ptr, ptr %270, align 8, !tbaa !76
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %95, !prof !267, !llvm.loop !268

273:                                              ; preds = %95, %269, %89
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %275 = load ptr, ptr %274, align 8, !tbaa !110
  %276 = load ptr, ptr @cfun, align 8, !tbaa !65
  %277 = getelementptr inbounds %struct.function, ptr %276, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !106
  %279 = getelementptr inbounds %struct.control_flow_graph, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !112
  %281 = icmp eq ptr %275, %280
  br i1 %281, label %282, label %22, !prof !269, !llvm.loop !270

282:                                              ; preds = %273, %9
  tail call void @bitmap_obstack_free(ptr noundef %1) #12
  %283 = load i8, ptr @timevar_enable, align 1, !tbaa !76
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %286, label %285, !prof !238

285:                                              ; preds = %282
  tail call void @timevar_pop_1(i32 noundef 37) #12
  br label %286

286:                                              ; preds = %285, %282
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @regstat_free_calls_crossed() local_unnamed_addr #8 !prof !237 {
  %1 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !271

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 523, ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %0, %3
  store i64 0, ptr @reg_info_p_size, align 8, !tbaa !105
  %5 = load ptr, ptr @reg_info_p, align 8, !tbaa !65
  tail call void @free(ptr noundef %5)
  store ptr null, ptr @reg_info_p, align 8, !tbaa !65
  ret void
}

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @regstat_init_n_sets_and_refs, ptr @max_reg_num, i64 114}
!36 = !{ptr @regstat_init_n_sets_and_refs, ptr @df_grow_reg_info, i64 114}
!37 = !{ptr @regstat_init_n_sets_and_refs, ptr @xmalloc, i64 114}
!38 = !{ptr @regstat_free_n_sets_and_refs, ptr @free, i64 114}
!39 = !{ptr @regstat_compute_ri, ptr @bitmap_obstack_alloc_stat, i64 456}
!40 = !{ptr @regstat_compute_ri, ptr @max_reg_num, i64 76}
!41 = !{ptr @regstat_compute_ri, ptr @xcalloc, i64 76}
!42 = !{ptr @regstat_compute_ri, ptr @df_get_live_out, i64 309265}
!43 = !{ptr @regstat_compute_ri, ptr @bitmap_copy, i64 309265}
!44 = !{ptr @regstat_compute_ri, ptr @bitmap_clear, i64 2153091}
!45 = !{ptr @regstat_compute_ri, ptr @bitmap_set_bit, i64 5326493}
!46 = !{ptr @regstat_compute_ri, ptr @can_throw_internal, i64 137011}
!47 = !{ptr @regstat_compute_ri, ptr @find_reg_note, i64 137011}
!48 = !{ptr @regstat_compute_ri, ptr @bitmap_bit_p, i64 2665115}
!49 = !{ptr @regstat_compute_ri, ptr @bitmap_clear_bit, i64 1404073}
!50 = !{ptr @regstat_compute_ri, ptr @bitmap_and_compl_into, i64 309265}
!51 = !{ptr @regstat_compute_ri, ptr @bitmap_obstack_free, i64 380}
!52 = !{ptr @regstat_free_ri, ptr @free, i64 76}
!53 = !{ptr @regstat_free_ri, ptr @bitmap_obstack_free, i64 76}
!54 = !{ptr @regstat_compute_calls_crossed, ptr @bitmap_obstack_alloc_stat, i64 38}
!55 = !{ptr @regstat_compute_calls_crossed, ptr @max_reg_num, i64 38}
!56 = !{ptr @regstat_compute_calls_crossed, ptr @xcalloc, i64 38}
!57 = !{ptr @regstat_compute_calls_crossed, ptr @df_get_live_out, i64 187028}
!58 = !{ptr @regstat_compute_calls_crossed, ptr @bitmap_copy, i64 187028}
!59 = !{ptr @regstat_compute_calls_crossed, ptr @bitmap_set_bit, i64 882277}
!60 = !{ptr @regstat_compute_calls_crossed, ptr @bitmap_clear_bit, i64 331446}
!61 = !{ptr @regstat_compute_calls_crossed, ptr @bitmap_obstack_free, i64 38}
!62 = !{ptr @regstat_free_calls_crossed, ptr @free, i64 38}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!70, !66, i64 8}
!70 = !{!"_IO_FILE", !71, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !71, i64 112, !71, i64 116, !72, i64 120, !73, i64 128, !67, i64 130, !67, i64 131, !66, i64 136, !72, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !72, i64 184, !71, i64 192, !67, i64 196}
!71 = !{!"int", !67, i64 0}
!72 = !{!"long", !67, i64 0}
!73 = !{!"short", !67, i64 0}
!74 = !{!70, !66, i64 16}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!67, !67, i64 0}
!77 = !{!70, !66, i64 40}
!78 = !{!70, !66, i64 48}
!79 = !{!70, !71, i64 0}
!80 = !{!71, !71, i64 0}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!"function_entry_count", i64 114}
!85 = !{!"branch_weights", i32 114, i32 0}
!86 = !{!87, !66, i64 224}
!87 = !{!"df", !67, i64 0, !67, i64 64, !66, i64 128, !88, i64 136, !88, i64 176, !66, i64 216, !66, i64 224, !66, i64 232, !71, i64 240, !71, i64 244, !66, i64 248, !71, i64 256, !71, i64 260, !66, i64 264, !66, i64 272, !66, i64 280, !66, i64 288, !66, i64 296, !66, i64 304, !66, i64 312, !66, i64 320, !66, i64 328, !66, i64 336, !71, i64 344, !71, i64 348, !66, i64 352, !71, i64 360, !71, i64 364, !67, i64 365, !67, i64 366}
!88 = !{!"df_ref_info", !66, i64 0, !66, i64 8, !66, i64 16, !71, i64 24, !71, i64 28, !71, i64 32, !71, i64 36}
!89 = !{!87, !66, i64 216}
!90 = !{!"branch_weights", i32 1, i32 227}
!91 = !{!92, !71, i64 8}
!92 = !{!"df_reg_info", !66, i64 0, !71, i64 8}
!93 = !{!94, !66, i64 0}
!94 = !{!"df_insn_info", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !71, i64 40}
!95 = distinct !{!95, !82, !83}
!96 = !{!97, !71, i64 0}
!97 = !{!"regstat_n_sets_and_refs_t", !71, i64 0, !71, i64 4}
!98 = !{!97, !71, i64 4}
!99 = distinct !{!99, !82, !83}
!100 = !{!"branch_weights", i32 227, i32 1751785}
!101 = distinct !{!101, !82, !83}
!102 = !{!"branch_weights", i32 0, i32 114}
!103 = !{!"function_entry_count", i64 76}
!104 = !{!"branch_weights", i32 76, i32 0}
!105 = !{!72, !72, i64 0}
!106 = !{!107, !66, i64 8}
!107 = !{!"function", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !71, i64 104, !71, i64 108, !71, i64 112, !71, i64 116, !71, i64 120, !71, i64 124, !66, i64 128, !71, i64 136, !71, i64 137, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 138, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139, !71, i64 139}
!108 = !{!109, !66, i64 0}
!109 = !{!"control_flow_graph", !66, i64 0, !66, i64 8, !66, i64 16, !71, i64 24, !71, i64 28, !71, i64 32, !66, i64 40, !71, i64 48, !67, i64 52, !67, i64 60, !71, i64 68, !71, i64 72}
!110 = !{!111, !66, i64 56}
!111 = !{!"basic_block_def", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !67, i64 32, !66, i64 48, !66, i64 56, !67, i64 64, !72, i64 72, !71, i64 80, !71, i64 84, !71, i64 88, !71, i64 92, !71, i64 96}
!112 = !{!109, !66, i64 8}
!113 = !{!"branch_weights", i32 1, i32 151}
!114 = !{!111, !71, i64 80}
!115 = !{!109, !66, i64 16}
!116 = !{!117, !66, i64 0}
!117 = !{!"bitmap_head_def", !66, i64 0, !66, i64 8, !71, i64 16, !66, i64 24}
!118 = !{!"branch_weights", i32 0, i32 309265}
!119 = !{!120, !71, i64 16}
!120 = !{!"bitmap_element_def", !66, i64 0, !66, i64 8, !71, i64 16, !67, i64 24}
!121 = !{!"branch_weights", i32 640422, i32 1373522}
!122 = !{!"branch_weights", i32 1704678, i32 1}
!123 = !{!"branch_weights", i32 14658893, i32 1704678}
!124 = distinct !{!124, !82, !83}
!125 = !{!"branch_weights", i32 1, i32 638718}
!126 = !{!"branch_weights", i32 637016, i32 331157}
!127 = !{!"branch_weights", i32 638718, i32 329455}
!128 = distinct !{!128, !82, !83}
!129 = !{!120, !66, i64 0}
!130 = !{!"branch_weights", i32 309265, i32 329454}
!131 = distinct !{!131, !83}
!132 = !{!"branch_weights", i32 309265, i32 1704679}
!133 = !{!134, !71, i64 24}
!134 = !{!"reg_info_t", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !71, i64 24}
!135 = distinct !{!135, !82, !83}
!136 = !{!137, !71, i64 16}
!137 = !{!"dataflow", !66, i64 0, !66, i64 8, !71, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !71, i64 48, !67, i64 52, !67, i64 53, !67, i64 54}
!138 = !{!137, !66, i64 8}
!139 = !{!140, !66, i64 0}
!140 = !{!"df_scan_bb_info", !66, i64 0, !66, i64 8}
!141 = !{!"branch_weights", i32 1, i32 0}
!142 = distinct !{!142, !82, !83}
!143 = !{!140, !66, i64 8}
!144 = !{!"branch_weights", i32 1, i32 309264}
!145 = !{!"branch_weights", i32 1237060, i32 0}
!146 = !{!"branch_weights", i32 309264, i32 927796}
!147 = distinct !{!147, !82, !83}
!148 = !{!149, !66, i64 0}
!149 = !{!"rtl_bb_info", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !71, i64 32}
!150 = !{!"branch_weights", i32 309227, i32 1770922}
!151 = !{!"branch_weights", i32 537535, i32 1233387}
!152 = !{!"branch_weights", i32 522783, i32 710604}
!153 = !{!"branch_weights", i32 1378818, i32 598378}
!154 = !{!"branch_weights", i32 743808, i32 1}
!155 = !{!"branch_weights", i32 13646041, i32 743808}
!156 = !{!"branch_weights", i32 1, i32 1242499}
!157 = !{!"branch_weights", i32 1106182, i32 145431}
!158 = !{!"branch_weights", i32 1242499, i32 9114}
!159 = !{!"branch_weights", i32 1233387, i32 9113}
!160 = !{!"branch_weights", i32 1233387, i32 743809}
!161 = !{!134, !71, i64 8}
!162 = distinct !{!162, !82, !83}
!163 = !{!"branch_weights", i32 157137, i32 1076250}
!164 = !{!"branch_weights", i32 650454, i32 425796}
!165 = !{!134, !71, i64 4}
!166 = !{!"branch_weights", i32 1076250, i32 0}
!167 = distinct !{!167, !82, !83}
!168 = !{!"branch_weights", i32 137916, i32 1095471}
!169 = !{!"branch_weights", i32 0, i32 137916}
!170 = !{!"branch_weights", i32 265704, i32 707960}
!171 = !{!"branch_weights", i32 835747, i32 1}
!172 = !{!"branch_weights", i32 4272575, i32 835747}
!173 = !{!"branch_weights", i32 1, i32 265347}
!174 = !{!"branch_weights", i32 264992, i32 127788}
!175 = !{!"branch_weights", i32 265347, i32 127433}
!176 = !{!"branch_weights", i32 137916, i32 127432}
!177 = !{!"branch_weights", i32 137916, i32 835748}
!178 = !{!134, !71, i64 12}
!179 = !{!"branch_weights", i32 835748, i32 0}
!180 = !{!111, !72, i64 72}
!181 = !{!111, !71, i64 88}
!182 = !{!"branch_weights", i32 779388, i32 56360}
!183 = !{!134, !71, i64 16}
!184 = !{!134, !71, i64 20}
!185 = distinct !{!185, !82, !83}
!186 = !{!87, !66, i64 248}
!187 = !{!94, !66, i64 32}
!188 = !{!189, !71, i64 12}
!189 = !{!"df_mw_hardreg", !66, i64 0, !71, i64 8, !71, i64 10, !71, i64 12, !71, i64 16, !71, i64 20}
!190 = !{!189, !71, i64 16}
!191 = distinct !{!191, !82, !83}
!192 = distinct !{!192, !82, !83}
!193 = !{!94, !66, i64 8}
!194 = !{!"branch_weights", i32 1, i32 1233386}
!195 = !{!"branch_weights", i32 6344136, i32 652082}
!196 = !{!"branch_weights", i32 133516, i32 6210620}
!197 = !{!"branch_weights", i32 23474, i32 762124}
!198 = !{!"branch_weights", i32 134378, i32 627746}
!199 = !{!"branch_weights", i32 627746, i32 0}
!200 = !{!"branch_weights", i32 23474, i32 0}
!201 = !{!"branch_weights", i32 333264, i32 452334}
!202 = !{!"branch_weights", i32 333264, i32 0}
!203 = !{!"branch_weights", i32 295674, i32 37590}
!204 = !{!134, !71, i64 0}
!205 = !{!"branch_weights", i32 0, i32 333264}
!206 = !{!"branch_weights", i32 191676, i32 141588}
!207 = !{!"branch_weights", i32 762272, i32 23326}
!208 = !{!"branch_weights", i32 785598, i32 0}
!209 = !{!"branch_weights", i32 1233386, i32 5762832}
!210 = distinct !{!210, !82, !83}
!211 = !{!94, !66, i64 16}
!212 = !{!"branch_weights", i32 121871, i32 1111516}
!213 = !{!"branch_weights", i32 381232, i32 730284}
!214 = !{!"branch_weights", i32 381232, i32 0}
!215 = !{!"branch_weights", i32 334684, i32 46548}
!216 = !{!"branch_weights", i32 191414, i32 189818}
!217 = !{!"branch_weights", i32 990, i32 188828}
!218 = !{!"branch_weights", i32 658186, i32 453330}
!219 = !{!"branch_weights", i32 1111516, i32 0}
!220 = distinct !{!220, !82, !83}
!221 = !{!"branch_weights", i32 151, i32 8320445}
!222 = distinct !{!222, !82, !83}
!223 = !{!"branch_weights", i32 614830, i32 1264862}
!224 = !{!"branch_weights", i32 1570426, i32 1}
!225 = !{!"branch_weights", i32 10030285, i32 1570426}
!226 = !{!"branch_weights", i32 1, i32 613510}
!227 = !{!"branch_weights", i32 612192, i32 305565}
!228 = !{!"branch_weights", i32 613510, i32 304247}
!229 = !{!"branch_weights", i32 309265, i32 304246}
!230 = !{!"branch_weights", i32 309265, i32 1570427}
!231 = distinct !{!231, !82, !83}
!232 = !{!"branch_weights", i32 151, i32 618379}
!233 = distinct !{!233, !82, !83}
!234 = !{!"branch_weights", i32 151, i32 1}
!235 = distinct !{!235, !82, !83}
!236 = !{!"branch_weights", i32 0, i32 76}
!237 = !{!"function_entry_count", i64 38}
!238 = !{!"branch_weights", i32 38, i32 0}
!239 = distinct !{!239, !82, !83}
!240 = !{!"branch_weights", i32 1, i32 187027}
!241 = !{!"branch_weights", i32 374056, i32 0}
!242 = !{!"branch_weights", i32 187027, i32 187029}
!243 = distinct !{!243, !82, !83}
!244 = !{!"branch_weights", i32 0, i32 1}
!245 = !{!"branch_weights", i32 187028, i32 922712}
!246 = !{!"branch_weights", i32 590470, i32 332242}
!247 = !{!"branch_weights", i32 68727, i32 521743}
!248 = !{!"branch_weights", i32 0, i32 68727}
!249 = !{!"branch_weights", i32 68727, i32 358416}
!250 = !{!"branch_weights", i32 358415, i32 1}
!251 = !{!"branch_weights", i32 725890, i32 358415}
!252 = !{!"branch_weights", i32 1, i32 68726}
!253 = !{!"branch_weights", i32 68727, i32 0}
!254 = !{!"branch_weights", i32 68726, i32 1}
!255 = !{!"branch_weights", i32 358416, i32 0}
!256 = !{!"branch_weights", i32 337120, i32 21296}
!257 = distinct !{!257, !82, !83}
!258 = !{!"branch_weights", i32 1, i32 590469}
!259 = !{!"branch_weights", i32 3161442, i32 278962}
!260 = !{!"branch_weights", i32 66610, i32 3094832}
!261 = !{!"branch_weights", i32 331446, i32 14126}
!262 = !{!"branch_weights", i32 590469, i32 2849935}
!263 = distinct !{!263, !82, !83}
!264 = !{!"branch_weights", i32 82249, i32 508221}
!265 = !{!"branch_weights", i32 508221, i32 0}
!266 = distinct !{!266, !82, !83}
!267 = !{!"branch_weights", i32 0, i32 1109740}
!268 = distinct !{!268, !82, !83}
!269 = !{!"branch_weights", i32 151, i32 747961}
!270 = distinct !{!270, !82, !83}
!271 = !{!"branch_weights", i32 0, i32 38}
