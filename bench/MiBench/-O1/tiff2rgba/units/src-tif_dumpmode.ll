; ModuleID = 'src/tif_dumpmode.c'
source_filename = "src/tif_dumpmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [48 x i8] c"DumpModeDecode: Not enough data for scanline %d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @TIFFInitDumpMode(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @DumpModeDecode, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @DumpModeDecode, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @DumpModeDecode, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 27
  store ptr @DumpModeEncode, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 29
  store ptr @DumpModeEncode, ptr %7, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 31
  store ptr @DumpModeEncode, ptr %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 33
  store ptr @DumpModeSeek, ptr %9, align 8, !tbaa !21
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @DumpModeDecode(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp slt i32 %6, %2
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !23
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !24
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %11) #4
  br label %23

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @_TIFFmemcpy(ptr noundef %1, ptr noundef %14, i32 noundef %2) #4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %13, align 8, !tbaa !25
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  store ptr %20, ptr %13, align 8, !tbaa !25
  %21 = load i32, ptr %5, align 8, !tbaa !22
  %22 = sub nsw i32 %21, %2
  store i32 %22, ptr %5, align 8, !tbaa !22
  br label %23

23:                                               ; preds = %17, %8
  %24 = phi i32 [ 0, %8 ], [ 1, %17 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @DumpModeEncode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #1 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 41
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  br label %10

10:                                               ; preds = %6, %35
  %11 = phi i32 [ %2, %6 ], [ %29, %35 ]
  %12 = phi ptr [ %1, %6 ], [ %28, %35 ]
  %13 = load i32, ptr %7, align 8, !tbaa !22
  %14 = add nsw i32 %13, %11
  %15 = load i32, ptr %8, align 8, !tbaa !26
  %16 = icmp sgt i32 %14, %15
  %17 = sub nsw i32 %15, %13
  %18 = select i1 %16, i32 %17, i32 %11
  %19 = load ptr, ptr %9, align 8, !tbaa !25
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  tail call void @_TIFFmemcpy(ptr noundef %19, ptr noundef %12, i32 noundef %18) #4
  br label %22

22:                                               ; preds = %21, %10
  %23 = load ptr, ptr %9, align 8, !tbaa !25
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  store ptr %25, ptr %9, align 8, !tbaa !25
  %26 = load i32, ptr %7, align 8, !tbaa !22
  %27 = add nsw i32 %26, %18
  store i32 %27, ptr %7, align 8, !tbaa !22
  %28 = getelementptr inbounds i8, ptr %12, i64 %24
  %29 = sub nsw i32 %11, %18
  %30 = load i32, ptr %8, align 8, !tbaa !26
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = tail call i32 @TIFFFlushData1(ptr noundef %0) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %22
  %36 = icmp sgt i32 %29, 0
  br i1 %36, label %10, label %37

37:                                               ; preds = %35, %32, %4
  %38 = phi i32 [ 1, %4 ], [ 1, %35 ], [ -1, %32 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @DumpModeSeek(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = mul i32 %4, %1
  %6 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  store ptr %9, ptr %6, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = sub i32 %11, %5
  store i32 %12, ptr %10, align 8, !tbaa !22
  ret i32 1
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 616}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!6, !7, i64 632}
!17 = !{!6, !7, i64 648}
!18 = !{!6, !7, i64 624}
!19 = !{!6, !7, i64 640}
!20 = !{!6, !7, i64 656}
!21 = !{!6, !7, i64 672}
!22 = !{!6, !10, i64 744}
!23 = !{!6, !7, i64 0}
!24 = !{!6, !10, i64 536}
!25 = !{!6, !7, i64 736}
!26 = !{!6, !10, i64 728}
!27 = !{!6, !10, i64 712}
