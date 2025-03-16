; ModuleID = 'gxsample.c'
source_filename = "gxsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lookup4x1to32_identity = dso_local local_unnamed_addr constant [16 x i32] [i32 0, i32 -16777216, i32 16711680, i32 -65536, i32 65280, i32 -16711936, i32 16776960, i32 -256, i32 255, i32 -16776961, i32 16711935, i32 -65281, i32 65535, i32 -16711681, i32 16777215, i32 -1], align 16
@lookup4x1to32_inverted = dso_local local_unnamed_addr constant [16 x i32] [i32 -1, i32 16777215, i32 -16711681, i32 65535, i32 -65281, i32 16711935, i32 -16776961, i32 255, i32 -256, i32 16776960, i32 -16711936, i32 65280, i32 -65536, i32 16711680, i32 -16777216, i32 0], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @sample_unpack_copy(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef readnone returned %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5, i32 noundef %6) local_unnamed_addr #0 {
  store i32 %3, ptr %1, align 4, !tbaa !5
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sample_unpack_1(ptr noundef returned writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = ashr i32 %3, 3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %2, i64 %9
  %11 = sub i32 %4, %8
  %12 = icmp eq i32 %6, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %127, label %15

15:                                               ; preds = %13
  %16 = sext i32 %6 to i64
  br label %72

17:                                               ; preds = %7
  %18 = and i32 %11, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = load i8, ptr %10, align 1, !tbaa !9
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %22, 4
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %5, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !5
  store i32 %26, ptr %0, align 4, !tbaa !5
  %27 = and i32 %22, 15
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %5, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %30, ptr %31, align 4, !tbaa !5
  %32 = getelementptr inbounds i8, ptr %10, i64 1
  %33 = getelementptr inbounds i32, ptr %0, i64 2
  br label %34

34:                                               ; preds = %20, %17
  %35 = phi ptr [ %33, %20 ], [ %0, %17 ]
  %36 = phi ptr [ %32, %20 ], [ %10, %17 ]
  %37 = icmp ult i32 %11, 2
  br i1 %37, label %127, label %38

38:                                               ; preds = %34
  %39 = ashr i32 %11, 1
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %69, %40 ], [ %36, %38 ]
  %42 = phi i32 [ %44, %40 ], [ %39, %38 ]
  %43 = phi ptr [ %70, %40 ], [ %35, %38 ]
  %44 = add nsw i32 %42, -1
  %45 = load i8, ptr %41, align 1, !tbaa !9
  %46 = zext i8 %45 to i32
  %47 = lshr i32 %46, 4
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %5, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !5
  store i32 %50, ptr %43, align 4, !tbaa !5
  %51 = and i32 %46, 15
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %5, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = getelementptr inbounds i32, ptr %43, i64 1
  store i32 %54, ptr %55, align 4, !tbaa !5
  %56 = getelementptr inbounds i8, ptr %41, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !9
  %58 = zext i8 %57 to i32
  %59 = lshr i32 %58, 4
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %5, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = getelementptr inbounds i32, ptr %43, i64 2
  store i32 %62, ptr %63, align 4, !tbaa !5
  %64 = and i32 %58, 15
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %5, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !5
  %68 = getelementptr inbounds i32, ptr %43, i64 3
  store i32 %67, ptr %68, align 4, !tbaa !5
  %69 = getelementptr inbounds i8, ptr %41, i64 2
  %70 = getelementptr inbounds i32, ptr %43, i64 4
  %71 = icmp eq i32 %44, 0
  br i1 %71, label %127, label %40, !llvm.loop !10

