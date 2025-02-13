; ModuleID = 'blender/source/blender/blenlib/intern/threads.c'
source_filename = "blender/source/blender/blenlib/intern/threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ThreadSlot = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.TicketMutex = type { i32, i32, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.ThreadQueue = type { ptr, i32, i32, i32, i32, i32 }

@_malloc_lock = internal global i32 0, align 4
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLI_threadapi_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @_malloc_lock) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_spin_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_threadapi_exit() local_unnamed_addr #2 {
  %1 = load ptr, ptr @task_scheduler, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @BLI_task_scheduler_free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_scheduler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_spin_end(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_task_scheduler_get() local_unnamed_addr #2 {
  %1 = load ptr, ptr @task_scheduler, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @BLI_task_scheduler_create(i32 noundef 1) #18
  store ptr %4, ptr @task_scheduler, align 8, !tbaa !38
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BLI_system_thread_count() local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_init_threads(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp ne ptr %0, null
  %5 = icmp sgt i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #17
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %9 = tail call ptr %8(i64 noundef 40, ptr noundef nonnull @.str) #18
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %9) #18
  %10 = getelementptr inbounds %struct.ThreadSlot, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.ThreadSlot, ptr %9, i64 0, i32 5
  store i32 1, ptr %11, align 4, !tbaa !42
  br label %12

12:                                               ; preds = %7, %3
  %13 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr @MEM_set_lock_callback, align 8, !tbaa !38
  tail call void %16(ptr noundef nonnull @BLI_lock_malloc_thread, ptr noundef nonnull @BLI_unlock_malloc_thread) #18
  %17 = load i32, ptr @thread_levels, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %17, %15 ], [ %13, %12 ]
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @thread_levels, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #1 !PGOFuncName !43 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @BLI_lock_malloc_thread() #4 !PGOFuncName !44 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @BLI_unlock_malloc_thread() #4 !PGOFuncName !45 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  br i1 %13, label %14, label %4, !llvm.loop !46

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 0, %1 ], [ %11, %4 ]
  ret i32 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  br i1 %13, label %14, label %4, !llvm.loop !48

