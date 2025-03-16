; ModuleID = 'src/def_pars.c'
source_filename = "src/def_pars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.klatt_frame_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [65 x i8] c"$Id: def_pars.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@def_pars_id = dso_local local_unnamed_addr global ptr @.str, align 8
@def_pars = dso_local global %struct.klatt_frame_t { i64 1330, i64 60, i64 500, i64 60, i64 1500, i64 90, i64 2800, i64 150, i64 3250, i64 200, i64 3700, i64 200, i64 4990, i64 500, i64 270, i64 100, i64 270, i64 100, i64 0, i64 30, i64 0, i64 10, i64 0, i64 0, i64 0, i64 80, i64 0, i64 200, i64 0, i64 350, i64 0, i64 500, i64 0, i64 600, i64 0, i64 800, i64 0, i64 0, i64 0, i64 62 }, align 8
@samp_rate = external local_unnamed_addr global i64, align 8
@klatt_global = dso_local global %struct.klatt_global_t zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Synth paramters\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Quiet - minimal messages\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Impulse glottal source\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Number cascade formants\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"F0 flutter\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"mSec per frame\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Tilt dB\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Base F0 in 0.1Hz\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @init_synth(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  store double 1.000000e+01, ptr %3, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !tbaa !9
  %6 = load i64, ptr @samp_rate, align 8, !tbaa !11
  store i64 %6, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 4), align 8, !tbaa !13
  store i32 1, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 1), align 4, !tbaa !15
  store i64 2, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 6), align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 2), align 8, !tbaa !17
  %7 = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.1, i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef nonnull getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 1), ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 2), ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, ptr noundef nonnull getelementptr inbounds (%struct.klatt_frame_t, ptr @def_pars, i64 0, i32 21), ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, ptr noundef nonnull @def_pars, ptr noundef nonnull @.str.17, ptr noundef null) #3
  %8 = load i32, ptr %5, align 4, !tbaa !9
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  store i32 1, ptr @klatt_global, align 8, !tbaa !18
  %11 = zext nneg i32 %8 to i64
  store i64 %11, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 5), align 8, !tbaa !19
  br label %13

12:                                               ; preds = %2
  store i32 2, ptr @klatt_global, align 8, !tbaa !18
  br label %13

13:                                               ; preds = %12, %10
  %14 = load i32, ptr %4, align 4, !tbaa !9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i64 1, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 6), align 8, !tbaa !16
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i64, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 4), align 8, !tbaa !13
  %19 = sitofp i64 %18 to double
  %20 = load double, ptr %3, align 8, !tbaa !5
  %21 = fmul double %20, %19
  %22 = fdiv double %21, 1.000000e+03
  %23 = fptosi double %22 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.klatt_global_t, ptr @klatt_global, i64 0, i32 7), align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @getargs(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !12, i64 16}
!14 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!15 = !{!14, !10, i64 4}
!16 = !{!14, !12, i64 32}
!17 = !{!14, !10, i64 8}
!18 = !{!14, !10, i64 0}
!19 = !{!14, !12, i64 24}
!20 = !{!14, !12, i64 40}
