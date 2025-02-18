; ModuleID = 'blender/source/blender/blenlib/intern/task.c'
source_filename = "blender/source/blender/blenlib/intern/task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TaskScheduler = type { ptr, ptr, i32, %struct.ListBase, i32, i32, i8 }
%struct.ListBase = type { ptr, ptr }
%struct.Task = type { ptr, ptr, ptr, ptr, i8, ptr }
%struct.TaskPool = type { ptr, i64, i64, i32, i32, ptr, i32, i8 }
%struct.ParallelRangeState = type { i32, i32, ptr, ptr, i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"TaskScheduler\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"TaskPool\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Task\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_task_scheduler_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str) #7
  %4 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 6
  store volatile i8 0, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 3
  %6 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @BLI_mutex_init(ptr noundef nonnull %6) #7
  %7 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 5
  tail call void @BLI_condition_init(ptr noundef nonnull %7) #7
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @BLI_system_thread_count() #7
  br label %11

11:                                               ; preds = %9, %1
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_mutex_init(ptr noundef) local_unnamed_addr #2

declare void @BLI_condition_init(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_system_thread_count() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_task_scheduler_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 4
  tail call void @BLI_mutex_lock(ptr noundef nonnull %2) #7
  %3 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 6
  store volatile i8 1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 5
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %4) #7
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %2) #7
  %5 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1, %17
  %9 = phi ptr [ %18, %17 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 4
  %11 = load i8, ptr %10, align 8, !tbaa !42
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  tail call void %14(ptr noundef %16) #7
  br label %17

17:                                               ; preds = %8, %13
  %18 = load ptr, ptr %9, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !45

20:                                               ; preds = %17, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #7
  tail call void @BLI_mutex_end(ptr noundef nonnull %2) #7
  tail call void @BLI_condition_end(ptr noundef nonnull %4) #7
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef %0) #7
  ret void
}

declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #2

declare void @BLI_condition_notify_all(ptr noundef) local_unnamed_addr #2

declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BLI_mutex_end(ptr noundef) local_unnamed_addr #2

declare void @BLI_condition_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_task_scheduler_num_threads(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = add nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_task_pool_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef nonnull @.str.1) #7
  store ptr %0, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 1
  store volatile i64 0, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 7
  store volatile i8 0, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 3
  tail call void @BLI_mutex_init(ptr noundef nonnull %7) #7
  %8 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 4
  tail call void @BLI_condition_init(ptr noundef nonnull %8) #7
  %9 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 5
  store ptr %1, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 6
  tail call void @BLI_mutex_init(ptr noundef nonnull %10) #7
  tail call void @BLI_begin_threaded_malloc() #7
  ret ptr %4
}

declare void @BLI_begin_threaded_malloc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLI_task_pool_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.TaskScheduler, ptr %2, i64 0, i32 4
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #7
  %4 = getelementptr inbounds %struct.TaskScheduler, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1, %24
  %8 = phi i64 [ %25, %24 ], [ 0, %1 ]
  %9 = phi ptr [ %10, %24 ], [ %5, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 4
  %16 = load i8, ptr %15, align 8, !tbaa !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  tail call void %19(ptr noundef %21) #7
  br label %22

22:                                               ; preds = %18, %14
  tail call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %9) #7
  %23 = add i64 %8, 1
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi i64 [ %23, %22 ], [ %8, %7 ]
  %26 = icmp eq ptr %10, null
  br i1 %26, label %27, label %7, !llvm.loop !58

27:                                               ; preds = %24, %1
  %28 = phi i64 [ 0, %1 ], [ %25, %24 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #7
  %29 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %29) #7
  %30 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %31 = load volatile i64, ptr %30, align 8, !tbaa !52
  %32 = sub i64 %31, %28
  store volatile i64 %32, ptr %30, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 2
  %34 = load volatile i64, ptr %33, align 8, !tbaa !59
  %35 = add i64 %34, %28
  store volatile i64 %35, ptr %33, align 8, !tbaa !59
  %36 = load volatile i64, ptr %30, align 8, !tbaa !52
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %39) #7
  br label %40