14:                                               ; preds = %4, %10, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %10 ], [ %6, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @BLI_thread_is_main() local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %10, label %3, label %11, !llvm.loop !49

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !42
  %13 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 3
  store ptr %1, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.ThreadSlot, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = tail call ptr %15(ptr noundef %1) #18
  br label %19

17:                                               ; preds = %3
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %19

19:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_remove_thread(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.ThreadSlot, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  store ptr null, ptr %7, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.ThreadSlot, ptr %6, i64 0, i32 5
  store i32 1, ptr %11, align 4, !tbaa !42
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !51

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  store ptr null, ptr %15, align 8, !tbaa !50
  store i32 1, ptr %14, align 4, !tbaa !42
  br label %20

16:                                               ; preds = %5, %9
  %17 = add nuw nsw i32 %7, 1
  %18 = load ptr, ptr %6, align 8, !tbaa !38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5, !llvm.loop !52

20:                                               ; preds = %16, %2, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  store ptr null, ptr %10, align 8, !tbaa !50
  store i32 1, ptr %6, align 4, !tbaa !42
  br label %11

11:                                               ; preds = %4, %9
  %12 = load ptr, ptr %5, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !53

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_end_threads(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %0) #17, !range !54
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #18
  br label %7

7:                                                ; preds = %6, %3, %1
  %8 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr @thread_levels, align 4, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_set_lock_callback, align 8, !tbaa !38
  tail call void %12(ptr noundef null, ptr noundef null) #18
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BLI_system_num_threads_override_set(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @num_threads_override, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_system_num_threads_override_get() local_unnamed_addr #9 {
  %1 = load i32, ptr @num_threads_override, align 4, !tbaa !34
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_lock_thread(i32 noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_unlock_thread(i32 noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_mutex_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_mutex_lock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_mutex_unlock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @BLI_mutex_trylock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_mutex_end(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_mutex_alloc() local_unnamed_addr #2 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 4, ptr noundef nonnull @.str.2) #18
  tail call void @BLI_mutex_init(ptr noundef %2) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_mutex_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %2(ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_spin_lock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_spin_unlock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rw_mutex_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_rw_mutex_lock(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_rw_mutex_unlock(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_rw_mutex_end(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_rw_mutex_alloc() local_unnamed_addr #2 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 4, ptr noundef nonnull @.str.3) #18
  tail call void @BLI_rw_mutex_init(ptr noundef %2) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_rw_mutex_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %2(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_ticket_mutex_alloc() local_unnamed_addr #2 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.4) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_ticket_mutex_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %2(ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_ticket_mutex_lock(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.TicketMutex, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_ticket_mutex_unlock(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.TicketMutex, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_condition_init(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_condition_wait(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_condition_notify_one(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_condition_notify_all(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_condition_end(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_thread_queue_init() local_unnamed_addr #2 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %2 = tail call ptr %1(i64 noundef 32, ptr noundef nonnull @.str.5) #18
  %3 = tail call ptr @BLI_gsqueue_new(i64 noundef 8) #18
  store ptr %3, ptr %2, align 8, !tbaa !61
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BLI_gsqueue_new(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_thread_queue_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  tail call void @BLI_gsqueue_free(ptr noundef %2) #18
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %3(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_gsqueue_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_thread_queue_push(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = load ptr, ptr %0, align 8, !tbaa !61
  call void @BLI_gsqueue_push(ptr noundef %4, ptr noundef nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_gsqueue_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_thread_queue_pop(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !38
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %3) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !61
  %6 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %5) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !61
  call void @BLI_gsqueue_pop(ptr noundef %9, ptr noundef nonnull %2) #18
  %10 = load ptr, ptr %0, align 8, !tbaa !61
  %11 = call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %10) #18
  %12 = load ptr, ptr %2, align 8, !tbaa !38
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi ptr [ %12, %8 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %14
}

; Function Attrs: optsize
declare zeroext i8 @BLI_gsqueue_is_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_gsqueue_pop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_thread_queue_pop_timeout(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = tail call double @PIL_check_seconds_timer() #18
  call fastcc void @wait_timeout(ptr noundef nonnull %4, i32 noundef %1) #17
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %6) #18
  %8 = load ptr, ptr %0, align 8, !tbaa !61
  %9 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %8) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !61
  call void @BLI_gsqueue_pop(ptr noundef %12, ptr noundef nonnull %3) #18
  %13 = load ptr, ptr %0, align 8, !tbaa !61
  %14 = call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %13) #18
  %15 = load ptr, ptr %3, align 8, !tbaa !38
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi ptr [ %15, %11 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %17
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @wait_timeout(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !63 {
  %3 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #18
  %5 = load i64, ptr %3, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  %8 = sext i32 %1 to i64
  %9 = tail call { i64, i64 } @ldiv(i64 noundef %8, i64 noundef 1000) #20
  %10 = extractvalue { i64, i64 } %9, 0
  %11 = extractvalue { i64, i64 } %9, 1
  %12 = add nsw i64 %10, %5
  store i64 %12, ptr %0, align 8, !tbaa !68
  %13 = mul nsw i64 %11, 1000
  %14 = add nsw i64 %13, %7
  %15 = icmp sgt i64 %14, 999999
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = add nsw i64 %12, 1
  store i64 %17, ptr %0, align 8, !tbaa !68
  %18 = add nsw i64 %14, -1000000
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i64 [ %18, %16 ], [ %14, %2 ]
  %21 = mul nsw i64 %20, 1000
  %22 = getelementptr inbounds %struct.timespec, ptr %0, i64 0, i32 1
  store i64 %21, ptr %22, align 8, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_thread_queue_size(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = tail call i32 @BLI_gsqueue_size(ptr noundef %2) #18
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BLI_gsqueue_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @BLI_thread_queue_nowait(ptr noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.ThreadQueue, ptr %0, i64 0, i32 4
  store volatile i32 1, ptr %2, align 4, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_thread_queue_wait_finish(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_begin_threaded_malloc() local_unnamed_addr #2 {
  %1 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_set_lock_callback, align 8, !tbaa !38
  tail call void %4(ptr noundef nonnull @BLI_lock_malloc_thread, ptr noundef nonnull @BLI_unlock_malloc_thread) #18
  %5 = load i32, ptr @thread_levels, align 4, !tbaa !34
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ %1, %0 ]
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @thread_levels, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_end_threaded_malloc() local_unnamed_addr #2 {
  %1 = load i32, ptr @thread_levels, align 4, !tbaa !34
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @thread_levels, align 4, !tbaa !34
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load ptr, ptr @MEM_set_lock_callback, align 8, !tbaa !38
  tail call void %5(ptr noundef null, ptr noundef null) #18
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare { i64, i64 } @ldiv(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize willreturn memory(none) }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !39, i64 16}
!41 = !{!"ThreadSlot", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !35, i64 32, !35, i64 36}
!42 = !{!41, !35, i64 36}
!43 = !{!"threads.c:BLI_listbase_clear"}
!44 = !{!"threads.c:BLI_lock_malloc_thread"}
!45 = !{!"threads.c:BLI_unlock_malloc_thread"}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = !{!41, !39, i64 24}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !47}
!53 = distinct !{!53, !47}
!54 = !{i8 0, i8 2}
!55 = !{!"threads.c:BLI_listbase_is_empty"}
!56 = !{!57, !39, i64 0}
!57 = !{!"ListBase", !39, i64 0, !39, i64 8}
!58 = !{!59, !35, i64 12}
!59 = !{!"TicketMutex", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!60 = !{!59, !35, i64 8}
!61 = !{!62, !39, i64 0}
!62 = !{!"ThreadQueue", !39, i64 0, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24}
!63 = !{!"threads.c:wait_timeout"}
!64 = !{!65, !66, i64 0}
!65 = !{!"timeval", !66, i64 0, !66, i64 8}
!66 = !{!"long", !36, i64 0}
!67 = !{!65, !66, i64 8}
!68 = !{!69, !66, i64 0}
!69 = !{!"timespec", !66, i64 0, !66, i64 8}
!70 = !{!69, !66, i64 8}
!71 = !{!62, !35, i64 20}
