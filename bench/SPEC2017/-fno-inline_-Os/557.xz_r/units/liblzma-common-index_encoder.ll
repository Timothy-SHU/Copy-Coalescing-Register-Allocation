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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !prof !41 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !42
  %6 = icmp eq i64 %5, ptrtoint (ptr @lzma_index_encoder_init to i64)
  br i1 %6, label %8, label %7, !prof !48

7:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #3
  br label %8

8:                                                ; preds = %7, %3
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %4, align 8, !tbaa !42
  %9 = icmp eq ptr %2, null
  br i1 %9, label %21, label %10, !prof !48

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19, !prof !50

13:                                               ; preds = %10
  %14 = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %1) #3
  store ptr %14, ptr %0, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !48

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @index_encode, ptr %17, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @index_encoder_end, ptr %18, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %14, %16 ], [ %11, %10 ]
  tail call fastcc void @index_encoder_reset(ptr noundef nonnull %20, ptr noundef nonnull %2) #4
  br label %21

21:                                               ; preds = %13, %8, %19
  %22 = phi i32 [ 0, %19 ], [ 11, %8 ], [ 5, %13 ]
  ret i32 %22
}

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @index_encode(ptr noundef %0, ptr nocapture readnone %1, ptr noalias nocapture readnone %2, ptr noalias nocapture readnone %3, i64 %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 %8) #0 !prof !41 !PGOFuncName !53 {
  %10 = load i64, ptr %6, align 8, !tbaa !54
  %11 = icmp ult i64 %10, %7
  br i1 %11, label %12, label %92, !prof !55

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %0, align 8, !tbaa !56
  br label %15

15:                                               ; preds = %12, %84
  %16 = phi i32 [ %14, %12 ], [ %85, %84 ]
  %17 = phi i32 [ %14, %12 ], [ %86, %84 ]
  %18 = phi i64 [ %10, %12 ], [ %87, %84 ]
  %19 = freeze i32 %16
  switch i32 %17, label %100 [
    i32 0, label %20
    i32 1, label %23
    i32 4, label %30
    i32 2, label %40
    i32 3, label %40
    i32 5, label %53
    i32 6, label %67
  ], !prof !62

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %5, i64 %18
  store i8 0, ptr %21, align 1, !tbaa !63
  %22 = add nuw i64 %18, 1
  store i64 %22, ptr %6, align 8, !tbaa !54
  store i32 1, ptr %0, align 8, !tbaa !56
  br label %84

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = tail call i64 @lzma_index_block_count(ptr noundef %25) #3
  %27 = tail call i32 @lzma_vli_encode(i64 noundef %26, ptr noundef nonnull %13, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #3
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %89, !prof !50

29:                                               ; preds = %23
  store i64 0, ptr %13, align 8, !tbaa !65
  store i32 4, ptr %0, align 8, !tbaa !56
  br label %84

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %32 = tail call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %31, i32 noundef 2) #3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34, !prof !66

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = tail call i32 @lzma_index_padding_size(ptr noundef %36) #3
  %38 = zext i32 %37 to i64
  store i64 %38, ptr %13, align 8, !tbaa !65
  store i32 5, ptr %0, align 8, !tbaa !56
  br label %84

39:                                               ; preds = %30
  store i32 2, ptr %0, align 8, !tbaa !56
  br label %43

40:                                               ; preds = %15, %15
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1, i32 6
  %42 = icmp eq i32 %19, 2
  br i1 %42, label %43, label %45, !prof !67