40:                                               ; preds = %27, %38
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %29) #7
  tail call void @BLI_mutex_end(ptr noundef nonnull %29) #7
  %41 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  tail call void @BLI_condition_end(ptr noundef nonnull %41) #7
  %42 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 6
  tail call void @BLI_mutex_end(ptr noundef nonnull %42) #7
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef nonnull %0) #7
  tail call void @BLI_end_threaded_malloc() #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_task_pool_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.TaskScheduler, ptr %2, i64 0, i32 4
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #7
  %4 = getelementptr inbounds %struct.TaskScheduler, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1, %24
  %8 = phi i64 [ %25, %24 ], [ 0, %1 ]
  %9 = phi ptr [ %10, %24 ], [ %5, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 4
  %16 = load i8, ptr %15, align 8, !tbaa !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  tail call void %19(ptr noundef %21) #7
  br label %22

22:                                               ; preds = %18, %14
  tail call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %9) #7
  %23 = add i64 %8, 1
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi i64 [ %23, %22 ], [ %8, %7 ]
  %26 = icmp eq ptr %10, null
  br i1 %26, label %27, label %7, !llvm.loop !58

27:                                               ; preds = %24, %1
  %28 = phi i64 [ 0, %1 ], [ %25, %24 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #7
  %29 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %29) #7
  %30 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %31 = load volatile i64, ptr %30, align 8, !tbaa !52
  %32 = sub i64 %31, %28
  store volatile i64 %32, ptr %30, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 2
  %34 = load volatile i64, ptr %33, align 8, !tbaa !59
  %35 = add i64 %34, %28
  store volatile i64 %35, ptr %33, align 8, !tbaa !59
  %36 = load volatile i64, ptr %30, align 8, !tbaa !52
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %39) #7
  br label %40

40:                                               ; preds = %27, %38
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %29) #7
  ret void
}

declare void @BLI_end_threaded_malloc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLI_task_pool_push(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 48, ptr noundef nonnull @.str.2) #7
  %8 = getelementptr inbounds %struct.Task, ptr %7, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.Task, ptr %7, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.Task, ptr %7, i64 0, i32 4
  store i8 %3, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.Task, ptr %7, i64 0, i32 5
  store ptr %0, ptr %11, align 8, !tbaa !57
  %12 = load ptr, ptr %0, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %13) #7
  %14 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %15 = load volatile i64, ptr %14, align 8, !tbaa !52
  %16 = add i64 %15, 1
  store volatile i64 %16, ptr %14, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %17) #7
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %13) #7
  %18 = getelementptr inbounds %struct.TaskScheduler, ptr %12, i64 0, i32 4
  tail call void @BLI_mutex_lock(ptr noundef nonnull %18) #7
  %19 = icmp eq i32 %4, 1
  %20 = getelementptr inbounds %struct.TaskScheduler, ptr %12, i64 0, i32 3
  br i1 %19, label %21, label %22

21:                                               ; preds = %5
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %7) #7
  br label %23

22:                                               ; preds = %5
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %7) #7
  br label %23

