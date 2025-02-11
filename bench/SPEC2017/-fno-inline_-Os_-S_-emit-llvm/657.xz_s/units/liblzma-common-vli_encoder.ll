; ModuleID = 'liblzma/common/vli_encoder.c'
source_filename = "liblzma/common/vli_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @lzma_vli_encode(i64 noundef %0, ptr noundef %1, ptr noalias nocapture noundef writeonly %2, ptr noalias nocapture noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #2
  store i64 0, ptr %6, align 8, !tbaa !6
  %7 = icmp eq ptr %1, null
  %8 = load i64, ptr %3, align 8, !tbaa !6
  %9 = icmp ult i64 %8, %4
  %10 = select i1 %7, ptr %6, ptr %1
  %11 = select i1 %7, i32 11, i32 10
  br i1 %9, label %12, label %43

12:                                               ; preds = %5
  %13 = load i64, ptr %10, align 8, !tbaa !6
  %14 = icmp ugt i64 %13, 8
  %15 = icmp slt i64 %0, 0
  %16 = or i1 %15, %14
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = mul nuw nsw i64 %13, 7
  %19 = lshr i64 %0, %18
  br label %20

20:                                               ; preds = %25, %17
  %21 = phi i64 [ %13, %17 ], [ %26, %25 ]
  %22 = phi i64 [ %8, %17 ], [ %31, %25 ]
  %23 = phi i64 [ %19, %17 ], [ %30, %25 ]
  %24 = icmp ugt i64 %23, 127
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = add i64 %21, 1
  store i64 %26, ptr %10, align 8, !tbaa !6
  %27 = trunc i64 %23 to i8
  %28 = or i8 %27, -128
  %29 = getelementptr inbounds i8, ptr %2, i64 %22
  store i8 %28, ptr %29, align 1, !tbaa !10
  %30 = lshr i64 %23, 7
  %31 = add i64 %22, 1
  store i64 %31, ptr %3, align 8, !tbaa !6
  %32 = icmp eq i64 %31, %4
  br i1 %32, label %33, label %20, !llvm.loop !11

33:                                               ; preds = %25
  %34 = icmp eq ptr %10, %6
  %35 = select i1 %34, i32 11, i32 0
  br label %43

36:                                               ; preds = %20
  %37 = trunc i64 %23 to i8
  %38 = getelementptr inbounds i8, ptr %2, i64 %22
  store i8 %37, ptr %38, align 1, !tbaa !10
  %39 = add i64 %22, 1
  store i64 %39, ptr %3, align 8, !tbaa !6
  %40 = add i64 %21, 1
  store i64 %40, ptr %10, align 8, !tbaa !6
  %41 = icmp ne ptr %10, %6
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %5, %12, %36, %33
  %44 = phi i32 [ %35, %33 ], [ %42, %36 ], [ 11, %12 ], [ %11, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #2
  ret i32 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
