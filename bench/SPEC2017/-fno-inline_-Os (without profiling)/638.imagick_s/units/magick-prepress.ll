; ModuleID = 'magick/prepress.c'
source_filename = "magick/prepress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"magick/prepress.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_GetImageTotalInkDensity.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @GetImageTotalInkDensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %2, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 102, ptr noundef nonnull @.str.2) #8
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !26
  %16 = icmp eq i32 %15, 12
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 106, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #8
  br label %50

21:                                               ; preds = %13
  store i32 1, ptr %6, align 4, !tbaa !27
  store double 0.000000e+00, ptr %4, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %22, ptr %5, align 8, !tbaa !6
  %23 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %22) #8
  store ptr %23, ptr %3, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !29
  %26 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #8
  %27 = shl i64 %26, 5
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #8
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #8
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #8
  br label %41

37:                                               ; preds = %32, %29, %21
  %38 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #8
  %39 = icmp ult i64 %38, 2
  %40 = select i1 %39, i64 1, i64 2
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i64 [ %36, %35 ], [ %40, %37 ]
  %43 = trunc i64 %42 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %7, i32 %43)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @GetImageTotalInkDensity.omp_outlined, ptr nonnull %2, ptr nonnull %3, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4)
  %44 = load ptr, ptr %3, align 8, !tbaa !6
  %45 = call ptr @DestroyCacheView(ptr noundef %44) #8
  %46 = load i32, ptr %6, align 4, !tbaa !27
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = load double, ptr %4, align 8, !tbaa !28
  br label %50

50:                                               ; preds = %41, %48, %17
  %51 = phi double [ 0.000000e+00, %17 ], [ %49, %48 ], [ 0.000000e+00, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret double %51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageTotalInkDensity.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull align 8 dereferenceable(8) %6) #3 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !29
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %98

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  store i64 0, ptr %8, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  store i64 %15, ptr %9, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 1, ptr %10, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store i32 0, ptr %11, align 4, !tbaa !27
  %18 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !30
  %21 = load i64, ptr %8, align 8, !tbaa !30
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %97, label %23

23:                                               ; preds = %17, %89
  %24 = phi i64 [ %95, %89 ], [ %20, %17 ]
  %25 = phi i64 [ %93, %89 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %89, label %27

27:                                               ; preds = %23, %83
  %28 = phi i64 [ %84, %83 ], [ %25, %23 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !6
  %30 = load ptr, ptr %2, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7
  %32 = load i64, ptr %31, align 8, !tbaa !31
  %33 = load ptr, ptr %4, align 8, !tbaa !6
  %34 = call ptr @GetCacheViewVirtualPixels(ptr noundef %29, i64 noundef 0, i64 noundef %28, i64 noundef %32, i64 noundef 1, ptr noundef %33) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, ptr %5, align 4, !tbaa !27
  br label %83

37:                                               ; preds = %27
  %38 = load ptr, ptr %3, align 8, !tbaa !6
  %39 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %38) #8
  %40 = load ptr, ptr %2, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !31
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %37
  %45 = icmp eq ptr %39, null
  br label %46

46:                                               ; preds = %44, %76
  %47 = phi ptr [ %40, %44 ], [ %77, %76 ]
  %48 = phi i64 [ 0, %44 ], [ %79, %76 ]
  %49 = phi ptr [ %34, %44 ], [ %78, %76 ]
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 2
  %51 = load i16, ptr %50, align 2, !tbaa !32
  %52 = uitofp i16 %51 to double
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 0, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !33
  %55 = uitofp i16 %54 to double
  %56 = fadd double %52, %55
  %57 = load i16, ptr %49, align 2, !tbaa !34
  %58 = uitofp i16 %57 to double
  %59 = fadd double %56, %58
  br i1 %45, label %64, label %60

60:                                               ; preds = %46
  %61 = getelementptr inbounds i16, ptr %39, i64 %48
  %62 = load i16, ptr %61, align 2, !tbaa !35
  %63 = zext i16 %62 to i32
  br label %64

64:                                               ; preds = %46, %60
  %65 = phi i32 [ %63, %60 ], [ 0, %46 ]
  %66 = sitofp i32 %65 to double
  %67 = fadd double %59, %66
  %68 = load double, ptr %6, align 8, !tbaa !28
  %69 = fcmp ogt double %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  call void @__kmpc_critical(ptr nonnull @2, i32 %18, ptr nonnull @.gomp_critical_user_MagickCore_GetImageTotalInkDensity.var)
  %71 = load double, ptr %6, align 8, !tbaa !28
  %72 = fcmp ogt double %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store double %67, ptr %6, align 8, !tbaa !28
  br label %74

74:                                               ; preds = %73, %70
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %18, ptr nonnull @.gomp_critical_user_MagickCore_GetImageTotalInkDensity.var)
  %75 = load ptr, ptr %2, align 8, !tbaa !6
  br label %76

