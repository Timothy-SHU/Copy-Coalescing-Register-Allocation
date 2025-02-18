; ModuleID = 'statistics.c'
source_filename = "statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_counter_s = type { ptr, i32, i8, i64, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.dump_file_info = type { ptr, ptr, ptr, i32, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@current_pass = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Pass statistics:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@statistics_dump_file = internal unnamed_addr global ptr null, align 8
@statistics_dump_flags = internal unnamed_addr global i32 0, align 4
@nr_statistics_hashes = internal unnamed_addr global i32 0, align 4
@statistics_hashes = internal unnamed_addr global ptr null, align 8
@statistics_dump_nr = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c".statistics\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"statistics.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%d %s \22%s\22 \22%s\22 %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(nofn)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%d %s \22%s == %d\22 \22%s\22 1\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%s == %d: %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s: %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%d %s \22%s == %d\22 \22%s\22 %ld\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"%d %s \22%s\22 \22%s\22 %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"%d %s \22%s == %d\22 %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%d %s \22%s\22 %ld\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !43 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !44
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !43 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !43 {
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
  br i1 %23, label %7, label %24, !llvm.loop !60

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @statistics_fini_pass() local_unnamed_addr #9 !prof !63 {
  %1 = load ptr, ptr @current_pass, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !64
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %32, label %5, !prof !66

5:                                                ; preds = %0
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !prof !67

8:                                                ; preds = %5
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @fputc(i32 10, ptr nonnull %6)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %15 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 17, i64 1, ptr %14)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %17 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %16)
  %18 = tail call fastcc ptr @curr_statistics_hash()
  tail call void @htab_traverse_noresize(ptr noundef %18, ptr noundef nonnull @statistics_fini_pass_1, ptr noundef null) #19
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %20 = tail call i32 @fputc(i32 10, ptr %19)
  br label %21

21:                                               ; preds = %12, %8, %5
  %22 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24, !prof !67

24:                                               ; preds = %21
  %25 = load i32, ptr @statistics_dump_flags, align 4, !tbaa !59
  %26 = and i32 %25, 24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call fastcc ptr @curr_statistics_hash()
  tail call void @htab_traverse_noresize(ptr noundef %29, ptr noundef nonnull @statistics_fini_pass_2, ptr noundef null) #19
  br label %30

30:                                               ; preds = %28, %24, %21
  %31 = tail call fastcc ptr @curr_statistics_hash()
  tail call void @htab_traverse_noresize(ptr noundef %31, ptr noundef nonnull @statistics_fini_pass_3, ptr noundef null) #19
  br label %32

32:                                               ; preds = %0, %30
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @curr_statistics_hash() unnamed_addr #9 !prof !68 !PGOFuncName !69 {
  %1 = load ptr, ptr @current_pass, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !64
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %6, label %5, !prof !67

5:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 87, ptr noundef nonnull @.str.6) #19
  br label %6

6:                                                ; preds = %0, %5
  %7 = load ptr, ptr @current_pass, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.opt_pass, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !64
  %10 = load i32, ptr @nr_statistics_hashes, align 4, !tbaa !59
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %19, !prof !70

12:                                               ; preds = %6
  %13 = load ptr, ptr @statistics_hashes, align 8, !tbaa !44
  %14 = zext i32 %9 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %36, !prof !71

18:                                               ; preds = %12
  br i1 %11, label %31, label %19, !prof !72

19:                                               ; preds = %6, %18
  %20 = load ptr, ptr @statistics_hashes, align 8, !tbaa !44
  %21 = add i32 %9, 1
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call ptr @xrealloc(ptr noundef %20, i64 noundef %23) #19
  store ptr %24, ptr @statistics_hashes, align 8, !tbaa !44
  %25 = load i32, ptr @nr_statistics_hashes, align 4, !tbaa !59
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = sub i32 %21, %25
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 %30, i1 false), !prof !73
  store i32 %21, ptr @nr_statistics_hashes, align 4, !tbaa !59
  br label %31

31:                                               ; preds = %19, %18
  %32 = tail call ptr @htab_create(i64 noundef 15, ptr noundef nonnull @hash_statistics_hash, ptr noundef nonnull @hash_statistics_eq, ptr noundef nonnull @hash_statistics_free) #19
  %33 = load ptr, ptr @statistics_hashes, align 8, !tbaa !44
  %34 = zext i32 %9 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  store ptr %32, ptr %35, align 8, !tbaa !44
  br label %36

