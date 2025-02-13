; ModuleID = 'liblzma/delta/delta_common.c'
source_filename = "liblzma/delta/delta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_delta_coder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %1) #4
  store ptr %7, ptr %0, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

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
  %16 = tail call i64 @lzma_delta_coder_memusage(ptr noundef %15) #5, !range !48
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.lzma_options_delta, ptr %15, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !49
  %21 = zext i32 %20 to i64
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 1
  store i64 %21, ptr %23, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %24, i8 0, i64 257, i1 false)
  %25 = load ptr, ptr %0, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 1
  %27 = tail call i32 @lzma_next_filter_init(ptr noundef %25, ptr noundef %1, ptr noundef nonnull %26) #4
  br label %28

28:                                               ; preds = %13, %6, %18
  %29 = phi i32 [ %27, %18 ], [ 5, %6 ], [ 8, %13 ]
  ret i32 %29
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @delta_coder_end(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !54 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #4
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @lzma_delta_coder_memusage(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !55
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_options_delta, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = add i32 %8, -257
  %10 = icmp ult i32 %9, -256
  %11 = select i1 %10, i64 -1, i64 336
  br label %12

12:                                               ; preds = %6, %1, %3
  %13 = phi i64 [ -1, %3 ], [ -1, %1 ], [ %11, %6 ]
  ret i64 %13
}

; Function Attrs: optsize
declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!48 = !{i64 -1, i64 337}
!49 = !{!50, !51, i64 4}
!50 = !{!"", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !37, i64 24, !37, i64 32}
!51 = !{!"int", !38, i64 0}
!52 = !{!53, !40, i64 64}
!53 = !{!"lzma_coder_s", !36, i64 0, !40, i64 64, !38, i64 72, !38, i64 73}
!54 = !{!"delta_common.c:delta_coder_end"}
!55 = !{!50, !51, i64 0}
