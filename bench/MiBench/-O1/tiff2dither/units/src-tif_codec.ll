; ModuleID = 'src/tif_codec.c'
source_filename = "src/tif_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIFFCodec = type { ptr, i16, ptr }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LZW\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PackBits\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ThunderScan\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NeXT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Old-style JPEG\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"CCITT RLE\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"CCITT RLE/W\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"CCITT Group 3\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"CCITT Group 4\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"ISO JBIG\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Deflate\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"AdobeDeflate\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"PixarLog\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"SGILog\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SGILog24\00", align 1
@_TIFFBuiltinCODECS = dso_local local_unnamed_addr global [18 x %struct.TIFFCodec] [%struct.TIFFCodec { ptr @.str, i16 1, ptr @TIFFInitDumpMode }, %struct.TIFFCodec { ptr @.str.1, i16 5, ptr @TIFFInitLZW }, %struct.TIFFCodec { ptr @.str.2, i16 -32763, ptr @TIFFInitPackBits }, %struct.TIFFCodec { ptr @.str.3, i16 -32727, ptr @TIFFInitThunderScan }, %struct.TIFFCodec { ptr @.str.4, i16 32766, ptr @TIFFInitNeXT }, %struct.TIFFCodec { ptr @.str.5, i16 7, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.6, i16 6, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.7, i16 2, ptr @TIFFInitCCITTRLE }, %struct.TIFFCodec { ptr @.str.8, i16 -32765, ptr @TIFFInitCCITTRLEW }, %struct.TIFFCodec { ptr @.str.9, i16 3, ptr @TIFFInitCCITTFax3 }, %struct.TIFFCodec { ptr @.str.10, i16 4, ptr @TIFFInitCCITTFax4 }, %struct.TIFFCodec { ptr @.str.11, i16 -30875, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.12, i16 -32590, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.13, i16 8, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.14, i16 -32627, ptr @NotConfigured }, %struct.TIFFCodec { ptr @.str.15, i16 -30860, ptr @TIFFInitSGILog }, %struct.TIFFCodec { ptr @.str.16, i16 -30859, ptr @TIFFInitSGILog }, %struct.TIFFCodec zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [41 x i8] c"%s compression support is not configured\00", align 1

declare i32 @TIFFInitDumpMode(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitLZW(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitPackBits(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitThunderScan(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitNeXT(ptr noundef, i32 noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @NotConfigured(ptr nocapture noundef writeonly %0, i32 %1) #1 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 21
  store ptr @_notConfigured, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 23
  store ptr @_notConfigured, ptr %4, align 8, !tbaa !16
  ret i32 1
}

declare i32 @TIFFInitCCITTRLE(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitCCITTRLEW(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitCCITTFax3(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitCCITTFax4(ptr noundef, i32 noundef) #0

declare i32 @TIFFInitSGILog(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @_notConfigured(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %3 = load i16, ptr %2, align 8, !tbaa !17
  %4 = tail call ptr @TIFFFindCODEC(i16 noundef zeroext %3) #3
  %5 = load ptr, ptr %0, align 8, !tbaa !18
  %6 = load ptr, ptr %4, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef %6) #3
  ret i32 0
}

declare ptr @TIFFFindCODEC(i16 noundef zeroext) local_unnamed_addr #0

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 576}
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
!16 = !{!6, !7, i64 592}
!17 = !{!6, !12, i64 88}
!18 = !{!6, !7, i64 0}
!19 = !{!20, !7, i64 0}
!20 = !{!"", !7, i64 0, !12, i64 8, !7, i64 16}