36:                                               ; preds = %12, %31
  %37 = phi ptr [ %32, %31 ], [ %16, %12 ]
  ret ptr %37
}

; Function Attrs: cold nofree nounwind uwtable
define internal noundef i32 @statistics_fini_pass_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !43 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !76
  %8 = sub i64 %5, %7
  %9 = icmp eq i64 %5, %7
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !77
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !44
  %15 = load ptr, ptr %3, align 8, !tbaa !78
  br i1 %13, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !79
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef %15, i32 noundef %18, i64 noundef %8)
  br label %22

20:                                               ; preds = %10
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef %15, i64 noundef %8)
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, ptr %4, align 8, !tbaa !74
  store i64 %23, ptr %6, align 8, !tbaa !76
  br label %24

24:                                               ; preds = %2, %22
  ret i32 1
}

; Function Attrs: cold nofree nounwind uwtable
define internal noundef i32 @statistics_fini_pass_2(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !43 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !76
  %8 = sub i64 %5, %7
  %9 = icmp eq i64 %5, %7
  br i1 %9, label %51, label %10

10:                                               ; preds = %2
  store i64 %5, ptr %6, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !77
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !44
  %15 = load ptr, ptr @current_pass, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.opt_pass, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.opt_pass, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = load ptr, ptr %3, align 8, !tbaa !78
  br i1 %13, label %36, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !79
  %24 = load ptr, ptr @cfun, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct.tree_identifier, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  br label %33

33:                                               ; preds = %21, %26
  %34 = phi ptr [ %32, %26 ], [ @.str.8, %21 ]
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %17, ptr noundef %19, ptr noundef %20, i32 noundef %23, ptr noundef %34, i64 noundef %8)
  br label %49

36:                                               ; preds = %10
  %37 = load ptr, ptr @cfun, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.tree_identifier, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  br label %46

46:                                               ; preds = %36, %39
  %47 = phi ptr [ %45, %39 ], [ @.str.8, %36 ]
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %17, ptr noundef %19, ptr noundef %20, ptr noundef %47, i64 noundef %8)
  br label %49

49:                                               ; preds = %46, %33
  %50 = load i64, ptr %4, align 8, !tbaa !74
  store i64 %50, ptr %6, align 8, !tbaa !76
  br label %51

51:                                               ; preds = %2, %49
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @statistics_fini_pass_3(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #11 !prof !43 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 4
  store i64 %5, ptr %6, align 8, !tbaa !76
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @statistics_fini() local_unnamed_addr #12 !prof !83 {
  %1 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %34, label %3, !prof !84

3:                                                ; preds = %0
  %4 = load i32, ptr @statistics_dump_flags, align 4, !tbaa !59
  %5 = and i32 %4, 16
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr @nr_statistics_hashes, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %31

10:                                               ; preds = %3, %26
  %11 = phi i64 [ %27, %26 ], [ 0, %3 ]
  %12 = load ptr, ptr @statistics_hashes, align 8, !tbaa !44
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = trunc i64 %11 to i32
  %18 = tail call ptr @get_pass_for_id(i32 noundef %17) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @statistics_hashes, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 %11
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = trunc i64 %11 to i32
  %25 = tail call ptr @get_pass_for_id(i32 noundef %24) #19
  tail call void @htab_traverse_noresize(ptr noundef %23, ptr noundef nonnull @statistics_fini_1, ptr noundef %25) #19
  br label %26

26:                                               ; preds = %10, %16, %20
  %27 = add nuw nsw i64 %11, 1
  %28 = load i32, ptr @nr_statistics_hashes, align 4, !tbaa !59
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %10, label %31, !llvm.loop !85

31:                                               ; preds = %26, %3
  %32 = load i32, ptr @statistics_dump_nr, align 4, !tbaa !59
  %33 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !44
  tail call void @dump_end(i32 noundef %32, ptr noundef %33) #19
  br label %34

34:                                               ; preds = %0, %31
  ret void
}

declare ptr @get_pass_for_id(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal noundef i32 @statistics_fini_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !43 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !77
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = load ptr, ptr %3, align 8, !tbaa !78
  br i1 %10, label %21, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !79
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.14, i32 noundef %13, ptr noundef %15, ptr noundef %16, i32 noundef %19, i64 noundef %5)
  br label %23

21:                                               ; preds = %7
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %13, ptr noundef %15, ptr noundef %16, i64 noundef %5)
  br label %23

23:                                               ; preds = %17, %21, %2
  ret i32 1
}

declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @statistics_early_init() local_unnamed_addr #12 !prof !83 {
  %1 = tail call i32 @dump_register(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef 512) #19
  store i32 %1, ptr @statistics_dump_nr, align 4, !tbaa !59
  ret void
}

declare i32 @dump_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @statistics_init() local_unnamed_addr #12 !prof !83 {
  %1 = load i32, ptr @statistics_dump_nr, align 4, !tbaa !59
  %2 = tail call ptr @dump_begin(i32 noundef %1, ptr noundef null) #19
  store ptr %2, ptr @statistics_dump_file, align 8, !tbaa !44
  %3 = load i32, ptr @statistics_dump_nr, align 4, !tbaa !59
  %4 = tail call ptr @get_dump_file_info(i32 noundef %3) #19
  %5 = getelementptr inbounds %struct.dump_file_info, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !86
  store i32 %6, ptr @statistics_dump_flags, align 4, !tbaa !59
  ret void
}

declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_dump_file_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @statistics_counter_event(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !88 {
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @statistics_dump_file, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false, !prof !89
  %10 = icmp eq i32 %2, 0
  %11 = or i1 %10, %9
  br i1 %11, label %53, label %12, !prof !89

12:                                               ; preds = %3
  %13 = load ptr, ptr @current_pass, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.opt_pass, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !64
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @curr_statistics_hash()
  %19 = tail call fastcc ptr @lookup_or_add_counter(ptr noundef %18, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0)
  %20 = getelementptr inbounds %struct.statistics_counter_s, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !77
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 303, ptr noundef nonnull @.str.6) #19
  br label %24

24:                                               ; preds = %17, %23
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds %struct.statistics_counter_s, ptr %19, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !74
  %28 = add i64 %27, %25
  store i64 %28, ptr %26, align 8, !tbaa !74
  br label %29

29:                                               ; preds = %24, %12
  %30 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @statistics_dump_flags, align 4, !tbaa !59
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @current_pass, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct.opt_pass, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !64
  %40 = getelementptr inbounds %struct.opt_pass, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = icmp eq ptr %0, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = getelementptr inbounds %struct.tree_decl_minimal, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.tree_identifier, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  br label %50

50:                                               ; preds = %36, %43
  %51 = phi ptr [ %49, %43 ], [ @.str.8, %36 ]
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.7, i32 noundef %39, ptr noundef %41, ptr noundef %1, ptr noundef %51, i32 noundef %2)
  br label %53

53:                                               ; preds = %29, %32, %3, %50
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lookup_or_add_counter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #12 !prof !43 {
  %5 = alloca %struct.statistics_counter_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %1, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.statistics_counter_s, ptr %5, i64 0, i32 1
  store i32 %2, ptr %6, align 8, !tbaa !79
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #19
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = call ptr @xmalloc(i64 noundef 32) #19
  store ptr %11, ptr %7, align 8, !tbaa !44
  %12 = call ptr @xstrdup(ptr noundef %1) #19
  %13 = load ptr, ptr %7, align 8, !tbaa !44
  store ptr %12, ptr %13, align 8, !tbaa !78
  %14 = load ptr, ptr %7, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.statistics_counter_s, ptr %14, i64 0, i32 1
  store i32 %2, ptr %15, align 8, !tbaa !79
  %16 = getelementptr inbounds %struct.statistics_counter_s, ptr %14, i64 0, i32 2
  store i8 %3, ptr %16, align 4, !tbaa !77
  %17 = getelementptr inbounds %struct.statistics_counter_s, ptr %14, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %10, %4
  %19 = load ptr, ptr %7, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret ptr %19
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @statistics_histogram_event(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !90 {
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !59
  %5 = and i32 %4, 16
  %6 = icmp ne i32 %5, 0
  %7 = load ptr, ptr @statistics_dump_file, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8, !prof !91
  br i1 %9, label %10, label %44, !prof !91

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @curr_statistics_hash()
  %12 = tail call fastcc ptr @lookup_or_add_counter(ptr noundef %11, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 1)
  %13 = getelementptr inbounds %struct.statistics_counter_s, ptr %12, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !77
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 334, ptr noundef nonnull @.str.6) #19
  br label %17

17:                                               ; preds = %10, %16
  %18 = getelementptr inbounds %struct.statistics_counter_s, ptr %12, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !74
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8, !tbaa !74
  %21 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr @statistics_dump_flags, align 4, !tbaa !59
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @current_pass, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.opt_pass, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct.opt_pass, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = icmp eq ptr %0, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !81
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.tree_identifier, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  br label %41

41:                                               ; preds = %27, %34
  %42 = phi ptr [ %40, %34 ], [ @.str.8, %27 ]
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.9, i32 noundef %30, ptr noundef %32, ptr noundef %1, i32 noundef %2, ptr noundef %42)
  br label %44