23:                                               ; preds = %21, %22
  %24 = getelementptr inbounds %struct.TaskScheduler, ptr %12, i64 0, i32 5
  tail call void @BLI_condition_notify_one(ptr noundef nonnull %24) #7
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %18) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_task_pool_work_and_wait(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #7
  %4 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.TaskScheduler, ptr %2, i64 0, i32 4
  %6 = getelementptr inbounds %struct.TaskScheduler, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  br label %10

10:                                               ; preds = %52, %1
  %11 = load volatile i64, ptr %4, align 8, !tbaa !52
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %10
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #7
  tail call void @BLI_mutex_lock(ptr noundef nonnull %5) #7
  br label %14

14:                                               ; preds = %18, %13
  %15 = phi ptr [ %6, %13 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Task, ptr %16, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %14, !llvm.loop !61

22:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %16) #7
  br label %23

23:                                               ; preds = %14, %22
  %24 = phi ptr [ %16, %22 ], [ null, %14 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %5) #7
  br i1 %17, label %25, label %46

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Task, ptr %24, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.Task, ptr %24, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  tail call void %27(ptr noundef nonnull %0, ptr noundef %29, i32 noundef 0) #7
  %30 = getelementptr inbounds %struct.Task, ptr %24, i64 0, i32 4
  %31 = load i8, ptr %30, align 8, !tbaa !42
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %35 = load ptr, ptr %28, align 8, !tbaa !44
  tail call void %34(ptr noundef %35) #7
  br label %36

36:                                               ; preds = %33, %25
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef %24) #7
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #7
  %38 = load volatile i64, ptr %4, align 8, !tbaa !52
  %39 = add i64 %38, -1
  store volatile i64 %39, ptr %4, align 8, !tbaa !52
  %40 = load volatile i64, ptr %7, align 8, !tbaa !59
  %41 = add i64 %40, 1
  store volatile i64 %41, ptr %7, align 8, !tbaa !59
  %42 = load volatile i64, ptr %4, align 8, !tbaa !52
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %8) #7
  br label %45

45:                                               ; preds = %36, %44
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #7
  br label %46

46:                                               ; preds = %45, %23
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #7
  %47 = load volatile i64, ptr %4, align 8, !tbaa !52
  %48 = icmp eq i64 %47, 0
  %49 = or i1 %17, %48
  %50 = select i1 %48, i32 3, i32 0
  br i1 %49, label %52, label %51

51:                                               ; preds = %46
  tail call void @BLI_condition_wait(ptr noundef nonnull %9, ptr noundef nonnull %3) #7
  br label %52

52:                                               ; preds = %46, %51
  %53 = phi i32 [ %50, %46 ], [ 0, %51 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %10, label %55

55:                                               ; preds = %52, %10
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #7
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_condition_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLI_task_pool_cancel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 7
  store volatile i8 1, ptr %2, align 4, !tbaa !53
  %3 = load ptr, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 4
  tail call void @BLI_mutex_lock(ptr noundef nonnull %4) #7
  %5 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %1, %25
  %9 = phi i64 [ %26, %25 ], [ 0, %1 ]
  %10 = phi ptr [ %11, %25 ], [ %6, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.Task, ptr %10, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Task, ptr %10, i64 0, i32 4
  %17 = load i8, ptr %16, align 8, !tbaa !42
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Task, ptr %10, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void %20(ptr noundef %22) #7
  br label %23

23:                                               ; preds = %19, %15
  tail call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef nonnull %10) #7
  %24 = add i64 %9, 1
  br label %25

25:                                               ; preds = %23, %8
  %26 = phi i64 [ %24, %23 ], [ %9, %8 ]
  %27 = icmp eq ptr %11, null
  br i1 %27, label %28, label %8, !llvm.loop !58

28:                                               ; preds = %25, %1
  %29 = phi i64 [ 0, %1 ], [ %26, %25 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %4) #7
  %30 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %30) #7
  %31 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %32 = load volatile i64, ptr %31, align 8, !tbaa !52
  %33 = sub i64 %32, %29
  store volatile i64 %33, ptr %31, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 2
  %35 = load volatile i64, ptr %34, align 8, !tbaa !59
  %36 = add i64 %35, %29
  store volatile i64 %36, ptr %34, align 8, !tbaa !59
  %37 = load volatile i64, ptr %31, align 8, !tbaa !52
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %40) #7
  br label %41

41:                                               ; preds = %28, %39
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %30) #7
  tail call void @BLI_mutex_lock(ptr noundef nonnull %30) #7
  %42 = load volatile i64, ptr %31, align 8, !tbaa !52
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  br label %46

46:                                               ; preds = %44, %46
  tail call void @BLI_condition_wait(ptr noundef nonnull %45, ptr noundef nonnull %30) #7
  %47 = load volatile i64, ptr %31, align 8, !tbaa !52
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %46, !llvm.loop !62

