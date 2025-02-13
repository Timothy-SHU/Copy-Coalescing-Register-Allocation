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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_task_scheduler_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str) #8
  %4 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 6
  store volatile i8 0, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 3
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #9
  %6 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 4
  tail call void @BLI_mutex_init(ptr noundef nonnull %6) #8
  %7 = getelementptr inbounds %struct.TaskScheduler, ptr %3, i64 0, i32 5
  tail call void @BLI_condition_init(ptr noundef nonnull %7) #8
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @BLI_system_thread_count() #8
  br label %11

11:                                               ; preds = %9, %1
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !42 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_mutex_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_condition_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_system_thread_count() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_task_scheduler_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 4
  tail call void @BLI_mutex_lock(ptr noundef nonnull %2) #8
  %3 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 6
  store volatile i8 1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 5
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %4) #8
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %2) #8
  %5 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1, %17
  %9 = phi ptr [ %18, %17 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 4
  %11 = load i8, ptr %10, align 8, !tbaa !43
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  tail call void %14(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %8, %13
  %18 = load ptr, ptr %9, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !46

20:                                               ; preds = %17, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #8
  tail call void @BLI_mutex_end(ptr noundef nonnull %2) #8
  tail call void @BLI_condition_end(ptr noundef nonnull %4) #8
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef %0) #8
  ret void
}

