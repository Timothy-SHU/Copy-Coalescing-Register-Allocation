; ModuleID = 'liblzma/check/crc64_fast.c'
source_filename = "liblzma/check/crc64_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lzma_crc64_table = external local_unnamed_addr constant [4 x [256 x i64]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @lzma_crc64(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = xor i64 %2, -1
  %5 = icmp ugt i64 %1, 4
  br i1 %5, label %6, label %66

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i64
  %8 = and i64 %7, 3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %0, %6 ]
  %12 = phi i64 [ %23, %10 ], [ %1, %6 ]
  %13 = phi i64 [ %22, %10 ], [ %4, %6 ]
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  %15 = load i8, ptr %11, align 1, !tbaa !6
  %16 = zext i8 %15 to i64
  %17 = and i64 %13, 255
  %18 = xor i64 %17, %16
  %19 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !9
  %21 = lshr i64 %13, 8
  %22 = xor i64 %20, %21
  %23 = add i64 %12, -1
  %24 = ptrtoint ptr %14 to i64
  %25 = and i64 %24, 3
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %10, !llvm.loop !11

27:                                               ; preds = %10, %6
  %28 = phi i64 [ %4, %6 ], [ %22, %10 ]
  %29 = phi i64 [ %1, %6 ], [ %23, %10 ]
  %30 = phi ptr [ %0, %6 ], [ %14, %10 ]
  %31 = and i64 %29, -4
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = and i64 %29, 3
  %34 = icmp sgt i64 %31, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %27, %35
  %36 = phi ptr [ %41, %35 ], [ %30, %27 ]
  %37 = phi i64 [ %64, %35 ], [ %28, %27 ]
  %38 = load i32, ptr %36, align 4, !tbaa !13
  %39 = trunc i64 %37 to i32
  %40 = xor i32 %38, %39
  %41 = getelementptr inbounds i8, ptr %36, i64 4
  %42 = and i32 %40, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !9
  %46 = lshr i32 %40, 8
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 2, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !9
  %51 = lshr i64 %37, 32
  %52 = lshr i32 %40, 16
  %53 = and i32 %52, 255
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [4 x [256 x i64]], ptr @lzma_crc64_table, i64 0, i64 1, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !9
  %57 = lshr i32 %40, 24
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !9
  %61 = xor i64 %45, %51
  %62 = xor i64 %61, %50
  %63 = xor i64 %62, %56
  %64 = xor i64 %63, %60
  %65 = icmp ult ptr %41, %32
  br i1 %65, label %35, label %66, !llvm.loop !15

66:                                               ; preds = %35, %27, %3
  %67 = phi i64 [ %4, %3 ], [ %28, %27 ], [ %64, %35 ]
  %68 = phi i64 [ %1, %3 ], [ %33, %27 ], [ %33, %35 ]
  %69 = phi ptr [ %0, %3 ], [ %30, %27 ], [ %41, %35 ]
  %70 = icmp eq i64 %68, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %76, %71 ], [ %69, %66 ]
  %73 = phi i64 [ %75, %71 ], [ %68, %66 ]
  %74 = phi i64 [ %84, %71 ], [ %67, %66 ]
  %75 = add nsw i64 %73, -1
  %76 = getelementptr inbounds i8, ptr %72, i64 1
  %77 = load i8, ptr %72, align 1, !tbaa !6
  %78 = zext i8 %77 to i64
  %79 = and i64 %74, 255
  %80 = xor i64 %79, %78
  %81 = getelementptr inbounds [256 x i64], ptr @lzma_crc64_table, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !9
  %83 = lshr i64 %74, 8
  %84 = xor i64 %82, %83
  %85 = icmp eq i64 %75, 0
  br i1 %85, label %86, label %71, !llvm.loop !16

86:                                               ; preds = %71, %66
  %87 = phi i64 [ %67, %66 ], [ %84, %71 ]
  %88 = xor i64 %87, -1
  ret i64 %88
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
