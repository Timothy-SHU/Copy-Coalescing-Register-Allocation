; ModuleID = 'src/randpool.c'
source_filename = "src/randpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@randPoolStir.randPoolKey = internal global [16 x i64] zeroinitializer, align 16
@randPool = internal unnamed_addr global [96 x i64] zeroinitializer, align 16
@randPoolAddPos = internal unnamed_addr global i32 0, align 4
@randPoolGetPos = internal unnamed_addr global i32 768, align 4

; Function Attrs: nounwind uwtable
define dso_local void @randPoolStir() local_unnamed_addr #0 {
  %1 = alloca [4 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #5
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i64 [ 0, %0 ], [ %24, %2 ]
  %4 = phi ptr [ @randPool, %0 ], [ %23, %2 ]
  %5 = getelementptr inbounds i8, ptr %4, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %11 = shl nuw nsw i64 %7, 24
  %12 = shl nuw nsw i64 %10, 16
  %13 = or disjoint i64 %12, %11
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 8
  %18 = or disjoint i64 %13, %17
  %19 = load i8, ptr %4, align 1, !tbaa !5
  %20 = zext i8 %19 to i64
  %21 = or disjoint i64 %18, %20
  %22 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %3
  store i64 %21, ptr %22, align 8, !tbaa !8
  %23 = getelementptr inbounds i8, ptr %4, i64 4
  %24 = add nuw nsw i64 %3, 1
  %25 = icmp eq i64 %24, 96
  br i1 %25, label %26, label %2, !llvm.loop !10

26:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([96 x i64], ptr @randPool, i64 0, i64 92), i64 32, i1 false)
  %27 = getelementptr inbounds [4 x i64], ptr %1, i64 0, i64 1
  %28 = getelementptr inbounds [4 x i64], ptr %1, i64 0, i64 2
  %29 = getelementptr inbounds [4 x i64], ptr %1, i64 0, i64 3
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i64 [ 0, %26 ], [ %51, %30 ]
  call void @MD5Transform(ptr noundef nonnull %1, ptr noundef nonnull @randPoolStir.randPoolKey) #5
  %32 = load i64, ptr %1, align 16, !tbaa !8
  %33 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %31
  %34 = load i64, ptr %33, align 16, !tbaa !8
  %35 = xor i64 %34, %32
  store i64 %35, ptr %33, align 16, !tbaa !8
  store i64 %35, ptr %1, align 16, !tbaa !8
  %36 = load i64, ptr %27, align 8, !tbaa !8
  %37 = or disjoint i64 %31, 1
  %38 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !8
  %40 = xor i64 %39, %36
  store i64 %40, ptr %38, align 8, !tbaa !8
  store i64 %40, ptr %27, align 8, !tbaa !8
  %41 = load i64, ptr %28, align 16, !tbaa !8
  %42 = or disjoint i64 %31, 2
  %43 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %42
  %44 = load i64, ptr %43, align 16, !tbaa !8
  %45 = xor i64 %44, %41
  store i64 %45, ptr %43, align 16, !tbaa !8
  store i64 %45, ptr %28, align 16, !tbaa !8
  %46 = load i64, ptr %29, align 8, !tbaa !8
  %47 = or disjoint i64 %31, 3
  %48 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !8
  %50 = xor i64 %49, %46
  store i64 %50, ptr %48, align 8, !tbaa !8
  store i64 %50, ptr %29, align 8, !tbaa !8
  %51 = add nuw nsw i64 %31, 4
  %52 = icmp ult i64 %31, 92
  br i1 %52, label %30, label %53, !llvm.loop !12

53:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @randPoolStir.randPoolKey, ptr noundef nonnull align 16 dereferenceable(128) @randPool, i64 128, i1 false)
  %54 = getelementptr inbounds [4 x i64], ptr %1, i64 0, i64 1
  %55 = getelementptr inbounds [4 x i64], ptr %1, i64 0, i64 2
  %56 = getelementptr inbounds [4 x i64], ptr %1, i64 0, i64 3
  br label %57

