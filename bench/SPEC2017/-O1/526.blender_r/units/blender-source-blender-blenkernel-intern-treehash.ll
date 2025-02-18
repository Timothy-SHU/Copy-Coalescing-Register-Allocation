; ModuleID = 'blender/source/blender/blenkernel/intern/treehash.c'
source_filename = "blender/source/blender/blenkernel/intern/treehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BLI_mempool_iter = type { ptr, ptr, i32 }
%struct.TseGroup = type { ptr, i32, i32 }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [9 x i8] c"treehash\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"TseGroup\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"TseGroupElems\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.tse_group_add = private unnamed_addr constant [14 x i8] c"tse_group_add\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_treehash_create_from_treestore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BLI_mempool_iter, align 8
  %3 = tail call i32 @BLI_mempool_count(ptr noundef %0) #4
  %4 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @tse_hash, ptr noundef nonnull @tse_cmp, ptr noundef nonnull @.str, i32 noundef %3) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #4
  call void @BLI_mempool_iternew(ptr noundef %0, ptr noundef nonnull %2) #4
  %5 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %1, %32
  %8 = phi ptr [ %38, %32 ], [ %5, %1 ]
  %9 = call ptr @BLI_ghash_lookup(ptr noundef %4, ptr noundef nonnull %8) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %13 = call ptr %12(i64 noundef 16, ptr noundef nonnull @.str.1) #4
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %15 = call ptr %14(i64 noundef 8, ptr noundef nonnull @.str.2) #4
  store ptr %15, ptr %13, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.TseGroup, ptr %13, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.TseGroup, ptr %13, i64 0, i32 2
  store i32 1, ptr %17, align 4, !tbaa !42
  call void @BLI_ghash_insert(ptr noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %13) #4
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi ptr [ %9, %7 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.TseGroup, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.TseGroup, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = shl nsw i32 %23, 1
  store i32 %26, ptr %22, align 4, !tbaa !42
  %27 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %28 = load ptr, ptr %19, align 8, !tbaa !38
  %29 = sext i32 %26 to i64
  %30 = shl nsw i64 %29, 3
  %31 = call ptr %27(ptr noundef %28, i64 noundef %30, ptr noundef nonnull @__func__.tse_group_add) #4
  store ptr %31, ptr %19, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %18, %25
  %33 = load ptr, ptr %19, align 8, !tbaa !38
  %34 = load i32, ptr %20, align 8, !tbaa !41
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  store ptr %8, ptr %36, align 8, !tbaa !34
  %37 = add nsw i32 %34, 1
  store i32 %37, ptr %20, align 8, !tbaa !41
  %38 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7, !llvm.loop !43

40:                                               ; preds = %32, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #4
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_ghash_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @tse_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.TreeStoreElem, ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !49
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call i32 @BLI_ghashutil_ptrhash(ptr noundef %6) #4
  %8 = zext i16 %4 to i32
  %9 = shl nuw i32 %8, 16
  %10 = zext i16 %2 to i32
  %11 = or disjoint i32 %9, %10
  %12 = xor i32 %11, %7
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @tse_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i16, ptr %0, align 8, !tbaa !46
  %4 = load i16, ptr %1, align 8, !tbaa !46
  %5 = icmp eq i16 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !49
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !49
  %11 = icmp eq i16 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = icmp ne ptr %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 1, %6 ], [ 1, %2 ], [ %18, %12 ]
  ret i8 %20
}

declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_treehash_rebuild_from_treestore(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BLI_mempool_iter, align 8
  %4 = tail call i32 @BLI_mempool_count(ptr noundef %1) #4
  tail call void @BLI_ghash_clear_ex(ptr noundef %0, ptr noundef null, ptr noundef nonnull @free_treehash_group, i32 noundef %4) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #4
  call void @BLI_mempool_iternew(ptr noundef %1, ptr noundef nonnull %3) #4
  %5 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %2, %32
  %8 = phi ptr [ %38, %32 ], [ %5, %2 ]
  %9 = call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef nonnull %8) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %13 = call ptr %12(i64 noundef 16, ptr noundef nonnull @.str.1) #4
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %15 = call ptr %14(i64 noundef 8, ptr noundef nonnull @.str.2) #4
  store ptr %15, ptr %13, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.TseGroup, ptr %13, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.TseGroup, ptr %13, i64 0, i32 2
  store i32 1, ptr %17, align 4, !tbaa !42
  call void @BLI_ghash_insert(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %13) #4
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi ptr [ %9, %7 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.TseGroup, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.TseGroup, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = shl nsw i32 %23, 1
  store i32 %26, ptr %22, align 4, !tbaa !42
  %27 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %28 = load ptr, ptr %19, align 8, !tbaa !38
  %29 = sext i32 %26 to i64
  %30 = shl nsw i64 %29, 3
  %31 = call ptr %27(ptr noundef %28, i64 noundef %30, ptr noundef nonnull @__func__.tse_group_add) #4
  store ptr %31, ptr %19, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %18, %25
  %33 = load ptr, ptr %19, align 8, !tbaa !38
  %34 = load i32, ptr %20, align 8, !tbaa !41
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  store ptr %8, ptr %36, align 8, !tbaa !34
  %37 = add nsw i32 %34, 1
  store i32 %37, ptr %20, align 8, !tbaa !41
  %38 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7, !llvm.loop !43

40:                                               ; preds = %32, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #4
  ret ptr %0
}

