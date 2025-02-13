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

$_ZSt3powff = comdat any

$_ZSt5frexpfPi = comdat any

@_ZN3pov4optsE = external local_unnamed_addr global %"struct.pov::OPTIONS_STRUCT", align 8
@_ZN3pov6maxclrE = external local_unnamed_addr global double, align 8
@_ZN3pov5FrameE = external local_unnamed_addr global %"struct.pov::Frame_Struct", align 8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN3pov13gamma_correctEPf(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @_ZN3pov4optsE, align 8, !tbaa !34
  %3 = and i32 %2, 262144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load float, ptr %0, align 4, !tbaa !48
  %7 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %8 = tail call noundef float @_ZSt3powff(float noundef %6, float noundef %7) #10
  store float %8, ptr %0, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %12 = tail call noundef float @_ZSt3powff(float noundef %10, float noundef %11) #10
  store float %12, ptr %9, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %16 = tail call noundef float @_ZSt3powff(float noundef %14, float noundef %15) #10
  store float %16, ptr %13, align 4, !tbaa !48
  %17 = getelementptr inbounds float, ptr %0, i64 4
  %18 = load float, ptr %17, align 4, !tbaa !48
  %19 = fsub float 1.000000e+00, %18
  %20 = load float, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 12), align 4, !tbaa !49
  %21 = tail call noundef float @_ZSt3powff(float noundef %19, float noundef %20) #10
  %22 = fsub float 1.000000e+00, %21
  store float %22, ptr %17, align 4, !tbaa !48
  br label %23

23:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt3powff(float noundef %0, float noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call float @powf(float noundef %0, float noundef %1) #11
  ret float %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov14extract_colorsEPfPhS1_S1_S1_Pd(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca [5 x float], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #12
  call void @_ZN3pov11Clip_ColourEPfS0_(ptr noundef nonnull %7, ptr noundef %0) #10
  call void @_ZN3pov13gamma_correctEPf(ptr noundef nonnull %7) #10
  %8 = load i8, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 2), align 1, !tbaa !50
  %9 = icmp eq i8 %8, 71
  %10 = load float, ptr %7, align 16, !tbaa !48
  %11 = fpext float %10 to double
  br i1 %9, label %12, label %26

12:                                               ; preds = %6
  %13 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = fpext float %14 to double
  %16 = fmul double %15, 5.890000e-01
  %17 = call double @llvm.fmuladd.f64(double %11, double 2.970000e-01, double %16)
  %18 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 2
  %19 = load float, ptr %18, align 8, !tbaa !48
  %20 = fpext float %19 to double
  %21 = call double @llvm.fmuladd.f64(double %20, double 1.140000e-01, double %17)
  %22 = fmul double %21, %11
  store double %22, ptr %5, align 8, !tbaa !51
  %23 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %24 = fmul double %23, %22
  %25 = fptoui double %24 to i8
  store i8 %25, ptr %3, align 1, !tbaa !52
  store i8 %25, ptr %2, align 1, !tbaa !52
  store i8 %25, ptr %1, align 1, !tbaa !52
  br label %42

26:                                               ; preds = %6
  %27 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %28 = fmul double %27, %11
  %29 = fptoui double %28 to i8
  store i8 %29, ptr %1, align 1, !tbaa !52
  %30 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !48
  %32 = fpext float %31 to double
  %33 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %34 = fmul double %33, %32
  %35 = fptoui double %34 to i8
  store i8 %35, ptr %2, align 1, !tbaa !52
  %36 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 2
  %37 = load float, ptr %36, align 8, !tbaa !48
  %38 = fpext float %37 to double
  %39 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %40 = fmul double %39, %38
  %41 = fptoui double %40 to i8
  store i8 %41, ptr %3, align 1, !tbaa !52
  br label %42

42:                                               ; preds = %26, %12
  %43 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 4
  %44 = load float, ptr %43, align 16, !tbaa !48
  %45 = fpext float %44 to double
  %46 = load double, ptr @_ZN3pov6maxclrE, align 8, !tbaa !51
  %47 = fmul double %46, %45
  %48 = fptoui double %47 to i8
  store i8 %48, ptr %4, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @_ZN3pov11Clip_ColourEPfS0_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN3pov17colour2photonRgbeEPhPf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !48
  %7 = fcmp ogt float %6, %4
  %8 = select i1 %7, float %6, float %4
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = fcmp ogt float %10, %8
  %12 = select i1 %11, float %10, float %8
  %13 = fpext float %12 to double
  %14 = fcmp olt double %13, 1.000000e-32
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 0, ptr %16, align 1, !tbaa !52
  store i8 0, ptr %0, align 1, !tbaa !52
  br label %36

17:                                               ; preds = %2
  %18 = call noundef float @_ZSt5frexpfPi(float noundef %12, ptr noundef nonnull %3) #10
  %19 = fpext float %18 to double
  %20 = fmul double %19, 2.560000e+02
  %21 = fdiv double %20, %13
  %22 = fptrunc double %21 to float
  %23 = load float, ptr %1, align 4, !tbaa !48
  %24 = fmul float %23, %22
  %25 = fptoui float %24 to i8
  store i8 %25, ptr %0, align 1, !tbaa !52
  %26 = load float, ptr %5, align 4, !tbaa !48
  %27 = fmul float %26, %22
  %28 = fptoui float %27 to i8
  %29 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %28, ptr %29, align 1, !tbaa !52
  %30 = load float, ptr %9, align 4, !tbaa !48
  %31 = fmul float %30, %22
  %32 = fptoui float %31 to i8
  %33 = load i32, ptr %3, align 4, !tbaa !53
  %34 = trunc i32 %33 to i8
  %35 = add i8 %34, -6
  br label %36

36:                                               ; preds = %17, %15
  %37 = phi i8 [ 0, %15 ], [ %35, %17 ]
  %38 = phi i8 [ 0, %15 ], [ %32, %17 ]
  %39 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %37, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %38, ptr %40, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt5frexpfPi(float noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call { float, i32 } @llvm.frexp.f32.i32(float %0)
  %4 = extractvalue { float, i32 } %3, 1
  store i32 %4, ptr %1, align 4, !tbaa !53
  %5 = extractvalue { float, i32 } %3, 0
  ret float %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local void @_ZN3pov17photonRgbe2colourEPfPh(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !52
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %23, label %6

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
  br label %24

23:                                               ; preds = %2
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !48
  br label %24

24:                                               ; preds = %23, %6
  %25 = phi float [ 0.000000e+00, %23 ], [ %22, %6 ]
  %26 = getelementptr inbounds float, ptr %0, i64 2
  store float %25, ptr %26, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov19prepare_output_lineEPA5_f(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 2), align 4, !tbaa !54
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %7, %4 ], [ 0, %1 ]
  %6 = getelementptr inbounds [5 x float], ptr %0, i64 %5
  tail call void @_ZN3pov11Clip_ColourEPfS0_(ptr noundef %6, ptr noundef %6) #10
  tail call void @_ZN3pov13gamma_correctEPf(ptr noundef %6) #10
  %7 = add nuw nsw i64 %5, 1
  %8 = load i32, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 2), align 4, !tbaa !54
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %5, %9
  br i1 %10, label %4, label %11, !llvm.loop !56

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov11ClipColorAAEPf(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr inbounds (%"struct.pov::OPTIONS_STRUCT", ptr @_ZN3pov4optsE, i64 0, i32 16), align 8, !tbaa !58, !range !59, !noundef !60
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN3pov11Clip_ColourEPfS0_(ptr noundef %0, ptr noundef %0) #10
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!53 = !{!36, !36, i64 0}
!54 = !{!55, !36, i64 12}
!55 = !{!"_ZTSN3pov12Frame_StructE", !45, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !45, i64 24, !45, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !37, i64 64, !37, i64 84, !37, i64 104, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!35, !41, i64 20520}
!59 = !{i8 0, i8 2}
!60 = !{}
