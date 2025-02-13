; ModuleID = 'liblzma/common/filter_flags_encoder.c'
source_filename = "liblzma/common/filter_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_filter_flags_size(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8, !tbaa !35
  %4 = icmp ugt i64 %3, 4611686018427387903
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @lzma_properties_size(ptr noundef %0, ptr noundef nonnull %1) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i64, ptr %1, align 8, !tbaa !35
  %10 = tail call i32 @lzma_vli_size(i64 noundef %9) #3
  %11 = load i32, ptr %0, align 4, !tbaa !41
  %12 = zext i32 %11 to i64
  %13 = tail call i32 @lzma_vli_size(i64 noundef %12) #3
  %14 = add i32 %13, %10
  %15 = load i32, ptr %0, align 4, !tbaa !41
  %16 = add i32 %14, %15
  store i32 %16, ptr %0, align 4, !tbaa !41
  br label %17

17:                                               ; preds = %5, %2, %8
  %18 = phi i32 [ %6, %5 ], [ 0, %8 ], [ 11, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_properties_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_filter_flags_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load i64, ptr %0, align 8, !tbaa !35
  %7 = icmp ugt i64 %6, 4611686018427387903
  br i1 %7, label %36, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @lzma_vli_encode(i64 noundef %6, ptr noundef null, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  %12 = call i32 @lzma_properties_size(ptr noundef nonnull %5, ptr noundef nonnull %0) #3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i32, ptr %5, align 4, !tbaa !41
  %16 = zext i32 %15 to i64
  %17 = call i32 @lzma_vli_encode(i64 noundef %16, ptr noundef null, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i64, ptr %2, align 8, !tbaa !43
  %21 = sub i64 %3, %20
  %22 = load i32, ptr %5, align 4, !tbaa !41
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %1, i64 %20
  %27 = call i32 @lzma_properties_encode(ptr noundef nonnull %0, ptr noundef %26) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4, !tbaa !41
  %31 = zext i32 %30 to i64
  %32 = load i64, ptr %2, align 8, !tbaa !43
  %33 = add i64 %32, %31
  store i64 %33, ptr %2, align 8, !tbaa !43
  br label %34

34:                                               ; preds = %19, %25, %14, %11, %29
  %35 = phi i32 [ 0, %29 ], [ %27, %25 ], [ %17, %14 ], [ %12, %11 ], [ 11, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  br label %36

36:                                               ; preds = %8, %4, %34
  %37 = phi i32 [ %9, %8 ], [ %35, %34 ], [ 11, %4 ]
  ret i32 %37
}

; Function Attrs: optsize
declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_properties_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }

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
!36 = !{!"", !37, i64 0, !40, i64 8}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !38, i64 0}
!43 = !{!37, !37, i64 0}
