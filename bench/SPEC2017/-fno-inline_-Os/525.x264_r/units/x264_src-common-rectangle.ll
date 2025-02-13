; ModuleID = 'x264_src/common/rectangle.c'
source_filename = "x264_src/common/rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x264_cache_mv_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mv_1_1, ptr @x264_macroblock_cache_mv_2_1, ptr @x264_macroblock_cache_mv_1_2, ptr @x264_macroblock_cache_mv_2_2, ptr null, ptr @x264_macroblock_cache_mv_4_2, ptr null, ptr @x264_macroblock_cache_mv_2_4, ptr null, ptr @x264_macroblock_cache_mv_4_4], align 16
@x264_cache_mvd_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mvd_1_1, ptr @x264_macroblock_cache_mvd_2_1, ptr @x264_macroblock_cache_mvd_1_2, ptr @x264_macroblock_cache_mvd_2_2, ptr null, ptr @x264_macroblock_cache_mvd_4_2, ptr null, ptr @x264_macroblock_cache_mvd_2_4, ptr null, ptr @x264_macroblock_cache_mvd_4_4], align 16
@x264_cache_ref_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_ref_1_1, ptr @x264_macroblock_cache_ref_2_1, ptr @x264_macroblock_cache_ref_1_2, ptr @x264_macroblock_cache_ref_2_2, ptr null, ptr @x264_macroblock_cache_ref_4_2, ptr null, ptr @x264_macroblock_cache_ref_2_4, ptr null, ptr @x264_macroblock_cache_ref_4_4], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mv_4_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 4, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_cache_rect(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !34 {
  %6 = icmp eq i32 %3, 2
  %7 = mul i32 %4, 257
  %8 = select i1 %6, i32 %4, i32 %7
  %9 = trunc i32 %8 to i16
  %10 = icmp eq i32 %3, 4
  %11 = select i1 %6, i32 65537, i32 16843009
  %12 = select i1 %10, i32 1, i32 %11
  %13 = mul i32 %12, %4
  %14 = zext i32 %13 to i64
  %15 = mul nuw i64 %14, 4294967297
  %16 = shl nuw nsw i32 %3, 3
  %17 = add i32 %1, -2
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 31)
  switch i32 %18, label %71 [
    i32 0, label %23
    i32 1, label %36
    i32 3, label %49
    i32 7, label %19
  ]

19:                                               ; preds = %5
  %20 = zext nneg i32 %16 to i64
  %21 = shl nuw nsw i32 %3, 4
  %22 = zext nneg i32 %21 to i64
  br label %62

23:                                               ; preds = %5
  store i16 %9, ptr %0, align 2, !tbaa !35
  %24 = icmp eq i32 %2, 1
  br i1 %24, label %71, label %25

25:                                               ; preds = %23
  %26 = zext nneg i32 %16 to i64
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  store i16 %9, ptr %27, align 2, !tbaa !35
  %28 = icmp eq i32 %2, 2
  br i1 %28, label %71, label %29

29:                                               ; preds = %25
  %30 = shl nuw nsw i32 %3, 4
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  store i16 %9, ptr %32, align 2, !tbaa !35
  %33 = mul nuw nsw i32 %3, 24
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  store i16 %9, ptr %35, align 2, !tbaa !35
  br label %71

36:                                               ; preds = %5
  store i32 %13, ptr %0, align 4, !tbaa !35
  %37 = icmp eq i32 %2, 1
  br i1 %37, label %71, label %38

38:                                               ; preds = %36
  %39 = zext nneg i32 %16 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  store i32 %13, ptr %40, align 4, !tbaa !35
  %41 = icmp eq i32 %2, 2
  br i1 %41, label %71, label %42

42:                                               ; preds = %38
  %43 = shl nuw nsw i32 %3, 4
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  store i32 %13, ptr %45, align 4, !tbaa !35
  %46 = mul nuw nsw i32 %3, 24
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  store i32 %13, ptr %48, align 4, !tbaa !35
  br label %71

49:                                               ; preds = %5
  store i64 %15, ptr %0, align 8, !tbaa !35
  %50 = icmp eq i32 %2, 1
  br i1 %50, label %71, label %51

51:                                               ; preds = %49
  %52 = zext nneg i32 %16 to i64
  %53 = getelementptr inbounds i8, ptr %0, i64 %52
  store i64 %15, ptr %53, align 8, !tbaa !35
  %54 = icmp eq i32 %2, 2
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = shl nuw nsw i32 %3, 4
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  store i64 %15, ptr %58, align 8, !tbaa !35
  %59 = mul nuw nsw i32 %3, 24
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  store i64 %15, ptr %61, align 8, !tbaa !35
  br label %71

62:                                               ; preds = %19, %62
  %63 = phi ptr [ %69, %62 ], [ %0, %19 ]
  %64 = phi i32 [ %68, %62 ], [ %2, %19 ]
  store i64 %15, ptr %63, align 8, !tbaa !35
  %65 = getelementptr inbounds i8, ptr %63, i64 8
  store i64 %15, ptr %65, align 8, !tbaa !35
  %66 = getelementptr inbounds i8, ptr %63, i64 %20
  store i64 %15, ptr %66, align 8, !tbaa !35
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  store i64 %15, ptr %67, align 8, !tbaa !35
  %68 = add nsw i32 %64, -2
  %69 = getelementptr inbounds i8, ptr %63, i64 %22
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %62, !llvm.loop !38

71:                                               ; preds = %62, %29, %55, %42, %5, %51, %49, %38, %36, %25, %23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mv_2_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 4, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mv_4_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 16, i32 noundef 2, i32 noundef 4, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mv_2_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 4, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mv_2_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 4, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mv_1_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 4, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mv_1_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 4, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mvd_4_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 2, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 2, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mvd_4_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 2, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 2, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 2, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mvd_1_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mvd_1_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_ref_4_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 1, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_ref_2_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 1, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_ref_4_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 1, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_ref_2_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_ref_2_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_ref_1_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef %1) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_ref_1_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %1) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"rectangle.c:x264_macroblock_cache_rect"}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
