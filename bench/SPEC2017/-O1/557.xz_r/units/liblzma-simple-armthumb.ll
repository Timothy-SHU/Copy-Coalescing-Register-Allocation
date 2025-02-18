; ModuleID = 'liblzma/simple/armthumb.c'
source_filename = "liblzma/simple/armthumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_armthumb_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @armthumb_code, i64 noundef 0, i64 noundef 4, i32 noundef 2, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_armthumb_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @armthumb_code, i64 noundef 0, i64 noundef 4, i32 noundef 2, i1 noundef zeroext false) #3
  ret i32 %4
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @armthumb_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !prof !34 {
  %6 = icmp ult i64 %4, 4
  br i1 %6, label %65, label %7

7:                                                ; preds = %5
  %8 = add i32 %1, 4
  br label %9

9:                                                ; preds = %7, %60
  %10 = phi i64 [ 0, %7 ], [ %62, %60 ]
  %11 = getelementptr i8, ptr %3, i64 %10
  %12 = getelementptr i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !35
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 248
  %16 = icmp eq i32 %15, 240
  br i1 %16, label %17, label %60

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %11, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !35
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 248
  %22 = icmp eq i32 %21, 248
  br i1 %22, label %23, label %60

23:                                               ; preds = %17
  %24 = shl nuw nsw i32 %14, 19
  %25 = and i32 %24, 3670016
  %26 = load i8, ptr %11, align 1, !tbaa !35
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 11
  %29 = or disjoint i32 %28, %25
  %30 = shl nuw nsw i32 %20, 8
  %31 = and i32 %30, 1792
  %32 = or disjoint i32 %29, %31
  %33 = add i64 %10, 2
  %34 = getelementptr inbounds i8, ptr %3, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !35
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %32, %36
  %38 = shl nuw nsw i32 %37, 1
  %39 = trunc i64 %10 to i32
  br i1 %2, label %40, label %43

40:                                               ; preds = %23
  %41 = add i32 %8, %39
  %42 = add i32 %41, %38
  br label %47

43:                                               ; preds = %23
  %44 = add i32 %39, %1
  %45 = sub i32 %38, %44
  %46 = add i32 %45, -4
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i32 [ %42, %40 ], [ %46, %43 ]
  %49 = lshr i32 %48, 1
  %50 = lshr i32 %48, 20
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 7
  %53 = or disjoint i8 %52, -16
  store i8 %53, ptr %12, align 1, !tbaa !35
  %54 = lshr i32 %48, 12
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr %11, align 1, !tbaa !35
  %56 = lshr i32 %48, 9
  %57 = trunc i32 %56 to i8
  %58 = or i8 %57, -8
  store i8 %58, ptr %18, align 1, !tbaa !35
  %59 = trunc i32 %49 to i8
  store i8 %59, ptr %34, align 1, !tbaa !35
  br label %60

60:                                               ; preds = %9, %17, %47
  %61 = phi i64 [ %33, %47 ], [ %10, %17 ], [ %10, %9 ]
  %62 = add i64 %61, 2
  %63 = add i64 %61, 6
  %64 = icmp ugt i64 %63, %4
  br i1 %64, label %65, label %9, !llvm.loop !38

65:                                               ; preds = %60, %5
  %66 = phi i64 [ 0, %5 ], [ %62, %60 ]
  ret i64 %66
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
