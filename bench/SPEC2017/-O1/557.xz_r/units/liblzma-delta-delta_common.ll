; ModuleID = 'liblzma/delta/delta_common.c'
source_filename = "liblzma/delta/delta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_delta_coder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %1) #4
  store ptr %7, ptr %0, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @delta_coder_end, ptr %10, align 8, !tbaa !41
  store ptr null, ptr %7, align 8, !tbaa.struct !42
  %11 = getelementptr inbounds i8, ptr %7, i64 8
  store i64 -1, ptr %11, align 8, !tbaa.struct !45
  %12 = getelementptr inbounds i8, ptr %7, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 48, i1 false)
  br label %13

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 8, !tbaa !48
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.lzma_options_delta, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !51
  %23 = add i32 %22, -257
  %24 = icmp ult i32 %23, -256
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.lzma_options_delta, ptr %15, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !51
  %28 = zext i32 %27 to i64
  %29 = load ptr, ptr %0, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 1
  store i64 %28, ptr %30, align 8, !tbaa !52
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %31, i8 0, i64 257, i1 false)
  %32 = load ptr, ptr %0, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 1
  %34 = tail call i32 @lzma_next_filter_init(ptr noundef %32, ptr noundef %1, ptr noundef nonnull %33) #4
  br label %35

35:                                               ; preds = %17, %13, %20, %6, %25
  %36 = phi i32 [ %34, %25 ], [ 5, %6 ], [ 8, %20 ], [ 8, %13 ], [ 8, %17 ]
  ret i32 %36
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal void @delta_coder_end(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #4
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_delta_coder_memusage(ptr noundef readonly %0) local_unnamed_addr #3 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !48
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_options_delta, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !51
  %9 = add i32 %8, -257
  %10 = icmp ult i32 %9, -256
  %11 = select i1 %10, i64 -1, i64 336
  br label %12

12:                                               ; preds = %6, %1, %3
  %13 = phi i64 [ -1, %3 ], [ -1, %1 ], [ %11, %6 ]
  ret i64 %13
}

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!35 = !{!36, !37, i64 0}
!36 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!36, !37, i64 32}
!42 = !{i64 0, i64 8, !43, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !43}
!43 = !{!37, !37, i64 0}
!44 = !{!40, !40, i64 0}
!45 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43}
!46 = !{!47, !37, i64 16}
!47 = !{!"lzma_filter_info_s", !40, i64 0, !37, i64 8, !37, i64 16}
!48 = !{!49, !50, i64 0}
!49 = !{!"", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !37, i64 24, !37, i64 32}
!50 = !{!"int", !38, i64 0}
!51 = !{!49, !50, i64 4}
!52 = !{!53, !40, i64 64}
!53 = !{!"lzma_coder_s", !36, i64 0, !40, i64 64, !38, i64 72, !38, i64 73}
