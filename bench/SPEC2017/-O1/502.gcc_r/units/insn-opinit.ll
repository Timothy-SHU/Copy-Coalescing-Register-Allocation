; ModuleID = 'insn-opinit.c'
source_filename = "insn-opinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.convert_optab_d = type { i32, ptr, ptr, [87 x [87 x %struct.optab_handlers]] }
%struct.optab_handlers = type { i32 }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@convert_optab_table = external local_unnamed_addr global [17 x %struct.convert_optab_d], align 16
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@reload_in_progress = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@ix86_arch_features = external local_unnamed_addr global [5 x i8], align 1
@sync_old_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_lock_test_and_set = external local_unnamed_addr global [87 x i32], align 16
@sync_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_sub_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@flag_excess_precision = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_rounding_math = external local_unnamed_addr global i32, align 4
@linux_uclibc = external local_unnamed_addr global i32, align 4
@movmem_optab = external local_unnamed_addr global [87 x i32], align 16
@setmem_optab = external local_unnamed_addr global [87 x i32], align 16
@cmpstrn_optab = external local_unnamed_addr global [87 x i32], align 16
@movcc_gen_code = external local_unnamed_addr global [87 x i32], align 16
@vcond_gen_code = external local_unnamed_addr global [87 x i32], align 16
@vcondu_gen_code = external local_unnamed_addr global [87 x i32], align 16
@sync_compare_and_swap = external local_unnamed_addr global [87 x i32], align 16

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #9
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #9
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #9
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #9
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #9
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #9
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #9
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
  %5 = tail call ptr @__ctype_tolower_loc() #9
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
  %5 = tail call ptr @__ctype_toupper_loc() #9
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #9
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_all_optabs() local_unnamed_addr #8 !prof !54 {
  store i32 94, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 16, i64 15), align 4, !tbaa !55
  store i32 95, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 15, i64 14), align 4, !tbaa !55
  store i32 96, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 16, i64 14), align 16, !tbaa !55
  %1 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 22), align 2, !tbaa !46
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !57

3:                                                ; preds = %0
  store i32 271, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 14), align 8, !tbaa !55
  store i32 272, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34, i32 4, i64 14), align 8, !tbaa !55
  br label %4

4:                                                ; preds = %0, %3
  store i32 503, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 4, i64 16), align 16, !tbaa !55
  %5 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !58

8:                                                ; preds = %4
  store i32 506, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 4, i64 15), align 4, !tbaa !55
  store i32 507, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 4, i64 16), align 16, !tbaa !55
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i32, ptr @target_flags, align 4, !tbaa !50
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !58

13:                                               ; preds = %9
  store i32 575, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 40), align 16, !tbaa !55
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %12, i1 %16, i1 false, !prof !58
  br i1 %17, label %18, label %19, !prof !57

18:                                               ; preds = %14
  store i32 589, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76, i32 4, i64 40), align 16, !tbaa !55
  store i32 611, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99, i32 4, i64 40), align 16, !tbaa !55
  br label %19

19:                                               ; preds = %14, %18
  %20 = and i32 %5, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22, !prof !58

22:                                               ; preds = %19
  %23 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 681, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 38), align 8, !tbaa !55
  br label %27

27:                                               ; preds = %26, %22
  br i1 %21, label %33, label %28, !prof !58

28:                                               ; preds = %27
  %29 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 682, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 38), align 8, !tbaa !55
  br label %33

33:                                               ; preds = %19, %27, %32, %28
  %34 = and i32 %5, 131072
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36, !prof !58

36:                                               ; preds = %33
  %37 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 683, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 39), align 4, !tbaa !55
  br label %41

41:                                               ; preds = %40, %36
  br i1 %35, label %47, label %42, !prof !58

42:                                               ; preds = %41
  %43 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 684, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 39), align 4, !tbaa !55
  br label %47

47:                                               ; preds = %33, %46, %42, %41
  %48 = and i32 %5, 32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !58

50:                                               ; preds = %47
  store i32 925, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 82), align 8, !tbaa !55
  br label %51

51:                                               ; preds = %50, %47
  br i1 %35, label %53, label %52, !prof !58

52:                                               ; preds = %51
  store i32 926, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 80), align 16, !tbaa !55
  br label %53

53:                                               ; preds = %52, %51
  br i1 %21, label %55, label %54, !prof !58

54:                                               ; preds = %53
  store i32 1174, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 79), align 4, !tbaa !55
  store i32 1177, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 79), align 4, !tbaa !55
  br label %55

55:                                               ; preds = %53, %54
  br i1 %35, label %57, label %56, !prof !58

56:                                               ; preds = %55
  store i32 1240, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 66), align 8, !tbaa !55
  store i32 1242, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 66), align 8, !tbaa !55
  br label %57

57:                                               ; preds = %55, %56
  %58 = load i32, ptr @reload_in_progress, align 4
  %59 = icmp ne i32 %58, 0
  %60 = select i1 %35, i1 true, i1 %59, !prof !58
  %61 = load i32, ptr @reload_completed, align 4
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %60, i1 true, i1 %62, !prof !58
  br i1 %63, label %65, label %64, !prof !58

64:                                               ; preds = %57
  store i32 1295, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 63), align 4, !tbaa !55
  store i32 1311, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 66), align 8, !tbaa !55
  br label %65

65:                                               ; preds = %57, %64
  br i1 %35, label %67, label %66, !prof !58

66:                                               ; preds = %65
  store i32 1314, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 64), align 16, !tbaa !55
  store i32 1315, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 65), align 4, !tbaa !55
  store i32 1321, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 64), align 16, !tbaa !55
  store i32 1322, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 65), align 4, !tbaa !55
  store i32 1323, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 66), align 8, !tbaa !55
  store i32 1329, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 64), align 16, !tbaa !55
  store i32 1330, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 65), align 4, !tbaa !55
  store i32 1331, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 66), align 8, !tbaa !55
  store i32 1447, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 63), align 4, !tbaa !55
  store i32 1449, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 63), align 4, !tbaa !55
  store i32 1451, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 64), align 16, !tbaa !55
  store i32 1453, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 64), align 16, !tbaa !55
  store i32 1455, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 65), align 4, !tbaa !55
  store i32 1457, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 65), align 4, !tbaa !55
  br label %67

67:                                               ; preds = %65, %66
  %68 = and i32 %5, 4194304
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70, !prof !58

70:                                               ; preds = %67
  store i32 1552, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 63), align 4, !tbaa !55
  store i32 1553, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 64), align 16, !tbaa !55
  store i32 1554, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 65), align 4, !tbaa !55
  store i32 1555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 59), align 4, !tbaa !55
  store i32 1556, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 60), align 16, !tbaa !55
  store i32 1557, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 61), align 4, !tbaa !55
  br label %71

71:                                               ; preds = %67, %70
  %72 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 3), align 1, !tbaa !46
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74, !prof !58

74:                                               ; preds = %71
  store i32 1810, ptr getelementptr inbounds ([87 x i32], ptr @sync_old_add_optab, i64 0, i64 14), align 8, !tbaa !50
  store i32 1811, ptr getelementptr inbounds ([87 x i32], ptr @sync_old_add_optab, i64 0, i64 15), align 4, !tbaa !50
  store i32 1812, ptr getelementptr inbounds ([87 x i32], ptr @sync_old_add_optab, i64 0, i64 16), align 16, !tbaa !50
  br label %75

75:                                               ; preds = %71, %74
  store i32 1813, ptr getelementptr inbounds ([87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 14), align 8, !tbaa !50
  store i32 1814, ptr getelementptr inbounds ([87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 15), align 4, !tbaa !50
  store i32 1815, ptr getelementptr inbounds ([87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 16), align 16, !tbaa !50
  store i32 1816, ptr getelementptr inbounds ([87 x i32], ptr @sync_add_optab, i64 0, i64 14), align 8, !tbaa !50
  store i32 1817, ptr getelementptr inbounds ([87 x i32], ptr @sync_add_optab, i64 0, i64 15), align 4, !tbaa !50
  store i32 1818, ptr getelementptr inbounds ([87 x i32], ptr @sync_add_optab, i64 0, i64 16), align 16, !tbaa !50
  store i32 1819, ptr getelementptr inbounds ([87 x i32], ptr @sync_sub_optab, i64 0, i64 14), align 8, !tbaa !50
  store i32 1820, ptr getelementptr inbounds ([87 x i32], ptr @sync_sub_optab, i64 0, i64 15), align 4, !tbaa !50
  store i32 1821, ptr getelementptr inbounds ([87 x i32], ptr @sync_sub_optab, i64 0, i64 16), align 16, !tbaa !50
  store i32 1822, ptr getelementptr inbounds ([87 x i32], ptr @sync_and_optab, i64 0, i64 14), align 8, !tbaa !50
  store i32 1823, ptr getelementptr inbounds ([87 x i32], ptr @sync_ior_optab, i64 0, i64 14), align 8, !tbaa !50
  store i32 1824, ptr getelementptr inbounds ([87 x i32], ptr @sync_xor_optab, i64 0, i64 14), align 8, !tbaa !50
  store i32 1825, ptr getelementptr inbounds ([87 x i32], ptr @sync_and_optab, i64 0, i64 15), align 4, !tbaa !50
  store i32 1826, ptr getelementptr inbounds ([87 x i32], ptr @sync_ior_optab, i64 0, i64 15), align 4, !tbaa !50
  store i32 1827, ptr getelementptr inbounds ([87 x i32], ptr @sync_xor_optab, i64 0, i64 15), align 4, !tbaa !50
  store i32 1828, ptr getelementptr inbounds ([87 x i32], ptr @sync_and_optab, i64 0, i64 16), align 16, !tbaa !50
  store i32 1829, ptr getelementptr inbounds ([87 x i32], ptr @sync_ior_optab, i64 0, i64 16), align 16, !tbaa !50
  store i32 1830, ptr getelementptr inbounds ([87 x i32], ptr @sync_xor_optab, i64 0, i64 16), align 16, !tbaa !50
  br i1 %2, label %77, label %76, !prof !57

76:                                               ; preds = %75
  store i32 1831, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 14), align 8, !tbaa !55
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 23), align 1, !tbaa !46
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80, !prof !57

80:                                               ; preds = %77
  store i32 1832, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 15), align 4, !tbaa !55
  br label %81

81:                                               ; preds = %80, %77
  store i32 1833, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 16), align 16, !tbaa !55
  store i32 1834, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 17), align 4, !tbaa !55
  br i1 %2, label %83, label %82, !prof !57

82:                                               ; preds = %81
  store i32 1835, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 14), align 8, !tbaa !55
  br label %83

83:                                               ; preds = %82, %81
  br i1 %79, label %85, label %84, !prof !57

84:                                               ; preds = %83
  store i32 1836, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 15), align 4, !tbaa !55
  br label %85

85:                                               ; preds = %84, %83
  store i32 1837, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 16), align 16, !tbaa !55
  %86 = and i32 %10, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88, !prof !57

88:                                               ; preds = %85
  store i32 1840, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 40), align 16, !tbaa !55
  store i32 1841, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 40), align 16, !tbaa !55
  br label %94

89:                                               ; preds = %85
  br i1 %21, label %95, label %90

90:                                               ; preds = %89
  %91 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88, %90
  store i32 1842, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 38), align 8, !tbaa !55
  br label %95

95:                                               ; preds = %89, %94, %90
  br i1 %87, label %96, label %101, !prof !57

96:                                               ; preds = %95
  br i1 %35, label %102, label %97

97:                                               ; preds = %96
  %98 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %99 = and i32 %98, 2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97, %95
  store i32 1843, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 39), align 4, !tbaa !55
  br label %102

102:                                              ; preds = %101, %97, %96
  br i1 %87, label %103, label %108, !prof !57

103:                                              ; preds = %102
  br i1 %21, label %109, label %104

104:                                              ; preds = %103
  %105 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104, %102
  store i32 1844, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 38), align 8, !tbaa !55
  br label %109

109:                                              ; preds = %103, %108, %104
  br i1 %87, label %110, label %115, !prof !57

110:                                              ; preds = %109
  br i1 %35, label %116, label %111

111:                                              ; preds = %110
  %112 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %113 = and i32 %112, 2
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111, %109
  store i32 1845, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 39), align 4, !tbaa !55
  br label %116

116:                                              ; preds = %115, %111, %110
  store i32 1846, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 2), align 8, !tbaa !55
  store i32 1847, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 2), align 8, !tbaa !55
  store i32 1855, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 16), align 16, !tbaa !55
  store i32 1856, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 15), align 4, !tbaa !55
  store i32 1857, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61, i32 4, i64 15), align 4, !tbaa !55
  store i32 1858, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 14), align 8, !tbaa !55
  store i32 1859, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61, i32 4, i64 14), align 8, !tbaa !55
  store i32 1860, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 17), align 4, !tbaa !55
  %117 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %118 = and i32 %117, 32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120, !prof !58

120:                                              ; preds = %116
  store i32 1863, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 19), align 4, !tbaa !55
  br label %121

121:                                              ; preds = %120, %116
  %122 = and i32 %117, 65536
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124, !prof !58

124:                                              ; preds = %121
  store i32 1864, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 18), align 8, !tbaa !55
  br label %125

125:                                              ; preds = %124, %121
  store i32 1866, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 48), align 16, !tbaa !55
  store i32 1867, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 38), align 8, !tbaa !55
  store i32 1870, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 39), align 4, !tbaa !55
  store i32 1874, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 40), align 16, !tbaa !55
  %126 = and i32 %117, 131072
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128, !prof !58

128:                                              ; preds = %125
  store i32 1877, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 41), align 4, !tbaa !55
  br label %129

129:                                              ; preds = %128, %125
  store i32 1887, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 16, i64 15), align 4, !tbaa !55
  store i32 1889, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 15, i64 14), align 4, !tbaa !55
  store i32 1893, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 16, i64 14), align 16, !tbaa !55
  store i32 1897, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3, i64 17, i64 16), align 4, !tbaa !55
  store i32 1900, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 17, i64 16), align 4, !tbaa !55
  %130 = load i32, ptr @target_flags, align 4, !tbaa !50
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138, !prof !57

133:                                              ; preds = %129
  br i1 %127, label %139, label %134

134:                                              ; preds = %133
  %135 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134, %129
  store i32 1907, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 39, i64 38), align 4, !tbaa !55
  br label %139

139:                                              ; preds = %138, %134, %133
  br i1 %132, label %141, label %140, !prof !57

140:                                              ; preds = %139
  store i32 1909, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 40, i64 38), align 16, !tbaa !55
  store i32 1910, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 40, i64 39), align 4, !tbaa !55
  br label %146

141:                                              ; preds = %139
  br i1 %127, label %147, label %142

142:                                              ; preds = %141
  %143 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %144 = and i32 %143, 2
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140, %142
  store i32 1911, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 38, i64 39), align 4, !tbaa !55
  br label %147

147:                                              ; preds = %146, %142, %141
  br i1 %132, label %149, label %148, !prof !57

148:                                              ; preds = %147
  store i32 1915, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 38, i64 40), align 16, !tbaa !55
  store i32 1916, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 39, i64 40), align 4, !tbaa !55
  store i32 1921, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 17, i64 40), align 4, !tbaa !55
  store i32 1922, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 17, i64 38), align 4, !tbaa !55
  store i32 1923, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 17, i64 39), align 16, !tbaa !55
  store i32 1924, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 16, i64 40), align 8, !tbaa !55
  br label %150

149:                                              ; preds = %147
  br i1 %123, label %151, label %150

150:                                              ; preds = %148, %149
  store i32 1925, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 16, i64 38), align 16, !tbaa !55
  br label %151

151:                                              ; preds = %149, %150
  br i1 %132, label %152, label %153, !prof !57

152:                                              ; preds = %151
  br i1 %127, label %154, label %153

153:                                              ; preds = %152, %151
  store i32 1926, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 16, i64 39), align 4, !tbaa !55
  br label %154

154:                                              ; preds = %153, %152
  br i1 %132, label %182, label %155, !prof !57

155:                                              ; preds = %154
  %156 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %157 = and i32 %156, 65536
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %166, label %159, !prof !58

159:                                              ; preds = %155
  %160 = and i32 %156, 262144
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %164 = and i32 %163, 2
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %155, %162
  store i32 1927, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 38), align 4, !tbaa !55
  br label %167

167:                                              ; preds = %166, %162, %159
  br i1 %132, label %182, label %168, !prof !57

168:                                              ; preds = %167
  %169 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %170 = and i32 %169, 131072
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %179, label %172, !prof !58

172:                                              ; preds = %168
  %173 = and i32 %169, 262144
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %172
  %176 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %177 = and i32 %176, 2
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175, %168
  store i32 1928, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 39), align 8, !tbaa !55
  br label %180

180:                                              ; preds = %179, %175, %172
  br i1 %132, label %182, label %181, !prof !57

181:                                              ; preds = %180
  store i32 1929, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 15, i64 40), align 4, !tbaa !55
  br label %182

182:                                              ; preds = %154, %167, %181, %180
  br i1 %127, label %194, label %183, !prof !58

183:                                              ; preds = %182
  %184 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  store i32 1930, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3, i64 16, i64 38), align 16, !tbaa !55
  br label %188

188:                                              ; preds = %187, %183
  br i1 %127, label %194, label %189, !prof !58

189:                                              ; preds = %188
  %190 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %191 = and i32 %190, 2
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  store i32 1931, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3, i64 16, i64 39), align 4, !tbaa !55
  br label %194

194:                                              ; preds = %182, %193, %189, %188
  br i1 %123, label %200, label %195, !prof !58

195:                                              ; preds = %194
  %196 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %197 = and i32 %196, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  store i32 1934, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3, i64 15, i64 38), align 4, !tbaa !55
  br label %200

200:                                              ; preds = %194, %199, %195
  br i1 %127, label %206, label %201, !prof !58

201:                                              ; preds = %200
  %202 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %203 = and i32 %202, 2
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %201
  store i32 1935, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3, i64 15, i64 39), align 8, !tbaa !55
  br label %206

206:                                              ; preds = %205, %201, %200
  br i1 %132, label %234, label %207, !prof !57

207:                                              ; preds = %206
  %208 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %209 = and i32 %208, 65536
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %218, label %211, !prof !58

211:                                              ; preds = %207
  %212 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  %215 = and i32 %212, 3
  %216 = icmp eq i32 %215, 3
  %217 = or i1 %214, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %207, %211
  store i32 1962, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 38, i64 15), align 4, !tbaa !55
  br label %219

219:                                              ; preds = %211, %218
  br i1 %132, label %234, label %220, !prof !57

220:                                              ; preds = %219
  %221 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %222 = and i32 %221, 131072
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %231, label %224, !prof !58

224:                                              ; preds = %220
  %225 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %226 = and i32 %225, 2
  %227 = icmp eq i32 %226, 0
  %228 = and i32 %225, 3
  %229 = icmp eq i32 %228, 3
  %230 = or i1 %227, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %224, %220
  store i32 1963, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 39, i64 15), align 8, !tbaa !55
  br label %232

232:                                              ; preds = %224, %231
  br i1 %132, label %234, label %233, !prof !57

233:                                              ; preds = %232
  store i32 1964, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 40, i64 15), align 4, !tbaa !55
  br label %239

234:                                              ; preds = %206, %219, %232
  br i1 %123, label %240, label %235

235:                                              ; preds = %234
  %236 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %237 = and i32 %236, 2
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %233, %235
  store i32 1974, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 38, i64 16), align 16, !tbaa !55
  br label %240

240:                                              ; preds = %234, %239, %235
  br i1 %132, label %242, label %241, !prof !57

241:                                              ; preds = %240
  store i32 1975, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 38, i64 17), align 4, !tbaa !55
  br label %247

242:                                              ; preds = %240
  br i1 %127, label %248, label %243

243:                                              ; preds = %242
  %244 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %245 = and i32 %244, 2
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %241, %243
  store i32 1976, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 39, i64 16), align 4, !tbaa !55
  br label %248

248:                                              ; preds = %247, %243, %242
  br i1 %132, label %250, label %249, !prof !57

249:                                              ; preds = %248
  store i32 1977, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 39, i64 17), align 16, !tbaa !55
  store i32 1978, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 40, i64 16), align 8, !tbaa !55
  store i32 1979, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 40, i64 17), align 4, !tbaa !55
  br label %250

250:                                              ; preds = %248, %249
  %251 = icmp eq i32 %131, 0
  %252 = load i32, ptr @flag_excess_precision, align 4
  %253 = icmp ne i32 %252, 1
  %254 = select i1 %251, i1 true, i1 %253
  %255 = or i1 %123, %254
  br i1 %255, label %256, label %261, !prof !58

256:                                              ; preds = %250
  br i1 %123, label %262, label %257, !prof !58

257:                                              ; preds = %256
  %258 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %259 = and i32 %258, 2
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %257, %250
  store i32 2028, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3, i64 38, i64 16), align 16, !tbaa !55
  br label %262

262:                                              ; preds = %256, %261, %257
  %263 = or i1 %123, %254
  br i1 %263, label %264, label %269, !prof !58

264:                                              ; preds = %262
  br i1 %127, label %270, label %265, !prof !58

265:                                              ; preds = %264
  %266 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %267 = and i32 %266, 2
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %265, %262
  store i32 2029, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3, i64 39, i64 16), align 4, !tbaa !55
  br label %270

270:                                              ; preds = %269, %265, %264
  br i1 %132, label %276, label %271, !prof !57

271:                                              ; preds = %270
  %272 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %273 = and i32 %272, 65536
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %276, label %275, !prof !58

275:                                              ; preds = %271
  store i32 2030, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3, i64 40, i64 16), align 8, !tbaa !55
  br label %276

276:                                              ; preds = %270, %271, %275
  %277 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 22), align 2, !tbaa !46
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %280, label %279, !prof !57

279:                                              ; preds = %276
  store i32 2031, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 14), align 8, !tbaa !55
  br label %280

280:                                              ; preds = %279, %276
  br i1 %79, label %282, label %281, !prof !57

281:                                              ; preds = %280
  store i32 2032, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 15), align 4, !tbaa !55
  br label %282

282:                                              ; preds = %281, %280
  store i32 2033, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 16), align 16, !tbaa !55
  store i32 2034, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 17), align 4, !tbaa !55
  br i1 %278, label %284, label %283, !prof !57

283:                                              ; preds = %282
  store i32 2040, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 14), align 8, !tbaa !55
  br label %284

284:                                              ; preds = %283, %282
  br i1 %79, label %286, label %285, !prof !57

285:                                              ; preds = %284
  store i32 2041, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 15), align 4, !tbaa !55
  br label %286

286:                                              ; preds = %285, %284
  store i32 2042, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 16), align 16, !tbaa !55
  store i32 2043, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 17), align 4, !tbaa !55
  br i1 %132, label %288, label %287, !prof !57

287:                                              ; preds = %286
  store i32 2053, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 40), align 16, !tbaa !55
  store i32 2053, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 40), align 16, !tbaa !55
  store i32 2054, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 40), align 16, !tbaa !55
  store i32 2054, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 40), align 16, !tbaa !55
  br label %288

288:                                              ; preds = %286, %287
  br i1 %254, label %289, label %297, !prof !57

289:                                              ; preds = %288
  %290 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %291 = and i32 %290, 65536
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %298, label %293

