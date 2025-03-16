; ModuleID = 'src/bf_ofb64.c'
source_filename = "src/bf_ofb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @BF_ofb64_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [8 x i8], align 1
  %8 = alloca [2 x i64], align 16
  %9 = load i32, ptr %5, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  %10 = getelementptr inbounds i8, ptr %4, i64 1
  %11 = load i8, ptr %4, align 1, !tbaa !9
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 24
  %14 = getelementptr inbounds i8, ptr %4, i64 2
  %15 = load i8, ptr %10, align 1, !tbaa !9
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = or disjoint i64 %17, %13
  %19 = getelementptr inbounds i8, ptr %4, i64 3
  %20 = load i8, ptr %14, align 1, !tbaa !9
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = getelementptr inbounds i8, ptr %4, i64 4
  %24 = load i8, ptr %19, align 1, !tbaa !9
  %25 = zext i8 %24 to i64
  %26 = or disjoint i64 %18, %22
  %27 = or disjoint i64 %26, %25
  %28 = getelementptr inbounds i8, ptr %4, i64 5
  %29 = load i8, ptr %23, align 1, !tbaa !9
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 24
  %32 = getelementptr inbounds i8, ptr %4, i64 6
  %33 = load i8, ptr %28, align 1, !tbaa !9
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 16
  %36 = or disjoint i64 %35, %31
  %37 = getelementptr inbounds i8, ptr %4, i64 7
  %38 = load i8, ptr %32, align 1, !tbaa !9
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 8
  %41 = load i8, ptr %37, align 1, !tbaa !9
  %42 = zext i8 %41 to i64
  %43 = or disjoint i64 %36, %40
  %44 = or disjoint i64 %43, %42
  store i64 %27, ptr %8, align 16, !tbaa !10
  %45 = getelementptr inbounds [2 x i64], ptr %8, i64 0, i64 1
  store i64 %44, ptr %45, align 8, !tbaa !10
  %46 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %11, ptr %7, align 1, !tbaa !9
  %47 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 %15, ptr %46, align 1, !tbaa !9
  %48 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %20, ptr %47, align 1, !tbaa !9
  %49 = getelementptr inbounds i8, ptr %7, i64 4
  store i8 %24, ptr %48, align 1, !tbaa !9
  %50 = getelementptr inbounds i8, ptr %7, i64 5
  store i8 %29, ptr %49, align 1, !tbaa !9
  %51 = getelementptr inbounds i8, ptr %7, i64 6
  store i8 %33, ptr %50, align 1, !tbaa !9
  %52 = getelementptr inbounds i8, ptr %7, i64 7
  store i8 %38, ptr %51, align 1, !tbaa !9
  store i8 %41, ptr %52, align 1, !tbaa !9
  %53 = icmp eq i64 %2, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %6, %80
  %55 = phi i64 [ %60, %80 ], [ %2, %6 ]
  %56 = phi i32 [ %81, %80 ], [ 0, %6 ]
  %57 = phi i32 [ %90, %80 ], [ %9, %6 ]
  %58 = phi ptr [ %82, %80 ], [ %0, %6 ]
  %59 = phi ptr [ %88, %80 ], [ %1, %6 ]
  %60 = add nsw i64 %55, -1
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %54
  call void @BF_encrypt(ptr noundef nonnull %8, ptr noundef %3, i32 noundef 1) #4
  %63 = load i64, ptr %8, align 16, !tbaa !10
  %64 = lshr i64 %63, 24
  %65 = trunc i64 %64 to i8
  store i8 %65, ptr %7, align 1, !tbaa !9
  %66 = lshr i64 %63, 16
  %67 = trunc i64 %66 to i8
  store i8 %67, ptr %46, align 1, !tbaa !9
  %68 = lshr i64 %63, 8
  %69 = trunc i64 %68 to i8
  store i8 %69, ptr %47, align 1, !tbaa !9
  %70 = trunc i64 %63 to i8
  store i8 %70, ptr %48, align 1, !tbaa !9
  %71 = load i64, ptr %45, align 8, !tbaa !10
  %72 = lshr i64 %71, 24
  %73 = trunc i64 %72 to i8
  store i8 %73, ptr %49, align 1, !tbaa !9
  %74 = lshr i64 %71, 16
  %75 = trunc i64 %74 to i8
  store i8 %75, ptr %50, align 1, !tbaa !9
  %76 = lshr i64 %71, 8
  %77 = trunc i64 %76 to i8
  store i8 %77, ptr %51, align 1, !tbaa !9
  %78 = trunc i64 %71 to i8
  store i8 %78, ptr %52, align 1, !tbaa !9
  %79 = add nsw i32 %56, 1
  br label %80

80:                                               ; preds = %62, %54
  %81 = phi i32 [ %79, %62 ], [ %56, %54 ]
  %82 = getelementptr inbounds i8, ptr %58, i64 1
  %83 = load i8, ptr %58, align 1, !tbaa !9
  %84 = sext i32 %57 to i64
  %85 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = xor i8 %86, %83
  %88 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %87, ptr %59, align 1, !tbaa !9
  %89 = add nsw i32 %57, 1
  %90 = and i32 %89, 7
  %91 = icmp eq i64 %60, 0
  br i1 %91, label %92, label %54, !llvm.loop !12

92:                                               ; preds = %80
  %93 = icmp eq i32 %81, 0
  br label %94

94:                                               ; preds = %92, %6
  %95 = phi i32 [ %9, %6 ], [ %90, %92 ]
  %96 = phi i1 [ true, %6 ], [ %93, %92 ]
  br i1 %96, label %114, label %97

97:                                               ; preds = %94
  %98 = load i64, ptr %8, align 16, !tbaa !10
  %99 = load i64, ptr %45, align 8, !tbaa !10
  %100 = lshr i64 %98, 24
  %101 = trunc i64 %100 to i8
  store i8 %101, ptr %4, align 1, !tbaa !9
  %102 = lshr i64 %98, 16
  %103 = trunc i64 %102 to i8
  store i8 %103, ptr %10, align 1, !tbaa !9
  %104 = lshr i64 %98, 8
  %105 = trunc i64 %104 to i8
  store i8 %105, ptr %14, align 1, !tbaa !9
  %106 = trunc i64 %98 to i8
  store i8 %106, ptr %19, align 1, !tbaa !9
  %107 = lshr i64 %99, 24
  %108 = trunc i64 %107 to i8
  store i8 %108, ptr %23, align 1, !tbaa !9
  %109 = lshr i64 %99, 16
  %110 = trunc i64 %109 to i8
  store i8 %110, ptr %28, align 1, !tbaa !9
  %111 = lshr i64 %99, 8
  %112 = trunc i64 %111 to i8
  store i8 %112, ptr %32, align 1, !tbaa !9
  %113 = trunc i64 %99 to i8
  store i8 %113, ptr %37, align 1, !tbaa !9
  br label %114

114:                                              ; preds = %97, %94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %95, ptr %5, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BF_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
