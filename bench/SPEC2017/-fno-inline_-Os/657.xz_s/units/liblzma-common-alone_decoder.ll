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
  %7 = load i64, ptr %6, align 8, !tbaa !35
  %8 = icmp eq i64 %7, ptrtoint (ptr @lzma_alone_decoder_init to i64)
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %10

10:                                               ; preds = %9, %4
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %6, align 8, !tbaa !35
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #5
  store ptr %16, ptr %0, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @alone_decode, ptr %19, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @alone_decoder_end, ptr %20, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @alone_decoder_memconfig, ptr %21, align 8, !tbaa !44
  store ptr null, ptr %16, align 8, !tbaa.struct !45
  %22 = getelementptr inbounds i8, ptr %16, i64 8
  store i64 -1, ptr %22, align 8, !tbaa.struct !48
  %23 = getelementptr inbounds i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %23, i8 0, i64 48, i1 false)
  %24 = load ptr, ptr %0, align 8, !tbaa !41
  br label %25

25:                                               ; preds = %18, %12
  %26 = phi ptr [ %24, %18 ], [ %13, %12 ]
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 1
  store i32 0, ptr %27, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 2
  store i8 %5, ptr %28, align 4, !tbaa !54
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 3
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 7
  store i32 0, ptr %30, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 7, i32 1
  store ptr null, ptr %31, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 7, i32 2
  store i32 0, ptr %32, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store i64 %2, ptr %33, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 6
  store i64 32768, ptr %34, align 8, !tbaa !59
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
define internal i32 @alone_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !PGOFuncName !60 {
  %10 = alloca [2 x %struct.lzma_filter_info_s], align 16
  %11 = load i64, ptr %6, align 8, !tbaa !47
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
  %24 = load i32, ptr %14, align 8, !tbaa !49
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %106, label %26

26:                                               ; preds = %13, %111
  %27 = phi i32 [ %112, %111 ], [ %24, %13 ]
  %28 = load i64, ptr %3, align 8, !tbaa !47
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
  %32 = load i64, ptr %19, align 8, !tbaa !59
  br label %95

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %2, i64 %28
  %35 = load i8, ptr %34, align 1, !tbaa !61
  %36 = call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %18, i8 noundef zeroext %35) #5
  br i1 %36, label %114, label %37

37:                                               ; preds = %33
  store i32 1, ptr %14, align 8, !tbaa !49
  %38 = add nuw i64 %28, 1
  store i64 %38, ptr %3, align 8, !tbaa !47
  br label %111

39:                                               ; preds = %30
  %40 = getelementptr inbounds i8, ptr %2, i64 %28
  %41 = load i8, ptr %40, align 1, !tbaa !61
  %42 = zext i8 %41 to i64
  %43 = load i64, ptr %15, align 8, !tbaa !62
  %44 = shl i64 %43, 3
  %45 = shl i64 %42, %44
  %46 = load i32, ptr %18, align 8, !tbaa !55
  %47 = trunc i64 %45 to i32
  %48 = or i32 %46, %47
  store i32 %48, ptr %18, align 8, !tbaa !55
  %49 = add i64 %43, 1
  store i64 %49, ptr %15, align 8, !tbaa !62
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %71

51:                                               ; preds = %39
  %52 = load i8, ptr %17, align 4, !tbaa !54, !range !63, !noundef !64
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
  store i64 0, ptr %15, align 8, !tbaa !62
  store i32 2, ptr %14, align 8, !tbaa !49
  br label %71

71:                                               ; preds = %70, %39
  %72 = phi i32 [ 2, %70 ], [ 1, %39 ]
  %73 = add nuw i64 %28, 1
  store i64 %73, ptr %3, align 8, !tbaa !47
  br label %111

74:                                               ; preds = %30
  %75 = getelementptr inbounds i8, ptr %2, i64 %28
  %76 = load i8, ptr %75, align 1, !tbaa !61
  %77 = zext i8 %76 to i64
  %78 = load i64, ptr %15, align 8, !tbaa !62
  %79 = shl i64 %78, 3
  %80 = shl i64 %77, %79
  %81 = load i64, ptr %16, align 8, !tbaa !65
  %82 = or i64 %80, %81
  store i64 %82, ptr %16, align 8, !tbaa !65
  %83 = add nuw i64 %28, 1
  store i64 %83, ptr %3, align 8, !tbaa !47
  %84 = add i64 %78, 1
  store i64 %84, ptr %15, align 8, !tbaa !62
  %85 = icmp ult i64 %84, 8
  br i1 %85, label %111, label %86

