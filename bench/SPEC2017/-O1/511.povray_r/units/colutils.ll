; ModuleID = 'colutils.cpp'
source_filename = "colutils.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::OPTIONS_STRUCT" = type { i32, i8, i8, i8, i32, i32, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], float, float, i32, i32, double, i8, double, i32, [25 x ptr], i32, i32, i32, double, double, i32, i32, double, double, i32, i8, i64, i32, i32, i32, %"struct.pov::FRAMESEQ", double, i64, double, double, double, double, double, i64, i32, i64, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, ptr, ptr, i32, i8, double, double, i32, i32, i8, i32, i32, [4096 x i8], [6 x %"struct.pov::shelldata"], [4096 x i8], [4096 x i8], i32, i32, i64, i32, i32, i32, %struct.POVMSData }
%"struct.pov::FRAMESEQ" = type { i32, double, i32, i32, double, i32, i32, double, i32, double, i32, double, i8, i8 }
%"struct.pov::shelldata" = type { i32, i32, [250 x i8] }
%struct.POVMSData = type { i32, i32, %union.anon }
%union.anon = type { ptr }
%"struct.pov::Frame_Struct" = type { ptr, i32, i32, i32, ptr, ptr, double, double, double, [5 x float], [5 x float], [5 x float], ptr, ptr, ptr, ptr, ptr }