49:                                               ; preds = %46, %41
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %30) #7
  store volatile i8 0, ptr %2, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local zeroext i8 @BLI_task_pool_canceled(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 7
  %3 = load volatile i8, ptr %2, align 4, !tbaa !53
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_task_pool_userdata(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @BLI_task_pool_user_mutex(ptr noundef readnone %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 6
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @BLI_task_pool_tasks_done(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 2
  %3 = load volatile i64, ptr %2, align 8, !tbaa !59
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_task_parallel_range_ex(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ParallelRangeState, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %7 = sub nsw i32 %1, %0
  %8 = icmp slt i32 %7, %4
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = icmp slt i32 %0, %1
  br i1 %10, label %11, label %55

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %13, %11 ], [ %0, %9 ]
  tail call void %3(ptr noundef %2, i32 noundef %12) #7
  %13 = add i32 %12, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %55, label %11, !llvm.loop !63

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 5
  call void @BLI_spin_init(ptr noundef nonnull %16) #7
  store i32 %0, ptr %6, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 1
  store i32 %1, ptr %17, align 4, !tbaa !66
  %18 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 2
  store ptr %2, ptr %18, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 3
  store ptr %3, ptr %19, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 4
  store i32 %0, ptr %20, align 8, !tbaa !69
  %21 = call ptr @BLI_task_scheduler_get() #7
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = call ptr %22(i64 noundef 48, ptr noundef nonnull @.str.1) #7
  store ptr %21, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.TaskPool, ptr %23, i64 0, i32 1
  store volatile i64 0, ptr %24, align 8, !tbaa !52
  %25 = getelementptr inbounds %struct.TaskPool, ptr %23, i64 0, i32 7
  store volatile i8 0, ptr %25, align 4, !tbaa !53
  %26 = getelementptr inbounds %struct.TaskPool, ptr %23, i64 0, i32 3
  call void @BLI_mutex_init(ptr noundef nonnull %26) #7
  %27 = getelementptr inbounds %struct.TaskPool, ptr %23, i64 0, i32 4
  call void @BLI_condition_init(ptr noundef nonnull %27) #7
  %28 = getelementptr inbounds %struct.TaskPool, ptr %23, i64 0, i32 5
  store ptr %6, ptr %28, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.TaskPool, ptr %23, i64 0, i32 6
  call void @BLI_mutex_init(ptr noundef nonnull %29) #7
  call void @BLI_begin_threaded_malloc() #7
  %30 = getelementptr inbounds %struct.TaskScheduler, ptr %21, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !48
  %32 = shl i32 %31, 1
  %33 = add i32 %32, 2
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %15, %35
  %36 = phi i32 [ %49, %35 ], [ 0, %15 ]
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %38 = call ptr %37(i64 noundef 48, ptr noundef nonnull @.str.2) #7
  %39 = getelementptr inbounds %struct.Task, ptr %38, i64 0, i32 2
  store ptr @parallel_range_func, ptr %39, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.Task, ptr %38, i64 0, i32 3
  store ptr null, ptr %40, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct.Task, ptr %38, i64 0, i32 4
  store i8 0, ptr %41, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.Task, ptr %38, i64 0, i32 5
  store ptr %23, ptr %42, align 8, !tbaa !57
  %43 = load ptr, ptr %23, align 8, !tbaa !49
  call void @BLI_mutex_lock(ptr noundef nonnull %26) #7
  %44 = load volatile i64, ptr %24, align 8, !tbaa !52
  %45 = add i64 %44, 1
  store volatile i64 %45, ptr %24, align 8, !tbaa !52
  call void @BLI_condition_notify_all(ptr noundef nonnull %27) #7
  call void @BLI_mutex_unlock(ptr noundef nonnull %26) #7
  %46 = getelementptr inbounds %struct.TaskScheduler, ptr %43, i64 0, i32 4
  call void @BLI_mutex_lock(ptr noundef nonnull %46) #7
  %47 = getelementptr inbounds %struct.TaskScheduler, ptr %43, i64 0, i32 3
  call void @BLI_addhead(ptr noundef nonnull %47, ptr noundef %38) #7
  %48 = getelementptr inbounds %struct.TaskScheduler, ptr %43, i64 0, i32 5
  call void @BLI_condition_notify_one(ptr noundef nonnull %48) #7
  call void @BLI_mutex_unlock(ptr noundef nonnull %46) #7
  %49 = add nuw nsw i32 %36, 1
  %50 = load i32, ptr %30, align 8, !tbaa !48
  %51 = shl i32 %50, 1
  %52 = add i32 %51, 2
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %35, label %54, !llvm.loop !70

54:                                               ; preds = %35, %15
  call void @BLI_task_pool_work_and_wait(ptr noundef nonnull %23)
  call void @BLI_task_pool_free(ptr noundef nonnull %23)
  call void @BLI_spin_end(ptr noundef nonnull %16) #7
  br label %55

55:                                               ; preds = %11, %9, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  ret void
}

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_task_scheduler_get() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @parallel_range_func(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.ParallelRangeState, ptr %5, i64 0, i32 4
  %7 = getelementptr inbounds %struct.ParallelRangeState, ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ParallelRangeState, ptr %5, i64 0, i32 5
  %9 = getelementptr inbounds %struct.ParallelRangeState, ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ParallelRangeState, ptr %5, i64 0, i32 2
  br label %11

11:                                               ; preds = %29, %3
  %12 = phi i32 [ undef, %3 ], [ %26, %29 ]
  %13 = load i32, ptr %6, align 8, !tbaa !69
  %14 = load i32, ptr %7, align 4, !tbaa !66
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  tail call void @BLI_spin_lock(ptr noundef nonnull %8) #7
  %17 = load i32, ptr %6, align 8, !tbaa !69
  %18 = load i32, ptr %7, align 4, !tbaa !66
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = add nsw i32 %17, 1
  store i32 %21, ptr %6, align 8, !tbaa !69
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %17, %20 ], [ %12, %16 ]
  %24 = phi i8 [ 1, %20 ], [ 0, %16 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull %8) #7
  br label %25

25:                                               ; preds = %11, %22
  %26 = phi i32 [ %23, %22 ], [ %12, %11 ]
  %27 = phi i8 [ %24, %22 ], [ 0, %11 ]
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %9, align 8, !tbaa !68
  %31 = load ptr, ptr %10, align 8, !tbaa !67
  tail call void %30(ptr noundef %31, i32 noundef %26) #7
  br label %11, !llvm.loop !71

32:                                               ; preds = %25
  ret void
}

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLI_task_parallel_range(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @BLI_task_parallel_range_ex(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 64)
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_condition_notify_one(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !36, i64 48}
!39 = !{!"TaskScheduler", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 24, !40, i64 40, !40, i64 44, !36, i64 48}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ListBase", !35, i64 0, !35, i64 8}
!42 = !{!43, !36, i64 32}
!43 = !{!"Task", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !35, i64 40}
!44 = !{!43, !35, i64 24}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!39, !40, i64 16}
!49 = !{!50, !35, i64 0}
!50 = !{!"TaskPool", !35, i64 0, !51, i64 8, !51, i64 16, !40, i64 24, !40, i64 28, !35, i64 32, !40, i64 40, !36, i64 44}
!51 = !{!"long", !36, i64 0}
!52 = !{!50, !51, i64 8}
!53 = !{!50, !36, i64 44}
!54 = !{!50, !35, i64 32}
!55 = !{!39, !35, i64 24}
!56 = !{!43, !35, i64 0}
!57 = !{!43, !35, i64 40}
!58 = distinct !{!58, !46, !47}
!59 = !{!50, !51, i64 16}
!60 = !{!43, !35, i64 16}
!61 = distinct !{!61, !46, !47}
!62 = distinct !{!62, !46, !47}
!63 = distinct !{!63, !46, !47}
!64 = !{!65, !40, i64 0}
!65 = !{!"ParallelRangeState", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 28}
!66 = !{!65, !40, i64 4}
!67 = !{!65, !35, i64 8}
!68 = !{!65, !35, i64 16}
!69 = !{!65, !40, i64 24}
!70 = distinct !{!70, !46, !47}
!71 = distinct !{!71, !46, !47}
