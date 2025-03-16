; ModuleID = 'src/tif_close.c'
source_filename = "src/tif_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @TIFFClose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @TIFFFlush(ptr noundef %0) #2
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  tail call void %9(ptr noundef %0) #2
  tail call void @TIFFFreeDirectory(ptr noundef %0) #2
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @_TIFFfree(ptr noundef nonnull %11) #2
  br label %19

19:                                               ; preds = %18, %13, %7
  %20 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !18
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 47
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 44
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 45
  %32 = load i32, ptr %31, align 8, !tbaa !22
  tail call void %26(ptr noundef %28, ptr noundef %30, i32 noundef %32) #2
  br label %33

33:                                               ; preds = %24, %19
  %34 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 52
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %37 = load ptr, ptr %36, align 8, !tbaa !20
  %38 = tail call i32 %35(ptr noundef %37) #2
  %39 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  tail call void @_TIFFfree(ptr noundef nonnull %40) #2
  br label %43

43:                                               ; preds = %42, %33
  tail call void @_TIFFfree(ptr noundef %0) #2
  ret void
}

declare i32 @TIFFFlush(ptr noundef) local_unnamed_addr #1

declare void @TIFFFreeDirectory(ptr noundef) local_unnamed_addr #1

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 12}
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
!16 = !{!6, !7, i64 680}
!17 = !{!6, !7, i64 720}
!18 = !{!6, !10, i64 16}
!19 = !{!6, !7, i64 776}
!20 = !{!6, !7, i64 784}
!21 = !{!6, !7, i64 752}
!22 = !{!6, !10, i64 760}
!23 = !{!6, !7, i64 816}
!24 = !{!6, !7, i64 840}
