; ModuleID = 'blender/source/blender/blenkernel/intern/tracking_detect.c'
source_filename = "blender/source/blender/blenkernel/intern/tracking_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.libmv_DetectOptions = type { i32, i32, i32, i32, i32, ptr, double }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.bGPDspoint = type { float, float, float, float, float }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_detect_fast(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.libmv_DetectOptions, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #5
  %11 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  store i32 %4, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 2
  store i32 %6, ptr %12, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 3
  store i32 %5, ptr %13, align 4, !tbaa !42
  call fastcc void @run_configured_detector(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %7, i8 noundef zeroext %8, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @run_configured_detector(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef readonly %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !49
  %20 = tail call ptr @libmv_detectFeaturesFloat(ptr noundef nonnull %13, i32 noundef %17, i32 noundef %19, i32 noundef 4, ptr noundef %6) #5
  br label %31

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !49
  %30 = tail call ptr @libmv_detectFeaturesByte(ptr noundef nonnull %23, i32 noundef %27, i32 noundef %29, i32 noundef 4, ptr noundef %6) #5
  br label %31

31:                                               ; preds = %21, %25, %15
  %32 = phi ptr [ %20, %15 ], [ %30, %25 ], [ null, %21 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %146, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !49
  %39 = tail call i32 @libmv_countFeatures(ptr noundef nonnull %32) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %145, label %41

41:                                               ; preds = %34
  %42 = sitofp i32 %36 to double
  %43 = sitofp i32 %38 to double
  %44 = icmp eq ptr %4, null
  %45 = getelementptr inbounds %struct.bGPDlayer, ptr %4, i64 0, i32 2
  br label %46

46:                                               ; preds = %41, %143
  %47 = phi i32 [ %39, %41 ], [ %48, %143 ]
  %48 = add nsw i32 %47, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  call void @libmv_getFeature(ptr noundef nonnull %32, i32 noundef %48, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10) #5
  %49 = load double, ptr %8, align 8, !tbaa !51
  %50 = fadd double %49, 5.000000e-01
  %51 = fdiv double %50, %42
  %52 = fptrunc double %51 to float
  %53 = load double, ptr %9, align 8, !tbaa !51
  %54 = fadd double %53, 5.000000e-01
  %55 = fdiv double %54, %43
  %56 = fptrunc double %55 to float
  br i1 %44, label %129, label %57

57:                                               ; preds = %46
  %58 = load ptr, ptr %45, align 8, !tbaa !52
  br label %59

59:                                               ; preds = %123, %57
  %60 = phi ptr [ %58, %57 ], [ %124, %123 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %125, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.bGPDframe, ptr %60, i64 0, i32 2
  br label %64

64:                                               ; preds = %117, %62
  %65 = phi ptr [ %63, %62 ], [ %66, %117 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  %67 = icmp eq ptr %66, null
  br i1 %67, label %121, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bGPDstroke, ptr %66, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  %71 = getelementptr inbounds %struct.bGPDstroke, ptr %66, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !59
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %117

74:                                               ; preds = %68
  %75 = add nsw i32 %72, -1
  %76 = zext nneg i32 %72 to i64
  br label %77

77:                                               ; preds = %74, %112
  %78 = phi i64 [ 0, %74 ], [ %114, %112 ]
  %79 = phi i32 [ %75, %74 ], [ %115, %112 ]
  %80 = phi i32 [ 0, %74 ], [ %113, %112 ]
  %81 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 %78
  %82 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 %78, i32 1
  %83 = load float, ptr %82, align 4, !tbaa !60
  %84 = fcmp olt float %83, %56
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = sext i32 %79 to i64
  %87 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 %86, i32 1
  %88 = load float, ptr %87, align 4, !tbaa !60
  %89 = fcmp ult float %88, %56
  br i1 %89, label %90, label %97

90:                                               ; preds = %85, %77
  %91 = sext i32 %79 to i64
  %92 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 %91, i32 1
  %93 = load float, ptr %92, align 4, !tbaa !60
  %94 = fcmp uge float %93, %56
  %95 = fcmp ult float %83, %56
  %96 = or i1 %95, %94
  br i1 %96, label %112, label %97

97:                                               ; preds = %90, %85
  %98 = fsub float %56, %83
  %99 = sext i32 %79 to i64
  %100 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 %99
  %101 = getelementptr inbounds %struct.bGPDspoint, ptr %70, i64 %99, i32 1
  %102 = load float, ptr %101, align 4, !tbaa !60
  %103 = fsub float %102, %83
  %104 = fdiv float %98, %103
  %105 = load float, ptr %81, align 4, !tbaa !62
  %106 = load float, ptr %100, align 4, !tbaa !62
  %107 = fsub float %106, %105
  %108 = call float @llvm.fmuladd.f32(float %104, float %107, float %105)
  %109 = fcmp olt float %108, %52
  %110 = zext i1 %109 to i32
  %111 = add nsw i32 %80, %110
  br label %112

112:                                              ; preds = %97, %90
  %113 = phi i32 [ %111, %97 ], [ %80, %90 ]
  %114 = add nuw nsw i64 %78, 1
  %115 = trunc i64 %78 to i32
  %116 = icmp eq i64 %114, %76
  br i1 %116, label %117, label %77, !llvm.loop !63

117:                                              ; preds = %112, %68
  %118 = phi i32 [ 0, %68 ], [ %113, %112 ]
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %64, label %123, !llvm.loop !66

121:                                              ; preds = %64
  %122 = load ptr, ptr %60, align 8, !tbaa !67
  br label %123

123:                                              ; preds = %117, %121
  %124 = phi ptr [ %122, %121 ], [ %60, %117 ]
  br i1 %67, label %59, label %125, !llvm.loop !69

125:                                              ; preds = %123, %59
  %126 = phi i8 [ 1, %123 ], [ 0, %59 ]
  %127 = icmp ne i8 %126, %5
  %128 = zext i1 %127 to i8
  br label %129

129:                                              ; preds = %125, %46
  %130 = phi i8 [ %128, %125 ], [ 1, %46 ]
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %129
  %133 = call ptr @BKE_tracking_track_add(ptr noundef %0, ptr noundef %1, float noundef %52, float noundef %56, i32 noundef %3, i32 noundef %36, i32 noundef %38) #5
  %134 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %133, i64 0, i32 13
  %135 = load i32, ptr %134, align 8, !tbaa !70
  %136 = or i32 %135, 1
  store i32 %136, ptr %134, align 8, !tbaa !70
  %137 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %133, i64 0, i32 14
  %138 = load i32, ptr %137, align 4, !tbaa !72
  %139 = or i32 %138, 1
  store i32 %139, ptr %137, align 4, !tbaa !72
  %140 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %133, i64 0, i32 15
  %141 = load i32, ptr %140, align 8, !tbaa !73
  %142 = or i32 %141, 1
  store i32 %142, ptr %140, align 8, !tbaa !73
  br label %143

143:                                              ; preds = %132, %129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  %144 = icmp eq i32 %48, 0
  br i1 %144, label %145, label %46, !llvm.loop !74

145:                                              ; preds = %143, %34
  call void @libmv_featuresDestroy(ptr noundef nonnull %32) #5
  br label %146

146:                                              ; preds = %145, %31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_tracking_detect_harris(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.libmv_DetectOptions, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  store i32 2, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 1
  store i32 %4, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 2
  store i32 %6, ptr %12, align 8, !tbaa !41
  %13 = fpext float %5 to double
  %14 = getelementptr inbounds %struct.libmv_DetectOptions, ptr %10, i64 0, i32 6
  store double %13, ptr %14, align 8, !tbaa !76
  call fastcc void @run_configured_detector(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %7, i8 noundef zeroext %8, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #5
  ret void
}

declare ptr @libmv_detectFeaturesFloat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @libmv_detectFeaturesByte(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @libmv_featuresDestroy(ptr noundef) local_unnamed_addr #3

declare i32 @libmv_countFeatures(ptr noundef) local_unnamed_addr #3

declare void @libmv_getFeature(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_tracking_track_add(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = !{!35, !36, i64 4}
!35 = !{!"libmv_DetectOptions", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !39, i64 24, !40, i64 32}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"double", !37, i64 0}
!41 = !{!35, !36, i64 8}
!42 = !{!35, !36, i64 12}
!43 = !{!44, !39, i64 48}
!44 = !{!"ImBuf", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !39, i64 40, !39, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !39, i64 88, !39, i64 96, !39, i64 104, !45, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !39, i64 296, !39, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !39, i64 2368, !36, i64 2376, !39, i64 2384, !36, i64 2392, !36, i64 2396, !39, i64 2400, !39, i64 2408, !39, i64 2416, !39, i64 2424, !36, i64 2432, !46, i64 2436, !47, i64 2456}
!45 = !{!"float", !37, i64 0}
!46 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!47 = !{!"DDSData", !36, i64 0, !36, i64 4, !39, i64 8, !36, i64 16}
!48 = !{!44, !36, i64 16}
!49 = !{!44, !36, i64 20}
!50 = !{!44, !39, i64 40}
!51 = !{!40, !40, i64 0}
!52 = !{!53, !39, i64 16}
!53 = !{!"bGPDlayer", !39, i64 0, !39, i64 8, !54, i64 16, !39, i64 32, !36, i64 40, !55, i64 44, !55, i64 46, !37, i64 48, !37, i64 64}
!54 = !{!"ListBase", !39, i64 0, !39, i64 8}
!55 = !{!"short", !37, i64 0}
!56 = !{!39, !39, i64 0}
!57 = !{!58, !39, i64 16}
!58 = !{!"bGPDstroke", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !55, i64 36, !55, i64 38, !40, i64 40}
!59 = !{!58, !36, i64 32}
!60 = !{!61, !45, i64 4}
!61 = !{!"bGPDspoint", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16}
!62 = !{!61, !45, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
!67 = !{!68, !39, i64 0}
!68 = !{!"bGPDframe", !39, i64 0, !39, i64 8, !54, i64 16, !36, i64 32, !36, i64 36}
!69 = distinct !{!69, !64, !65}
!70 = !{!71, !36, i64 152}
!71 = !{!"MovieTrackingTrack", !39, i64 0, !39, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !39, i64 128, !37, i64 136, !45, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !55, i64 176, !55, i64 178, !55, i64 180, !55, i64 182, !36, i64 184, !45, i64 188, !39, i64 192, !45, i64 200, !45, i64 204}
!72 = !{!71, !36, i64 156}
!73 = !{!71, !36, i64 160}
!74 = distinct !{!74, !64, !65}
!75 = !{!35, !36, i64 0}
!76 = !{!35, !40, i64 32}