293:                                              ; preds = %289
  %294 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %295 = and i32 %294, 2
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %288, %293
  store i32 2055, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 38), align 8, !tbaa !55
  store i32 2055, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 38), align 8, !tbaa !55
  br label %298

298:                                              ; preds = %289, %297, %293
  br i1 %254, label %299, label %307, !prof !57

299:                                              ; preds = %298
  %300 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %301 = and i32 %300, 65536
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %299
  %304 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %305 = and i32 %304, 2
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %298, %303
  store i32 2056, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 38), align 8, !tbaa !55
  store i32 2056, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 38), align 8, !tbaa !55
  br label %308

308:                                              ; preds = %299, %307, %303
  br i1 %254, label %309, label %317, !prof !57

309:                                              ; preds = %308
  %310 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %311 = and i32 %310, 131072
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %318, label %313

313:                                              ; preds = %309
  %314 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %315 = and i32 %314, 2
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %308, %313
  store i32 2057, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 39), align 4, !tbaa !55
  store i32 2057, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 39), align 4, !tbaa !55
  br label %318

318:                                              ; preds = %317, %313, %309
  br i1 %254, label %319, label %327, !prof !57

319:                                              ; preds = %318
  %320 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %321 = and i32 %320, 131072
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %319
  %324 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %325 = and i32 %324, 2
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %318, %323
  store i32 2058, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 39), align 4, !tbaa !55
  store i32 2058, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 39), align 4, !tbaa !55
  br label %328

328:                                              ; preds = %327, %323, %319
  %329 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 23), align 1, !tbaa !46
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %332, label %331, !prof !57

331:                                              ; preds = %328
  store i32 2059, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 15), align 4, !tbaa !55
  br label %332

332:                                              ; preds = %331, %328
  store i32 2060, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 16), align 16, !tbaa !55
  br i1 %278, label %334, label %333, !prof !57

333:                                              ; preds = %332
  store i32 2061, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 14), align 8, !tbaa !55
  store i32 2062, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4, i64 17), align 4, !tbaa !55
  store i32 2063, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4, i64 17), align 4, !tbaa !55
  store i32 2064, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4, i64 15), align 4, !tbaa !55
  br label %335

334:                                              ; preds = %332
  store i32 2062, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4, i64 17), align 4, !tbaa !55
  store i32 2063, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4, i64 17), align 4, !tbaa !55
  br label %335

335:                                              ; preds = %334, %333
  br i1 %278, label %337, label %336, !prof !57

336:                                              ; preds = %335
  store i32 2065, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4, i64 15), align 4, !tbaa !55
  br label %337

337:                                              ; preds = %336, %335
  store i32 2066, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18, i32 4, i64 16), align 16, !tbaa !55
  store i32 2067, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19, i32 4, i64 16), align 16, !tbaa !55
  br i1 %132, label %339, label %338, !prof !57

338:                                              ; preds = %337
  store i32 2068, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 40), align 16, !tbaa !55
  store i32 2068, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 40), align 16, !tbaa !55
  br label %339

339:                                              ; preds = %338, %337
  br i1 %254, label %340, label %348, !prof !57

340:                                              ; preds = %339
  %341 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %342 = and i32 %341, 65536
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %349, label %344

344:                                              ; preds = %340
  %345 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %346 = and i32 %345, 2
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %339, %344
  store i32 2069, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 38), align 8, !tbaa !55
  store i32 2069, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 38), align 8, !tbaa !55
  br label %349

349:                                              ; preds = %340, %348, %344
  br i1 %254, label %350, label %358, !prof !57

350:                                              ; preds = %349
  %351 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %352 = and i32 %351, 131072
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %359, label %354

354:                                              ; preds = %350
  %355 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %356 = and i32 %355, 2
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %349, %354
  store i32 2070, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 39), align 4, !tbaa !55
  store i32 2070, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 39), align 4, !tbaa !55
  br label %359

359:                                              ; preds = %358, %354, %350
  br i1 %132, label %361, label %360, !prof !57

360:                                              ; preds = %359
  store i32 2071, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 40), align 16, !tbaa !55
  br label %361

361:                                              ; preds = %360, %359
  br i1 %254, label %362, label %370, !prof !57

362:                                              ; preds = %361
  %363 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %364 = and i32 %363, 131072
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %371, label %366

366:                                              ; preds = %362
  %367 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %368 = and i32 %367, 2
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %371, label %370

370:                                              ; preds = %361, %366
  store i32 2072, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 39), align 4, !tbaa !55
  br label %371

371:                                              ; preds = %370, %366, %362
  br i1 %254, label %372, label %376, !prof !57

372:                                              ; preds = %371
  %373 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %374 = and i32 %373, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %371, %372
  store i32 2073, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 38), align 8, !tbaa !55
  br label %377

377:                                              ; preds = %376, %372
  br i1 %330, label %379, label %378, !prof !57

378:                                              ; preds = %377
  store i32 2074, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 15), align 4, !tbaa !55
  store i32 2075, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 16), align 16, !tbaa !55
  store i32 2078, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 4, i64 15), align 4, !tbaa !55
  br label %380

379:                                              ; preds = %377
  store i32 2075, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 16), align 16, !tbaa !55
  br label %380

380:                                              ; preds = %379, %378
  store i32 2079, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 4, i64 16), align 16, !tbaa !55
  br i1 %278, label %382, label %381, !prof !57

381:                                              ; preds = %380
  store i32 2088, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 14), align 8, !tbaa !55
  br label %382

382:                                              ; preds = %381, %380
  br i1 %330, label %384, label %383, !prof !57

383:                                              ; preds = %382
  store i32 2089, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 15), align 4, !tbaa !55
  br label %384

384:                                              ; preds = %383, %382
  store i32 2090, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 16), align 16, !tbaa !55
  br i1 %278, label %386, label %385, !prof !57

385:                                              ; preds = %384
  store i32 2096, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 14), align 8, !tbaa !55
  store i32 2097, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 14), align 8, !tbaa !55
  br label %386

386:                                              ; preds = %384, %385
  br i1 %330, label %388, label %387, !prof !57

387:                                              ; preds = %386
  store i32 2098, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 15), align 4, !tbaa !55
  store i32 2099, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 15), align 4, !tbaa !55
  br label %388

388:                                              ; preds = %386, %387
  store i32 2100, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 16), align 16, !tbaa !55
  store i32 2101, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 16), align 16, !tbaa !55
  br i1 %278, label %390, label %389, !prof !57

389:                                              ; preds = %388
  store i32 2107, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 14), align 8, !tbaa !55
  br label %390

390:                                              ; preds = %389, %388
  br i1 %330, label %392, label %391, !prof !57

391:                                              ; preds = %390
  store i32 2108, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 15), align 4, !tbaa !55
  br label %392

392:                                              ; preds = %391, %390
  store i32 2109, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 16), align 16, !tbaa !55
  store i32 2110, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 17), align 4, !tbaa !55
  %393 = load i32, ptr @target_flags, align 4, !tbaa !50
  %394 = and i32 %393, 2
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %404, !prof !57

396:                                              ; preds = %392
  %397 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %398 = and i32 %397, 65536
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %405, label %400

400:                                              ; preds = %396
  %401 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %402 = and i32 %401, 2
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %400, %392
  store i32 2112, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 38), align 8, !tbaa !55
  store i32 2112, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 38), align 8, !tbaa !55
  br label %405

405:                                              ; preds = %396, %404, %400
  br i1 %395, label %406, label %414, !prof !57

406:                                              ; preds = %405
  %407 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %408 = and i32 %407, 65536
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %415, label %410

410:                                              ; preds = %406
  %411 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %412 = and i32 %411, 2
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %415, label %414

414:                                              ; preds = %410, %405
  store i32 2113, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 38), align 8, !tbaa !55
  store i32 2113, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 38), align 8, !tbaa !55
  br label %415

415:                                              ; preds = %406, %414, %410
  br i1 %395, label %416, label %424, !prof !57

416:                                              ; preds = %415
  %417 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %418 = and i32 %417, 131072
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %425, label %420

420:                                              ; preds = %416
  %421 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %422 = and i32 %421, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %425, label %424

424:                                              ; preds = %420, %415
  store i32 2114, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 39), align 4, !tbaa !55
  store i32 2114, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 39), align 4, !tbaa !55
  br label %425

425:                                              ; preds = %424, %420, %416
  br i1 %395, label %426, label %434, !prof !57

426:                                              ; preds = %425
  %427 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %428 = and i32 %427, 131072
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %435, label %430

430:                                              ; preds = %426
  %431 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %432 = and i32 %431, 2
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %430, %425
  store i32 2115, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 39), align 4, !tbaa !55
  store i32 2115, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 39), align 4, !tbaa !55
  br label %435

435:                                              ; preds = %434, %430, %426
  br i1 %395, label %437, label %436, !prof !57

436:                                              ; preds = %435
  store i32 2116, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 40), align 16, !tbaa !55
  store i32 2116, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 40), align 16, !tbaa !55
  store i32 2117, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 40), align 16, !tbaa !55
  store i32 2117, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 40), align 16, !tbaa !55
  br label %437

437:                                              ; preds = %435, %436
  %438 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %439 = and i32 %438, 131072
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %442, label %441, !prof !58

441:                                              ; preds = %437
  store i32 2118, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 41), align 4, !tbaa !55
  store i32 2118, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 41), align 4, !tbaa !55
  store i32 2119, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 41), align 4, !tbaa !55
  store i32 2119, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 41), align 4, !tbaa !55
  br label %442

442:                                              ; preds = %437, %441
  %443 = and i32 %438, 65536
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %450, label %445, !prof !58

445:                                              ; preds = %442
  %446 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %447 = and i32 %446, 2
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %450, label %449

449:                                              ; preds = %445
  store i32 2125, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 38), align 8, !tbaa !55
  br label %450

450:                                              ; preds = %445, %442, %449
  br i1 %440, label %458, label %451, !prof !58

451:                                              ; preds = %450
  %452 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %453 = and i32 %452, 2
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %451
  store i32 2126, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 39), align 4, !tbaa !55
  br label %456

456:                                              ; preds = %451, %455
  br i1 %440, label %458, label %457, !prof !58

457:                                              ; preds = %456
  store i32 2127, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 41), align 4, !tbaa !55
  br label %458

458:                                              ; preds = %450, %457, %456
  br i1 %278, label %460, label %459, !prof !57

459:                                              ; preds = %458
  store i32 2134, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 14), align 8, !tbaa !55
  br label %460

460:                                              ; preds = %459, %458
  br i1 %330, label %462, label %461, !prof !57

461:                                              ; preds = %460
  store i32 2135, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 15), align 4, !tbaa !55
  store i32 2136, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 16), align 16, !tbaa !55
  store i32 2142, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 17), align 4, !tbaa !55
  store i32 2147, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 16), align 16, !tbaa !55
  store i32 2150, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 15), align 4, !tbaa !55
  br label %463

462:                                              ; preds = %460
  store i32 2136, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 16), align 16, !tbaa !55
  store i32 2142, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 17), align 4, !tbaa !55
  store i32 2147, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 16), align 16, !tbaa !55
  br label %463

463:                                              ; preds = %462, %461
  br i1 %278, label %465, label %464, !prof !57

464:                                              ; preds = %463
  store i32 2151, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 14), align 8, !tbaa !55
  br label %465

465:                                              ; preds = %464, %463
  store i32 2152, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 17), align 4, !tbaa !55
  store i32 2158, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 16), align 16, !tbaa !55
  br i1 %330, label %467, label %466, !prof !57

466:                                              ; preds = %465
  store i32 2159, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 15), align 4, !tbaa !55
  br label %467

467:                                              ; preds = %466, %465
  %468 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 22), align 2, !tbaa !46
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %471, label %470, !prof !57

470:                                              ; preds = %467
  store i32 2160, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 14), align 8, !tbaa !55
  br label %471

471:                                              ; preds = %470, %467
  store i32 2161, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 17), align 4, !tbaa !55
  store i32 2164, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 16), align 16, !tbaa !55
  br i1 %330, label %473, label %472, !prof !57

472:                                              ; preds = %471
  store i32 2165, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 15), align 4, !tbaa !55
  br label %473

473:                                              ; preds = %472, %471
  br i1 %469, label %475, label %474, !prof !57

474:                                              ; preds = %473
  store i32 2166, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 14), align 8, !tbaa !55
  br label %475

475:                                              ; preds = %474, %473
  store i32 2167, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 17), align 4, !tbaa !55
  store i32 2169, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 16), align 16, !tbaa !55
  br i1 %330, label %477, label %476, !prof !57

476:                                              ; preds = %475
  store i32 2170, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 15), align 4, !tbaa !55
  br label %477

477:                                              ; preds = %476, %475
  br i1 %469, label %479, label %478, !prof !57

478:                                              ; preds = %477
  store i32 2172, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 14), align 8, !tbaa !55
  br label %479

479:                                              ; preds = %478, %477
  store i32 2173, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 17), align 4, !tbaa !55
  store i32 2175, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 16), align 16, !tbaa !55
  br i1 %330, label %481, label %480, !prof !57

480:                                              ; preds = %479
  store i32 2176, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 15), align 4, !tbaa !55
  br label %481

481:                                              ; preds = %480, %479
  br i1 %469, label %483, label %482, !prof !57

482:                                              ; preds = %481
  store i32 2178, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 14), align 8, !tbaa !55
  br label %483

483:                                              ; preds = %482, %481
  store i32 2218, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 4, i64 16), align 16, !tbaa !55
  store i32 2221, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 16), align 16, !tbaa !55
  store i32 2222, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 16), align 16, !tbaa !55
  store i32 2223, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 15), align 4, !tbaa !55
  %484 = and i32 %438, 16384
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %487, !prof !58

486:                                              ; preds = %483
  store i32 2224, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 4, i64 17), align 4, !tbaa !55
  store i32 2226, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 4, i64 16), align 16, !tbaa !55
  br label %487

487:                                              ; preds = %483, %486
  %488 = and i32 %393, 4096
  %489 = icmp eq i32 %488, 0
  %490 = load i32, ptr @flag_excess_precision, align 4
  %491 = icmp eq i32 %490, 1
  %492 = select i1 %489, i1 %491, i1 false, !prof !58
  br i1 %492, label %501, label %493, !prof !58

493:                                              ; preds = %487
  %494 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %495 = and i32 %494, 65536
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %502, label %497

497:                                              ; preds = %493
  %498 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %499 = and i32 %498, 2
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %502, label %501

501:                                              ; preds = %487, %497
  store i32 2241, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 38), align 8, !tbaa !55
  br label %502

502:                                              ; preds = %493, %501, %497
  br i1 %492, label %511, label %503, !prof !58

503:                                              ; preds = %502
  %504 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %505 = and i32 %504, 131072
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %512, label %507

507:                                              ; preds = %503
  %508 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %509 = and i32 %508, 2
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %512, label %511

511:                                              ; preds = %502, %507
  store i32 2242, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 39), align 4, !tbaa !55
  br label %512

512:                                              ; preds = %511, %507, %503
  br i1 %489, label %513, label %544, !prof !58

513:                                              ; preds = %512
  store i32 2243, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38, i32 4, i64 40), align 16, !tbaa !55
  store i32 2244, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38, i32 4, i64 38), align 8, !tbaa !55
  store i32 2245, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38, i32 4, i64 39), align 4, !tbaa !55
  store i32 2246, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39, i32 4, i64 40), align 16, !tbaa !55
  store i32 2247, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39, i32 4, i64 38), align 8, !tbaa !55
  store i32 2248, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39, i32 4, i64 39), align 4, !tbaa !55
  br i1 %444, label %524, label %514, !prof !58

514:                                              ; preds = %513
  %515 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %516 = and i32 %515, 2
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %524, label %518

518:                                              ; preds = %514
  %519 = and i32 %515, 3
  %520 = icmp eq i32 %519, 3
  %521 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %520, i1 %522, i1 false
  br i1 %523, label %527, label %528

524:                                              ; preds = %513, %514
  %525 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !50
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %528, label %527, !prof !58

527:                                              ; preds = %518, %524
  store i32 2255, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76, i32 4, i64 38), align 8, !tbaa !55
  br label %528

528:                                              ; preds = %518, %527, %524
  br i1 %489, label %529, label %544, !prof !58

529:                                              ; preds = %528
  br i1 %440, label %540, label %530, !prof !58

530:                                              ; preds = %529
  %531 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %532 = and i32 %531, 2
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %540, label %534

534:                                              ; preds = %530
  %535 = and i32 %531, 3
  %536 = icmp eq i32 %535, 3
  %537 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %538 = icmp ne i32 %537, 0
  %539 = select i1 %536, i1 %538, i1 false
  br i1 %539, label %543, label %544

540:                                              ; preds = %530, %529
  %541 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !50
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %544, label %543, !prof !58

543:                                              ; preds = %534, %540
  store i32 2256, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76, i32 4, i64 39), align 4, !tbaa !55
  br label %544

544:                                              ; preds = %512, %534, %543, %540, %528
  %545 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %546 = icmp ne i32 %545, 0
  %547 = select i1 %489, i1 %546, i1 false, !prof !58
  br i1 %547, label %548, label %549, !prof !57

548:                                              ; preds = %544
  store i32 2257, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100, i32 4, i64 40), align 16, !tbaa !55
  br label %549

549:                                              ; preds = %548, %544
  br i1 %489, label %550, label %575, !prof !58

550:                                              ; preds = %549
  br i1 %444, label %559, label %551, !prof !58

551:                                              ; preds = %550
  %552 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %553 = and i32 %552, 2
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %559, label %555

555:                                              ; preds = %551
  %556 = and i32 %552, 3
  %557 = icmp eq i32 %556, 3
  %558 = select i1 %557, i1 %546, i1 false
  br i1 %558, label %561, label %562

559:                                              ; preds = %550, %551
  %560 = icmp eq i32 %545, 0
  br i1 %560, label %562, label %561, !prof !58

561:                                              ; preds = %555, %559
  store i32 2258, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100, i32 4, i64 38), align 8, !tbaa !55
  br label %562

562:                                              ; preds = %555, %561, %559
  br i1 %489, label %563, label %575, !prof !58

563:                                              ; preds = %562
  br i1 %440, label %572, label %564, !prof !58

564:                                              ; preds = %563
  %565 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %566 = and i32 %565, 2
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %572, label %568

568:                                              ; preds = %564
  %569 = and i32 %565, 3
  %570 = icmp eq i32 %569, 3
  %571 = select i1 %570, i1 %546, i1 false
  br i1 %571, label %574, label %575

572:                                              ; preds = %564, %563
  %573 = icmp eq i32 %545, 0
  br i1 %573, label %575, label %574, !prof !58

574:                                              ; preds = %568, %572
  store i32 2259, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100, i32 4, i64 39), align 4, !tbaa !55
  br label %575

575:                                              ; preds = %549, %568, %574, %572, %562
  br i1 %547, label %576, label %577, !prof !57

576:                                              ; preds = %575
  store i32 2260, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59, i32 4, i64 40), align 16, !tbaa !55
  br label %577

577:                                              ; preds = %576, %575
  br i1 %489, label %578, label %603, !prof !58

578:                                              ; preds = %577
  br i1 %444, label %587, label %579, !prof !58

579:                                              ; preds = %578
  %580 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %581 = and i32 %580, 2
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %587, label %583

583:                                              ; preds = %579
  %584 = and i32 %580, 3
  %585 = icmp eq i32 %584, 3
  %586 = select i1 %585, i1 %546, i1 false
  br i1 %586, label %589, label %590

587:                                              ; preds = %578, %579
  %588 = icmp eq i32 %545, 0
  br i1 %588, label %590, label %589, !prof !58

589:                                              ; preds = %583, %587
  store i32 2261, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59, i32 4, i64 38), align 8, !tbaa !55
  br label %590

590:                                              ; preds = %583, %589, %587
  br i1 %489, label %591, label %603, !prof !58

591:                                              ; preds = %590
  br i1 %440, label %600, label %592, !prof !58

592:                                              ; preds = %591
  %593 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %594 = and i32 %593, 2
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %600, label %596

596:                                              ; preds = %592
  %597 = and i32 %593, 3
  %598 = icmp eq i32 %597, 3
  %599 = select i1 %598, i1 %546, i1 false
  br i1 %599, label %602, label %603

600:                                              ; preds = %592, %591
  %601 = icmp eq i32 %545, 0
  br i1 %601, label %603, label %602, !prof !58

602:                                              ; preds = %596, %600
  store i32 2262, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59, i32 4, i64 39), align 4, !tbaa !55
  br label %603

603:                                              ; preds = %577, %596, %602, %600, %590
  br i1 %547, label %604, label %605, !prof !57

604:                                              ; preds = %603
  store i32 2263, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101, i32 4, i64 40), align 16, !tbaa !55
  br label %605

605:                                              ; preds = %604, %603
  br i1 %489, label %606, label %631, !prof !58

606:                                              ; preds = %605
  br i1 %444, label %615, label %607, !prof !58

607:                                              ; preds = %606
  %608 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %609 = and i32 %608, 2
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %615, label %611

611:                                              ; preds = %607
  %612 = and i32 %608, 3
  %613 = icmp eq i32 %612, 3
  %614 = select i1 %613, i1 %546, i1 false
  br i1 %614, label %617, label %618

615:                                              ; preds = %606, %607
  %616 = icmp eq i32 %545, 0
  br i1 %616, label %618, label %617, !prof !58

617:                                              ; preds = %611, %615
  store i32 2264, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101, i32 4, i64 38), align 8, !tbaa !55
  br label %618

618:                                              ; preds = %611, %617, %615
  br i1 %489, label %619, label %631, !prof !58

619:                                              ; preds = %618
  br i1 %440, label %628, label %620, !prof !58

620:                                              ; preds = %619
  %621 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %622 = and i32 %621, 2
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %628, label %624

624:                                              ; preds = %620
  %625 = and i32 %621, 3
  %626 = icmp eq i32 %625, 3
  %627 = select i1 %626, i1 %546, i1 false
  br i1 %627, label %630, label %631

628:                                              ; preds = %620, %619
  %629 = icmp eq i32 %545, 0
  br i1 %629, label %631, label %630, !prof !58

630:                                              ; preds = %624, %628
  store i32 2265, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101, i32 4, i64 39), align 4, !tbaa !55
  br label %631

631:                                              ; preds = %605, %624, %630, %628, %618
  br i1 %547, label %632, label %633, !prof !57

632:                                              ; preds = %631
  store i32 2266, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78, i32 4, i64 40), align 16, !tbaa !55
  br label %633

633:                                              ; preds = %632, %631
  br i1 %489, label %634, label %659, !prof !58

634:                                              ; preds = %633
  br i1 %444, label %643, label %635, !prof !58

635:                                              ; preds = %634
  %636 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %637 = and i32 %636, 2
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %643, label %639

639:                                              ; preds = %635
  %640 = and i32 %636, 3
  %641 = icmp eq i32 %640, 3
  %642 = select i1 %641, i1 %546, i1 false
  br i1 %642, label %645, label %646

643:                                              ; preds = %634, %635
  %644 = icmp eq i32 %545, 0
  br i1 %644, label %646, label %645, !prof !58

645:                                              ; preds = %639, %643
  store i32 2267, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78, i32 4, i64 38), align 8, !tbaa !55
  br label %646

646:                                              ; preds = %639, %645, %643
  br i1 %489, label %647, label %659, !prof !58

647:                                              ; preds = %646
  br i1 %440, label %656, label %648, !prof !58

