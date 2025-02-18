; ModuleID = 'liblzma/common/filter_buffer_decoder.c'
source_filename = "liblzma/common/filter_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_raw_buffer_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 !prof !34 {
  %9 = alloca %struct.lzma_next_coder_s, align 8
  %10 = alloca [1 x i8], align 1
  %11 = alloca i64, align 8
  %12 = icmp eq ptr %2, null
  %13 = icmp eq ptr %3, null
  %14 = or i1 %12, %13
  br i1 %14, label %55, label %15

15:                                               ; preds = %8
  %16 = load i64, ptr %3, align 8, !tbaa !35
  %17 = icmp ugt i64 %16, %4
  %18 = icmp eq ptr %5, null
  %19 = or i1 %18, %17
  %20 = icmp eq ptr %6, null
  %21 = or i1 %20, %19
  br i1 %21, label %55, label %22

22:                                               ; preds = %15
  %23 = load i64, ptr %6, align 8, !tbaa !35
  %24 = icmp ugt i64 %23, %7
  br i1 %24, label %55, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  %26 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %9, i64 0, i32 1
  store i64 -1, ptr %26, align 8
  %27 = call i32 @lzma_raw_decoder_init(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %0) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i64, ptr %3, align 8, !tbaa !35
  %31 = load i64, ptr %6, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %9, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = load ptr, ptr %9, align 8, !tbaa !42
  %35 = call i32 %33(ptr noundef %34, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 3) #4
  switch i32 %35, label %49 [
    i32 1, label %51
    i32 0, label %36
  ]

36:                                               ; preds = %29
  %37 = load i64, ptr %3, align 8, !tbaa !35
  %38 = icmp eq i64 %37, %4
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i64, ptr %6, align 8, !tbaa !35
  %41 = icmp eq i64 %40, %7
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 0, ptr %11, align 8, !tbaa !35
  %43 = load ptr, ptr %32, align 8, !tbaa !39
  %44 = load ptr, ptr %9, align 8, !tbaa !42
  %45 = call i32 %43(ptr noundef %44, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef 1, i32 noundef 3) #4
  %46 = load i64, ptr %11, align 8, !tbaa !35
  %47 = icmp eq i64 %46, 1
  %48 = select i1 %47, i32 10, i32 9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #4
  br label %49

49:                                               ; preds = %39, %36, %29, %42
  %50 = phi i32 [ %48, %42 ], [ %35, %29 ], [ 10, %36 ], [ 9, %39 ]
  store i64 %30, ptr %3, align 8, !tbaa !35
  store i64 %31, ptr %6, align 8, !tbaa !35
  br label %51

51:                                               ; preds = %29, %49
  %52 = phi i32 [ %50, %49 ], [ 0, %29 ]
  call void @lzma_next_end(ptr noundef nonnull %9, ptr noundef %1) #4
  br label %53

53:                                               ; preds = %25, %51
  %54 = phi i32 [ %52, %51 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #4
  br label %55

55:                                               ; preds = %8, %15, %22, %53
  %56 = phi i32 [ %54, %53 ], [ 11, %22 ], [ 11, %15 ], [ 11, %8 ]
  ret i32 %56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @lzma_raw_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
