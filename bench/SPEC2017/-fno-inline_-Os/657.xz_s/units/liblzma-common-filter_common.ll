; ModuleID = 'liblzma/common/filter_common.c'
source_filename = "liblzma/common/filter_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i64, i64, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_filter_coder = type { i64, ptr, ptr }

@features = internal unnamed_addr constant [10 x %struct.anon] [%struct.anon { i64 4611686018427387905, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 33, i64 112, i8 0, i8 1, i8 1 }, %struct.anon { i64 4, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 5, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 6, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 7, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 8, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 9, i64 4, i8 1, i8 0, i8 0 }, %struct.anon { i64 3, i64 40, i8 1, i8 0, i8 0 }, %struct.anon { i64 -1, i64 0, i8 0, i8 0, i8 0 }], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_filters_copy(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %63, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8, !tbaa !35
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %47, label %10

10:                                               ; preds = %7, %42
  %11 = phi i64 [ %45, %42 ], [ %8, %7 ]
  %12 = phi ptr [ %44, %42 ], [ %0, %7 ]
  %13 = phi i64 [ %43, %42 ], [ 0, %7 ]
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %54, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %13
  store i64 %11, ptr %16, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %13, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i64, ptr %12, align 8, !tbaa !35
  %22 = icmp eq i64 %21, 4611686018427387905
  br i1 %22, label %33, label %25

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %13, i32 1
  store ptr null, ptr %24, align 8, !tbaa !41
  br label %42

25:                                               ; preds = %20, %28
  %26 = phi i64 [ %29, %28 ], [ 0, %20 ]
  %27 = icmp eq i64 %26, 9
  br i1 %27, label %51, label %28

28:                                               ; preds = %25
  %29 = add nuw nsw i64 %26, 1
  %30 = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !42
  %32 = icmp eq i64 %21, %31
  br i1 %32, label %33, label %25, !llvm.loop !45

33:                                               ; preds = %28, %20
  %34 = phi i64 [ 0, %20 ], [ %29, %28 ]
  %35 = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %34, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !47
  %37 = tail call ptr @lzma_alloc(i64 noundef %36, ptr noundef %2) #5
  %38 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %13, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !41
  %39 = icmp eq ptr %37, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %17, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %37, ptr align 1 %41, i64 %36, i1 false)
  br label %42

42:                                               ; preds = %40, %23
  %43 = add nuw nsw i64 %13, 1
  %44 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !35
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %47, label %10, !llvm.loop !48

47:                                               ; preds = %42, %7
  %48 = phi i64 [ 0, %7 ], [ %43, %42 ]
  %49 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %48
  store i64 -1, ptr %49, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %48, i32 1
  store ptr null, ptr %50, align 8, !tbaa !41
  br label %63

51:                                               ; preds = %33, %25
  %52 = phi i32 [ 8, %25 ], [ 5, %33 ]
  %53 = icmp eq i64 %13, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %10, %51
  %55 = phi i32 [ %52, %51 ], [ 8, %10 ]
  %56 = phi i64 [ %13, %51 ], [ 4, %10 ]
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i64 [ %59, %57 ], [ %56, %54 ]
  %59 = add nsw i64 %58, -1
  %60 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %59, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !41
  tail call void @lzma_free(ptr noundef %61, ptr noundef %2) #5
  store ptr null, ptr %60, align 8, !tbaa !41
  %62 = icmp eq i64 %59, 0
  br i1 %62, label %63, label %57, !llvm.loop !49

63:                                               ; preds = %57, %51, %47, %3
  %64 = phi i32 [ 11, %3 ], [ 0, %47 ], [ %52, %51 ], [ %55, %57 ]
  ret i32 %64
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca [5 x %struct.lzma_filter_info_s], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %8 = call fastcc i32 @validate_chain(ptr noundef %2, ptr noundef nonnull %6) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #6
  %11 = load i64, ptr %6, align 8, !tbaa !50
  %12 = icmp eq i64 %11, 0
  br i1 %4, label %14, label %13

13:                                               ; preds = %10
  br i1 %12, label %55, label %36

14:                                               ; preds = %10
  br i1 %12, label %55, label %15

15:                                               ; preds = %14, %27
  %16 = phi i64 [ %34, %27 ], [ 0, %14 ]
  %17 = xor i64 %16, -1
  %18 = add i64 %11, %17
  %19 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %16
  %20 = load i64, ptr %19, align 8, !tbaa !35
  %21 = tail call ptr %3(i64 noundef %20) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.lzma_filter_coder, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = icmp eq ptr %25, null
  br i1 %26, label %62, label %27

27:                                               ; preds = %23
  %28 = load i64, ptr %19, align 8, !tbaa !35
  %29 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %18
  store i64 %28, ptr %29, align 8, !tbaa !53
  %30 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %18, i32 1
  store ptr %25, ptr %30, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %16, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %18, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !56
  %34 = add nuw i64 %16, 1
  %35 = icmp eq i64 %34, %11
  br i1 %35, label %55, label %15, !llvm.loop !57

36:                                               ; preds = %13, %46
  %37 = phi i64 [ %53, %46 ], [ 0, %13 ]
  %38 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !35
  %40 = tail call ptr %3(i64 noundef %39) #5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.lzma_filter_coder, ptr %40, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !51
  %45 = icmp eq ptr %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = load i64, ptr %38, align 8, !tbaa !35
  %48 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %37
  store i64 %47, ptr %48, align 8, !tbaa !53
  %49 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %37, i32 1
  store ptr %44, ptr %49, align 8, !tbaa !55
  %50 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %37, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !41
  %52 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %37, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !56
  %53 = add nuw i64 %37, 1
  %54 = icmp eq i64 %53, %11
  br i1 %54, label %55, label %36, !llvm.loop !58