648:                                              ; preds = %647
  %649 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %650 = and i32 %649, 2
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %656, label %652

652:                                              ; preds = %648
  %653 = and i32 %649, 3
  %654 = icmp eq i32 %653, 3
  %655 = select i1 %654, i1 %546, i1 false
  br i1 %655, label %658, label %659

656:                                              ; preds = %648, %647
  %657 = icmp eq i32 %545, 0
  br i1 %657, label %659, label %658, !prof !58

658:                                              ; preds = %652, %656
  store i32 2268, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78, i32 4, i64 39), align 4, !tbaa !55
  br label %659

659:                                              ; preds = %633, %652, %658, %656, %646
  br i1 %547, label %660, label %661, !prof !57

660:                                              ; preds = %659
  store i32 2269, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80, i32 4, i64 40), align 16, !tbaa !55
  br label %661

661:                                              ; preds = %660, %659
  br i1 %489, label %662, label %687, !prof !58

662:                                              ; preds = %661
  br i1 %444, label %671, label %663, !prof !58

663:                                              ; preds = %662
  %664 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %665 = and i32 %664, 2
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %671, label %667

667:                                              ; preds = %663
  %668 = and i32 %664, 3
  %669 = icmp eq i32 %668, 3
  %670 = select i1 %669, i1 %546, i1 false
  br i1 %670, label %673, label %674

671:                                              ; preds = %662, %663
  %672 = icmp eq i32 %545, 0
  br i1 %672, label %674, label %673, !prof !58

673:                                              ; preds = %667, %671
  store i32 2270, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80, i32 4, i64 38), align 8, !tbaa !55
  br label %674

674:                                              ; preds = %667, %673, %671
  br i1 %489, label %675, label %687, !prof !58

675:                                              ; preds = %674
  br i1 %440, label %684, label %676, !prof !58

676:                                              ; preds = %675
  %677 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %678 = and i32 %677, 2
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %684, label %680

680:                                              ; preds = %676
  %681 = and i32 %677, 3
  %682 = icmp eq i32 %681, 3
  %683 = select i1 %682, i1 %546, i1 false
  br i1 %683, label %686, label %687

684:                                              ; preds = %676, %675
  %685 = icmp eq i32 %545, 0
  br i1 %685, label %687, label %686, !prof !58

686:                                              ; preds = %680, %684
  store i32 2271, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80, i32 4, i64 39), align 4, !tbaa !55
  br label %687

687:                                              ; preds = %661, %680, %686, %684, %674
  br i1 %547, label %688, label %689, !prof !57

688:                                              ; preds = %687
  store i32 2272, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90, i32 4, i64 40), align 16, !tbaa !55
  br label %689

689:                                              ; preds = %688, %687
  br i1 %489, label %690, label %715, !prof !58

690:                                              ; preds = %689
  br i1 %444, label %699, label %691, !prof !58

691:                                              ; preds = %690
  %692 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %693 = and i32 %692, 2
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %699, label %695

695:                                              ; preds = %691
  %696 = and i32 %692, 3
  %697 = icmp eq i32 %696, 3
  %698 = select i1 %697, i1 %546, i1 false
  br i1 %698, label %701, label %702

699:                                              ; preds = %690, %691
  %700 = icmp eq i32 %545, 0
  br i1 %700, label %702, label %701, !prof !58

701:                                              ; preds = %695, %699
  store i32 2273, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90, i32 4, i64 38), align 8, !tbaa !55
  br label %702

702:                                              ; preds = %695, %701, %699
  br i1 %489, label %703, label %715, !prof !58

703:                                              ; preds = %702
  br i1 %440, label %712, label %704, !prof !58

704:                                              ; preds = %703
  %705 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %706 = and i32 %705, 2
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %712, label %708

708:                                              ; preds = %704
  %709 = and i32 %705, 3
  %710 = icmp eq i32 %709, 3
  %711 = select i1 %710, i1 %546, i1 false
  br i1 %711, label %714, label %715

712:                                              ; preds = %704, %703
  %713 = icmp eq i32 %545, 0
  br i1 %713, label %715, label %714, !prof !58

714:                                              ; preds = %708, %712
  store i32 2274, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90, i32 4, i64 39), align 4, !tbaa !55
  br label %715

715:                                              ; preds = %689, %708, %714, %712, %702
  br i1 %547, label %716, label %717, !prof !57

716:                                              ; preds = %715
  store i32 2275, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91, i32 4, i64 40), align 16, !tbaa !55
  br label %717

717:                                              ; preds = %716, %715
  br i1 %489, label %718, label %743, !prof !58

718:                                              ; preds = %717
  br i1 %444, label %727, label %719, !prof !58

719:                                              ; preds = %718
  %720 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %721 = and i32 %720, 2
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %727, label %723

723:                                              ; preds = %719
  %724 = and i32 %720, 3
  %725 = icmp eq i32 %724, 3
  %726 = select i1 %725, i1 %546, i1 false
  br i1 %726, label %729, label %730

727:                                              ; preds = %718, %719
  %728 = icmp eq i32 %545, 0
  br i1 %728, label %730, label %729, !prof !58

729:                                              ; preds = %723, %727
  store i32 2276, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91, i32 4, i64 38), align 8, !tbaa !55
  br label %730

730:                                              ; preds = %723, %729, %727
  br i1 %489, label %731, label %743, !prof !58

731:                                              ; preds = %730
  br i1 %440, label %740, label %732, !prof !58

732:                                              ; preds = %731
  %733 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %734 = and i32 %733, 2
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %740, label %736

736:                                              ; preds = %732
  %737 = and i32 %733, 3
  %738 = icmp eq i32 %737, 3
  %739 = select i1 %738, i1 %546, i1 false
  br i1 %739, label %742, label %743

740:                                              ; preds = %732, %731
  %741 = icmp eq i32 %545, 0
  br i1 %741, label %743, label %742, !prof !58

742:                                              ; preds = %736, %740
  store i32 2277, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91, i32 4, i64 39), align 4, !tbaa !55
  br label %743

743:                                              ; preds = %717, %736, %742, %740, %730
  br i1 %547, label %744, label %745, !prof !57

744:                                              ; preds = %743
  store i32 2278, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92, i32 4, i64 40), align 16, !tbaa !55
  br label %745

745:                                              ; preds = %744, %743
  br i1 %489, label %746, label %771, !prof !58

746:                                              ; preds = %745
  br i1 %444, label %755, label %747, !prof !58

747:                                              ; preds = %746
  %748 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %749 = and i32 %748, 2
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %755, label %751

751:                                              ; preds = %747
  %752 = and i32 %748, 3
  %753 = icmp eq i32 %752, 3
  %754 = select i1 %753, i1 %546, i1 false
  br i1 %754, label %757, label %758

755:                                              ; preds = %746, %747
  %756 = icmp eq i32 %545, 0
  br i1 %756, label %758, label %757, !prof !58

757:                                              ; preds = %751, %755
  store i32 2279, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92, i32 4, i64 38), align 8, !tbaa !55
  br label %758

758:                                              ; preds = %751, %757, %755
  br i1 %489, label %759, label %771, !prof !58

759:                                              ; preds = %758
  br i1 %440, label %768, label %760, !prof !58

760:                                              ; preds = %759
  %761 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %762 = and i32 %761, 2
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %768, label %764

764:                                              ; preds = %760
  %765 = and i32 %761, 3
  %766 = icmp eq i32 %765, 3
  %767 = select i1 %766, i1 %546, i1 false
  br i1 %767, label %770, label %771

768:                                              ; preds = %760, %759
  %769 = icmp eq i32 %545, 0
  br i1 %769, label %771, label %770, !prof !58

770:                                              ; preds = %764, %768
  store i32 2280, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92, i32 4, i64 39), align 4, !tbaa !55
  br label %771

771:                                              ; preds = %745, %764, %770, %768, %758
  br i1 %547, label %772, label %773, !prof !57

772:                                              ; preds = %771
  store i32 2281, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93, i32 4, i64 40), align 16, !tbaa !55
  br label %773

773:                                              ; preds = %772, %771
  br i1 %489, label %774, label %799, !prof !58

774:                                              ; preds = %773
  br i1 %444, label %783, label %775, !prof !58

775:                                              ; preds = %774
  %776 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %777 = and i32 %776, 2
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %783, label %779

779:                                              ; preds = %775
  %780 = and i32 %776, 3
  %781 = icmp eq i32 %780, 3
  %782 = select i1 %781, i1 %546, i1 false
  br i1 %782, label %785, label %786

783:                                              ; preds = %774, %775
  %784 = icmp eq i32 %545, 0
  br i1 %784, label %786, label %785, !prof !58

785:                                              ; preds = %779, %783
  store i32 2282, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93, i32 4, i64 38), align 8, !tbaa !55
  br label %786

786:                                              ; preds = %779, %785, %783
  br i1 %489, label %787, label %799, !prof !58

787:                                              ; preds = %786
  br i1 %440, label %796, label %788, !prof !58

788:                                              ; preds = %787
  %789 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %790 = and i32 %789, 2
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %796, label %792

792:                                              ; preds = %788
  %793 = and i32 %789, 3
  %794 = icmp eq i32 %793, 3
  %795 = select i1 %794, i1 %546, i1 false
  br i1 %795, label %798, label %799

796:                                              ; preds = %788, %787
  %797 = icmp eq i32 %545, 0
  br i1 %797, label %799, label %798, !prof !58

798:                                              ; preds = %792, %796
  store i32 2283, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93, i32 4, i64 39), align 4, !tbaa !55
  br label %799

799:                                              ; preds = %773, %792, %798, %796, %786
  %800 = load i32, ptr @target_flags, align 4, !tbaa !50
  %801 = and i32 %800, 4096
  %802 = icmp eq i32 %801, 0
  %803 = select i1 %802, i1 %546, i1 false, !prof !58
  br i1 %803, label %804, label %805, !prof !57

804:                                              ; preds = %799
  store i32 2284, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88, i32 4, i64 40), align 16, !tbaa !55
  br label %805

805:                                              ; preds = %804, %799
  br i1 %802, label %806, label %831, !prof !58

806:                                              ; preds = %805
  br i1 %444, label %815, label %807, !prof !58

807:                                              ; preds = %806
  %808 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %809 = and i32 %808, 2
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %815, label %811

811:                                              ; preds = %807
  %812 = and i32 %808, 3
  %813 = icmp eq i32 %812, 3
  %814 = select i1 %813, i1 %546, i1 false
  br i1 %814, label %817, label %818

815:                                              ; preds = %806, %807
  %816 = icmp eq i32 %545, 0
  br i1 %816, label %818, label %817, !prof !58

817:                                              ; preds = %811, %815
  store i32 2285, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88, i32 4, i64 38), align 8, !tbaa !55
  br label %818

818:                                              ; preds = %811, %817, %815
  br i1 %802, label %819, label %831, !prof !58

819:                                              ; preds = %818
  br i1 %440, label %828, label %820, !prof !58

820:                                              ; preds = %819
  %821 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %822 = and i32 %821, 2
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %828, label %824

824:                                              ; preds = %820
  %825 = and i32 %821, 3
  %826 = icmp eq i32 %825, 3
  %827 = select i1 %826, i1 %546, i1 false
  br i1 %827, label %830, label %831

828:                                              ; preds = %820, %819
  %829 = icmp eq i32 %545, 0
  br i1 %829, label %831, label %830, !prof !58

830:                                              ; preds = %824, %828
  store i32 2286, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88, i32 4, i64 39), align 4, !tbaa !55
  br label %831

831:                                              ; preds = %805, %824, %830, %828, %818
  br i1 %803, label %832, label %833, !prof !57

832:                                              ; preds = %831
  store i32 2287, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89, i32 4, i64 40), align 16, !tbaa !55
  br label %833

833:                                              ; preds = %832, %831
  br i1 %802, label %834, label %859, !prof !58

834:                                              ; preds = %833
  br i1 %444, label %843, label %835, !prof !58

835:                                              ; preds = %834
  %836 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %837 = and i32 %836, 2
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %843, label %839

839:                                              ; preds = %835
  %840 = and i32 %836, 3
  %841 = icmp eq i32 %840, 3
  %842 = select i1 %841, i1 %546, i1 false
  br i1 %842, label %845, label %846

843:                                              ; preds = %834, %835
  %844 = icmp eq i32 %545, 0
  br i1 %844, label %846, label %845, !prof !58

845:                                              ; preds = %839, %843
  store i32 2288, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89, i32 4, i64 38), align 8, !tbaa !55
  br label %846

846:                                              ; preds = %839, %845, %843
  br i1 %802, label %847, label %859, !prof !58

847:                                              ; preds = %846
  br i1 %440, label %856, label %848, !prof !58

848:                                              ; preds = %847
  %849 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %850 = and i32 %849, 2
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %856, label %852

852:                                              ; preds = %848
  %853 = and i32 %849, 3
  %854 = icmp eq i32 %853, 3
  %855 = select i1 %854, i1 %546, i1 false
  br i1 %855, label %858, label %859

856:                                              ; preds = %848, %847
  %857 = icmp eq i32 %545, 0
  br i1 %857, label %859, label %858, !prof !58

858:                                              ; preds = %852, %856
  store i32 2289, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89, i32 4, i64 39), align 4, !tbaa !55
  br label %859

859:                                              ; preds = %833, %852, %858, %856, %846
  br i1 %803, label %860, label %861, !prof !57

860:                                              ; preds = %859
  store i32 2291, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81, i32 4, i64 40), align 16, !tbaa !55
  br label %861

861:                                              ; preds = %860, %859
  br i1 %802, label %862, label %887, !prof !58

862:                                              ; preds = %861
  br i1 %444, label %871, label %863, !prof !58

863:                                              ; preds = %862
  %864 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %865 = and i32 %864, 2
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %871, label %867

867:                                              ; preds = %863
  %868 = and i32 %864, 3
  %869 = icmp eq i32 %868, 3
  %870 = select i1 %869, i1 %546, i1 false
  br i1 %870, label %873, label %874

871:                                              ; preds = %862, %863
  %872 = icmp eq i32 %545, 0
  br i1 %872, label %874, label %873, !prof !58

873:                                              ; preds = %867, %871
  store i32 2292, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81, i32 4, i64 38), align 8, !tbaa !55
  br label %874

874:                                              ; preds = %867, %873, %871
  br i1 %802, label %875, label %887, !prof !58

875:                                              ; preds = %874
  br i1 %440, label %884, label %876, !prof !58

876:                                              ; preds = %875
  %877 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %878 = and i32 %877, 2
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %884, label %880

880:                                              ; preds = %876
  %881 = and i32 %877, 3
  %882 = icmp eq i32 %881, 3
  %883 = select i1 %882, i1 %546, i1 false
  br i1 %883, label %886, label %887

884:                                              ; preds = %876, %875
  %885 = icmp eq i32 %545, 0
  br i1 %885, label %887, label %886, !prof !58

886:                                              ; preds = %880, %884
  store i32 2293, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81, i32 4, i64 39), align 4, !tbaa !55
  br label %887

887:                                              ; preds = %861, %880, %886, %884, %874
  br i1 %803, label %888, label %889, !prof !57

888:                                              ; preds = %887
  store i32 2294, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82, i32 4, i64 40), align 16, !tbaa !55
  br label %889

889:                                              ; preds = %888, %887
  br i1 %802, label %890, label %915, !prof !58

890:                                              ; preds = %889
  br i1 %444, label %899, label %891, !prof !58

891:                                              ; preds = %890
  %892 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %893 = and i32 %892, 2
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %899, label %895

895:                                              ; preds = %891
  %896 = and i32 %892, 3
  %897 = icmp eq i32 %896, 3
  %898 = select i1 %897, i1 %546, i1 false
  br i1 %898, label %901, label %902

899:                                              ; preds = %890, %891
  %900 = icmp eq i32 %545, 0
  br i1 %900, label %902, label %901, !prof !58

901:                                              ; preds = %895, %899
  store i32 2295, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82, i32 4, i64 38), align 8, !tbaa !55
  br label %902

902:                                              ; preds = %895, %901, %899
  br i1 %802, label %903, label %915, !prof !58

903:                                              ; preds = %902
  br i1 %440, label %912, label %904, !prof !58

904:                                              ; preds = %903
  %905 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %906 = and i32 %905, 2
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %912, label %908

908:                                              ; preds = %904
  %909 = and i32 %905, 3
  %910 = icmp eq i32 %909, 3
  %911 = select i1 %910, i1 %546, i1 false
  br i1 %911, label %914, label %915

912:                                              ; preds = %904, %903
  %913 = icmp eq i32 %545, 0
  br i1 %913, label %915, label %914, !prof !58

914:                                              ; preds = %908, %912
  store i32 2296, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82, i32 4, i64 39), align 4, !tbaa !55
  br label %915

915:                                              ; preds = %889, %908, %914, %912, %902
  br i1 %803, label %916, label %917, !prof !57

916:                                              ; preds = %915
  store i32 2297, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83, i32 4, i64 40), align 16, !tbaa !55
  br label %917

917:                                              ; preds = %916, %915
  br i1 %802, label %918, label %949, !prof !58

918:                                              ; preds = %917
  %919 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %920 = and i32 %919, 65536
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %930, label %922, !prof !58

922:                                              ; preds = %918
  %923 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %924 = and i32 %923, 2
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %930, label %926

926:                                              ; preds = %922
  %927 = and i32 %923, 3
  %928 = icmp eq i32 %927, 3
  %929 = select i1 %928, i1 %546, i1 false
  br i1 %929, label %932, label %933

930:                                              ; preds = %918, %922
  %931 = icmp eq i32 %545, 0
  br i1 %931, label %933, label %932, !prof !58

932:                                              ; preds = %926, %930
  store i32 2298, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83, i32 4, i64 38), align 8, !tbaa !55
  br label %933

933:                                              ; preds = %926, %932, %930
  br i1 %802, label %934, label %949, !prof !58

934:                                              ; preds = %933
  %935 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %936 = and i32 %935, 131072
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %946, label %938, !prof !58

938:                                              ; preds = %934
  %939 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %940 = and i32 %939, 2
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %946, label %942

942:                                              ; preds = %938
  %943 = and i32 %939, 3
  %944 = icmp eq i32 %943, 3
  %945 = select i1 %944, i1 %546, i1 false
  br i1 %945, label %948, label %949

946:                                              ; preds = %938, %934
  %947 = icmp eq i32 %545, 0
  br i1 %947, label %949, label %948, !prof !58

948:                                              ; preds = %942, %946
  store i32 2299, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83, i32 4, i64 39), align 4, !tbaa !55
  br label %949

949:                                              ; preds = %917, %942, %948, %946, %933
  br i1 %803, label %950, label %951, !prof !57

950:                                              ; preds = %949
  store i32 2300, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84, i32 4, i64 40), align 16, !tbaa !55
  br label %951

951:                                              ; preds = %950, %949
  br i1 %802, label %952, label %983, !prof !58

952:                                              ; preds = %951
  %953 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %954 = and i32 %953, 65536
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %964, label %956, !prof !58

956:                                              ; preds = %952
  %957 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %958 = and i32 %957, 2
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %964, label %960

960:                                              ; preds = %956
  %961 = and i32 %957, 3
  %962 = icmp eq i32 %961, 3
  %963 = select i1 %962, i1 %546, i1 false
  br i1 %963, label %966, label %967

964:                                              ; preds = %952, %956
  %965 = icmp eq i32 %545, 0
  br i1 %965, label %967, label %966, !prof !58

966:                                              ; preds = %960, %964
  store i32 2301, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84, i32 4, i64 38), align 8, !tbaa !55
  br label %967

967:                                              ; preds = %960, %966, %964
  br i1 %802, label %968, label %983, !prof !58

968:                                              ; preds = %967
  %969 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %970 = and i32 %969, 131072
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %980, label %972, !prof !58

972:                                              ; preds = %968
  %973 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %974 = and i32 %973, 2
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %980, label %976

976:                                              ; preds = %972
  %977 = and i32 %973, 3
  %978 = icmp eq i32 %977, 3
  %979 = select i1 %978, i1 %546, i1 false
  br i1 %979, label %982, label %983

980:                                              ; preds = %972, %968
  %981 = icmp eq i32 %545, 0
  br i1 %981, label %983, label %982, !prof !58

982:                                              ; preds = %976, %980
  store i32 2302, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84, i32 4, i64 39), align 4, !tbaa !55
  br label %983

983:                                              ; preds = %951, %976, %982, %980, %967
  br i1 %803, label %984, label %985, !prof !57

984:                                              ; preds = %983
  store i32 2303, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85, i32 4, i64 40), align 16, !tbaa !55
  br label %985

985:                                              ; preds = %984, %983
  br i1 %802, label %986, label %1017, !prof !58

986:                                              ; preds = %985
  %987 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %988 = and i32 %987, 65536
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %998, label %990, !prof !58

990:                                              ; preds = %986
  %991 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %992 = and i32 %991, 2
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %998, label %994

994:                                              ; preds = %990
  %995 = and i32 %991, 3
  %996 = icmp eq i32 %995, 3
  %997 = select i1 %996, i1 %546, i1 false
  br i1 %997, label %1000, label %1001

998:                                              ; preds = %986, %990
  %999 = icmp eq i32 %545, 0
  br i1 %999, label %1001, label %1000, !prof !58

1000:                                             ; preds = %994, %998
  store i32 2304, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85, i32 4, i64 38), align 8, !tbaa !55
  br label %1001

1001:                                             ; preds = %994, %1000, %998
  br i1 %802, label %1002, label %1017, !prof !58

1002:                                             ; preds = %1001
  %1003 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1004 = and i32 %1003, 131072
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1014, label %1006, !prof !58

1006:                                             ; preds = %1002
  %1007 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1008 = and i32 %1007, 2
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1014, label %1010

1010:                                             ; preds = %1006
  %1011 = and i32 %1007, 3
  %1012 = icmp eq i32 %1011, 3
  %1013 = select i1 %1012, i1 %546, i1 false
  br i1 %1013, label %1016, label %1017

1014:                                             ; preds = %1006, %1002
  %1015 = icmp eq i32 %545, 0
  br i1 %1015, label %1017, label %1016, !prof !58

1016:                                             ; preds = %1010, %1014
  store i32 2305, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85, i32 4, i64 39), align 4, !tbaa !55
  br label %1017

1017:                                             ; preds = %985, %1010, %1016, %1014, %1001
  br i1 %803, label %1018, label %1019, !prof !57

1018:                                             ; preds = %1017
  store i32 2306, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86, i32 4, i64 40), align 16, !tbaa !55
  br label %1019

1019:                                             ; preds = %1018, %1017
  br i1 %802, label %1020, label %1051, !prof !58

1020:                                             ; preds = %1019
  %1021 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1022 = and i32 %1021, 65536
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1032, label %1024, !prof !58

1024:                                             ; preds = %1020
  %1025 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1026 = and i32 %1025, 2
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1032, label %1028

1028:                                             ; preds = %1024
  %1029 = and i32 %1025, 3
  %1030 = icmp eq i32 %1029, 3
  %1031 = select i1 %1030, i1 %546, i1 false
  br i1 %1031, label %1034, label %1035

1032:                                             ; preds = %1020, %1024
  %1033 = icmp eq i32 %545, 0
  br i1 %1033, label %1035, label %1034, !prof !58

1034:                                             ; preds = %1028, %1032
  store i32 2307, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86, i32 4, i64 38), align 8, !tbaa !55
  br label %1035

