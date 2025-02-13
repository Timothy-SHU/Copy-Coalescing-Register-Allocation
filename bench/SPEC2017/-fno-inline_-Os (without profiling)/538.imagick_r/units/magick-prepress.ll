; ModuleID = 'magick/prepress.c'
source_filename = "magick/prepress.c"
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

@.str = private unnamed_addr constant [18 x i8] c"magick/prepress.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @GetImageTotalInkDensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 102, ptr noundef nonnull @.str.2) #3
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !24
  %10 = icmp eq i32 %9, 12
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br i1 %10, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 106, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #3
  br label %74

15:                                               ; preds = %7
  %16 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %11) #3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !25
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %22

22:                                               ; preds = %20, %62
  %23 = phi i64 [ 0, %20 ], [ %65, %62 ]
  %24 = phi i32 [ 1, %20 ], [ %64, %62 ]
  %25 = phi double [ 0.000000e+00, %20 ], [ %63, %62 ]
  %26 = load i64, ptr %21, align 8, !tbaa !26
  %27 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %16, i64 noundef 0, i64 noundef %23, i64 noundef %26, i64 noundef 1, ptr noundef nonnull %11) #4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29

29:                                               ; preds = %22
  %30 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %16) #3
  %31 = load i64, ptr %21, align 8, !tbaa !26
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = icmp eq ptr %30, null
  br label %35

35:                                               ; preds = %33, %53
  %36 = phi i64 [ 0, %33 ], [ %60, %53 ]
  %37 = phi ptr [ %27, %33 ], [ %59, %53 ]
  %38 = phi double [ %25, %33 ], [ %58, %53 ]
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 0, i32 2
  %40 = load i16, ptr %39, align 2, !tbaa !27
  %41 = uitofp i16 %40 to double
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 0, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !28
  %44 = uitofp i16 %43 to double
  %45 = fadd double %41, %44
  %46 = load i16, ptr %37, align 2, !tbaa !29
  %47 = uitofp i16 %46 to double
  %48 = fadd double %45, %47
  br i1 %34, label %53, label %49

49:                                               ; preds = %35
  %50 = getelementptr inbounds i16, ptr %30, i64 %36
  %51 = load i16, ptr %50, align 2, !tbaa !30
  %52 = zext i16 %51 to i32
  br label %53

53:                                               ; preds = %35, %49
  %54 = phi i32 [ %52, %49 ], [ 0, %35 ]
  %55 = sitofp i32 %54 to double
  %56 = fadd double %48, %55
  %57 = fcmp ogt double %56, %38
  %58 = select i1 %57, double %56, double %38
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 1
  %60 = add nuw nsw i64 %36, 1
  %61 = icmp eq i64 %60, %31
  br i1 %61, label %62, label %35, !llvm.loop !31

62:                                               ; preds = %53, %29, %22
  %63 = phi double [ %25, %22 ], [ %25, %29 ], [ %58, %53 ]
  %64 = phi i32 [ 0, %22 ], [ %24, %29 ], [ %24, %53 ]
  %65 = add nuw nsw i64 %23, 1
  %66 = load i64, ptr %17, align 8, !tbaa !25
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %22, label %68, !llvm.loop !33

68:                                               ; preds = %62
  %69 = icmp eq i32 %64, 0
  %70 = select i1 %69, double 0.000000e+00, double %63
  br label %71

71:                                               ; preds = %68, %15
  %72 = phi double [ 0.000000e+00, %15 ], [ %70, %68 ]
  %73 = tail call ptr @DestroyCacheView(ptr noundef %16) #3
  br label %74

74:                                               ; preds = %71, %12
  %75 = phi double [ 0.000000e+00, %12 ], [ %72, %71 ]
  ret double %75
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{!6, !7, i64 4}
!25 = !{!6, !10, i64 48}
!26 = !{!6, !10, i64 40}
!27 = !{!12, !13, i64 4}
!28 = !{!12, !13, i64 2}
!29 = !{!12, !13, i64 0}
!30 = !{!13, !13, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
