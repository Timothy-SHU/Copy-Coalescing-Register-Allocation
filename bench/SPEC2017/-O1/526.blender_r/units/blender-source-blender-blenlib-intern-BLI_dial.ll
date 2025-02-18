; ModuleID = 'blender/source/blender/blenlib/intern/BLI_dial.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_dial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Dial = type { [2 x float], float, [2 x float], float, i32, i8 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"dial\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_dial_initialize(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str) #4
  %5 = load float, ptr %0, align 4, !tbaa !38
  store float %5, ptr %4, align 4, !tbaa !38
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !38
  %9 = fmul float %1, %1
  %10 = getelementptr inbounds %struct.Dial, ptr %4, i64 0, i32 1
  store float %9, ptr %10, align 4, !tbaa !40
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @BLI_dial_angle(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load float, ptr %1, align 4, !tbaa !38
  %4 = load float, ptr %0, align 4, !tbaa !38
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !38
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !38
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !40
  %15 = fcmp ogt float %12, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %2
  %17 = fcmp ogt float %12, 0x38AA95A5C0000000
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = tail call float @sqrtf(float noundef %12) #4
  %20 = fdiv float 1.000000e+00, %19
  %21 = fmul float %5, %20
  %22 = fmul float %10, %20
  br label %23

23:                                               ; preds = %16, %18
  %24 = phi float [ %21, %18 ], [ 0.000000e+00, %16 ]
  %25 = phi float [ %22, %18 ], [ 0.000000e+00, %16 ]
  %26 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 5
  %27 = load i8, ptr %26, align 4, !tbaa !43
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 2
  store float %24, ptr %30, align 4, !tbaa !38
  %31 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 2, i64 1
  store float %25, ptr %31, align 4, !tbaa !38
  store i8 1, ptr %26, align 4, !tbaa !43
  br label %32

32:                                               ; preds = %29, %23
  %33 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 2
  %34 = load float, ptr %33, align 4, !tbaa !38
  %35 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !38
  %37 = fmul float %25, %36
  %38 = tail call float @llvm.fmuladd.f32(float %24, float %34, float %37)
  %39 = fneg float %25
  %40 = fmul float %34, %39
  %41 = tail call float @llvm.fmuladd.f32(float %24, float %36, float %40)
  %42 = tail call float @atan2f(float noundef %41, float noundef %38) #4
  %43 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !44
  %45 = fmul float %42, %44
  %46 = fcmp olt float %45, 0.000000e+00
  %47 = tail call float @llvm.fabs.f32(float %44)
  %48 = fcmp ogt float %47, 0x3FF921FB60000000
  %49 = and i1 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %32
  %51 = fcmp olt float %44, 0.000000e+00
  %52 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !45
  %54 = select i1 %51, i32 -1, i32 1
  %55 = add nsw i32 %53, %54
  store i32 %55, ptr %52, align 4, !tbaa !45
  br label %56

56:                                               ; preds = %50, %32
  store float %42, ptr %43, align 4, !tbaa !44
  %57 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !45
  %59 = sitofp i32 %58 to float
  %60 = tail call float @llvm.fmuladd.f32(float %59, float 0x401921FB60000000, float %42)
  br label %64

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.Dial, ptr %0, i64 0, i32 3
  %63 = load float, ptr %62, align 4, !tbaa !44
  br label %64

64:                                               ; preds = %61, %56
  %65 = phi float [ %60, %56 ], [ %63, %61 ]
  ret float %65
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!41, !39, i64 8}
!41 = !{!"Dial", !36, i64 0, !39, i64 8, !36, i64 12, !39, i64 20, !42, i64 24, !36, i64 28}
!42 = !{!"int", !36, i64 0}
!43 = !{!41, !36, i64 28}
!44 = !{!41, !39, i64 20}
!45 = !{!41, !42, i64 24}
