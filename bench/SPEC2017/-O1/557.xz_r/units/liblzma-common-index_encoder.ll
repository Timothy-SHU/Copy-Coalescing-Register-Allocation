; ModuleID = 'liblzma/common/index_encoder.c'
source_filename = "liblzma/common/index_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, ptr, %struct.lzma_index_iter, i64, i32 }
%struct.lzma_index_iter = type { %struct.anon, %struct.anon.0, [6 x %union.anon] }
%struct.anon = type { ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.0 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_index_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !45 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i64 %5, ptrtoint (ptr @lzma_index_encoder_init to i64)
  br i1 %6, label %8, label %7, !prof !52

7:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #3
  br label %8

8:                                                ; preds = %7, %3
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %4, align 8, !tbaa !46
  %9 = icmp eq ptr %2, null
  br i1 %9, label %25, label %10, !prof !52

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19, !prof !54

13:                                               ; preds = %10
  %14 = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %1) #3
  store ptr %14, ptr %0, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !52

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @index_encode, ptr %17, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @index_encoder_end, ptr %18, align 8, !tbaa !56
  br label %19

19:                                               ; preds = %16, %10
  %20 = load ptr, ptr %0, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2
  tail call void @lzma_index_iter_init(ptr noundef nonnull %21, ptr noundef nonnull %2) #3
  store i32 0, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 1
  store ptr %2, ptr %22, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 3
  store i64 0, ptr %23, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 4
  store i32 0, ptr %24, align 8, !tbaa !65
  br label %25

25:                                               ; preds = %13, %8, %19
  %26 = phi i32 [ 0, %19 ], [ 11, %8 ], [ 5, %13 ]
  ret i32 %26
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal i32 @index_encode(ptr noundef %0, ptr nocapture readnone %1, ptr noalias nocapture readnone %2, ptr noalias nocapture readnone %3, i64 %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 %8) #0 !prof !45 !PGOFuncName !66 {
  %10 = load i64, ptr %6, align 8, !tbaa !67
  %11 = icmp ult i64 %10, %7
  br i1 %11, label %12, label %92, !prof !54

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1, i32 7
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1, i32 6
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %12, %88
  %19 = phi i64 [ %10, %12 ], [ %90, %88 ]
  %20 = phi i32 [ 0, %12 ], [ %89, %88 ]
  %21 = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %21, label %100 [
    i32 0, label %22
    i32 1, label %25
    i32 4, label %35
    i32 2, label %45
    i32 3, label %45
    i32 5, label %57
    i32 6, label %70
  ], !prof !68

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %5, i64 %19
  store i8 0, ptr %23, align 1, !tbaa !69
  %24 = add i64 %19, 1
  store i64 %24, ptr %6, align 8, !tbaa !67
  store i32 1, ptr %0, align 8, !tbaa !57
  br label %88

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %26, align 8, !tbaa !63
  %29 = tail call i64 @lzma_index_block_count(ptr noundef %28) #3
  %30 = tail call i32 @lzma_vli_encode(i64 noundef %29, ptr noundef nonnull %27, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #3
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33, !prof !54

32:                                               ; preds = %25
  store i64 0, ptr %27, align 8, !tbaa !64
  store i32 4, ptr %0, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %25, %32
  %34 = phi i32 [ 0, %32 ], [ %30, %25 ]
  br i1 %31, label %88, label %92, !prof !54

35:                                               ; preds = %18
  %36 = tail call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %14, i32 noundef 2) #3
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38, !prof !70

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %39, align 8, !tbaa !63
  %42 = tail call i32 @lzma_index_padding_size(ptr noundef %41) #3
  %43 = zext i32 %42 to i64
  store i64 %43, ptr %40, align 8, !tbaa !64
  store i32 5, ptr %0, align 8, !tbaa !57
  br label %88

44:                                               ; preds = %35
  store i32 2, ptr %0, align 8, !tbaa !57
  br label %45

