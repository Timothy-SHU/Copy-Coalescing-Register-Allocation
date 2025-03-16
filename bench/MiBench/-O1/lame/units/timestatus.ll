; ModuleID = 'timestatus.c'
source_filename = "timestatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ts_times = type { float, float, float, float }

@ts_real_time.initial_time = internal unnamed_addr global i64 0, align 8
@ts_process_time.initial_time = internal unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [75 x i8] c"    Frame          |  CPU/estimated  |  time/estimated | play/CPU |   ETA\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"\0D%6ld/%6ld(%3d%%)|%2d:%02d:%02d/%2d:%02d:%02d|%2d:%02d:%02d/%2d:%02d:%02d|%10.4f|%2d:%02d:%02d \00", align 1

; Function Attrs: nounwind uwtable
define dso_local float @ts_real_time(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = call i64 @time(ptr noundef nonnull %2) #7
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i64, ptr %2, align 8, !tbaa !5
  store i64 %6, ptr @ts_real_time.initial_time, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i64, ptr %2, align 8, !tbaa !5
  %9 = load i64, ptr @ts_real_time.initial_time, align 8, !tbaa !5
  %10 = call double @difftime(i64 noundef %8, i64 noundef %9) #8
  %11 = fptrunc double %10 to float
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret float %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local float @ts_process_time(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @clock() #7
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i64 %2, ptr @ts_process_time.initial_time, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i64, ptr @ts_process_time.initial_time, align 8, !tbaa !5
  %7 = sub nsw i64 %2, %6
  %8 = sitofp i64 %7 to float
  %9 = fdiv float %8, 1.000000e+06
  ret float %9
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ts_calc_times(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = icmp sgt i64 %2, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %5
  %8 = load float, ptr %0, align 4, !tbaa !9
  %9 = sitofp i64 %3 to float
  %10 = fmul float %8, %9
  %11 = sitofp i64 %2 to float
  %12 = fdiv float %10, %11
  %13 = getelementptr inbounds %struct.ts_times, ptr %0, i64 0, i32 1
  store float %12, ptr %13, align 4, !tbaa !12
  %14 = sitofp i32 %1 to float
  %15 = fmul float %12, %14
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = sext i32 %4 to i64
  %19 = mul nsw i64 %18, %3
  %20 = sitofp i64 %19 to float
  %21 = fdiv float %20, %15
  br label %22

22:                                               ; preds = %7, %17
  %23 = phi float [ %21, %17 ], [ 0.000000e+00, %7 ]
  %24 = getelementptr inbounds %struct.ts_times, ptr %0, i64 0, i32 2
  store float %23, ptr %24, align 4, !tbaa !13
  %25 = fsub float %12, %8
  br label %29

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.ts_times, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %27, align 4, !tbaa !12
  %28 = getelementptr inbounds %struct.ts_times, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %28, align 4, !tbaa !13
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi float [ 0.000000e+00, %26 ], [ %25, %22 ]
  %31 = getelementptr inbounds %struct.ts_times, ptr %0, i64 0, i32 3
  store float %30, ptr %31, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @timestatus(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %6 = call i64 @time(ptr noundef nonnull %5) #7
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i64, ptr %5, align 8, !tbaa !5
  store i64 %9, ptr @ts_real_time.initial_time, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %4, %8
  %11 = load i64, ptr %5, align 8, !tbaa !5
  %12 = load i64, ptr @ts_real_time.initial_time, align 8, !tbaa !5
  %13 = call double @difftime(i64 noundef %11, i64 noundef %12) #8
  %14 = fptrunc double %13 to float
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %15 = call i64 @clock() #7
  br i1 %7, label %16, label %17

16:                                               ; preds = %10
  store i64 %15, ptr @ts_process_time.initial_time, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %10, %16
  %18 = load i64, ptr @ts_process_time.initial_time, align 8, !tbaa !5
  %19 = sub nsw i64 %15, %18
  %20 = sitofp i64 %19 to float
  %21 = fdiv float %20, 1.000000e+06
  br i1 %7, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr @stderr, align 8, !tbaa !15
  %24 = call i64 @fwrite(ptr nonnull @.str, i64 74, i64 1, ptr %23) #9
  br label %123

25:                                               ; preds = %17
  %26 = icmp sgt i64 %1, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = sitofp i64 %2 to float
  %29 = fmul float %28, %14
  %30 = sitofp i64 %1 to float
  %31 = fdiv float %29, %30
  %32 = fsub float %31, %14
  %33 = fpext float %31 to double
  %34 = fadd double %33, 5.000000e-01
  %35 = fpext float %32 to double
  %36 = fadd double %35, 5.000000e-01
  br label %37

37:                                               ; preds = %25, %27
  %38 = phi double [ %34, %27 ], [ 5.000000e-01, %25 ]
  %39 = phi double [ %36, %27 ], [ 5.000000e-01, %25 ]
  br i1 %26, label %40, label %54

40:                                               ; preds = %37
  %41 = sitofp i64 %2 to float
  %42 = fmul float %21, %41
  %43 = sitofp i64 %1 to float
  %44 = fdiv float %42, %43
  %45 = sitofp i32 %0 to float
  %46 = fmul float %44, %45
  %47 = fcmp ogt float %46, 0.000000e+00
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = sext i32 %3 to i64
  %50 = mul nsw i64 %49, %2
  %51 = sitofp i64 %50 to float
  %52 = fdiv float %51, %46
  %53 = fpext float %52 to double
  br label %54

54:                                               ; preds = %37, %48, %40
  %55 = phi double [ %53, %48 ], [ 0.000000e+00, %40 ], [ 0.000000e+00, %37 ]
  %56 = phi float [ %44, %48 ], [ %44, %40 ], [ 0.000000e+00, %37 ]
  %57 = icmp sgt i64 %2, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = sitofp i64 %1 to double
  %60 = fmul double %59, 1.000000e+02
  %61 = add nsw i64 %2, -1
  %62 = sitofp i64 %61 to double
  %63 = fdiv double %60, %62
  %64 = fptosi double %63 to i32
  br label %65

65:                                               ; preds = %54, %58
  %66 = phi i32 [ %64, %58 ], [ 100, %54 ]
  %67 = load ptr, ptr @stderr, align 8, !tbaa !15
  %68 = add nsw i64 %2, -1
  %69 = fpext float %21 to double
  %70 = fadd double %69, 5.000000e-01
  %71 = fptosi double %70 to i64
  %72 = sdiv i64 %71, 3600
  %73 = trunc i64 %72 to i32
  %74 = fdiv double %70, 6.000000e+01
  %75 = fptosi double %74 to i64
  %76 = srem i64 %75, 60
  %77 = trunc i64 %76 to i32
  %78 = srem i64 %71, 60
  %79 = trunc i64 %78 to i32
  %80 = fpext float %56 to double
  %81 = fadd double %80, 5.000000e-01
  %82 = fptosi double %81 to i64
  %83 = sdiv i64 %82, 3600
  %84 = trunc i64 %83 to i32
  %85 = fdiv double %81, 6.000000e+01
  %86 = fptosi double %85 to i64
  %87 = srem i64 %86, 60
  %88 = trunc i64 %87 to i32
  %89 = srem i64 %82, 60
  %90 = trunc i64 %89 to i32
  %91 = fpext float %14 to double
  %92 = fadd double %91, 5.000000e-01
  %93 = fptosi double %92 to i64
  %94 = sdiv i64 %93, 3600
  %95 = trunc i64 %94 to i32
  %96 = fdiv double %92, 6.000000e+01
  %97 = fptosi double %96 to i64
  %98 = srem i64 %97, 60
  %99 = trunc i64 %98 to i32
  %100 = srem i64 %93, 60
  %101 = trunc i64 %100 to i32
  %102 = fptosi double %38 to i64
  %103 = sdiv i64 %102, 3600
  %104 = trunc i64 %103 to i32
  %105 = fdiv double %38, 6.000000e+01
  %106 = fptosi double %105 to i64
  %107 = srem i64 %106, 60
  %108 = trunc i64 %107 to i32
  %109 = srem i64 %102, 60
  %110 = trunc i64 %109 to i32
  %111 = fptosi double %39 to i64
  %112 = sdiv i64 %111, 3600
  %113 = trunc i64 %112 to i32
  %114 = fdiv double %39, 6.000000e+01
  %115 = fptosi double %114 to i64
  %116 = srem i64 %115, 60
  %117 = trunc i64 %116 to i32
  %118 = srem i64 %111, 60
  %119 = trunc i64 %118 to i32
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.1, i64 noundef %1, i64 noundef %68, i32 noundef %66, i32 noundef %73, i32 noundef %77, i32 noundef %79, i32 noundef %84, i32 noundef %88, i32 noundef %90, i32 noundef %95, i32 noundef %99, i32 noundef %101, i32 noundef %104, i32 noundef %108, i32 noundef %110, double noundef %55, i32 noundef %113, i32 noundef %117, i32 noundef %119) #9
  %121 = load ptr, ptr @stderr, align 8, !tbaa !15
  %122 = call i32 @fflush(ptr noundef %121)
  br label %123

123:                                              ; preds = %65, %22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"ts_times", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!11 = !{!"float", !7, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !11, i64 12}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
