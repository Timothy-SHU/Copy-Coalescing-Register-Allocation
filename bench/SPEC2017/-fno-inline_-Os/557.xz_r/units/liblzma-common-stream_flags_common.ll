; ModuleID = 'liblzma/common/stream_flags_common.c'
source_filename = "liblzma/common/stream_flags_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = dso_local local_unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1
@lzma_footer_magic = dso_local local_unnamed_addr constant [2 x i8] c"YZ", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @lzma_stream_flags_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !35
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %33, !prof !41

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8, !tbaa !35
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33, !prof !41

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = icmp ugt i32 %10, 15
  br i1 %11, label %33, label %12, !prof !43

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lzma_stream_flags, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %15 = icmp ugt i32 %14, 15
  br i1 %15, label %33, label %16, !prof !43

16:                                               ; preds = %12
  %17 = icmp eq i32 %10, %14
  br i1 %17, label %18, label %33, !prof !41

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !44
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %32, label %22, !prof !41

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.lzma_stream_flags, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !44
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i1 @is_backward_size_valid(ptr noundef nonnull %0) #1
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = tail call fastcc zeroext i1 @is_backward_size_valid(ptr noundef nonnull %1) #1
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = icmp eq i64 %20, %24
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %22, %18
  br label %33

33:                                               ; preds = %30, %26, %28, %16, %8, %12, %2, %5, %32
  %34 = phi i32 [ 0, %32 ], [ 8, %5 ], [ 8, %2 ], [ 11, %12 ], [ 11, %8 ], [ 9, %16 ], [ 11, %28 ], [ 11, %26 ], [ 9, %30 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_backward_size_valid(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !45 !PGOFuncName !46 {
  %2 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !44
  %4 = add i64 %3, -4
  %5 = icmp ult i64 %4, 17179869181
  %6 = and i64 %3, 3
  %7 = icmp eq i64 %6, 0
  %8 = and i1 %5, %7
  ret i1 %8
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize }

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
!34 = !{!"function_entry_count", i64 2}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !38, i64 36, !38, i64 37, !38, i64 38, !38, i64 39, !38, i64 40, !38, i64 41, !38, i64 42, !38, i64 43, !37, i64 44, !37, i64 48}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"branch_weights", i32 3, i32 1}
!42 = !{!36, !37, i64 16}
!43 = !{!"branch_weights", i32 1, i32 3}
!44 = !{!36, !40, i64 8}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!"stream_flags_common.c:is_backward_size_valid"}