1035:                                             ; preds = %1028, %1034, %1032
  br i1 %802, label %1036, label %1051, !prof !58

1036:                                             ; preds = %1035
  %1037 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1038 = and i32 %1037, 131072
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1048, label %1040, !prof !58

1040:                                             ; preds = %1036
  %1041 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1042 = and i32 %1041, 2
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1048, label %1044

1044:                                             ; preds = %1040
  %1045 = and i32 %1041, 3
  %1046 = icmp eq i32 %1045, 3
  %1047 = select i1 %1046, i1 %546, i1 false
  br i1 %1047, label %1050, label %1051

1048:                                             ; preds = %1040, %1036
  %1049 = icmp eq i32 %545, 0
  br i1 %1049, label %1051, label %1050, !prof !58

1050:                                             ; preds = %1044, %1048
  store i32 2308, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86, i32 4, i64 39), align 4, !tbaa !55
  br label %1051

1051:                                             ; preds = %1019, %1044, %1050, %1048, %1035
  br i1 %803, label %1052, label %1053, !prof !57

1052:                                             ; preds = %1051
  store i32 2309, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87, i32 4, i64 40), align 16, !tbaa !55
  br label %1053

1053:                                             ; preds = %1052, %1051
  br i1 %802, label %1054, label %1100, !prof !58

1054:                                             ; preds = %1053
  %1055 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1056 = and i32 %1055, 65536
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1066, label %1058, !prof !58

1058:                                             ; preds = %1054
  %1059 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1060 = and i32 %1059, 2
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1066, label %1062

1062:                                             ; preds = %1058
  %1063 = and i32 %1059, 3
  %1064 = icmp eq i32 %1063, 3
  %1065 = select i1 %1064, i1 %546, i1 false
  br i1 %1065, label %1068, label %1069

1066:                                             ; preds = %1054, %1058
  %1067 = icmp eq i32 %545, 0
  br i1 %1067, label %1069, label %1068, !prof !58

1068:                                             ; preds = %1062, %1066
  store i32 2310, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87, i32 4, i64 38), align 8, !tbaa !55
  br label %1069

1069:                                             ; preds = %1062, %1068, %1066
  br i1 %802, label %1070, label %1100, !prof !58

1070:                                             ; preds = %1069
  %1071 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1072 = and i32 %1071, 131072
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1082, label %1074, !prof !58

1074:                                             ; preds = %1070
  %1075 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1076 = and i32 %1075, 2
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1082, label %1078

1078:                                             ; preds = %1074
  %1079 = and i32 %1075, 3
  %1080 = icmp eq i32 %1079, 3
  %1081 = select i1 %1080, i1 %546, i1 false
  br i1 %1081, label %1084, label %1085

1082:                                             ; preds = %1074, %1070
  %1083 = icmp eq i32 %545, 0
  br i1 %1083, label %1085, label %1084, !prof !58

1084:                                             ; preds = %1078, %1082
  store i32 2311, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87, i32 4, i64 39), align 4, !tbaa !55
  br label %1085

1085:                                             ; preds = %1078, %1084, %1082
  br i1 %802, label %1086, label %1100, !prof !58

1086:                                             ; preds = %1085
  %1087 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1088 = and i32 %1087, 65536
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1098, label %1090, !prof !58

1090:                                             ; preds = %1086
  %1091 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1092 = and i32 %1091, 2
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1098, label %1094

1094:                                             ; preds = %1090
  %1095 = and i32 %1091, 3
  %1096 = icmp eq i32 %1095, 3
  %1097 = select i1 %1096, i1 %546, i1 false
  br i1 %1097, label %1111, label %1100

1098:                                             ; preds = %1086, %1090
  %1099 = icmp eq i32 %545, 0
  br i1 %1099, label %1100, label %1111, !prof !58

1100:                                             ; preds = %1053, %1069, %1098, %1094, %1085
  %1101 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1102 = and i32 %1101, 65536
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1112, label %1104, !prof !58

1104:                                             ; preds = %1100
  %1105 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1106 = and i32 %1105, 2
  %1107 = icmp eq i32 %1106, 0
  %1108 = load i32, ptr @flag_trapping_math, align 4
  %1109 = icmp ne i32 %1108, 0
  %1110 = select i1 %1107, i1 true, i1 %1109
  br i1 %1110, label %1112, label %1111

1111:                                             ; preds = %1104, %1094, %1098
  store i32 2312, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99, i32 4, i64 38), align 8, !tbaa !55
  br label %1112

1112:                                             ; preds = %1100, %1111, %1104
  br i1 %802, label %1113, label %1127, !prof !58

1113:                                             ; preds = %1112
  %1114 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1115 = and i32 %1114, 131072
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1125, label %1117, !prof !58

1117:                                             ; preds = %1113
  %1118 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1119 = and i32 %1118, 2
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1125, label %1121

1121:                                             ; preds = %1117
  %1122 = and i32 %1118, 3
  %1123 = icmp eq i32 %1122, 3
  %1124 = select i1 %1123, i1 %546, i1 false
  br i1 %1124, label %1138, label %1127

1125:                                             ; preds = %1117, %1113
  %1126 = icmp eq i32 %545, 0
  br i1 %1126, label %1127, label %1138, !prof !58

1127:                                             ; preds = %1125, %1121, %1112
  %1128 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1129 = and i32 %1128, 131072
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1139, label %1131, !prof !58

1131:                                             ; preds = %1127
  %1132 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1133 = and i32 %1132, 2
  %1134 = icmp eq i32 %1133, 0
  %1135 = load i32, ptr @flag_trapping_math, align 4
  %1136 = icmp ne i32 %1135, 0
  %1137 = select i1 %1134, i1 true, i1 %1136
  br i1 %1137, label %1139, label %1138

1138:                                             ; preds = %1131, %1121, %1125
  store i32 2313, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99, i32 4, i64 39), align 4, !tbaa !55
  br label %1139

1139:                                             ; preds = %1138, %1131, %1127
  %1140 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1141 = and i32 %1140, 65536
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1154, label %1143, !prof !58

1143:                                             ; preds = %1139
  %1144 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1145 = and i32 %1144, 2
  %1146 = icmp eq i32 %1145, 0
  %1147 = load i32, ptr @flag_trapping_math, align 4
  %1148 = icmp ne i32 %1147, 0
  %1149 = select i1 %1146, i1 true, i1 %1148
  %1150 = load i32, ptr @flag_rounding_math, align 4
  %1151 = icmp ne i32 %1150, 0
  %1152 = select i1 %1149, i1 true, i1 %1151
  br i1 %1152, label %1154, label %1153

1153:                                             ; preds = %1143
  store i32 2314, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 97, i32 4, i64 38), align 8, !tbaa !55
  br label %1154

1154:                                             ; preds = %1139, %1153, %1143
  %1155 = and i32 %1140, 131072
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1168, label %1157, !prof !58

1157:                                             ; preds = %1154
  %1158 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1159 = and i32 %1158, 2
  %1160 = icmp eq i32 %1159, 0
  %1161 = load i32, ptr @flag_trapping_math, align 4
  %1162 = icmp ne i32 %1161, 0
  %1163 = select i1 %1160, i1 true, i1 %1162
  %1164 = load i32, ptr @flag_rounding_math, align 4
  %1165 = icmp ne i32 %1164, 0
  %1166 = select i1 %1163, i1 true, i1 %1165
  br i1 %1166, label %1168, label %1167

1167:                                             ; preds = %1157
  store i32 2315, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 97, i32 4, i64 39), align 4, !tbaa !55
  br label %1168

1168:                                             ; preds = %1167, %1157, %1154
  br i1 %802, label %1169, label %1170, !prof !58

1169:                                             ; preds = %1168
  store i32 2325, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 15, i64 40), align 4, !tbaa !55
  store i32 2326, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 16, i64 40), align 8, !tbaa !55
  store i32 2327, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 17, i64 40), align 4, !tbaa !55
  br label %1170

1170:                                             ; preds = %1168, %1169
  br i1 %1142, label %1176, label %1171, !prof !58

1171:                                             ; preds = %1170
  %1172 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1173 = and i32 %1172, 2
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1176, label %1175

1175:                                             ; preds = %1171
  store i32 2328, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 16, i64 38), align 16, !tbaa !55
  br label %1176

1176:                                             ; preds = %1170, %1175, %1171
  br i1 %1156, label %1182, label %1177, !prof !58

1177:                                             ; preds = %1176
  %1178 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1179 = and i32 %1178, 2
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1182, label %1181

1181:                                             ; preds = %1177
  store i32 2329, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 3, i64 16, i64 39), align 4, !tbaa !55
  br label %1182

1182:                                             ; preds = %1181, %1177, %1176
  br i1 %1142, label %1194, label %1183, !prof !58

1183:                                             ; preds = %1182
  %1184 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1185 = and i32 %1184, 2
  %1186 = icmp eq i32 %1185, 0
  %1187 = load i32, ptr @flag_trapping_math, align 4
  %1188 = icmp ne i32 %1187, 0
  %1189 = select i1 %1186, i1 true, i1 %1188
  %1190 = load i32, ptr @flag_rounding_math, align 4
  %1191 = icmp ne i32 %1190, 0
  %1192 = select i1 %1189, i1 true, i1 %1191
  br i1 %1192, label %1194, label %1193

1193:                                             ; preds = %1183
  store i32 2330, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10, i32 3, i64 16, i64 38), align 16, !tbaa !55
  br label %1194

1194:                                             ; preds = %1182, %1193, %1183
  br i1 %1156, label %1206, label %1195, !prof !58

1195:                                             ; preds = %1194
  %1196 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1197 = and i32 %1196, 2
  %1198 = icmp eq i32 %1197, 0
  %1199 = load i32, ptr @flag_trapping_math, align 4
  %1200 = icmp ne i32 %1199, 0
  %1201 = select i1 %1198, i1 true, i1 %1200
  %1202 = load i32, ptr @flag_rounding_math, align 4
  %1203 = icmp ne i32 %1202, 0
  %1204 = select i1 %1201, i1 true, i1 %1203
  br i1 %1204, label %1206, label %1205

1205:                                             ; preds = %1195
  store i32 2331, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10, i32 3, i64 16, i64 39), align 4, !tbaa !55
  br label %1206

1206:                                             ; preds = %1205, %1195, %1194
  br i1 %803, label %1207, label %1208, !prof !57

1207:                                             ; preds = %1206
  store i32 2333, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94, i32 4, i64 40), align 16, !tbaa !55
  br label %1208

1208:                                             ; preds = %1207, %1206
  br i1 %802, label %1209, label %1220, !prof !58

1209:                                             ; preds = %1208
  br i1 %1142, label %1218, label %1210, !prof !58

1210:                                             ; preds = %1209
  %1211 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1212 = and i32 %1211, 2
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1218, label %1214

1214:                                             ; preds = %1210
  %1215 = and i32 %1211, 3
  %1216 = icmp eq i32 %1215, 3
  %1217 = select i1 %1216, i1 %546, i1 false
  br i1 %1217, label %1228, label %1220

1218:                                             ; preds = %1209, %1210
  %1219 = icmp eq i32 %545, 0
  br i1 %1219, label %1220, label %1228, !prof !58

1220:                                             ; preds = %1218, %1214, %1208
  br i1 %1142, label %1229, label %1221, !prof !58

1221:                                             ; preds = %1220
  %1222 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1223 = and i32 %1222, 2
  %1224 = icmp eq i32 %1223, 0
  %1225 = load i32, ptr @flag_trapping_math, align 4
  %1226 = icmp ne i32 %1225, 0
  %1227 = select i1 %1224, i1 true, i1 %1226
  br i1 %1227, label %1229, label %1228

1228:                                             ; preds = %1221, %1214, %1218
  store i32 2334, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94, i32 4, i64 38), align 8, !tbaa !55
  br label %1229

1229:                                             ; preds = %1220, %1228, %1221
  br i1 %802, label %1230, label %1241, !prof !58

1230:                                             ; preds = %1229
  br i1 %1156, label %1239, label %1231, !prof !58

1231:                                             ; preds = %1230
  %1232 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1233 = and i32 %1232, 2
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1239, label %1235

1235:                                             ; preds = %1231
  %1236 = and i32 %1232, 3
  %1237 = icmp eq i32 %1236, 3
  %1238 = select i1 %1237, i1 %546, i1 false
  br i1 %1238, label %1249, label %1241

1239:                                             ; preds = %1231, %1230
  %1240 = icmp eq i32 %545, 0
  br i1 %1240, label %1241, label %1249, !prof !58

1241:                                             ; preds = %1239, %1235, %1229
  br i1 %1156, label %1250, label %1242, !prof !58

1242:                                             ; preds = %1241
  %1243 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1244 = and i32 %1243, 2
  %1245 = icmp eq i32 %1244, 0
  %1246 = load i32, ptr @flag_trapping_math, align 4
  %1247 = icmp ne i32 %1246, 0
  %1248 = select i1 %1245, i1 true, i1 %1247
  br i1 %1248, label %1250, label %1249

1249:                                             ; preds = %1242, %1235, %1239
  store i32 2335, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94, i32 4, i64 39), align 4, !tbaa !55
  br label %1250

1250:                                             ; preds = %1249, %1242, %1241
  br i1 %802, label %1251, label %1286, !prof !58

1251:                                             ; preds = %1250
  %1252 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1253 = and i32 %1252, 2
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1259, label %1255, !prof !58

1255:                                             ; preds = %1251
  %1256 = and i32 %1252, 3
  %1257 = icmp eq i32 %1256, 3
  %1258 = select i1 %1257, i1 %546, i1 false
  br i1 %1258, label %1261, label %1262

1259:                                             ; preds = %1251
  %1260 = icmp eq i32 %545, 0
  br i1 %1260, label %1262, label %1261, !prof !58

1261:                                             ; preds = %1255, %1259
  store i32 2345, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 15, i64 40), align 4, !tbaa !55
  br label %1262

1262:                                             ; preds = %1259, %1261, %1255
  br i1 %802, label %1263, label %1286, !prof !58

1263:                                             ; preds = %1262
  %1264 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1265 = and i32 %1264, 2
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1271, label %1267, !prof !58

1267:                                             ; preds = %1263
  %1268 = and i32 %1264, 3
  %1269 = icmp eq i32 %1268, 3
  %1270 = select i1 %1269, i1 %546, i1 false
  br i1 %1270, label %1273, label %1274

1271:                                             ; preds = %1263
  %1272 = icmp eq i32 %545, 0
  br i1 %1272, label %1274, label %1273, !prof !58

1273:                                             ; preds = %1267, %1271
  store i32 2346, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 16, i64 40), align 8, !tbaa !55
  br label %1274

1274:                                             ; preds = %1271, %1273, %1267
  br i1 %802, label %1275, label %1286, !prof !58

1275:                                             ; preds = %1274
  %1276 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1277 = and i32 %1276, 2
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1283, label %1279, !prof !58

1279:                                             ; preds = %1275
  %1280 = and i32 %1276, 3
  %1281 = icmp eq i32 %1280, 3
  %1282 = select i1 %1281, i1 %546, i1 false
  br i1 %1282, label %1285, label %1286

1283:                                             ; preds = %1275
  %1284 = icmp eq i32 %545, 0
  br i1 %1284, label %1286, label %1285, !prof !58

1285:                                             ; preds = %1279, %1283
  store i32 2347, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 17, i64 40), align 4, !tbaa !55
  br label %1286

1286:                                             ; preds = %1250, %1262, %1283, %1285, %1279, %1274
  br i1 %1142, label %1295, label %1287, !prof !58

1287:                                             ; preds = %1286
  %1288 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1289 = and i32 %1288, 2
  %1290 = icmp eq i32 %1289, 0
  %1291 = load i32, ptr @flag_trapping_math, align 4
  %1292 = icmp ne i32 %1291, 0
  %1293 = select i1 %1290, i1 true, i1 %1292
  br i1 %1293, label %1295, label %1294

1294:                                             ; preds = %1287
  store i32 2348, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 16, i64 38), align 16, !tbaa !55
  br label %1295

1295:                                             ; preds = %1286, %1294, %1287
  br i1 %1156, label %1304, label %1296, !prof !58

1296:                                             ; preds = %1295
  %1297 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1298 = and i32 %1297, 2
  %1299 = icmp eq i32 %1298, 0
  %1300 = load i32, ptr @flag_trapping_math, align 4
  %1301 = icmp ne i32 %1300, 0
  %1302 = select i1 %1299, i1 true, i1 %1301
  br i1 %1302, label %1304, label %1303

1303:                                             ; preds = %1296
  store i32 2349, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 3, i64 16, i64 39), align 4, !tbaa !55
  br label %1304

1304:                                             ; preds = %1303, %1296, %1295
  br i1 %803, label %1305, label %1306, !prof !57

1305:                                             ; preds = %1304
  store i32 2351, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95, i32 4, i64 40), align 16, !tbaa !55
  br label %1306

1306:                                             ; preds = %1305, %1304
  br i1 %802, label %1307, label %1318, !prof !58

1307:                                             ; preds = %1306
  br i1 %1142, label %1316, label %1308, !prof !58

1308:                                             ; preds = %1307
  %1309 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1310 = and i32 %1309, 2
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1316, label %1312

1312:                                             ; preds = %1308
  %1313 = and i32 %1309, 3
  %1314 = icmp eq i32 %1313, 3
  %1315 = select i1 %1314, i1 %546, i1 false
  br i1 %1315, label %1326, label %1318

1316:                                             ; preds = %1307, %1308
  %1317 = icmp eq i32 %545, 0
  br i1 %1317, label %1318, label %1326, !prof !58

1318:                                             ; preds = %1316, %1312, %1306
  br i1 %1142, label %1327, label %1319, !prof !58

1319:                                             ; preds = %1318
  %1320 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1321 = and i32 %1320, 2
  %1322 = icmp eq i32 %1321, 0
  %1323 = load i32, ptr @flag_trapping_math, align 4
  %1324 = icmp ne i32 %1323, 0
  %1325 = select i1 %1322, i1 true, i1 %1324
  br i1 %1325, label %1327, label %1326

1326:                                             ; preds = %1319, %1312, %1316
  store i32 2352, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95, i32 4, i64 38), align 8, !tbaa !55
  br label %1327

1327:                                             ; preds = %1318, %1326, %1319
  br i1 %802, label %1328, label %1339, !prof !58

1328:                                             ; preds = %1327
  br i1 %1156, label %1337, label %1329, !prof !58

1329:                                             ; preds = %1328
  %1330 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1331 = and i32 %1330, 2
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1337, label %1333

1333:                                             ; preds = %1329
  %1334 = and i32 %1330, 3
  %1335 = icmp eq i32 %1334, 3
  %1336 = select i1 %1335, i1 %546, i1 false
  br i1 %1336, label %1347, label %1339

1337:                                             ; preds = %1329, %1328
  %1338 = icmp eq i32 %545, 0
  br i1 %1338, label %1339, label %1347, !prof !58

1339:                                             ; preds = %1337, %1333, %1327
  br i1 %1156, label %1348, label %1340, !prof !58

1340:                                             ; preds = %1339
  %1341 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1342 = and i32 %1341, 2
  %1343 = icmp eq i32 %1342, 0
  %1344 = load i32, ptr @flag_trapping_math, align 4
  %1345 = icmp ne i32 %1344, 0
  %1346 = select i1 %1343, i1 true, i1 %1345
  br i1 %1346, label %1348, label %1347

1347:                                             ; preds = %1340, %1333, %1337
  store i32 2353, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95, i32 4, i64 39), align 4, !tbaa !55
  br label %1348

1348:                                             ; preds = %1347, %1340, %1339
  br i1 %802, label %1349, label %1384, !prof !58

1349:                                             ; preds = %1348
  %1350 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1351 = and i32 %1350, 2
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1357, label %1353, !prof !58

1353:                                             ; preds = %1349
  %1354 = and i32 %1350, 3
  %1355 = icmp eq i32 %1354, 3
  %1356 = select i1 %1355, i1 %546, i1 false
  br i1 %1356, label %1359, label %1360

1357:                                             ; preds = %1349
  %1358 = icmp eq i32 %545, 0
  br i1 %1358, label %1360, label %1359, !prof !58

1359:                                             ; preds = %1353, %1357
  store i32 2363, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 15, i64 40), align 4, !tbaa !55
  br label %1360

1360:                                             ; preds = %1357, %1359, %1353
  br i1 %802, label %1361, label %1384, !prof !58

1361:                                             ; preds = %1360
  %1362 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1363 = and i32 %1362, 2
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1369, label %1365, !prof !58

1365:                                             ; preds = %1361
  %1366 = and i32 %1362, 3
  %1367 = icmp eq i32 %1366, 3
  %1368 = select i1 %1367, i1 %546, i1 false
  br i1 %1368, label %1371, label %1372

1369:                                             ; preds = %1361
  %1370 = icmp eq i32 %545, 0
  br i1 %1370, label %1372, label %1371, !prof !58

1371:                                             ; preds = %1365, %1369
  store i32 2364, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 16, i64 40), align 8, !tbaa !55
  br label %1372

1372:                                             ; preds = %1369, %1371, %1365
  br i1 %802, label %1373, label %1384, !prof !58

1373:                                             ; preds = %1372
  %1374 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1375 = and i32 %1374, 2
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1381, label %1377, !prof !58

1377:                                             ; preds = %1373
  %1378 = and i32 %1374, 3
  %1379 = icmp eq i32 %1378, 3
  %1380 = select i1 %1379, i1 %546, i1 false
  br i1 %1380, label %1383, label %1384

1381:                                             ; preds = %1373
  %1382 = icmp eq i32 %545, 0
  br i1 %1382, label %1384, label %1383, !prof !58

1383:                                             ; preds = %1377, %1381
  store i32 2365, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 17, i64 40), align 4, !tbaa !55
  br label %1384

1384:                                             ; preds = %1348, %1360, %1381, %1383, %1377, %1372
  br i1 %1142, label %1393, label %1385, !prof !58

1385:                                             ; preds = %1384
  %1386 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1387 = and i32 %1386, 2
  %1388 = icmp eq i32 %1387, 0
  %1389 = load i32, ptr @flag_trapping_math, align 4
  %1390 = icmp ne i32 %1389, 0
  %1391 = select i1 %1388, i1 true, i1 %1390
  br i1 %1391, label %1393, label %1392

1392:                                             ; preds = %1385
  store i32 2366, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 16, i64 38), align 16, !tbaa !55
  br label %1393

1393:                                             ; preds = %1384, %1392, %1385
  br i1 %1156, label %1402, label %1394, !prof !58

1394:                                             ; preds = %1393
  %1395 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1396 = and i32 %1395, 2
  %1397 = icmp eq i32 %1396, 0
  %1398 = load i32, ptr @flag_trapping_math, align 4
  %1399 = icmp ne i32 %1398, 0
  %1400 = select i1 %1397, i1 true, i1 %1399
  br i1 %1400, label %1402, label %1401

1401:                                             ; preds = %1394
  store i32 2367, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 3, i64 16, i64 39), align 4, !tbaa !55
  br label %1402

1402:                                             ; preds = %1401, %1394, %1393
  br i1 %803, label %1403, label %1404, !prof !57

1403:                                             ; preds = %1402
  store i32 2369, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96, i32 4, i64 40), align 16, !tbaa !55
  br label %1404