@_ZN3pov4optsE = external local_unnamed_addr global %"struct.pov::OPTIONS_STRUCT", align 8
@_ZN3pov6maxclrE = external local_unnamed_addr global double, align 8
@_ZN3pov5FrameE = external local_unnamed_addr global %"struct.pov::Frame_Struct", align 8

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZN3pov13gamma_correctEPf(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @_ZN3pov4optsE, align 8, !tbaa !34
  %3 = and i32 %2, 262144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %0, align 4, !tbaa !48
  %7 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %8 = tail call noundef float @powf(float noundef %6, float noundef %7) #11
  store float %8, ptr %0, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %12 = tail call noundef float @powf(float noundef %10, float noundef %11) #11
  store float %12, ptr %9, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %16 = tail call noundef float @powf(float noundef %14, float noundef %15) #11
  store float %16, ptr %13, align 4, !tbaa !48
  %17 = getelementptr inbounds float, ptr %0, i64 4
  %18 = load float, ptr %17, align 4, !tbaa !48
  %19 = fsub float 1.000000e+00, %18
  %20 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %21 = tail call noundef float @powf(float noundef %19, float noundef %20) #11
  %22 = fsub float 1.000000e+00, %21
  store float %22, ptr %17, align 4, !tbaa !48
  br label %23

23:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov14extract_colorsEPfPhS1_S1_S1_Pd(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca [5 x float], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #11
  call void @_ZN3pov11Clip_ColourEPfS0_(ptr noundef nonnull %7, ptr noundef %0)
  %8 = load i32, ptr @_ZN3pov4optsE, align 8, !tbaa !34
  %9 = and i32 %8, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = load float, ptr %7, align 16, !tbaa !48
  %13 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %14 = call noundef float @powf(float noundef %12, float noundef %13) #11
  store float %14, ptr %7, align 16, !tbaa !48
  %15 = getelementptr inbounds float, ptr %7, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !48
  %17 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %18 = call noundef float @powf(float noundef %16, float noundef %17) #11
  store float %18, ptr %15, align 4, !tbaa !48
  %19 = getelementptr inbounds float, ptr %7, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !48
  %21 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %22 = call noundef float @powf(float noundef %20, float noundef %21) #11
  store float %22, ptr %19, align 8, !tbaa !48
  %23 = getelementptr inbounds float, ptr %7, i64 4
  %24 = load float, ptr %23, align 16, !tbaa !48
  %25 = fsub float 1.000000e+00, %24
  %26 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %27 = call noundef float @powf(float noundef %25, float noundef %26) #11
  %28 = fsub float 1.000000e+00, %27
  store float %28, ptr %23, align 16, !tbaa !48
  br label %29

29:                                               ; preds = %6, %11
  %30 = load i8, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 2), align 1, !tbaa !50
  %31 = icmp eq i8 %30, 71
  %32 = load float, ptr %7, align 16, !tbaa !48
  %33 = fpext float %32 to double
  br i1 %31, label %34, label %48

34:                                               ; preds = %29
  %35 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !48
  %37 = fpext float %36 to double
  %38 = fmul double %37, 5.890000e-01
  %39 = call double @llvm.fmuladd.f64(double %33, double 2.970000e-01, double %38)
  %40 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 2
  %41 = load float, ptr %40, align 8, !tbaa !48
  %42 = fpext float %41 to double
  %43 = call double @llvm.fmuladd.f64(double %42, double 1.140000e-01, double %39)
  %44 = fmul double %43, %33
  store double %44, ptr %5, align 8, !tbaa !51
  %45 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %46 = fmul double %45, %44
  %47 = fptoui double %46 to i8
  store i8 %47, ptr %3, align 1, !tbaa !52
  store i8 %47, ptr %2, align 1, !tbaa !52
  store i8 %47, ptr %1, align 1, !tbaa !52
  br label %64

48:                                               ; preds = %29
  %49 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %50 = fmul double %49, %33
  %51 = fptoui double %50 to i8
  store i8 %51, ptr %1, align 1, !tbaa !52
  %52 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !48
  %54 = fpext float %53 to double
  %55 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %56 = fmul double %55, %54
  %57 = fptoui double %56 to i8
  store i8 %57, ptr %2, align 1, !tbaa !52
  %58 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 2
  %59 = load float, ptr %58, align 8, !tbaa !48
  %60 = fpext float %59 to double
  %61 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %62 = fmul double %61, %60
  %63 = fptoui double %62 to i8
  store i8 %63, ptr %3, align 1, !tbaa !52
  br label %64

64:                                               ; preds = %48, %34
  %65 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 4
  %66 = load float, ptr %65, align 16, !tbaa !48
  %67 = fpext float %66 to double
  %68 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %69 = fmul double %68, %67
  %70 = fptoui double %69 to i8
  store i8 %70, ptr %4, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN3pov11Clip_ColourEPfS0_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN3pov24extract_colors_nocorrectEPfPhS1_S1_S1_Pd(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #5 {
  %7 = load i8, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 2), align 1, !tbaa !50
  %8 = icmp eq i8 %7, 71
  %9 = load float, ptr %0, align 4, !tbaa !48
  %10 = fpext float %9 to double
  br i1 %8, label %11, label %25

11:                                               ; preds = %6
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !48
  %14 = fpext float %13 to double
  %15 = fmul double %14, 5.890000e-01
  %16 = tail call double @llvm.fmuladd.f64(double %10, double 2.970000e-01, double %15)
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !48
  %19 = fpext float %18 to double
  %20 = tail call double @llvm.fmuladd.f64(double %19, double 1.140000e-01, double %16)
  %21 = fmul double %20, %10
  store double %21, ptr %5, align 8, !tbaa !51
  %22 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %23 = fmul double %22, %21
  %24 = fptosi double %23 to i32
  br label %39

25:                                               ; preds = %6
  %26 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %27 = fmul double %26, %10
  %28 = fptosi double %27 to i32
  %29 = getelementptr inbounds float, ptr %0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !48
  %31 = fpext float %30 to double
  %32 = fmul double %26, %31
  %33 = fptosi double %32 to i32
  %34 = getelementptr inbounds float, ptr %0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !48
  %36 = fpext float %35 to double
  %37 = fmul double %26, %36
  %38 = fptosi double %37 to i32
  br label %39

39:                                               ; preds = %25, %11
  %40 = phi double [ %26, %25 ], [ %22, %11 ]
  %41 = phi i32 [ %28, %25 ], [ %24, %11 ]
  %42 = phi i32 [ %33, %25 ], [ %24, %11 ]
  %43 = phi i32 [ %38, %25 ], [ %24, %11 ]
  %44 = getelementptr inbounds float, ptr %0, i64 4
  %45 = load float, ptr %44, align 4, !tbaa !48
  %46 = fpext float %45 to double
  %47 = fmul double %40, %46
  %48 = fptosi double %47 to i32
  %49 = tail call i32 @llvm.smax.i32(i32 %41, i32 0)
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 255)
  %51 = trunc i32 %50 to i8
  %52 = tail call i32 @llvm.smax.i32(i32 %42, i32 0)
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 255)
  %54 = trunc i32 %53 to i8
  %55 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 255)
  %57 = trunc i32 %56 to i8
  %58 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 255)
  %60 = trunc i32 %59 to i8
  store i8 %51, ptr %1, align 1, !tbaa !52
  store i8 %54, ptr %2, align 1, !tbaa !52
  store i8 %57, ptr %3, align 1, !tbaa !52
  store i8 %60, ptr %4, align 1, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov17colour2photonRgbeEPhPf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !48
  %6 = fcmp ogt float %5, %3
  %7 = select i1 %6, float %5, float %3
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !48
  %10 = fcmp ogt float %9, %7
  %11 = select i1 %10, float %9, float %7
  %12 = fpext float %11 to double
  %13 = fcmp olt double %12, 1.000000e-32
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, ptr %0, align 1
  br label %36

