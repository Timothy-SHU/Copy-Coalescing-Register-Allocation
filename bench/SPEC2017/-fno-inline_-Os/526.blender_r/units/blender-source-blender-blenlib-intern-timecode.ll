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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @BLI_timecode_string_from_time(ptr noundef %0, i64 noundef %1, i32 noundef %2, float noundef %3, double noundef %4, i16 noundef signext %5) local_unnamed_addr #0 {
  %7 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #6
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
  %18 = tail call double @fmod(double noundef %17, double noundef 3.600000e+03) #7
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
  %28 = tail call double @fmod(double noundef %27, double noundef 6.000000e+01) #7
  %29 = fptrunc double %28 to float
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi float [ %29, %24 ], [ %21, %20 ]
  %32 = phi i32 [ %26, %24 ], [ 0, %20 ]
  %33 = icmp slt i32 %2, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = fptosi float %31 to i32
  %36 = fpext float %31 to double
  %37 = sitofp i32 %35 to double
  %38 = fsub double %36, %37
  %39 = fmul double %38, %4
  %40 = fptrunc double %39 to float
  %41 = tail call fastcc i32 @iroundf(float noundef %40) #8
  br label %44

42:                                               ; preds = %30
  %43 = tail call fastcc i32 @iroundf(float noundef %31) #8
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi i32 [ %35, %34 ], [ %43, %42 ]
  %46 = phi i32 [ %41, %34 ], [ 0, %42 ]
  switch i16 %5, label %87 [
    i16 0, label %47
    i16 1, label %63
    i16 3, label %69
    i16 4, label %79
  ]

47:                                               ; preds = %44
  %48 = icmp eq i32 %22, 0
  br i1 %33, label %49, label %58

49:                                               ; preds = %47
  br i1 %48, label %52, label %50

50:                                               ; preds = %49
  %51 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %45, i32 noundef %46) #7
  br label %89

52:                                               ; preds = %49
  %53 = icmp eq i32 %32, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %7, i32 noundef %32, i32 noundef %45, i32 noundef %46) #7
  br label %89

56:                                               ; preds = %52
  %57 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %7, i32 noundef %45, i32 noundef %46) #7
  br label %89

58:                                               ; preds = %47
  br i1 %48, label %61, label %59

59:                                               ; preds = %58
  %60 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %45) #7
  br label %89

61:                                               ; preds = %58
  %62 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %7, i32 noundef %32, i32 noundef %45) #7
  br label %89

63:                                               ; preds = %44
  %64 = icmp eq i32 %22, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %45, i32 noundef %46) #7
  br label %89

67:                                               ; preds = %63
  %68 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %7, i32 noundef %32, i32 noundef %45, i32 noundef %46) #7
  br label %89

69:                                               ; preds = %44
  %70 = sub nsw i32 1, %2
  %71 = select i1 %33, i32 %70, i32 1
  %72 = add nsw i32 %71, 3
  %73 = icmp eq i32 %22, 0
  %74 = fpext float %31 to double
  br i1 %73, label %77, label %75

75:                                               ; preds = %69
  %76 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %72, i32 noundef %71, double noundef %74) #7
  br label %89

77:                                               ; preds = %69
  %78 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %7, i32 noundef %32, i32 noundef %72, i32 noundef %71, double noundef %74) #7
  br label %89

79:                                               ; preds = %44
  br i1 %33, label %80, label %84

80:                                               ; preds = %79
  %81 = sub nsw i32 1, %2
  %82 = fpext float %3 to double
  %83 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.8, i32 noundef %81, double noundef %82) #7
  br label %89

84:                                               ; preds = %79
  %85 = tail call fastcc i32 @iroundf(float noundef %3) #8
  %86 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.9, i32 noundef %85) #7
  br label %89

87:                                               ; preds = %44
  %88 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %7, i32 noundef %22, i32 noundef %32, i32 noundef %45, i32 noundef %46) #7
  br label %89

89:                                               ; preds = %75, %77, %80, %84, %65, %67, %54, %56, %50, %61, %59, %87
  %90 = phi i64 [ %88, %87 ], [ %83, %80 ], [ %86, %84 ], [ %66, %65 ], [ %68, %67 ], [ %51, %50 ], [ %55, %54 ], [ %57, %56 ], [ %60, %59 ], [ %62, %61 ], [ %76, %75 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #6
  ret i64 %90
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #3 !PGOFuncName !37 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @BLI_timecode_string_from_time_simple(ptr noundef %0, i64 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = sub nsw i32 1, %2
  %8 = fpext float %3 to double
  %9 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.8, i32 noundef %7, double noundef %8) #7
  br label %13

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @iroundf(float noundef %3) #8
  %12 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.9, i32 noundef %11) #7
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i64 [ %9, %6 ], [ %12, %10 ]
  ret i64 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!"timecode.c:iroundf"}