72:                                               ; preds = %15, %72
  %73 = phi ptr [ %10, %15 ], [ %77, %72 ]
  %74 = phi i32 [ %11, %15 ], [ %76, %72 ]
  %75 = phi ptr [ %0, %15 ], [ %125, %72 ]
  %76 = add nsw i32 %74, -1
  %77 = getelementptr inbounds i8, ptr %73, i64 1
  %78 = load i8, ptr %73, align 1, !tbaa !9
  %79 = zext i8 %78 to i32
  %80 = lshr i32 %79, 7
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %5, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !9
  store i8 %83, ptr %75, align 1, !tbaa !9
  %84 = getelementptr inbounds i8, ptr %75, i64 %16
  %85 = lshr i32 %79, 6
  %86 = and i32 %85, 1
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %5, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !9
  store i8 %89, ptr %84, align 1, !tbaa !9
  %90 = getelementptr inbounds i8, ptr %84, i64 %16
  %91 = lshr i32 %79, 5
  %92 = and i32 %91, 1
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %5, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !9
  store i8 %95, ptr %90, align 1, !tbaa !9
  %96 = getelementptr inbounds i8, ptr %90, i64 %16
  %97 = lshr i32 %79, 4
  %98 = and i32 %97, 1
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %5, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !9
  store i8 %101, ptr %96, align 1, !tbaa !9
  %102 = getelementptr inbounds i8, ptr %96, i64 %16
  %103 = lshr i32 %79, 3
  %104 = and i32 %103, 1
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %5, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !9
  store i8 %107, ptr %102, align 1, !tbaa !9
  %108 = getelementptr inbounds i8, ptr %102, i64 %16
  %109 = lshr i32 %79, 2
  %110 = and i32 %109, 1
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %5, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !9
  store i8 %113, ptr %108, align 1, !tbaa !9
  %114 = getelementptr inbounds i8, ptr %108, i64 %16
  %115 = lshr i32 %79, 1
  %116 = and i32 %115, 1
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %5, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !9
  store i8 %119, ptr %114, align 1, !tbaa !9
  %120 = getelementptr inbounds i8, ptr %114, i64 %16
  %121 = and i32 %79, 1
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %5, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !9
  store i8 %124, ptr %120, align 1, !tbaa !9
  %125 = getelementptr inbounds i8, ptr %120, i64 %16
  %126 = icmp eq i32 %76, 0
  br i1 %126, label %127, label %72, !llvm.loop !12

