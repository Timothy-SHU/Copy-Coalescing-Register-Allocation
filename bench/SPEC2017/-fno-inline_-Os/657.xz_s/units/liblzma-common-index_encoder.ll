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
define dso_local noundef i32 @lzma_index_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !35
  %6 = icmp eq i64 %5, ptrtoint (ptr @lzma_index_encoder_init to i64)
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #3
  br label %8

8:                                                ; preds = %7, %3
  store i64 ptrtoint (ptr @lzma_index_encoder_init to i64), ptr %4, align 8, !tbaa !35
  %9 = icmp eq ptr %2, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %1) #3
  store ptr %14, ptr %0, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @index_encode, ptr %17, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @index_encoder_end, ptr %18, align 8, !tbaa !43
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
define internal i32 @index_encode(ptr noundef %0, ptr nocapture readnone %1, ptr noalias nocapture readnone %2, ptr noalias nocapture readnone %3, i64 %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 %8) #0 !PGOFuncName !44 {
  %10 = load i64, ptr %6, align 8, !tbaa !45
  %11 = icmp ult i64 %10, %7
  br i1 %11, label %12, label %91

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1, i32 7
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1, i32 6
  %18 = load i32, ptr %0, align 8, !tbaa !46
  br label %19

19:                                               ; preds = %12, %83
  %20 = phi i32 [ %18, %12 ], [ %84, %83 ]
  %21 = phi i32 [ %18, %12 ], [ %85, %83 ]
  %22 = phi i64 [ %10, %12 ], [ %86, %83 ]
  %23 = freeze i32 %20
  switch i32 %21, label %99 [
    i32 0, label %24
    i32 1, label %27
    i32 4, label %33
    i32 2, label %41
    i32 3, label %41
    i32 5, label %52
    i32 6, label %66
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, ptr %5, i64 %22
  store i8 0, ptr %25, align 1, !tbaa !52
  %26 = add nuw i64 %22, 1
  store i64 %26, ptr %6, align 8, !tbaa !45
  store i32 1, ptr %0, align 8, !tbaa !46
  br label %83

27:                                               ; preds = %19
  %28 = load ptr, ptr %15, align 8, !tbaa !53
  %29 = tail call i64 @lzma_index_block_count(ptr noundef %28) #3
  %30 = tail call i32 @lzma_vli_encode(i64 noundef %29, ptr noundef nonnull %13, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #3
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %88

32:                                               ; preds = %27
  store i64 0, ptr %13, align 8, !tbaa !54
  store i32 4, ptr %0, align 8, !tbaa !46
  br label %83

33:                                               ; preds = %19
  %34 = tail call zeroext i8 @lzma_index_iter_next(ptr noundef nonnull %14, i32 noundef 2) #3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %15, align 8, !tbaa !53
  %38 = tail call i32 @lzma_index_padding_size(ptr noundef %37) #3
  %39 = zext i32 %38 to i64
  store i64 %39, ptr %13, align 8, !tbaa !54
  store i32 5, ptr %0, align 8, !tbaa !46
  br label %83

40:                                               ; preds = %33
  store i32 2, ptr %0, align 8, !tbaa !46
  br label %43

41:                                               ; preds = %19, %19
  %42 = icmp eq i32 %23, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %41
  br label %44

44:                                               ; preds = %41, %43
  %45 = phi ptr [ %16, %43 ], [ %17, %41 ]
  %46 = load i64, ptr %45, align 8, !tbaa !45
  %47 = tail call i32 @lzma_vli_encode(i64 noundef %46, ptr noundef nonnull %13, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #3
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %88

49:                                               ; preds = %44
  store i64 0, ptr %13, align 8, !tbaa !54
  %50 = load i32, ptr %0, align 8, !tbaa !46
  %51 = add i32 %50, 1
  store i32 %51, ptr %0, align 8, !tbaa !46
  br label %83

52:                                               ; preds = %19
  %53 = load i64, ptr %13, align 8, !tbaa !54
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = add i64 %53, -1
  store i64 %56, ptr %13, align 8, !tbaa !54
  %57 = add nuw i64 %22, 1
  store i64 %57, ptr %6, align 8, !tbaa !45
  %58 = getelementptr inbounds i8, ptr %5, i64 %22
  store i8 0, ptr %58, align 1, !tbaa !52
  br label %83

59:                                               ; preds = %52
  %60 = getelementptr inbounds i8, ptr %5, i64 %10
  %61 = sub i64 %22, %10
  %62 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !55
  %64 = tail call i32 @lzma_crc32(ptr noundef %60, i64 noundef %61, i32 noundef %63) #3
  store i32 %64, ptr %62, align 8, !tbaa !55
  store i32 6, ptr %0, align 8, !tbaa !46
  %65 = load i64, ptr %6, align 8, !tbaa !45
  br label %66

66:                                               ; preds = %19, %59
  %67 = phi i64 [ %65, %59 ], [ %22, %19 ]
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  br label %69

69:                                               ; preds = %72, %66
  %70 = phi i64 [ %80, %72 ], [ %67, %66 ]
  %71 = icmp eq i64 %70, %7
  br i1 %71, label %99, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %68, align 8, !tbaa !55
  %74 = load i64, ptr %13, align 8, !tbaa !54
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 3
  %77 = lshr i32 %73, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %5, i64 %70
  store i8 %78, ptr %79, align 1, !tbaa !52
  %80 = add i64 %70, 1
  store i64 %80, ptr %6, align 8, !tbaa !45
  %81 = add i64 %74, 1
  store i64 %81, ptr %13, align 8, !tbaa !54
  %82 = icmp ult i64 %81, 4
  br i1 %82, label %69, label %99, !llvm.loop !56

83:                                               ; preds = %49, %32, %55, %36, %24
  %84 = phi i32 [ %51, %49 ], [ 4, %32 ], [ %23, %55 ], [ 5, %36 ], [ 1, %24 ]
  %85 = phi i32 [ %51, %49 ], [ 4, %32 ], [ 5, %55 ], [ 5, %36 ], [ 1, %24 ]
  %86 = load i64, ptr %6, align 8, !tbaa !45
  %87 = icmp ult i64 %86, %7
  br i1 %87, label %19, label %88, !llvm.loop !58

88:                                               ; preds = %44, %27, %83
  %89 = phi i32 [ 0, %83 ], [ %30, %27 ], [ %47, %44 ]
  %90 = load i64, ptr %6, align 8, !tbaa !45
  br label %91

91:                                               ; preds = %88, %9
  %92 = phi i64 [ %10, %9 ], [ %90, %88 ]
  %93 = phi i32 [ 0, %9 ], [ %89, %88 ]
  %94 = getelementptr inbounds i8, ptr %5, i64 %10
  %95 = sub i64 %92, %10
  %96 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %97 = load i32, ptr %96, align 8, !tbaa !55
  %98 = tail call i32 @lzma_crc32(ptr noundef %94, i64 noundef %95, i32 noundef %97) #3
  store i32 %98, ptr %96, align 8, !tbaa !55
  br label %99

99:                                               ; preds = %19, %72, %69, %91
  %100 = phi i32 [ %93, %91 ], [ 1, %72 ], [ 0, %69 ], [ 11, %19 ]
  ret i32 %100
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @index_encoder_end(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !59 {
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @index_encoder_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_index_iter_init(ptr noundef nonnull %3, ptr noundef %1) #3
  store i32 0, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store i64 0, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i64 @lzma_index_block_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_encoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = tail call i32 @lzma_index_encoder_init(ptr noundef %7, ptr noundef %9, ptr noundef %1) #4, !range !64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #3
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !65
  br label %17

17:                                               ; preds = %12, %2, %13
  %18 = phi i32 [ %3, %2 ], [ %10, %12 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_buffer_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.lzma_coder_s, align 8
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  %9 = icmp eq ptr %2, null
  %10 = or i1 %8, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %2, align 8, !tbaa !45
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
  %19 = load i64, ptr %2, align 8, !tbaa !45
  %20 = call i32 @index_encode(ptr noundef nonnull %5, ptr poison, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, i32 poison) #4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i64 %19, ptr %2, align 8, !tbaa !45
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

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 0}
!4 = !{!"MaxCount", i64 0}
!5 = !{!"MaxInternalCount", i64 0}
!6 = !{!"MaxFunctionCount", i64 0}
!7 = !{!"NumCounts", i64 0}
!8 = !{!"NumFunctions", i64 0}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 0, i32 0}
!14 = !{i32 100000, i64 0, i32 0}
!15 = !{i32 200000, i64 0, i32 0}
!16 = !{i32 300000, i64 0, i32 0}
!17 = !{i32 400000, i64 0, i32 0}
!18 = !{i32 500000, i64 0, i32 0}
!19 = !{i32 600000, i64 0, i32 0}
!20 = !{i32 700000, i64 0, i32 0}
!21 = !{i32 800000, i64 0, i32 0}
!22 = !{i32 900000, i64 0, i32 0}
!23 = !{i32 950000, i64 0, i32 0}
!24 = !{i32 990000, i64 0, i32 0}
!25 = !{i32 999000, i64 0, i32 0}
!26 = !{i32 999900, i64 0, i32 0}
!27 = !{i32 999990, i64 0, i32 0}
!28 = !{i32 999999, i64 0, i32 0}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !40, i64 16}
!36 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!36, !37, i64 0}
!42 = !{!36, !37, i64 24}
!43 = !{!36, !37, i64 32}
!44 = !{!"index_encoder.c:index_encode"}
!45 = !{!40, !40, i64 0}
!46 = !{!47, !48, i64 0}
!47 = !{!"lzma_coder_s", !48, i64 0, !37, i64 8, !49, i64 16, !40, i64 320, !48, i64 328}
!48 = !{!"int", !38, i64 0}
!49 = !{!"", !50, i64 0, !51, i64 120, !38, i64 256}
!50 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112}
!51 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!52 = !{!38, !38, i64 0}
!53 = !{!47, !37, i64 8}
!54 = !{!47, !40, i64 320}
!55 = !{!47, !48, i64 328}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = distinct !{!58, !57}
!59 = !{!"index_encoder.c:index_encoder_end"}
!60 = !{!"index_encoder.c:index_encoder_reset"}
!61 = !{!62, !37, i64 56}
!62 = !{!"", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !40, i64 32, !40, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !48, i64 128, !48, i64 132}
!63 = !{!62, !37, i64 48}
!64 = !{i32 0, i32 12}
!65 = !{!66, !66, i64 0}
!66 = !{!"_Bool", !38, i64 0}