55:                                               ; preds = %46, %27, %13, %14
  %56 = phi i64 [ 0, %13 ], [ 0, %14 ], [ %11, %27 ], [ %11, %46 ]
  %57 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %56
  store i64 -1, ptr %57, align 8, !tbaa !53
  %58 = getelementptr inbounds [5 x %struct.lzma_filter_info_s], ptr %7, i64 0, i64 %56, i32 1
  store ptr null, ptr %58, align 8, !tbaa !55
  %59 = call i32 @lzma_next_filter_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  br label %62

62:                                               ; preds = %42, %36, %23, %15, %55, %61
  %63 = phi i32 [ %59, %61 ], [ 0, %55 ], [ 8, %15 ], [ 8, %23 ], [ 8, %36 ], [ 8, %42 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #6
  br label %64

64:                                               ; preds = %5, %62
  %65 = phi i32 [ %63, %62 ], [ %8, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  ret i32 %65
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @validate_chain(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 !PGOFuncName !59 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8, !tbaa !35
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %41, label %7

7:                                                ; preds = %4, %24
  %8 = phi i64 [ %33, %24 ], [ %5, %4 ]
  %9 = phi i64 [ %30, %24 ], [ 0, %4 ]
  %10 = phi i8 [ %27, %24 ], [ 1, %4 ]
  %11 = phi i64 [ %31, %24 ], [ 0, %4 ]
  %12 = icmp eq i64 %8, 4611686018427387905
  br i1 %12, label %21, label %13

13:                                               ; preds = %7, %16
  %14 = phi i64 [ %17, %16 ], [ 0, %7 ]
  %15 = icmp eq i64 %14, 9
  br i1 %15, label %41, label %16

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %14, 1
  %18 = getelementptr inbounds [10 x %struct.anon], ptr @features, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !42
  %20 = icmp eq i64 %8, %19
  br i1 %20, label %21, label %13, !llvm.loop !60

21:                                               ; preds = %16, %7
  %22 = phi i64 [ 0, %7 ], [ %17, %16 ]
  %23 = icmp eq i8 %10, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = add i64 %22, -2
  %26 = icmp ult i64 %25, 7
  %27 = zext i1 %26 to i8
  %28 = icmp ult i64 %22, 2
  %29 = zext i1 %28 to i64
  %30 = add i64 %9, %29
  %31 = add i64 %11, 1
  %32 = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !35
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %7, !llvm.loop !61

35:                                               ; preds = %24
  %36 = icmp ult i64 %31, 5
  %37 = icmp ult i64 %30, 4
  %38 = and i1 %36, %28
  %39 = select i1 %38, i1 %37, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i64 %31, ptr %1, align 8, !tbaa !50
  br label %41

41:                                               ; preds = %21, %13, %40, %35, %2, %4
  %42 = phi i32 [ 11, %4 ], [ 11, %2 ], [ 0, %40 ], [ 8, %35 ], [ 8, %13 ], [ 8, %21 ]
  ret i32 %42
}

; Function Attrs: optsize
declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_raw_coder_memusage(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = call fastcc i32 @validate_chain(ptr noundef %1, ptr noundef nonnull %3) #7
  %5 = icmp eq i32 %4, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8, !tbaa !35
  br label %8

8:                                                ; preds = %6, %27
  %9 = phi i64 [ %31, %27 ], [ %7, %6 ]
  %10 = phi i64 [ %28, %27 ], [ 0, %6 ]
  %11 = phi i64 [ %29, %27 ], [ 0, %6 ]
  %12 = tail call ptr %0(i64 noundef %9) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.lzma_filter_coder, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = add i64 %10, 1024
  br label %27

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %11, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = tail call i64 %16(ptr noundef %22) #5
  %24 = icmp eq i64 %23, -1
  %25 = select i1 %24, i64 0, i64 %23
  %26 = add i64 %25, %10
  br i1 %24, label %35, label %27

27:                                               ; preds = %18, %20
  %28 = phi i64 [ %19, %18 ], [ %26, %20 ]
  %29 = add i64 %11, 1
  %30 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !35
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %8, !llvm.loop !63

33:                                               ; preds = %27
  %34 = add i64 %28, 32768
  br label %35

35:                                               ; preds = %8, %20, %2, %33
  %36 = phi i64 [ -1, %2 ], [ %34, %33 ], [ -1, %20 ], [ -1, %8 ]
  ret i64 %36
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
!41 = !{!36, !40, i64 8}
!42 = !{!43, !37, i64 0}
!43 = !{!"", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 17, !44, i64 18}
!44 = !{!"_Bool", !38, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!43, !37, i64 8}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
!50 = !{!37, !37, i64 0}
!51 = !{!52, !40, i64 8}
!52 = !{!"", !37, i64 0, !40, i64 8, !40, i64 16}
!53 = !{!54, !37, i64 0}
!54 = !{!"lzma_filter_info_s", !37, i64 0, !40, i64 8, !40, i64 16}
!55 = !{!54, !40, i64 8}
!56 = !{!54, !40, i64 16}
!57 = distinct !{!57, !46}
!58 = distinct !{!58, !46}
!59 = !{!"filter_common.c:validate_chain"}
!60 = distinct !{!60, !46}
!61 = distinct !{!61, !46}
!62 = !{!52, !40, i64 16}
!63 = distinct !{!63, !46}
