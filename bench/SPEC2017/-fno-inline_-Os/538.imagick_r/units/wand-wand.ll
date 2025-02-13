; ModuleID = 'wand/wand.c'
source_filename = "wand/wand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@AcquireWandId.id = internal unnamed_addr global i64 0, align 8
@wand_semaphore = internal global ptr null, align 8
@wand_ids = internal unnamed_addr global ptr null, align 8
@instantiate_wand = internal unnamed_addr global i1 false, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @AcquireWandId() local_unnamed_addr #0 {
  %1 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @wand_semaphore) #2
  %4 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #2
  %7 = load ptr, ptr @wand_ids, align 8, !tbaa !34
  %8 = icmp ne ptr %7, null
  %9 = load i1, ptr @instantiate_wand, align 4
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @NewSplayTree(ptr noundef null, ptr noundef null, ptr noundef null) #2
  store ptr %12, ptr @wand_ids, align 8, !tbaa !34
  store i1 true, ptr @instantiate_wand, align 4
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi ptr [ %12, %11 ], [ %7, %5 ]
  %15 = load i64, ptr @AcquireWandId.id, align 8, !tbaa !38
  %16 = add i64 %15, 1
  store i64 %16, ptr @AcquireWandId.id, align 8, !tbaa !38
  %17 = inttoptr i64 %16 to ptr
  %18 = tail call i32 @AddValueToSplayTree(ptr noundef %14, ptr noundef %17, ptr noundef %17) #2
  %19 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %19) #2
  %20 = load i64, ptr @AcquireWandId.id, align 8, !tbaa !38
  ret i64 %20
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DestroyWandIds() local_unnamed_addr #0 {
  %1 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @wand_semaphore) #2
  %4 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #2
  %7 = load ptr, ptr @wand_ids, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroySplayTree(ptr noundef nonnull %7) #2
  store ptr %10, ptr @wand_ids, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %9, %5
  store i1 false, ptr @instantiate_wand, align 4
  %12 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #2
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @wand_semaphore) #2
  ret void
}

; Function Attrs: optsize
declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RelinquishWandId(i64 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %2) #2
  %3 = load ptr, ptr @wand_ids, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = inttoptr i64 %0 to ptr
  %7 = tail call i32 @DeleteNodeByValueFromSplayTree(ptr noundef nonnull %3, ptr noundef %6) #2
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %9) #2
  ret void
}

; Function Attrs: optsize
declare i32 @DeleteNodeByValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !36, i64 0}
