; ModuleID = 'ldecod_src/nal.c'
source_filename = "ldecod_src/nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@str = private unnamed_addr constant [40 x i8] c" Panic: All zero data sequence in RBSP \00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @RBSPtoSODB(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr i8, ptr %0, i64 %3
  %5 = getelementptr i8, ptr %4, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !35
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
  %26 = load i8, ptr %25, align 1, !tbaa !35
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %23
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %10, label %31, !llvm.loop !38

31:                                               ; preds = %21, %2
  %32 = phi i32 [ %1, %2 ], [ %22, %21 ]
  ret i32 %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i32 @EBSPtoRBSP(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %2, %1
  br i1 %6, label %7, label %49

7:                                                ; preds = %5
  %8 = add nsw i32 %1, -1
  %9 = sext i32 %2 to i64
  br label %10

10:                                               ; preds = %7, %32
  %11 = phi i64 [ %9, %7 ], [ %42, %32 ]
  %12 = phi i32 [ 0, %7 ], [ %41, %32 ]
  %13 = phi i32 [ %2, %7 ], [ %43, %32 ]
  %14 = icmp eq i32 %12, 2
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !35
  %19 = icmp ult i8 %18, 3
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = icmp eq i8 %18, 3
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = icmp slt i32 %13, %8
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %17, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !35
  %27 = icmp ugt i8 %26, 3
  br i1 %27, label %49, label %28

28:                                               ; preds = %24, %22
  %29 = icmp eq i32 %13, %8
  br i1 %29, label %47, label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %13, 1
  br label %32

32:                                               ; preds = %10, %30, %20
  %33 = phi i32 [ %31, %30 ], [ %13, %20 ], [ %13, %10 ]
  %34 = phi i32 [ 0, %30 ], [ 2, %20 ], [ %12, %10 ]
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !35
  %38 = getelementptr inbounds i8, ptr %0, i64 %11
  store i8 %37, ptr %38, align 1, !tbaa !35
  %39 = icmp eq i8 %37, 0
  %40 = add nsw i32 %34, 1
  %41 = select i1 %39, i32 %40, i32 0
  %42 = add i64 %11, 1
  %43 = add nsw i32 %33, 1
  %44 = icmp slt i32 %43, %1
  br i1 %44, label %10, label %45, !llvm.loop !40

45:                                               ; preds = %32
  %46 = trunc i64 %42 to i32
  br label %49

47:                                               ; preds = %28
  %48 = trunc i64 %11 to i32
  br label %49

49:                                               ; preds = %24, %15, %45, %47, %5, %3
  %50 = phi i32 [ %1, %3 ], [ %2, %5 ], [ %46, %45 ], [ %48, %47 ], [ -1, %15 ], [ -1, %24 ]
  ret i32 %50
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
