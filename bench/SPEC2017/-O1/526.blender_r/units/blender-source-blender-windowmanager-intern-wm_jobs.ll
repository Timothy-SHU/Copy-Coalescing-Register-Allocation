; ModuleID = 'blender/source/blender/windowmanager/intern/wm_jobs.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_jobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmJob = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, ptr, i32, i32, ptr, i32, i16, i16, i16, i16, i16, i16, float, [128 x i8], ptr, ptr, %struct.ListBase, double, ptr, i8 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"new job\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Job '%s' finished in %f seconds\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [27 x i8] c"job fails, not initialized\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @WM_job_main_thread_lock_acquire(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_lock(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 28
  %5 = load i8, ptr %4, align 8, !tbaa !44
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

declare void @BLI_ticket_mutex_lock(ptr noundef) local_unnamed_addr #1

declare void @BLI_ticket_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_job_main_thread_lock_release(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 28
  %3 = load i8, ptr %2, align 8, !tbaa !44
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %7) #9
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_jobs_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp ne ptr %2, null
  %8 = icmp ne i32 %5, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %10, %24
  %15 = phi ptr [ %25, %24 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.wmJob, ptr %15, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.wmJob, ptr %15, i64 0, i32 20
  %21 = load i16, ptr %20, align 2, !tbaa !47
  %22 = sext i16 %21 to i32
  %23 = icmp eq i32 %22, %5
  br i1 %23, label %50, label %24

24:                                               ; preds = %19, %14
  %25 = load ptr, ptr %15, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %14, !llvm.loop !48

27:                                               ; preds = %6
  br i1 %7, label %28, label %38

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %30

30:                                               ; preds = %34, %28
  %31 = phi ptr [ %29, %28 ], [ %32, %34 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wmJob, ptr %32, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %50, label %30, !llvm.loop !51

38:                                               ; preds = %27
  br i1 %8, label %39, label %50

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.wmJob, ptr %43, i64 0, i32 20
  %47 = load i16, ptr %46, align 2, !tbaa !47
  %48 = sext i16 %47 to i32
  %49 = icmp eq i32 %48, %5
  br i1 %49, label %50, label %41, !llvm.loop !52

50:                                               ; preds = %41, %45, %30, %34, %19, %24, %10, %38
  %51 = phi ptr [ null, %38 ], [ null, %10 ], [ null, %24 ], [ %15, %19 ], [ %32, %34 ], [ null, %30 ], [ %43, %45 ], [ null, %41 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %55 = tail call ptr %54(i64 noundef 312, ptr noundef nonnull @.str) #9
  %56 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  tail call void @BLI_addtail(ptr noundef nonnull %56, ptr noundef %55) #9
  %57 = getelementptr inbounds %struct.wmJob, ptr %55, i64 0, i32 2
  store ptr %1, ptr %57, align 8, !tbaa !53
  %58 = getelementptr inbounds %struct.wmJob, ptr %55, i64 0, i32 13
  store ptr %2, ptr %58, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.wmJob, ptr %55, i64 0, i32 14
  store i32 %4, ptr %59, align 8, !tbaa !54
  %60 = trunc i32 %5 to i16
  %61 = getelementptr inbounds %struct.wmJob, ptr %55, i64 0, i32 20
  store i16 %60, ptr %61, align 2, !tbaa !47
  %62 = getelementptr inbounds %struct.wmJob, ptr %55, i64 0, i32 22
  %63 = tail call ptr @BLI_strncpy(ptr noundef nonnull %62, ptr noundef %3, i64 noundef 128) #9
  %64 = tail call ptr @BLI_ticket_mutex_alloc() #9
  %65 = getelementptr inbounds %struct.wmJob, ptr %55, i64 0, i32 27
  store ptr %64, ptr %65, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_lock(ptr noundef %64) #9
  br label %66

66:                                               ; preds = %53, %50
  %67 = phi ptr [ %55, %53 ], [ %51, %50 ]
  ret ptr %67
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @BLI_ticket_mutex_alloc() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @WM_jobs_test(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br label %9

9:                                                ; preds = %7, %28
  %10 = phi ptr [ %5, %7 ], [ %29, %28 ]
  %11 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  br i1 %8, label %20, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 20
  %17 = load i16, ptr %16, align 2, !tbaa !47
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %28

20:                                               ; preds = %15, %14
  %21 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 16
  %22 = load i16, ptr %21, align 2, !tbaa !55
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 15
  %26 = load i16, ptr %25, align 4, !tbaa !56
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %9, %24, %15
  %29 = load ptr, ptr %10, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9, !llvm.loop !57

31:                                               ; preds = %24, %20, %28, %3
  %32 = phi i8 [ 0, %3 ], [ 1, %24 ], [ 1, %20 ], [ 0, %28 ]
  ret i8 %32
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local float @WM_jobs_progress(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !51

14:                                               ; preds = %6, %10, %2
  %15 = phi ptr [ null, %2 ], [ %8, %10 ], [ null, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmJob, ptr %15, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !54
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.wmJob, ptr %15, i64 0, i32 21
  %24 = load float, ptr %23, align 8, !tbaa !58
  br label %25

25:                                               ; preds = %14, %17, %22
  %26 = phi float [ %24, %22 ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %14 ]
  ret float %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_jobs_name(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !51

14:                                               ; preds = %6, %10, %2
  %15 = phi ptr [ null, %2 ], [ %8, %10 ], [ null, %6 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.wmJob, ptr %15, i64 0, i32 22
  %18 = select i1 %16, ptr null, ptr %17
  ret ptr %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_jobs_customdata(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !51

14:                                               ; preds = %6, %10, %2
  %15 = phi ptr [ null, %2 ], [ %8, %10 ], [ null, %6 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmJob, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmJob, ptr %15, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  br label %24

24:                                               ; preds = %21, %17, %14
  %25 = phi ptr [ null, %14 ], [ %23, %21 ], [ %19, %17 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @WM_jobs_customdata_get(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_jobs_customdata_from_type(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 20
  %12 = load i16, ptr %11, align 2, !tbaa !47
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %6, !llvm.loop !52

15:                                               ; preds = %6, %10, %2
  %16 = phi ptr [ null, %2 ], [ %8, %10 ], [ null, %6 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.wmJob, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmJob, ptr %16, i64 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  br label %25

25:                                               ; preds = %22, %18, %15
  %26 = phi ptr [ null, %15 ], [ %24, %22 ], [ %20, %18 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @WM_jobs_is_running(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 16
  %3 = load i16, ptr %2, align 2, !tbaa !55
  %4 = trunc i16 %3 to i8
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_jobs_customdata_set(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  tail call void %9(ptr noundef nonnull %5) #9
  br label %10

10:                                               ; preds = %7, %3
  store ptr %1, ptr %4, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 7
  store ptr %2, ptr %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 16
  %13 = load i16, ptr %12, align 2, !tbaa !55
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 19
  store i16 1, ptr %16, align 4, !tbaa !62
  br label %17

17:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @WM_jobs_timer(ptr nocapture noundef writeonly %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 9
  store double %1, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 11
  store i32 %2, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 12
  store i32 %3, ptr %7, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @WM_jobs_callbacks(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 5
  store ptr %1, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 6
  store ptr %3, ptr %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 8
  store ptr %4, ptr %9, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_jobs_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 16
  %4 = load i16, ptr %3, align 2, !tbaa !55
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 19
  store i16 1, ptr %7, align 4, !tbaa !62
  br label %98

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %96, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %96, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 14
  %18 = load i32, ptr %17, align 8, !tbaa !54
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = and i32 %18, -9
  store i32 %22, ptr %17, align 8, !tbaa !54
  br label %60

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %60, label %27

27:                                               ; preds = %23
  %28 = and i32 %18, 2
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %18, 1
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %27, %56
  %33 = phi ptr [ %25, %27 ], [ %58, %56 ]
  %34 = phi i8 [ 0, %27 ], [ %57, %56 ]
  %35 = icmp eq ptr %33, %1
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.wmJob, ptr %33, i64 0, i32 16
  %38 = load i16, ptr %37, align 2, !tbaa !55
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  br i1 %29, label %41, label %46

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.wmJob, ptr %33, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !66
  %44 = icmp eq ptr %43, %14
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  br i1 %29, label %53, label %46

46:                                               ; preds = %40, %45
  %47 = getelementptr inbounds %struct.wmJob, ptr %33, i64 0, i32 14
  %48 = load i32, ptr %47, align 8, !tbaa !54
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = or i1 %50, %31
  %52 = select i1 %50, i8 %34, i8 1
  br i1 %51, label %56, label %54

53:                                               ; preds = %45
  br i1 %31, label %56, label %54

54:                                               ; preds = %46, %53
  %55 = getelementptr inbounds %struct.wmJob, ptr %33, i64 0, i32 19
  store i16 1, ptr %55, align 4, !tbaa !62
  br label %56

56:                                               ; preds = %46, %54, %53, %41, %36, %32
  %57 = phi i8 [ %34, %32 ], [ %34, %41 ], [ %52, %46 ], [ 1, %54 ], [ 1, %53 ], [ %34, %36 ]
  %58 = load ptr, ptr %33, align 8, !tbaa !45
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %32, !llvm.loop !70

60:                                               ; preds = %56, %23, %21
  %61 = phi i8 [ 1, %21 ], [ 0, %23 ], [ %57, %56 ]
  %62 = zext nneg i8 %61 to i16
  %63 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 15
  store i16 %62, ptr %63, align 4, !tbaa !56
  %64 = icmp eq i8 %61, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 23
  store ptr %10, ptr %66, align 8, !tbaa !60
  %67 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 24
  store ptr %68, ptr %69, align 8, !tbaa !71
  store ptr null, ptr %67, align 8, !tbaa !61
  store ptr null, ptr %9, align 8, !tbaa !59
  store i16 1, ptr %3, align 2, !tbaa !55
  %70 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !67
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  tail call void %71(ptr noundef nonnull %10) #9
  br label %74

74:                                               ; preds = %73, %65
  %75 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 19
  store i16 0, ptr %75, align 4, !tbaa !62
  %76 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 17
  store i16 0, ptr %76, align 8, !tbaa !72
  %77 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 21
  store float 0.000000e+00, ptr %77, align 8, !tbaa !58
  %78 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 25
  tail call void @BLI_init_threads(ptr noundef nonnull %78, ptr noundef nonnull @do_job_thread, i32 noundef 1) #9
  tail call void @BLI_insert_thread(ptr noundef nonnull %78, ptr noundef %1) #9
  br label %79

79:                                               ; preds = %74, %60
  %80 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 10
  %81 = load ptr, ptr %80, align 8, !tbaa !73
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 9
  %87 = load double, ptr %86, align 8, !tbaa !63
  %88 = tail call ptr @WM_event_add_timer(ptr noundef %0, ptr noundef %85, i32 noundef 276, double noundef %87) #9
  store ptr %88, ptr %80, align 8, !tbaa !73
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !74
  %91 = and i32 %90, 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = tail call double @PIL_check_seconds_timer() #9
  %95 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 26
  store double %94, ptr %95, align 8, !tbaa !76
  br label %98

96:                                               ; preds = %12, %8
  %97 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %98

98:                                               ; preds = %96, %93, %89, %6
  ret void
}

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef ptr @do_job_thread(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 18
  %8 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 21
  tail call void %3(ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %9 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 17
  store i16 1, ptr %9, align 8, !tbaa !72
  ret ptr null
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @WM_jobs_kill_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %6)
  %7 = load ptr, ptr %2, align 8, !tbaa !77
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !81

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 16
  %4 = load i16, ptr %3, align 2, !tbaa !55
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 19
  store i16 1, ptr %7, align 4, !tbaa !62
  %8 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 28
  store i8 1, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %10) #9
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_lock(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 25
  tail call void @BLI_end_threads(ptr noundef nonnull %12) #9
  %13 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  tail call void %14(ptr noundef %18) #9
  br label %19

19:                                               ; preds = %6, %16, %2
  %20 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  tail call void @WM_event_remove_timer(ptr noundef %0, ptr noundef %25, ptr noundef nonnull %21) #9
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  tail call void %32(ptr noundef nonnull %28) #9
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  tail call void %39(ptr noundef nonnull %35) #9
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  tail call void @BLI_remlink(ptr noundef nonnull %41, ptr noundef %1) #9
  %42 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 27
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %43) #9
  %44 = load ptr, ptr %42, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_free(ptr noundef %44) #9
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %45(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_jobs_kill_all_except(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %8, %13 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = getelementptr inbounds %struct.wmJob, ptr %7, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %7)
  br label %13

13:                                               ; preds = %6, %12
  %14 = icmp eq ptr %8, null
  br i1 %14, label %15, label %6, !llvm.loop !83

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_jobs_kill_type(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br label %9

9:                                                ; preds = %7, %22
  %10 = phi ptr [ %5, %7 ], [ %11, %22 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  br i1 %8, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 20
  %18 = load i16, ptr %17, align 2, !tbaa !47
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %10)
  br label %22

22:                                               ; preds = %12, %21, %16
  %23 = icmp eq ptr %11, null
  br i1 %23, label %24, label %9, !llvm.loop !84

24:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_jobs_stop(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3, %22
  %8 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %7
  %17 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 16
  %18 = load i16, ptr %17, align 2, !tbaa !55
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 19
  store i16 1, ptr %21, align 4, !tbaa !62
  br label %22

22:                                               ; preds = %12, %20, %16
  %23 = load ptr, ptr %8, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !85

25:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_jobs_kill(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3, %20
  %8 = phi ptr [ %21, %20 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 8, !tbaa !82
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %8)
  br label %20

18:                                               ; preds = %12
  %19 = load ptr, ptr %8, align 8, !tbaa !82
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !86

23:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_jobs_timer_ended(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmJob, ptr %6, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !87

12:                                               ; preds = %8
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %6)
  br label %13

13:                                               ; preds = %4, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_jobs_timer(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %130, label %7

7:                                                ; preds = %3, %126
  %8 = phi ptr [ %11, %126 ], [ %5, %3 ]
  %9 = phi float [ %128, %126 ], [ 0.000000e+00, %3 ]
  %10 = phi float [ %127, %126 ], [ 0.000000e+00, %3 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, %2
  %15 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 25
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = icmp eq ptr %16, null
  br i1 %14, label %18, label %111

18:                                               ; preds = %7
  br i1 %17, label %106, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 27
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %21) #9
  %22 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_lock(ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 18
  %24 = load i16, ptr %23, align 2, !tbaa !89
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 17
  %28 = load i16, ptr %27, align 8, !tbaa !72
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26, %19
  %31 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 23
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  tail call void %32(ptr noundef %36) #9
  br label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %39, ptr noundef null) #9
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 14
  %44 = load i32, ptr %43, align 8, !tbaa !54
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 17104896, ptr noundef null) #9
  br label %48

48:                                               ; preds = %47, %42
  store i16 0, ptr %23, align 2, !tbaa !89
  br label %49

49:                                               ; preds = %48, %26
  %50 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 17
  %51 = load i16, ptr %50, align 8, !tbaa !72
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !69
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 23
  %59 = load ptr, ptr %58, align 8, !tbaa !60
  tail call void %55(ptr noundef %59) #9
  br label %60

60:                                               ; preds = %57, %53
  %61 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 24
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  %63 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 23
  %64 = load ptr, ptr %63, align 8, !tbaa !60
  tail call void %62(ptr noundef %64) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  %65 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !74
  %66 = and i32 %65, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 22
  %70 = tail call double @PIL_check_seconds_timer() #9
  %71 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 26
  %72 = load double, ptr %71, align 8, !tbaa !76
  %73 = fsub double %70, %72
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %69, double noundef %73)
  br label %75

75:                                               ; preds = %68, %60
  %76 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 16
  store i16 0, ptr %76, align 2, !tbaa !55
  %77 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 28
  store i8 1, ptr %77, align 8, !tbaa !44
  %78 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %78) #9
  %79 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_lock(ptr noundef %79) #9
  tail call void @BLI_end_threads(ptr noundef nonnull %15) #9
  store i8 0, ptr %77, align 8, !tbaa !44
  %80 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 12
  %81 = load i32, ptr %80, align 4, !tbaa !65
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %81, ptr noundef null) #9
  br label %84

84:                                               ; preds = %83, %75
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 17104896, ptr noundef null) #9
  %85 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !59
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call void @WM_jobs_start(ptr noundef %1, ptr noundef nonnull %8)
  br label %126

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !53
  %92 = load ptr, ptr %12, align 8, !tbaa !73
  tail call void @WM_event_remove_timer(ptr noundef %1, ptr noundef %91, ptr noundef %92) #9
  store ptr null, ptr %12, align 8, !tbaa !73
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %8) #9
  %93 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %93) #9
  %94 = load ptr, ptr %20, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_free(ptr noundef %94) #9
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %95(ptr noundef nonnull %8) #9
  br label %126

96:                                               ; preds = %49
  %97 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 14
  %98 = load i32, ptr %97, align 8, !tbaa !54
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %126, label %101

101:                                              ; preds = %96
  %102 = fadd float %9, 1.000000e+00
  %103 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 21
  %104 = load float, ptr %103, align 8, !tbaa !58
  %105 = fadd float %10, %104
  br label %126

106:                                              ; preds = %18
  %107 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 15
  %108 = load i16, ptr %107, align 4, !tbaa !56
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %106
  tail call void @WM_jobs_start(ptr noundef %1, ptr noundef nonnull %8)
  br label %126

111:                                              ; preds = %7
  br i1 %17, label %126, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 17
  %114 = load i16, ptr %113, align 8, !tbaa !72
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 14
  %118 = load i32, ptr %117, align 8, !tbaa !54
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = fadd float %9, 1.000000e+00
  %123 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 21
  %124 = load float, ptr %123, align 8, !tbaa !58
  %125 = fadd float %10, %124
  br label %126

126:                                              ; preds = %106, %110, %89, %88, %101, %96, %116, %121, %112, %111
  %127 = phi float [ %10, %88 ], [ %10, %89 ], [ %105, %101 ], [ %10, %96 ], [ %10, %110 ], [ %10, %106 ], [ %10, %112 ], [ %125, %121 ], [ %10, %116 ], [ %10, %111 ]
  %128 = phi float [ %9, %88 ], [ %9, %89 ], [ %102, %101 ], [ %9, %96 ], [ %9, %110 ], [ %9, %106 ], [ %9, %112 ], [ %122, %121 ], [ %9, %116 ], [ %9, %111 ]
  %129 = icmp eq ptr %11, null
  br i1 %129, label %130, label %7, !llvm.loop !90

130:                                              ; preds = %126, %3
  %131 = phi float [ 0.000000e+00, %3 ], [ %127, %126 ]
  %132 = phi float [ 0.000000e+00, %3 ], [ %128, %126 ]
  %133 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !91
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %130
  %137 = fcmp ogt float %132, 0.000000e+00
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = fdiv float %131, %132
  tail call void @WM_progress_set(ptr noundef nonnull %134, float noundef %139) #9
  br label %141

140:                                              ; preds = %136
  tail call void @WM_progress_clear(ptr noundef nonnull %134) #9
  br label %141

141:                                              ; preds = %138, %140, %130
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #1

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_progress_set(ptr noundef, float noundef) local_unnamed_addr #1

declare void @WM_progress_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @WM_jobs_has_running(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmJob, ptr %5, i64 0, i32 16
  %9 = load i16, ptr %8, align 2, !tbaa !55
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %3, label %11, !llvm.loop !92

11:                                               ; preds = %3, %7
  %12 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %12
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_ticket_mutex_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 296}
!35 = !{!"wmJob", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !36, i64 96, !40, i64 104, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !42, i64 120, !37, i64 124, !36, i64 256, !36, i64 264, !43, i64 272, !39, i64 288, !36, i64 296, !37, i64 304}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"double", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!35, !37, i64 304}
!45 = !{!36, !36, i64 0}
!46 = !{!35, !36, i64 96}
!47 = !{!35, !41, i64 118}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = distinct !{!52, !49, !50}
!53 = !{!35, !36, i64 16}
!54 = !{!35, !40, i64 104}
!55 = !{!35, !41, i64 110}
!56 = !{!35, !41, i64 108}
!57 = distinct !{!57, !49, !50}
!58 = !{!35, !42, i64 120}
!59 = !{!35, !36, i64 24}
!60 = !{!35, !36, i64 256}
!61 = !{!35, !36, i64 56}
!62 = !{!35, !41, i64 116}
!63 = !{!35, !39, i64 72}
!64 = !{!35, !40, i64 88}
!65 = !{!35, !40, i64 92}
!66 = !{!35, !36, i64 40}
!67 = !{!35, !36, i64 32}
!68 = !{!35, !36, i64 48}
!69 = !{!35, !36, i64 64}
!70 = distinct !{!70, !49, !50}
!71 = !{!35, !36, i64 264}
!72 = !{!35, !41, i64 112}
!73 = !{!35, !36, i64 80}
!74 = !{!75, !40, i64 2100}
!75 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !43, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!76 = !{!35, !39, i64 288}
!77 = !{!78, !36, i64 232}
!78 = !{!"wmWindowManager", !79, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !40, i64 152, !41, i64 156, !41, i64 158, !43, i64 160, !43, i64 176, !80, i64 192, !43, i64 232, !43, i64 248, !43, i64 264, !43, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !43, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!79 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!80 = !{!"ReportList", !43, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!81 = distinct !{!81, !49, !50}
!82 = !{!35, !36, i64 0}
!83 = distinct !{!83, !49, !50}
!84 = distinct !{!84, !49, !50}
!85 = distinct !{!85, !49, !50}
!86 = distinct !{!86, !49, !50}
!87 = distinct !{!87, !49, !50}
!88 = !{!35, !36, i64 272}
!89 = !{!35, !41, i64 114}
!90 = distinct !{!90, !49, !50}
!91 = !{!78, !36, i64 128}
!92 = distinct !{!92, !49, !50}
