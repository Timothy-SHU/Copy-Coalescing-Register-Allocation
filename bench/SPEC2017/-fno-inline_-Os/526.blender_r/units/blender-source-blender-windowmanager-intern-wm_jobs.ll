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

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: optsize
declare void @BLI_ticket_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ticket_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_jobs_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @wm_job_find(ptr noundef %0, ptr noundef %2, i32 noundef %5) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %11 = tail call ptr %10(i64 noundef 312, ptr noundef nonnull @.str) #9
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.wmJob, ptr %11, i64 0, i32 2
  store ptr %1, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.wmJob, ptr %11, i64 0, i32 13
  store ptr %2, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.wmJob, ptr %11, i64 0, i32 14
  store i32 %4, ptr %15, align 8, !tbaa !48
  %16 = trunc i32 %5 to i16
  %17 = getelementptr inbounds %struct.wmJob, ptr %11, i64 0, i32 20
  store i16 %16, ptr %17, align 2, !tbaa !49
  %18 = getelementptr inbounds %struct.wmJob, ptr %11, i64 0, i32 22
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef %3, i64 noundef 128) #9
  %20 = tail call ptr @BLI_ticket_mutex_alloc() #9
  %21 = getelementptr inbounds %struct.wmJob, ptr %11, i64 0, i32 27
  store ptr %20, ptr %21, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_lock(ptr noundef %20) #9
  br label %22

