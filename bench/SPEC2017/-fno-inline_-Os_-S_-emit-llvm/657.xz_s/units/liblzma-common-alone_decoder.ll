; ModuleID = 'liblzma/common/alone_decoder.c'
source_filename = "liblzma/common/alone_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i32, i8, i64, i64, i64, i64, %struct.lzma_options_lzma }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_alone_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = zext i1 %3 to i8
  %6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !6
  %8 = icmp eq i64 %7, ptrtoint (ptr @lzma_alone_decoder_init to i64)
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %10

10:                                               ; preds = %9, %4
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %6, align 8, !tbaa !6
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #5
  store ptr %16, ptr %0, align 8, !tbaa !12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @alone_decode, ptr %19, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @alone_decoder_end, ptr %20, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @alone_decoder_memconfig, ptr %21, align 8, !tbaa !15
  store ptr null, ptr %16, align 8, !tbaa.struct !16
  %22 = getelementptr inbounds i8, ptr %16, i64 8
  store i64 -1, ptr %22, align 8, !tbaa.struct !19
  %23 = getelementptr inbounds i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %23, i8 0, i64 48, i1 false)
  %24 = load ptr, ptr %0, align 8, !tbaa !12
  br label %25

25:                                               ; preds = %18, %12
  %26 = phi ptr [ %24, %18 ], [ %13, %12 ]
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 1
  store i32 0, ptr %27, align 8, !tbaa !20
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 2
  store i8 %5, ptr %28, align 4, !tbaa !25
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 3
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 7
  store i32 0, ptr %30, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 7, i32 1
  store ptr null, ptr %31, align 8, !tbaa !27
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 7, i32 2
  store i32 0, ptr %32, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store i64 %2, ptr %33, align 8, !tbaa !29
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 6
  store i64 32768, ptr %34, align 8, !tbaa !30
  br label %35

35:                                               ; preds = %15, %10, %25
  %36 = phi i32 [ 0, %25 ], [ 11, %10 ], [ 5, %15 ]
  ret i32 %36
}

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @alone_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = alloca [2 x %struct.lzma_filter_info_s], align 16
  %11 = load i64, ptr %6, align 8, !tbaa !18
  %12 = icmp ult i64 %11, %7
  br i1 %12, label %13, label %114

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %10, i64 0, i32 1
  %22 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %10, i64 0, i32 2
  %23 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %10, i64 1
  %24 = load i32, ptr %14, align 8, !tbaa !20
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %106, label %26

26:                                               ; preds = %13, %111
  %27 = phi i32 [ %112, %111 ], [ %24, %13 ]
  %28 = load i64, ptr %3, align 8, !tbaa !18
  %29 = icmp ult i64 %28, %4
  br i1 %29, label %30, label %114

30:                                               ; preds = %26
  switch i32 %27, label %114 [
    i32 0, label %33
    i32 1, label %39
    i32 2, label %74
    i32 3, label %31
  ]

31:                                               ; preds = %30
  %32 = load i64, ptr %19, align 8, !tbaa !30
  br label %95

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %2, i64 %28
  %35 = load i8, ptr %34, align 1, !tbaa !31
  %36 = call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %18, i8 noundef zeroext %35) #5
  br i1 %36, label %114, label %37

37:                                               ; preds = %33
  store i32 1, ptr %14, align 8, !tbaa !20
  %38 = add nuw i64 %28, 1
  store i64 %38, ptr %3, align 8, !tbaa !18
  br label %111

39:                                               ; preds = %30
  %40 = getelementptr inbounds i8, ptr %2, i64 %28
  %41 = load i8, ptr %40, align 1, !tbaa !31
  %42 = zext i8 %41 to i64
  %43 = load i64, ptr %15, align 8, !tbaa !32
  %44 = shl i64 %43, 3
  %45 = shl i64 %42, %44
  %46 = load i32, ptr %18, align 8, !tbaa !26
  %47 = trunc i64 %45 to i32
  %48 = or i32 %46, %47
  store i32 %48, ptr %18, align 8, !tbaa !26
  %49 = add i64 %43, 1
  store i64 %49, ptr %15, align 8, !tbaa !32
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %71

