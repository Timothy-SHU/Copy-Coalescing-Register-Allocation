; ModuleID = 'dbgcnt.c'
source_filename = "dbgcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.string2counter_map = type { ptr, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@count = internal unnamed_addr global [38 x i32] zeroinitializer, align 16
@limit = internal unnamed_addr global [38 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"***dbgcnt: limit reached for %s.***\0A\00", align 1
@map = internal unnamed_addr constant [38 x %struct.string2counter_map] [%struct.string2counter_map { ptr @.str.12, i32 0 }, %struct.string2counter_map { ptr @.str.13, i32 1 }, %struct.string2counter_map { ptr @.str.14, i32 2 }, %struct.string2counter_map { ptr @.str.15, i32 3 }, %struct.string2counter_map { ptr @.str.16, i32 4 }, %struct.string2counter_map { ptr @.str.17, i32 5 }, %struct.string2counter_map { ptr @.str.18, i32 6 }, %struct.string2counter_map { ptr @.str.19, i32 7 }, %struct.string2counter_map { ptr @.str.20, i32 8 }, %struct.string2counter_map { ptr @.str.21, i32 9 }, %struct.string2counter_map { ptr @.str.22, i32 10 }, %struct.string2counter_map { ptr @.str.23, i32 11 }, %struct.string2counter_map { ptr @.str.24, i32 12 }, %struct.string2counter_map { ptr @.str.25, i32 13 }, %struct.string2counter_map { ptr @.str.26, i32 14 }, %struct.string2counter_map { ptr @.str.27, i32 15 }, %struct.string2counter_map { ptr @.str.28, i32 16 }, %struct.string2counter_map { ptr @.str.29, i32 17 }, %struct.string2counter_map { ptr @.str.30, i32 18 }, %struct.string2counter_map { ptr @.str.31, i32 19 }, %struct.string2counter_map { ptr @.str.32, i32 20 }, %struct.string2counter_map { ptr @.str.33, i32 21 }, %struct.string2counter_map { ptr @.str.34, i32 22 }, %struct.string2counter_map { ptr @.str.35, i32 23 }, %struct.string2counter_map { ptr @.str.36, i32 24 }, %struct.string2counter_map { ptr @.str.37, i32 25 }, %struct.string2counter_map { ptr @.str.38, i32 26 }, %struct.string2counter_map { ptr @.str.39, i32 27 }, %struct.string2counter_map { ptr @.str.40, i32 28 }, %struct.string2counter_map { ptr @.str.41, i32 29 }, %struct.string2counter_map { ptr @.str.42, i32 30 }, %struct.string2counter_map { ptr @.str.43, i32 31 }, %struct.string2counter_map { ptr @.str.44, i32 32 }, %struct.string2counter_map { ptr @.str.45, i32 33 }, %struct.string2counter_map { ptr @.str.46, i32 34 }, %struct.string2counter_map { ptr @.str.47, i32 35 }, %struct.string2counter_map { ptr @.str.48, i32 36 }, %struct.string2counter_map { ptr @.str.49, i32 37 }], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Can not find a valid counter:value pair:\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-fdbg-cnt=%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"          %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  %-30s %-5s %-5s\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"counter name\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"  %-30s %5d %5u\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"auto_inc_dec\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"cfg_cleanup\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"cse2_move2add\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"cprop\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dce\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"dce_fast\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"dce_ud\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"delete_trivial_dead\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"df_byte_scan\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"dse\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"dse1\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"dse2\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"gcse2_delete\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"global_alloc_at_func\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"global_alloc_at_reg\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"hoist\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ia64_sched2\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"if_conversion\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"if_after_combine\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"if_after_reload\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"local_alloc_for_sched\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"postreload_cse\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"pre_insn\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"treepre_insert\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"sched2_func\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"sched_block\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"sched_func\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"sched_insn\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"sched_region\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"sel_sched_cnt\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"sel_sched_region_cnt\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"sel_sched_insn_cnt\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"sms_sched_loop\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"store_motion\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"split_for_sched2\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"tail_call\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [24 x i8] c"dbg_cnt '%s' set to %d\0A\00", align 1
@str = private unnamed_addr constant [47 x i8] c"----------------------------------------------\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @dbg_cnt_is_enabled(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [38 x i32], ptr @count, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %2
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp ule i32 %4, %6
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: inlinehint nofree nounwind uwtable
define dso_local zeroext i8 @dbg_cnt(i32 noundef %0) local_unnamed_addr #10 !prof !54 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [38 x i32], ptr @count, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !50
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !55

8:                                                ; preds = %1
  %9 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %2
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %2
  %14 = load ptr, ptr %13, align 16, !tbaa !56
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef %14)
  br label %16

