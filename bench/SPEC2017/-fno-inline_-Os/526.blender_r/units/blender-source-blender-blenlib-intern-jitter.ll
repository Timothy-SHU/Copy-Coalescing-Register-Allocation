; ModuleID = 'blender/source/blender/blenlib/intern/jitter.c'
source_filename = "blender/source/blender/blenlib/intern/jitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"initjit\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BLI_jitterate1(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %104

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = zext nneg i32 %7 to i64
  br label %9

9:                                                ; preds = %96, %6
  %10 = phi i64 [ %8, %6 ], [ %102, %96 ]
  %11 = getelementptr inbounds [2 x float], ptr %0, i64 %10
  %12 = load <2 x float>, ptr %11, align 4, !tbaa !34
  br label %13

13:                                               ; preds = %9, %92
  %14 = phi i64 [ %8, %9 ], [ %94, %92 ]
  %15 = phi <2 x float> [ zeroinitializer, %9 ], [ %93, %92 ]
  %16 = icmp eq i64 %10, %14
  br i1 %16, label %92, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [2 x float], ptr %0, i64 %14
  %19 = load <2 x float>, ptr %18, align 4, !tbaa !34
  %20 = fsub <2 x float> %19, %12
  %21 = fadd <2 x float> %20, <float -1.000000e+00, float -1.000000e+00>
  br label %22

22:                                               ; preds = %17, %86
  %23 = phi i32 [ 3, %17 ], [ %90, %86 ]
  %24 = phi <2 x float> [ %15, %17 ], [ %87, %86 ]
  %25 = phi <2 x float> [ %21, %17 ], [ %89, %86 ]
  %26 = extractelement <2 x float> %25, i64 0
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fcmp olt float %27, %3
  %29 = extractelement <2 x float> %25, i64 1
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp olt float %30, %3
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %46

33:                                               ; preds = %22
  %34 = fmul float %29, %29
  %35 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %34)
  %36 = tail call float @llvm.sqrt.f32(float %35)
  %37 = fcmp ogt float %36, 0.000000e+00
  %38 = fcmp olt float %36, %3
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = fdiv float %36, %3
  %42 = insertelement <2 x float> poison, float %41, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = fdiv <2 x float> %25, %43
  %45 = fadd <2 x float> %24, %44
  br label %46

46:                                               ; preds = %33, %40, %22
  %47 = phi <2 x float> [ %45, %40 ], [ %24, %33 ], [ %24, %22 ]
  %48 = fadd float %26, 1.000000e+00
  %49 = tail call float @llvm.fabs.f32(float %48)
  %50 = fcmp olt float %49, %3
  %51 = select i1 %50, i1 %31, i1 false
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = fmul float %29, %29
  %54 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %53)
  %55 = tail call float @llvm.sqrt.f32(float %54)
  %56 = fcmp ogt float %55, 0.000000e+00
  %57 = fcmp olt float %55, %3
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = fdiv float %55, %3
  %61 = insertelement <2 x float> %25, float %48, i64 0
  %62 = insertelement <2 x float> poison, float %60, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fdiv <2 x float> %61, %63
  %65 = fadd <2 x float> %64, %47
  br label %66

66:                                               ; preds = %52, %59, %46
  %67 = phi <2 x float> [ %65, %59 ], [ %47, %52 ], [ %47, %46 ]
  %68 = fadd float %48, 1.000000e+00
  %69 = tail call float @llvm.fabs.f32(float %68)
  %70 = fcmp olt float %69, %3
  %71 = select i1 %70, i1 %31, i1 false
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = fmul float %29, %29
  %74 = tail call float @llvm.fmuladd.f32(float %68, float %68, float %73)
  %75 = tail call float @llvm.sqrt.f32(float %74)
  %76 = fcmp ogt float %75, 0.000000e+00
  %77 = fcmp olt float %75, %3
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = fdiv float %75, %3
  %81 = insertelement <2 x float> %25, float %68, i64 0
  %82 = insertelement <2 x float> poison, float %80, i64 0
  %83 = shufflevector <2 x float> %82, <2 x float> poison, <2 x i32> zeroinitializer
  %84 = fdiv <2 x float> %81, %83
  %85 = fadd <2 x float> %84, %67
  br label %86

