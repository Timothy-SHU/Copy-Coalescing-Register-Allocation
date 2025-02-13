; ModuleID = 'statistics.c'
source_filename = "statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_counter_s = type { ptr, i32, i8, i64, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.dump_file_info = type { ptr, ptr, ptr, i32, i32, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @statistics_fini_pass() local_unnamed_addr #0 !prof !52 {
  %1 = load ptr, ptr @current_pass, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %32, label %5, !prof !60

5:                                                ; preds = %0
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !53
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !prof !61

8:                                                ; preds = %5
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !62
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @fputc(i32 10, ptr nonnull %6)
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !53
  %15 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 17, i64 1, ptr %14)
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !53
  %17 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %16)
  %18 = tail call fastcc ptr @curr_statistics_hash() #12
  tail call void @htab_traverse_noresize(ptr noundef %18, ptr noundef nonnull @statistics_fini_pass_1, ptr noundef null) #13
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !53
  %20 = tail call i32 @fputc(i32 10, ptr %19)
  br label %21

21:                                               ; preds = %12, %8, %5
  %22 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24, !prof !61

24:                                               ; preds = %21
  %25 = load i32, ptr @statistics_dump_flags, align 4, !tbaa !62
  %26 = and i32 %25, 24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call fastcc ptr @curr_statistics_hash() #12
  tail call void @htab_traverse_noresize(ptr noundef %29, ptr noundef nonnull @statistics_fini_pass_2, ptr noundef null) #13
  br label %30

30:                                               ; preds = %28, %24, %21
  %31 = tail call fastcc ptr @curr_statistics_hash() #12
  tail call void @htab_traverse_noresize(ptr noundef %31, ptr noundef nonnull @statistics_fini_pass_3, ptr noundef null) #13
  br label %32

32:                                               ; preds = %0, %30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @curr_statistics_hash() unnamed_addr #0 !prof !63 !PGOFuncName !64 {
  %1 = load ptr, ptr @current_pass, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %9, label %5, !prof !61

5:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 87, ptr noundef nonnull @.str.6) #13
  %6 = load ptr, ptr @current_pass, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !57
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %3, %0 ], [ %8, %5 ]
  %11 = load i32, ptr @nr_statistics_hashes, align 4, !tbaa !62
  %12 = icmp ult i32 %10, %11
  %13 = load ptr, ptr @statistics_hashes, align 8, !tbaa !53
  br i1 %12, label %14, label %19, !prof !65

14:                                               ; preds = %9
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %36, !prof !66

19:                                               ; preds = %9
  %20 = add i32 %10, 1
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = tail call ptr @xrealloc(ptr noundef %13, i64 noundef %22) #13
  store ptr %23, ptr @statistics_hashes, align 8, !tbaa !53
  %24 = load i32, ptr @nr_statistics_hashes, align 4, !tbaa !62
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = sub i32 %20, %24
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 %29, i1 false)
  store i32 %20, ptr @nr_statistics_hashes, align 4, !tbaa !62
  %30 = zext i32 %10 to i64
  br label %31

31:                                               ; preds = %14, %19
  %32 = phi i64 [ %15, %14 ], [ %30, %19 ]
  %33 = tail call ptr @htab_create(i64 noundef 15, ptr noundef nonnull @hash_statistics_hash, ptr noundef nonnull @hash_statistics_eq, ptr noundef nonnull @hash_statistics_free) #13
  %34 = load ptr, ptr @statistics_hashes, align 8, !tbaa !53
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %33, ptr %35, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %14, %31
  %37 = phi ptr [ %33, %31 ], [ %17, %14 ]
  ret ptr %37
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @statistics_fini_pass_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !prof !67 !PGOFuncName !68 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !72
  %8 = sub i64 %5, %7
  %9 = icmp eq i64 %5, %7
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !73
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !53
  %15 = load ptr, ptr %3, align 8, !tbaa !74
  br i1 %13, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !75
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef %15, i32 noundef %18, i64 noundef %8) #12
  br label %22

20:                                               ; preds = %10
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef %15, i64 noundef %8) #12
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, ptr %4, align 8, !tbaa !69
  store i64 %23, ptr %6, align 8, !tbaa !72
  br label %24

