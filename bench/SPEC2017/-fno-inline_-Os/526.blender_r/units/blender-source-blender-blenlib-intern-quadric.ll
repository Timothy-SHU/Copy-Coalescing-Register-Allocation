; ModuleID = 'blender/source/blender/blenlib/intern/quadric.c'
source_filename = "blender/source/blender/blenlib/intern/quadric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Quadric = type { float, float, float, float, float, float, float, float, float, float }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_quadric_from_v3_dist(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %4
  store float %5, ptr %0, align 4, !tbaa !38
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %7
  %9 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !40
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %11
  %13 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 7
  store float %12, ptr %13, align 4, !tbaa !41
  %14 = load float, ptr %1, align 4, !tbaa !34
  %15 = load float, ptr %6, align 4, !tbaa !34
  %16 = fmul float %14, %15
  %17 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 1
  store float %16, ptr %17, align 4, !tbaa !42
  %18 = load float, ptr %1, align 4, !tbaa !34
  %19 = load float, ptr %10, align 4, !tbaa !34
  %20 = fmul float %18, %19
  %21 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 2
  store float %20, ptr %21, align 4, !tbaa !43
  %22 = load float, ptr %6, align 4, !tbaa !34
  %23 = load float, ptr %10, align 4, !tbaa !34
  %24 = fmul float %22, %23
  %25 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 5
  store float %24, ptr %25, align 4, !tbaa !44
  %26 = load float, ptr %1, align 4, !tbaa !34
  %27 = fmul float %26, %2
  %28 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 3
  store float %27, ptr %28, align 4, !tbaa !45
  %29 = load float, ptr %6, align 4, !tbaa !34
  %30 = fmul float %29, %2
  %31 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 6
  store float %30, ptr %31, align 4, !tbaa !46
  %32 = load float, ptr %10, align 4, !tbaa !34
  %33 = fmul float %32, %2
  %34 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 8
  store float %33, ptr %34, align 4, !tbaa !47
  %35 = fmul float %2, %2
  %36 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 9
  store float %35, ptr %36, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_quadric_to_tensor_m3(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !38
  store float %3, ptr %1, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = load float, ptr %4, align 4, !tbaa !42
  %11 = getelementptr inbounds [3 x float], ptr %1, i64 1
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 4
  %13 = load float, ptr %12, align 4, !tbaa !40
  %14 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 5
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = getelementptr inbounds [3 x float], ptr %1, i64 1, i64 2
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = load float, ptr %7, align 4, !tbaa !43
  %19 = getelementptr inbounds [3 x float], ptr %1, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = load float, ptr %15, align 4, !tbaa !44
  %21 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 7
  %23 = load float, ptr %22, align 4, !tbaa !41
  %24 = getelementptr inbounds [3 x float], ptr %1, i64 2, i64 2
  store float %23, ptr %24, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_quadric_to_vector_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 4, !tbaa !45
  store float %4, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 6
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds float, ptr %1, i64 2
  store float %9, ptr %10, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_quadric_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_quadric_add_qu_qu(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call void @add_vn_vn(ptr noundef %0, ptr noundef %1, i32 noundef 10) #8
  ret void
}

; Function Attrs: optsize
declare void @add_vn_vn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_quadric_add_qu_ququ(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @add_vn_vnvn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 10) #8
  ret void
}

; Function Attrs: optsize
declare void @add_vn_vnvn(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_quadric_mul(ptr noundef %0, float noundef %1) local_unnamed_addr #3 {
  tail call void @mul_vn_fl(ptr noundef %0, i32 noundef 10, float noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @mul_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @BLI_quadric_evaluate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fmul float %3, %3
  %5 = load float, ptr %0, align 4, !tbaa !38
  %6 = fmul float %3, 2.000000e+00
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %12)
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %6, %15
  %17 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !43
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %13)
  %20 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !45
  %22 = tail call float @llvm.fmuladd.f32(float %6, float %21, float %19)
  %23 = fmul float %8, %8
  %24 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 4
  %25 = load float, ptr %24, align 4, !tbaa !40
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %25, float %22)
  %27 = fmul float %8, 2.000000e+00
  %28 = fmul float %27, %15
  %29 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 4, !tbaa !44
  %31 = tail call float @llvm.fmuladd.f32(float %28, float %30, float %26)
  %32 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 6
  %33 = load float, ptr %32, align 4, !tbaa !46
  %34 = tail call float @llvm.fmuladd.f32(float %27, float %33, float %31)
  %35 = fmul float %15, %15
  %36 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 7
  %37 = load float, ptr %36, align 4, !tbaa !41
  %38 = tail call float @llvm.fmuladd.f32(float %35, float %37, float %34)
  %39 = fmul float %15, 2.000000e+00
  %40 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !47
  %42 = tail call float @llvm.fmuladd.f32(float %39, float %41, float %38)
  %43 = getelementptr inbounds %struct.Quadric, ptr %0, i64 0, i32 9
  %44 = load float, ptr %43, align 4, !tbaa !48
  %45 = fadd float %42, %44
  ret float %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BLI_quadric_optimize(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #3 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  call void @BLI_quadric_to_tensor_m3(ptr noundef %0, ptr noundef nonnull %4) #10
  %5 = call zeroext i8 @invert_m3_ex(ptr noundef nonnull %4, float noundef %2) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call void @BLI_quadric_to_vector_v3(ptr noundef %0, ptr noundef %1) #10
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef %1) #8
  call fastcc void @negate_v3(ptr noundef %1) #10
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi i8 [ 1, %7 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  ret i8 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare zeroext i8 @invert_m3_ex(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !49 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"Quadric", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!40 = !{!39, !35, i64 16}
!41 = !{!39, !35, i64 28}
!42 = !{!39, !35, i64 4}
!43 = !{!39, !35, i64 8}
!44 = !{!39, !35, i64 20}
!45 = !{!39, !35, i64 12}
!46 = !{!39, !35, i64 24}
!47 = !{!39, !35, i64 32}
!48 = !{!39, !35, i64 36}
!49 = !{!"quadric.c:negate_v3"}
