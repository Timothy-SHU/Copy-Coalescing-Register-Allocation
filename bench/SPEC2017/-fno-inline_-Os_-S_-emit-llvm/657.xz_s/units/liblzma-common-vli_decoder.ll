; ModuleID = 'liblzma/common/vli_decoder.c'
source_filename = "liblzma/common/vli_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @lzma_vli_decode(ptr noalias nocapture noundef %0, ptr noundef %1, ptr noalias nocapture noundef readonly %2, ptr noalias nocapture noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  store i64 0, ptr %0, align 8, !tbaa !6
  %9 = load i64, ptr %3, align 8, !tbaa !6
  %10 = icmp ult i64 %9, %4
  br i1 %10, label %27, label %65

11:                                               ; preds = %5
  %12 = load i64, ptr %1, align 8, !tbaa !6
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i64 0, ptr %0, align 8, !tbaa !6
  br label %19

15:                                               ; preds = %11
  %16 = icmp ugt i64 %12, 8
  br i1 %16, label %65, label %17

17:                                               ; preds = %15
  %18 = load i64, ptr %0, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i64 [ %18, %17 ], [ 0, %14 ]
  %21 = mul nuw nsw i64 %12, 7
  %22 = lshr i64 %20, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load i64, ptr %3, align 8, !tbaa !6
  %26 = icmp ult i64 %25, %4
  br i1 %26, label %27, label %65

27:                                               ; preds = %24, %8
  %28 = phi i64 [ 0, %8 ], [ %20, %24 ]
  %29 = phi i64 [ 0, %8 ], [ %12, %24 ]
  %30 = phi i64 [ %9, %8 ], [ %25, %24 ]
  %31 = phi ptr [ %6, %8 ], [ %1, %24 ]
  %32 = add i64 %30, 9
  %33 = sub i64 %32, %29
  %34 = add nuw i64 %30, 1
  %35 = tail call i64 @llvm.umax.i64(i64 %4, i64 %34)
  br label %36

36:                                               ; preds = %59, %27
  %37 = phi i64 [ %28, %27 ], [ %47, %59 ]
  %38 = phi i64 [ %29, %27 ], [ %48, %59 ]
  %39 = phi i64 [ %30, %27 ], [ %42, %59 ]
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !10
  %42 = add nuw i64 %39, 1
  %43 = and i8 %41, 127
  %44 = zext nneg i8 %43 to i64
  %45 = mul i64 %38, 7
  %46 = shl i64 %44, %45
  %47 = add i64 %46, %37
  %48 = add i64 %38, 1
  %49 = icmp sgt i8 %41, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  store i64 %42, ptr %3, align 8, !tbaa !6
  store i64 %48, ptr %31, align 8, !tbaa !6
  store i64 %47, ptr %0, align 8, !tbaa !6
  %51 = icmp eq i8 %41, 0
  %52 = icmp ugt i64 %48, 1
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = icmp ne ptr %31, %6
  %56 = zext i1 %55 to i32
  br label %65

57:                                               ; preds = %36
  %58 = icmp eq i64 %48, 9
  br i1 %58, label %64, label %59

59:                                               ; preds = %57
  %60 = icmp ult i64 %42, %4
  br i1 %60, label %36, label %61, !llvm.loop !11

61:                                               ; preds = %59
  store i64 %35, ptr %3, align 8, !tbaa !6
  store i64 %48, ptr %31, align 8, !tbaa !6
  store i64 %47, ptr %0, align 8, !tbaa !6
  %62 = icmp eq ptr %31, %6
  %63 = select i1 %62, i32 9, i32 0
  br label %65

64:                                               ; preds = %57
  store i64 %33, ptr %3, align 8, !tbaa !6
  store i64 9, ptr %31, align 8, !tbaa !6
  store i64 %47, ptr %0, align 8, !tbaa !6
  br label %65

65:                                               ; preds = %64, %50, %54, %24, %15, %19, %8, %61
  %66 = phi i32 [ %63, %61 ], [ 9, %8 ], [ 11, %19 ], [ 11, %15 ], [ 10, %24 ], [ 9, %50 ], [ %56, %54 ], [ 9, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  ret i32 %66
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