1404:                                             ; preds = %1403, %1402
  br i1 %802, label %1405, label %1416, !prof !58

1405:                                             ; preds = %1404
  br i1 %1142, label %1414, label %1406, !prof !58

1406:                                             ; preds = %1405
  %1407 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1408 = and i32 %1407, 2
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1414, label %1410

1410:                                             ; preds = %1406
  %1411 = and i32 %1407, 3
  %1412 = icmp eq i32 %1411, 3
  %1413 = select i1 %1412, i1 %546, i1 false
  br i1 %1413, label %1424, label %1416

1414:                                             ; preds = %1405, %1406
  %1415 = icmp eq i32 %545, 0
  br i1 %1415, label %1416, label %1424, !prof !58

1416:                                             ; preds = %1414, %1410, %1404
  br i1 %1142, label %1425, label %1417, !prof !58

1417:                                             ; preds = %1416
  %1418 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1419 = and i32 %1418, 2
  %1420 = icmp eq i32 %1419, 0
  %1421 = load i32, ptr @flag_trapping_math, align 4
  %1422 = icmp ne i32 %1421, 0
  %1423 = select i1 %1420, i1 true, i1 %1422
  br i1 %1423, label %1425, label %1424

1424:                                             ; preds = %1417, %1410, %1414
  store i32 2370, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96, i32 4, i64 38), align 8, !tbaa !55
  br label %1425

1425:                                             ; preds = %1416, %1424, %1417
  br i1 %802, label %1426, label %1437, !prof !58

1426:                                             ; preds = %1425
  br i1 %1156, label %1435, label %1427, !prof !58

1427:                                             ; preds = %1426
  %1428 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1429 = and i32 %1428, 2
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1435, label %1431

1431:                                             ; preds = %1427
  %1432 = and i32 %1428, 3
  %1433 = icmp eq i32 %1432, 3
  %1434 = select i1 %1433, i1 %546, i1 false
  br i1 %1434, label %1445, label %1437

1435:                                             ; preds = %1427, %1426
  %1436 = icmp eq i32 %545, 0
  br i1 %1436, label %1437, label %1445, !prof !58

1437:                                             ; preds = %1435, %1431, %1425
  br i1 %1156, label %1446, label %1438, !prof !58

1438:                                             ; preds = %1437
  %1439 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1440 = and i32 %1439, 2
  %1441 = icmp eq i32 %1440, 0
  %1442 = load i32, ptr @flag_trapping_math, align 4
  %1443 = icmp ne i32 %1442, 0
  %1444 = select i1 %1441, i1 true, i1 %1443
  br i1 %1444, label %1446, label %1445

1445:                                             ; preds = %1438, %1431, %1435
  store i32 2371, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96, i32 4, i64 39), align 4, !tbaa !55
  br label %1446

1446:                                             ; preds = %1445, %1438, %1437
  br i1 %803, label %1447, label %1448, !prof !57

1447:                                             ; preds = %1446
  store i32 2373, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98, i32 4, i64 40), align 16, !tbaa !55
  br label %1448

1448:                                             ; preds = %1447, %1446
  br i1 %802, label %1449, label %1518, !prof !58

1449:                                             ; preds = %1448
  br i1 %1142, label %1458, label %1450, !prof !58

1450:                                             ; preds = %1449
  %1451 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1452 = and i32 %1451, 2
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1458, label %1454

1454:                                             ; preds = %1450
  %1455 = and i32 %1451, 3
  %1456 = icmp eq i32 %1455, 3
  %1457 = select i1 %1456, i1 %546, i1 false
  br i1 %1457, label %1460, label %1461

1458:                                             ; preds = %1449, %1450
  %1459 = icmp eq i32 %545, 0
  br i1 %1459, label %1461, label %1460, !prof !58

1460:                                             ; preds = %1454, %1458
  store i32 2374, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98, i32 4, i64 38), align 8, !tbaa !55
  br label %1461

1461:                                             ; preds = %1454, %1460, %1458
  br i1 %802, label %1462, label %1518, !prof !58

1462:                                             ; preds = %1461
  br i1 %1156, label %1471, label %1463, !prof !58

1463:                                             ; preds = %1462
  %1464 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1465 = and i32 %1464, 2
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1471, label %1467

1467:                                             ; preds = %1463
  %1468 = and i32 %1464, 3
  %1469 = icmp eq i32 %1468, 3
  %1470 = select i1 %1469, i1 %546, i1 false
  br i1 %1470, label %1473, label %1474

1471:                                             ; preds = %1463, %1462
  %1472 = icmp eq i32 %545, 0
  br i1 %1472, label %1474, label %1473, !prof !58

1473:                                             ; preds = %1467, %1471
  store i32 2375, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98, i32 4, i64 39), align 4, !tbaa !55
  br label %1474

1474:                                             ; preds = %1467, %1473, %1471
  br i1 %802, label %1475, label %1518, !prof !58

1475:                                             ; preds = %1474
  %1476 = load i32, ptr @linux_uclibc, align 4, !tbaa !50
  %1477 = and i32 %1476, 1
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1479, label %1480, !prof !58

1479:                                             ; preds = %1475
  store i32 2378, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104, i32 4, i64 40), align 16, !tbaa !55
  br label %1480

1480:                                             ; preds = %1479, %1475
  br i1 %802, label %1481, label %1518, !prof !58

1481:                                             ; preds = %1480
  %1482 = load i32, ptr @linux_uclibc, align 4, !tbaa !50
  %1483 = and i32 %1482, 1
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1485, label %1491, !prof !58

1485:                                             ; preds = %1481
  br i1 %1142, label %1490, label %1486, !prof !58

1486:                                             ; preds = %1485
  %1487 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1488 = and i32 %1487, 2
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1490, label %1491

1490:                                             ; preds = %1485, %1486
  store i32 2379, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104, i32 4, i64 38), align 8, !tbaa !55
  br label %1491

1491:                                             ; preds = %1490, %1486, %1481
  br i1 %802, label %1492, label %1518, !prof !58

1492:                                             ; preds = %1491
  %1493 = load i32, ptr @linux_uclibc, align 4, !tbaa !50
  %1494 = and i32 %1493, 1
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1496, label %1502, !prof !58

1496:                                             ; preds = %1492
  br i1 %1156, label %1501, label %1497, !prof !58

1497:                                             ; preds = %1496
  %1498 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1499 = and i32 %1498, 2
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1501, label %1502

1501:                                             ; preds = %1497, %1496
  store i32 2380, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104, i32 4, i64 39), align 4, !tbaa !55
  br label %1502

1502:                                             ; preds = %1501, %1497, %1492
  br i1 %802, label %1503, label %1518, !prof !58

1503:                                             ; preds = %1502
  br i1 %1142, label %1508, label %1504, !prof !58

1504:                                             ; preds = %1503
  %1505 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1506 = and i32 %1505, 2
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1508, label %1509

1508:                                             ; preds = %1503, %1504
  store i32 2381, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103, i32 4, i64 38), align 8, !tbaa !55
  br label %1509

1509:                                             ; preds = %1508, %1504
  br i1 %802, label %1510, label %1518, !prof !58

1510:                                             ; preds = %1509
  br i1 %1156, label %1515, label %1511, !prof !58

1511:                                             ; preds = %1510
  %1512 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1513 = and i32 %1512, 2
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1515, label %1516

1515:                                             ; preds = %1511, %1510
  store i32 2382, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103, i32 4, i64 39), align 4, !tbaa !55
  br label %1516

1516:                                             ; preds = %1515, %1511
  br i1 %802, label %1517, label %1518, !prof !58

1517:                                             ; preds = %1516
  store i32 2383, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103, i32 4, i64 40), align 16, !tbaa !55
  br label %1518

1518:                                             ; preds = %1448, %1461, %1474, %1480, %1491, %1502, %1509, %1517, %1516
  store i32 2384, ptr getelementptr inbounds ([87 x i32], ptr @movmem_optab, i64 0, i64 16), align 16, !tbaa !50
  store i32 2388, ptr getelementptr inbounds ([87 x i32], ptr @setmem_optab, i64 0, i64 16), align 16, !tbaa !50
  store i32 2392, ptr getelementptr inbounds ([87 x i32], ptr @cmpstrn_optab, i64 0, i64 16), align 16, !tbaa !50
  store i32 2396, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 114, i32 4, i64 16), align 16, !tbaa !55
  store i32 2397, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 114, i32 4, i64 17), align 4, !tbaa !55
  %1519 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 22), align 2, !tbaa !46
  %1520 = icmp eq i8 %1519, 0
  br i1 %1520, label %1522, label %1521, !prof !57

1521:                                             ; preds = %1518
  store i32 2401, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 14), align 8, !tbaa !50
  br label %1522

1522:                                             ; preds = %1521, %1518
  %1523 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 23), align 1, !tbaa !46
  %1524 = icmp eq i8 %1523, 0
  br i1 %1524, label %1526, label %1525, !prof !57

1525:                                             ; preds = %1522
  store i32 2402, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 15), align 4, !tbaa !50
  br label %1526

1526:                                             ; preds = %1525, %1522
  store i32 2403, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 16), align 16, !tbaa !50
  %1527 = and i32 %800, 2
  %1528 = icmp ne i32 %1527, 0
  %1529 = load i8, ptr @ix86_arch_features, align 1
  %1530 = icmp ne i8 %1529, 0
  %1531 = select i1 %1528, i1 %1530, i1 false, !prof !58
  br i1 %1531, label %1540, label %1532, !prof !57

1532:                                             ; preds = %1526
  %1533 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1534 = and i32 %1533, 65536
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1541, label %1536, !prof !58

1536:                                             ; preds = %1532
  %1537 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1538 = and i32 %1537, 2
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1541, label %1540

1540:                                             ; preds = %1526, %1536
  store i32 2406, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 38), align 8, !tbaa !50
  br label %1541

1541:                                             ; preds = %1532, %1540, %1536
  br i1 %1531, label %1550, label %1542, !prof !57

1542:                                             ; preds = %1541
  %1543 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1544 = and i32 %1543, 131072
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1551, label %1546, !prof !58

1546:                                             ; preds = %1542
  %1547 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %1548 = and i32 %1547, 2
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1551, label %1550

1550:                                             ; preds = %1541, %1546
  store i32 2407, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 39), align 4, !tbaa !50
  br label %1551

1551:                                             ; preds = %1550, %1546, %1542
  br i1 %1531, label %1552, label %1553, !prof !57

1552:                                             ; preds = %1551
  store i32 2408, ptr getelementptr inbounds ([87 x i32], ptr @movcc_gen_code, i64 0, i64 40), align 16, !tbaa !50
  br label %1553

1553:                                             ; preds = %1551, %1552
  store i32 2411, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120, i32 4, i64 14), align 8, !tbaa !55
  store i32 2412, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120, i32 4, i64 15), align 4, !tbaa !55
  store i32 2413, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120, i32 4, i64 16), align 16, !tbaa !55
  %1554 = and i32 %1140, 2048
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1557, label %1556, !prof !58

1556:                                             ; preds = %1553
  store i32 2496, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 59), align 4, !tbaa !55
  store i32 2497, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 60), align 16, !tbaa !55
  store i32 2498, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 61), align 4, !tbaa !55
  store i32 2499, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 62), align 8, !tbaa !55
  store i32 2500, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 78), align 8, !tbaa !55
  store i32 2506, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 59), align 4, !tbaa !55
  store i32 2507, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 60), align 16, !tbaa !55
  store i32 2508, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 61), align 4, !tbaa !55
  store i32 2509, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 62), align 8, !tbaa !55
  store i32 2510, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 78), align 8, !tbaa !55
  store i32 2511, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 59), align 4, !tbaa !55
  store i32 2512, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 60), align 16, !tbaa !55
  store i32 2513, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 61), align 4, !tbaa !55
  store i32 2514, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 62), align 8, !tbaa !55
  store i32 2515, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 78), align 8, !tbaa !55
  store i32 2523, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 78), align 8, !tbaa !55
  store i32 2526, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 78), align 8, !tbaa !55
  br label %1557

1557:                                             ; preds = %1553, %1556
  br i1 %1142, label %1559, label %1558, !prof !58

1558:                                             ; preds = %1557
  store i32 2527, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 78), align 8, !tbaa !55
  br label %1559

1559:                                             ; preds = %1558, %1557
  br i1 %1555, label %1561, label %1560, !prof !58

1560:                                             ; preds = %1559
  store i32 2568, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 61), align 4, !tbaa !55
  store i32 2571, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 61), align 4, !tbaa !55
  br label %1561

1561:                                             ; preds = %1559, %1560
  br i1 %1142, label %1563, label %1562, !prof !58

1562:                                             ; preds = %1561
  store i32 2572, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 61), align 4, !tbaa !55
  br label %1563

1563:                                             ; preds = %1562, %1561
  br i1 %1555, label %1565, label %1564, !prof !58

1564:                                             ; preds = %1563
  store i32 2573, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 60), align 16, !tbaa !55
  store i32 2574, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 60), align 16, !tbaa !55
  br label %1565

1565:                                             ; preds = %1563, %1564
  br i1 %1142, label %1567, label %1566, !prof !58

1566:                                             ; preds = %1565
  store i32 2575, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 60), align 16, !tbaa !55
  br label %1567

1567:                                             ; preds = %1566, %1565
  br i1 %1555, label %1569, label %1568, !prof !58

1568:                                             ; preds = %1567
  store i32 2576, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 59), align 4, !tbaa !55
  store i32 2577, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 59), align 4, !tbaa !55
  br label %1569

1569:                                             ; preds = %1567, %1568
  br i1 %1142, label %1571, label %1570, !prof !58

1570:                                             ; preds = %1569
  store i32 2578, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 59), align 4, !tbaa !55
  br label %1571

1571:                                             ; preds = %1570, %1569
  %1572 = and i32 %1140, 32
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1575, label %1574, !prof !58

1574:                                             ; preds = %1571
  store i32 2584, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 68), align 16, !tbaa !55
  store i32 2585, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 69), align 4, !tbaa !55
  store i32 2586, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 70), align 8, !tbaa !55
  store i32 2587, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 71), align 4, !tbaa !55
  store i32 2588, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 81), align 4, !tbaa !55
  br label %1575

1575:                                             ; preds = %1571, %1574
  %1576 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1577 = and i32 %1576, 32
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1580, label %1579, !prof !58

1579:                                             ; preds = %1575
  store i32 2589, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 82), align 8, !tbaa !55
  br label %1580

1580:                                             ; preds = %1579, %1575
  %1581 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1582 = and i32 %1581, 65536
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1585, label %1584, !prof !58

1584:                                             ; preds = %1580
  store i32 2590, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 63), align 4, !tbaa !55
  br label %1585

1585:                                             ; preds = %1584, %1580
  %1586 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1587 = and i32 %1586, 65536
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1590, label %1589, !prof !58

1589:                                             ; preds = %1585
  store i32 2591, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 64), align 16, !tbaa !55
  br label %1590

1590:                                             ; preds = %1589, %1585
  %1591 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1592 = and i32 %1591, 65536
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1595, label %1594, !prof !58

1594:                                             ; preds = %1590
  store i32 2592, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 65), align 4, !tbaa !55
  br label %1595

1595:                                             ; preds = %1594, %1590
  %1596 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1597 = and i32 %1596, 65536
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1600, label %1599, !prof !58

1599:                                             ; preds = %1595
  store i32 2593, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 66), align 8, !tbaa !55
  br label %1600

1600:                                             ; preds = %1599, %1595
  %1601 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1602 = and i32 %1601, 65536
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1605, label %1604, !prof !58

1604:                                             ; preds = %1600
  store i32 2594, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 67), align 4, !tbaa !55
  br label %1605

1605:                                             ; preds = %1604, %1600
  %1606 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1607 = and i32 %1606, 65536
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1610, label %1609, !prof !58

1609:                                             ; preds = %1605
  store i32 2595, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 79), align 4, !tbaa !55
  br label %1610

1610:                                             ; preds = %1609, %1605
  %1611 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1612 = and i32 %1611, 65536
  %1613 = icmp eq i32 %1612, 0
  br i1 %1613, label %1615, label %1614, !prof !58

1614:                                             ; preds = %1610
  store i32 2596, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 80), align 16, !tbaa !55
  br label %1615

1615:                                             ; preds = %1614, %1610
  %1616 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1617 = and i32 %1616, 32
  %1618 = icmp eq i32 %1617, 0
  br i1 %1618, label %1620, label %1619, !prof !58

1619:                                             ; preds = %1615
  store i32 2600, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 68), align 16, !tbaa !55
  br label %1620

1620:                                             ; preds = %1619, %1615
  %1621 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1622 = and i32 %1621, 32
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1625, label %1624, !prof !58

1624:                                             ; preds = %1620
  store i32 2601, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 69), align 4, !tbaa !55
  br label %1625

1625:                                             ; preds = %1624, %1620
  %1626 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1627 = and i32 %1626, 32
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1630, label %1629, !prof !58

1629:                                             ; preds = %1625
  store i32 2602, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 70), align 8, !tbaa !55
  br label %1630

1630:                                             ; preds = %1629, %1625
  %1631 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1632 = and i32 %1631, 32
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1635, label %1634, !prof !58

1634:                                             ; preds = %1630
  store i32 2603, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 71), align 4, !tbaa !55
  br label %1635

1635:                                             ; preds = %1634, %1630
  %1636 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1637 = and i32 %1636, 32
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1640, label %1639, !prof !58

1639:                                             ; preds = %1635
  store i32 2604, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 81), align 4, !tbaa !55
  br label %1640

1640:                                             ; preds = %1639, %1635
  %1641 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1642 = and i32 %1641, 32
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1645, label %1644, !prof !58

1644:                                             ; preds = %1640
  store i32 2605, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 82), align 8, !tbaa !55
  br label %1645

1645:                                             ; preds = %1644, %1640
  %1646 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1647 = and i32 %1646, 65536
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1650, label %1649, !prof !58

1649:                                             ; preds = %1645
  store i32 2606, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 63), align 4, !tbaa !55
  br label %1650

1650:                                             ; preds = %1649, %1645
  %1651 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1652 = and i32 %1651, 65536
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1655, label %1654, !prof !58

1654:                                             ; preds = %1650
  store i32 2607, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 64), align 16, !tbaa !55
  br label %1655

1655:                                             ; preds = %1654, %1650
  %1656 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1657 = and i32 %1656, 65536
  %1658 = icmp eq i32 %1657, 0
  br i1 %1658, label %1660, label %1659, !prof !58

1659:                                             ; preds = %1655
  store i32 2608, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 65), align 4, !tbaa !55
  br label %1660

1660:                                             ; preds = %1659, %1655
  %1661 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1662 = and i32 %1661, 65536
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1665, label %1664, !prof !58

1664:                                             ; preds = %1660
  store i32 2609, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 66), align 8, !tbaa !55
  br label %1665

1665:                                             ; preds = %1664, %1660
  %1666 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1667 = and i32 %1666, 65536
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1670, label %1669, !prof !58

1669:                                             ; preds = %1665
  store i32 2610, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 67), align 4, !tbaa !55
  br label %1670

1670:                                             ; preds = %1669, %1665
  %1671 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1672 = and i32 %1671, 65536
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1675, label %1674, !prof !58

1674:                                             ; preds = %1670
  store i32 2611, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 79), align 4, !tbaa !55
  br label %1675

1675:                                             ; preds = %1674, %1670
  %1676 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1677 = and i32 %1676, 65536
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1680, label %1679, !prof !58

1679:                                             ; preds = %1675
  store i32 2612, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 80), align 16, !tbaa !55
  br label %1680

1680:                                             ; preds = %1679, %1675
  %1681 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1682 = and i32 %1681, 32
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1685, label %1684, !prof !58

1684:                                             ; preds = %1680
  store i32 2613, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 68), align 16, !tbaa !55
  br label %1685

1685:                                             ; preds = %1684, %1680
  %1686 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1687 = and i32 %1686, 32
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1690, label %1689, !prof !58

1689:                                             ; preds = %1685
  store i32 2614, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 69), align 4, !tbaa !55
  br label %1690

1690:                                             ; preds = %1689, %1685
  %1691 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1692 = and i32 %1691, 32
  %1693 = icmp eq i32 %1692, 0
  br i1 %1693, label %1695, label %1694, !prof !58

1694:                                             ; preds = %1690
  store i32 2615, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 70), align 8, !tbaa !55
  br label %1695

1695:                                             ; preds = %1694, %1690
  %1696 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1697 = and i32 %1696, 32
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1700, label %1699, !prof !58

1699:                                             ; preds = %1695
  store i32 2616, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 71), align 4, !tbaa !55
  br label %1700

1700:                                             ; preds = %1699, %1695
  %1701 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1702 = and i32 %1701, 32
  %1703 = icmp eq i32 %1702, 0
  br i1 %1703, label %1705, label %1704, !prof !58

1704:                                             ; preds = %1700
  store i32 2617, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 81), align 4, !tbaa !55
  br label %1705

1705:                                             ; preds = %1704, %1700
  %1706 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1707 = and i32 %1706, 32
  %1708 = icmp eq i32 %1707, 0
  br i1 %1708, label %1710, label %1709, !prof !58

1709:                                             ; preds = %1705
  store i32 2618, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 82), align 8, !tbaa !55
  br label %1710

1710:                                             ; preds = %1709, %1705
  %1711 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1712 = and i32 %1711, 65536
  %1713 = icmp eq i32 %1712, 0
  br i1 %1713, label %1715, label %1714, !prof !58

1714:                                             ; preds = %1710
  store i32 2619, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 63), align 4, !tbaa !55
  br label %1715

1715:                                             ; preds = %1714, %1710
  %1716 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1717 = and i32 %1716, 65536
  %1718 = icmp eq i32 %1717, 0
  br i1 %1718, label %1720, label %1719, !prof !58

1719:                                             ; preds = %1715
  store i32 2620, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 64), align 16, !tbaa !55
  br label %1720

1720:                                             ; preds = %1719, %1715
  %1721 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1722 = and i32 %1721, 65536
  %1723 = icmp eq i32 %1722, 0
  br i1 %1723, label %1725, label %1724, !prof !58

1724:                                             ; preds = %1720
  store i32 2621, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 65), align 4, !tbaa !55
  br label %1725

1725:                                             ; preds = %1724, %1720
  %1726 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1727 = and i32 %1726, 65536
  %1728 = icmp eq i32 %1727, 0
  br i1 %1728, label %1730, label %1729, !prof !58

1729:                                             ; preds = %1725
  store i32 2622, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 66), align 8, !tbaa !55
  br label %1730

1730:                                             ; preds = %1729, %1725
  %1731 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1732 = and i32 %1731, 65536
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %1735, label %1734, !prof !58

1734:                                             ; preds = %1730
  store i32 2623, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 67), align 4, !tbaa !55
  br label %1735

1735:                                             ; preds = %1734, %1730
  %1736 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1737 = and i32 %1736, 65536
  %1738 = icmp eq i32 %1737, 0
  br i1 %1738, label %1740, label %1739, !prof !58

1739:                                             ; preds = %1735
  store i32 2624, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 79), align 4, !tbaa !55
  br label %1740

1740:                                             ; preds = %1739, %1735
  %1741 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1742 = and i32 %1741, 65536
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1745, label %1744, !prof !58

1744:                                             ; preds = %1740
  store i32 2625, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 80), align 16, !tbaa !55
  br label %1745

