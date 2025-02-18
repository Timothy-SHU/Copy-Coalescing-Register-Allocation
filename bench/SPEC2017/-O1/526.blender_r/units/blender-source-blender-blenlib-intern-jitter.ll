; ModuleID = 'blender/source/blender/blenlib/intern/jitter.c'
source_filename = "blender/source/blender/blenlib/intern/jitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"initjit\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_jitterate1(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %118

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %6, %105
  %10 = phi i64 [ %8, %6 ], [ %116, %105 ]
  %11 = getelementptr inbounds [2 x float], ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [2 x float], ptr %0, i64 %10, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %9, %100
  %16 = phi i64 [ %8, %9 ], [ %103, %100 ]
  %17 = phi float [ 0.000000e+00, %9 ], [ %102, %100 ]
  %18 = phi float [ 0.000000e+00, %9 ], [ %101, %100 ]
  %19 = icmp eq i64 %10, %16
  br i1 %19, label %100, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [2 x float], ptr %0, i64 %16
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fsub float %22, %12
  %24 = fadd float %23, -1.000000e+00
  %25 = getelementptr inbounds [2 x float], ptr %0, i64 %16, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %26, %14
  %28 = fadd float %27, -1.000000e+00
  br label %29

29:                                               ; preds = %20, %93
  %30 = phi float [ %17, %20 ], [ %95, %93 ]
  %31 = phi float [ %18, %20 ], [ %94, %93 ]
  %32 = phi float [ %28, %20 ], [ %97, %93 ]
  %33 = phi float [ %24, %20 ], [ %96, %93 ]
  %34 = phi i32 [ 3, %20 ], [ %98, %93 ]
  %35 = tail call float @llvm.fabs.f32(float %33)
  %36 = fcmp olt float %35, %3
  %37 = tail call float @llvm.fabs.f32(float %32)
  %38 = fcmp olt float %37, %3
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %53

40:                                               ; preds = %29
  %41 = fmul float %32, %32
  %42 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %41)
  %43 = tail call float @sqrtf(float noundef %42) #7
  %44 = fcmp ogt float %43, 0.000000e+00
  %45 = fcmp olt float %43, %3
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = fdiv float %43, %3
  %49 = fdiv float %33, %48
  %50 = fadd float %31, %49
  %51 = fdiv float %32, %48
  %52 = fadd float %30, %51
  br label %53

53:                                               ; preds = %40, %47, %29
  %54 = phi float [ %50, %47 ], [ %31, %40 ], [ %31, %29 ]
  %55 = phi float [ %52, %47 ], [ %30, %40 ], [ %30, %29 ]
  %56 = fadd float %33, 1.000000e+00
  %57 = tail call float @llvm.fabs.f32(float %56)
  %58 = fcmp olt float %57, %3
  %59 = select i1 %58, i1 %38, i1 false
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = fmul float %32, %32
  %62 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %61)
  %63 = tail call float @sqrtf(float noundef %62) #7
  %64 = fcmp ogt float %63, 0.000000e+00
  %65 = fcmp olt float %63, %3
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = fdiv float %63, %3
  %69 = fdiv float %56, %68
  %70 = fadd float %54, %69
  %71 = fdiv float %32, %68
  %72 = fadd float %55, %71
  br label %73

73:                                               ; preds = %60, %67, %53
  %74 = phi float [ %70, %67 ], [ %54, %60 ], [ %54, %53 ]
  %75 = phi float [ %72, %67 ], [ %55, %60 ], [ %55, %53 ]
  %76 = fadd float %56, 1.000000e+00
  %77 = tail call float @llvm.fabs.f32(float %76)
  %78 = fcmp olt float %77, %3
  %79 = select i1 %78, i1 %38, i1 false
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = fmul float %32, %32
  %82 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %81)
  %83 = tail call float @sqrtf(float noundef %82) #7
  %84 = fcmp ogt float %83, 0.000000e+00
  %85 = fcmp olt float %83, %3
  %86 = and i1 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = fdiv float %83, %3
  %89 = fdiv float %76, %88
  %90 = fadd float %74, %89
  %91 = fdiv float %32, %88
  %92 = fadd float %75, %91
  br label %93

