; ModuleID = 'web.c'
source_filename = "web.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.web_entry = type { ptr, ptr, ptr }
%struct.df_link = type { ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"web\00", align 1
@pass_web = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_web, ptr @web_main, ptr null, ptr null, i32 0, i32 135, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_web = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Updating insn %i (%i->%i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Web oldreg=%i newreg=%i\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @unionfind_root(ptr noundef %0) local_unnamed_addr #8 !prof !34 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %2 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %2, !llvm.loop !56

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %6 ]
  %11 = phi ptr [ %10, %9 ], [ %0, %6 ]
  store ptr %3, ptr %11, align 8, !tbaa !54
  %12 = load ptr, ptr %10, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !57

14:                                               ; preds = %9, %6
  ret ptr %3
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @unionfind_union(ptr noundef %0, ptr noundef %1) #8 !prof !34 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !56

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %7 ]
  %12 = phi ptr [ %11, %10 ], [ %0, %7 ]
  store ptr %4, ptr %12, align 8, !tbaa !54
  %13 = load ptr, ptr %11, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !57

15:                                               ; preds = %10, %7
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi ptr [ %18, %16 ], [ %1, %15 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %16, !llvm.loop !56

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %20 ]
  %25 = phi ptr [ %24, %23 ], [ %1, %20 ]
  store ptr %17, ptr %25, align 8, !tbaa !54
  %26 = load ptr, ptr %24, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !57

28:                                               ; preds = %23, %20
  %29 = icmp eq ptr %4, %17
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  store ptr %4, ptr %17, align 8, !tbaa !54
  br label %31

31:                                               ; preds = %28, %30
  %32 = phi i8 [ 0, %30 ], [ 1, %28 ]
  ret i8 %32
}