1745:                                             ; preds = %1744, %1740
  %1746 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1747 = and i32 %1746, 65536
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1750, label %1749, !prof !58

1749:                                             ; preds = %1745
  store i32 2626, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 79), align 4, !tbaa !55
  br label %1750

1750:                                             ; preds = %1745, %1749
  %1751 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1752 = and i32 %1751, 131072
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1755, label %1754, !prof !58

1754:                                             ; preds = %1750
  store i32 2627, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 80), align 16, !tbaa !55
  br label %1755

1755:                                             ; preds = %1754, %1750
  %1756 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1757 = and i32 %1756, 2097152
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %1760, label %1759, !prof !58

1759:                                             ; preds = %1755
  store i32 2628, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 38), align 8, !tbaa !55
  br label %1760

1760:                                             ; preds = %1759, %1755
  %1761 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1762 = and i32 %1761, 2097152
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1765, label %1764, !prof !58

1764:                                             ; preds = %1760
  store i32 2629, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 39), align 4, !tbaa !55
  br label %1765

1765:                                             ; preds = %1764, %1760
  %1766 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1767 = and i32 %1766, 131072
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1770, label %1769, !prof !58

1769:                                             ; preds = %1765
  store i32 2630, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 66), align 8, !tbaa !55
  br label %1770

1770:                                             ; preds = %1769, %1765
  %1771 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1772 = and i32 %1771, 131072
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1775, label %1774, !prof !58

1774:                                             ; preds = %1770
  store i32 2631, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 16), align 16, !tbaa !55
  br label %1775

1775:                                             ; preds = %1774, %1770
  %1776 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1777 = and i32 %1776, 65536
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1780, label %1779, !prof !58

1779:                                             ; preds = %1775
  store i32 2632, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 79), align 4, !tbaa !55
  store i32 2632, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 79), align 4, !tbaa !55
  br label %1780

1780:                                             ; preds = %1775, %1779
  %1781 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1782 = and i32 %1781, 65536
  %1783 = icmp eq i32 %1782, 0
  br i1 %1783, label %1785, label %1784, !prof !58

1784:                                             ; preds = %1780
  store i32 2633, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 79), align 4, !tbaa !55
  store i32 2633, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 79), align 4, !tbaa !55
  br label %1785

1785:                                             ; preds = %1780, %1784
  %1786 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1787 = and i32 %1786, 131072
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1790, label %1789, !prof !58

1789:                                             ; preds = %1785
  store i32 2634, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 80), align 16, !tbaa !55
  store i32 2634, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67, i32 4, i64 80), align 16, !tbaa !55
  br label %1790

1790:                                             ; preds = %1789, %1785
  %1791 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1792 = and i32 %1791, 131072
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1795, label %1794, !prof !58

1794:                                             ; preds = %1790
  store i32 2635, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 80), align 16, !tbaa !55
  store i32 2635, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 4, i64 80), align 16, !tbaa !55
  br label %1795

1795:                                             ; preds = %1794, %1790
  %1796 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1797 = and i32 %1796, 32
  %1798 = icmp eq i32 %1797, 0
  br i1 %1798, label %1800, label %1799, !prof !58

1799:                                             ; preds = %1795
  store i32 2636, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 81), align 4, !tbaa !55
  store i32 2636, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 81), align 4, !tbaa !55
  br label %1800

1800:                                             ; preds = %1799, %1795
  %1801 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1802 = and i32 %1801, 32
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1805, label %1804, !prof !58

1804:                                             ; preds = %1800
  store i32 2637, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 81), align 4, !tbaa !55
  store i32 2637, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 81), align 4, !tbaa !55
  br label %1805

1805:                                             ; preds = %1804, %1800
  %1806 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1807 = and i32 %1806, 32
  %1808 = icmp eq i32 %1807, 0
  br i1 %1808, label %1810, label %1809, !prof !58

1809:                                             ; preds = %1805
  store i32 2638, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 82), align 8, !tbaa !55
  store i32 2638, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 82), align 8, !tbaa !55
  br label %1810

1810:                                             ; preds = %1809, %1805
  %1811 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1812 = and i32 %1811, 32
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1815, label %1814, !prof !58

1814:                                             ; preds = %1810
  store i32 2639, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 82), align 8, !tbaa !55
  store i32 2639, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 82), align 8, !tbaa !55
  br label %1815

1815:                                             ; preds = %1814, %1810
  %1816 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1817 = and i32 %1816, 65536
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %1820, label %1819, !prof !58

1819:                                             ; preds = %1815
  store i32 2640, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 79), align 4, !tbaa !55
  store i32 2640, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 79), align 4, !tbaa !55
  br label %1820

1820:                                             ; preds = %1815, %1819
  %1821 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1822 = and i32 %1821, 65536
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1825, label %1824, !prof !58

1824:                                             ; preds = %1820
  store i32 2641, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 79), align 4, !tbaa !55
  store i32 2641, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 79), align 4, !tbaa !55
  br label %1825

1825:                                             ; preds = %1820, %1824
  %1826 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1827 = and i32 %1826, 131072
  %1828 = icmp eq i32 %1827, 0
  br i1 %1828, label %1830, label %1829, !prof !58

1829:                                             ; preds = %1825
  store i32 2642, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 80), align 16, !tbaa !55
  store i32 2642, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 4, i64 80), align 16, !tbaa !55
  br label %1830

1830:                                             ; preds = %1829, %1825
  %1831 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1832 = and i32 %1831, 131072
  %1833 = icmp eq i32 %1832, 0
  br i1 %1833, label %1835, label %1834, !prof !58

1834:                                             ; preds = %1830
  store i32 2643, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 80), align 16, !tbaa !55
  store i32 2643, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 4, i64 80), align 16, !tbaa !55
  br label %1835

1835:                                             ; preds = %1834, %1830
  %1836 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1837 = and i32 %1836, 32
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1840, label %1839, !prof !58

1839:                                             ; preds = %1835
  store i32 2644, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 81), align 4, !tbaa !55
  store i32 2644, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 81), align 4, !tbaa !55
  br label %1840

1840:                                             ; preds = %1839, %1835
  %1841 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1842 = and i32 %1841, 32
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1845, label %1844, !prof !58

1844:                                             ; preds = %1840
  store i32 2645, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 82), align 8, !tbaa !55
  store i32 2645, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 82), align 8, !tbaa !55
  br label %1845

1845:                                             ; preds = %1844, %1840
  %1846 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1847 = and i32 %1846, 65536
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1850, label %1849, !prof !58

1849:                                             ; preds = %1845
  store i32 2646, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 79), align 4, !tbaa !55
  store i32 2646, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 79), align 4, !tbaa !55
  br label %1850

1850:                                             ; preds = %1845, %1849
  %1851 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1852 = and i32 %1851, 131072
  %1853 = icmp eq i32 %1852, 0
  br i1 %1853, label %1855, label %1854, !prof !58

1854:                                             ; preds = %1850
  store i32 2647, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 80), align 16, !tbaa !55
  store i32 2647, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 4, i64 80), align 16, !tbaa !55
  br label %1855

1855:                                             ; preds = %1854, %1850
  %1856 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1857 = and i32 %1856, 32
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %1860, label %1859, !prof !58

1859:                                             ; preds = %1855
  store i32 2648, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 81), align 4, !tbaa !55
  br label %1860

1860:                                             ; preds = %1859, %1855
  %1861 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1862 = and i32 %1861, 32
  %1863 = icmp eq i32 %1862, 0
  br i1 %1863, label %1865, label %1864, !prof !58

1864:                                             ; preds = %1860
  store i32 2649, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 82), align 8, !tbaa !55
  br label %1865

1865:                                             ; preds = %1864, %1860
  %1866 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1867 = and i32 %1866, 65536
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %1870, label %1869, !prof !58

1869:                                             ; preds = %1865
  store i32 2650, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 79), align 4, !tbaa !55
  br label %1870

1870:                                             ; preds = %1869, %1865
  %1871 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1872 = and i32 %1871, 131072
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1875, label %1874, !prof !58

1874:                                             ; preds = %1870
  store i32 2651, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 80), align 16, !tbaa !55
  br label %1875

1875:                                             ; preds = %1874, %1870
  %1876 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1877 = and i32 %1876, 32
  %1878 = icmp eq i32 %1877, 0
  br i1 %1878, label %1880, label %1879, !prof !58

1879:                                             ; preds = %1875
  store i32 2652, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 81), align 4, !tbaa !55
  br label %1880

1880:                                             ; preds = %1879, %1875
  %1881 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1882 = and i32 %1881, 65536
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %1885, label %1884, !prof !58

1884:                                             ; preds = %1880
  store i32 2653, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75, i32 4, i64 79), align 4, !tbaa !55
  br label %1885

1885:                                             ; preds = %1884, %1880
  %1886 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1887 = and i32 %1886, 32
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1890, label %1889, !prof !58

1889:                                             ; preds = %1885
  store i32 2656, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 81), align 4, !tbaa !55
  br label %1890

1890:                                             ; preds = %1889, %1885
  %1891 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1892 = and i32 %1891, 32
  %1893 = icmp eq i32 %1892, 0
  br i1 %1893, label %1895, label %1894, !prof !58

1894:                                             ; preds = %1890
  store i32 2657, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 81), align 4, !tbaa !55
  br label %1895

1895:                                             ; preds = %1894, %1890
  %1896 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1897 = and i32 %1896, 32
  %1898 = icmp eq i32 %1897, 0
  br i1 %1898, label %1900, label %1899, !prof !58

1899:                                             ; preds = %1895
  store i32 2658, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 82), align 8, !tbaa !55
  br label %1900

1900:                                             ; preds = %1899, %1895
  %1901 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1902 = and i32 %1901, 32
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %1905, label %1904, !prof !58

1904:                                             ; preds = %1900
  store i32 2659, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 82), align 8, !tbaa !55
  br label %1905

1905:                                             ; preds = %1904, %1900
  %1906 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1907 = and i32 %1906, 65536
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %1910, label %1909, !prof !58

1909:                                             ; preds = %1905
  store i32 2660, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 79), align 4, !tbaa !55
  br label %1910

1910:                                             ; preds = %1905, %1909
  %1911 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1912 = and i32 %1911, 65536
  %1913 = icmp eq i32 %1912, 0
  br i1 %1913, label %1915, label %1914, !prof !58

1914:                                             ; preds = %1910
  store i32 2661, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 79), align 4, !tbaa !55
  br label %1915

1915:                                             ; preds = %1910, %1914
  %1916 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1917 = and i32 %1916, 131072
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %1920, label %1919, !prof !58

1919:                                             ; preds = %1915
  store i32 2662, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 80), align 16, !tbaa !55
  br label %1920

1920:                                             ; preds = %1919, %1915
  %1921 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1922 = and i32 %1921, 131072
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %1925, label %1924, !prof !58

1924:                                             ; preds = %1920
  store i32 2663, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 80), align 16, !tbaa !55
  br label %1925

1925:                                             ; preds = %1924, %1920
  %1926 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1927 = and i32 %1926, 65536
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %1930, label %1929, !prof !58

1929:                                             ; preds = %1925
  store i32 2664, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 125, i32 4, i64 79), align 4, !tbaa !55
  br label %1930

1930:                                             ; preds = %1929, %1925
  %1931 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1932 = and i32 %1931, 262144
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1935, label %1934, !prof !58

1934:                                             ; preds = %1930
  store i32 2665, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 125, i32 4, i64 80), align 16, !tbaa !55
  br label %1935

1935:                                             ; preds = %1934, %1930
  %1936 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1937 = and i32 %1936, 65536
  %1938 = icmp eq i32 %1937, 0
  br i1 %1938, label %1940, label %1939, !prof !58

1939:                                             ; preds = %1935
  store i32 2666, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 121, i32 4, i64 79), align 4, !tbaa !55
  br label %1940

1940:                                             ; preds = %1939, %1935
  %1941 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1942 = and i32 %1941, 65536
  %1943 = icmp eq i32 %1942, 0
  br i1 %1943, label %1945, label %1944, !prof !58

1944:                                             ; preds = %1940
  store i32 2667, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 123, i32 4, i64 79), align 4, !tbaa !55
  br label %1945

1945:                                             ; preds = %1944, %1940
  %1946 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1947 = and i32 %1946, 65536
  %1948 = icmp eq i32 %1947, 0
  br i1 %1948, label %1950, label %1949, !prof !58

1949:                                             ; preds = %1945
  store i32 2668, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 79), align 4, !tbaa !50
  br label %1950

1950:                                             ; preds = %1945, %1949
  %1951 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1952 = and i32 %1951, 131072
  %1953 = icmp eq i32 %1952, 0
  br i1 %1953, label %1955, label %1954, !prof !58

1954:                                             ; preds = %1950
  store i32 2669, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 80), align 16, !tbaa !50
  br label %1955

1955:                                             ; preds = %1954, %1950
  %1956 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1957 = and i32 %1956, 32
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %1960, label %1959, !prof !58

1959:                                             ; preds = %1955
  store i32 2670, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 81), align 4, !tbaa !55
  br label %1960

1960:                                             ; preds = %1959, %1955
  %1961 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1962 = and i32 %1961, 32
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %1965, label %1964, !prof !58

1964:                                             ; preds = %1960
  store i32 2671, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 81), align 4, !tbaa !55
  br label %1965

1965:                                             ; preds = %1964, %1960
  %1966 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1967 = and i32 %1966, 32
  %1968 = icmp eq i32 %1967, 0
  br i1 %1968, label %1970, label %1969, !prof !58

1969:                                             ; preds = %1965
  store i32 2672, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 81), align 4, !tbaa !55
  br label %1970

1970:                                             ; preds = %1969, %1965
  %1971 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1972 = and i32 %1971, 32
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %1975, label %1974, !prof !58

1974:                                             ; preds = %1970
  store i32 2673, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 82), align 8, !tbaa !55
  br label %1975

1975:                                             ; preds = %1974, %1970
  %1976 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1977 = and i32 %1976, 32
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %1980, label %1979, !prof !58

1979:                                             ; preds = %1975
  store i32 2674, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 82), align 8, !tbaa !55
  br label %1980

1980:                                             ; preds = %1979, %1975
  %1981 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1982 = and i32 %1981, 32
  %1983 = icmp eq i32 %1982, 0
  br i1 %1983, label %1985, label %1984, !prof !58

1984:                                             ; preds = %1980
  store i32 2675, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 82), align 8, !tbaa !55
  br label %1985

1985:                                             ; preds = %1984, %1980
  %1986 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1987 = and i32 %1986, 65536
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %1990, label %1989, !prof !58

1989:                                             ; preds = %1985
  store i32 2676, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 79), align 4, !tbaa !55
  br label %1990

1990:                                             ; preds = %1985, %1989
  %1991 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1992 = and i32 %1991, 65536
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %1995, label %1994, !prof !58

1994:                                             ; preds = %1990
  store i32 2677, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 79), align 4, !tbaa !55
  br label %1995

1995:                                             ; preds = %1990, %1994
  %1996 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1997 = and i32 %1996, 65536
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2000, label %1999, !prof !58

1999:                                             ; preds = %1995
  store i32 2678, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 79), align 4, !tbaa !55
  br label %2000

2000:                                             ; preds = %1995, %1999
  %2001 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2002 = and i32 %2001, 131072
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2005, label %2004, !prof !58

2004:                                             ; preds = %2000
  store i32 2679, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 80), align 16, !tbaa !55
  br label %2005

2005:                                             ; preds = %2004, %2000
  %2006 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2007 = and i32 %2006, 131072
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2010, label %2009, !prof !58

2009:                                             ; preds = %2005
  store i32 2680, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 80), align 16, !tbaa !55
  br label %2010

2010:                                             ; preds = %2009, %2005
  %2011 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2012 = and i32 %2011, 131072
  %2013 = icmp eq i32 %2012, 0
  br i1 %2013, label %2015, label %2014, !prof !58

2014:                                             ; preds = %2010
  store i32 2681, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 80), align 16, !tbaa !55
  br label %2015

2015:                                             ; preds = %2014, %2010
  %2016 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2017 = and i32 %2016, 65536
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2020, label %2019, !prof !58

2019:                                             ; preds = %2015
  store i32 2682, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 79), align 4, !tbaa !55
  br label %2020

2020:                                             ; preds = %2015, %2019
  %2021 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2022 = and i32 %2021, 131072
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2025, label %2024, !prof !58

2024:                                             ; preds = %2020
  store i32 2683, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102, i32 4, i64 80), align 16, !tbaa !55
  br label %2025

2025:                                             ; preds = %2024, %2020
  %2026 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2027 = and i32 %2026, 131072
  %2028 = icmp eq i32 %2027, 0
  br i1 %2028, label %2030, label %2029, !prof !58

2029:                                             ; preds = %2025
  store i32 2688, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145, i32 4, i64 79), align 4, !tbaa !55
  br label %2030

2030:                                             ; preds = %2029, %2025
  %2031 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2032 = and i32 %2031, 131072
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2035, label %2034, !prof !58

2034:                                             ; preds = %2030
  store i32 2689, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146, i32 4, i64 79), align 4, !tbaa !55
  br label %2035

2035:                                             ; preds = %2034, %2030
  %2036 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2037 = and i32 %2036, 131072
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2040, label %2039, !prof !58

2039:                                             ; preds = %2035
  store i32 2690, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 149, i32 4, i64 64), align 16, !tbaa !55
  br label %2040

2040:                                             ; preds = %2039, %2035
  %2041 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2042 = and i32 %2041, 131072
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2045, label %2044, !prof !58

2044:                                             ; preds = %2040
  store i32 2691, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 150, i32 4, i64 64), align 16, !tbaa !55
  br label %2045

2045:                                             ; preds = %2044, %2040
  %2046 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2047 = and i32 %2046, 131072
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2050, label %2049, !prof !58

2049:                                             ; preds = %2045
  store i32 2692, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 151, i32 4, i64 64), align 16, !tbaa !55
  br label %2050

2050:                                             ; preds = %2049, %2045
  %2051 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2052 = and i32 %2051, 131072
  %2053 = icmp eq i32 %2052, 0
  br i1 %2053, label %2055, label %2054, !prof !58

2054:                                             ; preds = %2050
  store i32 2693, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 152, i32 4, i64 64), align 16, !tbaa !55
  br label %2055

2055:                                             ; preds = %2054, %2050
  %2056 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2057 = and i32 %2056, 131072
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2060, label %2059, !prof !58

2059:                                             ; preds = %2055
  store i32 2694, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 149, i32 4, i64 65), align 4, !tbaa !55
  br label %2060

2060:                                             ; preds = %2059, %2055
  %2061 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2062 = and i32 %2061, 131072
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2065, label %2064, !prof !58

2064:                                             ; preds = %2060
  store i32 2695, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 150, i32 4, i64 65), align 4, !tbaa !55
  br label %2065

2065:                                             ; preds = %2064, %2060
  %2066 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2067 = and i32 %2066, 131072
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2070, label %2069, !prof !58

2069:                                             ; preds = %2065
  store i32 2696, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 151, i32 4, i64 65), align 4, !tbaa !55
  br label %2070

2070:                                             ; preds = %2069, %2065
  %2071 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2072 = and i32 %2071, 131072
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2075, label %2074, !prof !58

2074:                                             ; preds = %2070
  store i32 2697, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 152, i32 4, i64 65), align 4, !tbaa !55
  br label %2075

2075:                                             ; preds = %2074, %2070
  %2076 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2077 = and i32 %2076, 131072
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2080, label %2079, !prof !58

2079:                                             ; preds = %2075
  store i32 2698, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153, i32 4, i64 80), align 16, !tbaa !55
  br label %2080

2080:                                             ; preds = %2079, %2075
  %2081 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2082 = and i32 %2081, 131072
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2085, label %2084, !prof !58

2084:                                             ; preds = %2080
  store i32 2699, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 156, i32 4, i64 80), align 16, !tbaa !55
  br label %2085

2085:                                             ; preds = %2084, %2080
  %2086 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2087 = and i32 %2086, 65536
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2090, label %2089, !prof !58

2089:                                             ; preds = %2085
  store i32 2708, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 63), align 4, !tbaa !55
  br label %2090

2090:                                             ; preds = %2089, %2085
  %2091 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2092 = and i32 %2091, 65536
  %2093 = icmp eq i32 %2092, 0
  br i1 %2093, label %2095, label %2094, !prof !58

2094:                                             ; preds = %2090
  store i32 2709, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 64), align 16, !tbaa !55
  br label %2095

2095:                                             ; preds = %2094, %2090
  %2096 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2097 = and i32 %2096, 65536
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2100, label %2099, !prof !58

2099:                                             ; preds = %2095
  store i32 2710, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 65), align 4, !tbaa !55
  br label %2100

2100:                                             ; preds = %2099, %2095
  %2101 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2102 = and i32 %2101, 65536
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %2105, label %2104, !prof !58

2104:                                             ; preds = %2100
  store i32 2711, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 66), align 8, !tbaa !55
  br label %2105

2105:                                             ; preds = %2104, %2100
  %2106 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2107 = and i32 %2106, 65536
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2110, label %2109, !prof !58

2109:                                             ; preds = %2105
  store i32 2712, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 79), align 4, !tbaa !55
  br label %2110

2110:                                             ; preds = %2109, %2105
  %2111 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2112 = and i32 %2111, 65536
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2115, label %2114, !prof !58

2114:                                             ; preds = %2110
  store i32 2713, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 80), align 16, !tbaa !55
  br label %2115

2115:                                             ; preds = %2114, %2110
  %2116 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2117 = and i32 %2116, 65536
  %2118 = icmp eq i32 %2117, 0
  br i1 %2118, label %2120, label %2119, !prof !58

2119:                                             ; preds = %2115
  store i32 2715, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 63), align 4, !tbaa !55
  br label %2120

2120:                                             ; preds = %2119, %2115
  %2121 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2122 = and i32 %2121, 65536
  %2123 = icmp eq i32 %2122, 0
  br i1 %2123, label %2125, label %2124, !prof !58

2124:                                             ; preds = %2120
  store i32 2716, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 64), align 16, !tbaa !55
  br label %2125

2125:                                             ; preds = %2124, %2120
  %2126 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2127 = and i32 %2126, 65536
  %2128 = icmp eq i32 %2127, 0
  br i1 %2128, label %2130, label %2129, !prof !58

2129:                                             ; preds = %2125
  store i32 2717, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 65), align 4, !tbaa !55
  br label %2130

2130:                                             ; preds = %2129, %2125
  %2131 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2132 = and i32 %2131, 65536
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2135, label %2134, !prof !58

2134:                                             ; preds = %2130
  store i32 2718, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 66), align 8, !tbaa !55
  br label %2135

2135:                                             ; preds = %2134, %2130
  %2136 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2137 = and i32 %2136, 65536
  %2138 = icmp eq i32 %2137, 0
  br i1 %2138, label %2140, label %2139, !prof !58

2139:                                             ; preds = %2135
  store i32 2719, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 79), align 4, !tbaa !55
  br label %2140

2140:                                             ; preds = %2139, %2135
  %2141 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2142 = and i32 %2141, 65536
  %2143 = icmp eq i32 %2142, 0
  br i1 %2143, label %2145, label %2144, !prof !58

2144:                                             ; preds = %2140
  store i32 2720, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 80), align 16, !tbaa !55
  br label %2145

2145:                                             ; preds = %2144, %2140
  %2146 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2147 = and i32 %2146, 65536
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2150, label %2149, !prof !58