22:                                               ; preds = %9, %6
  %23 = phi ptr [ %11, %9 ], [ %7, %6 ]
  ret ptr %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @wm_job_find(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !50 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %7, %21
  %12 = phi ptr [ %22, %21 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.wmJob, ptr %12, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.wmJob, ptr %12, i64 0, i32 20
  %18 = load i16, ptr %17, align 2, !tbaa !49
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %47, label %21

21:                                               ; preds = %11, %16
  %22 = load ptr, ptr %12, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %11, !llvm.loop !51

24:                                               ; preds = %3
  br i1 %4, label %25, label %35

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi ptr [ %26, %25 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wmJob, ptr %29, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %47, label %27, !llvm.loop !53

35:                                               ; preds = %24
  br i1 %5, label %36, label %47

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  br label %38

38:                                               ; preds = %42, %36
  %39 = phi ptr [ %37, %36 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.wmJob, ptr %40, i64 0, i32 20
  %44 = load i16, ptr %43, align 2, !tbaa !49
  %45 = sext i16 %44 to i32
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %47, label %38, !llvm.loop !54

47:                                               ; preds = %38, %42, %27, %31, %16, %21, %7, %35
  %48 = phi ptr [ null, %35 ], [ null, %7 ], [ %12, %16 ], [ null, %21 ], [ null, %27 ], [ %29, %31 ], [ null, %38 ], [ %40, %42 ]
  ret ptr %48
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_ticket_mutex_alloc() local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  br i1 %8, label %20, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 20
  %17 = load i16, ptr %16, align 2, !tbaa !49
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
  %32 = phi i8 [ 0, %3 ], [ 0, %28 ], [ 1, %20 ], [ 1, %24 ]
  ret i8 %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local float @WM_jobs_progress(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @wm_job_find(ptr noundef %0, ptr noundef %1, i32 noundef 0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmJob, ptr %3, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wmJob, ptr %3, i64 0, i32 21
  %12 = load float, ptr %11, align 8, !tbaa !58
  br label %13

13:                                               ; preds = %2, %5, %10
  %14 = phi float [ %12, %10 ], [ 0.000000e+00, %5 ], [ 0.000000e+00, %2 ]
  ret float %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_jobs_name(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @wm_job_find(ptr noundef %0, ptr noundef %1, i32 noundef 0) #10
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.wmJob, ptr %3, i64 0, i32 22
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_jobs_customdata(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @wm_job_find(ptr noundef %0, ptr noundef %1, i32 noundef 0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @WM_jobs_customdata_get(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @WM_jobs_customdata_from_type(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @wm_job_find(ptr noundef %0, ptr noundef null, i32 noundef %1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @WM_jobs_customdata_get(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @WM_jobs_is_running(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 16
  %3 = load i16, ptr %2, align 2, !tbaa !55
  %4 = trunc i16 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @WM_jobs_timer(ptr nocapture noundef writeonly %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 9
  store double %1, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 11
  store i32 %2, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 12
  store i32 %3, ptr %7, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_jobs_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 16
  %4 = load i16, ptr %3, align 2, !tbaa !55
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 19
  store i16 1, ptr %7, align 4, !tbaa !62
  br label %54

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %12
  tail call fastcc void @wm_jobs_test_suspend_stop(ptr noundef %0, ptr noundef nonnull %1) #10
  %17 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 15
  %18 = load i16, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load ptr, ptr %9, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 23
  store ptr %21, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 24
  store ptr %24, ptr %25, align 8, !tbaa !70
  store ptr null, ptr %23, align 8, !tbaa !61
  store ptr null, ptr %9, align 8, !tbaa !59
  store i16 1, ptr %3, align 2, !tbaa !55
  %26 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  tail call void %27(ptr noundef %21) #9
  br label %30

30:                                               ; preds = %29, %20
  %31 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 19
  store i16 0, ptr %31, align 4, !tbaa !62
  %32 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 17
  store i16 0, ptr %32, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 21
  store float 0.000000e+00, ptr %33, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 25
  tail call void @BLI_init_threads(ptr noundef nonnull %34, ptr noundef nonnull @do_job_thread, i32 noundef 1) #9
  tail call void @BLI_insert_thread(ptr noundef nonnull %34, ptr noundef nonnull %1) #9
  br label %35

35:                                               ; preds = %30, %16
  %36 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 9
  %43 = load double, ptr %42, align 8, !tbaa !63
  %44 = tail call ptr @WM_event_add_timer(ptr noundef %0, ptr noundef %41, i32 noundef 276, double noundef %43) #9
  store ptr %44, ptr %36, align 8, !tbaa !72
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !73
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = tail call double @PIL_check_seconds_timer() #9
  %51 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 26
  store double %50, ptr %51, align 8, !tbaa !75
  br label %54

52:                                               ; preds = %12, %8
  %53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %54

54:                                               ; preds = %52, %49, %45, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @wm_jobs_test_suspend_stop(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = and i32 %4, -9
  store i32 %8, ptr %3, align 8, !tbaa !48
  br label %50

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = and i32 %4, 2
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 5
  %17 = and i32 %4, 1
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %13, %44
  %20 = phi ptr [ %11, %13 ], [ %46, %44 ]
  %21 = phi i8 [ 0, %13 ], [ %45, %44 ]
  %22 = icmp eq ptr %20, %1
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmJob, ptr %20, i64 0, i32 16
  %25 = load i16, ptr %24, align 2, !tbaa !55
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  br i1 %15, label %28, label %35

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.wmJob, ptr %20, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  %31 = load ptr, ptr %16, align 8, !tbaa !66
  %32 = icmp ne ptr %30, %31
  %33 = or i1 %32, %18
  %34 = select i1 %32, i8 %21, i8 1
  br i1 %33, label %44, label %42

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.wmJob, ptr %20, i64 0, i32 14
  %37 = load i32, ptr %36, align 8, !tbaa !48
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = or i1 %39, %18
  %41 = select i1 %39, i8 %21, i8 1
  br i1 %40, label %44, label %42

42:                                               ; preds = %35, %28
  %43 = getelementptr inbounds %struct.wmJob, ptr %20, i64 0, i32 19
  store i16 1, ptr %43, align 4, !tbaa !62
  br label %44

44:                                               ; preds = %35, %28, %42, %19, %23
  %45 = phi i8 [ %21, %19 ], [ %34, %28 ], [ %41, %35 ], [ 1, %42 ], [ %21, %23 ]
  %46 = load ptr, ptr %20, align 8, !tbaa !45
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %19, !llvm.loop !77

48:                                               ; preds = %44
  %49 = zext nneg i8 %45 to i16
  br label %50

50:                                               ; preds = %48, %9, %7
  %51 = phi i16 [ 1, %7 ], [ 0, %9 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 15
  store i16 %51, ptr %52, align 4, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @do_job_thread(ptr noundef %0) #0 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 18
  %8 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 21
  tail call void %3(ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %9 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 17
  store i16 1, ptr %9, align 8, !tbaa !71
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_jobs_kill_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call fastcc void @wm_jobs_kill_job(ptr noundef nonnull %0, ptr noundef nonnull %6) #10
  %7 = load ptr, ptr %2, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !83

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 16
  %4 = load i16, ptr %3, align 2, !tbaa !55
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 19
  store i16 1, ptr %7, align 4, !tbaa !62
  tail call fastcc void @wm_job_main_thread_yield(ptr noundef nonnull %1, i8 noundef zeroext 1) #10
  %8 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 25
  tail call void @BLI_end_threads(ptr noundef nonnull %8) #9
  %9 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  tail call void %10(ptr noundef %14) #9
  br label %15

15:                                               ; preds = %6, %12, %2
  %16 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  tail call void @WM_event_remove_timer(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %17) #9
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  tail call void %28(ptr noundef nonnull %24) #9
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 24
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  tail call void %35(ptr noundef nonnull %31) #9
  br label %36

36:                                               ; preds = %33, %29
  tail call fastcc void @wm_job_free(ptr noundef %0, ptr noundef nonnull %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_jobs_kill_all_except(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %8, %13 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.wmJob, ptr %7, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %7) #10
  br label %13

13:                                               ; preds = %6, %12
  %14 = icmp eq ptr %8, null
  br i1 %14, label %15, label %6, !llvm.loop !86

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_jobs_kill_type(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br label %9

9:                                                ; preds = %7, %22
  %10 = phi ptr [ %5, %7 ], [ %11, %22 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br i1 %8, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.wmJob, ptr %10, i64 0, i32 20
  %18 = load i16, ptr %17, align 2, !tbaa !49
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %10) #10
  br label %22

22:                                               ; preds = %12, %21, %16
  %23 = icmp eq ptr %11, null
  br i1 %23, label %24, label %9, !llvm.loop !87

24:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_jobs_stop(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3, %22
  %8 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !47
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
  br i1 %24, label %25, label %7, !llvm.loop !88

25:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_jobs_kill(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3, %20
  %8 = phi ptr [ %21, %20 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 8, !tbaa !85
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %8) #10
  br label %20

18:                                               ; preds = %12
  %19 = load ptr, ptr %8, align 8, !tbaa !85
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !89

23:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !90

12:                                               ; preds = %8
  tail call fastcc void @wm_jobs_kill_job(ptr noundef %0, ptr noundef nonnull %6) #10
  br label %13

13:                                               ; preds = %4, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_jobs_timer(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp eq ptr %5, null
  br i1 %6, label %123, label %7

7:                                                ; preds = %3, %116
  %8 = phi ptr [ %10, %116 ], [ %5, %3 ]
  %9 = phi <2 x float> [ %117, %116 ], [ zeroinitializer, %3 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = icmp eq ptr %12, %2
  %14 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %13, label %17, label %101

17:                                               ; preds = %7
  br i1 %16, label %96, label %18

18:                                               ; preds = %17
  tail call fastcc void @wm_job_main_thread_yield(ptr noundef nonnull %8, i8 noundef zeroext 0) #10
  %19 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 18
  %20 = load i16, ptr %19, align 2, !tbaa !92
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 17
  %24 = load i16, ptr %23, align 8, !tbaa !71
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %86, label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  tail call void %28(ptr noundef %32) #9
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !64
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %35, ptr noundef null) #9
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 14
  %40 = load i32, ptr %39, align 8, !tbaa !48
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 17104896, ptr noundef null) #9
  br label %44

44:                                               ; preds = %38, %43
  store i16 0, ptr %19, align 2, !tbaa !92
  %45 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 17
  %46 = load i16, ptr %45, align 8, !tbaa !71
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %86, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !69
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 23
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  tail call void %50(ptr noundef %54) #9
  br label %55

55:                                               ; preds = %52, %48
  %56 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 24
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 23
  %59 = load ptr, ptr %58, align 8, !tbaa !60
  tail call void %57(ptr noundef %59) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %60 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !73
  %61 = and i32 %60, 64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 22
  %65 = tail call double @PIL_check_seconds_timer() #9
  %66 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 26
  %67 = load double, ptr %66, align 8, !tbaa !75
  %68 = fsub double %65, %67
  %69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %64, double noundef %68) #10
  br label %70

70:                                               ; preds = %63, %55
  %71 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 16
  store i16 0, ptr %71, align 2, !tbaa !55
  tail call fastcc void @wm_job_main_thread_yield(ptr noundef nonnull %8, i8 noundef zeroext 1) #10
  tail call void @BLI_end_threads(ptr noundef nonnull %14) #9
  %72 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 28
  store i8 0, ptr %72, align 8, !tbaa !44
  %73 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 12
  %74 = load i32, ptr %73, align 4, !tbaa !65
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %74, ptr noundef null) #9
  br label %77

77:                                               ; preds = %76, %70
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 17104896, ptr noundef null) #9
  %78 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @WM_jobs_start(ptr noundef %1, ptr noundef nonnull %8) #10
  br label %116

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = load ptr, ptr %11, align 8, !tbaa !72
  tail call void @WM_event_remove_timer(ptr noundef %1, ptr noundef %84, ptr noundef %85) #9
  store ptr null, ptr %11, align 8, !tbaa !72
  tail call fastcc void @wm_job_free(ptr noundef %1, ptr noundef nonnull %8) #10
  br label %116

86:                                               ; preds = %22, %44
  %87 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 14
  %88 = load i32, ptr %87, align 8, !tbaa !48
  %89 = and i32 %88, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %116, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 21
  %93 = load float, ptr %92, align 8, !tbaa !58
  %94 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %93, i64 0
  %95 = fadd <2 x float> %9, %94
  br label %116

96:                                               ; preds = %17
  %97 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 15
  %98 = load i16, ptr %97, align 4, !tbaa !56
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  tail call void @WM_jobs_start(ptr noundef %1, ptr noundef nonnull %8) #10
  br label %116

101:                                              ; preds = %7
  br i1 %16, label %116, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 17
  %104 = load i16, ptr %103, align 8, !tbaa !71
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 14
  %108 = load i32, ptr %107, align 8, !tbaa !48
  %109 = and i32 %108, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.wmJob, ptr %8, i64 0, i32 21
  %113 = load float, ptr %112, align 8, !tbaa !58
  %114 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %113, i64 0
  %115 = fadd <2 x float> %9, %114
  br label %116

116:                                              ; preds = %96, %100, %82, %81, %91, %86, %106, %111, %102, %101
  %117 = phi <2 x float> [ %9, %81 ], [ %9, %82 ], [ %95, %91 ], [ %9, %86 ], [ %9, %100 ], [ %9, %96 ], [ %9, %102 ], [ %115, %111 ], [ %9, %106 ], [ %9, %101 ]
  %118 = icmp eq ptr %10, null
  br i1 %118, label %119, label %7, !llvm.loop !93

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !94
  %122 = icmp eq ptr %121, null
  br i1 %122, label %135, label %127

123:                                              ; preds = %3
  %124 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !94
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %133

127:                                              ; preds = %119
  %128 = extractelement <2 x float> %117, i64 1
  %129 = fcmp ogt float %128, 0.000000e+00
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = extractelement <2 x float> %117, i64 0
  %132 = fdiv float %131, %128
  tail call void @WM_progress_set(ptr noundef nonnull %121, float noundef %132) #9
  br label %135

133:                                              ; preds = %123, %127
  %134 = phi ptr [ %121, %127 ], [ %125, %123 ]
  tail call void @WM_progress_clear(ptr noundef nonnull %134) #9
  br label %135

135:                                              ; preds = %123, %130, %133, %119
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_job_main_thread_yield(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !95 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 28
  store i8 1, ptr %5, align 8, !tbaa !44
  br label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr inbounds %struct.wmJob, ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %8) #9
  %9 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_lock(ptr noundef %9) #9
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_job_free(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 10
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #9
  %4 = getelementptr inbounds %struct.wmJob, ptr %1, i64 0, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_unlock(ptr noundef %5) #9
  %6 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @BLI_ticket_mutex_free(ptr noundef %6) #9
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %7(ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @WM_progress_set(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_progress_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  br i1 %10, label %3, label %11, !llvm.loop !97

11:                                               ; preds = %3, %7
  %12 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %12
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ticket_mutex_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!46 = !{!35, !36, i64 16}
!47 = !{!35, !36, i64 96}
!48 = !{!35, !40, i64 104}
!49 = !{!35, !41, i64 118}
!50 = !{!"wm_jobs.c:wm_job_find"}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = !{!35, !41, i64 110}
!56 = !{!35, !41, i64 108}
!57 = distinct !{!57, !52}
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
!70 = !{!35, !36, i64 264}
!71 = !{!35, !41, i64 112}
!72 = !{!35, !36, i64 80}
!73 = !{!74, !40, i64 2100}
!74 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !43, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!75 = !{!35, !39, i64 288}
!76 = !{!"wm_jobs.c:wm_jobs_test_suspend_stop"}
!77 = distinct !{!77, !52}
!78 = !{!"wm_jobs.c:do_job_thread"}
!79 = !{!80, !36, i64 232}
!80 = !{!"wmWindowManager", !81, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !40, i64 152, !41, i64 156, !41, i64 158, !43, i64 160, !43, i64 176, !82, i64 192, !43, i64 232, !43, i64 248, !43, i64 264, !43, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !43, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!81 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!82 = !{!"ReportList", !43, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!83 = distinct !{!83, !52}
!84 = !{!"wm_jobs.c:wm_jobs_kill_job"}
!85 = !{!35, !36, i64 0}
!86 = distinct !{!86, !52}
!87 = distinct !{!87, !52}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = !{!35, !36, i64 272}
!92 = !{!35, !41, i64 114}
!93 = distinct !{!93, !52}
!94 = !{!80, !36, i64 128}
!95 = !{!"wm_jobs.c:wm_job_main_thread_yield"}
!96 = !{!"wm_jobs.c:wm_job_free"}
!97 = distinct !{!97, !52}