24:                                               ; preds = %2, %22
  ret i32 1
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @statistics_fini_pass_2(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !prof !67 !PGOFuncName !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 4
  %7 = load i64, ptr %6, align 8, !tbaa !72
  %8 = sub i64 %5, %7
  %9 = icmp eq i64 %5, %7
  br i1 %9, label %51, label %10

10:                                               ; preds = %2
  store i64 %5, ptr %6, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !73
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !53
  %15 = load ptr, ptr @current_pass, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.opt_pass, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.opt_pass, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = load ptr, ptr %3, align 8, !tbaa !74
  br i1 %13, label %36, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !75
  %24 = load ptr, ptr @cfun, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !78
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.tree_identifier, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  br label %33

33:                                               ; preds = %21, %26
  %34 = phi ptr [ %32, %26 ], [ @.str.8, %21 ]
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %17, ptr noundef %19, ptr noundef %20, i32 noundef %23, ptr noundef %34, i64 noundef %8) #12
  br label %49

36:                                               ; preds = %10
  %37 = load ptr, ptr @cfun, align 8, !tbaa !53
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !80
  %44 = getelementptr inbounds %struct.tree_identifier, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !80
  br label %46

46:                                               ; preds = %36, %39
  %47 = phi ptr [ %45, %39 ], [ @.str.8, %36 ]
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %17, ptr noundef %19, ptr noundef %20, ptr noundef %47, i64 noundef %8) #12
  br label %49

49:                                               ; preds = %46, %33
  %50 = load i64, ptr %4, align 8, !tbaa !69
  store i64 %50, ptr %6, align 8, !tbaa !72
  br label %51

51:                                               ; preds = %2, %49
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @statistics_fini_pass_3(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !prof !67 !PGOFuncName !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 4
  store i64 %5, ptr %6, align 8, !tbaa !72
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @statistics_fini() local_unnamed_addr #0 !prof !82 {
  %1 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !53
  %2 = icmp eq ptr %1, null
  br i1 %2, label %35, label %3, !prof !83

3:                                                ; preds = %0
  %4 = load i32, ptr @statistics_dump_flags, align 4, !tbaa !62
  %5 = and i32 %4, 16
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr @nr_statistics_hashes, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %32

10:                                               ; preds = %3, %25
  %11 = phi i64 [ %26, %25 ], [ 0, %3 ]
  %12 = load ptr, ptr @statistics_hashes, align 8, !tbaa !53
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = trunc i64 %11 to i32
  %18 = tail call ptr @get_pass_for_id(i32 noundef %17) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @statistics_hashes, align 8, !tbaa !53
  %22 = getelementptr inbounds ptr, ptr %21, i64 %11
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = tail call ptr @get_pass_for_id(i32 noundef %17) #13
  tail call void @htab_traverse_noresize(ptr noundef %23, ptr noundef nonnull @statistics_fini_1, ptr noundef %24) #13
  br label %25

25:                                               ; preds = %10, %16, %20
  %26 = add nuw nsw i64 %11, 1
  %27 = load i32, ptr @nr_statistics_hashes, align 4, !tbaa !62
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %10, label %30, !llvm.loop !84

30:                                               ; preds = %25
  %31 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !53
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi ptr [ %31, %30 ], [ %1, %3 ]
  %34 = load i32, ptr @statistics_dump_nr, align 4, !tbaa !62
  tail call void @dump_end(i32 noundef %34, ptr noundef %33) #13
  br label %35

35:                                               ; preds = %0, %32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare ptr @get_pass_for_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @statistics_fini_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !67 !PGOFuncName !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !69
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !73
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.opt_pass, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = load ptr, ptr %3, align 8, !tbaa !74
  br i1 %10, label %21, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.statistics_counter_s, ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !75
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.14, i32 noundef %13, ptr noundef %15, ptr noundef %16, i32 noundef %19, i64 noundef %5) #12
  br label %23

21:                                               ; preds = %7
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %13, ptr noundef %15, ptr noundef %16, i64 noundef %5) #12
  br label %23

