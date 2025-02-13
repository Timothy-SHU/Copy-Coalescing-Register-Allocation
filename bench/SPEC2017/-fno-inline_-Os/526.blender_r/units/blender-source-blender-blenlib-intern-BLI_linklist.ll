; ModuleID = 'blender/source/blender/blenlib/intern/BLI_linklist.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_linklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LinkNode = type { ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"nlink\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_linklist_length(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  %5 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %6 = add nuw nsw i32 %4, 1
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !llvm.loop !39

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_linklist_index(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %10
  %5 = phi i32 [ %12, %10 ], [ 0, %2 ]
  %6 = phi ptr [ %11, %10 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.LinkNode, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 8, !tbaa !34
  %12 = add nuw nsw i32 %5, 1
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %4, !llvm.loop !42

14:                                               ; preds = %4, %10, %2
  %15 = phi i32 [ -1, %2 ], [ -1, %10 ], [ %5, %4 ]
  ret i32 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_linklist_find(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp eq ptr %9, null
  %12 = icmp eq i32 %10, %1
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %6, !llvm.loop !43

14:                                               ; preds = %6, %2
  %15 = phi ptr [ %0, %2 ], [ %9, %6 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_linklist_reverse(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ null, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  store ptr %5, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !45

9:                                                ; preds = %4, %1
  %10 = phi ptr [ null, %1 ], [ %6, %4 ]
  store ptr %10, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_linklist_prepend_nlink(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.LinkNode, ptr %2, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = load ptr, ptr %0, align 8, !tbaa !44
  store ptr %5, ptr %2, align 8, !tbaa !34
  store ptr %2, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_prepend(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str) #5
  tail call void @BLI_linklist_prepend_nlink(ptr noundef %0, ptr noundef %1, ptr noundef %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_prepend_arena(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @BLI_memarena_alloc(ptr noundef %2, i64 noundef 16) #5
  tail call void @BLI_linklist_prepend_nlink(ptr noundef %0, ptr noundef %1, ptr noundef %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_prepend_pool(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @BLI_mempool_alloc(ptr noundef %2) #5
  tail call void @BLI_linklist_prepend_nlink(ptr noundef %0, ptr noundef %1, ptr noundef %4) #6
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_linklist_append_nlink(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.LinkNode, ptr %2, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !41
  store ptr null, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %4, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !46

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %0, %3 ], [ %8, %7 ]
  store ptr %2, ptr %12, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_append(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str) #5
  tail call void @BLI_linklist_append_nlink(ptr noundef %0, ptr noundef %1, ptr noundef %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_append_arena(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @BLI_memarena_alloc(ptr noundef %2, i64 noundef 16) #5
  tail call void @BLI_linklist_append_nlink(ptr noundef %0, ptr noundef %1, ptr noundef %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_append_pool(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = tail call ptr @BLI_mempool_alloc(ptr noundef %2) #5
  tail call void @BLI_linklist_append_nlink(ptr noundef %0, ptr noundef %1, ptr noundef %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_linklist_pop(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.LinkNode, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %6(ptr noundef nonnull %2) #5
  store ptr %5, ptr %0, align 8, !tbaa !44
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_linklist_pop_pool(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.LinkNode, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @BLI_mempool_free(ptr noundef %1, ptr noundef nonnull %3) #5
  store ptr %6, ptr %0, align 8, !tbaa !44
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_insert_after(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str) #5
  %5 = load ptr, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.LinkNode, ptr %4, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !41
  %7 = icmp eq ptr %5, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = phi ptr [ %5, %8 ], [ %0, %2 ]
  store ptr %11, ptr %4, align 8, !tbaa !34
  store ptr %4, ptr %12, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_free(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br label %6

6:                                                ; preds = %4, %12
  %7 = phi ptr [ %0, %4 ], [ %8, %12 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br i1 %5, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.LinkNode, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  tail call void %1(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %9, %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %13(ptr noundef nonnull %7) #5
  %14 = icmp eq ptr %8, null
  br i1 %14, label %15, label %6, !llvm.loop !47

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_free_pool(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %5, %13
  %8 = phi ptr [ %0, %5 ], [ %9, %13 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  br i1 %6, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.LinkNode, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  tail call void %1(ptr noundef %12) #5
  br label %13

13:                                               ; preds = %10, %7
  tail call void @BLI_mempool_free(ptr noundef %2, ptr noundef nonnull %8) #5
  %14 = icmp eq ptr %9, null
  br i1 %14, label %15, label %7, !llvm.loop !48

15:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_freeN(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.LinkNode, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  tail call void %6(ptr noundef %8) #5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %9(ptr noundef nonnull %4) #5
  %10 = icmp eq ptr %5, null
  br i1 %10, label %11, label %3, !llvm.loop !49

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_linklist_apply(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %9, %5 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.LinkNode, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  tail call void %1(ptr noundef %8, ptr noundef %2) #5
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !50

11:                                               ; preds = %5, %3
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!35, !36, i64 8}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !40}
!44 = !{!36, !36, i64 0}
!45 = distinct !{!45, !40}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40}
