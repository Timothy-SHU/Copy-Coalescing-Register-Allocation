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

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_alone_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #0 !prof !34 {
  %5 = zext i1 %3 to i8
  %6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !35
  %8 = icmp eq i64 %7, ptrtoint (ptr @lzma_alone_decoder_init to i64)
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  br label %10

10:                                               ; preds = %9, %4
  store i64 ptrtoint (ptr @lzma_alone_decoder_init to i64), ptr %6, align 8, !tbaa !35
  %11 = icmp eq i64 %2, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #5
  store ptr %16, ptr %0, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

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
  br label %24

24:                                               ; preds = %18, %12
  %25 = load ptr, ptr %0, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 1
  store i32 0, ptr %26, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 2
  store i8 %5, ptr %27, align 4, !tbaa !54
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 3
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 7
  store i32 0, ptr %29, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 7, i32 1
  store ptr null, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 7, i32 2
  store i32 0, ptr %31, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store i64 %2, ptr %32, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 6
  store i64 32768, ptr %33, align 8, !tbaa !59
  br label %34

34:                                               ; preds = %15, %10, %24
  %35 = phi i32 [ 0, %24 ], [ 11, %10 ], [ 5, %15 ]
  ret i32 %35
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal i32 @alone_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !34 {
  %10 = alloca [2 x %struct.lzma_filter_info_s], align 16
  %11 = load i64, ptr %6, align 8, !tbaa !47
  %12 = icmp ult i64 %11, %7
  br i1 %12, label %13, label %128

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %10, i64 0, i32 1
  %20 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %10, i64 0, i32 2
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %10, i64 1
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  br label %26

26:                                               ; preds = %13, %124
  %27 = phi i32 [ undef, %13 ], [ %125, %124 ]
  %28 = load i32, ptr %14, align 8, !tbaa !49
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %115, label %30

30:                                               ; preds = %26
  %31 = load i64, ptr %3, align 8, !tbaa !47
  %32 = icmp ult i64 %31, %4
  br i1 %32, label %33, label %128

33:                                               ; preds = %30
  switch i32 %28, label %128 [
    i32 0, label %34
    i32 1, label %41
    i32 2, label %77
    i32 3, label %102
    i32 4, label %115
  ]

34:                                               ; preds = %33
  %35 = load i64, ptr %3, align 8, !tbaa !47
  %36 = getelementptr inbounds i8, ptr %2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !60
  %38 = call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %25, i8 noundef zeroext %37) #5
  br i1 %38, label %128, label %39

39:                                               ; preds = %34
  store i32 1, ptr %14, align 8, !tbaa !49
  %40 = load i64, ptr %3, align 8, !tbaa !47
  br label %120

41:                                               ; preds = %33
  %42 = load i64, ptr %3, align 8, !tbaa !47
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !60
  %45 = zext i8 %44 to i64
  %46 = load i64, ptr %23, align 8, !tbaa !61
  %47 = shl i64 %46, 3
  %48 = shl i64 %45, %47
  %49 = load i32, ptr %24, align 8, !tbaa !55
  %50 = trunc i64 %48 to i32
  %51 = or i32 %49, %50
  store i32 %51, ptr %24, align 8, !tbaa !55
  %52 = add i64 %46, 1
  store i64 %52, ptr %23, align 8, !tbaa !61
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %120

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %56 = load i8, ptr %55, align 4, !tbaa !54, !range !62, !noundef !63
  %57 = icmp eq i8 %56, 0
  %58 = icmp eq i32 %51, -1
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %75, label %60

60:                                               ; preds = %54
  %61 = add i32 %51, -1
  %62 = lshr i32 %61, 2
  %63 = or i32 %62, %61
  %64 = lshr i32 %63, 3
  %65 = or i32 %64, %63
  %66 = lshr i32 %65, 4
  %67 = or i32 %66, %65
  %68 = lshr i32 %67, 8
  %69 = or i32 %68, %67
  %70 = lshr i32 %69, 16
  %71 = or i32 %70, %69
  %72 = add i32 %71, 1
  %73 = icmp eq i32 %72, %51
  %74 = select i1 %73, i32 %27, i32 7
  br i1 %73, label %75, label %128

75:                                               ; preds = %60, %54
  %76 = phi i32 [ %74, %60 ], [ %27, %54 ]
  store i64 0, ptr %23, align 8, !tbaa !61
  store i32 2, ptr %14, align 8, !tbaa !49
  br label %120

