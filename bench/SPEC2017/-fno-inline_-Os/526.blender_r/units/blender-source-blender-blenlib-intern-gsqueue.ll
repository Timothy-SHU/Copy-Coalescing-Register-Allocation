; ModuleID = 'blender/source/blender/blenlib/intern/gsqueue.c'
source_filename = "blender/source/blender/blenlib/intern/gsqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSQueue = type { ptr, ptr, i64 }
%struct._GSQueueElem = type { ptr, [0 x i8] }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"gqueue_new\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gqueue_push\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_gsqueue_new(i64 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str) #7
  %4 = getelementptr inbounds %struct._GSQueue, ptr %3, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i64 %0, ptr %4, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_gsqueue_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BLI_gsqueue_size(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %7, %2 ]
  %5 = load ptr, ptr %3, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  %7 = add nuw nsw i32 %4, 1
  br i1 %6, label %8, label %2, !llvm.loop !42

8:                                                ; preds = %2
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_gsqueue_peek(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct._GSQueueElem, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %4, i64 %6, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_gsqueue_pop(ptr nocapture noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ %9, %8 ], [ null, %7 ]
  store ptr %11, ptr %0, align 8, !tbaa !41
  %12 = icmp eq ptr %1, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct._GSQueueElem, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 8 %14, i64 %16, i1 false)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_gsqueue_push(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %0) #8, !range !45
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !38
  br label %15

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct._GSQueueElem, ptr %9, i64 0, i32 1
  %11 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !38
  %13 = tail call i32 @bcmp(ptr %1, ptr nonnull %10, i64 %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %7, %5 ], [ %12, %8 ]
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 2
  %19 = add i64 %16, 8
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.1) #7
  %21 = getelementptr inbounds %struct._GSQueueElem, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %18, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %21, ptr align 1 %1, i64 %22, i1 false)
  store ptr null, ptr %20, align 8, !tbaa !34
  %23 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef nonnull %0) #8, !range !45
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  store ptr %20, ptr %0, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 1
  br label %30

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  store ptr %20, ptr %29, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi ptr [ %26, %25 ], [ %28, %27 ]
  store ptr %20, ptr %31, align 8, !tbaa !44
  br label %32

32:                                               ; preds = %30, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_gsqueue_pushback(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !38
  %6 = add i64 %5, 8
  %7 = tail call ptr %3(i64 noundef %6, ptr noundef nonnull @.str.1) #7
  %8 = getelementptr inbounds %struct._GSQueueElem, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %4, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr align 1 %1, i64 %9, i1 false)
  %10 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %10, ptr %7, align 8, !tbaa !34
  %11 = tail call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef nonnull %0) #8, !range !45
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._GSQueue, ptr %0, i64 0, i32 1
  store ptr %7, ptr %14, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %2, %13
  store ptr %7, ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_gsqueue_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1, %4
  tail call void @BLI_gsqueue_pop(ptr noundef nonnull %0, ptr noundef null) #8
  %5 = load ptr, ptr %0, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %4, !llvm.loop !46

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 16}
!39 = !{!"_GSQueue", !35, i64 0, !35, i64 8, !40, i64 16}
!40 = !{!"long", !36, i64 0}
!41 = !{!39, !35, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!39, !35, i64 8}
!45 = !{i8 0, i8 2}
!46 = distinct !{!46, !43}
