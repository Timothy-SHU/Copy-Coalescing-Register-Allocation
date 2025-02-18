; ModuleID = 'liblzma/common/stream_buffer_encoder.c'
source_filename = "liblzma/common/stream_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_stream_buffer_bound(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @lzma_block_buffer_bound(i64 noundef %0) #4
  %3 = icmp eq i64 %2, 0
  %4 = icmp sgt i64 %2, 9223372036854775759
  %5 = or i1 %3, %4
  %6 = add i64 %2, 48
  %7 = select i1 %5, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @lzma_block_buffer_bound(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_stream_buffer_encode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 !prof !34 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.lzma_stream_flags, align 8
  %11 = alloca %struct.lzma_block, align 8
  %12 = icmp eq ptr %0, null
  %13 = icmp ugt i32 %1, 15
  %14 = or i1 %12, %13
  br i1 %14, label %86, label %15

15:                                               ; preds = %8
  %16 = icmp eq ptr %3, null
  %17 = icmp ne i64 %4, 0
  %18 = and i1 %16, %17
  %19 = icmp eq ptr %5, null
  %20 = or i1 %18, %19
  %21 = icmp eq ptr %6, null
  %22 = or i1 %20, %21
  br i1 %22, label %86, label %23

23:                                               ; preds = %15
  %24 = load i64, ptr %6, align 8, !tbaa !35
  %25 = icmp ugt i64 %24, %7
  br i1 %25, label %86, label %26

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %1) #4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %86, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %30 = load i64, ptr %6, align 8, !tbaa !35
  store i64 %30, ptr %9, align 8, !tbaa !35
  %31 = sub i64 %7, %30
  %32 = icmp ult i64 %31, 25
  br i1 %32, label %84, label %33

33:                                               ; preds = %29
  %34 = add i64 %7, -12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  %35 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 2
  store i32 %1, ptr %35, align 8, !tbaa !39
  %36 = getelementptr inbounds i8, ptr %5, i64 %30
  %37 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %10, ptr noundef %36) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %33
  %40 = load i64, ptr %9, align 8, !tbaa !35
  %41 = add i64 %40, 12
  store i64 %41, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %11) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %11, i8 0, i64 208, i1 false)
  %42 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 2
  store i32 %1, ptr %42, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 5
  store ptr %0, ptr %43, align 8, !tbaa !45
  %44 = icmp eq i64 %4, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = call i32 @lzma_block_buffer_encode(ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %9, i64 noundef %34) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45, %39
  %49 = phi i32 [ %46, %45 ], [ undef, %39 ]
  %50 = call ptr @lzma_index_init(ptr noundef %2) #4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  br i1 %44, label %58, label %53

53:                                               ; preds = %52
  %54 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %11) #4
  %55 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 4
  %56 = load i64, ptr %55, align 8, !tbaa !46
  %57 = call i32 @lzma_index_append(ptr noundef nonnull %50, ptr noundef %2, i64 noundef %54, i64 noundef %56) #4
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i32 [ %57, %53 ], [ 0, %52 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = call i32 @lzma_index_buffer_encode(ptr noundef nonnull %50, ptr noundef %5, ptr noundef nonnull %9, i64 noundef %34) #4
  %63 = call i64 @lzma_index_size(ptr noundef nonnull %50) #4
  %64 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 1
  store i64 %63, ptr %64, align 8, !tbaa !47
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i32 [ %62, %61 ], [ %59, %58 ]
  call void @lzma_index_end(ptr noundef nonnull %50, ptr noundef %2) #4
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 %49, i32 %66
  br label %69

69:                                               ; preds = %48, %65
  %70 = phi i1 [ %67, %65 ], [ false, %48 ]
  %71 = phi i32 [ %68, %65 ], [ 5, %48 ]
  br i1 %70, label %72, label %80

72:                                               ; preds = %69
  %73 = load i64, ptr %9, align 8, !tbaa !35
  %74 = getelementptr inbounds i8, ptr %5, i64 %73
  %75 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %10, ptr noundef %74) #4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, ptr %9, align 8, !tbaa !35
  %79 = add i64 %78, 12
  store i64 %79, ptr %9, align 8, !tbaa !35
  store i64 %79, ptr %6, align 8, !tbaa !35
  br label %80

80:                                               ; preds = %72, %45, %69, %77
  %81 = phi i32 [ 0, %77 ], [ %71, %69 ], [ %46, %45 ], [ 11, %72 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %11) #4
  br label %82

82:                                               ; preds = %33, %80
  %83 = phi i32 [ %81, %80 ], [ 11, %33 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #4
  br label %84

84:                                               ; preds = %29, %82
  %85 = phi i32 [ %83, %82 ], [ 10, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  br label %86

86:                                               ; preds = %26, %8, %23, %15, %84
  %87 = phi i32 [ %85, %84 ], [ 11, %15 ], [ 11, %23 ], [ 11, %8 ], [ 3, %26 ]
  ret i32 %87
}

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_block_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_index_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #2

declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 16}
!40 = !{!"", !41, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36, !37, i64 37, !37, i64 38, !37, i64 39, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 48}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !41, i64 8}
!43 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !37, i64 40, !44, i64 104, !44, i64 112, !44, i64 120, !41, i64 128, !41, i64 132, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !37, i64 200, !37, i64 201, !37, i64 202, !37, i64 203, !37, i64 204, !37, i64 205, !37, i64 206, !37, i64 207}
!44 = !{!"any pointer", !37, i64 0}
!45 = !{!43, !44, i64 32}
!46 = !{!43, !36, i64 24}
!47 = !{!40, !36, i64 8}
