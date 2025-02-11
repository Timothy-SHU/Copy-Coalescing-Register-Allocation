; ModuleID = 'magick/timer.c'
source_filename = "magick/timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }

@.str = private unnamed_addr constant [15 x i8] c"magick/timer.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"UnableToAcquireString\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireTimerInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(64) ptr @AcquireMagickMemory(i64 noundef 64) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #8
  call void @GetExceptionInfo(ptr noundef nonnull %1) #9
  %5 = tail call ptr @__errno_location() #10
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #9
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 98, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7) #9
  %9 = call ptr @DestroyString(ptr noundef %7) #9
  call void @CatchException(ptr noundef nonnull %1) #9
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #9
  call void @MagickCoreTerminus() #9
  call void @_exit(i32 noundef 1) #11
  unreachable

11:                                               ; preds = %0
  %12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 64) #9
  %13 = getelementptr inbounds %struct._TimerInfo, ptr %2, i64 0, i32 3
  store i64 2880220587, ptr %13, align 8, !tbaa !10
  tail call void @GetTimerInfo(ptr noundef nonnull %2) #12
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetTimerInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 64) #9
  %3 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 3
  store i64 2880220587, ptr %4, align 8, !tbaa !10
  tail call void @StartTimer(ptr noundef %0, i32 noundef 1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ContinueTimer(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !15
  switch i32 %3, label %20 [
    i32 0, label %21
    i32 1, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !16
  %7 = load double, ptr %0, align 8, !tbaa !17
  %8 = fsub double %6, %7
  %9 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %10 = load double, ptr %9, align 8, !tbaa !18
  %11 = fsub double %10, %8
  store double %11, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !19
  %15 = load double, ptr %12, align 8, !tbaa !20
  %16 = fsub double %14, %15
  %17 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !21
  %19 = fsub double %18, %16
  store double %19, ptr %17, align 8, !tbaa !21
  br label %20

20:                                               ; preds = %1, %4
  store i32 2, ptr %2, align 8, !tbaa !15
  br label %21

21:                                               ; preds = %1, %20
  %22 = phi i32 [ 1, %20 ], [ %3, %1 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyTimerInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 3
  store i64 -2880220588, ptr %2, align 8, !tbaa !10
  %3 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #9
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local double @GetElapsedTime(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !15
  switch i32 %3, label %5 [
    i32 0, label %8
    i32 2, label %4
  ]

4:                                                ; preds = %1
  tail call fastcc void @StopTimer(ptr noundef nonnull %0) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  %7 = load double, ptr %6, align 8, !tbaa !21
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi double [ %7, %5 ], [ 0.000000e+00, %1 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @StopTimer(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 1
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %3, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !15
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1
  %9 = load double, ptr %0, align 8, !tbaa !17
  %10 = fsub double 0.000000e+00, %9
  %11 = fadd double %10, 1.000000e-15
  %12 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !18
  %14 = fadd double %13, %11
  store double %14, ptr %12, align 8, !tbaa !18
  %15 = load double, ptr %8, align 8, !tbaa !20
  %16 = fsub double 0.000000e+00, %15
  %17 = fadd double %16, 1.000000e-15
  %18 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  %19 = load double, ptr %18, align 8, !tbaa !21
  %20 = fadd double %19, %17
  store double %20, ptr %18, align 8, !tbaa !21
  br label %21

21:                                               ; preds = %7, %1
  store i32 1, ptr %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @StartTimer(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  store double 0.000000e+00, ptr %5, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  store double 0.000000e+00, ptr %6, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %4, %2
  %8 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !15
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %12, align 8, !tbaa !20
  store double 0.000000e+00, ptr %0, align 8, !tbaa !17
  br label %13

13:                                               ; preds = %11, %7
  store i32 2, ptr %8, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local double @GetUserTime(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !15
  switch i32 %3, label %5 [
    i32 0, label %8
    i32 2, label %4
  ]

4:                                                ; preds = %1
  tail call fastcc void @StopTimer(ptr noundef nonnull %0) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %7 = load double, ptr %6, align 8, !tbaa !18
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi double [ %7, %5 ], [ 0.000000e+00, %1 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ResetTimer(ptr nocapture noundef %0) local_unnamed_addr #6 {
  tail call fastcc void @StopTimer(ptr noundef %0) #12
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 1
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %3, align 8, !tbaa !16
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize willreturn memory(none) }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 56}
!11 = !{!"_TimerInfo", !12, i64 0, !12, i64 24, !7, i64 48, !14, i64 56}
!12 = !{!"_Timer", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"double", !8, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!11, !7, i64 48}
!16 = !{!11, !13, i64 8}
!17 = !{!11, !13, i64 0}
!18 = !{!11, !13, i64 16}
!19 = !{!11, !13, i64 32}
!20 = !{!11, !13, i64 24}
!21 = !{!11, !13, i64 40}