51:                                               ; preds = %39
  %52 = load i8, ptr %17, align 4, !tbaa !25, !range !33, !noundef !34
  %53 = icmp eq i8 %52, 0
  %54 = icmp eq i32 %48, -1
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = add i32 %48, -1
  %58 = lshr i32 %57, 2
  %59 = or i32 %58, %57
  %60 = lshr i32 %59, 3
  %61 = or i32 %60, %59
  %62 = lshr i32 %61, 4
  %63 = or i32 %62, %61
  %64 = lshr i32 %63, 8
  %65 = or i32 %64, %63
  %66 = lshr i32 %65, 16
  %67 = or i32 %66, %65
  %68 = add i32 %67, 1
  %69 = icmp eq i32 %68, %48
  br i1 %69, label %70, label %114

70:                                               ; preds = %56, %51
  store i64 0, ptr %15, align 8, !tbaa !32
  store i32 2, ptr %14, align 8, !tbaa !20
  br label %71

71:                                               ; preds = %70, %39
  %72 = phi i32 [ 2, %70 ], [ 1, %39 ]
  %73 = add nuw i64 %28, 1
  store i64 %73, ptr %3, align 8, !tbaa !18
  br label %111

74:                                               ; preds = %30
  %75 = getelementptr inbounds i8, ptr %2, i64 %28
  %76 = load i8, ptr %75, align 1, !tbaa !31
  %77 = zext i8 %76 to i64
  %78 = load i64, ptr %15, align 8, !tbaa !32
  %79 = shl i64 %78, 3
  %80 = shl i64 %77, %79
  %81 = load i64, ptr %16, align 8, !tbaa !35
  %82 = or i64 %80, %81
  store i64 %82, ptr %16, align 8, !tbaa !35
  %83 = add nuw i64 %28, 1
  store i64 %83, ptr %3, align 8, !tbaa !18
  %84 = add i64 %78, 1
  store i64 %84, ptr %15, align 8, !tbaa !32
  %85 = icmp ult i64 %84, 8
  br i1 %85, label %111, label %86

86:                                               ; preds = %74
  %87 = load i8, ptr %17, align 4, !tbaa !25, !range !33, !noundef !34
  %88 = icmp ne i8 %87, 0
  %89 = add i64 %82, -274877906944
  %90 = icmp ult i64 %89, -274877906945
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %114, label %92

92:                                               ; preds = %86
  %93 = call i64 @lzma_lzma_decoder_memusage(ptr noundef nonnull %18) #5
  %94 = add i64 %93, 32768
  store i64 %94, ptr %19, align 8, !tbaa !30
  store i64 0, ptr %15, align 8, !tbaa !32
  store i32 3, ptr %14, align 8, !tbaa !20
  br label %95

95:                                               ; preds = %31, %92
  %96 = phi i64 [ %32, %31 ], [ %94, %92 ]
  %97 = load i64, ptr %20, align 8, !tbaa !29
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #6
  store i64 0, ptr %10, align 16, !tbaa !36
  store ptr @lzma_lzma_decoder_init, ptr %21, align 8, !tbaa !38
  store ptr %18, ptr %22, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %100 = call i32 @lzma_next_filter_init(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %10) #5
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load ptr, ptr %0, align 8, !tbaa !40
  %104 = load i64, ptr %16, align 8, !tbaa !35
  call void @lzma_lz_decoder_uncompressed(ptr noundef %103, i64 noundef %104) #5
  store i32 4, ptr %14, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #6
  br label %111

105:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #6
  br label %114