93:                                               ; preds = %80, %87, %73
  %94 = phi float [ %90, %87 ], [ %74, %80 ], [ %74, %73 ]
  %95 = phi float [ %92, %87 ], [ %75, %80 ], [ %75, %73 ]
  %96 = fadd float %76, -2.000000e+00
  %97 = fadd float %32, 1.000000e+00
  %98 = add nsw i32 %34, -1
  %99 = icmp ugt i32 %34, 1
  br i1 %99, label %29, label %100, !llvm.loop !38

100:                                              ; preds = %93, %15
  %101 = phi float [ %18, %15 ], [ %94, %93 ]
  %102 = phi float [ %17, %15 ], [ %95, %93 ]
  %103 = add nsw i64 %16, -1
  %104 = icmp sgt i64 %16, 0
  br i1 %104, label %15, label %105, !llvm.loop !41

105:                                              ; preds = %100
  %106 = fdiv float %101, 1.800000e+01
  %107 = fsub float %12, %106
  %108 = fdiv float %102, 1.800000e+01
  %109 = fsub float %14, %108
  %110 = tail call float @llvm.floor.f32(float %107)
  %111 = fsub float %107, %110
  %112 = tail call float @llvm.floor.f32(float %109)
  %113 = fsub float %109, %112
  %114 = getelementptr inbounds [2 x float], ptr %1, i64 %10
  store float %111, ptr %114, align 4, !tbaa !34
  %115 = getelementptr inbounds [2 x float], ptr %1, i64 %10, i64 1
  store float %113, ptr %115, align 4, !tbaa !34
  %116 = add nsw i64 %10, -1
  %117 = icmp sgt i64 %10, 0
  br i1 %117, label %9, label %118, !llvm.loop !42

118:                                              ; preds = %105, %4
  %119 = shl i32 %2, 1
  %120 = zext i32 %119 to i64
  %121 = shl nuw nsw i64 %120, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %121, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BLI_jitterate2(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #4 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %75

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %6, %62
  %10 = phi i64 [ %8, %6 ], [ %73, %62 ]
  %11 = getelementptr inbounds [2 x float], ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds [2 x float], ptr %0, i64 %10, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %9, %57
  %16 = phi i64 [ %8, %9 ], [ %60, %57 ]
  %17 = phi float [ 0.000000e+00, %9 ], [ %59, %57 ]
  %18 = phi float [ 0.000000e+00, %9 ], [ %58, %57 ]
  %19 = icmp eq i64 %10, %16
  br i1 %19, label %57, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [2 x float], ptr %0, i64 %16
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fsub float %22, %12
  %24 = fadd float %23, -1.000000e+00
  %25 = getelementptr inbounds [2 x float], ptr %0, i64 %16, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fsub float %26, %14
  %28 = fadd float %27, -1.000000e+00
  %29 = tail call float @llvm.fabs.f32(float %24)
  %30 = fcmp olt float %29, %3
  %31 = tail call float @llvm.fmuladd.f32(float %24, float %3, float %18)
  %32 = select i1 %30, float %31, float %18
  %33 = fadd float %24, 1.000000e+00
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fcmp olt float %34, %3
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %3, float %32)
  %37 = select i1 %35, float %36, float %32
  %38 = fadd float %33, 1.000000e+00
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fcmp olt float %39, %3
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %3, float %37)
  %42 = select i1 %40, float %41, float %37
  %43 = tail call float @llvm.fabs.f32(float %28)
  %44 = fcmp olt float %43, %3
  %45 = tail call float @llvm.fmuladd.f32(float %28, float %3, float %17)
  %46 = select i1 %44, float %45, float %17
  %47 = fadd float %28, 1.000000e+00
  %48 = tail call float @llvm.fabs.f32(float %47)
  %49 = fcmp olt float %48, %3
  %50 = tail call float @llvm.fmuladd.f32(float %47, float %3, float %46)
  %51 = select i1 %49, float %50, float %46
  %52 = fadd float %47, 1.000000e+00
  %53 = tail call float @llvm.fabs.f32(float %52)
  %54 = fcmp olt float %53, %3
  br i1 %54, label %55, label %57

55:                                               ; preds = %20
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %3, float %51)
  br label %57

57:                                               ; preds = %15, %55, %20
  %58 = phi float [ %42, %55 ], [ %42, %20 ], [ %18, %15 ]
  %59 = phi float [ %56, %55 ], [ %51, %20 ], [ %17, %15 ]
  %60 = add nsw i64 %16, -1
  %61 = icmp sgt i64 %16, 0
  br i1 %61, label %15, label %62, !llvm.loop !43

