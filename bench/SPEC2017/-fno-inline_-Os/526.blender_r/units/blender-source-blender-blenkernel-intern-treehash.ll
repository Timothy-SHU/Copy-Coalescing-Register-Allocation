; ModuleID = 'blender/source/blender/blenkernel/intern/treehash.c'
source_filename = "blender/source/blender/blenkernel/intern/treehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.BLI_mempool_iter = type { ptr, ptr, i32 }
%struct.TseGroup = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"treehash\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"TseGroup\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"TseGroupElems\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.tse_group_add = private unnamed_addr constant [14 x i8] c"tse_group_add\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_treehash_create_from_treestore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_mempool_count(ptr noundef %0) #4
  %3 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @tse_hash, ptr noundef nonnull @tse_cmp, ptr noundef nonnull @.str, i32 noundef %2) #4
  tail call fastcc void @fill_treehash(ptr noundef %3, ptr noundef %0) #5
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_ghash_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tse_hash(ptr nocapture noundef readonly %0) #0 !PGOFuncName !34 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds %struct.TreeStoreElem, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = tail call i32 @BLI_ghashutil_ptrhash(ptr noundef %4) #4
  %6 = xor i32 %5, %2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @tse_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !41 {
  %3 = load i16, ptr %0, align 8, !tbaa !42
  %4 = load i16, ptr %1, align 8, !tbaa !42
  %5 = icmp eq i16 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !43
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !43
  %11 = icmp eq i16 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp ne ptr %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 1, %6 ], [ 1, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: optsize
declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_treehash(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !44 {
  %3 = alloca %struct.BLI_mempool_iter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BLI_mempool_iternew(ptr noundef %1, ptr noundef nonnull %3) #4
  %4 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  call void @BKE_treehash_add_element(ptr noundef %0, ptr noundef nonnull %7) #5
  %8 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !45

10:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_treehash_rebuild_from_treestore(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_mempool_count(ptr noundef %1) #4
  tail call void @BLI_ghash_clear_ex(ptr noundef %0, ptr noundef null, ptr noundef nonnull @free_treehash_group, i32 noundef %3) #4
  tail call fastcc void @fill_treehash(ptr noundef %0, ptr noundef %1) #5
  ret ptr %0
}

; Function Attrs: optsize
declare void @BLI_ghash_clear_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_treehash_group(ptr noundef %0) #0 !PGOFuncName !47 {
  tail call fastcc void @tse_group_free(ptr noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_treehash_add_element(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef %1) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @tse_group_create() #5
  tail call void @BLI_ghash_insert(ptr noundef %0, ptr noundef %1, ptr noundef %6) #4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  tail call fastcc void @tse_group_add(ptr noundef %8, ptr noundef %1) #5
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tse_group_create() unnamed_addr #0 !PGOFuncName !48 {
  %1 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.1) #4
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %4 = tail call ptr %3(i64 noundef 8, ptr noundef nonnull @.str.2) #4
  store ptr %4, ptr %2, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.TseGroup, ptr %2, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.TseGroup, ptr %2, i64 0, i32 2
  store i32 1, ptr %6, align 4, !tbaa !54
  ret ptr %2
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tse_group_add(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !55 {
  %3 = getelementptr inbounds %struct.TseGroup, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.TseGroup, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !54
  %7 = icmp eq i32 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !50
  br i1 %7, label %9, label %16

9:                                                ; preds = %2
  %10 = shl nsw i32 %4, 1
  store i32 %10, ptr %5, align 4, !tbaa !54
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !49
  %12 = sext i32 %10 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %11(ptr noundef %8, i64 noundef %13, ptr noundef nonnull @__func__.tse_group_add) #4
  store ptr %14, ptr %0, align 8, !tbaa !50
  %15 = load i32, ptr %3, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i32 [ %15, %9 ], [ %4, %2 ]
  %18 = phi ptr [ %14, %9 ], [ %8, %2 ]
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  store ptr %1, ptr %20, align 8, !tbaa !49
  %21 = add nsw i32 %17, 1
  store i32 %21, ptr %3, align 8, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_treehash_lookup_unused(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @BKE_treehash_lookup_group(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.TseGroup, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !53
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !50
  %13 = zext nneg i32 %9 to i64
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, %13
  br i1 %16, label %24, label %17, !llvm.loop !56

17:                                               ; preds = %11, %14
  %18 = phi i64 [ 0, %11 ], [ %15, %14 ]
  %19 = getelementptr inbounds ptr, ptr %12, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !57
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %14

24:                                               ; preds = %14, %17, %7, %4
  %25 = phi ptr [ null, %4 ], [ null, %7 ], [ null, %14 ], [ %20, %17 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BKE_treehash_lookup_group(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !58 {
  %5 = alloca %struct.TreeStoreElem, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  store i16 %1, ptr %5, align 8, !tbaa !42
  %6 = icmp eq i16 %1, 0
  %7 = select i1 %6, i16 0, i16 %2
  %8 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !43
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !35
  %10 = call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_treehash_lookup_any(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @BKE_treehash_lookup_group(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, ptr noundef %3) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !50
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_treehash_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_ghash_free(ptr noundef %0, ptr noundef null, ptr noundef nonnull @free_treehash_group) #4
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_ghashutil_ptrhash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tse_group_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !59 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %3 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void %2(ptr noundef %3) #4
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %4(ptr noundef nonnull %0) #4
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"treehash.c:tse_hash"}
!35 = !{!36, !40, i64 8}
!36 = !{!"TreeStoreElem", !37, i64 0, !37, i64 2, !37, i64 4, !37, i64 6, !40, i64 8}
!37 = !{!"short", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"treehash.c:tse_cmp"}
!42 = !{!36, !37, i64 0}
!43 = !{!36, !37, i64 2}
!44 = !{!"treehash.c:fill_treehash"}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"treehash.c:free_treehash_group"}
!48 = !{!"treehash.c:tse_group_create"}
!49 = !{!40, !40, i64 0}
!50 = !{!51, !40, i64 0}
!51 = !{!"TseGroup", !40, i64 0, !52, i64 8, !52, i64 12}
!52 = !{!"int", !38, i64 0}
!53 = !{!51, !52, i64 8}
!54 = !{!51, !52, i64 12}
!55 = !{!"treehash.c:tse_group_add"}
!56 = distinct !{!56, !46}
!57 = !{!36, !37, i64 6}
!58 = !{!"treehash.c:BKE_treehash_lookup_group"}
!59 = !{!"treehash.c:tse_group_free"}