44:                                               ; preds = %17, %23, %3, %41
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @hash_statistics_hash(ptr nocapture noundef readonly %0) #12 !prof !43 {
  %2 = load ptr, ptr %0, align 8, !tbaa !78
  %3 = tail call i32 @htab_hash_string(ptr noundef %2) #19
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !79
  %6 = add i32 %5, %3
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_statistics_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !43 {
  %3 = getelementptr inbounds %struct.statistics_counter_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.statistics_counter_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !78
  %10 = load ptr, ptr %1, align 8, !tbaa !78
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %10)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal void @hash_statistics_free(ptr nocapture noundef %0) #15 !prof !43 {
  %2 = load ptr, ptr %0, align 8, !tbaa !78
  tail call void @free(ptr noundef %2)
  tail call void @free(ptr noundef %0)
  ret void
}

declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

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
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @statistics_fini_pass, ptr @curr_statistics_hash, i64 11060}
!36 = !{ptr @statistics_fini_pass, ptr @htab_traverse_noresize, i64 11060}
!37 = !{ptr @curr_statistics_hash, ptr @xrealloc, i64 160}
!38 = !{ptr @curr_statistics_hash, ptr @htab_create, i64 160}
!39 = !{ptr @statistics_early_init, ptr @dump_register, i64 1}
!40 = !{ptr @statistics_init, ptr @dump_begin, i64 1}
!41 = !{ptr @statistics_init, ptr @get_dump_file_info, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !45, i64 8}
!49 = !{!"_IO_FILE", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !50, i64 112, !50, i64 116, !51, i64 120, !52, i64 128, !46, i64 130, !46, i64 131, !45, i64 136, !51, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !51, i64 184, !50, i64 192, !46, i64 196}
!50 = !{!"int", !46, i64 0}
!51 = !{!"long", !46, i64 0}
!52 = !{!"short", !46, i64 0}
!53 = !{!49, !45, i64 16}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!46, !46, i64 0}
!56 = !{!49, !45, i64 40}
!57 = !{!49, !45, i64 48}
!58 = !{!49, !50, i64 0}
!59 = !{!50, !50, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 12264}
!64 = !{!65, !50, i64 48}
!65 = !{!"opt_pass", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !50, i64 64, !50, i64 68, !50, i64 72}
!66 = !{!"branch_weights", i32 1204, i32 11060}
!67 = !{!"branch_weights", i32 11060, i32 0}
!68 = !{!"function_entry_count", i64 11060}
!69 = !{!"statistics.c;curr_statistics_hash"}
!70 = !{!"branch_weights", i32 10901, i32 159}
!71 = !{!"branch_weights", i32 1, i32 10900}
!72 = !{!"branch_weights", i32 1, i32 159}
!73 = !{!"VP", i32 1, i64 159, i64 8, i64 129, i64 16, i64 19, i64 17, i64 5, i64 32, i64 3}
!74 = !{!75, !51, i64 16}
!75 = !{!"statistics_counter_s", !45, i64 0, !50, i64 8, !46, i64 12, !51, i64 16, !51, i64 24}
!76 = !{!75, !51, i64 24}
!77 = !{!75, !46, i64 12}
!78 = !{!75, !45, i64 0}
!79 = !{!75, !50, i64 8}
!80 = !{!65, !45, i64 8}
!81 = !{!82, !45, i64 48}
!82 = !{!"function", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !45, i64 128, !50, i64 136, !50, i64 137, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139}
!83 = !{!"function_entry_count", i64 1}
!84 = !{!"branch_weights", i32 1, i32 0}
!85 = distinct !{!85, !61, !62}
!86 = !{!87, !50, i64 24}
!87 = !{!"dump_file_info", !45, i64 0, !45, i64 8, !45, i64 16, !50, i64 24, !50, i64 28, !50, i64 32}
!88 = !{!"function_entry_count", i64 2929}
!89 = !{!"branch_weights", i32 2929, i32 0}
!90 = !{!"function_entry_count", i64 93}
!91 = !{!"branch_weights", i32 0, i32 93}