76:                                               ; preds = %74, %64
  %77 = phi ptr [ %75, %74 ], [ %47, %64 ]
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 1
  %79 = add nuw nsw i64 %48, 1
  %80 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 7
  %81 = load i64, ptr %80, align 8, !tbaa !31
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %46, label %83, !llvm.loop !36

83:                                               ; preds = %76, %37, %36
  %84 = add nsw i64 %28, 1
  %85 = load i64, ptr %9, align 8, !tbaa !30
  %86 = icmp slt i64 %28, %85
  br i1 %86, label %27, label %87

87:                                               ; preds = %83
  %88 = load i64, ptr %8, align 8, !tbaa !30
  br label %89

89:                                               ; preds = %87, %23
  %90 = phi i64 [ %25, %23 ], [ %88, %87 ]
  %91 = phi i64 [ %24, %23 ], [ %85, %87 ]
  %92 = load i64, ptr %10, align 8, !tbaa !30
  %93 = add nsw i64 %92, %90
  store i64 %93, ptr %8, align 8, !tbaa !30
  %94 = add nsw i64 %92, %91
  %95 = call i64 @llvm.smin.i64(i64 %94, i64 %15)
  store i64 %95, ptr %9, align 8, !tbaa !30
  %96 = icmp sgt i64 %93, %95
  br i1 %96, label %97, label %23

97:                                               ; preds = %89, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  br label %98

98:                                               ; preds = %97, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !38 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { convergent nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 12976}
!11 = !{!"_Image", !12, i64 0, !12, i64 4, !12, i64 8, !13, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !7, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !16, i64 104, !17, i64 112, !12, i64 208, !7, i64 216, !12, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !13, i64 256, !16, i64 264, !16, i64 272, !19, i64 280, !19, i64 312, !19, i64 344, !16, i64 376, !16, i64 384, !16, i64 392, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !12, i64 420, !7, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !20, i64 480, !21, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !13, i64 12904, !13, i64 12912, !23, i64 12920, !12, i64 12976, !13, i64 12984, !7, i64 12992, !24, i64 13000, !24, i64 13032, !7, i64 13064, !13, i64 13072, !13, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !12, i64 13112, !12, i64 13116, !14, i64 13120, !7, i64 13128, !19, i64 13136, !7, i64 13168, !7, i64 13176, !12, i64 13184, !12, i64 13188, !25, i64 13192, !12, i64 13200, !13, i64 13208, !13, i64 13216, !12, i64 13224, !13, i64 13232}
!12 = !{!"int", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"_PixelPacket", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!15 = !{!"short", !8, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{!"_ChromaticityInfo", !18, i64 0, !18, i64 24, !18, i64 48, !18, i64 72}
!18 = !{!"_PrimaryInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!19 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!20 = !{!"_ErrorInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!21 = !{!"_TimerInfo", !22, i64 0, !22, i64 24, !12, i64 48, !13, i64 56}
!22 = !{!"_Timer", !16, i64 0, !16, i64 8, !16, i64 16}
!23 = !{!"_ExceptionInfo", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !7, i64 40, !13, i64 48}
!24 = !{!"_ProfileInfo", !7, i64 0, !13, i64 8, !7, i64 16, !13, i64 24}
!25 = !{!"long long", !8, i64 0}
!26 = !{!11, !12, i64 4}
!27 = !{!12, !12, i64 0}
!28 = !{!16, !16, i64 0}
!29 = !{!11, !13, i64 48}
!30 = !{!13, !13, i64 0}
!31 = !{!11, !13, i64 40}
!32 = !{!14, !15, i64 4}
!33 = !{!14, !15, i64 2}
!34 = !{!14, !15, i64 0}
!35 = !{!15, !15, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!39}
!39 = !{i64 2, i64 -1, i64 -1, i1 true}
