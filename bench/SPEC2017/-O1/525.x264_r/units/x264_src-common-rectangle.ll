; ModuleID = 'x264_src/common/rectangle.c'
source_filename = "x264_src/common/rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x264_cache_mv_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mv_1_1, ptr @x264_macroblock_cache_mv_2_1, ptr @x264_macroblock_cache_mv_1_2, ptr @x264_macroblock_cache_mv_2_2, ptr null, ptr @x264_macroblock_cache_mv_4_2, ptr null, ptr @x264_macroblock_cache_mv_2_4, ptr null, ptr @x264_macroblock_cache_mv_4_4], align 16
@x264_cache_mvd_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_mvd_1_1, ptr @x264_macroblock_cache_mvd_2_1, ptr @x264_macroblock_cache_mvd_1_2, ptr @x264_macroblock_cache_mvd_2_2, ptr null, ptr @x264_macroblock_cache_mvd_4_2, ptr null, ptr @x264_macroblock_cache_mvd_2_4, ptr null, ptr @x264_macroblock_cache_mvd_4_4], align 16
@x264_cache_ref_func_table = dso_local local_unnamed_addr global [10 x ptr] [ptr @x264_macroblock_cache_ref_1_1, ptr @x264_macroblock_cache_ref_2_1, ptr @x264_macroblock_cache_ref_1_2, ptr @x264_macroblock_cache_ref_2_2, ptr null, ptr @x264_macroblock_cache_ref_4_2, ptr null, ptr @x264_macroblock_cache_ref_2_4, ptr null, ptr @x264_macroblock_cache_ref_4_4], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_mv_4_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, 4294967297
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %12, %5 ], [ %0, %2 ]
  %7 = phi i32 [ %11, %5 ], [ 4, %2 ]
  store i64 %4, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %4, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %6, i64 32
  store i64 %4, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %6, i64 40
  store i64 %4, ptr %10, align 8, !tbaa !34
  %11 = add nsw i32 %7, -2
  %12 = getelementptr inbounds i8, ptr %6, i64 64
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %5, !llvm.loop !37

14:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, 4294967297
  store i64 %4, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 %4, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %0, i64 64
  store i64 %4, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %0, i64 96
  store i64 %4, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_4_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, 4294967297
  store i64 %4, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %4, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 %4, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 %4, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, 4294967297
  store i64 %4, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 %4, ptr %5, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_2_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, 4294967297
  store i64 %4, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_1_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  store i32 %1, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %1, ptr %3, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mv_1_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  store i32 %1, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_4_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = mul i32 %1, 65537
  %4 = zext i32 %3 to i64
  %5 = mul nuw i64 %4, 4294967297
  store i64 %5, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %5, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 %5, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds i8, ptr %0, i64 48
  store i64 %5, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = mul i32 %1, 65537
  store i32 %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %3, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %3, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %3, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_4_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = mul i32 %1, 65537
  %4 = zext i32 %3 to i64
  %5 = mul nuw i64 %4, 4294967297
  store i64 %5, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %5, ptr %6, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = mul i32 %1, 65537
  store i32 %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %3, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_2_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = mul i32 %1, 65537
  store i32 %3, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_1_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = trunc i32 %1 to i16
  store i16 %3, ptr %0, align 2, !tbaa !34
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store i16 %3, ptr %4, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_mvd_1_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = trunc i32 %1 to i16
  store i16 %3, ptr %0, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_4_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = mul i32 %1, 16843009
  store i32 %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %3, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 %3, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_4(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = trunc i32 %1 to i16
  %4 = mul i16 %3, 257
  store i16 %4, ptr %0, align 2, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i16 %4, ptr %5, align 2, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store i16 %4, ptr %6, align 2, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store i16 %4, ptr %7, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_4_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = mul i32 %1, 16843009
  store i32 %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_2(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = trunc i32 %1 to i16
  %4 = mul i16 %3, 257
  store i16 %4, ptr %0, align 2, !tbaa !34
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i16 %4, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_macroblock_cache_ref_2_1(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  %3 = trunc i32 %1 to i16
  %4 = mul i16 %3, 257
  store i16 %4, ptr %0, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @x264_macroblock_cache_ref_1_2(ptr nocapture readnone %0, i32 %1) #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @x264_macroblock_cache_ref_1_1(ptr nocapture readnone %0, i32 %1) #2 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
