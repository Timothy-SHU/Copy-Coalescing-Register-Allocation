; ModuleID = 'ldecod_src/blk_prediction.c'
source_filename = "ldecod_src/blk_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_residue(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %7
  %10 = sext i32 %4 to i64
  %11 = sext i32 %3 to i64
  %12 = icmp sgt i32 %5, 0
  %13 = zext nneg i32 %6 to i64
  br label %14

14:                                               ; preds = %9, %41
  %15 = phi i64 [ 0, %9 ], [ %42, %41 ]
  br i1 %12, label %16, label %41

16:                                               ; preds = %14
  %17 = getelementptr inbounds ptr, ptr %2, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds i32, ptr %18, i64 %11
  %20 = getelementptr inbounds ptr, ptr %1, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds i16, ptr %21, i64 %11
  %23 = getelementptr inbounds ptr, ptr %0, i64 %15
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds i16, ptr %24, i64 %10
  br label %26

26:                                               ; preds = %16, %26
  %27 = phi i32 [ %39, %26 ], [ 0, %16 ]
  %28 = phi ptr [ %38, %26 ], [ %19, %16 ]
  %29 = phi ptr [ %34, %26 ], [ %22, %16 ]
  %30 = phi ptr [ %31, %26 ], [ %25, %16 ]
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %30, align 2, !tbaa !38
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds i16, ptr %29, i64 1
  %35 = load i16, ptr %29, align 2, !tbaa !38
  %36 = zext i16 %35 to i32
  %37 = sub nsw i32 %33, %36
  %38 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %37, ptr %28, align 4, !tbaa !40
  %39 = add nuw nsw i32 %27, 1
  %40 = icmp eq i32 %39, %5
  br i1 %40, label %41, label %26, !llvm.loop !42

41:                                               ; preds = %26, %14
  %42 = add nuw nsw i64 %15, 1
  %43 = icmp eq i64 %42, %13
  br i1 %43, label %44, label %14, !llvm.loop !45

44:                                               ; preds = %41, %7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sample_reconstruct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %9
  %12 = sext i32 %4 to i64
  %13 = sext i32 %3 to i64
  %14 = icmp sgt i32 %5, 0
  %15 = add nsw i32 %8, -1
  %16 = shl nuw i32 1, %15
  %17 = zext nneg i32 %6 to i64
  br label %18

18:                                               ; preds = %11, %49
  %19 = phi i64 [ 0, %11 ], [ %50, %49 ]
  br i1 %14, label %20, label %49

20:                                               ; preds = %18
  %21 = getelementptr inbounds ptr, ptr %2, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds i32, ptr %22, i64 %13
  %24 = getelementptr inbounds ptr, ptr %1, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds i16, ptr %25, i64 %13
  %27 = getelementptr inbounds ptr, ptr %0, i64 %19
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i16, ptr %28, i64 %12
  br label %30

30:                                               ; preds = %20, %30
  %31 = phi i32 [ %47, %30 ], [ 0, %20 ]
  %32 = phi ptr [ %35, %30 ], [ %23, %20 ]
  %33 = phi ptr [ %39, %30 ], [ %26, %20 ]
  %34 = phi ptr [ %46, %30 ], [ %29, %20 ]
  %35 = getelementptr inbounds i32, ptr %32, i64 1
  %36 = load i32, ptr %32, align 4, !tbaa !40
  %37 = add nsw i32 %36, %16
  %38 = ashr i32 %37, %8
  %39 = getelementptr inbounds i16, ptr %33, i64 1
  %40 = load i16, ptr %33, align 2, !tbaa !38
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 %38, %41
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 0)
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %7)
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds i16, ptr %34, i64 1
  store i16 %45, ptr %34, align 2, !tbaa !38
  %47 = add nuw nsw i32 %31, 1
  %48 = icmp eq i32 %47, %5
  br i1 %48, label %49, label %30, !llvm.loop !46

49:                                               ; preds = %30, %18
  %50 = add nuw nsw i64 %19, 1
  %51 = icmp eq i64 %50, %17
  br i1 %51, label %52, label %18, !llvm.loop !47

52:                                               ; preds = %49, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !36, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !43, !44}
!46 = distinct !{!46, !43, !44}
!47 = distinct !{!47, !43, !44}
