; ModuleID = 'liblzma/common/stream_flags_encoder.c'
source_filename = "liblzma/common/stream_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = external local_unnamed_addr constant [6 x i8], align 1
@lzma_footer_magic = external local_unnamed_addr constant [2 x i8], align 1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_stream_header_encode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load i32, ptr %0, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %26, !prof !45

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @lzma_header_magic, i64 6, i1 false)
  %6 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = icmp ugt i32 %7, 15
  br i1 %8, label %26, label %9, !prof !47

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 0, ptr %10, align 1, !tbaa !48
  %11 = load i32, ptr %6, align 8, !tbaa !46
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %12, ptr %13, align 1, !tbaa !48
  %14 = tail call i32 @lzma_crc32(ptr noundef nonnull %10, i64 noundef 2, i32 noundef 0) #3
  %15 = getelementptr inbounds i8, ptr %1, i64 8
  %16 = trunc i32 %14 to i8
  store i8 %16, ptr %15, align 1, !tbaa !48
  %17 = lshr i32 %14, 8
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds i8, ptr %1, i64 9
  store i8 %18, ptr %19, align 1, !tbaa !48
  %20 = lshr i32 %14, 16
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, ptr %1, i64 10
  store i8 %21, ptr %22, align 1, !tbaa !48
  %23 = lshr i32 %14, 24
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, ptr %1, i64 11
  store i8 %24, ptr %25, align 1, !tbaa !48
  br label %26

26:                                               ; preds = %5, %2, %9
  %27 = phi i32 [ 0, %9 ], [ 8, %2 ], [ 11, %5 ]
  ret i32 %27
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_stream_footer_encode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load i32, ptr %0, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %49, !prof !45

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !49
  %8 = add i64 %7, -4
  %9 = icmp ult i64 %8, 17179869181
  %10 = and i64 %7, 3
  %11 = icmp eq i64 %10, 0
  %12 = and i1 %9, %11
  br i1 %12, label %13, label %49, !prof !45

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, ptr %1, i64 4
  %15 = lshr i64 %7, 2
  %16 = trunc i64 %15 to i32
  %17 = add i32 %16, -1
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %14, align 1, !tbaa !48
  %19 = lshr i32 %17, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %20, ptr %21, align 1, !tbaa !48
  %22 = lshr i32 %17, 16
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 %23, ptr %24, align 1, !tbaa !48
  %25 = lshr i32 %17, 24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %26, ptr %27, align 1, !tbaa !48
  %28 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = icmp ugt i32 %29, 15
  br i1 %30, label %49, label %31, !prof !47

31:                                               ; preds = %13
  %32 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 0, ptr %32, align 1, !tbaa !48
  %33 = load i32, ptr %28, align 8, !tbaa !46
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %1, i64 9
  store i8 %34, ptr %35, align 1, !tbaa !48
  %36 = tail call i32 @lzma_crc32(ptr noundef nonnull %14, i64 noundef 6, i32 noundef 0) #3
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %1, align 1, !tbaa !48
  %38 = lshr i32 %36, 8
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %39, ptr %40, align 1, !tbaa !48
  %41 = lshr i32 %36, 16
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %42, ptr %43, align 1, !tbaa !48
  %44 = lshr i32 %36, 24
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %45, ptr %46, align 1, !tbaa !48
  %47 = getelementptr inbounds i8, ptr %1, i64 10
  %48 = load i16, ptr @lzma_footer_magic, align 1
  store i16 %48, ptr %47, align 1
  br label %49

49:                                               ; preds = %13, %5, %2, %31
  %50 = phi i32 [ 0, %31 ], [ 8, %2 ], [ 11, %5 ], [ 11, %13 ]
  ret i32 %50
}

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @lzma_stream_header_encode, ptr @lzma_crc32, i64 1}
!36 = !{ptr @lzma_stream_footer_encode, ptr @lzma_crc32, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !41, i64 0}
!40 = !{!"", !41, i64 0, !44, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !42, i64 36, !42, i64 37, !42, i64 38, !42, i64 39, !42, i64 40, !42, i64 41, !42, i64 42, !42, i64 43, !41, i64 44, !41, i64 48}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"long", !42, i64 0}
!45 = !{!"branch_weights", i32 1, i32 0}
!46 = !{!40, !41, i64 16}
!47 = !{!"branch_weights", i32 0, i32 1}
!48 = !{!42, !42, i64 0}
!49 = !{!40, !44, i64 8}
