; ModuleID = 'magick/monitor.c'
source_filename = "magick/monitor.c"
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
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @SetImageProgressMonitor(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  store ptr %1, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  store ptr %2, ptr %6, align 8, !tbaa !25
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @SetImageInfoProgressMonitor(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 41
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  store ptr %1, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 42
  store ptr %2, ptr %6, align 8, !tbaa !28
  ret ptr %5
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 568}
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
!25 = !{!7, !12, i64 576}
!26 = !{!27, !12, i64 272}
!27 = !{!"_ImageInfo", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !15, i64 144, !15, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !8, i64 184, !8, i64 188, !11, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !11, i64 216, !8, i64 224, !8, i64 228, !12, i64 232, !12, i64 240, !8, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !11, i64 320, !9, i64 328, !9, i64 4424, !9, i64 8520, !9, i64 12616, !8, i64 16712, !12, i64 16720, !11, i64 16728, !11, i64 16736, !13, i64 16744, !11, i64 16752, !8, i64 16760, !13, i64 16764, !12, i64 16776, !8, i64 16784}
!28 = !{!27, !12, i64 280}