2149:                                             ; preds = %2145
  store i32 2729, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 63), align 4, !tbaa !55
  br label %2150

2150:                                             ; preds = %2149, %2145
  %2151 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2152 = and i32 %2151, 65536
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2155, label %2154, !prof !58

2154:                                             ; preds = %2150
  store i32 2730, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 64), align 16, !tbaa !55
  br label %2155

2155:                                             ; preds = %2154, %2150
  %2156 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2157 = and i32 %2156, 65536
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2160, label %2159, !prof !58

2159:                                             ; preds = %2155
  store i32 2731, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 65), align 4, !tbaa !55
  br label %2160

2160:                                             ; preds = %2159, %2155
  %2161 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2162 = and i32 %2161, 65536
  %2163 = icmp eq i32 %2162, 0
  br i1 %2163, label %2165, label %2164, !prof !58

2164:                                             ; preds = %2160
  store i32 2732, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 66), align 8, !tbaa !55
  br label %2165

2165:                                             ; preds = %2164, %2160
  %2166 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2167 = and i32 %2166, 65536
  %2168 = icmp eq i32 %2167, 0
  br i1 %2168, label %2170, label %2169, !prof !58

2169:                                             ; preds = %2165
  store i32 2733, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 79), align 4, !tbaa !55
  br label %2170

2170:                                             ; preds = %2169, %2165
  %2171 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2172 = and i32 %2171, 65536
  %2173 = icmp eq i32 %2172, 0
  br i1 %2173, label %2175, label %2174, !prof !58

2174:                                             ; preds = %2170
  store i32 2734, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 80), align 16, !tbaa !55
  br label %2175

2175:                                             ; preds = %2174, %2170
  %2176 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2177 = and i32 %2176, 131072
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2180, label %2179, !prof !58

2179:                                             ; preds = %2175
  store i32 2735, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135, i32 4, i64 80), align 16, !tbaa !55
  br label %2180

2180:                                             ; preds = %2179, %2175
  %2181 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2182 = and i32 %2181, 131072
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %2185, label %2184, !prof !58

2184:                                             ; preds = %2180
  store i32 2738, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136, i32 4, i64 80), align 16, !tbaa !55
  br label %2185

2185:                                             ; preds = %2184, %2180
  %2186 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2187 = and i32 %2186, 65536
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2190, label %2189, !prof !58

2189:                                             ; preds = %2185
  store i32 2743, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 79), align 4, !tbaa !55
  br label %2190

2190:                                             ; preds = %2189, %2185
  %2191 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2192 = and i32 %2191, 131072
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2195, label %2194, !prof !58

2194:                                             ; preds = %2190
  store i32 2744, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 80), align 16, !tbaa !55
  br label %2195

2195:                                             ; preds = %2194, %2190
  %2196 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2197 = and i32 %2196, 131072
  %2198 = icmp eq i32 %2197, 0
  br i1 %2198, label %2200, label %2199, !prof !58

2199:                                             ; preds = %2195
  store i32 2745, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 66), align 8, !tbaa !55
  br label %2200

2200:                                             ; preds = %2199, %2195
  %2201 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2202 = and i32 %2201, 131072
  %2203 = icmp eq i32 %2202, 0
  br i1 %2203, label %2205, label %2204, !prof !58

2204:                                             ; preds = %2200
  store i32 2746, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 65), align 4, !tbaa !55
  br label %2205

2205:                                             ; preds = %2204, %2200
  %2206 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2207 = and i32 %2206, 131072
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2210, label %2209, !prof !58

2209:                                             ; preds = %2205
  store i32 2747, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 64), align 16, !tbaa !55
  br label %2210

2210:                                             ; preds = %2209, %2205
  %2211 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2212 = and i32 %2211, 131072
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2215, label %2214, !prof !58

2214:                                             ; preds = %2210
  store i32 2748, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 63), align 4, !tbaa !55
  br label %2215

2215:                                             ; preds = %2214, %2210
  %2216 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2217 = and i32 %2216, 32
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2220, label %2219, !prof !58

2219:                                             ; preds = %2215
  store i32 2749, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 82), align 8, !tbaa !55
  br label %2220

2220:                                             ; preds = %2219, %2215
  %2221 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2222 = and i32 %2221, 32
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2225, label %2224, !prof !58

2224:                                             ; preds = %2220
  store i32 2750, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133, i32 4, i64 81), align 4, !tbaa !55
  br label %2225

2225:                                             ; preds = %2224, %2220
  %2226 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2227 = and i32 %2226, 65536
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2230, label %2229, !prof !58

2229:                                             ; preds = %2225
  store i32 2751, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 79), align 4, !tbaa !55
  br label %2230

2230:                                             ; preds = %2229, %2225
  %2231 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2232 = and i32 %2231, 131072
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2235, label %2234, !prof !58

2234:                                             ; preds = %2230
  store i32 2752, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 80), align 16, !tbaa !55
  br label %2235

2235:                                             ; preds = %2234, %2230
  %2236 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2237 = and i32 %2236, 131072
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2240, label %2239, !prof !58

2239:                                             ; preds = %2235
  store i32 2753, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 66), align 8, !tbaa !55
  br label %2240

2240:                                             ; preds = %2239, %2235
  %2241 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2242 = and i32 %2241, 131072
  %2243 = icmp eq i32 %2242, 0
  br i1 %2243, label %2245, label %2244, !prof !58

2244:                                             ; preds = %2240
  store i32 2754, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 65), align 4, !tbaa !55
  br label %2245

2245:                                             ; preds = %2244, %2240
  %2246 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2247 = and i32 %2246, 131072
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2250, label %2249, !prof !58

2249:                                             ; preds = %2245
  store i32 2755, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 64), align 16, !tbaa !55
  br label %2250

2250:                                             ; preds = %2249, %2245
  %2251 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2252 = and i32 %2251, 131072
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2255, label %2254, !prof !58

2254:                                             ; preds = %2250
  store i32 2756, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 63), align 4, !tbaa !55
  br label %2255

2255:                                             ; preds = %2254, %2250
  %2256 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2257 = and i32 %2256, 32
  %2258 = icmp eq i32 %2257, 0
  br i1 %2258, label %2260, label %2259, !prof !58

2259:                                             ; preds = %2255
  store i32 2757, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 82), align 8, !tbaa !55
  br label %2260

2260:                                             ; preds = %2259, %2255
  %2261 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2262 = and i32 %2261, 32
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2265, label %2264, !prof !58

2264:                                             ; preds = %2260
  store i32 2758, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134, i32 4, i64 81), align 4, !tbaa !55
  br label %2265

2265:                                             ; preds = %2264, %2260
  %2266 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2267 = and i32 %2266, 131072
  %2268 = icmp eq i32 %2267, 0
  br i1 %2268, label %2270, label %2269, !prof !58

2269:                                             ; preds = %2265
  store i32 2765, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 63), align 4, !tbaa !55
  br label %2270

2270:                                             ; preds = %2269, %2265
  %2271 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2272 = and i32 %2271, 131072
  %2273 = icmp eq i32 %2272, 0
  br i1 %2273, label %2275, label %2274, !prof !58

2274:                                             ; preds = %2270
  store i32 2766, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 64), align 16, !tbaa !55
  br label %2275

2275:                                             ; preds = %2274, %2270
  %2276 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2277 = and i32 %2276, 131072
  %2278 = icmp eq i32 %2277, 0
  br i1 %2278, label %2280, label %2279, !prof !58

2279:                                             ; preds = %2275
  store i32 2767, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 65), align 4, !tbaa !55
  br label %2280

2280:                                             ; preds = %2279, %2275
  %2281 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2282 = and i32 %2281, 131072
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2285, label %2284, !prof !58

2284:                                             ; preds = %2280
  store i32 2768, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 66), align 8, !tbaa !55
  br label %2285

2285:                                             ; preds = %2284, %2280
  %2286 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2287 = and i32 %2286, 131072
  %2288 = icmp eq i32 %2287, 0
  br i1 %2288, label %2290, label %2289, !prof !58

2289:                                             ; preds = %2285
  store i32 2769, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 63), align 4, !tbaa !55
  br label %2290

2290:                                             ; preds = %2289, %2285
  %2291 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2292 = and i32 %2291, 131072
  %2293 = icmp eq i32 %2292, 0
  br i1 %2293, label %2295, label %2294, !prof !58

2294:                                             ; preds = %2290
  store i32 2770, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 63), align 4, !tbaa !55
  br label %2295

2295:                                             ; preds = %2294, %2290
  %2296 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2297 = and i32 %2296, 131072
  %2298 = icmp eq i32 %2297, 0
  br i1 %2298, label %2300, label %2299, !prof !58

2299:                                             ; preds = %2295
  store i32 2771, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 64), align 16, !tbaa !55
  br label %2300

2300:                                             ; preds = %2299, %2295
  %2301 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2302 = and i32 %2301, 131072
  %2303 = icmp eq i32 %2302, 0
  br i1 %2303, label %2305, label %2304, !prof !58

2304:                                             ; preds = %2300
  store i32 2772, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 64), align 16, !tbaa !55
  br label %2305

2305:                                             ; preds = %2304, %2300
  %2306 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2307 = and i32 %2306, 131072
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2310, label %2309, !prof !58

2309:                                             ; preds = %2305
  store i32 2773, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 65), align 4, !tbaa !55
  br label %2310

2310:                                             ; preds = %2309, %2305
  %2311 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2312 = and i32 %2311, 131072
  %2313 = icmp eq i32 %2312, 0
  br i1 %2313, label %2315, label %2314, !prof !58

2314:                                             ; preds = %2310
  store i32 2774, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 65), align 4, !tbaa !55
  br label %2315

2315:                                             ; preds = %2314, %2310
  %2316 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2317 = and i32 %2316, 131072
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %2320, label %2319, !prof !58

2319:                                             ; preds = %2315
  store i32 2775, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 66), align 8, !tbaa !55
  br label %2320

2320:                                             ; preds = %2319, %2315
  %2321 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2322 = and i32 %2321, 131072
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2325, label %2324, !prof !58

2324:                                             ; preds = %2320
  store i32 2776, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 66), align 8, !tbaa !55
  br label %2325

2325:                                             ; preds = %2324, %2320
  %2326 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2327 = and i32 %2326, 131072
  %2328 = icmp eq i32 %2327, 0
  br i1 %2328, label %2330, label %2329, !prof !58

2329:                                             ; preds = %2325
  store i32 2786, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 64), align 16, !tbaa !55
  br label %2330

2330:                                             ; preds = %2329, %2325
  %2331 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2332 = and i32 %2331, 131072
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2335, label %2334, !prof !58

2334:                                             ; preds = %2330
  store i32 2787, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18, i32 4, i64 64), align 16, !tbaa !55
  br label %2335

2335:                                             ; preds = %2334, %2330
  %2336 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2337 = and i32 %2336, 131072
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2340, label %2339, !prof !58

2339:                                             ; preds = %2335
  store i32 2788, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19, i32 4, i64 64), align 16, !tbaa !55
  br label %2340

2340:                                             ; preds = %2339, %2335
  %2341 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2342 = and i32 %2341, 131072
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2345, label %2344, !prof !58

2344:                                             ; preds = %2340
  store i32 2792, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 65), align 4, !tbaa !55
  br label %2345

2345:                                             ; preds = %2344, %2340
  %2346 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2347 = and i32 %2346, 131072
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2350, label %2349, !prof !58

2349:                                             ; preds = %2345
  store i32 2795, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 143, i32 4, i64 64), align 16, !tbaa !55
  br label %2350

2350:                                             ; preds = %2349, %2345
  %2351 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2352 = and i32 %2351, 131072
  %2353 = icmp eq i32 %2352, 0
  br i1 %2353, label %2355, label %2354, !prof !58

2354:                                             ; preds = %2350
  store i32 2796, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 144, i32 4, i64 64), align 16, !tbaa !55
  br label %2355

2355:                                             ; preds = %2354, %2350
  %2356 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2357 = and i32 %2356, 131072
  %2358 = icmp eq i32 %2357, 0
  br i1 %2358, label %2360, label %2359, !prof !58

2359:                                             ; preds = %2355
  store i32 2797, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 141, i32 4, i64 64), align 16, !tbaa !55
  br label %2360

2360:                                             ; preds = %2359, %2355
  %2361 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2362 = and i32 %2361, 131072
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2365, label %2364, !prof !58

2364:                                             ; preds = %2360
  store i32 2798, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 142, i32 4, i64 64), align 16, !tbaa !55
  br label %2365

2365:                                             ; preds = %2364, %2360
  %2366 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2367 = and i32 %2366, 8388608
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2370, label %2369, !prof !58

2369:                                             ; preds = %2365
  store i32 2799, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 143, i32 4, i64 65), align 4, !tbaa !55
  br label %2370

2370:                                             ; preds = %2369, %2365
  %2371 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2372 = and i32 %2371, 8388608
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2375, label %2374, !prof !58

2374:                                             ; preds = %2370
  store i32 2800, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 144, i32 4, i64 65), align 4, !tbaa !55
  br label %2375

2375:                                             ; preds = %2374, %2370
  %2376 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2377 = and i32 %2376, 131072
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2380, label %2379, !prof !58

2379:                                             ; preds = %2375
  store i32 2801, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 141, i32 4, i64 65), align 4, !tbaa !55
  br label %2380

2380:                                             ; preds = %2379, %2375
  %2381 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2382 = and i32 %2381, 131072
  %2383 = icmp eq i32 %2382, 0
  br i1 %2383, label %2385, label %2384, !prof !58

2384:                                             ; preds = %2380
  store i32 2802, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 142, i32 4, i64 65), align 4, !tbaa !55
  br label %2385

2385:                                             ; preds = %2384, %2380
  %2386 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2387 = and i32 %2386, 131072
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2390, label %2389, !prof !58

2389:                                             ; preds = %2385
  store i32 2803, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 129, i32 4, i64 64), align 16, !tbaa !55
  br label %2390

2390:                                             ; preds = %2389, %2385
  %2391 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2392 = and i32 %2391, 131072
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2395, label %2394, !prof !58

2394:                                             ; preds = %2390
  store i32 2804, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 130, i32 4, i64 65), align 4, !tbaa !55
  br label %2395

2395:                                             ; preds = %2394, %2390
  %2396 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2397 = and i32 %2396, 131072
  %2398 = icmp eq i32 %2397, 0
  br i1 %2398, label %2400, label %2399, !prof !58

2399:                                             ; preds = %2395
  store i32 2805, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138, i32 4, i64 63), align 4, !tbaa !55
  br label %2400

2400:                                             ; preds = %2399, %2395
  %2401 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2402 = and i32 %2401, 131072
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2405, label %2404, !prof !58

2404:                                             ; preds = %2400
  store i32 2806, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138, i32 4, i64 64), align 16, !tbaa !55
  br label %2405

2405:                                             ; preds = %2404, %2400
  %2406 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2407 = and i32 %2406, 131072
  %2408 = icmp eq i32 %2407, 0
  br i1 %2408, label %2410, label %2409, !prof !58

2409:                                             ; preds = %2405
  store i32 2807, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138, i32 4, i64 65), align 4, !tbaa !55
  br label %2410

2410:                                             ; preds = %2409, %2405
  %2411 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2412 = and i32 %2411, 131072
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %2415, label %2414, !prof !58

2414:                                             ; preds = %2410
  store i32 2808, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138, i32 4, i64 66), align 8, !tbaa !55
  br label %2415

2415:                                             ; preds = %2414, %2410
  %2416 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2417 = and i32 %2416, 131072
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2420, label %2419, !prof !58

2419:                                             ; preds = %2415
  store i32 2809, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 63), align 4, !tbaa !55
  br label %2420

2420:                                             ; preds = %2419, %2415
  %2421 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2422 = and i32 %2421, 131072
  %2423 = icmp eq i32 %2422, 0
  br i1 %2423, label %2425, label %2424, !prof !58

2424:                                             ; preds = %2420
  store i32 2810, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 64), align 16, !tbaa !55
  br label %2425

2425:                                             ; preds = %2424, %2420
  %2426 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2427 = and i32 %2426, 131072
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2430, label %2429, !prof !58

2429:                                             ; preds = %2425
  store i32 2811, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 65), align 4, !tbaa !55
  br label %2430

2430:                                             ; preds = %2429, %2425
  %2431 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2432 = and i32 %2431, 131072
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2435, label %2434, !prof !58

2434:                                             ; preds = %2430
  store i32 2812, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139, i32 4, i64 66), align 8, !tbaa !55
  br label %2435

2435:                                             ; preds = %2434, %2430
  %2436 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2437 = and i32 %2436, 131072
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2440, label %2439, !prof !58

2439:                                             ; preds = %2435
  store i32 2813, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 4, i64 63), align 4, !tbaa !55
  br label %2440

2440:                                             ; preds = %2439, %2435
  %2441 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2442 = and i32 %2441, 131072
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2445, label %2444, !prof !58

2444:                                             ; preds = %2440
  store i32 2814, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 4, i64 63), align 4, !tbaa !55
  br label %2445

2445:                                             ; preds = %2444, %2440
  %2446 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2447 = and i32 %2446, 131072
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2450, label %2449, !prof !58

2449:                                             ; preds = %2445
  store i32 2815, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 64), align 16, !tbaa !55
  br label %2450

2450:                                             ; preds = %2449, %2445
  %2451 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2452 = and i32 %2451, 131072
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2455, label %2454, !prof !58

2454:                                             ; preds = %2450
  store i32 2816, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 64), align 16, !tbaa !55
  br label %2455

2455:                                             ; preds = %2454, %2450
  %2456 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2457 = and i32 %2456, 131072
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2460, label %2459, !prof !58

2459:                                             ; preds = %2455
  store i32 2817, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 4, i64 64), align 16, !tbaa !55
  br label %2460

2460:                                             ; preds = %2459, %2455
  %2461 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2462 = and i32 %2461, 131072
  %2463 = icmp eq i32 %2462, 0
  br i1 %2463, label %2465, label %2464, !prof !58

2464:                                             ; preds = %2460
  store i32 2818, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 63), align 4, !tbaa !55
  br label %2465

2465:                                             ; preds = %2464, %2460
  %2466 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2467 = and i32 %2466, 131072
  %2468 = icmp eq i32 %2467, 0
  br i1 %2468, label %2470, label %2469, !prof !58

2469:                                             ; preds = %2465
  store i32 2819, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 65), align 4, !tbaa !55
  br label %2470

2470:                                             ; preds = %2469, %2465
  %2471 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2472 = and i32 %2471, 1048576
  %2473 = icmp eq i32 %2472, 0
  br i1 %2473, label %2475, label %2474, !prof !58

2474:                                             ; preds = %2470
  store i32 2820, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 66), align 8, !tbaa !55
  br label %2475

2475:                                             ; preds = %2474, %2470
  %2476 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2477 = and i32 %2476, 131072
  %2478 = icmp eq i32 %2477, 0
  br i1 %2478, label %2480, label %2479, !prof !58

2479:                                             ; preds = %2475
  store i32 2821, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 4, i64 65), align 4, !tbaa !55
  br label %2480

2480:                                             ; preds = %2479, %2475
  %2481 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2482 = and i32 %2481, 1048576
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2485, label %2484, !prof !58

2484:                                             ; preds = %2480
  store i32 2822, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 4, i64 66), align 8, !tbaa !55
  br label %2485

2485:                                             ; preds = %2484, %2480
  %2486 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2487 = and i32 %2486, 131072
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2490, label %2489, !prof !58

2489:                                             ; preds = %2485
  store i32 2823, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 63), align 4, !tbaa !55
  br label %2490

2490:                                             ; preds = %2489, %2485
  %2491 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2492 = and i32 %2491, 131072
  %2493 = icmp eq i32 %2492, 0
  br i1 %2493, label %2495, label %2494, !prof !58

2494:                                             ; preds = %2490
  store i32 2824, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 65), align 4, !tbaa !55
  br label %2495

2495:                                             ; preds = %2494, %2490
  %2496 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2497 = and i32 %2496, 1048576
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2500, label %2499, !prof !58

2499:                                             ; preds = %2495
  store i32 2825, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 4, i64 66), align 8, !tbaa !55
  br label %2500

2500:                                             ; preds = %2499, %2495
  %2501 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2502 = and i32 %2501, 131072
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2505, label %2504, !prof !58

2504:                                             ; preds = %2500
  store i32 2826, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 4, i64 64), align 16, !tbaa !55
  br label %2505

2505:                                             ; preds = %2504, %2500
  %2506 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2507 = and i32 %2506, 131072
  %2508 = icmp eq i32 %2507, 0
  br i1 %2508, label %2510, label %2509, !prof !58

2509:                                             ; preds = %2505
  store i32 2827, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 4, i64 65), align 4, !tbaa !55
  br label %2510

2510:                                             ; preds = %2509, %2505
  %2511 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2512 = and i32 %2511, 1048576
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2515, label %2514, !prof !58

2514:                                             ; preds = %2510
  store i32 2828, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 4, i64 66), align 8, !tbaa !55
  br label %2515

2515:                                             ; preds = %2514, %2510
  %2516 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2517 = and i32 %2516, 131072
  %2518 = icmp eq i32 %2517, 0
  br i1 %2518, label %2520, label %2519, !prof !58

2519:                                             ; preds = %2515
  store i32 2833, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 63), align 4, !tbaa !50
  br label %2520

2520:                                             ; preds = %2519, %2515
  %2521 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2522 = and i32 %2521, 131072
  %2523 = icmp eq i32 %2522, 0
  br i1 %2523, label %2525, label %2524, !prof !58

2524:                                             ; preds = %2520
  store i32 2834, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 64), align 16, !tbaa !50
  br label %2525

2525:                                             ; preds = %2524, %2520
  %2526 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2527 = and i32 %2526, 131072
  %2528 = icmp eq i32 %2527, 0
  br i1 %2528, label %2530, label %2529, !prof !58

2529:                                             ; preds = %2525
  store i32 2835, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 65), align 4, !tbaa !50
  br label %2530

2530:                                             ; preds = %2529, %2525
  %2531 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2532 = and i32 %2531, 1179648
  %2533 = icmp eq i32 %2532, 1179648
  br i1 %2533, label %2534, label %2535, !prof !57

2534:                                             ; preds = %2530
  store i32 2836, ptr getelementptr inbounds ([87 x i32], ptr @vcond_gen_code, i64 0, i64 66), align 8, !tbaa !50
  br label %2535

2535:                                             ; preds = %2534, %2530
  %2536 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2537 = and i32 %2536, 131072
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %2540, label %2539, !prof !58

2539:                                             ; preds = %2535
  store i32 2837, ptr getelementptr inbounds ([87 x i32], ptr @vcondu_gen_code, i64 0, i64 63), align 4, !tbaa !50
  br label %2540

2540:                                             ; preds = %2539, %2535
  %2541 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2542 = and i32 %2541, 131072
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2545, label %2544, !prof !58

2544:                                             ; preds = %2540
  store i32 2838, ptr getelementptr inbounds ([87 x i32], ptr @vcondu_gen_code, i64 0, i64 64), align 16, !tbaa !50
  br label %2545

2545:                                             ; preds = %2544, %2540
  %2546 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2547 = and i32 %2546, 131072
  %2548 = icmp eq i32 %2547, 0
  br i1 %2548, label %2550, label %2549, !prof !58