62:                                               ; preds = %57
  %63 = fmul float %58, 5.000000e-01
  %64 = fsub float %12, %63
  %65 = fmul float %59, 5.000000e-01
  %66 = fsub float %14, %65
  %67 = tail call float @llvm.floor.f32(float %64)
  %68 = fsub float %64, %67
  %69 = tail call float @llvm.floor.f32(float %66)
  %70 = fsub float %66, %69
  %71 = getelementptr inbounds [2 x float], ptr %1, i64 %10
  store float %68, ptr %71, align 4, !tbaa !34
  %72 = getelementptr inbounds [2 x float], ptr %1, i64 %10, i64 1
  store float %70, ptr %72, align 4, !tbaa !34
  %73 = add nsw i64 %10, -1
  %74 = icmp sgt i64 %10, 0
  br i1 %74, label %9, label %75, !llvm.loop !44

75:                                               ; preds = %62, %4
  %76 = zext i32 %2 to i64
  %77 = shl nuw nsw i64 %76, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %77, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_jitter_init(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = sitofp i32 %1 to float
  %6 = tail call float @sqrtf(float noundef %5) #7
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
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
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %39, %20 ]
  %22 = phi float [ 0.000000e+00, %18 ], [ %38, %20 ]
  %23 = tail call double @BLI_rng_get_double(ptr noundef %16) #7
  %24 = fsub double 5.000000e-01, %23
  %25 = fptrunc double %24 to float
  %26 = tail call float @llvm.fmuladd.f32(float %12, float %25, float %22)
  %27 = getelementptr inbounds [2 x float], ptr %0, i64 %21
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = trunc i64 %21 to i32
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %29, %5
  %31 = tail call double @BLI_rng_get_double(ptr noundef %16) #7
  %32 = fsub double 5.000000e-01, %31
  %33 = fptrunc double %32 to float
  %34 = tail call float @llvm.fmuladd.f32(float %12, float %33, float %30)
  %35 = getelementptr inbounds [2 x float], ptr %0, i64 %21, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = fadd float %14, %22
  %37 = tail call float @llvm.floor.f32(float %36)
  %38 = fsub float %36, %37
  %39 = add nuw nsw i64 %21, 1
  %40 = icmp eq i64 %39, %19
  br i1 %40, label %41, label %20, !llvm.loop !47

41:                                               ; preds = %20, %4
  tail call void @BLI_rng_free(ptr noundef %16) #7
  br label %42

42:                                               ; preds = %41, %42
  %43 = phi i32 [ 0, %41 ], [ %44, %42 ]
  tail call void @BLI_jitterate1(ptr noundef %0, ptr noundef %11, i32 noundef %1, float noundef %12)
  tail call void @BLI_jitterate1(ptr noundef %0, ptr noundef %11, i32 noundef %1, float noundef %12)
  tail call void @BLI_jitterate2(ptr noundef %0, ptr noundef %11, i32 noundef %1, float noundef %13)
  %44 = add nuw nsw i32 %43, 1
  %45 = icmp eq i32 %44, 24
  br i1 %45, label %46, label %42, !llvm.loop !48

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %47(ptr noundef %11) #7
  %48 = icmp sgt i32 %1, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = zext nneg i32 %1 to i64
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %59, %51 ]
  %53 = getelementptr inbounds [2 x float], ptr %0, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fadd float %54, -5.000000e-01
  store float %55, ptr %53, align 4, !tbaa !34
  %56 = getelementptr inbounds [2 x float], ptr %0, i64 %52, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = fadd float %57, -5.000000e-01
  store float %58, ptr %56, align 4, !tbaa !34
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, %50
  br i1 %60, label %61, label %51, !llvm.loop !49

61:                                               ; preds = %51, %46, %2
  ret void
}

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #6

declare double @BLI_rng_get_double(ptr noundef) local_unnamed_addr #6

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #6

attributes #0 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = distinct !{!42, !39, !40}
!43 = distinct !{!43, !39, !40}
!44 = distinct !{!44, !39, !40}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !36, i64 0}
!47 = distinct !{!47, !39, !40}
!48 = distinct !{!48, !39, !40}
!49 = distinct !{!49, !39, !40}