106:                                              ; preds = %111, %13
  %107 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !41
  %109 = load ptr, ptr %0, align 8, !tbaa !40
  %110 = call i32 %108(ptr noundef %109, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #5
  br label %114

111:                                              ; preds = %102, %74, %71, %37
  %112 = phi i32 [ 4, %102 ], [ 2, %74 ], [ %72, %71 ], [ 1, %37 ]
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %106, label %26

114:                                              ; preds = %56, %33, %95, %30, %26, %86, %9, %105, %106
  %115 = phi i32 [ %110, %106 ], [ %100, %105 ], [ 0, %9 ], [ 7, %86 ], [ 0, %26 ], [ 11, %30 ], [ 6, %95 ], [ 7, %33 ], [ 7, %56 ]
  ret i32 %115
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @alone_decoder_end(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @alone_decoder_memconfig(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i64 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %6 = load i64, ptr %5, align 8, !tbaa !30
  store i64 %6, ptr %1, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !29
  store i64 %8, ptr %2, align 8, !tbaa !18
  %9 = icmp eq i64 %3, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %5, align 8, !tbaa !30
  %12 = icmp ugt i64 %11, %3
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i64 %3, ptr %7, align 8, !tbaa !29
  br label %14

14:                                               ; preds = %4, %13, %10
  %15 = phi i32 [ 6, %10 ], [ 0, %13 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare i64 @lzma_lzma_decoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_lz_decoder_uncompressed(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_alone_decoder(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call i32 @lzma_alone_decoder_init(ptr noundef %7, ptr noundef %9, i64 noundef %1, i1 noundef zeroext false) #7, !range !45
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #5
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !46
  br label %17

17:                                               ; preds = %12, %2, %13
  %18 = phi i32 [ %3, %2 ], [ %10, %12 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 16}
!7 = !{!"lzma_next_coder_s", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!7, !8, i64 0}
!13 = !{!7, !8, i64 24}
!14 = !{!7, !8, i64 32}
!15 = !{!7, !8, i64 48}
!16 = !{i64 0, i64 8, !17, i64 8, i64 8, !18, i64 16, i64 8, !18, i64 24, i64 8, !17, i64 32, i64 8, !17, i64 40, i64 8, !17, i64 48, i64 8, !17, i64 56, i64 8, !17}
!17 = !{!8, !8, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{i64 0, i64 8, !18, i64 8, i64 8, !18, i64 16, i64 8, !17, i64 24, i64 8, !17, i64 32, i64 8, !17, i64 40, i64 8, !17, i64 48, i64 8, !17}
!20 = !{!21, !22, i64 64}
!21 = !{!"lzma_coder_s", !7, i64 0, !22, i64 64, !23, i64 68, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !24, i64 104}
!22 = !{!"int", !9, i64 0}
!23 = !{!"_Bool", !9, i64 0}
!24 = !{!"", !22, i64 0, !8, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !22, i64 64, !22, i64 68, !22, i64 72, !22, i64 76, !22, i64 80, !22, i64 84, !22, i64 88, !22, i64 92, !8, i64 96, !8, i64 104}
!25 = !{!21, !23, i64 68}
!26 = !{!21, !22, i64 104}
!27 = !{!21, !8, i64 112}
!28 = !{!21, !22, i64 120}
!29 = !{!21, !11, i64 88}
!30 = !{!21, !11, i64 96}
!31 = !{!9, !9, i64 0}
!32 = !{!21, !11, i64 72}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!21, !11, i64 80}
!36 = !{!37, !11, i64 0}
!37 = !{!"lzma_filter_info_s", !11, i64 0, !8, i64 8, !8, i64 16}
!38 = !{!37, !8, i64 8}
!39 = !{!37, !8, i64 16}
!40 = !{!21, !8, i64 0}
!41 = !{!21, !8, i64 24}
!42 = !{!43, !8, i64 56}
!43 = !{!"", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !22, i64 128, !22, i64 132}
!44 = !{!43, !8, i64 48}
!45 = !{i32 0, i32 12}
!46 = !{!23, !23, i64 0}
