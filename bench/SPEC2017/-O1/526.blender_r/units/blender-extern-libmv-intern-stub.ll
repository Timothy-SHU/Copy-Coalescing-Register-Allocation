; ModuleID = 'blender/extern/libmv/intern/stub.cc'
source_filename = "blender/extern/libmv/intern/stub.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.libmv_TrackRegionResult = type { i32, ptr, double }
%struct.libmv_CameraIntrinsicsOptions = type { i32, i32, i32, double, double, double, double, double, double, double, double, double, double }

@.str = private unnamed_addr constant [28 x i8] c"Built without libmv support\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_initLogging(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_startDebugLogging() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_setLoggingVerbosity(i32 noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @libmv_trackRegion(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11) local_unnamed_addr #1 {
  br label %16

13:                                               ; preds = %16
  store i32 -1, ptr %9, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.libmv_TrackRegionResult, ptr %9, i64 0, i32 1
  store ptr @.str, ptr %14, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.libmv_TrackRegionResult, ptr %9, i64 0, i32 2
  store double 0.000000e+00, ptr %15, align 8, !tbaa !42
  ret i32 0

16:                                               ; preds = %12, %16
  %17 = phi i64 [ 0, %12 ], [ %24, %16 ]
  %18 = getelementptr inbounds double, ptr %7, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds double, ptr %10, i64 %17
  store double %19, ptr %20, align 8, !tbaa !43
  %21 = getelementptr inbounds double, ptr %8, i64 %17
  %22 = load double, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds double, ptr %11, i64 %17
  store double %22, ptr %23, align 8, !tbaa !43
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 5
  br i1 %25, label %13, label %16, !llvm.loop !44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_samplePlanarPatchFloat(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readnone %8, ptr nocapture noundef readnone %9, ptr nocapture noundef readnone %10, ptr nocapture noundef readnone %11) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_samplePlanarPatchByte(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readnone %8, ptr nocapture noundef readnone %9, ptr nocapture noundef readnone %10, ptr nocapture noundef readnone %11) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @libmv_tracksNew() local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_tracksInsert(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_tracksDestroy(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @libmv_solveReconstruction(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @libmv_solveModal(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @libmv_reprojectionPointForTrack(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @libmv_reprojectionErrorForTrack(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @libmv_reprojectionErrorForImage(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @libmv_reprojectionCameraForImage(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @libmv_reprojectionError(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_reconstructionDestroy(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @libmv_detectFeaturesByte(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @libmv_detectFeaturesFloat(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @libmv_countFeatures(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @libmv_getFeature(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #2 {
  store double 0.000000e+00, ptr %2, align 8, !tbaa !43
  store double 0.000000e+00, ptr %3, align 8, !tbaa !43
  store double 0.000000e+00, ptr %4, align 8, !tbaa !43
  store double 0.000000e+00, ptr %5, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_featuresDestroy(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @libmv_reconstructionExtractIntrinsics(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @libmv_cameraIntrinsicsNew(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @libmv_cameraIntrinsicsCopy(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_cameraIntrinsicsDestroy(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_cameraIntrinsicsUpdate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @libmv_cameraIntrinsicsSetThreads(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @libmv_cameraIntrinsicsExtractOptions(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %3 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %1, i64 0, i32 3
  store double 1.000000e+00, ptr %3, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @libmv_cameraIntrinsicsUndistortByte(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #4 {
  %8 = mul i32 %3, %2
  %9 = mul i32 %8, %5
  %10 = sext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %1, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @libmv_cameraIntrinsicsUndistortFloat(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #4 {
  %8 = mul i32 %3, %2
  %9 = mul i32 %8, %5
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %1, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @libmv_cameraIntrinsicsDistortByte(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #4 {
  %8 = mul i32 %3, %2
  %9 = mul i32 %8, %5
  %10 = sext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %1, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @libmv_cameraIntrinsicsDistortFloat(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #4 {
  %8 = mul i32 %3, %2
  %9 = mul i32 %8, %5
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %1, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @libmv_cameraIntrinsicsApply(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %0, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %0, i64 0, i32 4
  %9 = load double, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %0, i64 0, i32 5
  %11 = load double, ptr %10, align 8, !tbaa !50
  %12 = tail call double @llvm.fmuladd.f64(double %1, double %7, double %9)
  store double %12, ptr %3, align 8, !tbaa !43
  %13 = tail call double @llvm.fmuladd.f64(double %2, double %7, double %11)
  store double %13, ptr %4, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @libmv_cameraIntrinsicsInvert(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %0, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %0, i64 0, i32 4
  %9 = load double, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.libmv_CameraIntrinsicsOptions, ptr %0, i64 0, i32 5
  %11 = load double, ptr %10, align 8, !tbaa !50
  %12 = fsub double %1, %9
  %13 = fdiv double %12, %7
  store double %13, ptr %3, align 8, !tbaa !43
  %14 = fsub double %2, %11
  %15 = fdiv double %14, %7
  store double %15, ptr %4, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @libmv_homography2DFromCorrespondencesEuc(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  store double 1.000000e+00, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds [3 x double], ptr %3, i64 1, i64 1
  store double 1.000000e+00, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds [3 x double], ptr %3, i64 2, i64 2
  store double 1.000000e+00, ptr %6, align 8, !tbaa !43
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTS23libmv_TrackRegionResult", !36, i64 0, !39, i64 8, !40, i64 16}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"double", !37, i64 0}
!41 = !{!35, !39, i64 8}
!42 = !{!35, !40, i64 16}
!43 = !{!40, !40, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !40, i64 16}
!48 = !{!"_ZTS29libmv_CameraIntrinsicsOptions", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88}
!49 = !{!48, !40, i64 24}
!50 = !{!48, !40, i64 32}