; Function Attrs: cold nounwind uwtable
define dso_local void @union_defs(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #9 !prof !34 {
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %7, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %7, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.df_insn_info, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.df_insn_info, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = load i32, ptr %12, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @single_set_2(ptr noundef nonnull %12, ptr noundef nonnull %25) #12
  br label %31

31:                                               ; preds = %11, %5, %29, %23
  %32 = phi ptr [ %16, %23 ], [ %16, %11 ], [ %16, %29 ], [ null, %5 ]
  %33 = phi ptr [ %18, %23 ], [ %18, %11 ], [ %18, %29 ], [ null, %5 ]
  %34 = phi ptr [ %25, %23 ], [ null, %11 ], [ %30, %29 ], [ null, %5 ]
  %35 = phi ptr [ %14, %23 ], [ %14, %11 ], [ %14, %29 ], [ null, %5 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %81, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %35, align 8, !tbaa !35
  %39 = icmp eq ptr %38, null
  br i1 %39, label %81, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %43

43:                                               ; preds = %40, %77
  %44 = phi ptr [ %38, %40 ], [ %79, %77 ]
  %45 = phi ptr [ %35, %40 ], [ %78, %77 ]
  %46 = icmp eq ptr %44, %0
  br i1 %46, label %77, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %41, align 8, !tbaa !46
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 39
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  br label %55

55:                                               ; preds = %47, %52
  %56 = phi ptr [ %54, %52 ], [ %48, %47 ]
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %44, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 39
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  br label %65

65:                                               ; preds = %55, %62
  %66 = phi ptr [ %64, %62 ], [ %58, %55 ]
  %67 = icmp eq ptr %56, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, ptr %42, align 4, !tbaa !46
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %70
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %44, i64 0, i32 7
  %73 = load i32, ptr %72, align 4, !tbaa !46
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %74
  %76 = tail call zeroext i8 %4(ptr noundef %71, ptr noundef %75) #12
  br label %77

77:                                               ; preds = %68, %65, %43
  %78 = getelementptr inbounds ptr, ptr %45, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !35
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %43, !llvm.loop !63

81:                                               ; preds = %77, %37, %31
  %82 = icmp eq ptr %32, null
  br i1 %82, label %127, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %32, align 8, !tbaa !35
  %85 = icmp eq ptr %84, null
  br i1 %85, label %127, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %88 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %89

89:                                               ; preds = %86, %123
  %90 = phi ptr [ %84, %86 ], [ %125, %123 ]
  %91 = phi ptr [ %32, %86 ], [ %124, %123 ]
  %92 = icmp eq ptr %90, %0
  br i1 %92, label %123, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %87, align 8, !tbaa !46
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 39
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  br label %101

101:                                              ; preds = %93, %98
  %102 = phi ptr [ %100, %98 ], [ %94, %93 ]
  %103 = getelementptr inbounds %struct.df_base_ref, ptr %90, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 39
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  br label %111

111:                                              ; preds = %101, %108
  %112 = phi ptr [ %110, %108 ], [ %104, %101 ]
  %113 = icmp eq ptr %102, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, ptr %88, align 4, !tbaa !46
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %116
  %118 = getelementptr inbounds %struct.df_base_ref, ptr %90, i64 0, i32 7
  %119 = load i32, ptr %118, align 4, !tbaa !46
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %120
  %122 = tail call zeroext i8 %4(ptr noundef %117, ptr noundef %121) #12
  br label %123

123:                                              ; preds = %114, %111, %89
  %124 = getelementptr inbounds ptr, ptr %91, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !35
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %89, !llvm.loop !64

127:                                              ; preds = %123, %83, %81
  %128 = icmp eq ptr %34, null
  br i1 %128, label %182, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = icmp eq ptr %131, %133
  br i1 %134, label %135, label %182

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = icmp eq ptr %131, %137
  %139 = icmp ne ptr %33, null
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %182

141:                                              ; preds = %135
  %142 = load ptr, ptr %33, align 8, !tbaa !35
  %143 = icmp eq ptr %142, null
  br i1 %143, label %182, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %146

146:                                              ; preds = %144, %178
  %147 = phi ptr [ %142, %144 ], [ %180, %178 ]
  %148 = phi ptr [ %33, %144 ], [ %179, %178 ]
  %149 = load ptr, ptr %132, align 8, !tbaa !46
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 39
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !46
  br label %156

156:                                              ; preds = %146, %153
  %157 = phi ptr [ %155, %153 ], [ %149, %146 ]
  %158 = getelementptr inbounds %struct.df_base_ref, ptr %147, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !46
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 39
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  br label %166

166:                                              ; preds = %156, %163
  %167 = phi ptr [ %165, %163 ], [ %159, %156 ]
  %168 = icmp eq ptr %157, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load i32, ptr %145, align 4, !tbaa !46
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %171
  %173 = getelementptr inbounds %struct.df_base_ref, ptr %147, i64 0, i32 7
  %174 = load i32, ptr %173, align 4, !tbaa !46
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.web_entry, ptr %1, i64 %175
  %177 = tail call zeroext i8 %4(ptr noundef %172, ptr noundef %176) #12
  br label %178

178:                                              ; preds = %169, %166
  %179 = getelementptr inbounds ptr, ptr %148, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !35
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %146, !llvm.loop !65

182:                                              ; preds = %178, %141, %135, %129, %127
  %183 = icmp eq ptr %9, null
  br i1 %183, label %184, label %214

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = load i32, ptr %186, align 8
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 39
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !46
  br label %193

193:                                              ; preds = %184, %190
  %194 = phi ptr [ %192, %190 ], [ %186, %184 ]
  %195 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !46
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, ptr %2, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !50
  %200 = icmp eq i32 %199, 0
  %201 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %202 = load i32, ptr %201, align 4, !tbaa !46
  br i1 %200, label %210, label %203

203:                                              ; preds = %193
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %204
  %206 = zext i32 %199 to i64
  %207 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %206
  %208 = getelementptr inbounds %struct.web_entry, ptr %207, i64 -2
  %209 = tail call zeroext i8 %4(ptr noundef %205, ptr noundef nonnull %208) #12
  br label %212

210:                                              ; preds = %193
  %211 = add nsw i32 %202, 2
  store i32 %211, ptr %198, align 4, !tbaa !50
  br label %212

212:                                              ; preds = %203, %210
  %213 = icmp eq ptr %9, null
  br i1 %213, label %230, label %214

214:                                              ; preds = %182, %212
  %215 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %216

216:                                              ; preds = %214, %216
  %217 = phi ptr [ %9, %214 ], [ %228, %216 ]
  %218 = load i32, ptr %215, align 4, !tbaa !46
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %219
  %221 = load ptr, ptr %217, align 8, !tbaa !66
  %222 = getelementptr inbounds %struct.df_base_ref, ptr %221, i64 0, i32 7
  %223 = load i32, ptr %222, align 4, !tbaa !46
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.web_entry, ptr %1, i64 %224
  %226 = tail call zeroext i8 %4(ptr noundef %220, ptr noundef %225) #12
  %227 = getelementptr inbounds %struct.df_link, ptr %217, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !68
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %216, !llvm.loop !69

230:                                              ; preds = %216, %212
  %231 = load i32, ptr %0, align 8
  %232 = and i32 %231, 2097152
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %283, label %234

234:                                              ; preds = %230
  br i1 %10, label %238, label %235

235:                                              ; preds = %234
  %236 = getelementptr inbounds %struct.df_insn_info, ptr %7, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !62
  br label %238

238:                                              ; preds = %234, %235
  %239 = phi ptr [ %237, %235 ], [ null, %234 ]
  %240 = icmp eq ptr %239, null
  br i1 %240, label %283, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr %239, align 8, !tbaa !35
  %243 = icmp eq ptr %242, null
  br i1 %243, label %283, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %246 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  br label %247

247:                                              ; preds = %244, %279
  %248 = phi ptr [ %242, %244 ], [ %281, %279 ]
  %249 = phi ptr [ %239, %244 ], [ %280, %279 ]
  %250 = getelementptr inbounds %struct.df_base_ref, ptr %248, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !46
  %252 = load i32, ptr %251, align 8
  %253 = and i32 %252, 65535
  %254 = icmp eq i32 %253, 39
  br i1 %254, label %255, label %258

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !46
  br label %258

258:                                              ; preds = %247, %255
  %259 = phi ptr [ %257, %255 ], [ %251, %247 ]
  %260 = load ptr, ptr %245, align 8, !tbaa !46
  %261 = load i32, ptr %260, align 8
  %262 = and i32 %261, 65535
  %263 = icmp eq i32 %262, 39
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !46
  br label %267

267:                                              ; preds = %258, %264
  %268 = phi ptr [ %266, %264 ], [ %260, %258 ]
  %269 = icmp eq ptr %259, %268
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = load i32, ptr %246, align 4, !tbaa !46
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.web_entry, ptr %3, i64 %272
  %274 = getelementptr inbounds %struct.df_base_ref, ptr %248, i64 0, i32 7
  %275 = load i32, ptr %274, align 4, !tbaa !46
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.web_entry, ptr %1, i64 %276
  %278 = tail call zeroext i8 %4(ptr noundef %273, ptr noundef %277) #12
  br label %279

279:                                              ; preds = %270, %267
  %280 = getelementptr inbounds ptr, ptr %249, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !35
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %247, !llvm.loop !70

283:                                              ; preds = %279, %241, %238, %230
  ret void
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_web() #10 !prof !71 !PGOFuncName !72 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !50
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_web, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !73
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @web_main() #9 !prof !34 {
  %1 = tail call i32 @max_reg_num() #12
  %2 = tail call i32 @df_set_flags(i32 noundef 6) #12
  tail call void @df_chain_add_problem(i32 noundef 2) #12
  tail call void @df_analyze() #12
  %3 = tail call i32 @df_set_flags(i32 noundef 32) #12
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %95, label %9

9:                                                ; preds = %0
  %10 = load ptr, ptr @df, align 8
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 10
  br label %12

12:                                               ; preds = %9, %88
  %13 = phi ptr [ %7, %9 ], [ %91, %88 ]
  %14 = phi i32 [ 0, %9 ], [ %89, %88 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %88, label %19

19:                                               ; preds = %12, %83
  %20 = phi ptr [ %86, %83 ], [ %17, %12 ]
  %21 = phi i32 [ %84, %83 ], [ %14, %12 ]
  %22 = load ptr, ptr %15, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %20, %26
  br i1 %27, label %88, label %28

28:                                               ; preds = %19
  %29 = load i32, ptr %20, align 8
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -11
  %32 = icmp ult i32 %31, -3
  br i1 %32, label %83, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !46
  %36 = load ptr, ptr %11, align 8, !tbaa !78
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.df_insn_info, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %33, %54
  %45 = phi ptr [ %57, %54 ], [ %42, %33 ]
  %46 = phi i32 [ %55, %54 ], [ %21, %33 ]
  %47 = phi ptr [ %56, %54 ], [ %41, %33 ]
  %48 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !46
  %50 = icmp ugt i32 %49, 52
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = add i32 %46, 1
  %53 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 7
  store i32 %46, ptr %53, align 4, !tbaa !46
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i32 [ %52, %51 ], [ %46, %44 ]
  %56 = getelementptr inbounds ptr, ptr %47, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !81

59:                                               ; preds = %54, %33
  %60 = phi i32 [ %21, %33 ], [ %55, %54 ]
  %61 = load ptr, ptr %11, align 8, !tbaa !78
  %62 = getelementptr inbounds ptr, ptr %61, i64 %37
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  %64 = getelementptr inbounds %struct.df_insn_info, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = icmp eq ptr %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %59, %78
  %69 = phi ptr [ %81, %78 ], [ %66, %59 ]
  %70 = phi i32 [ %79, %78 ], [ %60, %59 ]
  %71 = phi ptr [ %80, %78 ], [ %65, %59 ]
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %69, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !46
  %74 = icmp ugt i32 %73, 52
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = add i32 %70, 1
  %77 = getelementptr inbounds %struct.df_base_ref, ptr %69, i64 0, i32 7
  store i32 %70, ptr %77, align 4, !tbaa !46
  br label %78

78:                                               ; preds = %75, %68
  %79 = phi i32 [ %76, %75 ], [ %70, %68 ]
  %80 = getelementptr inbounds ptr, ptr %71, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !35
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %68, !llvm.loop !82

83:                                               ; preds = %78, %59, %28
  %84 = phi i32 [ %21, %28 ], [ %60, %59 ], [ %79, %78 ]
  %85 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %19, !llvm.loop !83

88:                                               ; preds = %83, %19, %12
  %89 = phi i32 [ %14, %12 ], [ %84, %83 ], [ %21, %19 ]
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %12, !llvm.loop !84

93:                                               ; preds = %88
  %94 = zext i32 %89 to i64
  br label %95

95:                                               ; preds = %93, %0
  %96 = phi i64 [ 0, %0 ], [ %94, %93 ]
  %97 = load ptr, ptr @df, align 8, !tbaa !35
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 3, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !85
  %100 = zext i32 %99 to i64
  %101 = tail call ptr @xcalloc(i64 noundef %100, i64 noundef 24) #12
  %102 = zext i32 %1 to i64
  %103 = tail call ptr @xcalloc(i64 noundef %102, i64 noundef 4) #12
  %104 = tail call ptr @xcalloc(i64 noundef %96, i64 noundef 24) #12
  %105 = load ptr, ptr @cfun, align 8, !tbaa !35
  %106 = getelementptr inbounds %struct.function, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !74
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = icmp eq ptr %108, null
  br i1 %109, label %182, label %110

110:                                              ; preds = %95, %178
  %111 = phi ptr [ %180, %178 ], [ %108, %95 ]
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %111, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = load ptr, ptr %113, align 8, !tbaa !46
  %115 = icmp eq ptr %114, null
  br i1 %115, label %178, label %116

116:                                              ; preds = %110, %174
  %117 = phi ptr [ %176, %174 ], [ %114, %110 ]
  %118 = load ptr, ptr %112, align 8, !tbaa !46
  %119 = getelementptr inbounds %struct.rtl_bb_info, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !76
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 2
  %122 = load ptr, ptr %121, align 8, !tbaa !46
  %123 = icmp eq ptr %117, %122
  br i1 %123, label %178, label %124

124:                                              ; preds = %116
  %125 = load i32, ptr %117, align 8
  %126 = and i32 %125, 65535
  %127 = add nsw i32 %126, -11
  %128 = icmp ult i32 %127, -3
  br i1 %128, label %174, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !46
  %132 = load ptr, ptr @df, align 8, !tbaa !35
  %133 = getelementptr inbounds %struct.df, ptr %132, i64 0, i32 10
  %134 = load ptr, ptr %133, align 8, !tbaa !78
  %135 = zext i32 %131 to i64
  %136 = getelementptr inbounds ptr, ptr %134, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !35
  %138 = getelementptr inbounds %struct.df_insn_info, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !60
  %140 = load ptr, ptr %139, align 8, !tbaa !35
  %141 = icmp eq ptr %140, null
  br i1 %141, label %153, label %142

142:                                              ; preds = %129, %149
  %143 = phi ptr [ %151, %149 ], [ %140, %129 ]
  %144 = phi ptr [ %150, %149 ], [ %139, %129 ]
  %145 = getelementptr inbounds %struct.df_base_ref, ptr %143, i64 0, i32 6
  %146 = load i32, ptr %145, align 8, !tbaa !46
  %147 = icmp ugt i32 %146, 52
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  tail call void @union_defs(ptr noundef nonnull %143, ptr noundef %101, ptr noundef %103, ptr noundef %104, ptr noundef nonnull @unionfind_union)
  br label %149

149:                                              ; preds = %148, %142
  %150 = getelementptr inbounds ptr, ptr %144, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !35
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %142, !llvm.loop !86

153:                                              ; preds = %149, %129
  %154 = load ptr, ptr @df, align 8, !tbaa !35
  %155 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 10
  %156 = load ptr, ptr %155, align 8, !tbaa !78
  %157 = getelementptr inbounds ptr, ptr %156, i64 %135
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  %159 = getelementptr inbounds %struct.df_insn_info, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !61
  %161 = load ptr, ptr %160, align 8, !tbaa !35
  %162 = icmp eq ptr %161, null
  br i1 %162, label %174, label %163

163:                                              ; preds = %153, %170
  %164 = phi ptr [ %172, %170 ], [ %161, %153 ]
  %165 = phi ptr [ %171, %170 ], [ %160, %153 ]
  %166 = getelementptr inbounds %struct.df_base_ref, ptr %164, i64 0, i32 6
  %167 = load i32, ptr %166, align 8, !tbaa !46
  %168 = icmp ugt i32 %167, 52
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  tail call void @union_defs(ptr noundef nonnull %164, ptr noundef %101, ptr noundef %103, ptr noundef %104, ptr noundef nonnull @unionfind_union)
  br label %170

170:                                              ; preds = %169, %163
  %171 = getelementptr inbounds ptr, ptr %165, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !35
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %163, !llvm.loop !87

174:                                              ; preds = %170, %153, %124
  %175 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !46
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %116, !llvm.loop !88

178:                                              ; preds = %174, %116, %110
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %111, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !35
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %110, !llvm.loop !89

182:                                              ; preds = %178, %95
  %183 = load ptr, ptr @cfun, align 8, !tbaa !35
  %184 = getelementptr inbounds %struct.function, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !74
  %186 = load ptr, ptr %185, align 8, !tbaa !35
  %187 = icmp eq ptr %186, null
  br i1 %187, label %296, label %188

188:                                              ; preds = %182, %292
  %189 = phi ptr [ %294, %292 ], [ %186, %182 ]
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %189, i64 0, i32 7
  %191 = load ptr, ptr %190, align 8, !tbaa !46
  %192 = load ptr, ptr %191, align 8, !tbaa !46
  %193 = icmp eq ptr %192, null
  br i1 %193, label %292, label %194

194:                                              ; preds = %188, %288
  %195 = phi ptr [ %290, %288 ], [ %192, %188 ]
  %196 = load ptr, ptr %190, align 8, !tbaa !46
  %197 = getelementptr inbounds %struct.rtl_bb_info, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !76
  %199 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1, i32 0, i32 0, i64 2
  %200 = load ptr, ptr %199, align 8, !tbaa !46
  %201 = icmp eq ptr %195, %200
  br i1 %201, label %292, label %202

202:                                              ; preds = %194
  %203 = load i32, ptr %195, align 8
  %204 = and i32 %203, 65535
  %205 = add nsw i32 %204, -11
  %206 = icmp ult i32 %205, -3
  br i1 %206, label %288, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !46
  %210 = load ptr, ptr @df, align 8, !tbaa !35
  %211 = getelementptr inbounds %struct.df, ptr %210, i64 0, i32 10
  %212 = load ptr, ptr %211, align 8, !tbaa !78
  %213 = zext i32 %209 to i64
  %214 = getelementptr inbounds ptr, ptr %212, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !35
  %216 = getelementptr inbounds %struct.df_insn_info, ptr %215, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !60
  %218 = load ptr, ptr %217, align 8, !tbaa !35
  %219 = icmp eq ptr %218, null
  br i1 %219, label %236, label %220

220:                                              ; preds = %207, %232
  %221 = phi ptr [ %234, %232 ], [ %218, %207 ]
  %222 = phi ptr [ %233, %232 ], [ %217, %207 ]
  %223 = getelementptr inbounds %struct.df_base_ref, ptr %221, i64 0, i32 6
  %224 = load i32, ptr %223, align 8, !tbaa !46
  %225 = icmp ugt i32 %224, 52
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.df_base_ref, ptr %221, i64 0, i32 7
  %228 = load i32, ptr %227, align 4, !tbaa !46
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.web_entry, ptr %104, i64 %229
  %231 = tail call fastcc ptr @entry_register(ptr noundef %230, ptr noundef nonnull %221, ptr noundef %103)
  tail call fastcc void @replace_ref(ptr noundef nonnull %221, ptr noundef %231)
  br label %232

232:                                              ; preds = %226, %220
  %233 = getelementptr inbounds ptr, ptr %222, i64 1
  %234 = load ptr, ptr %233, align 8, !tbaa !35
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %220, !llvm.loop !90

236:                                              ; preds = %232, %207
  %237 = load ptr, ptr @df, align 8, !tbaa !35
  %238 = getelementptr inbounds %struct.df, ptr %237, i64 0, i32 10
  %239 = load ptr, ptr %238, align 8, !tbaa !78
  %240 = getelementptr inbounds ptr, ptr %239, i64 %213
  %241 = load ptr, ptr %240, align 8, !tbaa !35
  %242 = getelementptr inbounds %struct.df_insn_info, ptr %241, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !61
  %244 = load ptr, ptr %243, align 8, !tbaa !35
  %245 = icmp eq ptr %244, null
  br i1 %245, label %262, label %246

246:                                              ; preds = %236, %258
  %247 = phi ptr [ %260, %258 ], [ %244, %236 ]
  %248 = phi ptr [ %259, %258 ], [ %243, %236 ]
  %249 = getelementptr inbounds %struct.df_base_ref, ptr %247, i64 0, i32 6
  %250 = load i32, ptr %249, align 8, !tbaa !46
  %251 = icmp ugt i32 %250, 52
  br i1 %251, label %252, label %258

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.df_base_ref, ptr %247, i64 0, i32 7
  %254 = load i32, ptr %253, align 4, !tbaa !46
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.web_entry, ptr %104, i64 %255
  %257 = tail call fastcc ptr @entry_register(ptr noundef %256, ptr noundef nonnull %247, ptr noundef %103)
  tail call fastcc void @replace_ref(ptr noundef nonnull %247, ptr noundef %257)
  br label %258

258:                                              ; preds = %252, %246
  %259 = getelementptr inbounds ptr, ptr %248, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !35
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %246, !llvm.loop !91

262:                                              ; preds = %258, %236
  %263 = load ptr, ptr @df, align 8, !tbaa !35
  %264 = getelementptr inbounds %struct.df, ptr %263, i64 0, i32 10
  %265 = load ptr, ptr %264, align 8, !tbaa !78
  %266 = getelementptr inbounds ptr, ptr %265, i64 %213
  %267 = load ptr, ptr %266, align 8, !tbaa !35
  %268 = getelementptr inbounds %struct.df_insn_info, ptr %267, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !62
  %270 = load ptr, ptr %269, align 8, !tbaa !35
  %271 = icmp eq ptr %270, null
  br i1 %271, label %288, label %272

272:                                              ; preds = %262, %284
  %273 = phi ptr [ %286, %284 ], [ %270, %262 ]
  %274 = phi ptr [ %285, %284 ], [ %269, %262 ]
  %275 = getelementptr inbounds %struct.df_base_ref, ptr %273, i64 0, i32 6
  %276 = load i32, ptr %275, align 8, !tbaa !46
  %277 = icmp ugt i32 %276, 52
  br i1 %277, label %278, label %284

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.df_base_ref, ptr %273, i64 0, i32 7
  %280 = load i32, ptr %279, align 4, !tbaa !46
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.web_entry, ptr %101, i64 %281
  %283 = tail call fastcc ptr @entry_register(ptr noundef %282, ptr noundef nonnull %273, ptr noundef %103)
  tail call fastcc void @replace_ref(ptr noundef nonnull %273, ptr noundef %283)
  br label %284

284:                                              ; preds = %278, %272
  %285 = getelementptr inbounds ptr, ptr %274, i64 1
  %286 = load ptr, ptr %285, align 8, !tbaa !35
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %272, !llvm.loop !92

288:                                              ; preds = %284, %262, %202
  %289 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1, i32 0, i32 0, i64 2
  %290 = load ptr, ptr %289, align 8, !tbaa !46
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %194, !llvm.loop !93

292:                                              ; preds = %288, %194, %188
  %293 = getelementptr inbounds %struct.basic_block_def, ptr %189, i64 0, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !35
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %188, !llvm.loop !94

296:                                              ; preds = %292, %182
  tail call void @free(ptr noundef %101)
  tail call void @free(ptr noundef %104)
  tail call void @free(ptr noundef %103)
  ret i32 0
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @replace_ref(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ %4, %2 ]
  %13 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 39
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %20 = select i1 %18, ptr %19, ptr %14
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %12, %1
  br i1 %26, label %40, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !46
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.1, i32 noundef %25, i32 noundef %32, i32 noundef %34)
  br label %36

36:                                               ; preds = %30, %27
  store ptr %1, ptr %20, align 8, !tbaa !35
  %37 = load ptr, ptr %21, align 8, !tbaa !46
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = tail call zeroext i8 @df_insn_rescan(ptr noundef %38) #12
  br label %40

40:                                               ; preds = %11, %36
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @entry_register(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !34 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %6, %4 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !56

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %8 ]
  %13 = phi ptr [ %12, %11 ], [ %0, %8 ]
  store ptr %5, ptr %13, align 8, !tbaa !54
  %14 = load ptr, ptr %12, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !57

16:                                               ; preds = %11, %8
  %17 = getelementptr inbounds %struct.web_entry, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  br label %29

29:                                               ; preds = %20, %26
  %30 = phi ptr [ %28, %26 ], [ %22, %20 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !46
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %2, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 1, ptr %34, align 4, !tbaa !50
  br label %62

38:                                               ; preds = %29
  %39 = load i32, ptr %30, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call ptr @gen_reg_rtx(i32 noundef %41) #12
  %43 = load i32, ptr %30, align 8
  %44 = and i32 %43, 134217728
  %45 = load i32, ptr %42, align 8
  %46 = and i32 %45, -134217729
  %47 = or disjoint i32 %46, %44
  store i32 %47, ptr %42, align 8
  %48 = load i32, ptr %30, align 8
  %49 = and i32 %48, 1073741824
  %50 = and i32 %47, -1073741825
  %51 = or disjoint i32 %50, %49
  store i32 %51, ptr %42, align 8
  %52 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %53, ptr %54, align 8, !tbaa !46
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %38
  %58 = load i32, ptr %31, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !46
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.2, i32 noundef %58, i32 noundef %60)
  br label %62

62:                                               ; preds = %38, %57, %37
  %63 = phi ptr [ %30, %37 ], [ %42, %57 ], [ %42, %38 ]
  store ptr %63, ptr %17, align 8, !tbaa !95
  br label %64

64:                                               ; preds = %16, %62
  %65 = phi ptr [ %63, %62 ], [ %18, %16 ]
  ret ptr %65
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 0}
!55 = !{!"web_entry", !36, i64 0, !36, i64 8, !36, i64 16}
!56 = distinct !{!56, !52, !53}
!57 = distinct !{!57, !52, !53}
!58 = !{!59, !36, i64 0}
!59 = !{!"df_insn_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40}
!60 = !{!59, !36, i64 16}
!61 = !{!59, !36, i64 24}
!62 = !{!59, !36, i64 8}
!63 = distinct !{!63, !52, !53}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = !{!67, !36, i64 0}
!67 = !{!"df_link", !36, i64 0, !36, i64 8}
!68 = !{!67, !36, i64 8}
!69 = distinct !{!69, !52, !53}
!70 = distinct !{!70, !52, !53}
!71 = !{!"function_entry_count", i64 38}
!72 = !{!"web.c;gate_handle_web"}
!73 = !{!"branch_weights", i32 38, i32 0}
!74 = !{!75, !36, i64 8}
!75 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!76 = !{!77, !36, i64 8}
!77 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!78 = !{!79, !36, i64 248}
!79 = !{!"df", !37, i64 0, !37, i64 64, !36, i64 128, !80, i64 136, !80, i64 176, !36, i64 216, !36, i64 224, !36, i64 232, !41, i64 240, !41, i64 244, !36, i64 248, !41, i64 256, !41, i64 260, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !41, i64 344, !41, i64 348, !36, i64 352, !41, i64 360, !41, i64 364, !37, i64 365, !37, i64 366}
!80 = !{!"df_ref_info", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = !{!79, !41, i64 164}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = !{!55, !36, i64 8}