57:                                               ; preds = %53, %57
  %58 = phi i64 [ 0, %53 ], [ %78, %57 ]
  call void @MD5Transform(ptr noundef nonnull %1, ptr noundef nonnull @randPoolStir.randPoolKey) #5
  %59 = load i64, ptr %1, align 16, !tbaa !8
  %60 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %58
  %61 = load i64, ptr %60, align 16, !tbaa !8
  %62 = xor i64 %61, %59
  store i64 %62, ptr %60, align 16, !tbaa !8
  store i64 %62, ptr %1, align 16, !tbaa !8
  %63 = load i64, ptr %54, align 8, !tbaa !8
  %64 = or disjoint i64 %58, 1
  %65 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !8
  %67 = xor i64 %66, %63
  store i64 %67, ptr %65, align 8, !tbaa !8
  store i64 %67, ptr %54, align 8, !tbaa !8
  %68 = load i64, ptr %55, align 16, !tbaa !8
  %69 = or disjoint i64 %58, 2
  %70 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %69
  %71 = load i64, ptr %70, align 16, !tbaa !8
  %72 = xor i64 %71, %68
  store i64 %72, ptr %70, align 16, !tbaa !8
  store i64 %72, ptr %55, align 16, !tbaa !8
  %73 = load i64, ptr %56, align 8, !tbaa !8
  %74 = or disjoint i64 %58, 3
  %75 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !8
  %77 = xor i64 %76, %73
  store i64 %77, ptr %75, align 8, !tbaa !8
  store i64 %77, ptr %56, align 8, !tbaa !8
  %78 = add nuw nsw i64 %58, 4
  %79 = icmp ult i64 %58, 92
  br i1 %79, label %57, label %80, !llvm.loop !13

80:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @randPoolStir.randPoolKey, ptr noundef nonnull align 16 dereferenceable(128) @randPool, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %81

81:                                               ; preds = %80, %81
  %82 = phi i64 [ 0, %80 ], [ %97, %81 ]
  %83 = phi ptr [ @randPool, %80 ], [ %96, %81 ]
  %84 = getelementptr inbounds [96 x i64], ptr @randPool, i64 0, i64 %82
  %85 = load i64, ptr %84, align 8, !tbaa !8
  %86 = lshr i64 %85, 24
  %87 = trunc i64 %86 to i8
  store i8 %87, ptr %83, align 1, !tbaa !5
  %88 = lshr i64 %85, 16
  %89 = trunc i64 %88 to i8
  %90 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 %89, ptr %90, align 1, !tbaa !5
  %91 = lshr i64 %85, 8
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds i8, ptr %83, i64 2
  store i8 %92, ptr %93, align 1, !tbaa !5
  %94 = trunc i64 %85 to i8
  %95 = getelementptr inbounds i8, ptr %83, i64 3
  store i8 %94, ptr %95, align 1, !tbaa !5
  %96 = getelementptr inbounds i8, ptr %83, i64 4
  %97 = add nuw nsw i64 %82, 1
  %98 = icmp eq i64 %97, 96
  br i1 %98, label %99, label %81, !llvm.loop !14