86:                                               ; preds = %72, %79, %66
  %87 = phi <2 x float> [ %85, %79 ], [ %67, %72 ], [ %67, %66 ]
  %88 = insertelement <2 x float> %25, float %68, i64 0
  %89 = fadd <2 x float> %88, <float -2.000000e+00, float 1.000000e+00>
  %90 = add nsw i32 %23, -1
  %91 = icmp ugt i32 %23, 1
  br i1 %91, label %22, label %92, !llvm.loop !38

92:                                               ; preds = %86, %13
  %93 = phi <2 x float> [ %15, %13 ], [ %87, %86 ]
  %94 = add nsw i64 %14, -1
  %95 = icmp sgt i64 %14, 0
  br i1 %95, label %13, label %96, !llvm.loop !40

96:                                               ; preds = %92
  %97 = fdiv <2 x float> %93, <float 1.800000e+01, float 1.800000e+01>
  %98 = getelementptr inbounds [2 x float], ptr %1, i64 %10
  %99 = fsub <2 x float> %12, %97
  %100 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %99)
  %101 = fsub <2 x float> %99, %100
  store <2 x float> %101, ptr %98, align 4, !tbaa !34
  %102 = add nsw i64 %10, -1
  %103 = icmp sgt i64 %10, 0
  br i1 %103, label %9, label %104, !llvm.loop !41

104:                                              ; preds = %96, %4
  %105 = shl i32 %2, 1
  %106 = zext i32 %105 to i64
  %107 = shl nuw nsw i64 %106, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %107, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BLI_jitterate2(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %67

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = zext nneg i32 %7 to i64
  %9 = insertelement <2 x float> poison, float %3, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %59, %6
  %12 = phi i64 [ %8, %6 ], [ %65, %59 ]
  %13 = getelementptr inbounds [2 x float], ptr %0, i64 %12
  %14 = load <2 x float>, ptr %13, align 4, !tbaa !34
  %15 = extractelement <2 x float> %14, i64 0
  %16 = extractelement <2 x float> %14, i64 1
  br label %17

17:                                               ; preds = %11, %55
  %18 = phi i64 [ %8, %11 ], [ %57, %55 ]
  %19 = phi <2 x float> [ zeroinitializer, %11 ], [ %56, %55 ]
  %20 = icmp eq i64 %12, %18
  br i1 %20, label %55, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [2 x float], ptr %0, i64 %18
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fsub float %23, %15
  %25 = fadd float %24, -1.000000e+00
  %26 = getelementptr inbounds [2 x float], ptr %0, i64 %18, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fsub float %27, %16
  %29 = tail call float @llvm.fabs.f32(float %25)
  %30 = fcmp olt float %29, %3
  %31 = extractelement <2 x float> %19, i64 0
  %32 = tail call float @llvm.fmuladd.f32(float %25, float %3, float %31)
  %33 = select i1 %30, float %32, float %31
  %34 = insertelement <2 x float> poison, float %25, i64 0
  %35 = insertelement <2 x float> %34, float %28, i64 1
  %36 = fadd <2 x float> %35, <float 1.000000e+00, float -1.000000e+00>
  %37 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %36)
  %38 = fcmp olt <2 x float> %37, %10
  %39 = insertelement <2 x float> %19, float %33, i64 0
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %10, <2 x float> %39)
  %41 = select <2 x i1> %38, <2 x float> %40, <2 x float> %39
  %42 = fadd <2 x float> %36, <float 1.000000e+00, float 1.000000e+00>
  %43 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %42)
  %44 = fcmp olt <2 x float> %43, %10
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %10, <2 x float> %41)
  %46 = select <2 x i1> %44, <2 x float> %45, <2 x float> %41
  %47 = extractelement <2 x float> %42, i64 1
  %48 = fadd float %47, 1.000000e+00
  %49 = tail call float @llvm.fabs.f32(float %48)
  %50 = fcmp olt float %49, %3
  br i1 %50, label %51, label %55

51:                                               ; preds = %21
  %52 = extractelement <2 x float> %46, i64 1
  %53 = tail call float @llvm.fmuladd.f32(float %48, float %3, float %52)
  %54 = insertelement <2 x float> %46, float %53, i64 1
  br label %55

