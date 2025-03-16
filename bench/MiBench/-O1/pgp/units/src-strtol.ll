; ModuleID = 'src/strtol.c'
source_filename = "src/strtol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @strtol(ptr noundef nonnull %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @__ctype_b_loc() #2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %0, %3 ], [ %8, %6 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !9
  %10 = sext i8 %9 to i64
  %11 = getelementptr inbounds i16, ptr %5, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !10
  %13 = and i16 %12, 8192
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !12

15:                                               ; preds = %6
  %16 = icmp eq i8 %9, 45
  switch i8 %9, label %20 [
    i8 45, label %17
    i8 43, label %17
  ]

17:                                               ; preds = %15, %15
  %18 = getelementptr inbounds i8, ptr %7, i64 2
  %19 = load i8, ptr %8, align 1, !tbaa !9
  br label %20

20:                                               ; preds = %15, %17
  %21 = phi ptr [ %18, %17 ], [ %8, %15 ]
  %22 = phi i8 [ %19, %17 ], [ %9, %15 ]
  %23 = sext i8 %22 to i32
  %24 = and i32 %2, -17
  %25 = icmp eq i32 %24, 0
  %26 = icmp eq i8 %22, 48
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load i8, ptr %21, align 1, !tbaa !9
  switch i8 %29, label %35 [
    i8 120, label %30
    i8 88, label %30
  ]

30:                                               ; preds = %28, %28
  %31 = getelementptr inbounds i8, ptr %21, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = sext i8 %32 to i32
  %34 = getelementptr inbounds i8, ptr %21, i64 2
  br label %35

35:                                               ; preds = %28, %20, %30
  %36 = phi ptr [ %34, %30 ], [ %21, %20 ], [ %21, %28 ]
  %37 = phi i32 [ %33, %30 ], [ %23, %20 ], [ 48, %28 ]
  %38 = phi i32 [ 16, %30 ], [ %2, %20 ], [ %2, %28 ]
  %39 = icmp eq i32 %38, 0
  %40 = icmp eq i32 %37, 48
  %41 = select i1 %40, i32 8, i32 10
  %42 = select i1 %39, i32 %41, i32 %38
  %43 = select i1 %16, i64 -9223372036854775808, i64 9223372036854775807
  %44 = sext i32 %42 to i64
  %45 = urem i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = udiv i64 %43, %44
  br label %48

48:                                               ; preds = %84, %35
  %49 = phi ptr [ %36, %35 ], [ %87, %84 ]
  %50 = phi i64 [ 0, %35 ], [ %85, %84 ]
  %51 = phi i32 [ %37, %35 ], [ %89, %84 ]
  %52 = phi i32 [ 0, %35 ], [ %86, %84 ]
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i16, ptr %5, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !10
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 2048
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  %60 = add nsw i32 %51, -48
  br label %69

61:                                               ; preds = %48
  %62 = and i32 %56, 1024
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %61
  %65 = and i32 %56, 256
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 -87, i32 -55
  %68 = add nsw i32 %67, %51
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i32 [ %60, %59 ], [ %68, %64 ]
  %71 = icmp slt i32 %70, %42
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = icmp slt i32 %52, 0
  %74 = icmp ugt i64 %50, %47
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = icmp eq i64 %50, %47
  %78 = icmp sgt i32 %70, %46
  %79 = and i1 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = mul i64 %50, %44
  %82 = sext i32 %70 to i64
  %83 = add i64 %81, %82
  br label %84

84:                                               ; preds = %72, %76, %80
  %85 = phi i64 [ %83, %80 ], [ %50, %76 ], [ %50, %72 ]
  %86 = phi i32 [ 1, %80 ], [ -1, %76 ], [ -1, %72 ]
  %87 = getelementptr inbounds i8, ptr %49, i64 1
  %88 = load i8, ptr %49, align 1, !tbaa !9
  %89 = sext i8 %88 to i32
  br label %48, !llvm.loop !14

90:                                               ; preds = %69, %61
  %91 = icmp slt i32 %52, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = tail call ptr @__errno_location() #2
  store i32 34, ptr %93, align 4, !tbaa !15
  br label %97

94:                                               ; preds = %90
  %95 = sub i64 0, %50
  %96 = select i1 %16, i64 %95, i64 %50
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi i64 [ %43, %92 ], [ %96, %94 ]
  %99 = icmp eq ptr %1, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = icmp eq i32 %52, 0
  %102 = getelementptr inbounds i8, ptr %49, i64 -1
  %103 = select i1 %101, ptr %0, ptr %102
  store ptr %103, ptr %1, align 8, !tbaa !5
  br label %104

104:                                              ; preds = %100, %97
  ret i64 %98
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
