; ModuleID = 'magick/artifact.c'
source_filename = "magick/artifact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"magick/artifact.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CloneImageArtifacts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 106, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #3
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 110, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #3
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 76
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 76
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  tail call void @DestroyImageArtifacts(ptr noundef nonnull %0) #4
  %25 = load ptr, ptr %17, align 8, !tbaa !25
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %18, %20 ]
  %28 = tail call ptr @CloneSplayTree(ptr noundef %27, ptr noundef nonnull @ConstantString, ptr noundef nonnull @ConstantString) #3
  store ptr %28, ptr %21, align 8, !tbaa !25
  br label %29

29:                                               ; preds = %26, %16
  ret i32 1
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyImageArtifacts(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 234, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #3
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 76
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroySplayTree(ptr noundef nonnull %10) #3
  store ptr %13, ptr %9, align 8, !tbaa !25
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DefineImageArtifact(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #5
  %5 = call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 4095) #3
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi ptr [ %3, %2 ], [ %10, %9 ]
  %8 = load i8, ptr %7, align 1, !tbaa !26
  switch i8 %8, label %9 [
    i8 0, label %11
    i8 61, label %11
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !27

11:                                               ; preds = %6, %6
  store i8 0, ptr %4, align 16, !tbaa !26
  %12 = icmp eq i8 %8, 61
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %7, i64 1
  %15 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %14, i64 noundef 4096) #3
  br label %16

16:                                               ; preds = %13, %11
  store i8 0, ptr %7, align 1, !tbaa !26
  %17 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #5
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageArtifact(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 440, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #3
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 76
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #3
  store ptr %15, ptr %11, align 8, !tbaa !25
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %12, %10 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 @DeleteImageArtifact(ptr noundef nonnull %0, ptr noundef %1) #4
  br label %25

21:                                               ; preds = %16
  %22 = tail call ptr @ConstantString(ptr noundef %1) #3
  %23 = tail call ptr @ConstantString(ptr noundef nonnull %2) #3
  %24 = tail call i32 @AddValueToSplayTree(ptr noundef %17, ptr noundef %22, ptr noundef %23) #3
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %20, %19 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DeleteImageArtifact(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 200, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #3
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 76
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #3
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageArtifact(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 275, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #3
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 76
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  br i1 %10, label %13, label %16

13:                                               ; preds = %9
  tail call void @ResetSplayTreeIterator(ptr noundef %12) #3
  %14 = load ptr, ptr %11, align 8, !tbaa !25
  %15 = tail call ptr @GetNextValueInSplayTree(ptr noundef %14) #3
  br label %22

16:                                               ; preds = %9
  %17 = icmp eq ptr %12, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %12, ptr noundef nonnull %1) #3
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %16
  br label %22

22:                                               ; preds = %18, %21, %13
  %23 = phi ptr [ %15, %13 ], [ null, %21 ], [ %19, %18 ]
  ret ptr %23
}

; Function Attrs: optsize
declare void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetNextImageArtifact(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 321, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #3
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 76
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %10) #3
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RemoveImageArtifact(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 360, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #3
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 76
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %11, ptr noundef %1) #3
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ResetImageArtifactIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 397, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #3
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 76
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %10) #3
  br label %13

13:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 12976}
!7 = !{!"_Image", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !16, i64 112, !8, i64 208, !12, i64 216, !8, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !11, i64 256, !15, i64 264, !15, i64 272, !18, i64 280, !18, i64 312, !18, i64 344, !15, i64 376, !15, i64 384, !15, i64 392, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !12, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !19, i64 480, !20, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !11, i64 12904, !11, i64 12912, !22, i64 12920, !8, i64 12976, !11, i64 12984, !12, i64 12992, !23, i64 13000, !23, i64 13032, !12, i64 13064, !11, i64 13072, !11, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !8, i64 13112, !8, i64 13116, !13, i64 13120, !12, i64 13128, !18, i64 13136, !12, i64 13168, !12, i64 13176, !8, i64 13184, !8, i64 13188, !24, i64 13192, !8, i64 13200, !11, i64 13208, !11, i64 13216, !8, i64 13224, !11, i64 13232}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"_PixelPacket", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!14 = !{!"short", !9, i64 0}
!15 = !{!"double", !9, i64 0}
!16 = !{!"_ChromaticityInfo", !17, i64 0, !17, i64 24, !17, i64 48, !17, i64 72}
!17 = !{!"_PrimaryInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!19 = !{!"_ErrorInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_TimerInfo", !21, i64 0, !21, i64 24, !8, i64 48, !11, i64 56}
!21 = !{!"_Timer", !15, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"_ExceptionInfo", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !11, i64 48}
!23 = !{!"_ProfileInfo", !12, i64 0, !11, i64 8, !12, i64 16, !11, i64 24}
!24 = !{!"long long", !9, i64 0}
!25 = !{!7, !12, i64 13176}
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