55:                                               ; preds = %17, %51, %21
  %56 = phi <2 x float> [ %54, %51 ], [ %46, %21 ], [ %19, %17 ]
  %57 = add nsw i64 %18, -1
  %58 = icmp sgt i64 %18, 0
  br i1 %58, label %17, label %59, !llvm.loop !42

59:                                               ; preds = %55
  %60 = fmul <2 x float> %56, <float 5.000000e-01, float 5.000000e-01>
  %61 = getelementptr inbounds [2 x float], ptr %1, i64 %12
  %62 = fsub <2 x float> %14, %60
  %63 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %62)
  %64 = fsub <2 x float> %62, %63
  store <2 x float> %64, ptr %61, align 4, !tbaa !34
  %65 = add nsw i64 %12, -1
  %66 = icmp sgt i64 %12, 0
  br i1 %66, label %11, label %67, !llvm.loop !43

67:                                               ; preds = %59, %4
  %68 = zext i32 %2 to i64
  %69 = shl nuw nsw i64 %68, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %69, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_jitter_init(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = sitofp i32 %1 to float
  %6 = tail call float @sqrtf(float noundef %5) #7
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %8 = zext i32 %1 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = add nuw nsw i64 %9, 12
  %11 = tail call ptr %7(i64 noundef %10, ptr noundef nonnull @.str) #7
  %12 = fdiv float 1.000000e+00, %6
  %13 = fdiv float 1.000000e+00, %5
  %14 = fdiv float %6, %5
  %15 = add i32 %1, 31415926
  %16 = tail call ptr @BLI_rng_new(i32 noundef %15) #7
  %17 = icmp sgt i32 %1, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %4, %18
  %19 = phi i64 [ %37, %18 ], [ 0, %4 ]
  %20 = phi float [ %36, %18 ], [ 0.000000e+00, %4 ]
  %21 = tail call double @BLI_rng_get_double(ptr noundef %16) #7
  %22 = fsub double 5.000000e-01, %21
  %23 = fptrunc double %22 to float
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %23, float %20)
  %25 = getelementptr inbounds [2 x float], ptr %0, i64 %19
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = trunc i64 %19 to i32
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %27, %5
  %29 = tail call double @BLI_rng_get_double(ptr noundef %16) #7
  %30 = fsub double 5.000000e-01, %29
  %31 = fptrunc double %30 to float
  %32 = tail call float @llvm.fmuladd.f32(float %12, float %31, float %28)
  %33 = getelementptr inbounds [2 x float], ptr %0, i64 %19, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = fadd float %14, %20
  %35 = tail call float @llvm.floor.f32(float %34)
  %36 = fsub float %34, %35
  %37 = add nuw nsw i64 %19, 1
  %38 = icmp eq i64 %37, %8
  br i1 %38, label %39, label %18, !llvm.loop !46

39:                                               ; preds = %18, %4
  tail call void @BLI_rng_free(ptr noundef %16) #7
  br label %40

40:                                               ; preds = %39, %40
  %41 = phi i32 [ 0, %39 ], [ %42, %40 ]
  tail call void @BLI_jitterate1(ptr noundef %0, ptr noundef %11, i32 noundef %1, float noundef %12) #8
  tail call void @BLI_jitterate1(ptr noundef %0, ptr noundef %11, i32 noundef %1, float noundef %12) #8
  tail call void @BLI_jitterate2(ptr noundef %0, ptr noundef %11, i32 noundef %1, float noundef %13) #8
  %42 = add nuw nsw i32 %41, 1
  %43 = icmp eq i32 %42, 24
  br i1 %43, label %44, label %40, !llvm.loop !47

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %45(ptr noundef %11) #7
  br i1 %17, label %46, label %53

46:                                               ; preds = %44, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %44 ]
  %48 = getelementptr inbounds [2 x float], ptr %0, i64 %47
  %49 = load <2 x float>, ptr %48, align 4, !tbaa !34
  %50 = fadd <2 x float> %49, <float -5.000000e-01, float -5.000000e-01>
  store <2 x float> %50, ptr %48, align 4, !tbaa !34
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, %8
  br i1 %52, label %53, label %46, !llvm.loop !48

53:                                               ; preds = %46, %44, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare double @BLI_rng_get_double(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !36, i64 0}
!46 = distinct !{!46, !39}
!47 = distinct !{!47, !39}
!48 = distinct !{!48, !39}
