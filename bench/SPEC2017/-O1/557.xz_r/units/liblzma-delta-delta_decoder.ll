; ModuleID = 'liblzma/delta/delta_decoder.c'
source_filename = "liblzma/delta/delta_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_delta_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @delta_decode, ptr %4, align 8, !tbaa !35
  %5 = tail call i32 @lzma_delta_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define internal i32 @delta_decode(ptr nocapture noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !34 {
  %10 = load i64, ptr %6, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = load ptr, ptr %0, align 8, !tbaa !44
  %14 = tail call i32 %12(ptr noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #2
  %15 = getelementptr inbounds i8, ptr %5, i64 %10
  %16 = load i64, ptr %6, align 8, !tbaa !41
  %17 = sub i64 %16, %10
  %18 = icmp eq i64 %16, %10
  br i1 %18, label %41, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %23 = trunc i64 %21 to i8
  %24 = load i8, ptr %22, align 8, !tbaa !46
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi i8 [ %24, %19 ], [ %35, %25 ]
  %27 = phi i64 [ 0, %19 ], [ %38, %25 ]
  %28 = add i8 %26, %23
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !47
  %32 = getelementptr inbounds i8, ptr %15, i64 %27
  %33 = load i8, ptr %32, align 1, !tbaa !47
  %34 = add i8 %33, %31
  store i8 %34, ptr %32, align 1, !tbaa !47
  %35 = add i8 %26, -1
  %36 = zext i8 %26 to i64
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %36
  store i8 %34, ptr %37, align 1, !tbaa !47
  %38 = add nuw i64 %27, 1
  %39 = icmp eq i64 %38, %17
  br i1 %39, label %40, label %25, !llvm.loop !48

40:                                               ; preds = %25
  store i8 %35, ptr %22, align 8, !tbaa !46
  br label %41

41:                                               ; preds = %40, %9
  ret i32 %14
}

declare i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_delta_props_decode(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = icmp eq i64 %3, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = tail call ptr @lzma_alloc(i64 noundef 40, ptr noundef %1) #2
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  store i32 0, ptr %7, align 8, !tbaa !51
  %10 = load i8, ptr %2, align 1, !tbaa !47
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.lzma_options_delta, ptr %7, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !54
  store ptr %7, ptr %0, align 8, !tbaa !55
  br label %14

14:                                               ; preds = %9, %6, %4
  %15 = phi i32 [ 8, %4 ], [ 0, %9 ], [ 5, %6 ]
  ret i32 %15
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!35 = !{!36, !37, i64 24}
!36 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!43, !37, i64 24}
!43 = !{!"lzma_coder_s", !36, i64 0, !40, i64 64, !38, i64 72, !38, i64 73}
!44 = !{!43, !37, i64 0}
!45 = !{!43, !40, i64 64}
!46 = !{!43, !38, i64 72}
!47 = !{!38, !38, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !53, i64 0}
!52 = !{!"", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !37, i64 24, !37, i64 32}
!53 = !{!"int", !38, i64 0}
!54 = !{!52, !53, i64 4}
!55 = !{!37, !37, i64 0}