45:                                               ; preds = %18, %18, %44
  %46 = load i32, ptr %0, align 8, !tbaa !57
  %47 = icmp eq i32 %46, 2
  %48 = select i1 %47, ptr %15, ptr %16, !prof !70
  %49 = load i64, ptr %48, align 8, !tbaa !67
  %50 = tail call i32 @lzma_vli_encode(i64 noundef %49, ptr noundef nonnull %17, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #3
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55, !prof !71

52:                                               ; preds = %45
  store i64 0, ptr %17, align 8, !tbaa !64
  %53 = load i32, ptr %0, align 8, !tbaa !57
  %54 = add i32 %53, 1
  store i32 %54, ptr %0, align 8, !tbaa !57
  br label %55

55:                                               ; preds = %45, %52
  %56 = phi i32 [ 0, %52 ], [ %50, %45 ]
  br i1 %51, label %88, label %92, !prof !71

57:                                               ; preds = %18
  %58 = load i64, ptr %13, align 8, !tbaa !64
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60, !prof !72

60:                                               ; preds = %57
  %61 = add i64 %58, -1
  store i64 %61, ptr %13, align 8, !tbaa !64
  %62 = add i64 %19, 1
  store i64 %62, ptr %6, align 8, !tbaa !67
  %63 = getelementptr inbounds i8, ptr %5, i64 %19
  store i8 0, ptr %63, align 1, !tbaa !69
  br label %88

64:                                               ; preds = %57
  %65 = getelementptr inbounds i8, ptr %5, i64 %10
  %66 = sub i64 %19, %10
  %67 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !65
  %69 = tail call i32 @lzma_crc32(ptr noundef %65, i64 noundef %66, i32 noundef %68) #3
  store i32 %69, ptr %67, align 8, !tbaa !65
  store i32 6, ptr %0, align 8, !tbaa !57
  br label %70

70:                                               ; preds = %18, %64
  %71 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %72 = load i64, ptr %6, align 8, !tbaa !67
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  br label %74

74:                                               ; preds = %77, %70
  %75 = phi i64 [ %85, %77 ], [ %72, %70 ]
  %76 = icmp eq i64 %75, %7
  br i1 %76, label %100, label %77, !prof !73

77:                                               ; preds = %74
  %78 = load i32, ptr %71, align 8, !tbaa !65
  %79 = load i64, ptr %73, align 8, !tbaa !64
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 3
  %82 = lshr i32 %78, %81
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %5, i64 %75
  store i8 %83, ptr %84, align 1, !tbaa !69
  %85 = add i64 %75, 1
  store i64 %85, ptr %6, align 8, !tbaa !67
  %86 = add i64 %79, 1
  store i64 %86, ptr %73, align 8, !tbaa !64
  %87 = icmp ult i64 %86, 4
  br i1 %87, label %74, label %100, !prof !74, !llvm.loop !75

88:                                               ; preds = %55, %33, %60, %38, %22
  %89 = phi i32 [ %20, %60 ], [ %56, %55 ], [ %20, %38 ], [ %34, %33 ], [ %20, %22 ]
  %90 = load i64, ptr %6, align 8, !tbaa !67
  %91 = icmp ult i64 %90, %7
  br i1 %91, label %18, label %92, !prof !78, !llvm.loop !79

92:                                               ; preds = %88, %55, %33, %9
  %93 = phi i32 [ 0, %9 ], [ %89, %88 ], [ %56, %55 ], [ %34, %33 ]
  %94 = getelementptr inbounds i8, ptr %5, i64 %10
  %95 = load i64, ptr %6, align 8, !tbaa !67
  %96 = sub i64 %95, %10
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !65
  %99 = tail call i32 @lzma_crc32(ptr noundef %94, i64 noundef %96, i32 noundef %98) #3
  store i32 %99, ptr %97, align 8, !tbaa !65
  br label %100

100:                                              ; preds = %18, %77, %74, %92
  %101 = phi i32 [ %93, %92 ], [ 0, %74 ], [ 1, %77 ], [ 11, %18 ]
  ret i32 %101
}

; Function Attrs: cold nounwind uwtable
define internal void @index_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !45 !PGOFuncName !80 {
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_index_encoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !81 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = tail call i32 @lzma_index_encoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1), !range !85
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef %0) #3
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ %10, %12 ], [ %3, %5 ]
  br i1 %11, label %15, label %19

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !tbaa !82
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3
  store i8 1, ptr %17, align 8, !tbaa !86
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3, i64 3
  store i8 1, ptr %18, align 1, !tbaa !86
  br label %19