127:                                              ; preds = %72, %40, %13, %34
  %128 = and i32 %3, 7
  store i32 %128, ptr %1, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sample_unpack_2(ptr noundef returned writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = ashr i32 %3, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %2, i64 %9
  %11 = sub i32 %4, %8
  %12 = icmp eq i32 %6, 1
  %13 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %14

14:                                               ; preds = %7
  br i1 %13, label %68, label %15

15:                                               ; preds = %14
  %16 = sext i32 %6 to i64
  br label %37

17:                                               ; preds = %7
  br i1 %13, label %68, label %18

18:                                               ; preds = %17, %18
  %19 = phi ptr [ %23, %18 ], [ %10, %17 ]
  %20 = phi i32 [ %22, %18 ], [ %11, %17 ]
  %21 = phi ptr [ %35, %18 ], [ %0, %17 ]
  %22 = add nsw i32 %20, -1
  %23 = getelementptr inbounds i8, ptr %19, i64 1
  %24 = load i8, ptr %19, align 1, !tbaa !9
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %25, 4
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds i16, ptr %5, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !13
  %30 = getelementptr inbounds i16, ptr %21, i64 1
  store i16 %29, ptr %21, align 2, !tbaa !13
  %31 = and i32 %25, 15
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds i16, ptr %5, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !13
  %35 = getelementptr inbounds i16, ptr %21, i64 2
  store i16 %34, ptr %30, align 2, !tbaa !13
  %36 = icmp eq i32 %22, 0
  br i1 %36, label %68, label %18, !llvm.loop !15

37:                                               ; preds = %15, %37
  %38 = phi ptr [ %10, %15 ], [ %42, %37 ]
  %39 = phi i32 [ %11, %15 ], [ %41, %37 ]
  %40 = phi ptr [ %0, %15 ], [ %66, %37 ]
  %41 = add nsw i32 %39, -1
  %42 = getelementptr inbounds i8, ptr %38, i64 1
  %43 = load i8, ptr %38, align 1, !tbaa !9
  %44 = zext i8 %43 to i32
  %45 = lshr i32 %44, 6
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %5, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !9
  store i8 %48, ptr %40, align 1, !tbaa !9
  %49 = getelementptr inbounds i8, ptr %40, i64 %16
  %50 = lshr i32 %44, 4
  %51 = and i32 %50, 3
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %5, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !9
  store i8 %54, ptr %49, align 1, !tbaa !9
  %55 = getelementptr inbounds i8, ptr %49, i64 %16
  %56 = lshr i32 %44, 2
  %57 = and i32 %56, 3
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %5, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !9
  store i8 %60, ptr %55, align 1, !tbaa !9
  %61 = getelementptr inbounds i8, ptr %55, i64 %16
  %62 = and i32 %44, 3
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %5, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !9
  store i8 %65, ptr %61, align 1, !tbaa !9
  %66 = getelementptr inbounds i8, ptr %61, i64 %16
  %67 = icmp eq i32 %41, 0
  br i1 %67, label %68, label %37, !llvm.loop !16

68:                                               ; preds = %37, %18, %14, %17
  %69 = and i32 %3, 3
  store i32 %69, ptr %1, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sample_unpack_4(ptr noundef returned writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = ashr i32 %3, 1
  %9 = sub i32 %4, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  %14 = sext i32 %6 to i64
  br label %15

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %0, %11 ], [ %32, %15 ]
  %17 = phi ptr [ %13, %11 ], [ %20, %15 ]
  %18 = phi i32 [ %9, %11 ], [ %19, %15 ]
  %19 = add nsw i32 %18, -1
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %17, align 1, !tbaa !9
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %22, 4
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %5, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !9
  store i8 %26, ptr %16, align 1, !tbaa !9
  %27 = getelementptr inbounds i8, ptr %16, i64 %14
  %28 = and i32 %22, 15
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %5, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !9
  store i8 %31, ptr %27, align 1, !tbaa !9
  %32 = getelementptr inbounds i8, ptr %27, i64 %14
  %33 = icmp eq i32 %19, 0
  br i1 %33, label %34, label %15, !llvm.loop !17

34:                                               ; preds = %15, %7
  %35 = and i32 %3, 1
  store i32 %35, ptr %1, align 4, !tbaa !5
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @sample_unpack_8(ptr noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i8, ptr %2, i64 %8
  store i32 0, ptr %1, align 4, !tbaa !5
  %10 = icmp eq i32 %6, 1
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load i8, ptr %5, align 4, !tbaa !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 255
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = icmp eq i8 %16, -1
  br i1 %17, label %50, label %18

18:                                               ; preds = %14, %11
  %19 = sub i32 %4, %3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %31, %21 ], [ %0, %18 ]
  %23 = phi i32 [ %25, %21 ], [ %19, %18 ]
  %24 = phi ptr [ %26, %21 ], [ %9, %18 ]
  %25 = add i32 %23, -1
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = load i8, ptr %24, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i8, ptr %5, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %30, ptr %22, align 1, !tbaa !9
  %32 = icmp eq i32 %25, 0
  br i1 %32, label %50, label %21, !llvm.loop !18

33:                                               ; preds = %7
  %34 = sub i32 %4, %3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = sext i32 %6 to i64
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i32 [ %34, %36 ], [ %42, %38 ]
  %40 = phi ptr [ %0, %36 ], [ %48, %38 ]
  %41 = phi ptr [ %9, %36 ], [ %47, %38 ]
  %42 = add nsw i32 %39, -1
  %43 = load i8, ptr %41, align 1, !tbaa !9
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, ptr %5, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !9
  store i8 %46, ptr %40, align 1, !tbaa !9
  %47 = getelementptr inbounds i8, ptr %41, i64 1
  %48 = getelementptr inbounds i8, ptr %40, i64 %37
  %49 = icmp eq i32 %42, 0
  br i1 %49, label %50, label %38, !llvm.loop !19

50:                                               ; preds = %38, %21, %33, %18, %14
  %51 = phi ptr [ %9, %14 ], [ %0, %18 ], [ %0, %33 ], [ %0, %21 ], [ %0, %38 ]
  ret ptr %51
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
