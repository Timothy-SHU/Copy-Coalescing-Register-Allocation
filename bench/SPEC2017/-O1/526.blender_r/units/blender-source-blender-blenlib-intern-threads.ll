; ModuleID = 'blender/source/blender/blenlib/intern/threads.c'
source_filename = "blender/source/blender/blenlib/intern/threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ThreadSlot = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.TicketMutex = type { i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.ThreadQueue = type { ptr, i32, i32, i32, i32, i32 }

@task_scheduler = internal unnamed_addr global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"threadslot\00", align 1
@thread_levels = internal unnamed_addr global i32 0, align 4
@MEM_set_lock_callback = external local_unnamed_addr global ptr, align 8
@num_threads_override = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ThreadMutex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"ThreadRWMutex\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"TicketMutex\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ThreadQueue\00", align 1
@str = private unnamed_addr constant [36 x i8] c"ERROR: could not insert thread slot\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLI_threadapi_init() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_spin_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_threadapi_exit() local_unnamed_addr #2 {
  %1 = load ptr, ptr @task_scheduler, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @BLI_task_scheduler_free(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare void @BLI_task_scheduler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_spin_end(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_task_scheduler_get() local_unnamed_addr #2 {
  %1 = load ptr, ptr @task_scheduler, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @BLI_task_scheduler_create(i32 noundef 1) #14
  store ptr %4, ptr @task_scheduler, align 8, !tbaa !38
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @task_scheduler, align 8, !tbaa !38
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BLI_system_thread_count() local_unnamed_addr #4 {
  ret i32 1
}

declare ptr @BLI_task_scheduler_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define dso_local void @BLI_init_threads(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp ne ptr %0, null
  %5 = icmp sgt i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %9 = tail call ptr %8(i64 noundef 40, ptr noundef nonnull @.str) #14
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %9) #14
  %10 = getelementptr inbounds %struct.ThreadSlot, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.ThreadSlot, ptr %9, i64 0, i32 5
  store i32 1, ptr %11, align 4, !tbaa !42
  br label %12

12:                                               ; preds = %7, %3
  %13 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr @MEM_set_lock_callback, align 8, !tbaa !38
  tail call void %16(ptr noundef nonnull @BLI_lock_malloc_thread, ptr noundef nonnull @BLI_unlock_malloc_thread) #14
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr @thread_levels, align 4, !tbaa !34
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @BLI_lock_malloc_thread() #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @BLI_unlock_malloc_thread() #4 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_available_threads(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %12, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %4 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %6, %10
  %12 = load ptr, ptr %5, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !43

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 0, %1 ], [ %11, %4 ]
  ret i32 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_available_thread_index(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %12, %10 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = add nuw nsw i32 %6, 1
  %12 = load ptr, ptr %5, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !46

14:                                               ; preds = %4, %10, %1
  %15 = phi i32 [ 0, %1 ], [ %6, %4 ], [ 0, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @BLI_thread_is_main() local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_insert_thread(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !42
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11, !llvm.loop !47

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !42
  %13 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 3
  store ptr %1, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = tail call ptr %15(ptr noundef %1) #14
  br label %19

17:                                               ; preds = %3
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %19

19:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_remove_thread(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.ThreadSlot, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  store ptr null, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.ThreadSlot, ptr %6, i64 0, i32 5
  store i32 1, ptr %11, align 4, !tbaa !42
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !49

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_remove_thread_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2, %16
  %6 = phi ptr [ %18, %16 ], [ %3, %2 ]
  %7 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ThreadSlot, ptr %6, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !42
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ThreadSlot, ptr %6, i64 0, i32 5
  %15 = getelementptr inbounds %struct.ThreadSlot, ptr %6, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !48
  store i32 1, ptr %14, align 4, !tbaa !42
  br label %20

16:                                               ; preds = %5, %9
  %17 = add nuw nsw i32 %7, 1
  %18 = load ptr, ptr %6, align 8, !tbaa !38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5, !llvm.loop !50

20:                                               ; preds = %16, %2, %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_remove_threads(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !48
  store i32 1, ptr %6, align 4, !tbaa !42
  br label %11

11:                                               ; preds = %4, %9
  %12 = load ptr, ptr %5, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !51

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_end_threads(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #14
  br label %7

7:                                                ; preds = %6, %3, %1
  %8 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr @thread_levels, align 4, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_set_lock_callback, align 8, !tbaa !38
  tail call void %12(ptr noundef null, ptr noundef null) #14
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLI_system_num_threads_override_set(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @num_threads_override, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_system_num_threads_override_get() local_unnamed_addr #8 {
  %1 = load i32, ptr @num_threads_override, align 4, !tbaa !34
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_lock_thread(i32 noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_unlock_thread(i32 noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_mutex_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_mutex_lock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_mutex_unlock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BLI_mutex_trylock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_mutex_end(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_mutex_alloc() local_unnamed_addr #2 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 4, ptr noundef nonnull @.str.2) #14
  store i32 0, ptr %2, align 4, !tbaa !34
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_mutex_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %2(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_spin_lock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_spin_unlock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rw_mutex_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_rw_mutex_lock(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_rw_mutex_unlock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_rw_mutex_end(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_rw_mutex_alloc() local_unnamed_addr #2 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 4, ptr noundef nonnull @.str.3) #14
  store i32 0, ptr %2, align 4, !tbaa !34
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_rw_mutex_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %2(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_ticket_mutex_alloc() local_unnamed_addr #2 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.4) #14
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_ticket_mutex_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %2(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_ticket_mutex_lock(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.TicketMutex, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !54
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_ticket_mutex_unlock(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.TicketMutex, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !56
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_condition_init(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_condition_wait(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_condition_notify_one(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_condition_notify_all(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @BLI_condition_end(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_thread_queue_init() local_unnamed_addr #2 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 32, ptr noundef nonnull @.str.5) #14
  %3 = tail call ptr @BLI_gsqueue_new(i64 noundef 8) #14
  store ptr %3, ptr %2, align 8, !tbaa !57
  ret ptr %2
}

declare ptr @BLI_gsqueue_new(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BLI_thread_queue_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @BLI_gsqueue_free(ptr noundef %2) #14
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %3(ptr noundef nonnull %0) #14
  ret void
}

declare void @BLI_gsqueue_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BLI_thread_queue_push(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  call void @BLI_gsqueue_push(ptr noundef %4, ptr noundef nonnull %3) #14
  ret void
}

declare void @BLI_gsqueue_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_thread_queue_pop(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !38
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %4 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %3) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !57
  %6 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %5) #14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !57
  call void @BLI_gsqueue_pop(ptr noundef %9, ptr noundef nonnull %2) #14
  %10 = load ptr, ptr %0, align 8, !tbaa !57
  %11 = call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %10) #14
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %2, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret ptr %13
}

declare zeroext i8 @BLI_gsqueue_is_empty(ptr noundef) local_unnamed_addr #3

declare void @BLI_gsqueue_pop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_thread_queue_pop_timeout(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !38
  %5 = tail call double @PIL_check_seconds_timer() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %6 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !57
  %8 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %7) #14
  %9 = load ptr, ptr %0, align 8, !tbaa !57
  %10 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %9) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  call void @BLI_gsqueue_pop(ptr noundef %13, ptr noundef nonnull %4) #14
  %14 = load ptr, ptr %0, align 8, !tbaa !57
  %15 = call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %14) #14
  br label %16

16:                                               ; preds = %12, %2
  %17 = load ptr, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %17
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_thread_queue_size(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = tail call i32 @BLI_gsqueue_size(ptr noundef %2) #14
  ret i32 %3
}

declare i32 @BLI_gsqueue_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @BLI_thread_queue_nowait(ptr noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ThreadQueue, ptr %0, i64 0, i32 4
  store volatile i32 1, ptr %2, align 4, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_thread_queue_wait_finish(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_begin_threaded_malloc() local_unnamed_addr #2 {
  %1 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_set_lock_callback, align 8, !tbaa !38
  tail call void %4(ptr noundef nonnull @BLI_lock_malloc_thread, ptr noundef nonnull @BLI_unlock_malloc_thread) #14
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @thread_levels, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_end_threaded_malloc() local_unnamed_addr #2 {
  %1 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @thread_levels, align 4, !tbaa !34
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load ptr, ptr @MEM_set_lock_callback, align 8, !tbaa !38
  tail call void %5(ptr noundef null, ptr noundef null) #14
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !39, i64 16}
!41 = !{!"ThreadSlot", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !35, i64 32, !35, i64 36}
!42 = !{!41, !35, i64 36}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !44, !45}
!47 = distinct !{!47, !44, !45}
!48 = !{!41, !39, i64 24}
!49 = distinct !{!49, !44, !45}
!50 = distinct !{!50, !44, !45}
!51 = distinct !{!51, !44, !45}
!52 = !{!53, !39, i64 0}
!53 = !{!"ListBase", !39, i64 0, !39, i64 8}
!54 = !{!55, !35, i64 12}
!55 = !{!"TicketMutex", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!56 = !{!55, !35, i64 8}
!57 = !{!58, !39, i64 0}
!58 = !{!"ThreadQueue", !39, i64 0, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24}
!59 = !{!58, !35, i64 20}
