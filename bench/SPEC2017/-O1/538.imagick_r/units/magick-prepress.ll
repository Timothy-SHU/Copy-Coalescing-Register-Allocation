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

; Function Attrs: nounwind uwtable
define dso_local double @GetImageTotalInkDensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 102, ptr noundef nonnull @.str.2) #3
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = icmp eq i32 %9, 12
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  br i1 %10, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 106, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #3
  br label %74

15:                                               ; preds = %7
  %16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %11) #3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !54
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %22

22:                                               ; preds = %20, %62
  %23 = phi i64 [ 0, %20 ], [ %65, %62 ]
  %24 = phi i32 [ 1, %20 ], [ %64, %62 ]
  %25 = phi double [ 0.000000e+00, %20 ], [ %63, %62 ]
  %26 = load i64, ptr %21, align 8, !tbaa !55
  %27 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %16, i64 noundef 0, i64 noundef %23, i64 noundef %26, i64 noundef 1, ptr noundef nonnull %11) #4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29

29:                                               ; preds = %22
  %30 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %16) #3
  %31 = load i64, ptr %21, align 8, !tbaa !55
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
  %40 = load i16, ptr %39, align 2, !tbaa !56
  %41 = uitofp i16 %40 to double
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 0, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !57
  %44 = uitofp i16 %43 to double
  %45 = fadd double %41, %44
  %46 = load i16, ptr %37, align 2, !tbaa !58
  %47 = uitofp i16 %46 to double
  %48 = fadd double %45, %47
  br i1 %34, label %53, label %49

49:                                               ; preds = %35
  %50 = getelementptr inbounds i16, ptr %30, i64 %36
  %51 = load i16, ptr %50, align 2, !tbaa !59
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
  br i1 %61, label %62, label %35, !llvm.loop !60

62:                                               ; preds = %53, %29, %22
  %63 = phi double [ %25, %22 ], [ %25, %29 ], [ %58, %53 ]
  %64 = phi i32 [ 0, %22 ], [ %24, %29 ], [ %24, %53 ]
  %65 = add nuw nsw i64 %23, 1
  %66 = load i64, ptr %17, align 8, !tbaa !54
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %22, label %68, !llvm.loop !63

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

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { hot nounwind }

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
!34 = !{!35, !36, i64 12976}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!35, !36, i64 4}
!54 = !{!35, !39, i64 48}
!55 = !{!35, !39, i64 40}
!56 = !{!41, !42, i64 4}
!57 = !{!41, !42, i64 2}
!58 = !{!41, !42, i64 0}
!59 = !{!42, !42, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !61, !62}
