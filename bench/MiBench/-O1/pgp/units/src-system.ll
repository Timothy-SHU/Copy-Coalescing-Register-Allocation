; ModuleID = 'src/system.c'
source_filename = "src/system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }

@ttyfd = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot open tty, using stdin\0A\00", align 1
@tio = internal global %struct.termios zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\0AUnable to get terminal characteristics: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@itio = internal global %struct.termios zeroinitializer, align 4
@gottio = internal unnamed_addr global i1 false, align 4
@savesig = internal unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @ttycbreak() local_unnamed_addr #0 {
  %1 = load i32, ptr @ttyfd, align 4, !tbaa !5
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str, i32 noundef 2) #9
  store i32 %4, ptr @ttyfd, align 4, !tbaa !5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !9
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 29, i64 1, ptr %7) #10
  store i32 0, ptr @ttyfd, align 4, !tbaa !5
  br label %9

9:                                                ; preds = %3, %6, %0
  %10 = load i32, ptr @ttyfd, align 4, !tbaa !5
  %11 = tail call i32 @tcgetattr(i32 noundef %10, ptr noundef nonnull @tio) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr @stderr, align 8, !tbaa !9
  %15 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 41, i64 1, ptr %14) #10
  tail call void @perror(ptr noundef nonnull @.str.3) #10
  tail call void @exitPGP(i32 noundef 1) #9
  br label %16

16:                                               ; preds = %13, %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) @itio, ptr noundef nonnull align 4 dereferenceable(60) @tio, i64 60, i1 false), !tbaa.struct !11
  %17 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @sig1) #9
  store ptr %17, ptr @savesig, align 8, !tbaa !9
  %18 = tail call ptr @signal(i32 noundef 18, ptr noundef nonnull @sig2) #9
  %19 = tail call ptr @signal(i32 noundef 20, ptr noundef nonnull @sig1) #9
  store i1 true, ptr @gottio, align 4
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @tio, i64 0, i32 5, i64 6), align 1, !tbaa !12
  store i8 0, ptr getelementptr inbounds (%struct.termios, ptr @tio, i64 0, i32 5, i64 5), align 2, !tbaa !12
  %20 = load i32, ptr getelementptr inbounds (%struct.termios, ptr @tio, i64 0, i32 3), align 4, !tbaa !13
  %21 = and i32 %20, -11
  store i32 %21, ptr getelementptr inbounds (%struct.termios, ptr @tio, i64 0, i32 3), align 4, !tbaa !13
  %22 = load i32, ptr @ttyfd, align 4, !tbaa !5
  %23 = tail call i32 @tcsetattr(i32 noundef %22, i32 noundef 2, ptr noundef nonnull @tio) #9
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

declare void @exitPGP(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ttynorm() local_unnamed_addr #0 {
  store i1 false, ptr @gottio, align 4
  %1 = load i32, ptr @ttyfd, align 4, !tbaa !5
  %2 = tail call i32 @tcsetattr(i32 noundef %1, i32 noundef 2, ptr noundef nonnull @itio) #9
  %3 = load ptr, ptr @savesig, align 8, !tbaa !9
  %4 = tail call ptr @signal(i32 noundef 2, ptr noundef %3) #9
  %5 = tail call ptr @signal(i32 noundef 18, ptr noundef null) #9
  %6 = tail call ptr @signal(i32 noundef 20, ptr noundef null) #9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getch() local_unnamed_addr #6 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #9
  store i8 0, ptr %1, align 1, !tbaa !12
  %2 = load i32, ptr @ttyfd, align 4, !tbaa !5
  %3 = call i64 @read(i32 noundef %2, ptr noundef nonnull %1, i64 noundef 1) #9
  %4 = load i8, ptr %1, align 1, !tbaa !12
  %5 = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #9
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind uwtable
define dso_local i64 @Clock() local_unnamed_addr #0 {
  %1 = alloca %struct.rusage, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %1) #9
  %2 = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #9
  %3 = load i64, ptr %1, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !19
  %6 = add nsw i64 %5, %3
  %7 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !20
  %9 = add nsw i64 %6, %8
  %10 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !21
  %12 = add nsw i64 %9, %11
  %13 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 6
  %14 = load i64, ptr %13, align 8, !tbaa !12
  %15 = add nsw i64 %12, %14
  %16 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !12
  %18 = add nsw i64 %15, %17
  %19 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 9
  %20 = load i64, ptr %19, align 8, !tbaa !12
  %21 = add nsw i64 %18, %20
  %22 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 10
  %23 = load i64, ptr %22, align 8, !tbaa !12
  %24 = add nsw i64 %21, %23
  %25 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !12
  %27 = add nsw i64 %24, %26
  %28 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 14
  %29 = load i64, ptr %28, align 8, !tbaa !12
  %30 = add nsw i64 %27, %29
  %31 = getelementptr inbounds %struct.rusage, ptr %1, i64 0, i32 15
  %32 = load i64, ptr %31, align 8, !tbaa !12
  %33 = add nsw i64 %30, %32
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %1) #9
  ret i64 %33
}

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @strlwr(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = sext i8 %5 to i32
  %8 = tail call i32 @to_lower(i32 noundef %7) #9
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %9, ptr %6, align 1, !tbaa !12
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !22

13:                                               ; preds = %4, %1
  ret ptr %0
}

declare i32 @to_lower(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @sig1(i32 noundef %0) #0 {
  %2 = load i32, ptr @ttyfd, align 4, !tbaa !5
  %3 = tail call i32 @tcsetattr(i32 noundef %2, i32 noundef 0, ptr noundef nonnull @itio) #9
  %4 = tail call ptr @signal(i32 noundef %0, ptr noundef null) #9
  %5 = icmp eq i32 %0, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @breakHandler(i32 noundef 2) #9
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call i32 @getpid() #9
  %9 = tail call i32 @kill(i32 noundef %8, i32 noundef %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sig2(i32 %0) #0 {
  %2 = load i1, ptr @gottio, align 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @ttycbreak()
  br label %8

4:                                                ; preds = %1
  %5 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @sig1) #9
  store ptr %5, ptr @savesig, align 8, !tbaa !9
  %6 = tail call ptr @signal(i32 noundef 18, ptr noundef nonnull @sig2) #9
  %7 = tail call ptr @signal(i32 noundef 20, ptr noundef nonnull @sig1) #9
  br label %8

8:                                                ; preds = %4, %3
  ret void
}

declare void @breakHandler(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 1, !12, i64 17, i64 32, !12, i64 52, i64 4, !5, i64 56, i64 4, !5}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !6, i64 12}
!14 = !{!"termios", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 17, !6, i64 52, !6, i64 56}
!15 = !{!16, !18, i64 0}
!16 = !{!"rusage", !17, i64 0, !17, i64 16, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136}
!17 = !{!"timeval", !18, i64 0, !18, i64 8}
!18 = !{!"long", !7, i64 0}
!19 = !{!16, !18, i64 8}
!20 = !{!16, !18, i64 16}
!21 = !{!16, !18, i64 24}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
