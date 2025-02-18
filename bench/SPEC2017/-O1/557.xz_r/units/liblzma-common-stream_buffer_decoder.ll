; ModuleID = 'liblzma/common/stream_buffer_decoder.c'
source_filename = "liblzma/common/stream_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_stream_buffer_decode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #0 !prof !34 {
  %10 = alloca %struct.lzma_next_coder_s, align 8
  %11 = alloca i64, align 8
  %12 = icmp eq ptr %4, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %3, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i64, ptr %4, align 8, !tbaa !35
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %18, label %59

18:                                               ; preds = %15, %13
  %19 = load i64, ptr %4, align 8, !tbaa !35
  %20 = icmp ugt i64 %19, %5
  %21 = icmp eq ptr %7, null
  %22 = or i1 %21, %20
  br i1 %22, label %59, label %23

23:                                               ; preds = %18
  %24 = icmp eq ptr %6, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i64, ptr %7, align 8, !tbaa !35
  %27 = icmp eq i64 %26, %8
  br i1 %27, label %28, label %59

28:                                               ; preds = %25, %23
  %29 = load i64, ptr %7, align 8, !tbaa !35
  %30 = icmp ule i64 %29, %8
  %31 = and i32 %1, 4
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %32, %30
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  %35 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %10, i64 0, i32 1
  store i64 -1, ptr %35, align 8
  %36 = load i64, ptr %0, align 8, !tbaa !35
  %37 = call i32 @lzma_stream_decoder_init(ptr noundef nonnull %10, ptr noundef %2, i64 noundef %36, i32 noundef %1) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load i64, ptr %4, align 8, !tbaa !35
  %41 = load i64, ptr %7, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %10, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = load ptr, ptr %10, align 8, !tbaa !42
  %45 = call i32 %43(ptr noundef %44, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, i32 noundef 3) #4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  store i64 %40, ptr %4, align 8, !tbaa !35
  store i64 %41, ptr %7, align 8, !tbaa !35
  switch i32 %45, label %57 [
    i32 0, label %48
    i32 6, label %52
  ]

48:                                               ; preds = %47
  %49 = load i64, ptr %4, align 8, !tbaa !35
  %50 = icmp eq i64 %49, %5
  %51 = select i1 %50, i32 9, i32 10
  br label %57

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  %53 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %10, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = load ptr, ptr %10, align 8, !tbaa !42
  %56 = call i32 %54(ptr noundef %55, ptr noundef nonnull %0, ptr noundef nonnull %11, i64 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br label %57

57:                                               ; preds = %52, %39, %48, %47, %34
  %58 = phi i32 [ %37, %34 ], [ 6, %52 ], [ 0, %39 ], [ %51, %48 ], [ %45, %47 ]
  call void @lzma_next_end(ptr noundef nonnull %10, ptr noundef %2) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #4
  br label %59

59:                                               ; preds = %25, %15, %9, %18, %28, %57
  %60 = phi i32 [ %58, %57 ], [ 11, %28 ], [ 11, %18 ], [ 11, %9 ], [ 11, %15 ], [ 11, %25 ]
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!39 = !{!40, !41, i64 24}
!40 = !{!"lzma_next_coder_s", !41, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!40, !41, i64 0}
!43 = !{!40, !41, i64 48}