15:                                               ; preds = %2
  %16 = tail call { float, i32 } @llvm.frexp.f32.i32(float %11)
  %17 = extractvalue { float, i32 } %16, 1
  %18 = extractvalue { float, i32 } %16, 0
  %19 = fpext float %18 to double
  %20 = fmul double %19, 2.560000e+02
  %21 = fdiv double %20, %12
  %22 = fptrunc double %21 to float
  %23 = fmul float %3, %22
  %24 = fptoui float %23 to i8
  store i8 %24, ptr %0, align 1, !tbaa !52
  %25 = load float, ptr %4, align 4, !tbaa !48
  %26 = fmul float %25, %22
  %27 = fptoui float %26 to i8
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !52
  %29 = load float, ptr %8, align 4, !tbaa !48
  %30 = fmul float %29, %22
  %31 = fptoui float %30 to i8
  %32 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %31, ptr %32, align 1, !tbaa !52
  %33 = trunc i32 %17 to i8
  %34 = add i8 %33, -6
  %35 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %34, ptr %35, align 1, !tbaa !52
  br label %36

36:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local void @_ZN3pov17photonRgbe2colourEPfPh(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !52
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32
  %8 = add nuw nsw i32 %7, -258
  %9 = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %8) #11
  %10 = fptrunc double %9 to float
  %11 = load i8, ptr %1, align 1, !tbaa !52
  %12 = uitofp i8 %11 to float
  %13 = fmul float %10, %12
  store float %13, ptr %0, align 4, !tbaa !48
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !52
  %16 = uitofp i8 %15 to float
  %17 = fmul float %10, %16
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !48
  %19 = getelementptr inbounds i8, ptr %1, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !52
  %21 = uitofp i8 %20 to float
  %22 = fmul float %10, %21
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !48
  br label %27

24:                                               ; preds = %2
  %25 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %25, align 4, !tbaa !48
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %26, align 4, !tbaa !48
  store float 0.000000e+00, ptr %0, align 4, !tbaa !48
  br label %27

27:                                               ; preds = %24, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov19prepare_output_lineEPA5_f(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 2), align 4, !tbaa !53
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %33, label %4

4:                                                ; preds = %1, %28
  %5 = phi i64 [ %29, %28 ], [ 0, %1 ]
  %6 = getelementptr inbounds [5 x float], ptr %0, i64 %5
  tail call void @_ZN3pov11Clip_ColourEPfS0_(ptr noundef %6, ptr noundef %6)
  %7 = load i32, ptr @_ZN3pov4optsE, align 8, !tbaa !34
  %8 = and i32 %7, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = load float, ptr %6, align 4, !tbaa !48
  %12 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %13 = tail call noundef float @powf(float noundef %11, float noundef %12) #11
  store float %13, ptr %6, align 4, !tbaa !48
  %14 = getelementptr inbounds float, ptr %6, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !48
  %16 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %17 = tail call noundef float @powf(float noundef %15, float noundef %16) #11
  store float %17, ptr %14, align 4, !tbaa !48
  %18 = getelementptr inbounds float, ptr %6, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !48
  %20 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %21 = tail call noundef float @powf(float noundef %19, float noundef %20) #11
  store float %21, ptr %18, align 4, !tbaa !48
  %22 = getelementptr inbounds float, ptr %6, i64 4
  %23 = load float, ptr %22, align 4, !tbaa !48
  %24 = fsub float 1.000000e+00, %23
  %25 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %26 = tail call noundef float @powf(float noundef %24, float noundef %25) #11
  %27 = fsub float 1.000000e+00, %26
  store float %27, ptr %22, align 4, !tbaa !48
  br label %28