23:                                               ; preds = %17, %21, %2
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @statistics_early_init() local_unnamed_addr #0 !prof !82 {
  %1 = tail call i32 @dump_register(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef 512) #13
  store i32 %1, ptr @statistics_dump_nr, align 4, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare i32 @dump_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @statistics_init() local_unnamed_addr #0 !prof !82 {
  %1 = load i32, ptr @statistics_dump_nr, align 4, !tbaa !62
  %2 = tail call ptr @dump_begin(i32 noundef %1, ptr noundef null) #13
  store ptr %2, ptr @statistics_dump_file, align 8, !tbaa !53
  %3 = load i32, ptr @statistics_dump_nr, align 4, !tbaa !62
  %4 = tail call ptr @get_dump_file_info(i32 noundef %3) #13
  %5 = getelementptr inbounds %struct.dump_file_info, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !87
  store i32 %6, ptr @statistics_dump_flags, align 4, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_dump_file_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @statistics_counter_event(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !89 {
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !62
  %5 = and i32 %4, 16
  %6 = icmp ne i32 %5, 0
  %7 = load ptr, ptr @statistics_dump_file, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %54, !prof !90

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr @current_pass, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.opt_pass, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @curr_statistics_hash() #12
  %19 = tail call fastcc ptr @lookup_or_add_counter(ptr noundef %18, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0) #12
  %20 = getelementptr inbounds %struct.statistics_counter_s, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !73
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 303, ptr noundef nonnull @.str.6) #13
  br label %24

24:                                               ; preds = %17, %23
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds %struct.statistics_counter_s, ptr %19, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !69
  %28 = add i64 %27, %25
  store i64 %28, ptr %26, align 8, !tbaa !69
  %29 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !53
  br label %30

30:                                               ; preds = %24, %12
  %31 = phi ptr [ %29, %24 ], [ %7, %12 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @statistics_dump_flags, align 4, !tbaa !62
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @current_pass, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.opt_pass, ptr %38, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.opt_pass, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !77
  %43 = icmp eq ptr %0, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !78
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !80
  %49 = getelementptr inbounds %struct.tree_identifier, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !80
  br label %51

51:                                               ; preds = %37, %44
  %52 = phi ptr [ %50, %44 ], [ @.str.8, %37 ]
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %31, ptr noundef nonnull @.str.7, i32 noundef %40, ptr noundef %42, ptr noundef %1, ptr noundef %52, i32 noundef %2) #12
  br label %54

54:                                               ; preds = %30, %33, %10, %3, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_or_add_counter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !67 !PGOFuncName !91 {
  %5 = alloca %struct.statistics_counter_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  store ptr %1, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.statistics_counter_s, ptr %5, i64 0, i32 1
  store i32 %2, ptr %6, align 8, !tbaa !75
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = call ptr @xmalloc(i64 noundef 32) #13
  store ptr %11, ptr %7, align 8, !tbaa !53
  %12 = call ptr @xstrdup(ptr noundef %1) #13
  %13 = load ptr, ptr %7, align 8, !tbaa !53
  store ptr %12, ptr %13, align 8, !tbaa !74
  %14 = load ptr, ptr %7, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.statistics_counter_s, ptr %14, i64 0, i32 1
  store i32 %2, ptr %15, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.statistics_counter_s, ptr %14, i64 0, i32 2
  store i8 %3, ptr %16, align 4, !tbaa !73
  %17 = getelementptr inbounds %struct.statistics_counter_s, ptr %14, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %10, %4
  %19 = phi ptr [ %14, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  ret ptr %19
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @statistics_histogram_event(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !92 {
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !62
  %5 = and i32 %4, 16
  %6 = icmp ne i32 %5, 0
  %7 = load ptr, ptr @statistics_dump_file, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %44, !prof !93

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @curr_statistics_hash() #12
  %12 = tail call fastcc ptr @lookup_or_add_counter(ptr noundef %11, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 1) #12
  %13 = getelementptr inbounds %struct.statistics_counter_s, ptr %12, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !73
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 334, ptr noundef nonnull @.str.6) #13
  br label %17

17:                                               ; preds = %10, %16
  %18 = getelementptr inbounds %struct.statistics_counter_s, ptr %12, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !69
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8, !tbaa !69
  %21 = load ptr, ptr @statistics_dump_file, align 8, !tbaa !53
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr @statistics_dump_flags, align 4, !tbaa !62
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @current_pass, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.opt_pass, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.opt_pass, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = icmp eq ptr %0, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !78
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !80
  %39 = getelementptr inbounds %struct.tree_identifier, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  br label %41

41:                                               ; preds = %27, %34
  %42 = phi ptr [ %40, %34 ], [ @.str.8, %27 ]
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %21, ptr noundef nonnull @.str.9, i32 noundef %30, ptr noundef %32, ptr noundef %1, i32 noundef %2, ptr noundef %42) #12
  br label %44

44:                                               ; preds = %17, %23, %3, %41
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_statistics_hash(ptr nocapture noundef readonly %0) #0 !prof !67 !PGOFuncName !94 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = tail call i32 @htab_hash_string(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.statistics_counter_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = add i32 %5, %3
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_statistics_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !prof !67 !PGOFuncName !95 {
  %3 = getelementptr inbounds %struct.statistics_counter_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.statistics_counter_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !75
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !74
  %10 = load ptr, ptr %1, align 8, !tbaa !74
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %10) #12
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @hash_statistics_free(ptr nocapture noundef %0) #8 !prof !67 !PGOFuncName !96 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  tail call void @free(ptr noundef %2) #12
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!51}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @statistics_fini_pass, ptr @curr_statistics_hash, i64 11059}
!36 = !{ptr @statistics_fini_pass, ptr @htab_traverse_noresize, i64 11059}
!37 = !{ptr @curr_statistics_hash, ptr @fancy_abort, i64 1}
!38 = !{ptr @curr_statistics_hash, ptr @xrealloc, i64 160}
!39 = !{ptr @curr_statistics_hash, ptr @htab_create, i64 162}
!40 = !{ptr @statistics_fini, ptr @get_pass_for_id, i64 5}
!41 = !{ptr @statistics_fini, ptr @htab_traverse_noresize, i64 2}
!42 = !{ptr @statistics_early_init, ptr @dump_register, i64 1}
!43 = !{ptr @statistics_init, ptr @dump_begin, i64 1}
!44 = !{ptr @statistics_init, ptr @get_dump_file_info, i64 1}
!45 = !{ptr @statistics_counter_event, ptr @curr_statistics_hash, i64 1}
!46 = !{ptr @statistics_counter_event, ptr @lookup_or_add_counter, i64 1}
!47 = !{ptr @statistics_histogram_event, ptr @curr_statistics_hash, i64 2}
!48 = !{ptr @statistics_histogram_event, ptr @lookup_or_add_counter, i64 2}
!49 = !{ptr @statistics_histogram_event, ptr @fancy_abort, i64 1}
!50 = !{ptr @statistics_histogram_event, ptr @fprintf, i64 1}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 12264}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!58, !59, i64 48}
!58 = !{!"opt_pass", !59, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !59, i64 64, !59, i64 68, !59, i64 72}
!59 = !{!"int", !55, i64 0}
!60 = !{!"branch_weights", i32 1205, i32 11061}
!61 = !{!"branch_weights", i32 11061, i32 1}
!62 = !{!59, !59, i64 0}
!63 = !{!"function_entry_count", i64 11060}
!64 = !{!"statistics.c:curr_statistics_hash"}
!65 = !{!"branch_weights", i32 10902, i32 160}
!66 = !{!"branch_weights", i32 2, i32 10901}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!"statistics.c:statistics_fini_pass_1"}
!69 = !{!70, !71, i64 16}
!70 = !{!"statistics_counter_s", !54, i64 0, !59, i64 8, !55, i64 12, !71, i64 16, !71, i64 24}
!71 = !{!"long", !55, i64 0}
!72 = !{!70, !71, i64 24}
!73 = !{!70, !55, i64 12}
!74 = !{!70, !54, i64 0}
!75 = !{!70, !59, i64 8}
!76 = !{!"statistics.c:statistics_fini_pass_2"}
!77 = !{!58, !54, i64 8}
!78 = !{!79, !54, i64 48}
!79 = !{!"function", !54, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80, !54, i64 88, !54, i64 96, !59, i64 104, !59, i64 108, !59, i64 112, !59, i64 116, !59, i64 120, !59, i64 124, !54, i64 128, !59, i64 136, !59, i64 137, !59, i64 138, !59, i64 138, !59, i64 138, !59, i64 138, !59, i64 138, !59, i64 138, !59, i64 138, !59, i64 139, !59, i64 139, !59, i64 139, !59, i64 139, !59, i64 139, !59, i64 139, !59, i64 139}
!80 = !{!55, !55, i64 0}
!81 = !{!"statistics.c:statistics_fini_pass_3"}
!82 = !{!"function_entry_count", i64 1}
!83 = !{!"branch_weights", i32 2, i32 1}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"statistics.c:statistics_fini_1"}
!87 = !{!88, !59, i64 24}
!88 = !{!"dump_file_info", !54, i64 0, !54, i64 8, !54, i64 16, !59, i64 24, !59, i64 28, !59, i64 32}
!89 = !{!"function_entry_count", i64 2929}
!90 = !{!"branch_weights", i32 5861, i32 8584900}
!91 = !{!"statistics.c:lookup_or_add_counter"}
!92 = !{!"function_entry_count", i64 93}
!93 = !{!"branch_weights", i32 189, i32 8836}
!94 = !{!"statistics.c:hash_statistics_hash"}
!95 = !{!"statistics.c:hash_statistics_eq"}
!96 = !{!"statistics.c:hash_statistics_free"}
