; ModuleID = 'ldecod_src/nal.c'
source_filename = "ldecod_src/nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@str = private unnamed_addr constant [40 x i8] c" Panic: All zero data sequence in RBSP \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @RBSPtoSODB(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr i8, ptr %0, i64 %3
  %5 = getelementptr i8, ptr %4, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = and i8 %6, 1
  %8 = getelementptr i8, ptr %0, i64 -1
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2, %21
  %11 = phi i32 [ %23, %21 ], [ 0, %2 ]
  %12 = phi i32 [ %22, %21 ], [ %1, %2 ]
  %13 = add nsw i32 %11, 1
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %19

19:                                               ; preds = %17, %15
  %20 = add nsw i32 %12, -1
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %20, %19 ], [ %12, %10 ]
  %23 = phi i32 [ 0, %19 ], [ %13, %10 ]
  %24 = sext i32 %22 to i64
  %25 = getelementptr i8, ptr %8, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %23
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %10, label %31, !llvm.loop !37

31:                                               ; preds = %21, %2
  %32 = phi i32 [ %1, %2 ], [ %22, %21 ]
  ret i32 %32
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @EBSPtoRBSP(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %50, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %2, %1
  br i1 %6, label %7, label %50

7:                                                ; preds = %5
  %8 = add nsw i32 %1, -1
  %9 = sext i32 %2 to i64
  br label %10

10:                                               ; preds = %7, %32
  %11 = phi i64 [ %9, %7 ], [ %43, %32 ]
  %12 = phi i32 [ 0, %7 ], [ %42, %32 ]
  %13 = phi i32 [ %2, %7 ], [ %44, %32 ]
  %14 = icmp eq i32 %12, 2
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = icmp ult i8 %18, 3
  br i1 %19, label %50, label %20

20:                                               ; preds = %15
  %21 = icmp eq i8 %18, 3
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = icmp slt i32 %13, %8
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %17, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = icmp ugt i8 %26, 3
  br i1 %27, label %50, label %28

28:                                               ; preds = %24, %22
  %29 = icmp eq i32 %13, %8
  br i1 %29, label %48, label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %13, 1
  br label %32

32:                                               ; preds = %10, %30, %20
  %33 = phi i32 [ %31, %30 ], [ %13, %20 ], [ %13, %10 ]
  %34 = phi i32 [ 0, %30 ], [ 2, %20 ], [ %12, %10 ]
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %37, ptr %38, align 1, !tbaa !34
  %39 = load i8, ptr %36, align 1, !tbaa !34
  %40 = icmp eq i8 %39, 0
  %41 = add nsw i32 %34, 1
  %42 = select i1 %40, i32 %41, i32 0
  %43 = add i64 %11, 1
  %44 = add nsw i32 %33, 1
  %45 = icmp slt i32 %44, %1
  br i1 %45, label %10, label %46, !llvm.loop !40

46:                                               ; preds = %32
  %47 = trunc i64 %43 to i32
  br label %50

48:                                               ; preds = %28
  %49 = trunc i64 %11 to i32
  br label %50

50:                                               ; preds = %46, %48, %24, %15, %5, %3
  %51 = phi i32 [ %1, %3 ], [ %2, %5 ], [ %47, %46 ], [ %49, %48 ], [ -1, %24 ], [ -1, %15 ]
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !38, !39}