28:                                               ; preds = %4, %10
  %29 = add nuw nsw i64 %5, 1
  %30 = load i32, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 2), align 4, !tbaa !53
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %5, %31
  br i1 %32, label %4, label %33, !llvm.loop !55

33:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov11ClipColorAAEPf(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 16), align 8, !tbaa !58, !range !59, !noundef !60
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN3pov11Clip_ColourEPfS0_(ptr noundef %0, ptr noundef %0)
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN3pov14OPTIONS_STRUCTE", !36, i64 0, !37, i64 4, !37, i64 5, !37, i64 6, !36, i64 8, !36, i64 12, !37, i64 16, !37, i64 4112, !37, i64 8208, !37, i64 12304, !37, i64 16400, !39, i64 20496, !39, i64 20500, !36, i64 20504, !36, i64 20508, !40, i64 20512, !41, i64 20520, !40, i64 20528, !36, i64 20536, !37, i64 20544, !36, i64 20744, !36, i64 20748, !36, i64 20752, !40, i64 20760, !40, i64 20768, !36, i64 20776, !36, i64 20780, !40, i64 20784, !40, i64 20792, !36, i64 20800, !41, i64 20804, !42, i64 20808, !36, i64 20816, !36, i64 20820, !36, i64 20824, !43, i64 20832, !40, i64 20920, !42, i64 20928, !40, i64 20936, !40, i64 20944, !40, i64 20952, !40, i64 20960, !40, i64 20968, !42, i64 20976, !36, i64 20984, !42, i64 20992, !36, i64 21000, !36, i64 21004, !36, i64 21008, !36, i64 21012, !36, i64 21016, !36, i64 21020, !40, i64 21024, !40, i64 21032, !40, i64 21040, !36, i64 21048, !36, i64 21052, !45, i64 21056, !45, i64 21064, !36, i64 21072, !41, i64 21076, !40, i64 21080, !40, i64 21088, !36, i64 21096, !36, i64 21100, !41, i64 21104, !46, i64 21108, !36, i64 21112, !37, i64 21116, !37, i64 25212, !37, i64 26772, !37, i64 30868, !36, i64 34964, !36, i64 34968, !42, i64 34976, !36, i64 34984, !36, i64 34988, !36, i64 34992, !47, i64 35000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"double", !37, i64 0}
!41 = !{!"bool", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"_ZTSN3pov8FRAMESEQE", !44, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !40, i64 24, !36, i64 32, !36, i64 36, !40, i64 40, !36, i64 48, !40, i64 56, !36, i64 64, !40, i64 72, !41, i64 80, !41, i64 81}
!44 = !{!"_ZTSN3pov9FRAMETYPEE", !37, i64 0}
!45 = !{!"any pointer", !37, i64 0}
!46 = !{!"_ZTSN3pov15Histogram_TypesE", !37, i64 0}
!47 = !{!"_ZTS9POVMSData", !36, i64 0, !36, i64 4, !37, i64 8}
!48 = !{!39, !39, i64 0}
!49 = !{!35, !39, i64 20500}
!50 = !{!35, !37, i64 5}
!51 = !{!40, !40, i64 0}
!52 = !{!37, !37, i64 0}
!53 = !{!54, !36, i64 12}
!54 = !{!"_ZTSN3pov12Frame_StructE", !45, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !45, i64 24, !45, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !37, i64 64, !37, i64 84, !37, i64 104, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!35, !41, i64 20520}
!59 = !{i8 0, i8 2}
!60 = !{}
