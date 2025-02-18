; ModuleID = 'liblzma/common/block_buffer_decoder.c'
source_filename = "liblzma/common/block_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_block_buffer_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 !prof !34 {
  %9 = alloca %struct.lzma_next_coder_s, align 8
  %10 = icmp eq ptr %3, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load i64, ptr %3, align 8, !tbaa !35
  %15 = icmp eq i64 %14, %4
  br i1 %15, label %16, label %48

16:                                               ; preds = %13, %11
  %17 = load i64, ptr %3, align 8, !tbaa !35
  %18 = icmp ugt i64 %17, %4
  %19 = icmp eq ptr %6, null
  %20 = or i1 %19, %18
  br i1 %20, label %48, label %21

21:                                               ; preds = %16
  %22 = icmp eq ptr %5, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i64, ptr %6, align 8, !tbaa !35
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %26, label %48

26:                                               ; preds = %23, %21
  %27 = load i64, ptr %6, align 8, !tbaa !35
  %28 = icmp ugt i64 %27, %7
  br i1 %28, label %48, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  %30 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %9, i64 0, i32 1
  store i64 -1, ptr %30, align 8
  %31 = call i32 @lzma_block_decoder_init(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %0) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, ptr %3, align 8, !tbaa !35
  %35 = load i64, ptr %6, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %9, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = load ptr, ptr %9, align 8, !tbaa !42
  %39 = call i32 %37(ptr noundef %38, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 3) #4
  switch i32 %39, label %44 [
    i32 1, label %46
    i32 0, label %40
  ]

40:                                               ; preds = %33
  %41 = load i64, ptr %3, align 8, !tbaa !35
  %42 = icmp eq i64 %41, %4
  %43 = select i1 %42, i32 9, i32 10
  br label %44

44:                                               ; preds = %40, %33
  %45 = phi i32 [ %39, %33 ], [ %43, %40 ]
  store i64 %34, ptr %3, align 8, !tbaa !35
  store i64 %35, ptr %6, align 8, !tbaa !35
  br label %46

46:                                               ; preds = %44, %33, %29
  %47 = phi i32 [ %31, %29 ], [ %45, %44 ], [ 0, %33 ]
  call void @lzma_next_end(ptr noundef nonnull %9, ptr noundef %1) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #4
  br label %48

48:                                               ; preds = %23, %13, %8, %16, %26, %46
  %49 = phi i32 [ %47, %46 ], [ 11, %26 ], [ 11, %16 ], [ 11, %8 ], [ 11, %13 ], [ 11, %23 ]
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