43:                                               ; preds = %39, %40
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1, i32 7
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi ptr [ %44, %43 ], [ %41, %40 ]
  %47 = load i64, ptr %46, align 8, !tbaa !54
  %48 = tail call i32 @lzma_vli_encode(i64 noundef %47, ptr noundef nonnull %13, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #3
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %89, !prof !68

50:                                               ; preds = %45
  store i64 0, ptr %13, align 8, !tbaa !65
  %51 = load i32, ptr %0, align 8, !tbaa !56
  %52 = add i32 %51, 1
  store i32 %52, ptr %0, align 8, !tbaa !56
  br label %84

53:                                               ; preds = %15
  %54 = load i64, ptr %13, align 8, !tbaa !65
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %60, label %56, !prof !69

56:                                               ; preds = %53
  %57 = add i64 %54, -1
  store i64 %57, ptr %13, align 8, !tbaa !65
  %58 = add nuw i64 %18, 1
  store i64 %58, ptr %6, align 8, !tbaa !54
  %59 = getelementptr inbounds i8, ptr %5, i64 %18
  store i8 0, ptr %59, align 1, !tbaa !63
  br label %84

60:                                               ; preds = %53
  %61 = getelementptr inbounds i8, ptr %5, i64 %10
  %62 = sub i64 %18, %10
  %63 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !70
  %65 = tail call i32 @lzma_crc32(ptr noundef %61, i64 noundef %62, i32 noundef %64) #3
  store i32 %65, ptr %63, align 8, !tbaa !70
  store i32 6, ptr %0, align 8, !tbaa !56
  %66 = load i64, ptr %6, align 8, !tbaa !54
  br label %67

67:                                               ; preds = %15, %60
  %68 = phi i64 [ %66, %60 ], [ %18, %15 ]
  %69 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  br label %70

70:                                               ; preds = %73, %67
  %71 = phi i64 [ %81, %73 ], [ %68, %67 ]
  %72 = icmp eq i64 %71, %7
  br i1 %72, label %100, label %73, !prof !71

73:                                               ; preds = %70
  %74 = load i32, ptr %69, align 8, !tbaa !70
  %75 = load i64, ptr %13, align 8, !tbaa !65
  %76 = trunc i64 %75 to i32
  %77 = shl i32 %76, 3
  %78 = lshr i32 %74, %77
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %5, i64 %71
  store i8 %79, ptr %80, align 1, !tbaa !63
  %81 = add i64 %71, 1
  store i64 %81, ptr %6, align 8, !tbaa !54
  %82 = add i64 %75, 1
  store i64 %82, ptr %13, align 8, !tbaa !65
  %83 = icmp ult i64 %82, 4
  br i1 %83, label %70, label %100, !prof !72, !llvm.loop !73

84:                                               ; preds = %50, %29, %56, %34, %20
  %85 = phi i32 [ %52, %50 ], [ 4, %29 ], [ %19, %56 ], [ 5, %34 ], [ 1, %20 ]
  %86 = phi i32 [ %52, %50 ], [ 4, %29 ], [ 5, %56 ], [ 5, %34 ], [ 1, %20 ]
  %87 = load i64, ptr %6, align 8, !tbaa !54
  %88 = icmp ult i64 %87, %7
  br i1 %88, label %15, label %89, !prof !75, !llvm.loop !76

89:                                               ; preds = %45, %23, %84
  %90 = phi i32 [ 0, %84 ], [ %27, %23 ], [ %48, %45 ]
  %91 = load i64, ptr %6, align 8, !tbaa !54
  br label %92

92:                                               ; preds = %89, %9
  %93 = phi i64 [ %10, %9 ], [ %91, %89 ]
  %94 = phi i32 [ 0, %9 ], [ %90, %89 ]
  %95 = getelementptr inbounds i8, ptr %5, i64 %10
  %96 = sub i64 %93, %10
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !70
  %99 = tail call i32 @lzma_crc32(ptr noundef %95, i64 noundef %96, i32 noundef %98) #3
  store i32 %99, ptr %97, align 8, !tbaa !70
  br label %100

100:                                              ; preds = %15, %73, %70, %92
  %101 = phi i32 [ %94, %92 ], [ 1, %73 ], [ 0, %70 ], [ 11, %15 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @index_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !41 !PGOFuncName !77 {
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @index_encoder_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !41 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_index_iter_init(ptr noundef nonnull %3, ptr noundef %1) #3
  store i32 0, ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store i64 0, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_encoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !79 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = tail call i32 @lzma_index_encoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #4, !range !83
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #3
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !84
  br label %17

17:                                               ; preds = %12, %2, %13
  %18 = phi i32 [ %3, %2 ], [ %10, %12 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_buffer_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !79 {
  %5 = alloca %struct.lzma_coder_s, align 8
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  %9 = icmp eq ptr %2, null
  %10 = or i1 %8, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %2, align 8, !tbaa !54
  %13 = icmp ugt i64 %12, %3
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = sub i64 %3, %12
  %16 = tail call i64 @lzma_index_size(ptr noundef nonnull %0) #3
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %5) #5
  call fastcc void @index_encoder_reset(ptr noundef nonnull %5, ptr noundef nonnull %0) #4
  %19 = load i64, ptr %2, align 8, !tbaa !54
  %20 = call i32 @index_encode(ptr noundef nonnull %5, ptr poison, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, i32 poison) #4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i64 %19, ptr %2, align 8, !tbaa !54
  br label %23

23:                                               ; preds = %18, %22
  %24 = phi i32 [ 11, %22 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %5) #5
  br label %25

25:                                               ; preds = %14, %4, %11, %23
  %26 = phi i32 [ %24, %23 ], [ 11, %11 ], [ 11, %4 ], [ 10, %14 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @lzma_index_iter_next(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_index_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!40}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @lzma_index_encoder_init, ptr @lzma_next_end, i64 1}
!36 = !{ptr @lzma_index_encoder_init, ptr @index_encoder_reset, i64 1}
!37 = !{ptr @index_encode, ptr @lzma_vli_encode, i64 1}
!38 = !{ptr @index_encoder_end, ptr @lzma_free, i64 1}
!39 = !{ptr @index_encoder_reset, ptr @lzma_index_iter_init, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !47, i64 16}
!43 = !{!"lzma_next_coder_s", !44, i64 0, !47, i64 8, !47, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"long", !45, i64 0}
!48 = !{!"branch_weights", i32 1, i32 2}
!49 = !{!43, !44, i64 0}
!50 = !{!"branch_weights", i32 2, i32 1}
!51 = !{!43, !44, i64 24}
!52 = !{!43, !44, i64 32}
!53 = !{!"index_encoder.c:index_encode"}
!54 = !{!47, !47, i64 0}
!55 = !{!"branch_weights", i32 127, i32 1}
!56 = !{!57, !58, i64 0}
!57 = !{!"lzma_coder_s", !58, i64 0, !44, i64 8, !59, i64 16, !47, i64 320, !58, i64 328}
!58 = !{!"int", !45, i64 0}
!59 = !{!"", !60, i64 0, !61, i64 120, !45, i64 256}
!60 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112}
!61 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128}
!62 = !{!"branch_weights", i32 1, i32 2, i32 2, i32 3, i32 1, i32 2, i32 4, i32 1}
!63 = !{!45, !45, i64 0}
!64 = !{!57, !44, i64 8}
!65 = !{!57, !47, i64 320}
!66 = !{!"branch_weights", i32 2, i32 2}
!67 = !{!"branch_weights", i32 1342177280, i32 805306368}
!68 = !{!"branch_weights", i32 3, i32 1}
!69 = !{!"branch_weights", i32 2, i32 3}
!70 = !{!57, !58, i64 328}
!71 = !{!"branch_weights", i32 1, i32 5}
!72 = !{!"branch_weights", i32 4, i32 2}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"branch_weights", i32 1025, i32 127}
!76 = distinct !{!76, !74}
!77 = !{!"index_encoder.c:index_encoder_end"}
!78 = !{!"index_encoder.c:index_encoder_reset"}
!79 = !{!"function_entry_count", i64 0}
!80 = !{!81, !44, i64 56}
!81 = !{!"", !44, i64 0, !47, i64 8, !47, i64 16, !44, i64 24, !47, i64 32, !47, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !58, i64 128, !58, i64 132}
!82 = !{!81, !44, i64 48}
!83 = !{i32 0, i32 12}
!84 = !{!85, !85, i64 0}
!85 = !{!"_Bool", !45, i64 0}
