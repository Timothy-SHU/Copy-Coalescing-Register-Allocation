; ModuleID = 'reservoir.c'
source_filename = "reservoir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }

@ResvSize = internal unnamed_addr global i32 0, align 4
@ResvMax = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @ResvFrameBegin(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 0, ptr @ResvSize, align 4, !tbaa !13
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %12, i32 4088, i32 2040
  %14 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = load i32, ptr @ResvSize, align 4, !tbaa !13
  %17 = icmp sgt i32 %3, 7680
  %18 = sub nsw i32 7680, %3
  %19 = select i1 %17, i32 0, i32 %18
  store i32 %19, ptr @ResvMax, align 4, !tbaa !13
  %20 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 17
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 %19, i32 0
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %13)
  store i32 %24, ptr @ResvMax, align 4
  %25 = mul nsw i32 %15, %2
  %26 = add nsw i32 %25, %16
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @ResvMaxBits(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #1 {
  store i32 %0, ptr %1, align 4, !tbaa !13
  %5 = load i32, ptr @ResvSize, align 4, !tbaa !13
  %6 = load i32, ptr @ResvMax, align 4, !tbaa !13
  %7 = mul nsw i32 %6, 9
  %8 = sdiv i32 %7, 10
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = sub nsw i32 %5, %8
  %12 = add nsw i32 %11, %0
  br label %18

13:                                               ; preds = %4
  %14 = sitofp i32 %0 to double
  %15 = fdiv double %14, 1.520000e+01
  %16 = fptosi double %15 to i32
  %17 = sub nsw i32 %0, %16
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i32 [ %17, %13 ], [ %12, %10 ]
  %20 = phi i32 [ 0, %13 ], [ %11, %10 ]
  store i32 %19, ptr %1, align 4, !tbaa !13
  %21 = mul nsw i32 %6, 6
  %22 = sdiv i32 %21, 10
  %23 = tail call i32 @llvm.smin.i32(i32 %5, i32 %22)
  %24 = sub nsw i32 %23, %20
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0)
  store i32 %25, ptr %2, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @ResvAdjust(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %6 = load i32, ptr %5, align 4, !tbaa !17
  %7 = sdiv i32 %3, %6
  %8 = load i32, ptr %1, align 8, !tbaa !18
  %9 = sub i32 %7, %8
  %10 = load i32, ptr @ResvSize, align 4, !tbaa !13
  %11 = add i32 %9, %10
  store i32 %11, ptr @ResvSize, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ResvFrameEnd(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %5 = load i32, ptr %4, align 4, !tbaa !17
  %6 = icmp ne i32 %5, 2
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  %9 = or i1 %8, %6
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr @ResvSize, align 4, !tbaa !13
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @ResvSize, align 4, !tbaa !13
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, ptr @ResvSize, align 4, !tbaa !13
  %15 = load i32, ptr @ResvMax, align 4, !tbaa !13
  %16 = sub nsw i32 %14, %15
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = tail call i32 @llvm.smin.i32(i32 %14, i32 %15)
  %19 = srem i32 %18, 8
  %20 = add nsw i32 %17, %19
  %21 = sub nsw i32 %18, %19
  store i32 %21, ptr @ResvSize, align 4, !tbaa !13
  %22 = getelementptr inbounds %struct.III_side_info_t, ptr %1, i64 0, i32 2
  store i32 %20, ptr %22, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 168}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !10, i64 192}
!15 = !{!6, !10, i64 200}
!16 = !{!6, !10, i64 72}
!17 = !{!6, !10, i64 204}
!18 = !{!19, !10, i64 0}
!19 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !8, i64 32, !8, i64 44, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !11, i64 96, !8, i64 104}
!20 = !{!21, !10, i64 8}
!21 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !8, i64 12, !8, i64 48}