declare void @BLI_ghash_clear_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @free_treehash_group(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void %2(ptr noundef %3) #4
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %4(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_treehash_add_element(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %1) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @.str.1) #4
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 8, ptr noundef nonnull @.str.2) #4
  store ptr %9, ptr %7, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.TseGroup, ptr %7, i64 0, i32 1
  store i32 0, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.TseGroup, ptr %7, i64 0, i32 2
  store i32 1, ptr %11, align 4, !tbaa !42
  tail call void @BLI_ghash_insert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #4
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi ptr [ %3, %2 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.TseGroup, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.TseGroup, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !42
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = shl nsw i32 %17, 1
  store i32 %20, ptr %16, align 4, !tbaa !42
  %21 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %22 = load ptr, ptr %13, align 8, !tbaa !38
  %23 = sext i32 %20 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %21(ptr noundef %22, i64 noundef %24, ptr noundef nonnull @__func__.tse_group_add) #4
  store ptr %25, ptr %13, align 8, !tbaa !38
  br label %26

26:                                               ; preds = %12, %19
  %27 = load ptr, ptr %13, align 8, !tbaa !38
  %28 = load i32, ptr %14, align 8, !tbaa !41
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !34
  %31 = add nsw i32 %28, 1
  store i32 %31, ptr %14, align 8, !tbaa !41
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_treehash_lookup_unused(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.TreeStoreElem, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4
  store i16 %1, ptr %5, align 8, !tbaa !46
  %6 = icmp eq i16 %1, 0
  %7 = select i1 %6, i16 0, i16 %2
  %8 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !49
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !50
  %10 = call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.TseGroup, ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load ptr, ptr %10, align 8, !tbaa !38
  %18 = zext nneg i32 %14 to i64
  %19 = zext nneg i32 %14 to i64
  %20 = load ptr, ptr %17, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %16, %29
  %25 = phi ptr [ %31, %29 ], [ %20, %16 ]
  %26 = phi i64 [ %27, %29 ], [ 0, %16 ]
  %27 = add nuw nsw i64 %26, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %35, label %29, !llvm.loop !52

29:                                               ; preds = %24
  %30 = getelementptr inbounds ptr, ptr %17, i64 %27
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.TreeStoreElem, ptr %31, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !51
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %24, !llvm.loop !52

35:                                               ; preds = %29, %24
  %36 = phi ptr [ %31, %29 ], [ %25, %24 ]
  %37 = icmp ult i64 %27, %18
  br label %38

38:                                               ; preds = %35, %16, %12
  %39 = phi i1 [ %15, %12 ], [ %15, %16 ], [ %37, %35 ]
  %40 = phi ptr [ undef, %12 ], [ %20, %16 ], [ %36, %35 ]
  br i1 %39, label %42, label %41

41:                                               ; preds = %38, %4
  br label %42

42:                                               ; preds = %38, %41
  %43 = phi ptr [ null, %41 ], [ %40, %38 ]
  ret ptr %43
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_treehash_lookup_any(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.TreeStoreElem, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4
  store i16 %1, ptr %5, align 8, !tbaa !46
  %6 = icmp eq i16 %1, 0
  %7 = select i1 %6, i16 0, i16 %2
  %8 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !49
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !50
  %10 = call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %10, align 8, !tbaa !38
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %14, %12 ], [ null, %4 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_treehash_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_ghash_free(ptr noundef %0, ptr noundef null, ptr noundef nonnull @free_treehash_group) #4
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_ghashutil_ptrhash(ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"TseGroup", !35, i64 0, !40, i64 8, !40, i64 12}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 8}
!42 = !{!39, !40, i64 12}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !48, i64 0}
!47 = !{!"TreeStoreElem", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !35, i64 8}
!48 = !{!"short", !36, i64 0}
!49 = !{!47, !48, i64 2}
!50 = !{!47, !35, i64 8}
!51 = !{!47, !48, i64 6}
!52 = distinct !{!52, !44, !45}