16:                                               ; preds = %12, %8, %1
  %17 = load i32, ptr %3, align 4, !tbaa !50
  %18 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %2
  %19 = load i32, ptr %18, align 4, !tbaa !50
  %20 = icmp ule i32 %17, %19
  %21 = zext i1 %20 to i8
  ret i8 %21
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @dbg_cnt_process_opt(ptr noundef %0) local_unnamed_addr #11 !prof !34 {
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %51, %1
  %4 = phi ptr [ %0, %1 ], [ %52, %51 ]
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 58)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr null, ptr %2, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  %9 = call i64 @strtol(ptr noundef nonnull %8, ptr noundef nonnull %2, i32 noundef 10)
  %10 = trunc i64 %9 to i32
  %11 = load ptr, ptr %2, align 8
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %11, %8
  %14 = or i1 %12, %13
  br i1 %14, label %46, label %15

15:                                               ; preds = %7
  %16 = ptrtoint ptr %5 to i64
  %17 = ptrtoint ptr %4 to i64
  %18 = sub i64 %16, %17
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  br label %21

21:                                               ; preds = %15, %31
  %22 = phi i64 [ 37, %15 ], [ %32, %31 ]
  %23 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 16, !tbaa !56
  %25 = tail call i32 @strncmp(ptr noundef %24, ptr noundef %4, i64 noundef %20)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %24, i64 %20
  %29 = load i8, ptr %28, align 1, !tbaa !46
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %21
  %32 = add nsw i64 %22, -1
  %33 = icmp eq i64 %22, 0
  br i1 %33, label %36, label %21, !llvm.loop !58

34:                                               ; preds = %27
  %35 = trunc i64 %22 to i32
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi i32 [ %35, %34 ], [ -1, %31 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = zext nneg i32 %37 to i64
  %41 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %40
  store i32 %10, ptr %41, align 4, !tbaa !50
  %42 = load ptr, ptr @stderr, align 8, !tbaa !35
  %43 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %40
  %44 = load ptr, ptr %43, align 16, !tbaa !56
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.50, ptr noundef %44, i32 noundef %10) #16
  br label %46

46:                                               ; preds = %36, %39, %3, %7
  %47 = phi ptr [ null, %3 ], [ null, %7 ], [ %11, %39 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i8, ptr %47, align 1, !tbaa !46
  switch i8 %50, label %53 [
    i8 44, label %51
    i8 0, label %62
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds i8, ptr %47, i64 1
  br label %3

53:                                               ; preds = %49, %46
  %54 = ptrtoint ptr %4 to i64
  %55 = ptrtoint ptr %0 to i64
  %56 = sub i64 %54, %55
  %57 = add nsw i64 %56, 2
  %58 = alloca i8, i64 %57, align 16
  %59 = trunc i64 %56 to i32
  %60 = add i32 %59, 1
  %61 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %60, i32 noundef 94)
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2) #15
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef %0) #15
  call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %58) #15
  br label %62

62:                                               ; preds = %49, %53
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dbg_cnt_list_all_counters() local_unnamed_addr #12 !prof !34 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ 0, %0 ], [ %15, %3 ]
  %5 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 16, !tbaa !56
  %7 = getelementptr inbounds [38 x %struct.string2counter_map], ptr @map, i64 0, i64 %4, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [38 x i32], ptr @limit, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = getelementptr inbounds [38 x i32], ptr @count, i64 0, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %6, i32 noundef %11, i32 noundef %13)
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, 38
  br i1 %16, label %17, label %3, !llvm.loop !60

17:                                               ; preds = %3
  %18 = load ptr, ptr @stdout, align 8, !tbaa !35
  %19 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %18)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { cold }

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
!54 = !{!"function_entry_count", i64 2225422}
!55 = !{!"branch_weights", i32 2225422, i32 0}
!56 = !{!57, !36, i64 0}
!57 = !{!"string2counter_map", !36, i64 0, !41, i64 8}
!58 = distinct !{!58, !52, !53}
!59 = !{!57, !41, i64 8}
!60 = distinct !{!60, !52, !53}
