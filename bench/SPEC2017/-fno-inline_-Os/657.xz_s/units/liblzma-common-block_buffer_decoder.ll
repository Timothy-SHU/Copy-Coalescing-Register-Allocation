; ModuleID = 'liblzma/common/block_buffer_decoder.c'
source_filename = "liblzma/common/block_buffer_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_block_buffer_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.lzma_next_coder_s, align 8
  %10 = icmp eq ptr %3, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %8
  %12 = icmp ne ptr %2, null
  %13 = load i64, ptr %3, align 8, !tbaa !35
  %14 = icmp eq i64 %13, %4
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %11
  %17 = icmp ugt i64 %13, %4
  %18 = icmp eq ptr %6, null
  %19 = or i1 %18, %17
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %5, null
  %22 = load i64, ptr %6, align 8, !tbaa !35
  %23 = icmp ne i64 %22, %7
  %24 = select i1 %21, i1 %23, i1 false
  %25 = icmp ugt i64 %22, %7
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %46, label %27

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  %28 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %9, i64 0, i32 1
  store i64 -1, ptr %28, align 8
  %29 = call i32 @lzma_block_decoder_init(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %0) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i64, ptr %3, align 8, !tbaa !35
  %33 = load i64, ptr %6, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %9, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = load ptr, ptr %9, align 8, !tbaa !42
  %37 = call i32 %35(ptr noundef %36, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 3) #5
  switch i32 %37, label %42 [
    i32 1, label %44
    i32 0, label %38
  ]

38:                                               ; preds = %31
  %39 = load i64, ptr %3, align 8, !tbaa !35
  %40 = icmp eq i64 %39, %4
  %41 = select i1 %40, i32 9, i32 10
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i32 [ %37, %31 ], [ %41, %38 ]
  store i64 %32, ptr %3, align 8, !tbaa !35
  store i64 %33, ptr %6, align 8, !tbaa !35
  br label %44

44:                                               ; preds = %42, %31, %27
  %45 = phi i32 [ %29, %27 ], [ %43, %42 ], [ 0, %31 ]
  call void @lzma_next_end(ptr noundef nonnull %9, ptr noundef %1) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #4
  br label %46

46:                                               ; preds = %20, %11, %8, %16, %44
  %47 = phi i32 [ %45, %44 ], [ 11, %16 ], [ 11, %8 ], [ 11, %11 ], [ 11, %20 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
