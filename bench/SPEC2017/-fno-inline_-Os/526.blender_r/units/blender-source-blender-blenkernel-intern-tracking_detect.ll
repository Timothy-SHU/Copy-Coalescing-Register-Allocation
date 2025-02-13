; ModuleID = 'blender/source/blender/blenkernel/intern/tracking_detect.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.libmv_DetectOptions = type { i32, i32, i32, i32, i32, ptr, double }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_detect_fast(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.libmv_DetectOptions, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #6
  %11 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  store i32 %4, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 2
  store i32 %6, ptr %12, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 3
  store i32 %5, ptr %13, align 4, !tbaa !42
  call fastcc void @run_configured_detector(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %7, i8 noundef zeroext %8, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @run_configured_detector(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !43 {
  %8 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = tail call ptr @libmv_detectFeaturesFloat(ptr noundef nonnull %9, i32 noundef %13, i32 noundef %15, i32 noundef 4, ptr noundef %6) #8
  br label %27

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = tail call ptr @libmv_detectFeaturesByte(ptr noundef nonnull %19, i32 noundef %23, i32 noundef %25, i32 noundef 4, ptr noundef %6) #8
  br label %27

27:                                               ; preds = %21, %11
  %28 = phi ptr [ %16, %11 ], [ %26, %21 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !50
  tail call fastcc void @detect_retrieve_libmv_features(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %28, i32 noundef %3, i32 noundef %32, i32 noundef %34, ptr noundef %4, i8 noundef zeroext %5) #7
  tail call void @libmv_featuresDestroy(ptr noundef nonnull %28) #8
  br label %35

35:                                               ; preds = %17, %30, %27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_tracking_detect_harris(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.libmv_DetectOptions, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #6
  %11 = getelementptr inbounds i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 24, i1 false)
  store i32 2, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 1
  store i32 %4, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 2
  store i32 %6, ptr %13, align 8, !tbaa !41
  %14 = fpext float %5 to double
  %15 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 6
  store double %14, ptr %15, align 8, !tbaa !53
  call fastcc void @run_configured_detector(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %7, i8 noundef zeroext %8, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #6
  ret void
}

; Function Attrs: optsize
declare ptr @libmv_detectFeaturesFloat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @libmv_detectFeaturesByte(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @detect_retrieve_libmv_features(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !54 {
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = tail call i32 @libmv_countFeatures(ptr noundef %2) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %8
  %16 = sitofp i32 %4 to double
  %17 = sitofp i32 %5 to double
  %18 = icmp eq ptr %6, null
  br label %19

19:                                               ; preds = %15, %41
  %20 = phi i32 [ %13, %15 ], [ %21, %41 ]
  %21 = add nsw i32 %20, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  call void @libmv_getFeature(ptr noundef %2, i32 noundef %21, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %11) #8
  %22 = load double, ptr %9, align 8, !tbaa !55
  %23 = fadd double %22, 5.000000e-01
  %24 = fdiv double %23, %16
  %25 = fptrunc double %24 to float
  %26 = load double, ptr %10, align 8, !tbaa !55
  %27 = fadd double %26, 5.000000e-01
  %28 = fdiv double %27, %17
  %29 = fptrunc double %28 to float
  br i1 %18, label %33, label %30

30:                                               ; preds = %19
  %31 = call fastcc zeroext i8 @check_point_in_layer(ptr noundef nonnull %6, float noundef %25, float noundef %29) #7
  %32 = icmp eq i8 %31, %7
  br i1 %32, label %41, label %33

33:                                               ; preds = %19, %30
  %34 = call ptr @BKE_tracking_track_add(ptr noundef %0, ptr noundef %1, float noundef %25, float noundef %29, i32 noundef %3, i32 noundef %4, i32 noundef %5) #8
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %34, i64 0, i32 13
  %36 = load <2 x i32>, ptr %35, align 8, !tbaa !56
  %37 = or <2 x i32> %36, <i32 1, i32 1>
  store <2 x i32> %37, ptr %35, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %34, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !57
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !57
  br label %41

41:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %42 = icmp eq i32 %21, 0
  br i1 %42, label %43, label %19, !llvm.loop !60

43:                                               ; preds = %41, %8
  ret void
}

; Function Attrs: optsize
declare void @libmv_featuresDestroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @libmv_countFeatures(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @libmv_getFeature(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_point_in_layer(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !62 {
  %4 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %10

7:                                                ; preds = %13
  %8 = load ptr, ptr %11, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !llvm.loop !64

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %11, i64 0, i32 2
  br label %13

13:                                               ; preds = %17, %10
  %14 = phi ptr [ %12, %10 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = icmp eq ptr %15, null
  br i1 %16, label %7, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i8 @check_point_in_stroke(ptr noundef nonnull %15, float noundef %1, float noundef %2) #7, !range !65
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20, !llvm.loop !66

20:                                               ; preds = %7, %17, %3
  %21 = phi i8 [ 0, %3 ], [ 1, %17 ], [ 0, %7 ]
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @BKE_tracking_track_add(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_point_in_stroke(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !67 {
  %4 = getelementptr inbounds %struct.bGPDstroke, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.bGPDstroke, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %3
  %10 = add nsw i32 %7, -1
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %41
  %13 = phi i64 [ 0, %9 ], [ %43, %41 ]
  %14 = phi i32 [ %10, %9 ], [ %44, %41 ]
  %15 = phi i8 [ 0, %9 ], [ %42, %41 ]
  %16 = getelementptr inbounds %struct.bGPDspoint, ptr %5, i64 %13
  %17 = getelementptr inbounds %struct.bGPDspoint, ptr %5, i64 %13, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !71
  %19 = fcmp uge float %18, %2
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds %struct.bGPDspoint, ptr %5, i64 %20, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !71
  %23 = fcmp ult float %22, %2
  %24 = select i1 %19, i1 true, i1 %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = fcmp uge float %22, %2
  %27 = fcmp ult float %18, %2
  %28 = or i1 %27, %26
  br i1 %28, label %41, label %29

29:                                               ; preds = %12, %25
  %30 = fsub float %2, %18
  %31 = getelementptr inbounds %struct.bGPDspoint, ptr %5, i64 %20
  %32 = fsub float %22, %18
  %33 = fdiv float %30, %32
  %34 = load float, ptr %16, align 4, !tbaa !73
  %35 = load float, ptr %31, align 4, !tbaa !73
  %36 = fsub float %35, %34
  %37 = tail call float @llvm.fmuladd.f32(float %33, float %36, float %34)
  %38 = fcmp olt float %37, %1
  %39 = zext i1 %38 to i8
  %40 = add i8 %15, %39
  br label %41

41:                                               ; preds = %29, %25
  %42 = phi i8 [ %40, %29 ], [ %15, %25 ]
  %43 = add nuw nsw i64 %13, 1
  %44 = trunc i64 %13 to i32
  %45 = icmp eq i64 %43, %11
  br i1 %45, label %46, label %12, !llvm.loop !74

46:                                               ; preds = %41
  %47 = and i8 %42, 1
  br label %48

48:                                               ; preds = %46, %3
  %49 = phi i8 [ 0, %3 ], [ %47, %46 ]
  ret i8 %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

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
!34 = !{!35, !36, i64 4}
!35 = !{!"libmv_DetectOptions", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !39, i64 24, !40, i64 32}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"double", !37, i64 0}
!41 = !{!35, !36, i64 8}
!42 = !{!35, !36, i64 12}
!43 = !{!"tracking_detect.c:run_configured_detector"}
!44 = !{!45, !39, i64 48}
!45 = !{!"ImBuf", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !39, i64 40, !39, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !39, i64 88, !39, i64 96, !39, i64 104, !46, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !39, i64 296, !39, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !39, i64 2368, !36, i64 2376, !39, i64 2384, !36, i64 2392, !36, i64 2396, !39, i64 2400, !39, i64 2408, !39, i64 2416, !39, i64 2424, !36, i64 2432, !47, i64 2436, !48, i64 2456}
!46 = !{!"float", !37, i64 0}
!47 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!48 = !{!"DDSData", !36, i64 0, !36, i64 4, !39, i64 8, !36, i64 16}
!49 = !{!45, !36, i64 16}
!50 = !{!45, !36, i64 20}
!51 = !{!45, !39, i64 40}
!52 = !{!35, !36, i64 0}
!53 = !{!35, !40, i64 32}
!54 = !{!"tracking_detect.c:detect_retrieve_libmv_features"}
!55 = !{!40, !40, i64 0}
!56 = !{!36, !36, i64 0}
!57 = !{!58, !36, i64 160}
!58 = !{!"MovieTrackingTrack", !39, i64 0, !39, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !39, i64 128, !37, i64 136, !46, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !59, i64 176, !59, i64 178, !59, i64 180, !59, i64 182, !36, i64 184, !46, i64 188, !39, i64 192, !46, i64 200, !46, i64 204}
!59 = !{!"short", !37, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"tracking_detect.c:check_point_in_layer"}
!63 = !{!39, !39, i64 0}
!64 = distinct !{!64, !61}
!65 = !{i8 0, i8 2}
!66 = distinct !{!66, !61}
!67 = !{!"tracking_detect.c:check_point_in_stroke"}
!68 = !{!69, !39, i64 16}
!69 = !{!"bGPDstroke", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !59, i64 36, !59, i64 38, !40, i64 40}
!70 = !{!69, !36, i64 32}
!71 = !{!72, !46, i64 4}
!72 = !{!"bGPDspoint", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16}
!73 = !{!72, !46, i64 0}
!74 = distinct !{!74, !61}