77:                                               ; preds = %33
  %78 = load i64, ptr %3, align 8, !tbaa !47
  %79 = getelementptr inbounds i8, ptr %2, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !60
  %81 = zext i8 %80 to i64
  %82 = load i64, ptr %15, align 8, !tbaa !61
  %83 = shl i64 %82, 3
  %84 = shl i64 %81, %83
  %85 = load i64, ptr %16, align 8, !tbaa !64
  %86 = or i64 %84, %85
  store i64 %86, ptr %16, align 8, !tbaa !64
  %87 = add i64 %78, 1
  store i64 %87, ptr %3, align 8, !tbaa !47
  %88 = add i64 %82, 1
  store i64 %88, ptr %15, align 8, !tbaa !61
  %89 = icmp ult i64 %88, 8
  br i1 %89, label %124, label %90

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %92 = load i8, ptr %91, align 4, !tbaa !54, !range !62, !noundef !63
  %93 = icmp ne i8 %92, 0
  %94 = add i64 %86, -274877906944
  %95 = icmp ult i64 %94, -274877906945
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %128, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %99 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %100 = call i64 @lzma_lzma_decoder_memusage(ptr noundef nonnull %98) #5
  %101 = add i64 %100, 32768
  store i64 %101, ptr %99, align 8, !tbaa !59
  store i64 0, ptr %15, align 8, !tbaa !61
  store i32 3, ptr %14, align 8, !tbaa !49
  br label %102

102:                                              ; preds = %33, %97
  %103 = load i64, ptr %17, align 8, !tbaa !59
  %104 = load i64, ptr %18, align 8, !tbaa !58
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %128, label %106

106:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #5
  store i64 0, ptr %10, align 16, !tbaa !65
  store ptr @lzma_lzma_decoder_init, ptr %19, align 8, !tbaa !67
  store ptr %21, ptr %20, align 16, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %107 = call i32 @lzma_next_filter_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10) #5
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %111 = load ptr, ptr %0, align 8, !tbaa !69
  %112 = load i64, ptr %110, align 8, !tbaa !64
  call void @lzma_lz_decoder_uncompressed(ptr noundef %111, i64 noundef %112) #5
  store i32 4, ptr %14, align 8, !tbaa !49
  br label %113

113:                                              ; preds = %106, %109
  %114 = phi i32 [ %27, %109 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #5
  br i1 %108, label %124, label %128

115:                                              ; preds = %26, %33
  %116 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !70
  %118 = load ptr, ptr %0, align 8, !tbaa !69
  %119 = call i32 %117(ptr noundef %118, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #5
  br label %128

120:                                              ; preds = %41, %75, %39
  %121 = phi i64 [ %40, %39 ], [ %42, %75 ], [ %42, %41 ]
  %122 = phi i32 [ %27, %39 ], [ %76, %75 ], [ %27, %41 ]
  %123 = add i64 %121, 1
  store i64 %123, ptr %3, align 8, !tbaa !47
  br label %124

124:                                              ; preds = %120, %77, %113
  %125 = phi i32 [ %114, %113 ], [ %27, %77 ], [ %122, %120 ]
  %126 = load i64, ptr %6, align 8, !tbaa !47
  %127 = icmp ult i64 %126, %7
  br i1 %127, label %26, label %128, !llvm.loop !71

128:                                              ; preds = %113, %60, %34, %124, %30, %33, %90, %102, %9, %115
  %129 = phi i32 [ %119, %115 ], [ 0, %9 ], [ 6, %102 ], [ 7, %90 ], [ 11, %33 ], [ 0, %30 ], [ 0, %124 ], [ 7, %34 ], [ %74, %60 ], [ %114, %113 ]
  ret i32 %129
}

; Function Attrs: cold nounwind uwtable
define internal void @alone_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @alone_decoder_memconfig(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i64 noundef %3) #2 !prof !34 {
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

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_alone_decoder(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i32 @lzma_strm_init(ptr noundef %0) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = tail call i32 @lzma_alone_decoder_init(ptr noundef %7, ptr noundef %9, i64 noundef %1, i1 noundef zeroext false), !range !77
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @lzma_end(ptr noundef %0) #5
  br label %13

13:                                               ; preds = %5, %12
  %14 = phi i32 [ %10, %12 ], [ %3, %5 ]
  br i1 %11, label %15, label %19

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !tbaa !74
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3
  store i8 1, ptr %17, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %16, i64 0, i32 3, i64 3
  store i8 1, ptr %18, align 1, !tbaa !78
  br label %19

19:                                               ; preds = %2, %13, %15
  %20 = phi i32 [ %3, %2 ], [ %14, %13 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i64 @lzma_lzma_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_lz_decoder_uncompressed(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!60 = !{!38, !38, i64 0}
!61 = !{!50, !40, i64 72}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!50, !40, i64 80}
!65 = !{!66, !40, i64 0}
!66 = !{!"lzma_filter_info_s", !40, i64 0, !37, i64 8, !37, i64 16}
!67 = !{!66, !37, i64 8}
!68 = !{!66, !37, i64 16}
!69 = !{!50, !37, i64 0}
!70 = !{!50, !37, i64 24}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!75, !37, i64 56}
!75 = !{!"", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !40, i64 32, !40, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !51, i64 128, !51, i64 132}
!76 = !{!75, !37, i64 48}
!77 = !{i32 0, i32 12}
!78 = !{!52, !52, i64 0}
