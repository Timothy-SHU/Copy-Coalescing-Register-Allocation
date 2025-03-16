; ModuleID = 'src/linuxplay.c'
source_filename = "src/linuxplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@samp_rate = dso_local global i64 8000, align 8
@.str = private unnamed_addr constant [11 x i8] c"/dev/sbdsp\00", align 1
@dev_file = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"hplay\00", align 1
@prog = dso_local local_unnamed_addr global ptr @.str.1, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"linux Audio\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Sample rate\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Audio enable\00", align 1
@help_only = external local_unnamed_addr global i32, align 4
@dev_fd = internal unnamed_addr global i32 -1, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Actual sound rate: %ld\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"Could not allocate memory for conversion\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @audio_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 1, ptr %4, align 4, !tbaa !5
  %5 = load ptr, ptr %1, align 8, !tbaa !9
  store ptr %5, ptr @prog, align 8, !tbaa !9
  %6 = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.2, i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %7 = load i32, ptr @help_only, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @dev_file, align 8, !tbaa !9
  %14 = call i32 (ptr, i32, ...) @open(ptr noundef %13, i32 noundef 2049) #10
  store i32 %14, ptr @dev_fd, align 4, !tbaa !5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr @dev_file, align 8, !tbaa !9
  call void @perror(ptr noundef %17) #11
  br label %18

18:                                               ; preds = %16, %12, %9
  %19 = load i32, ptr %3, align 4, !tbaa !5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = sext i32 %19 to i64
  store i64 %22, ptr @samp_rate, align 8, !tbaa !11
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 (i32, i64, ...) @ioctl(i32 noundef %24, i64 noundef 3221508098, ptr noundef nonnull @samp_rate) #10
  %28 = load i64, ptr @samp_rate, align 8, !tbaa !11
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %28)
  br label %30

30:                                               ; preds = %23, %26, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @getargs(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @audio_term() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  %2 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i32 (i32, i64, ...) @ioctl(i32 noundef %2, i64 noundef 20481, ptr noundef nonnull %1) #10
  %6 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %7 = call i32 @close(i32 noundef %6) #10
  store i32 -1, ptr @dev_fd, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %0, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @audio_play(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %2
  %5 = zext nneg i32 %0 to i64
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = zext nneg i32 %0 to i64
  br label %13

10:                                               ; preds = %4
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 41, i64 1, ptr %11) #11
  tail call void @exit(i32 noundef 3) #13
  unreachable

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = getelementptr inbounds i16, ptr %1, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !13
  %17 = sext i16 %16 to i32
  %18 = add nsw i32 %17, -32768
  %19 = sdiv i32 %18, 256
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %6, i64 %14
  store i8 %20, ptr %21, align 1, !tbaa !15
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %13, !llvm.loop !16

24:                                               ; preds = %13
  %25 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = tail call i64 @write(i32 noundef %25, ptr noundef nonnull %6, i64 noundef %5) #10
  %29 = icmp eq i64 %28, %5
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @perror(ptr noundef nonnull @.str.10) #11
  br label %31

31:                                               ; preds = %27, %30, %24
  tail call void @free(ptr noundef %6) #10
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
