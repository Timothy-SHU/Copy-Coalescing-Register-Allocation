; ModuleID = 'liblzma/simple/sparc.c'
source_filename = "liblzma/simple/sparc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_sparc_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @sparc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_sparc_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @sparc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3
  ret i32 %4
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @sparc_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !prof !34 {
  %6 = icmp ult i64 %4, 4
  br i1 %6, label %64, label %7

7:                                                ; preds = %5, %61
  %8 = phi i64 [ %62, %61 ], [ 4, %5 ]
  %9 = phi i64 [ %8, %61 ], [ 0, %5 ]
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !35
  switch i8 %11, label %61 [
    i8 64, label %12
    i8 127, label %19
  ]

12:                                               ; preds = %7
  %13 = or disjoint i64 %9, 1
  %14 = getelementptr inbounds i8, ptr %3, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !35
  %16 = icmp ult i8 %15, 64
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = icmp eq i8 %11, 127
  br i1 %18, label %19, label %61

19:                                               ; preds = %7, %17
  %20 = or disjoint i64 %9, 1
  %21 = getelementptr inbounds i8, ptr %3, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %23 = icmp ugt i8 %22, -65
  br i1 %23, label %24, label %61

24:                                               ; preds = %19, %12
  %25 = or disjoint i64 %9, 1
  %26 = getelementptr inbounds i8, ptr %3, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !35
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or disjoint i64 %9, 2
  %31 = getelementptr inbounds i8, ptr %3, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !35
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %29, %34
  %36 = or disjoint i64 %9, 3
  %37 = getelementptr inbounds i8, ptr %3, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !35
  %39 = zext i8 %38 to i32
  %40 = or disjoint i32 %35, %39
  %41 = shl nuw nsw i32 %40, 2
  %42 = trunc i64 %9 to i32
  %43 = add i32 %42, %1
  %44 = sub i32 0, %43
  %45 = select i1 %2, i32 %43, i32 %44
  %46 = add i32 %41, %45
  %47 = lshr i32 %46, 2
  %48 = shl i32 %46, 7
  %49 = ashr i32 %48, 9
  %50 = and i32 %49, 1069547520
  %51 = and i32 %47, 4128768
  %52 = or disjoint i32 %50, %51
  %53 = lshr i32 %50, 24
  %54 = trunc i32 %53 to i8
  %55 = or disjoint i8 %54, 64
  store i8 %55, ptr %10, align 1, !tbaa !35
  %56 = lshr exact i32 %52, 16
  %57 = trunc i32 %56 to i8
  store i8 %57, ptr %26, align 1, !tbaa !35
  %58 = lshr i32 %46, 10
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %31, align 1, !tbaa !35
  %60 = trunc i32 %47 to i8
  store i8 %60, ptr %37, align 1, !tbaa !35
  br label %61

61:                                               ; preds = %19, %7, %17, %24
  %62 = add nuw i64 %8, 4
  %63 = icmp ugt i64 %62, %4
  br i1 %63, label %64, label %7, !llvm.loop !38

64:                                               ; preds = %61, %5
  %65 = phi i64 [ 0, %5 ], [ %8, %61 ]
  ret i64 %65
}

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
