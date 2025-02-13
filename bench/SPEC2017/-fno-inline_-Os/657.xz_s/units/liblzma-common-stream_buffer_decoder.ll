; ModuleID = 'liblzma/common/stream_buffer_decoder.c'
source_filename = "liblzma/common/stream_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_stream_buffer_decode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.lzma_next_coder_s, align 8
  %11 = alloca i64, align 8
  %12 = icmp eq ptr %4, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %9
  %14 = icmp ne ptr %3, null
  %15 = load i64, ptr %4, align 8, !tbaa !35
  %16 = icmp eq i64 %15, %5
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %13
  %19 = icmp ugt i64 %15, %5
  %20 = icmp eq ptr %7, null
  %21 = or i1 %20, %19
  br i1 %21, label %57, label %22

22:                                               ; preds = %18
  %23 = icmp ne ptr %6, null
  %24 = load i64, ptr %7, align 8, !tbaa !35
  %25 = icmp eq i64 %24, %8
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = icmp ule i64 %24, %8
  %29 = and i32 %1, 4
  %30 = icmp eq i32 %29, 0
  %31 = and i1 %30, %28
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  %33 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %10, i64 0, i32 1
  store i64 -1, ptr %33, align 8
  %34 = load i64, ptr %0, align 8, !tbaa !35
  %35 = call i32 @lzma_stream_decoder_init(ptr noundef nonnull %10, ptr noundef %2, i64 noundef %34, i32 noundef %1) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load i64, ptr %4, align 8, !tbaa !35
  %39 = load i64, ptr %7, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %10, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = load ptr, ptr %10, align 8, !tbaa !42
  %43 = call i32 %41(ptr noundef %42, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, i32 noundef 3) #5
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %55, label %45

45:                                               ; preds = %37
  store i64 %38, ptr %4, align 8, !tbaa !35
  store i64 %39, ptr %7, align 8, !tbaa !35
  switch i32 %43, label %55 [
    i32 0, label %46
    i32 6, label %50
  ]

46:                                               ; preds = %45
  %47 = load i64, ptr %4, align 8, !tbaa !35
  %48 = icmp eq i64 %47, %5
  %49 = select i1 %48, i32 9, i32 10
  br label %55

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  %51 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %10, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = load ptr, ptr %10, align 8, !tbaa !42
  %54 = call i32 %52(ptr noundef %53, ptr noundef nonnull %0, ptr noundef nonnull %11, i64 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br label %55

55:                                               ; preds = %50, %37, %46, %45, %32
  %56 = phi i32 [ %35, %32 ], [ 6, %50 ], [ 0, %37 ], [ %49, %46 ], [ %43, %45 ]
  call void @lzma_next_end(ptr noundef nonnull %10, ptr noundef %2) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #4
  br label %57

57:                                               ; preds = %22, %13, %9, %18, %27, %55
  %58 = phi i32 [ %56, %55 ], [ 11, %27 ], [ 11, %18 ], [ 11, %9 ], [ 11, %13 ], [ 11, %22 ]
  ret i32 %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 24}
!40 = !{!"lzma_next_coder_s", !41, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!40, !41, i64 0}
!43 = !{!40, !41, i64 48}
