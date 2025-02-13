; ModuleID = 'magick/module.c'
source_filename = "magick/module.c"
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

@.str = private unnamed_addr constant [16 x i8] c"magick/module.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"NotAuthorized\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"analyze\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"UnableToLoadModule\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Invoking \22%s\22 static image filter\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\22%s\22 completes\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"ImageFilterSignatureMismatch\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"`%s': %8lx != %8lx\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @ListModuleInfo(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @InvokeDynamicImageFilter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !38
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1639, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #4
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call i32 @IsRightsAuthorized(i32 noundef 3, i32 noundef 1, ptr noundef %0) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #5
  store i32 1, ptr %17, align 4, !tbaa !54
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1644, i32 noundef 499, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %0) #4
  br label %43

19:                                               ; preds = %13
  %20 = tail call i32 @LocaleCompare(ptr noundef nonnull @.str.5, ptr noundef %0) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1662, i32 noundef 455, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %0) #4
  br label %43

24:                                               ; preds = %19
  %25 = load ptr, ptr %1, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 59
  %27 = load i32, ptr %26, align 8, !tbaa !38
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1670, ptr noundef nonnull @.str.7, ptr noundef %0) #4
  br label %31

31:                                               ; preds = %29, %24
  %32 = tail call i64 @analyzeImage(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #4, !callees !55
  %33 = load ptr, ptr %1, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 59
  %35 = load i32, ptr %34, align 8, !tbaa !38
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, ptr noundef nonnull @.str.8, ptr noundef %0) #4
  br label %39

39:                                               ; preds = %37, %31
  %40 = icmp eq i64 %32, 428304
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1678, i32 noundef 455, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %0, i64 noundef %32, i64 noundef 428304) #4
  br label %43

43:                                               ; preds = %41, %39, %22, %16
  %44 = phi i32 [ 0, %16 ], [ 0, %41 ], [ 1, %39 ], [ 1, %22 ]
  ret i32 %44
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsRightsAuthorized(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @analyzeImage(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 12976}
!39 = !{!"_Image", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !35, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !44, i64 104, !45, i64 112, !40, i64 208, !35, i64 216, !40, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !41, i64 256, !44, i64 264, !44, i64 272, !47, i64 280, !47, i64 312, !47, i64 344, !44, i64 376, !44, i64 384, !44, i64 392, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !35, i64 424, !41, i64 432, !41, i64 440, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !48, i64 480, !49, i64 504, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !41, i64 12904, !41, i64 12912, !51, i64 12920, !40, i64 12976, !41, i64 12984, !35, i64 12992, !52, i64 13000, !52, i64 13032, !35, i64 13064, !41, i64 13072, !41, i64 13080, !35, i64 13088, !35, i64 13096, !35, i64 13104, !40, i64 13112, !40, i64 13116, !42, i64 13120, !35, i64 13128, !47, i64 13136, !35, i64 13168, !35, i64 13176, !40, i64 13184, !40, i64 13188, !53, i64 13192, !40, i64 13200, !41, i64 13208, !41, i64 13216, !40, i64 13224, !41, i64 13232}
!40 = !{!"int", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!"_PixelPacket", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!43 = !{!"short", !36, i64 0}
!44 = !{!"double", !36, i64 0}
!45 = !{!"_ChromaticityInfo", !46, i64 0, !46, i64 24, !46, i64 48, !46, i64 72}
!46 = !{!"_PrimaryInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!47 = !{!"_RectangleInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!48 = !{!"_ErrorInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!49 = !{!"_TimerInfo", !50, i64 0, !50, i64 24, !40, i64 48, !41, i64 56}
!50 = !{!"_Timer", !44, i64 0, !44, i64 8, !44, i64 16}
!51 = !{!"_ExceptionInfo", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !41, i64 48}
!52 = !{!"_ProfileInfo", !35, i64 0, !41, i64 8, !35, i64 16, !41, i64 24}
!53 = !{!"long long", !36, i64 0}
!54 = !{!40, !40, i64 0}
!55 = !{ptr @analyzeImage}
