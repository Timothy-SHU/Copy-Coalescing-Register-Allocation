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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireTimerInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(64) ptr @AcquireMagickMemory(i64 noundef 64) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #9
  call void @GetExceptionInfo(ptr noundef nonnull %1) #9
  %5 = tail call ptr @__errno_location() #10
  %6 = load i32, ptr %5, align 4, !tbaa !34
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
  store i64 2880220587, ptr %13, align 8, !tbaa !38
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 64) #9
  %15 = getelementptr inbounds %struct._TimerInfo, ptr %2, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !43
  store i64 2880220587, ptr %13, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct._Timer, ptr %2, i64 0, i32 2
  %17 = getelementptr inbounds %struct._TimerInfo, ptr %2, i64 0, i32 1, i32 2
  store double 0.000000e+00, ptr %17, align 8, !tbaa !44
  store double 0.000000e+00, ptr %2, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store i32 2, ptr %15, align 8, !tbaa !43
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @GetTimerInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 64) #9
  %3 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 3
  store i64 2880220587, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  store double 0.000000e+00, ptr %6, align 8, !tbaa !44
  store double 0.000000e+00, ptr %0, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ContinueTimer(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  switch i32 %3, label %20 [
    i32 0, label %21
    i32 1, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !46
  %7 = load double, ptr %0, align 8, !tbaa !45
  %8 = fsub double %6, %7
  %9 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %10 = load double, ptr %9, align 8, !tbaa !47
  %11 = fsub double %10, %8
  store double %11, ptr %9, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !48
  %15 = load double, ptr %12, align 8, !tbaa !49
  %16 = fsub double %14, %15
  %17 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !44
  %19 = fsub double %18, %16
  store double %19, ptr %17, align 8, !tbaa !44
  br label %20

20:                                               ; preds = %1, %4
  store i32 2, ptr %2, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %1, %20
  %22 = phi i32 [ 1, %20 ], [ %3, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyTimerInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 3
  store i64 -2880220588, ptr %2, align 8, !tbaa !38
  %3 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #9
  ret ptr %3
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local double @GetElapsedTime(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  switch i32 %3, label %20 [
    i32 0, label %23
    i32 2, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 1
  store double 0.000000e+00, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1
  %8 = load double, ptr %0, align 8, !tbaa !45
  %9 = fsub double 0.000000e+00, %8
  %10 = fadd double %9, 1.000000e-15
  %11 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !47
  %13 = fadd double %12, %10
  store double %13, ptr %11, align 8, !tbaa !47
  %14 = load double, ptr %7, align 8, !tbaa !49
  %15 = fsub double 0.000000e+00, %14
  %16 = fadd double %15, 1.000000e-15
  %17 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !44
  %19 = fadd double %18, %16
  store double %19, ptr %17, align 8, !tbaa !44
  store i32 1, ptr %2, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %1, %4
  %21 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !44
  br label %23

23:                                               ; preds = %1, %20
  %24 = phi double [ %22, %20 ], [ 0.000000e+00, %1 ]
  ret double %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @StartTimer(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  store double 0.000000e+00, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  store double 0.000000e+00, ptr %6, align 8, !tbaa !44
  br label %7

7:                                                ; preds = %4, %2
  %8 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %12, align 8, !tbaa !49
  store double 0.000000e+00, ptr %0, align 8, !tbaa !45
  br label %13

13:                                               ; preds = %11, %7
  store i32 2, ptr %8, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local double @GetUserTime(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  switch i32 %3, label %20 [
    i32 0, label %23
    i32 2, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 1
  store double 0.000000e+00, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1
  %8 = load double, ptr %0, align 8, !tbaa !45
  %9 = fsub double 0.000000e+00, %8
  %10 = fadd double %9, 1.000000e-15
  %11 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !47
  %13 = fadd double %12, %10
  store double %13, ptr %11, align 8, !tbaa !47
  %14 = load double, ptr %7, align 8, !tbaa !49
  %15 = fsub double 0.000000e+00, %14
  %16 = fadd double %15, 1.000000e-15
  %17 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !44
  %19 = fadd double %18, %16
  store double %19, ptr %17, align 8, !tbaa !44
  store i32 1, ptr %2, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %1, %4
  %21 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %1, %20
  %24 = phi double [ %22, %20 ], [ 0.000000e+00, %1 ]
  ret double %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ResetTimer(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 1
  store double 0.000000e+00, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1
  %9 = load double, ptr %0, align 8, !tbaa !45
  %10 = fsub double 0.000000e+00, %9
  %11 = fadd double %10, 1.000000e-15
  %12 = getelementptr inbounds %struct._Timer, ptr %0, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !47
  %14 = fadd double %13, %11
  store double %14, ptr %12, align 8, !tbaa !47
  %15 = load double, ptr %8, align 8, !tbaa !49
  %16 = fsub double 0.000000e+00, %15
  %17 = fadd double %16, 1.000000e-15
  %18 = getelementptr inbounds %struct._TimerInfo, ptr %0, i64 0, i32 1, i32 2
  %19 = load double, ptr %18, align 8, !tbaa !44
  %20 = fadd double %19, %17
  store double %20, ptr %18, align 8, !tbaa !44
  br label %21

21:                                               ; preds = %1, %7
  store i32 1, ptr %4, align 8, !tbaa !43
  store double 0.000000e+00, ptr %2, align 8, !tbaa !48
  store double 0.000000e+00, ptr %3, align 8, !tbaa !46
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !42, i64 56}
!39 = !{!"_TimerInfo", !40, i64 0, !40, i64 24, !35, i64 48, !42, i64 56}
!40 = !{!"_Timer", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"double", !36, i64 0}
!42 = !{!"long", !36, i64 0}
!43 = !{!39, !35, i64 48}
!44 = !{!39, !41, i64 40}
!45 = !{!39, !41, i64 0}
!46 = !{!39, !41, i64 8}
!47 = !{!39, !41, i64 16}
!48 = !{!39, !41, i64 32}
!49 = !{!39, !41, i64 24}
