; ModuleID = 'strsignal.c'
source_filename = "strsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.signal_info = type { i32, ptr }

@signal_names = internal unnamed_addr global ptr null, align 8
@num_signal_names = internal unnamed_addr global i32 0, align 4
@signal_table = internal unnamed_addr constant [34 x %struct.signal_info] [%struct.signal_info { i32 1, ptr @.str }, %struct.signal_info { i32 2, ptr @.str.1 }, %struct.signal_info { i32 3, ptr @.str.2 }, %struct.signal_info { i32 4, ptr @.str.3 }, %struct.signal_info { i32 5, ptr @.str.4 }, %struct.signal_info { i32 6, ptr @.str.5 }, %struct.signal_info { i32 6, ptr @.str.6 }, %struct.signal_info { i32 8, ptr @.str.7 }, %struct.signal_info { i32 9, ptr @.str.8 }, %struct.signal_info { i32 7, ptr @.str.9 }, %struct.signal_info { i32 11, ptr @.str.10 }, %struct.signal_info { i32 31, ptr @.str.11 }, %struct.signal_info { i32 13, ptr @.str.12 }, %struct.signal_info { i32 14, ptr @.str.13 }, %struct.signal_info { i32 15, ptr @.str.14 }, %struct.signal_info { i32 10, ptr @.str.15 }, %struct.signal_info { i32 12, ptr @.str.16 }, %struct.signal_info { i32 17, ptr @.str.17 }, %struct.signal_info { i32 17, ptr @.str.18 }, %struct.signal_info { i32 30, ptr @.str.19 }, %struct.signal_info { i32 28, ptr @.str.20 }, %struct.signal_info { i32 23, ptr @.str.21 }, %struct.signal_info { i32 29, ptr @.str.22 }, %struct.signal_info { i32 29, ptr @.str.23 }, %struct.signal_info { i32 19, ptr @.str.24 }, %struct.signal_info { i32 20, ptr @.str.25 }, %struct.signal_info { i32 18, ptr @.str.26 }, %struct.signal_info { i32 21, ptr @.str.27 }, %struct.signal_info { i32 22, ptr @.str.28 }, %struct.signal_info { i32 26, ptr @.str.29 }, %struct.signal_info { i32 27, ptr @.str.30 }, %struct.signal_info { i32 24, ptr @.str.31 }, %struct.signal_info { i32 25, ptr @.str.32 }, %struct.signal_info zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"SIGHUP\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SIGINT\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SIGQUIT\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SIGILL\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SIGTRAP\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SIGIOT\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SIGFPE\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"SIGKILL\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SIGBUS\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"SIGSEGV\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SIGSYS\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"SIGPIPE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"SIGALRM\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"SIGTERM\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"SIGUSR1\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SIGUSR2\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"SIGCLD\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"SIGCHLD\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"SIGPWR\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"SIGWINCH\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"SIGURG\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"SIGIO\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"SIGPOLL\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"SIGSTOP\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"SIGTSTP\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"SIGCONT\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"SIGTTIN\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"SIGTTOU\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"SIGVTALRM\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"SIGPROF\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"SIGXCPU\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"SIGXFSZ\00", align 1
@strsigno.buf = internal global [32 x i8] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [10 x i8] c"Signal %d\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @signo_max() local_unnamed_addr #0 {
  %1 = load ptr, ptr @signal_names, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call fastcc void @init_signal_tables() #6
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @num_signal_names, align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 65)
  %7 = add nsw i32 %6, -1
  ret i32 %7
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, argmem: none) uwtable
define internal fastcc void @init_signal_tables() unnamed_addr #1 {
  %1 = load i32, ptr @num_signal_names, align 4, !tbaa !10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0, %10
  %4 = phi ptr [ %12, %10 ], [ @signal_table, %0 ]
  %5 = phi i32 [ %11, %10 ], [ 0, %0 ]
  %6 = load i32, ptr %4, align 8, !tbaa !12
  %7 = icmp slt i32 %6, %5
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = add nsw i32 %6, 1
  store i32 %9, ptr @num_signal_names, align 4, !tbaa !10
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ %5, %3 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.signal_info, ptr %4, i64 1
  %13 = getelementptr inbounds %struct.signal_info, ptr %4, i64 1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !15

16:                                               ; preds = %10, %0
  %17 = phi i32 [ %1, %0 ], [ %11, %10 ]
  %18 = load ptr, ptr @signal_names, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = shl i32 %17, 3
  %22 = sext i32 %21 to i64
  %23 = tail call ptr @calloc(i64 1, i64 %22)
  store ptr %23, ptr @signal_names, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %33, %25 ], [ @.str, %20 ]
  %27 = phi ptr [ %31, %25 ], [ @signal_table, %20 ]
  %28 = load i32, ptr %27, align 8, !tbaa !12
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %23, i64 %29
  store ptr %26, ptr %30, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.signal_info, ptr %27, i64 1
  %32 = getelementptr inbounds %struct.signal_info, ptr %27, i64 1, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %25, !llvm.loop !17

35:                                               ; preds = %25, %20, %16
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @strsigno(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @signal_names, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call fastcc void @init_signal_tables() #6
  br label %5

5:                                                ; preds = %4, %1
  %6 = icmp sgt i32 %0, -1
  %7 = load i32, ptr @num_signal_names, align 4
  %8 = icmp sgt i32 %7, %0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load ptr, ptr @signal_names, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = zext nneg i32 %0 to i64
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %10
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @strsigno.buf, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %0) #6
  br label %20

20:                                               ; preds = %13, %5, %18
  %21 = phi ptr [ @strsigno.buf, %18 ], [ null, %5 ], [ %16, %13 ]
  ret ptr %21
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @strtosigno(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @signal_names, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @init_signal_tables() #6
  br label %7

7:                                                ; preds = %6, %3
  %8 = load i32, ptr @num_signal_names, align 4, !tbaa !10
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load ptr, ptr @signal_names, align 8, !tbaa !6
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %10, %21
  %14 = phi i64 [ 0, %10 ], [ %22, %21 ]
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %16) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13, %18
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %26, label %13, !llvm.loop !18

24:                                               ; preds = %18
  %25 = trunc i64 %14 to i32
  br label %26

26:                                               ; preds = %21, %24, %7
  %27 = phi i32 [ 0, %7 ], [ %25, %24 ], [ %8, %21 ]
  %28 = icmp eq i32 %27, %8
  %29 = select i1 %28, i32 0, i32 %27
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #6 = { optsize }

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
!12 = !{!13, !11, i64 0}
!13 = !{!"signal_info", !11, i64 0, !7, i64 8}
!14 = !{!13, !7, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
