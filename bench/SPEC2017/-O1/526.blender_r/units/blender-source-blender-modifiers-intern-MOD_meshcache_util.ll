; ModuleID = 'blender/source/blender/modifiers/intern/MOD_meshcache_util.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_meshcache_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MOD_meshcache_calc_range(float noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = add nsw i32 %2, -1
  %9 = fadd float %0, 5.000000e-01
  %10 = tail call float @llvm.floor.f32(float %9)
  %11 = fptosi float %10 to i32
  %12 = tail call i32 @llvm.smin.i32(i32 %8, i32 %11)
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %13, ptr %14, align 4, !tbaa !34
  br label %36

15:                                               ; preds = %5
  %16 = tail call float @llvm.floor.f32(float %0)
  %17 = fsub float %0, %16
  %18 = fptosi float %16 to i32
  store i32 %18, ptr %3, align 4, !tbaa !34
  %19 = fcmp ugt float %17, 0x3F1A36E2E0000000
  %20 = zext i1 %19 to i32
  %21 = add nsw i32 %18, %20
  %22 = select i1 %19, float %17, float 1.000000e+00
  %23 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %21, ptr %23, align 4, !tbaa !34
  store float %22, ptr %4, align 4, !tbaa !38
  %24 = icmp slt i32 %18, %2
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds i32, ptr %3, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = icmp slt i32 %27, %2
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %15
  %30 = add nsw i32 %2, -1
  %31 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %30, ptr %31, align 4, !tbaa !34
  br label %36

32:                                               ; preds = %25
  %33 = or i32 %27, %18
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  store i32 0, ptr %26, align 4, !tbaa !34
  br label %36

36:                                               ; preds = %7, %35, %29
  %37 = phi i32 [ %30, %29 ], [ 0, %35 ], [ %13, %7 ]
  store i32 %37, ptr %3, align 4, !tbaa !34
  store float 1.000000e+00, ptr %4, align 4, !tbaa !38
  br label %38

38:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
