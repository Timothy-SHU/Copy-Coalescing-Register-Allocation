; ModuleID = 'liblzma/common/stream_flags_decoder.c'
source_filename = "liblzma/common/stream_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = external constant [6 x i8], align 1
@lzma_footer_magic = external constant [2 x i8], align 1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_stream_header_decode(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) @lzma_header_magic, i64 6)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %40, !prof !41

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 6
  %7 = tail call i32 @lzma_crc32(ptr noundef nonnull %6, i64 noundef 2, i32 noundef 0) #3
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  %9 = load i8, ptr %8, align 1, !tbaa !42
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %1, i64 9
  %12 = load i8, ptr %11, align 1, !tbaa !42
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %14, %10
  %16 = getelementptr inbounds i8, ptr %1, i64 10
  %17 = load i8, ptr %16, align 1, !tbaa !42
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr inbounds i8, ptr %1, i64 11
  %22 = load i8, ptr %21, align 1, !tbaa !42
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = or disjoint i32 %20, %24
  %26 = icmp eq i32 %7, %25
  br i1 %26, label %27, label %40, !prof !41

27:                                               ; preds = %5
  %28 = load i8, ptr %6, align 1, !tbaa !42
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %40, !prof !41

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %1, i64 7
  %32 = load i8, ptr %31, align 1, !tbaa !42
  %33 = icmp ult i8 %32, 16
  br i1 %33, label %34, label %40, !prof !41

34:                                               ; preds = %30
  store i32 0, ptr %0, align 8, !tbaa !45
  %35 = load i8, ptr %31, align 1, !tbaa !42
  %36 = and i8 %35, 15
  %37 = zext nneg i8 %36 to i32
  %38 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  store i64 -1, ptr %39, align 8, !tbaa !50
  br label %40

40:                                               ; preds = %30, %27, %34, %5, %2
  %41 = phi i32 [ 7, %2 ], [ 0, %34 ], [ 9, %5 ], [ 8, %27 ], [ 8, %30 ]
  ret i32 %41
}

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_stream_footer_decode(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = getelementptr inbounds i8, ptr %1, i64 10
  %5 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %4, ptr noundef nonnull dereferenceable(2) @lzma_footer_magic, i64 2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %60, !prof !41

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %1, i64 4
  %9 = tail call i32 @lzma_crc32(ptr noundef nonnull %8, i64 noundef 6, i32 noundef 0) #3
  %10 = load i8, ptr %1, align 1, !tbaa !42
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !42
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr inbounds i8, ptr %1, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or disjoint i32 %16, %20
  %22 = getelementptr inbounds i8, ptr %1, i64 3
  %23 = load i8, ptr %22, align 1, !tbaa !42
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = or disjoint i32 %21, %25
  %27 = icmp eq i32 %9, %26
  br i1 %27, label %28, label %60, !prof !41

28:                                               ; preds = %7
  %29 = load i8, ptr %3, align 1, !tbaa !42
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %60, !prof !41

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %1, i64 9
  %33 = load i8, ptr %32, align 1, !tbaa !42
  %34 = icmp ult i8 %33, 16
  br i1 %34, label %35, label %60, !prof !41

35:                                               ; preds = %31
  store i32 0, ptr %0, align 8, !tbaa !45
  %36 = load i8, ptr %32, align 1, !tbaa !42
  %37 = and i8 %36, 15
  %38 = zext nneg i8 %37 to i32
  %39 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  store i32 %38, ptr %39, align 8, !tbaa !49
  %40 = load i8, ptr %8, align 1, !tbaa !42
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, ptr %1, i64 5
  %43 = load i8, ptr %42, align 1, !tbaa !42
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, ptr %1, i64 6
  %46 = load i8, ptr %45, align 1, !tbaa !42
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i8, ptr %1, i64 7
  %49 = load i8, ptr %48, align 1, !tbaa !42
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %52 = shl nuw nsw i64 %50, 26
  %53 = shl nuw nsw i64 %47, 18
  %54 = shl nuw nsw i64 %44, 10
  %55 = shl nuw nsw i64 %41, 2
  %56 = or disjoint i64 %54, %55
  %57 = or disjoint i64 %56, %53
  %58 = or disjoint i64 %57, %52
  %59 = add nuw nsw i64 %58, 4
  store i64 %59, ptr %51, align 8, !tbaa !50
  br label %60

60:                                               ; preds = %31, %28, %35, %7, %2
  %61 = phi i32 [ 7, %2 ], [ 0, %35 ], [ 9, %7 ], [ 8, %28 ], [ 8, %31 ]
  ret i32 %61
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @lzma_stream_header_decode, ptr @bcmp, i64 2}
!36 = !{ptr @lzma_stream_header_decode, ptr @lzma_crc32, i64 2}
!37 = !{ptr @lzma_stream_footer_decode, ptr @bcmp, i64 2}
!38 = !{ptr @lzma_stream_footer_decode, ptr @lzma_crc32, i64 2}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 2}
!41 = !{!"branch_weights", i32 2, i32 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !47, i64 0}
!46 = !{!"", !47, i64 0, !48, i64 8, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !43, i64 36, !43, i64 37, !43, i64 38, !43, i64 39, !43, i64 40, !43, i64 41, !43, i64 42, !43, i64 43, !47, i64 44, !47, i64 48}
!47 = !{!"int", !43, i64 0}
!48 = !{!"long", !43, i64 0}
!49 = !{!46, !47, i64 16}
!50 = !{!46, !48, i64 8}