2549:                                             ; preds = %2545
  store i32 2839, ptr getelementptr inbounds ([87 x i32], ptr @vcondu_gen_code, i64 0, i64 65), align 4, !tbaa !50
  br label %2550

2550:                                             ; preds = %2549, %2545
  %2551 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2552 = and i32 %2551, 1179648
  %2553 = icmp eq i32 %2552, 1179648
  br i1 %2553, label %2554, label %2555, !prof !57

2554:                                             ; preds = %2550
  store i32 2840, ptr getelementptr inbounds ([87 x i32], ptr @vcondu_gen_code, i64 0, i64 66), align 8, !tbaa !50
  br label %2555

2555:                                             ; preds = %2554, %2550
  %2556 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2557 = and i32 %2556, 131072
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2560, label %2559, !prof !58

2559:                                             ; preds = %2555
  store i32 2841, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 63), align 4, !tbaa !55
  br label %2560

2560:                                             ; preds = %2559, %2555
  %2561 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2562 = and i32 %2561, 131072
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2565, label %2564, !prof !58

2564:                                             ; preds = %2560
  store i32 2842, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 64), align 16, !tbaa !55
  br label %2565

2565:                                             ; preds = %2564, %2560
  %2566 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2567 = and i32 %2566, 131072
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2570, label %2569, !prof !58

2569:                                             ; preds = %2565
  store i32 2843, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 65), align 4, !tbaa !55
  br label %2570

2570:                                             ; preds = %2569, %2565
  %2571 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2572 = and i32 %2571, 131072
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2575, label %2574, !prof !58

2574:                                             ; preds = %2570
  store i32 2844, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 66), align 8, !tbaa !55
  br label %2575

2575:                                             ; preds = %2574, %2570
  %2576 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2577 = and i32 %2576, 65536
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %2580, label %2579, !prof !58

2579:                                             ; preds = %2575
  store i32 2845, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 63), align 4, !tbaa !55
  br label %2580

2580:                                             ; preds = %2579, %2575
  %2581 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2582 = and i32 %2581, 65536
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2585, label %2584, !prof !58

2584:                                             ; preds = %2580
  store i32 2846, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 63), align 4, !tbaa !55
  br label %2585

2585:                                             ; preds = %2584, %2580
  %2586 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2587 = and i32 %2586, 65536
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2590, label %2589, !prof !58

2589:                                             ; preds = %2585
  store i32 2847, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 63), align 4, !tbaa !55
  br label %2590

2590:                                             ; preds = %2589, %2585
  %2591 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2592 = and i32 %2591, 65536
  %2593 = icmp eq i32 %2592, 0
  br i1 %2593, label %2595, label %2594, !prof !58

2594:                                             ; preds = %2590
  store i32 2848, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 64), align 16, !tbaa !55
  br label %2595

2595:                                             ; preds = %2594, %2590
  %2596 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2597 = and i32 %2596, 65536
  %2598 = icmp eq i32 %2597, 0
  br i1 %2598, label %2600, label %2599, !prof !58

2599:                                             ; preds = %2595
  store i32 2849, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 64), align 16, !tbaa !55
  br label %2600

2600:                                             ; preds = %2599, %2595
  %2601 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2602 = and i32 %2601, 65536
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %2605, label %2604, !prof !58

2604:                                             ; preds = %2600
  store i32 2850, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 64), align 16, !tbaa !55
  br label %2605

2605:                                             ; preds = %2604, %2600
  %2606 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2607 = and i32 %2606, 65536
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2610, label %2609, !prof !58

2609:                                             ; preds = %2605
  store i32 2851, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 65), align 4, !tbaa !55
  br label %2610

2610:                                             ; preds = %2609, %2605
  %2611 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2612 = and i32 %2611, 65536
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2615, label %2614, !prof !58

2614:                                             ; preds = %2610
  store i32 2852, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 65), align 4, !tbaa !55
  br label %2615

2615:                                             ; preds = %2614, %2610
  %2616 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2617 = and i32 %2616, 65536
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2620, label %2619, !prof !58

2619:                                             ; preds = %2615
  store i32 2853, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 65), align 4, !tbaa !55
  br label %2620

2620:                                             ; preds = %2619, %2615
  %2621 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2622 = and i32 %2621, 65536
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %2625, label %2624, !prof !58

2624:                                             ; preds = %2620
  store i32 2854, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 66), align 8, !tbaa !55
  br label %2625

2625:                                             ; preds = %2624, %2620
  %2626 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2627 = and i32 %2626, 65536
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2630, label %2629, !prof !58

2629:                                             ; preds = %2625
  store i32 2855, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 66), align 8, !tbaa !55
  br label %2630

2630:                                             ; preds = %2629, %2625
  %2631 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2632 = and i32 %2631, 65536
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2635, label %2634, !prof !58

2634:                                             ; preds = %2630
  store i32 2856, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 66), align 8, !tbaa !55
  br label %2635

2635:                                             ; preds = %2634, %2630
  %2636 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2637 = and i32 %2636, 131072
  %2638 = icmp eq i32 %2637, 0
  br i1 %2638, label %2640, label %2639, !prof !58

2639:                                             ; preds = %2635
  store i32 2857, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 4, i64 41), align 4, !tbaa !55
  br label %2640

2640:                                             ; preds = %2639, %2635
  %2641 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2642 = and i32 %2641, 131072
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2645, label %2644, !prof !58

2644:                                             ; preds = %2640
  store i32 2858, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 4, i64 41), align 4, !tbaa !55
  br label %2645

2645:                                             ; preds = %2644, %2640
  %2646 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2647 = and i32 %2646, 131072
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2650, label %2649, !prof !58

2649:                                             ; preds = %2645
  store i32 2859, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 4, i64 41), align 4, !tbaa !55
  br label %2650

2650:                                             ; preds = %2649, %2645
  %2651 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2652 = and i32 %2651, 131072
  %2653 = icmp eq i32 %2652, 0
  br i1 %2653, label %2655, label %2654, !prof !58

2654:                                             ; preds = %2650
  store i32 2860, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153, i32 4, i64 64), align 16, !tbaa !55
  br label %2655

2655:                                             ; preds = %2654, %2650
  %2656 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2657 = and i32 %2656, 131072
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2660, label %2659, !prof !58

2659:                                             ; preds = %2655
  store i32 2861, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153, i32 4, i64 65), align 4, !tbaa !55
  br label %2660

2660:                                             ; preds = %2659, %2655
  %2661 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2662 = and i32 %2661, 131072
  %2663 = icmp eq i32 %2662, 0
  br i1 %2663, label %2665, label %2664, !prof !58

2664:                                             ; preds = %2660
  store i32 2862, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153, i32 4, i64 66), align 8, !tbaa !55
  br label %2665

2665:                                             ; preds = %2664, %2660
  %2666 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2667 = and i32 %2666, 131072
  %2668 = icmp eq i32 %2667, 0
  br i1 %2668, label %2670, label %2669, !prof !58

2669:                                             ; preds = %2665
  store i32 2871, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147, i32 4, i64 63), align 4, !tbaa !55
  br label %2670

2670:                                             ; preds = %2669, %2665
  %2671 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2672 = and i32 %2671, 131072
  %2673 = icmp eq i32 %2672, 0
  br i1 %2673, label %2675, label %2674, !prof !58

2674:                                             ; preds = %2670
  store i32 2872, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145, i32 4, i64 63), align 4, !tbaa !55
  br label %2675

2675:                                             ; preds = %2674, %2670
  %2676 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2677 = and i32 %2676, 131072
  %2678 = icmp eq i32 %2677, 0
  br i1 %2678, label %2680, label %2679, !prof !58

2679:                                             ; preds = %2675
  store i32 2873, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148, i32 4, i64 63), align 4, !tbaa !55
  br label %2680

2680:                                             ; preds = %2679, %2675
  %2681 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2682 = and i32 %2681, 131072
  %2683 = icmp eq i32 %2682, 0
  br i1 %2683, label %2685, label %2684, !prof !58

2684:                                             ; preds = %2680
  store i32 2874, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146, i32 4, i64 63), align 4, !tbaa !55
  br label %2685

2685:                                             ; preds = %2684, %2680
  %2686 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2687 = and i32 %2686, 131072
  %2688 = icmp eq i32 %2687, 0
  br i1 %2688, label %2690, label %2689, !prof !58

2689:                                             ; preds = %2685
  store i32 2875, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147, i32 4, i64 64), align 16, !tbaa !55
  br label %2690

2690:                                             ; preds = %2689, %2685
  %2691 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2692 = and i32 %2691, 131072
  %2693 = icmp eq i32 %2692, 0
  br i1 %2693, label %2695, label %2694, !prof !58

2694:                                             ; preds = %2690
  store i32 2876, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145, i32 4, i64 64), align 16, !tbaa !55
  br label %2695

2695:                                             ; preds = %2694, %2690
  %2696 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2697 = and i32 %2696, 131072
  %2698 = icmp eq i32 %2697, 0
  br i1 %2698, label %2700, label %2699, !prof !58

2699:                                             ; preds = %2695
  store i32 2877, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148, i32 4, i64 64), align 16, !tbaa !55
  br label %2700

2700:                                             ; preds = %2699, %2695
  %2701 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2702 = and i32 %2701, 131072
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2705, label %2704, !prof !58

2704:                                             ; preds = %2700
  store i32 2878, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146, i32 4, i64 64), align 16, !tbaa !55
  br label %2705

2705:                                             ; preds = %2704, %2700
  %2706 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2707 = and i32 %2706, 131072
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %2710, label %2709, !prof !58

2709:                                             ; preds = %2705
  store i32 2879, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147, i32 4, i64 65), align 4, !tbaa !55
  br label %2710

2710:                                             ; preds = %2709, %2705
  %2711 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2712 = and i32 %2711, 131072
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2715, label %2714, !prof !58

2714:                                             ; preds = %2710
  store i32 2880, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145, i32 4, i64 65), align 4, !tbaa !55
  br label %2715

2715:                                             ; preds = %2714, %2710
  %2716 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2717 = and i32 %2716, 131072
  %2718 = icmp eq i32 %2717, 0
  br i1 %2718, label %2720, label %2719, !prof !58

2719:                                             ; preds = %2715
  store i32 2881, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148, i32 4, i64 65), align 4, !tbaa !55
  br label %2720

2720:                                             ; preds = %2719, %2715
  %2721 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2722 = and i32 %2721, 131072
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2725, label %2724, !prof !58

2724:                                             ; preds = %2720
  store i32 2882, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146, i32 4, i64 65), align 4, !tbaa !55
  br label %2725

2725:                                             ; preds = %2724, %2720
  %2726 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2727 = and i32 %2726, 8388608
  %2728 = icmp eq i32 %2727, 0
  br i1 %2728, label %2730, label %2729, !prof !58

2729:                                             ; preds = %2725
  store i32 2895, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 63), align 4, !tbaa !55
  br label %2730

2730:                                             ; preds = %2729, %2725
  %2731 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2732 = and i32 %2731, 8388608
  %2733 = icmp eq i32 %2732, 0
  br i1 %2733, label %2735, label %2734, !prof !58

2734:                                             ; preds = %2730
  store i32 2896, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 64), align 16, !tbaa !55
  br label %2735

2735:                                             ; preds = %2734, %2730
  %2736 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2737 = and i32 %2736, 8388608
  %2738 = icmp eq i32 %2737, 0
  br i1 %2738, label %2740, label %2739, !prof !58

2739:                                             ; preds = %2735
  store i32 2897, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 65), align 4, !tbaa !55
  br label %2740

2740:                                             ; preds = %2739, %2735
  %2741 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2742 = and i32 %2741, 8388608
  %2743 = icmp eq i32 %2742, 0
  br i1 %2743, label %2745, label %2744, !prof !58

2744:                                             ; preds = %2740
  store i32 2898, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 66), align 8, !tbaa !55
  br label %2745

2745:                                             ; preds = %2744, %2740
  %2746 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2747 = and i32 %2746, 8388608
  %2748 = icmp eq i32 %2747, 0
  br i1 %2748, label %2750, label %2749, !prof !58

2749:                                             ; preds = %2745
  store i32 2899, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 63), align 4, !tbaa !55
  br label %2750

2750:                                             ; preds = %2749, %2745
  %2751 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2752 = and i32 %2751, 8388608
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %2755, label %2754, !prof !58

2754:                                             ; preds = %2750
  store i32 2900, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 64), align 16, !tbaa !55
  br label %2755

2755:                                             ; preds = %2754, %2750
  %2756 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2757 = and i32 %2756, 8388608
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2760, label %2759, !prof !58

2759:                                             ; preds = %2755
  store i32 2901, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 65), align 4, !tbaa !55
  br label %2760

2760:                                             ; preds = %2759, %2755
  %2761 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2762 = and i32 %2761, 8388608
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2765, label %2764, !prof !58

2764:                                             ; preds = %2760
  store i32 2902, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 66), align 8, !tbaa !55
  br label %2765

2765:                                             ; preds = %2764, %2760
  %2766 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2767 = and i32 %2766, 8388608
  %2768 = icmp eq i32 %2767, 0
  br i1 %2768, label %2770, label %2769, !prof !58

2769:                                             ; preds = %2765
  store i32 2903, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53, i32 4, i64 63), align 4, !tbaa !55
  br label %2770

2770:                                             ; preds = %2769, %2765
  %2771 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2772 = and i32 %2771, 8388608
  %2773 = icmp eq i32 %2772, 0
  br i1 %2773, label %2775, label %2774, !prof !58

2774:                                             ; preds = %2770
  store i32 2904, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53, i32 4, i64 64), align 16, !tbaa !55
  br label %2775

2775:                                             ; preds = %2774, %2770
  %2776 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2777 = and i32 %2776, 8388608
  %2778 = icmp eq i32 %2777, 0
  br i1 %2778, label %2780, label %2779, !prof !58

2779:                                             ; preds = %2775
  store i32 2905, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53, i32 4, i64 65), align 4, !tbaa !55
  br label %2780

2780:                                             ; preds = %2779, %2775
  %2781 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2782 = and i32 %2781, 8388608
  %2783 = icmp eq i32 %2782, 0
  br i1 %2783, label %2785, label %2784, !prof !58

2784:                                             ; preds = %2780
  store i32 2906, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53, i32 4, i64 66), align 8, !tbaa !55
  br label %2785

2785:                                             ; preds = %2784, %2780
  %2786 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2787 = and i32 %2786, 8388608
  %2788 = icmp eq i32 %2787, 0
  br i1 %2788, label %2790, label %2789, !prof !58

2789:                                             ; preds = %2785
  store i32 2907, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52, i32 4, i64 63), align 4, !tbaa !55
  br label %2790

2790:                                             ; preds = %2789, %2785
  %2791 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2792 = and i32 %2791, 8388608
  %2793 = icmp eq i32 %2792, 0
  br i1 %2793, label %2795, label %2794, !prof !58

2794:                                             ; preds = %2790
  store i32 2908, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52, i32 4, i64 64), align 16, !tbaa !55
  br label %2795

2795:                                             ; preds = %2794, %2790
  %2796 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2797 = and i32 %2796, 8388608
  %2798 = icmp eq i32 %2797, 0
  br i1 %2798, label %2800, label %2799, !prof !58

2799:                                             ; preds = %2795
  store i32 2909, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52, i32 4, i64 65), align 4, !tbaa !55
  br label %2800

2800:                                             ; preds = %2799, %2795
  %2801 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2802 = and i32 %2801, 8388608
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2805, label %2804, !prof !58

2804:                                             ; preds = %2800
  store i32 2910, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52, i32 4, i64 66), align 8, !tbaa !55
  br label %2805

2805:                                             ; preds = %2804, %2800
  %2806 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2807 = and i32 %2806, 8388608
  %2808 = icmp eq i32 %2807, 0
  br i1 %2808, label %2810, label %2809, !prof !58

2809:                                             ; preds = %2805
  store i32 2911, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50, i32 4, i64 63), align 4, !tbaa !55
  br label %2810

2810:                                             ; preds = %2809, %2805
  %2811 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2812 = and i32 %2811, 8388608
  %2813 = icmp eq i32 %2812, 0
  br i1 %2813, label %2815, label %2814, !prof !58

2814:                                             ; preds = %2810
  store i32 2912, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50, i32 4, i64 64), align 16, !tbaa !55
  br label %2815

2815:                                             ; preds = %2814, %2810
  %2816 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2817 = and i32 %2816, 8388608
  %2818 = icmp eq i32 %2817, 0
  br i1 %2818, label %2820, label %2819, !prof !58

2819:                                             ; preds = %2815
  store i32 2913, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50, i32 4, i64 65), align 4, !tbaa !55
  br label %2820

2820:                                             ; preds = %2819, %2815
  %2821 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2822 = and i32 %2821, 8388608
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %2825, label %2824, !prof !58

2824:                                             ; preds = %2820
  store i32 2914, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51, i32 4, i64 63), align 4, !tbaa !55
  br label %2825

2825:                                             ; preds = %2824, %2820
  %2826 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2827 = and i32 %2826, 8388608
  %2828 = icmp eq i32 %2827, 0
  br i1 %2828, label %2830, label %2829, !prof !58

2829:                                             ; preds = %2825
  store i32 2915, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51, i32 4, i64 64), align 16, !tbaa !55
  br label %2830

2830:                                             ; preds = %2829, %2825
  %2831 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2832 = and i32 %2831, 8388608
  %2833 = icmp eq i32 %2832, 0
  br i1 %2833, label %2835, label %2834, !prof !58

2834:                                             ; preds = %2830
  store i32 2916, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51, i32 4, i64 65), align 4, !tbaa !55
  br label %2835

2835:                                             ; preds = %2834, %2830
  %2836 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2837 = and i32 %2836, 8388608
  %2838 = icmp eq i32 %2837, 0
  br i1 %2838, label %2840, label %2839, !prof !58

2839:                                             ; preds = %2835
  store i32 2917, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49, i32 4, i64 63), align 4, !tbaa !55
  br label %2840

2840:                                             ; preds = %2839, %2835
  %2841 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2842 = and i32 %2841, 8388608
  %2843 = icmp eq i32 %2842, 0
  br i1 %2843, label %2845, label %2844, !prof !58

2844:                                             ; preds = %2840
  store i32 2918, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49, i32 4, i64 64), align 16, !tbaa !55
  br label %2845

2845:                                             ; preds = %2844, %2840
  %2846 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2847 = and i32 %2846, 8388608
  %2848 = icmp eq i32 %2847, 0
  br i1 %2848, label %2850, label %2849, !prof !58

2849:                                             ; preds = %2845
  store i32 2919, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49, i32 4, i64 65), align 4, !tbaa !55
  br label %2850

2850:                                             ; preds = %2849, %2845
  %2851 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2852 = and i32 %2851, 8388608
  %2853 = icmp eq i32 %2852, 0
  br i1 %2853, label %2855, label %2854, !prof !58

2854:                                             ; preds = %2850
  store i32 2920, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 63), align 4, !tbaa !55
  br label %2855

2855:                                             ; preds = %2854, %2850
  %2856 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2857 = and i32 %2856, 8388608
  %2858 = icmp eq i32 %2857, 0
  br i1 %2858, label %2860, label %2859, !prof !58

2859:                                             ; preds = %2855
  store i32 2922, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 63), align 4, !tbaa !55
  br label %2860

2860:                                             ; preds = %2859, %2855
  %2861 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2862 = and i32 %2861, 8388608
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2865, label %2864, !prof !58

2864:                                             ; preds = %2860
  store i32 2923, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 4, i64 66), align 8, !tbaa !55
  br label %2865

2865:                                             ; preds = %2864, %2860
  %2866 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2867 = and i32 %2866, 32
  %2868 = icmp eq i32 %2867, 0
  br i1 %2868, label %2870, label %2869, !prof !58

2869:                                             ; preds = %2865
  store i32 2945, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 68), align 16, !tbaa !55
  br label %2870

2870:                                             ; preds = %2869, %2865
  %2871 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2872 = and i32 %2871, 32
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2875, label %2874, !prof !58

2874:                                             ; preds = %2870
  store i32 2946, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 69), align 4, !tbaa !55
  br label %2875

2875:                                             ; preds = %2874, %2870
  %2876 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2877 = and i32 %2876, 32
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %2880, label %2879, !prof !58

2879:                                             ; preds = %2875
  store i32 2947, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 70), align 8, !tbaa !55
  br label %2880

2880:                                             ; preds = %2879, %2875
  %2881 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2882 = and i32 %2881, 32
  %2883 = icmp eq i32 %2882, 0
  br i1 %2883, label %2885, label %2884, !prof !58

2884:                                             ; preds = %2880
  store i32 2948, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 71), align 4, !tbaa !55
  br label %2885

2885:                                             ; preds = %2884, %2880
  %2886 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2887 = and i32 %2886, 32
  %2888 = icmp eq i32 %2887, 0
  br i1 %2888, label %2890, label %2889, !prof !58

2889:                                             ; preds = %2885
  store i32 2949, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 81), align 4, !tbaa !55
  br label %2890

2890:                                             ; preds = %2889, %2885
  %2891 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %2892 = and i32 %2891, 32
  %2893 = icmp eq i32 %2892, 0
  br i1 %2893, label %2895, label %2894, !prof !58

2894:                                             ; preds = %2890
  store i32 2950, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 82), align 8, !tbaa !55
  br label %2895

2895:                                             ; preds = %2894, %2890
  %2896 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !46
  %2897 = icmp eq i8 %2896, 0
  br i1 %2897, label %2899, label %2898, !prof !58

2898:                                             ; preds = %2895
  store i32 2952, ptr getelementptr inbounds ([87 x i32], ptr @sync_compare_and_swap, i64 0, i64 14), align 8, !tbaa !50
  br label %2899

2899:                                             ; preds = %2898, %2895
  %2900 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !46
  %2901 = icmp eq i8 %2900, 0
  br i1 %2901, label %2903, label %2902, !prof !58

2902:                                             ; preds = %2899
  store i32 2953, ptr getelementptr inbounds ([87 x i32], ptr @sync_compare_and_swap, i64 0, i64 15), align 4, !tbaa !50
  br label %2903

2903:                                             ; preds = %2902, %2899
  %2904 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !46
  %2905 = icmp eq i8 %2904, 0
  br i1 %2905, label %2907, label %2906, !prof !58

2906:                                             ; preds = %2903
  store i32 2954, ptr getelementptr inbounds ([87 x i32], ptr @sync_compare_and_swap, i64 0, i64 16), align 16, !tbaa !50
  br label %2907

2907:                                             ; preds = %2906, %2903
  %2908 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !46
  %2909 = icmp ne i8 %2908, 0
  %2910 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 2), align 1
  %2911 = icmp ne i8 %2910, 0
  %2912 = select i1 %2909, i1 %2911, i1 false, !prof !57
  br i1 %2912, label %2913, label %2914, !prof !57

2913:                                             ; preds = %2907
  store i32 2955, ptr getelementptr inbounds ([87 x i32], ptr @sync_compare_and_swap, i64 0, i64 17), align 4, !tbaa !50
  br label %2914

2914:                                             ; preds = %2913, %2907
  ret void
}

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!54 = !{!"function_entry_count", i64 1}
!55 = !{!56, !41, i64 0}
!56 = !{!"optab_handlers", !41, i64 0}
!57 = !{!"branch_weights", i32 0, i32 1}
!58 = !{!"branch_weights", i32 1, i32 0}
