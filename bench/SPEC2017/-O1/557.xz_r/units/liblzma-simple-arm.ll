; ModuleID = 'liblzma/simple/arm.c'
source_filename = "liblzma/simple/arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_arm_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @arm_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #3
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_arm_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @arm_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #3
  ret i32 %4
}

declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @arm_code(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 !prof !34 {
  %6 = icmp ult i64 %4, 4
  br i1 %6, label %52, label %7

7:                                                ; preds = %5
  %8 = add i32 %1, 8
  br label %9

9:                                                ; preds = %7, %49
  %10 = phi i64 [ 4, %7 ], [ %50, %49 ]
  %11 = phi i64 [ 0, %7 ], [ %10, %49 ]
  %12 = or disjoint i64 %11, 3
  %13 = getelementptr inbounds i8, ptr %3, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !35
  %15 = icmp eq i8 %14, -21
  br i1 %15, label %16, label %49

16:                                               ; preds = %9
  %17 = or disjoint i64 %11, 2
  %18 = getelementptr inbounds i8, ptr %3, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !35
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 16
  %22 = or disjoint i64 %11, 1
  %23 = getelementptr inbounds i8, ptr %3, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !35
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or disjoint i32 %26, %21
  %28 = getelementptr inbounds i8, ptr %3, i64 %11
  %29 = load i8, ptr %28, align 1, !tbaa !35
  %30 = zext i8 %29 to i32
  %31 = or disjoint i32 %27, %30
  %32 = shl nuw nsw i32 %31, 2
  %33 = trunc i64 %11 to i32
  br i1 %2, label %34, label %37

34:                                               ; preds = %16
  %35 = add i32 %8, %33
  %36 = add i32 %35, %32
  br label %41

37:                                               ; preds = %16
  %38 = add i32 %33, %1
  %39 = sub i32 %32, %38
  %40 = add i32 %39, -8
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i32 [ %36, %34 ], [ %40, %37 ]
  %43 = lshr i32 %42, 2
  %44 = lshr i32 %42, 18
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %18, align 1, !tbaa !35
  %46 = lshr i32 %42, 10
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %23, align 1, !tbaa !35
  %48 = trunc i32 %43 to i8
  store i8 %48, ptr %28, align 1, !tbaa !35
  br label %49

49:                                               ; preds = %9, %41
  %50 = add nuw i64 %10, 4
  %51 = icmp ugt i64 %50, %4
  br i1 %51, label %52, label %9, !llvm.loop !38

52:                                               ; preds = %49, %5
  %53 = phi i64 [ 0, %5 ], [ %10, %49 ]
  ret i64 %53
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
