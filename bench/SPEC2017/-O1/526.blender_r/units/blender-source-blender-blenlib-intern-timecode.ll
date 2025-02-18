; ModuleID = 'blender/source/blender/blenlib/intern/timecode.c'
source_filename = "blender/source/blender/blenlib/intern/timecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%s%02d:%02d:%02d+%02d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s%02d:%02d+%02d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s%d+%02d\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s%02d:%02d:%02d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s%02d:%02d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s%02d:%02d:%02d:%02d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s%02d:%02d:%0*.*f\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s%02d:%0*.*f\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @BLI_timecode_string_from_time(ptr noundef %0, i64 noundef %1, i32 noundef %2, float noundef %3, double noundef %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #5
  store i16 0, ptr %7, align 2
  %8 = fcmp olt float %3, 0.000000e+00
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  store i8 45, ptr %7, align 2, !tbaa !34
  %10 = fneg float %3
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi float [ %10, %9 ], [ %3, %6 ]
  %13 = fcmp ult float %12, 3.600000e+03
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = fptosi float %12 to i32
  %16 = sdiv i32 %15, 3600
  %17 = fpext float %12 to double
  %18 = tail call double @fmod(double noundef %17, double noundef 3.600000e+03) #5
  %19 = fptrunc double %18 to float
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi float [ %19, %14 ], [ %12, %11 ]
  %22 = phi i32 [ %16, %14 ], [ 0, %11 ]
  %23 = fcmp ult float %21, 6.000000e+01
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = fptosi float %21 to i32
  %26 = sdiv i32 %25, 60
  %27 = fpext float %21 to double
  %28 = tail call double @fmod(double noundef %27, double noundef 6.000000e+01) #5
  %29 = fptrunc double %28 to float
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi float [ %29, %24 ], [ %21, %20 ]
  %32 = phi i32 [ %26, %24 ], [ 0, %20 ]
  %33 = icmp slt i32 %2, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = fptosi float %31 to i32
  %36 = fpext float %31 to double
  %37 = sitofp i32 %35 to double
  %38 = fsub double %36, %37
  %39 = fmul double %38, %4
  %40 = fptrunc double %39 to float
  %41 = fadd float %40, 5.000000e-01
  %42 = tail call float @llvm.floor.f32(float %41)
  %43 = fptosi float %42 to i32
  br label %48

44:                                               ; preds = %30
  %45 = fadd float %31, 5.000000e-01
  %46 = tail call float @llvm.floor.f32(float %45)
  %47 = fptosi float %46 to i32
  br label %48

48:                                               ; preds = %44, %34
  %49 = phi i32 [ %35, %34 ], [ %47, %44 ]
  %50 = phi i32 [ %43, %34 ], [ 0, %44 ]
  switch i16 %5, label %93 [
    i16 0, label %51
    i16 1, label %67
    i16 3, label %73
    i16 4, label %83
  ]

51:                                               ; preds = %48
  %52 = icmp eq i32 %22, 0
  br i1 %33, label %53, label %62

53:                                               ; preds = %51
  br i1 %52, label %56, label %54

54:                                               ; preds = %53
  %55 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %49, i32 noundef %50) #5
  br label %95

56:                                               ; preds = %53
  %57 = icmp eq i32 %32, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %7, i32 noundef %32, i32 noundef %49, i32 noundef %50) #5
  br label %95

60:                                               ; preds = %56
  %61 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %7, i32 noundef %49, i32 noundef %50) #5
  br label %95

62:                                               ; preds = %51
  br i1 %52, label %65, label %63

63:                                               ; preds = %62
  %64 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %49) #5
  br label %95

65:                                               ; preds = %62
  %66 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %7, i32 noundef %32, i32 noundef %49) #5
  br label %95

67:                                               ; preds = %48
  %68 = icmp eq i32 %22, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %49, i32 noundef %50) #5
  br label %95

71:                                               ; preds = %67
  %72 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %7, i32 noundef %32, i32 noundef %49, i32 noundef %50) #5
  br label %95

73:                                               ; preds = %48
  %74 = sub nsw i32 1, %2
  %75 = select i1 %33, i32 %74, i32 1
  %76 = add nsw i32 %75, 3
  %77 = icmp eq i32 %22, 0
  %78 = fpext float %31 to double
  br i1 %77, label %81, label %79

79:                                               ; preds = %73
  %80 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %76, i32 noundef %75, double noundef %78) #5
  br label %95

81:                                               ; preds = %73
  %82 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %7, i32 noundef %32, i32 noundef %76, i32 noundef %75, double noundef %78) #5
  br label %95

83:                                               ; preds = %48
  br i1 %33, label %84, label %88

84:                                               ; preds = %83
  %85 = sub nsw i32 1, %2
  %86 = fpext float %3 to double
  %87 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.8, i32 noundef %85, double noundef %86) #5
  br label %95

88:                                               ; preds = %83
  %89 = fadd float %3, 5.000000e-01
  %90 = tail call float @llvm.floor.f32(float %89)
  %91 = fptosi float %90 to i32
  %92 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.9, i32 noundef %91) #5
  br label %95

93:                                               ; preds = %48
  %94 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %49, i32 noundef %50) #5
  br label %95

95:                                               ; preds = %79, %81, %84, %88, %69, %71, %58, %60, %54, %65, %63, %93
  %96 = phi i64 [ %94, %93 ], [ %87, %84 ], [ %92, %88 ], [ %70, %69 ], [ %72, %71 ], [ %55, %54 ], [ %59, %58 ], [ %61, %60 ], [ %64, %63 ], [ %66, %65 ], [ %80, %79 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #5
  ret i64 %96
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @BLI_timecode_string_from_time_simple(ptr noundef %0, i64 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = sub nsw i32 1, %2
  %8 = fpext float %3 to double
  %9 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.8, i32 noundef %7, double noundef %8) #5
  br label %15

10:                                               ; preds = %4
  %11 = fadd float %3, 5.000000e-01
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fptosi float %12 to i32
  %14 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.9, i32 noundef %13) #5
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i64 [ %9, %6 ], [ %14, %10 ]
  ret i64 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
