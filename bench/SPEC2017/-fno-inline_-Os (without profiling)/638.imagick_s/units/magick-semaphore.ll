; ModuleID = 'magick/semaphore.c'
source_filename = "magick/semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.omp_lock_t = type { ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.SemaphoreInfo = type { %union.pthread_mutex_t, i64, i64, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@active_mutex = internal unnamed_addr global i1 false, align 4
@semaphore_mutex = internal global %struct.omp_lock_t zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"magick/semaphore.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActivateSemaphoreInfo(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  tail call fastcc void @InitializeMagickMutex() #10
  tail call fastcc void @LockMagickMutex() #10
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr @AllocateSemaphoreInfo() #10
  store ptr %8, ptr %0, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %7, %4
  tail call fastcc void @UnlockMagickMutex() #10
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @InitializeMagickMutex() unnamed_addr #0 {
  %1 = load i1, ptr @active_mutex, align 4
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  tail call void @omp_init_lock(ptr noundef nonnull @semaphore_mutex) #11
  br label %3

3:                                                ; preds = %2, %0
  store i1 true, ptr @active_mutex, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @LockMagickMutex() unnamed_addr #0 {
  tail call void @omp_set_lock(ptr noundef nonnull @semaphore_mutex) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AllocateSemaphoreInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call fastcc ptr @AcquireSemaphoreMemory() #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #12
  call void @GetExceptionInfo(ptr noundef nonnull %1) #11
  %5 = tail call ptr @__errno_location() #13
  %6 = load i32, ptr %5, align 4, !tbaa !10
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #11
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 202, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7) #11
  %9 = call ptr @DestroyString(ptr noundef %7) #11
  call void @CatchException(ptr noundef nonnull %1) #11
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #11
  call void @MagickCoreTerminus() #11
  call void @_exit(i32 noundef 1) #14
  unreachable

11:                                               ; preds = %0
  %12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 64) #11
  tail call void @omp_init_lock(ptr noundef nonnull %2) #11
  %13 = tail call fastcc i64 @GetMagickThreadId() #10
  %14 = getelementptr inbounds %struct.SemaphoreInfo, ptr %2, i64 0, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.SemaphoreInfo, ptr %2, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.SemaphoreInfo, ptr %2, i64 0, i32 3
  store i64 2880220587, ptr %16, align 8, !tbaa !16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @UnlockMagickMutex() unnamed_addr #0 {
  tail call void @omp_unset_lock(ptr noundef nonnull @semaphore_mutex) #11
  ret void
}

; Function Attrs: optsize
declare void @omp_init_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @omp_set_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @omp_unset_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef ptr @AcquireSemaphoreMemory() unnamed_addr #3 {
  %1 = tail call noalias dereferenceable_or_null(135) ptr @malloc(i64 noundef 135) #15
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i64
  %5 = add i64 %4, 71
  %6 = and i64 %5, -64
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds ptr, ptr %7, i64 -1
  store ptr %1, ptr %8, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %3, %0
  %10 = phi ptr [ %7, %3 ], [ null, %0 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetMagickThreadId() unnamed_addr #6 {
  %1 = tail call i64 @pthread_self() #13
  ret i64 %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroySemaphoreInfo(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @InitializeMagickMutex() #10
  tail call fastcc void @LockMagickMutex() #10
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @omp_destroy_lock(ptr noundef %2) #11
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.SemaphoreInfo, ptr %3, i64 0, i32 3
  store i64 -2880220588, ptr %4, align 8, !tbaa !16
  tail call fastcc void @RelinquishSemaphoreMemory(ptr noundef %3) #10
  store ptr null, ptr %0, align 8, !tbaa !6
  tail call fastcc void @UnlockMagickMutex() #10
  ret void
}

; Function Attrs: optsize
declare void @omp_destroy_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @RelinquishSemaphoreMemory(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds ptr, ptr %0, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  tail call void @free(ptr noundef %5) #11
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LockSemaphoreInfo(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @omp_set_lock(ptr noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SemaphoreComponentGenesis() local_unnamed_addr #0 {
  tail call fastcc void @InitializeMagickMutex() #10
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SemaphoreComponentTerminus() local_unnamed_addr #0 {
  tail call fastcc void @DestroyMagickMutex() #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyMagickMutex() unnamed_addr #0 {
  %1 = load i1, ptr @active_mutex, align 4
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call void @omp_destroy_lock(ptr noundef nonnull @semaphore_mutex) #11
  br label %3

3:                                                ; preds = %2, %0
  store i1 false, ptr @active_mutex, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UnlockSemaphoreInfo(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @omp_unset_lock(ptr noundef %0) #11
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(none) }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !14, i64 40}
!13 = !{!"SemaphoreInfo", !8, i64 0, !14, i64 40, !14, i64 48, !14, i64 56}
!14 = !{!"long", !8, i64 0}
!15 = !{!13, !14, i64 48}
!16 = !{!13, !14, i64 56}
