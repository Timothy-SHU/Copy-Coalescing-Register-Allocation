; ModuleID = 'src/tif_swab.c'
source_filename = "src/tif_swab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TIFFBitRevTable = internal constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 16
@TIFFNoBitRevTable = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @TIFFSwabShort(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = load i8, ptr %0, align 1, !tbaa !5
  store i8 %4, ptr %2, align 1, !tbaa !5
  store i8 %3, ptr %0, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @TIFFSwabLong(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 3
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = load i8, ptr %0, align 1, !tbaa !5
  store i8 %4, ptr %2, align 1, !tbaa !5
  store i8 %3, ptr %0, align 1, !tbaa !5
  %5 = getelementptr inbounds i8, ptr %0, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  store i8 %8, ptr %5, align 1, !tbaa !5
  store i8 %6, ptr %7, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TIFFSwabArrayOfShort(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %11, %4 ], [ %0, %2 ]
  %6 = phi i64 [ %7, %4 ], [ %1, %2 ]
  %7 = add i64 %6, -1
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = load i8, ptr %5, align 1, !tbaa !5
  store i8 %10, ptr %8, align 1, !tbaa !5
  store i8 %9, ptr %5, align 1, !tbaa !5
  %11 = getelementptr inbounds i16, ptr %5, i64 1
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %13, label %4, !llvm.loop !8

13:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TIFFSwabArrayOfLong(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %15, %4 ], [ %0, %2 ]
  %6 = phi i64 [ %7, %4 ], [ %1, %2 ]
  %7 = add i64 %6, -1
  %8 = getelementptr inbounds i8, ptr %5, i64 3
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = load i8, ptr %5, align 1, !tbaa !5
  store i8 %10, ptr %8, align 1, !tbaa !5
  store i8 %9, ptr %5, align 1, !tbaa !5
  %11 = getelementptr inbounds i8, ptr %5, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %5, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  store i8 %14, ptr %11, align 1, !tbaa !5
  store i8 %12, ptr %13, align 1, !tbaa !5
  %15 = getelementptr inbounds i32, ptr %5, i64 1
  %16 = icmp eq i64 %7, 0
  br i1 %16, label %17, label %4, !llvm.loop !10

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TIFFSwabDouble(ptr nocapture noundef %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %13, %2 ], [ %0, %1 ]
  %4 = phi i64 [ %5, %2 ], [ 2, %1 ]
  %5 = add nsw i64 %4, -1
  %6 = getelementptr inbounds i8, ptr %3, i64 3
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = load i8, ptr %3, align 1, !tbaa !5
  store i8 %8, ptr %6, align 1, !tbaa !5
  store i8 %7, ptr %3, align 1, !tbaa !5
  %9 = getelementptr inbounds i8, ptr %3, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = getelementptr inbounds i8, ptr %3, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !5
  store i8 %12, ptr %9, align 1, !tbaa !5
  store i8 %10, ptr %11, align 1, !tbaa !5
  %13 = getelementptr inbounds i32, ptr %3, i64 1
  %14 = icmp eq i64 %5, 0
  br i1 %14, label %15, label %2, !llvm.loop !10

15:                                               ; preds = %2
  %16 = load i32, ptr %0, align 4, !tbaa !11
  %17 = getelementptr inbounds i32, ptr %0, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !11
  store i32 %18, ptr %0, align 4, !tbaa !11
  store i32 %16, ptr %17, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TIFFSwabArrayOfDouble(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = shl i64 %1, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %16, %5 ], [ %0, %2 ]
  %7 = phi i64 [ %8, %5 ], [ %3, %2 ]
  %8 = add i64 %7, -1
  %9 = getelementptr inbounds i8, ptr %6, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = load i8, ptr %6, align 1, !tbaa !5
  store i8 %11, ptr %9, align 1, !tbaa !5
  store i8 %10, ptr %6, align 1, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %6, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = getelementptr inbounds i8, ptr %6, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !5
  store i8 %15, ptr %12, align 1, !tbaa !5
  store i8 %13, ptr %14, align 1, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %6, i64 1
  %17 = icmp eq i64 %8, 0
  br i1 %17, label %18, label %5, !llvm.loop !10

18:                                               ; preds = %5, %2
  %19 = icmp eq i64 %1, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %23, %20 ], [ %1, %18 ]
  %22 = phi ptr [ %27, %20 ], [ %0, %18 ]
  %23 = add i64 %21, -1
  %24 = load i32, ptr %22, align 4, !tbaa !11
  %25 = getelementptr inbounds i32, ptr %22, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !11
  store i32 %26, ptr %22, align 4, !tbaa !11
  store i32 %24, ptr %25, align 4, !tbaa !11
  %27 = getelementptr inbounds i32, ptr %22, i64 2
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %29, label %20, !llvm.loop !13

29:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @TIFFGetBitRevTable(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, ptr @TIFFNoBitRevTable, ptr @TIFFBitRevTable
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TIFFReverseBits(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ugt i64 %1, 8
  br i1 %3, label %8, label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %0, %2 ], [ %50, %8 ]
  %6 = phi i64 [ %1, %2 ], [ %51, %8 ]
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %63, label %53

8:                                                ; preds = %2, %8
  %9 = phi i64 [ %51, %8 ], [ %1, %2 ]
  %10 = phi ptr [ %50, %8 ], [ %0, %2 ]
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !5
  store i8 %14, ptr %10, align 1, !tbaa !5
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !5
  store i8 %19, ptr %15, align 1, !tbaa !5
  %20 = getelementptr inbounds i8, ptr %10, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !5
  store i8 %24, ptr %20, align 1, !tbaa !5
  %25 = getelementptr inbounds i8, ptr %10, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !5
  store i8 %29, ptr %25, align 1, !tbaa !5
  %30 = getelementptr inbounds i8, ptr %10, i64 4
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !5
  store i8 %34, ptr %30, align 1, !tbaa !5
  %35 = getelementptr inbounds i8, ptr %10, i64 5
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !5
  store i8 %39, ptr %35, align 1, !tbaa !5
  %40 = getelementptr inbounds i8, ptr %10, i64 6
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !5
  store i8 %44, ptr %40, align 1, !tbaa !5
  %45 = getelementptr inbounds i8, ptr %10, i64 7
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !5
  store i8 %49, ptr %45, align 1, !tbaa !5
  %50 = getelementptr inbounds i8, ptr %10, i64 8
  %51 = add i64 %9, -8
  %52 = icmp ugt i64 %51, 8
  br i1 %52, label %8, label %4, !llvm.loop !14

53:                                               ; preds = %4, %53
  %54 = phi i64 [ %56, %53 ], [ %6, %4 ]
  %55 = phi ptr [ %61, %53 ], [ %5, %4 ]
  %56 = add i64 %54, -1
  %57 = load i8, ptr %55, align 1, !tbaa !5
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5
  store i8 %60, ptr %55, align 1, !tbaa !5
  %61 = getelementptr inbounds i8, ptr %55, i64 1
  %62 = icmp eq i64 %56, 0
  br i1 %62, label %63, label %53, !llvm.loop !15

63:                                               ; preds = %53, %4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