; Function Attrs: optsize
declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_condition_notify_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_mutex_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_condition_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_task_scheduler_num_threads(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = add nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_task_pool_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef nonnull @.str.1) #8
  store ptr %0, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 1
  store volatile i64 0, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 7
  store volatile i8 0, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 3
  tail call void @BLI_mutex_init(ptr noundef nonnull %7) #8
  %8 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 4
  tail call void @BLI_condition_init(ptr noundef nonnull %8) #8
  %9 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 5
  store ptr %1, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.TaskPool, ptr %4, i64 0, i32 6
  tail call void @BLI_mutex_init(ptr noundef nonnull %10) #8
  tail call void @BLI_begin_threaded_malloc() #8
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_begin_threaded_malloc() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_task_pool_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_task_pool_stop(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_end(ptr noundef nonnull %2) #8
  %3 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  tail call void @BLI_condition_end(ptr noundef nonnull %3) #8
  %4 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 6
  tail call void @BLI_mutex_end(ptr noundef nonnull %4) #8
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef %0) #8
  tail call void @BLI_end_threaded_malloc() #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_task_pool_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  tail call fastcc void @task_scheduler_clear(ptr noundef %2, ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_end_threaded_malloc() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_task_pool_push(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 48, ptr noundef nonnull @.str.2) #8
  %8 = getelementptr inbounds %struct.Task, ptr %7, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.Task, ptr %7, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.Task, ptr %7, i64 0, i32 4
  store i8 %3, ptr %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.Task, ptr %7, i64 0, i32 5
  store ptr %0, ptr %11, align 8, !tbaa !56
  %12 = load ptr, ptr %0, align 8, !tbaa !49
  tail call fastcc void @task_scheduler_push(ptr noundef %12, ptr noundef %7, i32 noundef %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @task_scheduler_push(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !57 {
  %4 = getelementptr inbounds %struct.Task, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  tail call fastcc void @task_pool_num_increase(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 4
  tail call void @BLI_mutex_lock(ptr noundef nonnull %6) #8
  %7 = icmp eq i32 %2, 1
  %8 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 3
  br i1 %7, label %9, label %10

9:                                                ; preds = %3
  tail call void @BLI_addhead(ptr noundef nonnull %8, ptr noundef nonnull %1) #8
  br label %11

10:                                               ; preds = %3
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 5
  tail call void @BLI_condition_notify_one(ptr noundef nonnull %12) #8
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_task_pool_work_and_wait(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #8
  %4 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.TaskScheduler, ptr %2, i64 0, i32 4
  %6 = getelementptr inbounds %struct.TaskScheduler, ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  br label %8

8:                                                ; preds = %40, %1
  %9 = load volatile i64, ptr %4, align 8, !tbaa !52
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #8
  tail call void @BLI_mutex_lock(ptr noundef nonnull %5) #8
  br label %12

12:                                               ; preds = %17, %11
  %13 = phi ptr [ %6, %11 ], [ %14, %17 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp ne ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %5) #8
  br label %34

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Task, ptr %14, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %12, !llvm.loop !58

21:                                               ; preds = %17
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %14) #8
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %5) #8
  %22 = getelementptr inbounds %struct.Task, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.Task, ptr %14, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  tail call void %23(ptr noundef nonnull %0, ptr noundef %25, i32 noundef 0) #8
  %26 = getelementptr inbounds %struct.Task, ptr %14, i64 0, i32 4
  %27 = load i8, ptr %26, align 8, !tbaa !43
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %31 = load ptr, ptr %24, align 8, !tbaa !45
  tail call void %30(ptr noundef %31) #8
  br label %32

32:                                               ; preds = %29, %21
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %33(ptr noundef nonnull %14) #8
  tail call fastcc void @task_pool_num_decrease(ptr noundef nonnull %0, i64 noundef 1) #9
  br label %34

34:                                               ; preds = %16, %32
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #8
  %35 = load volatile i64, ptr %4, align 8, !tbaa !52
  %36 = icmp eq i64 %35, 0
  %37 = or i1 %15, %36
  %38 = select i1 %36, i32 3, i32 0
  br i1 %37, label %40, label %39

39:                                               ; preds = %34
  tail call void @BLI_condition_wait(ptr noundef nonnull %7, ptr noundef nonnull %3) #8
  br label %40

40:                                               ; preds = %34, %39
  %41 = phi i32 [ %38, %34 ], [ 0, %39 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %8, label %43

43:                                               ; preds = %40, %8
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @task_pool_num_decrease(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !59 {
  %3 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #8
  %4 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %5 = load volatile i64, ptr %4, align 8, !tbaa !52
  %6 = sub i64 %5, %1
  store volatile i64 %6, ptr %4, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 2
  %8 = load volatile i64, ptr %7, align 8, !tbaa !60
  %9 = add i64 %8, %1
  store volatile i64 %9, ptr %7, align 8, !tbaa !60
  %10 = load volatile i64, ptr %4, align 8, !tbaa !52
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %13) #8
  br label %14

14:                                               ; preds = %12, %2
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare void @BLI_condition_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_task_pool_cancel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 7
  store volatile i8 1, ptr %2, align 4, !tbaa !53
  %3 = load ptr, ptr %0, align 8, !tbaa !49
  tail call fastcc void @task_scheduler_clear(ptr noundef %3, ptr noundef nonnull %0) #9
  %4 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %4) #8
  %5 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %6 = load volatile i64, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  br label %10

10:                                               ; preds = %8, %10
  tail call void @BLI_condition_wait(ptr noundef nonnull %9, ptr noundef nonnull %4) #8
  %11 = load volatile i64, ptr %5, align 8, !tbaa !52
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %10, !llvm.loop !61

13:                                               ; preds = %10, %1
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %4) #8
  store volatile i8 0, ptr %2, align 4, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @task_scheduler_clear(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !62 {
  %3 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 4
  tail call void @BLI_mutex_lock(ptr noundef nonnull %3) #8
  %4 = getelementptr inbounds %struct.TaskScheduler, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2, %24
  %8 = phi i64 [ %25, %24 ], [ 0, %2 ]
  %9 = phi ptr [ %10, %24 ], [ %5, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 4
  %16 = load i8, ptr %15, align 8, !tbaa !43
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Task, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  tail call void %19(ptr noundef %21) #8
  br label %22

22:                                               ; preds = %18, %14
  tail call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %9) #8
  %23 = add i64 %8, 1
  br label %24

24:                                               ; preds = %7, %22
  %25 = phi i64 [ %23, %22 ], [ %8, %7 ]
  %26 = icmp eq ptr %10, null
  br i1 %26, label %27, label %7, !llvm.loop !65

27:                                               ; preds = %24, %2
  %28 = phi i64 [ 0, %2 ], [ %25, %24 ]
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %3) #8
  tail call fastcc void @task_pool_num_decrease(ptr noundef %1, i64 noundef %28) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local zeroext i8 @BLI_task_pool_canceled(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 7
  %3 = load volatile i8, ptr %2, align 4, !tbaa !53
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_task_pool_userdata(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @BLI_task_pool_user_mutex(ptr noundef readnone %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @BLI_task_pool_tasks_done(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 2
  %3 = load volatile i64, ptr %2, align 8, !tbaa !60
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_task_parallel_range_ex(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ParallelRangeState, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %7 = sub nsw i32 %1, %0
  %8 = icmp slt i32 %7, %4
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = icmp slt i32 %0, %1
  br i1 %10, label %11, label %32

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %13, %11 ], [ %0, %9 ]
  tail call void %3(ptr noundef %2, i32 noundef %12) #8
  %13 = add i32 %12, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %32, label %11, !llvm.loop !66

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 5
  call void @BLI_spin_init(ptr noundef nonnull %16) #8
  store i32 %0, ptr %6, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 1
  store i32 %1, ptr %17, align 4, !tbaa !69
  %18 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 2
  store ptr %2, ptr %18, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 3
  store ptr %3, ptr %19, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.ParallelRangeState, ptr %6, i64 0, i32 4
  store i32 %0, ptr %20, align 8, !tbaa !72
  %21 = call ptr @BLI_task_scheduler_get() #8
  %22 = call ptr @BLI_task_pool_create(ptr noundef %21, ptr noundef nonnull %6) #9
  %23 = call i32 @BLI_task_scheduler_num_threads(ptr noundef %21) #9
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15, %25
  %26 = phi i32 [ %27, %25 ], [ 0, %15 ]
  call void @BLI_task_pool_push(ptr noundef %22, ptr noundef nonnull @parallel_range_func, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #9
  %27 = add nuw nsw i32 %26, 1
  %28 = call i32 @BLI_task_scheduler_num_threads(ptr noundef %21) #9
  %29 = shl nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %25, label %31, !llvm.loop !73

31:                                               ; preds = %25, %15
  call void @BLI_task_pool_work_and_wait(ptr noundef %22) #9
  call void @BLI_task_pool_free(ptr noundef %22) #9
  call void @BLI_spin_end(ptr noundef nonnull %16) #8
  br label %32

32:                                               ; preds = %11, %9, %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_get() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @parallel_range_func(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2) #0 !PGOFuncName !74 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %6 = call fastcc zeroext i8 @parallel_range_next_iter_get(ptr noundef %5, ptr noundef nonnull %4) #9, !range !75
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ParallelRangeState, ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ParallelRangeState, ptr %5, i64 0, i32 2
  br label %11

11:                                               ; preds = %8, %11
  %12 = load ptr, ptr %9, align 8, !tbaa !71
  %13 = load ptr, ptr %10, align 8, !tbaa !70
  %14 = load i32, ptr %4, align 4, !tbaa !76
  tail call void %12(ptr noundef %13, i32 noundef %14) #8
  %15 = call fastcc zeroext i8 @parallel_range_next_iter_get(ptr noundef %5, ptr noundef nonnull %4) #9, !range !75
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %11, !llvm.loop !77

17:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_task_parallel_range(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @BLI_task_parallel_range_ex(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 64) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @task_pool_num_increase(ptr noundef %0) unnamed_addr #0 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 3
  tail call void @BLI_mutex_lock(ptr noundef nonnull %2) #8
  %3 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 1
  %4 = load volatile i64, ptr %3, align 8, !tbaa !52
  %5 = add i64 %4, 1
  store volatile i64 %5, ptr %3, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.TaskPool, ptr %0, i64 0, i32 4
  tail call void @BLI_condition_notify_all(ptr noundef nonnull %6) #8
  tail call void @BLI_mutex_unlock(ptr noundef nonnull %2) #8
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_condition_notify_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @parallel_range_next_iter_get(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.ParallelRangeState, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.ParallelRangeState, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParallelRangeState, ptr %0, i64 0, i32 5
  tail call void @BLI_spin_lock(ptr noundef nonnull %9) #8
  %10 = load i32, ptr %3, align 8, !tbaa !72
  %11 = load i32, ptr %5, align 4, !tbaa !69
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = add nsw i32 %10, 1
  store i32 %14, ptr %3, align 8, !tbaa !72
  store i32 %10, ptr %1, align 4, !tbaa !76
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i8 [ 1, %13 ], [ 0, %8 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull %9) #8
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i8 [ %16, %15 ], [ 0, %2 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !36, i64 48}
!39 = !{!"TaskScheduler", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 24, !40, i64 40, !40, i64 44, !36, i64 48}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ListBase", !35, i64 0, !35, i64 8}
!42 = !{!"task.c:BLI_listbase_clear"}
!43 = !{!44, !36, i64 32}
!44 = !{!"Task", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !35, i64 40}
!45 = !{!44, !35, i64 24}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!39, !40, i64 16}
!49 = !{!50, !35, i64 0}
!50 = !{!"TaskPool", !35, i64 0, !51, i64 8, !51, i64 16, !40, i64 24, !40, i64 28, !35, i64 32, !40, i64 40, !36, i64 44}
!51 = !{!"long", !36, i64 0}
!52 = !{!50, !51, i64 8}
!53 = !{!50, !36, i64 44}
!54 = !{!50, !35, i64 32}
!55 = !{!44, !35, i64 16}
!56 = !{!44, !35, i64 40}
!57 = !{!"task.c:task_scheduler_push"}
!58 = distinct !{!58, !47}
!59 = !{!"task.c:task_pool_num_decrease"}
!60 = !{!50, !51, i64 16}
!61 = distinct !{!61, !47}
!62 = !{!"task.c:task_scheduler_clear"}
!63 = !{!39, !35, i64 24}
!64 = !{!44, !35, i64 0}
!65 = distinct !{!65, !47}
!66 = distinct !{!66, !47}
!67 = !{!68, !40, i64 0}
!68 = !{!"ParallelRangeState", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 28}
!69 = !{!68, !40, i64 4}
!70 = !{!68, !35, i64 8}
!71 = !{!68, !35, i64 16}
!72 = !{!68, !40, i64 24}
!73 = distinct !{!73, !47}
!74 = !{!"task.c:parallel_range_func"}
!75 = !{i8 0, i8 2}
!76 = !{!40, !40, i64 0}
!77 = distinct !{!77, !47}
!78 = !{!"task.c:task_pool_num_increase"}
!79 = !{!"task.c:parallel_range_next_iter_get"}