86:                                               ; preds = %74
  %87 = load i8, ptr %17, align 4, !tbaa !54, !range !63, !noundef !64
  %88 = icmp ne i8 %87, 0
  %89 = add i64 %82, -274877906944
  %90 = icmp ult i64 %89, -274877906945
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %114, label %92

92:                                               ; preds = %86
  %93 = call i64 @lzma_lzma_decoder_memusage(ptr noundef nonnull %18) #5
  %94 = add i64 %93, 32768
  store i64 %94, ptr %19, align 8, !tbaa !59
  store i64 0, ptr %15, align 8, !tbaa !62
  store i32 3, ptr %14, align 8, !tbaa !49
  br label %95

95:                                               ; preds = %31, %92
  %96 = phi i64 [ %32, %31 ], [ %94, %92 ]
  %97 = load i64, ptr %20, align 8, !tbaa !58
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #6
  store i64 0, ptr %10, align 16, !tbaa !66
  store ptr @lzma_lzma_decoder_init, ptr %21, align 8, !tbaa !68
  store ptr %18, ptr %22, align 16, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %100 = call i32 @lzma_next_filter_init(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %10) #5
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load ptr, ptr %0, align 8, !tbaa !70
  %104 = load i64, ptr %16, align 8, !tbaa !65
  call void @lzma_lz_decoder_uncompressed(ptr noundef %103, i64 noundef %104) #5
  store i32 4, ptr %14, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #6
  br label %111

105:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #6
  br label %114

106:                                              ; preds = %111, %13
  %107 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !71
  %109 = load ptr, ptr %0, align 8, !tbaa !70
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
define internal void @alone_decoder_end(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !72 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @alone_decoder_memconfig(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i64 noundef %3) #2 !PGOFuncName !73 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %6 = load i64, ptr %5, align 8, !tbaa !59
  store i64 %6, ptr %1, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !58
  store i64 %8, ptr %2, align 8, !tbaa !47
  %9 = icmp eq i64 %3, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %5, align 8, !tbaa !59
  %12 = icmp ugt i64 %11, %3
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i64 %3, ptr %7, align 8, !tbaa !58
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
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = tail call i32 @lzma_alone_decoder_init(ptr noundef %7, ptr noundef %9, i64 noundef %1, i1 noundef zeroext false) #7, !range !77
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef nonnull %0) #5
  br label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %14, i64 0, i32 3, i64 3
  store i8 1, ptr %16, align 1, !tbaa !78
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
!44 = !{!36, !37, i64 48}
!45 = !{i64 0, i64 8, !46, i64 8, i64 8, !47, i64 16, i64 8, !47, i64 24, i64 8, !46, i64 32, i64 8, !46, i64 40, i64 8, !46, i64 48, i64 8, !46, i64 56, i64 8, !46}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !40, i64 0}
!48 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !46, i64 24, i64 8, !46, i64 32, i64 8, !46, i64 40, i64 8, !46, i64 48, i64 8, !46}
!49 = !{!50, !51, i64 64}
!50 = !{!"lzma_coder_s", !36, i64 0, !51, i64 64, !52, i64 68, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !53, i64 104}
!51 = !{!"int", !38, i64 0}
!52 = !{!"_Bool", !38, i64 0}
!53 = !{!"", !51, i64 0, !37, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !51, i64 64, !51, i64 68, !51, i64 72, !51, i64 76, !51, i64 80, !51, i64 84, !51, i64 88, !51, i64 92, !37, i64 96, !37, i64 104}
!54 = !{!50, !52, i64 68}
!55 = !{!50, !51, i64 104}
!56 = !{!50, !37, i64 112}
!57 = !{!50, !51, i64 120}
!58 = !{!50, !40, i64 88}
!59 = !{!50, !40, i64 96}
!60 = !{!"alone_decoder.c:alone_decode"}
!61 = !{!38, !38, i64 0}
!62 = !{!50, !40, i64 72}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!50, !40, i64 80}
!66 = !{!67, !40, i64 0}
!67 = !{!"lzma_filter_info_s", !40, i64 0, !37, i64 8, !37, i64 16}
!68 = !{!67, !37, i64 8}
!69 = !{!67, !37, i64 16}
!70 = !{!50, !37, i64 0}
!71 = !{!50, !37, i64 24}
!72 = !{!"alone_decoder.c:alone_decoder_end"}
!73 = !{!"alone_decoder.c:alone_decoder_memconfig"}
!74 = !{!75, !37, i64 56}
!75 = !{!"", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !40, i64 32, !40, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !51, i64 128, !51, i64 132}
!76 = !{!75, !37, i64 48}
!77 = !{i32 0, i32 12}
!78 = !{!52, !52, i64 0}
