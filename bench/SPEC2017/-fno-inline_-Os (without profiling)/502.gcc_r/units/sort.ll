; ModuleID = 'sort.c'
source_filename = "sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sort_pointers(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #3
  %5 = icmp sgt i64 %0, 0
  br label %6

6:                                                ; preds = %3, %49
  %7 = phi ptr [ %1, %3 ], [ %8, %49 ]
  %8 = phi ptr [ %2, %3 ], [ %7, %49 ]
  %9 = phi i64 [ 0, %3 ], [ %50, %49 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %10 = getelementptr inbounds ptr, ptr %7, i64 %0
  %11 = getelementptr inbounds i8, ptr %10, i64 %9
  br i1 %5, label %12, label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %7, i64 %9
  br label %16

14:                                               ; preds = %16, %6
  %15 = load i32, ptr %4, align 16
  br label %28

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %23, %16 ], [ %13, %12 ]
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !8
  %23 = getelementptr inbounds i8, ptr %17, i64 8
  %24 = icmp ult ptr %23, %11
  br i1 %24, label %16, label %14, !llvm.loop !10

25:                                               ; preds = %28
  %26 = getelementptr inbounds ptr, ptr %10, i64 -1
  %27 = icmp ult ptr %26, %7
  br i1 %27, label %49, label %36

28:                                               ; preds = %14, %28
  %29 = phi i32 [ %15, %14 ], [ %33, %28 ]
  %30 = phi i64 [ 4, %14 ], [ %34, %28 ]
  %31 = getelementptr inbounds i8, ptr %4, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !8
  %33 = add i32 %32, %29
  store i32 %33, ptr %31, align 4, !tbaa !8
  %34 = add nuw nsw i64 %30, 4
  %35 = icmp ult i64 %30, 1020
  br i1 %35, label %28, label %25, !llvm.loop !12

36:                                               ; preds = %25, %36
  %37 = phi ptr [ %47, %36 ], [ %26, %25 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  %39 = getelementptr inbounds i8, ptr %37, i64 %9
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 4, !tbaa !8
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %8, i64 %45
  store ptr %38, ptr %46, align 8, !tbaa !13
  %47 = getelementptr inbounds ptr, ptr %37, i64 -1
  %48 = icmp ult ptr %47, %7
  br i1 %48, label %49, label %36, !llvm.loop !15

49:                                               ; preds = %36, %25
  %50 = add nuw nsw i64 %9, 1
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %52, label %6, !llvm.loop !16

52:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
