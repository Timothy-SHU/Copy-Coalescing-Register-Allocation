; ModuleID = 'liblzma/simple/powerpc.c'
source_filename = "liblzma/simple/powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_powerpc_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_powerpc_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3
  ret i32 %4
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @powerpc_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !prof !34 {
  %6 = icmp ult i64 %4, 4
  br i1 %6, label %58, label %7

7:                                                ; preds = %5, %55
  %8 = phi i64 [ %56, %55 ], [ 4, %5 ]
  %9 = phi i64 [ %8, %55 ], [ 0, %5 ]
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !35
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 252
  %14 = icmp eq i32 %13, 72
  br i1 %14, label %15, label %55

15:                                               ; preds = %7
  %16 = or disjoint i64 %9, 3
  %17 = getelementptr inbounds i8, ptr %3, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !35
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  %23 = shl nuw nsw i32 %12, 24
  %24 = and i32 %23, 50331648
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
  %35 = and i32 %19, 252
  %36 = trunc i64 %9 to i32
  %37 = add i32 %36, %1
  %38 = sub i32 0, %37
  %39 = select i1 %2, i32 %37, i32 %38
  %40 = add i32 %24, %39
  %41 = add i32 %40, %35
  %42 = add i32 %41, %29
  %43 = add i32 %42, %34
  %44 = lshr i32 %43, 24
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 3
  %47 = or disjoint i8 %46, 72
  store i8 %47, ptr %10, align 1, !tbaa !35
  %48 = lshr i32 %43, 16
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %26, align 1, !tbaa !35
  %50 = lshr i32 %43, 8
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %31, align 1, !tbaa !35
  %52 = and i8 %18, 3
  %53 = trunc i32 %41 to i8
  %54 = or i8 %52, %53
  store i8 %54, ptr %17, align 1, !tbaa !35
  br label %55

55:                                               ; preds = %7, %15, %22
  %56 = add nuw i64 %8, 4
  %57 = icmp ugt i64 %56, %4
  br i1 %57, label %58, label %7, !llvm.loop !38

58:                                               ; preds = %55, %5
  %59 = phi i64 [ 0, %5 ], [ %8, %55 ]
  ret i64 %59
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
