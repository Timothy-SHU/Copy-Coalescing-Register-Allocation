; ModuleID = 'liblzma/lzma/lzma_encoder_presets.c'
source_filename = "liblzma/lzma/lzma_encoder_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef zeroext i8 @lzma_lzma_preset(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [10 x i8], align 8
  %4 = alloca [4 x i8], align 4
  %5 = and i32 %1, 31
  %6 = icmp ult i32 %5, 10
  %7 = and i32 %1, 2147483616
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 2
  store <4 x i32> <i32 0, i32 3, i32 0, i32 2>, ptr %12, align 8, !tbaa !12
  store <8 x i8> <i8 18, i8 20, i8 21, i8 22, i8 22, i8 23, i8 23, i8 24>, ptr %3, align 8, !tbaa !13
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  store i8 25, ptr %13, align 8, !tbaa !13
  %14 = getelementptr inbounds i8, ptr %3, i64 9
  store i8 26, ptr %14, align 1, !tbaa !13
  %15 = zext nneg i32 %5 to i64
  %16 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext nneg i8 %17 to i32
  %19 = shl nuw i32 1, %18
  store i32 %19, ptr %0, align 8, !tbaa !14
  %20 = icmp ult i32 %5, 4
  br i1 %20, label %21, label %29

21:                                               ; preds = %10
  %22 = icmp eq i32 %5, 0
  %23 = select i1 %22, i32 3, i32 4
  %24 = icmp ult i32 %5, 2
  %25 = select i1 %24, i32 128, i32 273
  store <4 x i8> <i8 4, i8 8, i8 24, i8 48>, ptr %4, align 4, !tbaa !13
  %26 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 %15
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i32
  br label %34

29:                                               ; preds = %10
  %30 = icmp eq i32 %5, 4
  %31 = icmp eq i32 %5, 5
  %32 = select i1 %31, i32 32, i32 64
  %33 = select i1 %30, i32 16, i32 %32
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi i32 [ 1, %21 ], [ 2, %29 ]
  %36 = phi i32 [ %23, %21 ], [ 20, %29 ]
  %37 = phi i32 [ %25, %21 ], [ %33, %29 ]
  %38 = phi i32 [ %28, %21 ], [ 0, %29 ]
  %39 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 6
  store i32 %35, ptr %39, align 8
  %40 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 8
  store i32 %36, ptr %40, align 8
  %41 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 7
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 9
  store i32 %38, ptr %42, align 4
  %43 = icmp sgt i32 %1, -1
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  store i32 2, ptr %39, align 8, !tbaa !15
  store i32 20, ptr %40, align 8, !tbaa !16
  switch i32 %5, label %45 [
    i32 5, label %46
    i32 3, label %46
  ]

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %44, %44, %45
  %47 = phi i32 [ 273, %45 ], [ 192, %44 ], [ 192, %44 ]
  %48 = phi i32 [ 512, %45 ], [ 0, %44 ], [ 0, %44 ]
  store i32 %47, ptr %41, align 4, !tbaa !17
  store i32 %48, ptr %42, align 4, !tbaa !18
  br label %49

49:                                               ; preds = %46, %34, %2
  %50 = phi i8 [ 1, %2 ], [ 0, %34 ], [ 0, %46 ]
  ret i8 %50
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 8}
!7 = !{!"", !8, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !11, i64 96, !11, i64 104}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = !{!7, !8, i64 32}
!16 = !{!7, !8, i64 40}
!17 = !{!7, !8, i64 36}
!18 = !{!7, !8, i64 44}
