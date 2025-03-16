; ModuleID = 'src/bitstrng.c'
source_filename = "src/bitstrng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @bitstring(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = ashr i32 %2, 2
  %6 = and i32 %2, 3
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = add i32 %5, %2
  %10 = sub i32 %3, %9
  %11 = add i32 %10, %8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = add i32 %8, %3
  %15 = xor i32 %9, -1
  %16 = add i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 32, i64 %18, i1 false), !tbaa !5
  %19 = zext i32 %16 to i64
  %20 = getelementptr i8, ptr %0, i64 %19
  %21 = getelementptr i8, ptr %20, i64 1
  br label %22

22:                                               ; preds = %13, %4
  %23 = phi ptr [ %0, %4 ], [ %21, %13 ]
  %24 = icmp sgt i32 %2, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = zext nneg i32 %2 to i64
  br label %27

27:                                               ; preds = %25, %42
  %28 = phi i64 [ %26, %25 ], [ %30, %42 ]
  %29 = phi ptr [ %23, %25 ], [ %43, %42 ]
  %30 = add nsw i64 %28, -1
  %31 = lshr i64 %1, %30
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = or disjoint i8 %33, 48
  %35 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %34, ptr %29, align 1, !tbaa !5
  %36 = and i64 %30, 3
  %37 = icmp eq i64 %36, 0
  %38 = icmp ne i64 %30, 0
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 32, ptr %35, align 1, !tbaa !5
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi ptr [ %41, %40 ], [ %35, %27 ]
  %44 = icmp sgt i64 %28, 1
  br i1 %44, label %27, label %45, !llvm.loop !8

45:                                               ; preds = %42, %22
  %46 = phi ptr [ %23, %22 ], [ %43, %42 ]
  store i8 0, ptr %46, align 1, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