19:                                               ; preds = %2, %13, %15
  %20 = phi i32 [ %3, %2 ], [ %14, %13 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_index_buffer_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !81 {
  %5 = alloca %struct.lzma_coder_s, align 8
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  %9 = icmp eq ptr %2, null
  %10 = or i1 %8, %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %2, align 8, !tbaa !67
  %13 = icmp ugt i64 %12, %3
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = sub i64 %3, %12
  %16 = tail call i64 @lzma_index_size(ptr noundef %0) #3
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %5) #3
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %5, i64 0, i32 2
  call void @lzma_index_iter_init(ptr noundef nonnull %19, ptr noundef %0) #3
  store i32 0, ptr %5, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %5, i64 0, i32 1
  store ptr %0, ptr %20, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %5, i64 0, i32 3
  store i64 0, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %5, i64 0, i32 4
  store i32 0, ptr %22, align 8, !tbaa !65
  %23 = load i64, ptr %2, align 8, !tbaa !67
  %24 = call i32 @index_encode(ptr noundef nonnull %5, ptr poison, ptr poison, ptr poison, i64 poison, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i32 poison)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i64 %23, ptr %2, align 8, !tbaa !67
  br label %27

27:                                               ; preds = %18, %26
  %28 = phi i32 [ 11, %26 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %5) #3
  br label %29

29:                                               ; preds = %14, %4, %11, %27
  %30 = phi i32 [ %28, %27 ], [ 11, %11 ], [ 11, %4 ], [ 10, %14 ]
  ret i32 %30
}

declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @lzma_index_encoder_init, ptr @lzma_next_end, i64 1}
!36 = !{ptr @lzma_index_encoder_init, ptr @lzma_alloc, i64 1}
!37 = !{ptr @lzma_index_encoder_init, ptr @lzma_index_iter_init, i64 1}
!38 = !{ptr @index_encode, ptr @lzma_index_block_count, i64 1}
!39 = !{ptr @index_encode, ptr @lzma_vli_encode, i64 3}
!40 = !{ptr @index_encode, ptr @lzma_index_iter_next, i64 2}
!41 = !{ptr @index_encode, ptr @lzma_index_padding_size, i64 1}
!42 = !{ptr @index_encode, ptr @lzma_crc32, i64 1}
!43 = !{ptr @index_encoder_end, ptr @lzma_free, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !51, i64 16}
!47 = !{!"lzma_next_coder_s", !48, i64 0, !51, i64 8, !51, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!"long", !49, i64 0}
!52 = !{!"branch_weights", i32 0, i32 1}
!53 = !{!47, !48, i64 0}
!54 = !{!"branch_weights", i32 1, i32 0}
!55 = !{!47, !48, i64 24}
!56 = !{!47, !48, i64 32}
!57 = !{!58, !59, i64 0}
!58 = !{!"lzma_coder_s", !59, i64 0, !48, i64 8, !60, i64 16, !51, i64 320, !59, i64 328}
!59 = !{!"int", !49, i64 0}
!60 = !{!"", !61, i64 0, !62, i64 120, !49, i64 256}
!61 = !{!"", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112}
!62 = !{!"", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128}
!63 = !{!58, !48, i64 8}
!64 = !{!58, !51, i64 320}
!65 = !{!58, !59, i64 328}
!66 = !{!"liblzma/common/index_encoder.c;index_encode"}
!67 = !{!51, !51, i64 0}
!68 = !{!"branch_weights", i32 0, i32 1, i32 1, i32 2, i32 0, i32 1, i32 3, i32 0}
!69 = !{!49, !49, i64 0}
!70 = !{!"branch_weights", i32 1, i32 1}
!71 = !{!"branch_weights", i32 2, i32 0}
!72 = !{!"branch_weights", i32 1, i32 2}
!73 = !{!"branch_weights", i32 0, i32 4}
!74 = !{!"branch_weights", i32 3, i32 1}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!"branch_weights", i32 8, i32 0}
!79 = distinct !{!79, !76, !77}
!80 = !{!"liblzma/common/index_encoder.c;index_encoder_end"}
!81 = !{!"function_entry_count", i64 0}
!82 = !{!83, !48, i64 56}
!83 = !{!"", !48, i64 0, !51, i64 8, !51, i64 16, !48, i64 24, !51, i64 32, !51, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !59, i64 128, !59, i64 132}
!84 = !{!83, !48, i64 48}
!85 = !{i32 0, i32 12}
!86 = !{!87, !87, i64 0}
!87 = !{!"_Bool", !49, i64 0}