99:                                               ; preds = %81
  store i32 0, ptr @randPoolAddPos, align 4, !tbaa !15
  store i32 128, ptr @randPoolGetPos, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @MD5Transform(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @randPoolAddBytes(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @randPoolAddPos, align 4, !tbaa !15
  %4 = zext i32 %3 to i64
  %5 = sub i32 768, %3
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %35

7:                                                ; preds = %2, %27
  %8 = phi i32 [ %33, %27 ], [ %5, %2 ]
  %9 = phi i64 [ %32, %27 ], [ %4, %2 ]
  %10 = phi i32 [ %31, %27 ], [ %3, %2 ]
  %11 = phi ptr [ %29, %27 ], [ %0, %2 ]
  %12 = phi i32 [ %30, %27 ], [ %1, %2 ]
  %13 = icmp eq i32 %10, 768
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr @randPool, i64 %9
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %20, %16 ], [ %8, %14 ]
  %18 = phi ptr [ %21, %16 ], [ %11, %14 ]
  %19 = phi ptr [ %23, %16 ], [ %15, %14 ]
  %20 = add i32 %17, -1
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  %22 = load i8, ptr %18, align 1, !tbaa !5
  %23 = getelementptr inbounds i8, ptr %19, i64 1
  %24 = load i8, ptr %19, align 1, !tbaa !5
  %25 = xor i8 %24, %22
  store i8 %25, ptr %19, align 1, !tbaa !5
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %27, label %16, !llvm.loop !17

27:                                               ; preds = %16, %7
  %28 = zext i32 %8 to i64
  %29 = getelementptr inbounds i8, ptr %11, i64 %28
  %30 = sub i32 %12, %8
  tail call void @randPoolStir()
  %31 = load i32, ptr @randPoolAddPos, align 4, !tbaa !15
  %32 = zext i32 %31 to i64
  %33 = sub i32 768, %31
  %34 = icmp ugt i32 %30, %33
  br i1 %34, label %7, label %35, !llvm.loop !18

35:                                               ; preds = %27, %2
  %36 = phi i32 [ %1, %2 ], [ %30, %27 ]
  %37 = phi ptr [ %0, %2 ], [ %29, %27 ]
  %38 = phi i32 [ %3, %2 ], [ %31, %27 ]
  %39 = phi i64 [ %4, %2 ], [ %32, %27 ]
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, ptr @randPool, i64 %39
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i32 [ %47, %43 ], [ %36, %41 ]
  %45 = phi ptr [ %48, %43 ], [ %37, %41 ]
  %46 = phi ptr [ %50, %43 ], [ %42, %41 ]
  %47 = add i32 %44, -1
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = load i8, ptr %45, align 1, !tbaa !5
  %50 = getelementptr inbounds i8, ptr %46, i64 1
  %51 = load i8, ptr %46, align 1, !tbaa !5
  %52 = xor i8 %51, %49
  store i8 %52, ptr %46, align 1, !tbaa !5
  %53 = icmp eq i32 %47, 0
  br i1 %53, label %54, label %43, !llvm.loop !17

54:                                               ; preds = %43
  %55 = add i32 %38, %36
  store i32 %55, ptr @randPoolAddPos, align 4, !tbaa !15
  store i32 768, ptr @randPoolGetPos, align 4, !tbaa !15
  br label %56

56:                                               ; preds = %54, %35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @randPoolGetBytes(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @randPoolGetPos, align 4, !tbaa !15
  %4 = zext i32 %3 to i64
  %5 = sub i32 768, %3
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %18, %7 ], [ %5, %2 ]
  %9 = phi i64 [ %17, %7 ], [ %4, %2 ]
  %10 = phi ptr [ %14, %7 ], [ %0, %2 ]
  %11 = phi i32 [ %15, %7 ], [ %1, %2 ]
  %12 = getelementptr inbounds i8, ptr @randPool, i64 %9
  %13 = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr nonnull align 1 %12, i64 %13, i1 false)
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = sub i32 %11, %8
  tail call void @randPoolStir()
  %16 = load i32, ptr @randPoolGetPos, align 4, !tbaa !15
  %17 = zext i32 %16 to i64
  %18 = sub i32 768, %16
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %7, label %20, !llvm.loop !19

20:                                               ; preds = %7, %2
  %21 = phi i32 [ %1, %2 ], [ %15, %7 ]
  %22 = phi ptr [ %0, %2 ], [ %14, %7 ]
  %23 = phi i32 [ %3, %2 ], [ %16, %7 ]
  %24 = phi i64 [ %4, %2 ], [ %17, %7 ]
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr @randPool, i64 %24
  %28 = zext i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr nonnull align 1 %27, i64 %28, i1 false)
  %29 = add i32 %23, %21
  store i32 %29, ptr @randPoolGetPos, align 4, !tbaa !15
  br label %30

30:                                               ; preds = %26, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @randPoolGetByte() local_unnamed_addr #0 {
  %1 = load i32, ptr @randPoolGetPos, align 4, !tbaa !15
  %2 = icmp eq i32 %1, 768
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @randPoolStir()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @randPoolGetPos, align 4, !tbaa !15
  %6 = add i32 %5, 1
  store i32 %6, ptr @randPoolGetPos, align 4, !tbaa !15
  %7 = zext i32 %5 to i64
  %8 = getelementptr inbounds i8, ptr @randPool, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  ret i8 %9
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
