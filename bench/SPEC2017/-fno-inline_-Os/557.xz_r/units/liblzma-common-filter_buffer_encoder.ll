; ModuleID = 'liblzma/common/filter_buffer_encoder.c'
source_filename = "liblzma/common/filter_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_buffer_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 !prof !34 {
  %8 = alloca %struct.lzma_next_coder_s, align 8
  %9 = alloca i64, align 8
  %10 = icmp eq ptr %2, null
  %11 = icmp ne i64 %3, 0
  %12 = and i1 %10, %11
  %13 = icmp eq ptr %4, null
  %14 = or i1 %12, %13
  %15 = icmp eq ptr %5, null
  %16 = or i1 %14, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %7
  %18 = load i64, ptr %5, align 8, !tbaa !35
  %19 = icmp ugt i64 %18, %6
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %8, i64 0, i32 1
  store i64 -1, ptr %21, align 8
  %22 = call i32 @lzma_raw_encoder_init(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %0) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i64, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  store i64 0, ptr %9, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %8, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = load ptr, ptr %8, align 8, !tbaa !42
  %29 = call i32 %27(ptr noundef %28, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, i64 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef %6, i32 noundef 3) #5
  call void @lzma_next_end(ptr noundef nonnull %8, ptr noundef %1) #5
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = icmp eq i32 %29, 0
  %33 = select i1 %32, i32 10, i32 %29
  store i64 %25, ptr %5, align 8, !tbaa !35
  br label %34

34:                                               ; preds = %24, %31
  %35 = phi i32 [ %33, %31 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  br label %36

36:                                               ; preds = %20, %34
  %37 = phi i32 [ %35, %34 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #4
  br label %38

38:                                               ; preds = %17, %7, %36
  %39 = phi i32 [ %37, %36 ], [ 11, %7 ], [ 11, %17 ]
  ret i32 %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
