; ModuleID = 'src/tif_next.c'
source_filename = "src/tif_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }

@.str = private unnamed_addr constant [45 x i8] c"NeXTDecode: Not enough data for scanline %ld\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @TIFFInitNeXT(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 26
  store ptr @NeXTDecode, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 28
  store ptr @NeXTDecode, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 30
  store ptr @NeXTDecode, ptr %5, align 8, !tbaa !17
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @NeXTDecode(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 zeroext %3) #1 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext nneg i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 -1, i64 %7, i1 false), !tbaa !18
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 42
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %12 = load i32, ptr %11, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !21
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %16, label %114

16:                                               ; preds = %8
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %19 = sext i32 %14 to i64
  br label %20

20:                                               ; preds = %16, %108
  %21 = phi i32 [ %2, %16 ], [ %111, %108 ]
  %22 = phi ptr [ %10, %16 ], [ %110, %108 ]
  %23 = phi ptr [ %1, %16 ], [ %112, %108 ]
  %24 = phi i32 [ %12, %16 ], [ %109, %108 ]
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  %26 = load i8, ptr %22, align 1, !tbaa !18
  %27 = add nsw i32 %24, -1
  switch i8 %26, label %60 [
    i8 0, label %28
    i8 64, label %33
  ]

28:                                               ; preds = %20
  %29 = icmp sgt i32 %24, %14
  br i1 %29, label %30, label %117

30:                                               ; preds = %28
  tail call void @_TIFFmemcpy(ptr noundef %23, ptr noundef nonnull %25, i32 noundef %14) #4
  %31 = getelementptr inbounds i8, ptr %25, i64 %17
  %32 = sub nsw i32 %27, %14
  br label %108

33:                                               ; preds = %20
  %34 = getelementptr inbounds i8, ptr %22, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !18
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = getelementptr inbounds i8, ptr %22, i64 4
  %39 = load i8, ptr %38, align 1, !tbaa !18
  %40 = zext i8 %39 to i32
  %41 = or disjoint i32 %37, %40
  %42 = add nuw nsw i32 %41, 4
  %43 = icmp sgt i32 %24, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load i8, ptr %25, align 1, !tbaa !18
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 8
  %48 = getelementptr inbounds i8, ptr %22, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !18
  %50 = zext i8 %49 to i64
  %51 = or disjoint i64 %47, %50
  %52 = getelementptr inbounds i8, ptr %23, i64 %51
  %53 = getelementptr inbounds i8, ptr %22, i64 5
  tail call void @_TIFFmemcpy(ptr noundef %52, ptr noundef nonnull %53, i32 noundef %41) #4
  %54 = zext nneg i32 %42 to i64
  %55 = getelementptr inbounds i8, ptr %25, i64 %54
  %56 = sub nsw i32 %27, %42
  br label %57

57:                                               ; preds = %33, %44
  %58 = phi i32 [ %56, %44 ], [ %27, %33 ]
  %59 = phi ptr [ %55, %44 ], [ %25, %33 ]
  br i1 %43, label %108, label %117

60:                                               ; preds = %20
  %61 = load i32, ptr %18, align 8, !tbaa !22
  br label %62

62:                                               ; preds = %103, %60
  %63 = phi i32 [ %27, %60 ], [ %106, %103 ]
  %64 = phi i8 [ %26, %60 ], [ %105, %103 ]
  %65 = phi ptr [ %23, %60 ], [ %98, %103 ]
  %66 = phi ptr [ %25, %60 ], [ %104, %103 ]
  %67 = phi i32 [ 0, %60 ], [ %99, %103 ]
  %68 = zext i8 %64 to i32
  %69 = and i32 %68, 63
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %62
  %72 = lshr i32 %68, 6
  %73 = shl nuw nsw i32 %72, 2
  %74 = shl nuw nsw i32 %72, 4
  %75 = and i8 %64, -64
  %76 = add i32 %67, %69
  br label %77

77:                                               ; preds = %71, %93
  %78 = phi i32 [ %69, %71 ], [ %81, %93 ]
  %79 = phi i32 [ %67, %71 ], [ %82, %93 ]
  %80 = phi ptr [ %65, %71 ], [ %95, %93 ]
  %81 = add nsw i32 %78, -1
  %82 = add nsw i32 %79, 1
  %83 = and i32 %79, 3
  switch i32 %83, label %122 [
    i32 0, label %93
    i32 1, label %87
    i32 2, label %84
    i32 3, label %85
  ]

84:                                               ; preds = %77
  br label %87

85:                                               ; preds = %77
  %86 = getelementptr inbounds i8, ptr %80, i64 1
  br label %87

87:                                               ; preds = %77, %84, %85
  %88 = phi i32 [ %72, %85 ], [ %73, %84 ], [ %74, %77 ]
  %89 = phi ptr [ %86, %85 ], [ %80, %84 ], [ %80, %77 ]
  %90 = trunc i32 %88 to i8
  %91 = load i8, ptr %80, align 1, !tbaa !18
  %92 = or i8 %91, %90
  br label %93

93:                                               ; preds = %87, %77
  %94 = phi i8 [ %75, %77 ], [ %92, %87 ]
  %95 = phi ptr [ %80, %77 ], [ %89, %87 ]
  store i8 %94, ptr %80, align 1, !tbaa !18
  %96 = icmp sgt i32 %78, 1
  br i1 %96, label %77, label %97, !llvm.loop !23

97:                                               ; preds = %93, %62
  %98 = phi ptr [ %65, %62 ], [ %95, %93 ]
  %99 = phi i32 [ %67, %62 ], [ %76, %93 ]
  %100 = icmp sge i32 %99, %61
  %101 = icmp eq i32 %63, 0
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds i8, ptr %66, i64 1
  %105 = load i8, ptr %66, align 1, !tbaa !18
  %106 = add nsw i32 %63, -1
  br label %62, !llvm.loop !25

107:                                              ; preds = %97
  br i1 %100, label %108, label %117

108:                                              ; preds = %107, %57, %30
  %109 = phi i32 [ %63, %107 ], [ %58, %57 ], [ %32, %30 ]
  %110 = phi ptr [ %66, %107 ], [ %59, %57 ], [ %31, %30 ]
  %111 = sub nsw i32 %21, %14
  %112 = getelementptr inbounds i8, ptr %23, i64 %19
  %113 = icmp sgt i32 %111, 0
  br i1 %113, label %20, label %114, !llvm.loop !26

114:                                              ; preds = %108, %8
  %115 = phi i32 [ %12, %8 ], [ %109, %108 ]
  %116 = phi ptr [ %10, %8 ], [ %110, %108 ]
  store ptr %116, ptr %9, align 8, !tbaa !19
  store i32 %115, ptr %11, align 8, !tbaa !20
  br label %123

117:                                              ; preds = %107, %57, %28
  %118 = load ptr, ptr %0, align 8, !tbaa !27
  %119 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  %120 = load i32, ptr %119, align 8, !tbaa !28
  %121 = zext i32 %120 to i64
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %118, ptr noundef nonnull @.str, i64 noundef %121) #4
  br label %123

122:                                              ; preds = %77
  unreachable

123:                                              ; preds = %117, %114
  %124 = phi i32 [ 0, %117 ], [ 1, %114 ]
  ret i32 %124
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!18 = !{!8, !8, i64 0}
!19 = !{!6, !7, i64 736}
!20 = !{!6, !10, i64 744}
!21 = !{!6, !10, i64 712}
!22 = !{!6, !10, i64 56}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = !{!6, !7, i64 0}
!28 = !{!6, !10, i64 536}
