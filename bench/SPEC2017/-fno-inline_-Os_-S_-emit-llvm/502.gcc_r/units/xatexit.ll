; ModuleID = 'xatexit.c'
source_filename = "xatexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xatexit = type { ptr, i32, [32 x ptr] }

@_xexit_cleanup = external local_unnamed_addr global ptr, align 8
@xatexit_head = internal unnamed_addr global ptr @xatexit_first, align 8
@xatexit_first = internal global %struct.xatexit zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local noundef i32 @xatexit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @_xexit_cleanup, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr @xatexit_cleanup, ptr @_xexit_cleanup, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @xatexit_head, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.xatexit, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !9
  %9 = icmp sgt i32 %8, 31
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = tail call dereferenceable_or_null(272) ptr @malloc(i64 noundef 272) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.xatexit, ptr %11, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !9
  store ptr %6, ptr %11, align 8, !tbaa !12
  store ptr %11, ptr @xatexit_head, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ 0, %13 ], [ %8, %5 ]
  %17 = phi ptr [ %11, %13 ], [ %6, %5 ]
  %18 = getelementptr inbounds %struct.xatexit, ptr %17, i64 0, i32 1
  %19 = add nsw i32 %16, 1
  store i32 %19, ptr %18, align 8, !tbaa !9
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds %struct.xatexit, ptr %17, i64 0, i32 2, i64 %20
  store ptr %0, ptr %21, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %10, %15
  %23 = phi i32 [ 0, %15 ], [ -1, %10 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @xatexit_cleanup() #1 {
  %1 = load ptr, ptr @xatexit_head, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %6

3:                                                ; preds = %13, %6
  %4 = load ptr, ptr %7, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !llvm.loop !13

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.xatexit, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !9
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %3

11:                                               ; preds = %6
  %12 = zext nneg i32 %9 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ %12, %11 ], [ %15, %13 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds %struct.xatexit, ptr %7, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  tail call void %17() #4
  %18 = icmp ugt i64 %14, 1
  br i1 %18, label %13, label %3, !llvm.loop !15

19:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0) }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"xatexit", !6, i64 0, !11, i64 8, !7, i64 16}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
