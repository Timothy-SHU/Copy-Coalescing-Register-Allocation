; ModuleID = 'blender/source/blender/modifiers/intern/MOD_meshcache_util.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_meshcache_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MOD_meshcache_calc_range(float noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = add nsw i32 %2, -1
  %9 = tail call fastcc i32 @iroundf(float noundef %0) #4
  %10 = tail call fastcc i32 @min_ii(i32 noundef %8, i32 noundef %9) #4
  %11 = tail call fastcc i32 @max_ii(i32 noundef %10) #4
  %12 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %11, ptr %12, align 4, !tbaa !34
  br label %31

13:                                               ; preds = %5
  %14 = tail call float @llvm.floor.f32(float %0)
  %15 = fsub float %0, %14
  %16 = fptosi float %14 to i32
  store i32 %16, ptr %3, align 4, !tbaa !34
  %17 = fcmp ugt float %15, 0x3F1A36E2E0000000
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %16, %18
  %20 = select i1 %17, float %15, float 1.000000e+00
  %21 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %19, ptr %21, align 4
  store float %20, ptr %4, align 4, !tbaa !38
  %22 = icmp slt i32 %16, %2
  %23 = icmp slt i32 %19, %2
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %27, label %25

25:                                               ; preds = %13
  %26 = add nsw i32 %2, -1
  store i32 %26, ptr %21, align 4, !tbaa !34
  br label %31

27:                                               ; preds = %13
  %28 = or i32 %19, %16
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  store i32 0, ptr %21, align 4, !tbaa !34
  br label %31

31:                                               ; preds = %7, %30, %25
  %32 = phi i32 [ %26, %25 ], [ 0, %30 ], [ %11, %7 ]
  store i32 %32, ptr %3, align 4, !tbaa !34
  store float 1.000000e+00, ptr %4, align 4, !tbaa !38
  br label %33

33:                                               ; preds = %31, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #1 !PGOFuncName !40 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !41 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #1 !PGOFuncName !42 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!"MOD_meshcache_util.c:max_ii"}
!41 = !{!"MOD_meshcache_util.c:min_ii"}
!42 = !{!"MOD_meshcache_util.c:iroundf"}
