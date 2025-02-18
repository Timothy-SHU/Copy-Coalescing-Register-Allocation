; ModuleID = 'wand/wand.c'
source_filename = "wand/wand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@AcquireWandId.id = internal unnamed_addr global i64 0, align 8
@wand_semaphore = internal global ptr null, align 8
@wand_ids = internal unnamed_addr global ptr null, align 8
@instantiate_wand = internal unnamed_addr global i1 false, align 4

; Function Attrs: nounwind uwtable
define dso_local i64 @AcquireWandId() local_unnamed_addr #0 {
  %1 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @wand_semaphore) #2
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #2
  %6 = load ptr, ptr @wand_ids, align 8, !tbaa !34
  %7 = icmp ne ptr %6, null
  %8 = load i1, ptr @instantiate_wand, align 4
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @NewSplayTree(ptr noundef null, ptr noundef null, ptr noundef null) #2
  store ptr %11, ptr @wand_ids, align 8, !tbaa !34
  store i1 true, ptr @instantiate_wand, align 4
  br label %12

12:                                               ; preds = %10, %4
  %13 = load i64, ptr @AcquireWandId.id, align 8, !tbaa !38
  %14 = add i64 %13, 1
  store i64 %14, ptr @AcquireWandId.id, align 8, !tbaa !38
  %15 = load ptr, ptr @wand_ids, align 8, !tbaa !34
  %16 = inttoptr i64 %14 to ptr
  %17 = tail call i32 @AddValueToSplayTree(ptr noundef %15, ptr noundef %16, ptr noundef %16) #2
  %18 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %18) #2
  %19 = load i64, ptr @AcquireWandId.id, align 8, !tbaa !38
  ret i64 %19
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DestroyWandIds() local_unnamed_addr #0 {
  %1 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @wand_semaphore) #2
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #2
  %6 = load ptr, ptr @wand_ids, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroySplayTree(ptr noundef nonnull %6) #2
  store ptr %9, ptr @wand_ids, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4
  store i1 false, ptr @instantiate_wand, align 4
  %11 = load ptr, ptr @wand_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #2
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @wand_semaphore) #2
  ret void
}

declare ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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

declare i32 @DeleteNodeByValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !36, i64 0}
