; ModuleID = 'magick/gem.c'
source_filename = "magick/gem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._AffineMatrix = type { double, double, double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"magick/gem.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @ConvertHCLToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fmul double %0, 6.000000e+00
  %8 = tail call double @fmod(double noundef %7, double noundef 2.000000e+00) #14
  %9 = fadd double %8, -1.000000e+00
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fsub double 1.000000e+00, %10
  %12 = fmul double %11, %1
  %13 = fcmp oge double %7, 0.000000e+00
  %14 = fcmp olt double %7, 1.000000e+00
  %15 = and i1 %13, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %6
  %17 = fcmp oge double %7, 1.000000e+00
  %18 = fcmp olt double %7, 2.000000e+00
  %19 = and i1 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = fcmp oge double %7, 2.000000e+00
  %22 = fcmp olt double %7, 3.000000e+00
  %23 = and i1 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = fcmp oge double %7, 3.000000e+00
  %26 = fcmp olt double %7, 4.000000e+00
  %27 = and i1 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = fcmp oge double %7, 4.000000e+00
  %30 = fcmp olt double %7, 5.000000e+00
  %31 = and i1 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = fcmp oge double %7, 5.000000e+00
  %34 = fcmp olt double %7, 6.000000e+00
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %28, %24, %20, %16, %6, %32, %36
  %38 = phi double [ 0.000000e+00, %36 ], [ 0.000000e+00, %32 ], [ %12, %6 ], [ %1, %16 ], [ %1, %20 ], [ %12, %24 ], [ 0.000000e+00, %28 ]
  %39 = phi double [ %1, %36 ], [ 0.000000e+00, %32 ], [ %1, %6 ], [ %12, %16 ], [ 0.000000e+00, %20 ], [ 0.000000e+00, %24 ], [ %12, %28 ]
  %40 = phi double [ %12, %36 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %16 ], [ %12, %20 ], [ %1, %24 ], [ %1, %28 ]
  %41 = fmul double %38, 5.868110e-01
  %42 = tail call double @llvm.fmuladd.f64(double %39, double 2.988390e-01, double %41)
  %43 = tail call double @llvm.fmuladd.f64(double %40, double 1.143500e-01, double %42)
  %44 = fsub double %2, %43
  %45 = fadd double %39, %44
  %46 = fmul double %45, 6.553500e+04
  %47 = fptrunc double %46 to float
  %48 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %47) #15
  store i16 %48, ptr %3, align 2, !tbaa !6
  %49 = fadd double %38, %44
  %50 = fmul double %49, 6.553500e+04
  %51 = fptrunc double %50 to float
  %52 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %51) #15
  store i16 %52, ptr %4, align 2, !tbaa !6
  %53 = fadd double %40, %44
  %54 = fmul double %53, 6.553500e+04
  %55 = fptrunc double %54 to float
  %56 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %55) #15
  store i16 %56, ptr %5, align 2, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @ConvertHCLpToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fmul double %0, 6.000000e+00
  %8 = tail call double @fmod(double noundef %7, double noundef 2.000000e+00) #14
  %9 = fadd double %8, -1.000000e+00
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fsub double 1.000000e+00, %10
  %12 = fmul double %11, %1
  %13 = fcmp oge double %7, 0.000000e+00
  %14 = fcmp olt double %7, 1.000000e+00
  %15 = and i1 %13, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %6
  %17 = fcmp oge double %7, 1.000000e+00
  %18 = fcmp olt double %7, 2.000000e+00
  %19 = and i1 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = fcmp oge double %7, 2.000000e+00
  %22 = fcmp olt double %7, 3.000000e+00
  %23 = and i1 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = fcmp oge double %7, 3.000000e+00
  %26 = fcmp olt double %7, 4.000000e+00
  %27 = and i1 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = fcmp oge double %7, 4.000000e+00
  %30 = fcmp olt double %7, 5.000000e+00
  %31 = and i1 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = fcmp oge double %7, 5.000000e+00
  %34 = fcmp olt double %7, 6.000000e+00
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %28, %24, %20, %16, %6, %32, %36
  %38 = phi double [ 0.000000e+00, %36 ], [ 0.000000e+00, %32 ], [ %12, %6 ], [ %1, %16 ], [ %1, %20 ], [ %12, %24 ], [ 0.000000e+00, %28 ]
  %39 = phi double [ %1, %36 ], [ 0.000000e+00, %32 ], [ %1, %6 ], [ %12, %16 ], [ 0.000000e+00, %20 ], [ 0.000000e+00, %24 ], [ %12, %28 ]
  %40 = phi double [ %12, %36 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %16 ], [ %12, %20 ], [ %1, %24 ], [ %1, %28 ]
  %41 = fmul double %38, 5.868110e-01
  %42 = tail call double @llvm.fmuladd.f64(double %39, double 2.988390e-01, double %41)
  %43 = tail call double @llvm.fmuladd.f64(double %40, double 1.143500e-01, double %42)
  %44 = fsub double %2, %43
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = fsub double %2, %44
  %48 = fdiv double %2, %47
  br label %58

49:                                               ; preds = %37
  %50 = fadd double %44, %1
  %51 = fcmp ogt double %50, 1.000000e+00
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = fsub double 1.000000e+00, %2
  %54 = fsub double %50, %2
  %55 = fdiv double %53, %54
  %56 = fneg double %55
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %1, double 1.000000e+00)
  br label %58

58:                                               ; preds = %49, %52, %46
  %59 = phi double [ 0.000000e+00, %46 ], [ %57, %52 ], [ %44, %49 ]
  %60 = phi double [ %48, %46 ], [ %55, %52 ], [ 1.000000e+00, %49 ]
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %39, double %59)
  %62 = fmul double %61, 6.553500e+04
  %63 = fptrunc double %62 to float
  %64 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %63) #15
  store i16 %64, ptr %3, align 2, !tbaa !6
  %65 = tail call double @llvm.fmuladd.f64(double %60, double %38, double %59)
  %66 = fmul double %65, 6.553500e+04
  %67 = fptrunc double %66 to float
  %68 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %67) #15
  store i16 %68, ptr %4, align 2, !tbaa !6
  %69 = tail call double @llvm.fmuladd.f64(double %60, double %40, double %59)
  %70 = fmul double %69, 6.553500e+04
  %71 = fptrunc double %70 to float
  %72 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %71) #15
  store i16 %72, ptr %5, align 2, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ConvertHSBToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #5 {
  %7 = fcmp oeq double %1, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = fmul double %2, 6.553500e+04
  %10 = fptrunc double %9 to float
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #15
  store i16 %11, ptr %3, align 2, !tbaa !6
  store i16 %11, ptr %4, align 2, !tbaa !6
  %12 = load i16, ptr %3, align 2, !tbaa !6
  br label %88

13:                                               ; preds = %6
  %14 = tail call double @llvm.floor.f64(double %0)
  %15 = fsub double %0, %14
  %16 = fmul double %15, 6.000000e+00
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = fsub double %16, %17
  %19 = fsub double 1.000000e+00, %1
  %20 = fmul double %19, %2
  %21 = fneg double %1
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %18, double 1.000000e+00)
  %23 = fmul double %22, %2
  %24 = fsub double 1.000000e+00, %18
  %25 = tail call double @llvm.fmuladd.f64(double %21, double %24, double 1.000000e+00)
  %26 = fmul double %25, %2
  %27 = fptosi double %16 to i32
  switch i32 %27, label %28 [
    i32 5, label %78
    i32 1, label %38
    i32 2, label %48
    i32 3, label %58
    i32 4, label %68
  ]

28:                                               ; preds = %13
  %29 = fmul double %2, 6.553500e+04
  %30 = fptrunc double %29 to float
  %31 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %30) #15
  store i16 %31, ptr %3, align 2, !tbaa !6
  %32 = fmul double %26, 6.553500e+04
  %33 = fptrunc double %32 to float
  %34 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %33) #15
  store i16 %34, ptr %4, align 2, !tbaa !6
  %35 = fmul double %20, 6.553500e+04
  %36 = fptrunc double %35 to float
  %37 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %36) #15
  br label %88

38:                                               ; preds = %13
  %39 = fmul double %23, 6.553500e+04
  %40 = fptrunc double %39 to float
  %41 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %40) #15
  store i16 %41, ptr %3, align 2, !tbaa !6
  %42 = fmul double %2, 6.553500e+04
  %43 = fptrunc double %42 to float
  %44 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %43) #15
  store i16 %44, ptr %4, align 2, !tbaa !6
  %45 = fmul double %20, 6.553500e+04
  %46 = fptrunc double %45 to float
  %47 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %46) #15
  br label %88

48:                                               ; preds = %13
  %49 = fmul double %20, 6.553500e+04
  %50 = fptrunc double %49 to float
  %51 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %50) #15
  store i16 %51, ptr %3, align 2, !tbaa !6
  %52 = fmul double %2, 6.553500e+04
  %53 = fptrunc double %52 to float
  %54 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %53) #15
  store i16 %54, ptr %4, align 2, !tbaa !6
  %55 = fmul double %26, 6.553500e+04
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %56) #15
  br label %88

58:                                               ; preds = %13
  %59 = fmul double %20, 6.553500e+04
  %60 = fptrunc double %59 to float
  %61 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %60) #15
  store i16 %61, ptr %3, align 2, !tbaa !6
  %62 = fmul double %23, 6.553500e+04
  %63 = fptrunc double %62 to float
  %64 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %63) #15
  store i16 %64, ptr %4, align 2, !tbaa !6
  %65 = fmul double %2, 6.553500e+04
  %66 = fptrunc double %65 to float
  %67 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %66) #15
  br label %88

68:                                               ; preds = %13
  %69 = fmul double %26, 6.553500e+04
  %70 = fptrunc double %69 to float
  %71 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %70) #15
  store i16 %71, ptr %3, align 2, !tbaa !6
  %72 = fmul double %20, 6.553500e+04
  %73 = fptrunc double %72 to float
  %74 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %73) #15
  store i16 %74, ptr %4, align 2, !tbaa !6
  %75 = fmul double %2, 6.553500e+04
  %76 = fptrunc double %75 to float
  %77 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %76) #15
  br label %88

78:                                               ; preds = %13
  %79 = fmul double %2, 6.553500e+04
  %80 = fptrunc double %79 to float
  %81 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %80) #15
  store i16 %81, ptr %3, align 2, !tbaa !6
  %82 = fmul double %20, 6.553500e+04
  %83 = fptrunc double %82 to float
  %84 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %83) #15
  store i16 %84, ptr %4, align 2, !tbaa !6
  %85 = fmul double %23, 6.553500e+04
  %86 = fptrunc double %85 to float
  %87 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %86) #15
  br label %88

88:                                               ; preds = %28, %38, %48, %58, %68, %78, %8
  %89 = phi i16 [ %37, %28 ], [ %47, %38 ], [ %57, %48 ], [ %67, %58 ], [ %77, %68 ], [ %87, %78 ], [ %12, %8 ]
  store i16 %89, ptr %5, align 2, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @ConvertHSIToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fmul double %0, 3.600000e+02
  %8 = fdiv double %7, 3.600000e+02
  %9 = tail call double @llvm.floor.f64(double %8)
  %10 = tail call double @llvm.fmuladd.f64(double %9, double -3.600000e+02, double %7)
  %11 = fcmp olt double %10, 1.200000e+02
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = fsub double 1.000000e+00, %1
  %14 = fmul double %13, %2
  %15 = fmul double %10, 0x3F91DF46A2529D39
  %16 = tail call double @cos(double noundef %15) #14
  %17 = fmul double %16, %1
  %18 = fsub double 6.000000e+01, %10
  %19 = fmul double %18, 0x3F91DF46A2529D39
  %20 = tail call double @cos(double noundef %19) #14
  %21 = fdiv double %17, %20
  %22 = fadd double %21, 1.000000e+00
  %23 = fmul double %22, %2
  %24 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %2, double 3.000000e+00, double %24)
  %26 = fsub double %25, %14
  br label %57

27:                                               ; preds = %6
  %28 = fcmp olt double %10, 2.400000e+02
  %29 = fsub double 1.000000e+00, %1
  %30 = fmul double %29, %2
  %31 = fneg double %30
  %32 = tail call double @llvm.fmuladd.f64(double %2, double 3.000000e+00, double %31)
  br i1 %28, label %33, label %45

33:                                               ; preds = %27
  %34 = fadd double %10, -1.200000e+02
  %35 = fmul double %34, 0x3F91DF46A2529D39
  %36 = tail call double @cos(double noundef %35) #14
  %37 = fmul double %36, %1
  %38 = fsub double 6.000000e+01, %34
  %39 = fmul double %38, 0x3F91DF46A2529D39
  %40 = tail call double @cos(double noundef %39) #14
  %41 = fdiv double %37, %40
  %42 = fadd double %41, 1.000000e+00
  %43 = fmul double %42, %2
  %44 = fsub double %32, %43
  br label %57

45:                                               ; preds = %27
  %46 = fadd double %10, -2.400000e+02
  %47 = fmul double %46, 0x3F91DF46A2529D39
  %48 = tail call double @cos(double noundef %47) #14
  %49 = fmul double %48, %1
  %50 = fsub double 6.000000e+01, %46
  %51 = fmul double %50, 0x3F91DF46A2529D39
  %52 = tail call double @cos(double noundef %51) #14
  %53 = fdiv double %49, %52
  %54 = fadd double %53, 1.000000e+00
  %55 = fmul double %54, %2
  %56 = fsub double %32, %55
  br label %57

57:                                               ; preds = %33, %45, %12
  %58 = phi double [ %14, %12 ], [ %44, %33 ], [ %55, %45 ]
  %59 = phi double [ %26, %12 ], [ %43, %33 ], [ %30, %45 ]
  %60 = phi double [ %23, %12 ], [ %30, %33 ], [ %56, %45 ]
  %61 = fmul double %60, 6.553500e+04
  %62 = fptrunc double %61 to float
  %63 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %62) #15
  store i16 %63, ptr %3, align 2, !tbaa !6
  %64 = fmul double %59, 6.553500e+04
  %65 = fptrunc double %64 to float
  %66 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %65) #15
  store i16 %66, ptr %4, align 2, !tbaa !6
  %67 = fmul double %58, 6.553500e+04
  %68 = fptrunc double %67 to float
  %69 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %68) #15
  store i16 %69, ptr %5, align 2, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ConvertHSLToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #6 {
  %7 = fmul double %0, 3.600000e+02
  %8 = fcmp ugt double %2, 5.000000e-01
  %9 = fmul double %2, 2.000000e+00
  %10 = tail call double @llvm.fmuladd.f64(double %2, double -2.000000e+00, double 2.000000e+00)
  %11 = select i1 %8, double %10, double %9
  %12 = fmul double %11, %1
  %13 = tail call double @llvm.fmuladd.f64(double %12, double -5.000000e-01, double %2)
  %14 = fdiv double %7, 3.600000e+02
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = tail call double @llvm.fmuladd.f64(double %15, double -3.600000e+02, double %7)
  %17 = fdiv double %16, 6.000000e+01
  %18 = fmul double %17, 5.000000e-01
  %19 = tail call double @llvm.floor.f64(double %18)
  %20 = tail call double @llvm.fmuladd.f64(double %19, double -2.000000e+00, double %17)
  %21 = fadd double %20, -1.000000e+00
  %22 = tail call double @llvm.fabs.f64(double %21)
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %12, %23
  %25 = tail call double @llvm.floor.f64(double %17)
  %26 = fptosi double %25 to i32
  switch i32 %26, label %45 [
    i32 0, label %27
    i32 1, label %30
    i32 2, label %33
    i32 3, label %36
    i32 4, label %39
    i32 5, label %42
  ]

27:                                               ; preds = %6
  %28 = fadd double %12, %13
  %29 = fadd double %13, %24
  br label %45

30:                                               ; preds = %6
  %31 = fadd double %13, %24
  %32 = fadd double %12, %13
  br label %45

33:                                               ; preds = %6
  %34 = fadd double %12, %13
  %35 = fadd double %13, %24
  br label %45

36:                                               ; preds = %6
  %37 = fadd double %13, %24
  %38 = fadd double %12, %13
  br label %45

39:                                               ; preds = %6
  %40 = fadd double %13, %24
  %41 = fadd double %12, %13
  br label %45

42:                                               ; preds = %6
  %43 = fadd double %12, %13
  %44 = fadd double %13, %24
  br label %45

45:                                               ; preds = %6, %42, %39, %36, %33, %30, %27
  %46 = phi double [ %13, %42 ], [ %13, %39 ], [ %37, %36 ], [ %34, %33 ], [ %32, %30 ], [ %29, %27 ], [ 0.000000e+00, %6 ]
  %47 = phi double [ %43, %42 ], [ %40, %39 ], [ %13, %36 ], [ %13, %33 ], [ %31, %30 ], [ %28, %27 ], [ 0.000000e+00, %6 ]
  %48 = phi double [ %44, %42 ], [ %41, %39 ], [ %38, %36 ], [ %35, %33 ], [ %13, %30 ], [ %13, %27 ], [ 0.000000e+00, %6 ]
  %49 = fmul double %47, 6.553500e+04
  %50 = fptrunc double %49 to float
  %51 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %50) #15
  store i16 %51, ptr %3, align 2, !tbaa !6
  %52 = fmul double %46, 6.553500e+04
  %53 = fptrunc double %52 to float
  %54 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %53) #15
  store i16 %54, ptr %4, align 2, !tbaa !6
  %55 = fmul double %48, 6.553500e+04
  %56 = fptrunc double %55 to float
  %57 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %56) #15
  store i16 %57, ptr %5, align 2, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ConvertHSVToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #6 {
  %7 = fmul double %0, 3.600000e+02
  %8 = fmul double %1, %2
  %9 = fsub double %2, %8
  %10 = fdiv double %7, 3.600000e+02
  %11 = tail call double @llvm.floor.f64(double %10)
  %12 = tail call double @llvm.fmuladd.f64(double %11, double -3.600000e+02, double %7)
  %13 = fdiv double %12, 6.000000e+01
  %14 = fmul double %13, 5.000000e-01
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = tail call double @llvm.fmuladd.f64(double %15, double -2.000000e+00, double %13)
  %17 = fadd double %16, -1.000000e+00
  %18 = tail call double @llvm.fabs.f64(double %17)
  %19 = fsub double 1.000000e+00, %18
  %20 = fmul double %8, %19
  %21 = tail call double @llvm.floor.f64(double %13)
  %22 = fptosi double %21 to i32
  switch i32 %22, label %41 [
    i32 0, label %23
    i32 1, label %26
    i32 2, label %29
    i32 3, label %32
    i32 4, label %35
    i32 5, label %38
  ]

23:                                               ; preds = %6
  %24 = fadd double %8, %9
  %25 = fadd double %9, %20
  br label %41

26:                                               ; preds = %6
  %27 = fadd double %9, %20
  %28 = fadd double %8, %9
  br label %41

29:                                               ; preds = %6
  %30 = fadd double %8, %9
  %31 = fadd double %9, %20
  br label %41

32:                                               ; preds = %6
  %33 = fadd double %9, %20
  %34 = fadd double %8, %9
  br label %41

35:                                               ; preds = %6
  %36 = fadd double %9, %20
  %37 = fadd double %8, %9
  br label %41

38:                                               ; preds = %6
  %39 = fadd double %8, %9
  %40 = fadd double %9, %20
  br label %41

41:                                               ; preds = %6, %38, %35, %32, %29, %26, %23
  %42 = phi double [ %9, %38 ], [ %9, %35 ], [ %33, %32 ], [ %30, %29 ], [ %28, %26 ], [ %25, %23 ], [ 0.000000e+00, %6 ]
  %43 = phi double [ %39, %38 ], [ %36, %35 ], [ %9, %32 ], [ %9, %29 ], [ %27, %26 ], [ %24, %23 ], [ 0.000000e+00, %6 ]
  %44 = phi double [ %40, %38 ], [ %37, %35 ], [ %34, %32 ], [ %31, %29 ], [ %9, %26 ], [ %9, %23 ], [ 0.000000e+00, %6 ]
  %45 = fmul double %43, 6.553500e+04
  %46 = fptrunc double %45 to float
  %47 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %46) #15
  store i16 %47, ptr %3, align 2, !tbaa !6
  %48 = fmul double %42, 6.553500e+04
  %49 = fptrunc double %48 to float
  %50 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %49) #15
  store i16 %50, ptr %4, align 2, !tbaa !6
  %51 = fmul double %44, 6.553500e+04
  %52 = fptrunc double %51 to float
  %53 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %52) #15
  store i16 %53, ptr %5, align 2, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ConvertHWBToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #6 {
  %7 = fsub double 1.000000e+00, %2
  %8 = fcmp oeq double %0, -1.000000e+00
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = fmul double %7, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %11) #15
  store i16 %12, ptr %3, align 2, !tbaa !6
  store i16 %12, ptr %4, align 2, !tbaa !6
  br label %44

13:                                               ; preds = %6
  %14 = fmul double %0, 6.000000e+00
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = fptosi double %15 to i64
  %17 = sitofp i64 %16 to double
  %18 = fneg double %17
  %19 = tail call double @llvm.fmuladd.f64(double %0, double 6.000000e+00, double %18)
  %20 = and i64 %16, 1
  %21 = icmp eq i64 %20, 0
  %22 = fsub double 1.000000e+00, %19
  %23 = select i1 %21, double %19, double %22
  %24 = fsub double %7, %1
  %25 = tail call double @llvm.fmuladd.f64(double %23, double %24, double %1)
  switch i64 %16, label %31 [
    i64 5, label %30
    i64 4, label %29
    i64 1, label %26
    i64 2, label %27
    i64 3, label %28
  ]

26:                                               ; preds = %13
  br label %31

27:                                               ; preds = %13
  br label %31

28:                                               ; preds = %13
  br label %31

29:                                               ; preds = %13
  br label %31

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %13, %30, %29, %28, %27, %26
  %32 = phi double [ %25, %28 ], [ %7, %27 ], [ %7, %26 ], [ %1, %29 ], [ %1, %30 ], [ %25, %13 ]
  %33 = phi double [ %1, %28 ], [ %1, %27 ], [ %25, %26 ], [ %25, %29 ], [ %7, %30 ], [ %7, %13 ]
  %34 = phi double [ %7, %28 ], [ %25, %27 ], [ %1, %26 ], [ %7, %29 ], [ %25, %30 ], [ %1, %13 ]
  %35 = fmul double %33, 6.553500e+04
  %36 = fptrunc double %35 to float
  %37 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %36) #15
  store i16 %37, ptr %3, align 2, !tbaa !6
  %38 = fmul double %32, 6.553500e+04
  %39 = fptrunc double %38 to float
  %40 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %39) #15
  store i16 %40, ptr %4, align 2, !tbaa !6
  %41 = fmul double %34, 6.553500e+04
  %42 = fptrunc double %41 to float
  %43 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %42) #15
  br label %44

44:                                               ; preds = %31, %9
  %45 = phi i16 [ %43, %31 ], [ %12, %9 ]
  store i16 %45, ptr %5, align 2, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConvertLCHabToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #7 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %10 = fmul double %0, 1.000000e+02
  %11 = fadd double %1, -5.000000e-01
  %12 = fmul double %11, 2.550000e+02
  %13 = fmul double %2, 3.600000e+02
  call fastcc void @ConvertLCHabToXYZ(double noundef %10, double noundef %12, double noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %14 = load double, ptr %7, align 8, !tbaa !10
  %15 = load double, ptr %8, align 8, !tbaa !10
  %16 = load double, ptr %9, align 8, !tbaa !10
  tail call fastcc void @ConvertXYZToRGB(double noundef %14, double noundef %15, double noundef %16, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @ConvertLCHabToXYZ(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = fmul double %2, 0x400921FB54442D18
  %8 = fdiv double %7, 1.800000e+02
  %9 = tail call double @cos(double noundef %8) #14
  %10 = fmul double %9, %1
  %11 = tail call double @sin(double noundef %8) #14
  %12 = fmul double %11, %1
  tail call fastcc void @ConvertLabToXYZ(double noundef %0, double noundef %10, double noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertXYZToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #7 {
  %7 = fmul double %1, -1.537200e+00
  %8 = tail call double @llvm.fmuladd.f64(double %0, double 3.240600e+00, double %7)
  %9 = tail call double @llvm.fmuladd.f64(double %2, double -4.986000e-01, double %8)
  %10 = fmul double %1, 1.875800e+00
  %11 = tail call double @llvm.fmuladd.f64(double %0, double 0xBFEF013A92A30553, double %10)
  %12 = tail call double @llvm.fmuladd.f64(double %2, double 4.150000e-02, double %11)
  %13 = fmul double %1, -2.040000e-01
  %14 = tail call double @llvm.fmuladd.f64(double %0, double 5.570000e-02, double %13)
  %15 = tail call double @llvm.fmuladd.f64(double %2, double 1.057000e+00, double %14)
  %16 = fmul double %9, 6.553500e+04
  %17 = fptrunc double %16 to float
  %18 = tail call float @EncodePixelGamma(float noundef %17) #17
  %19 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %18) #15
  store i16 %19, ptr %3, align 2, !tbaa !6
  %20 = fmul double %12, 6.553500e+04
  %21 = fptrunc double %20 to float
  %22 = tail call float @EncodePixelGamma(float noundef %21) #17
  %23 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %22) #15
  store i16 %23, ptr %4, align 2, !tbaa !6
  %24 = fmul double %15, 6.553500e+04
  %25 = fptrunc double %24 to float
  %26 = tail call float @EncodePixelGamma(float noundef %25) #17
  %27 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %26) #15
  store i16 %27, ptr %5, align 2, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ConvertLabToXYZ(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #6 {
  %7 = fadd double %0, 1.600000e+01
  %8 = insertelement <2 x double> poison, double %7, i64 0
  %9 = insertelement <2 x double> %8, double %1, i64 1
  %10 = fdiv <2 x double> %9, <double 1.160000e+02, double 5.000000e+02>
  %11 = extractelement <2 x double> %10, i64 0
  %12 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %13 = fadd <2 x double> %10, %12
  %14 = extractelement <2 x double> %13, i64 0
  %15 = fdiv double %2, 2.000000e+02
  %16 = fsub double %11, %15
  %17 = fmul <2 x double> %13, %13
  %18 = fmul <2 x double> %13, %17
  %19 = extractelement <2 x double> %18, i64 0
  %20 = fcmp ogt double %19, 0x3F822354D28F7CD6
  %21 = tail call double @llvm.fmuladd.f64(double %14, double 1.160000e+02, double -1.600000e+01)
  %22 = fdiv double %21, 0x408C3A5ED097B426
  %23 = select i1 %20, double %19, double %22
  %24 = fmul <2 x double> %10, %10
  %25 = fmul <2 x double> %10, %24
  %26 = extractelement <2 x double> %25, i64 0
  %27 = fcmp ogt double %26, 0x3F822354D28F7CD6
  %28 = fdiv double %0, 0x408C3A5ED097B426
  %29 = select i1 %27, double %26, double %28
  %30 = fmul double %16, %16
  %31 = fmul double %16, %30
  %32 = fcmp ogt double %31, 0x3F822354D28F7CD6
  %33 = tail call double @llvm.fmuladd.f64(double %16, double 1.160000e+02, double -1.600000e+01)
  %34 = fdiv double %33, 0x408C3A5ED097B426
  %35 = select i1 %32, double %31, double %34
  %36 = fmul double %23, 0x3FEE6A22B3892EE8
  store double %36, ptr %3, align 8, !tbaa !10
  store double %29, ptr %4, align 8, !tbaa !10
  %37 = fmul double %35, 0x3FF16B8950763A19
  store double %37, ptr %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @EncodePixelGamma(float noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConvertLCHuvToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #7 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %10 = fmul double %0, 1.000000e+02
  %11 = fadd double %1, -5.000000e-01
  %12 = fmul double %11, 2.550000e+02
  %13 = fmul double %2, 3.600000e+02
  call fastcc void @ConvertLCHuvToXYZ(double noundef %10, double noundef %12, double noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %14 = load double, ptr %7, align 8, !tbaa !10
  %15 = load double, ptr %8, align 8, !tbaa !10
  %16 = load double, ptr %9, align 8, !tbaa !10
  tail call fastcc void @ConvertXYZToRGB(double noundef %14, double noundef %15, double noundef %16, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @ConvertLCHuvToXYZ(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #9 {
  %7 = fmul double %2, 0x400921FB54442D18
  %8 = fdiv double %7, 1.800000e+02
  %9 = tail call double @cos(double noundef %8) #14
  %10 = fmul double %9, %1
  %11 = tail call double @sin(double noundef %8) #14
  %12 = fmul double %11, %1
  tail call fastcc void @ConvertLuvToXYZ(double noundef %0, double noundef %10, double noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @ConvertLuvToXYZ(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #9 {
  %7 = fcmp ogt double %0, 8.000000e+00
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = fadd double %0, 1.600000e+01
  %10 = fdiv double %9, 1.160000e+02
  %11 = tail call double @pow(double noundef %10, double noundef 3.000000e+00) #14
  br label %14

12:                                               ; preds = %6
  %13 = fdiv double %0, 0x408C3A5ED097B426
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi double [ %13, %12 ], [ %11, %8 ]
  store double %15, ptr %4, align 8, !tbaa !10
  %16 = fmul double %0, 3.900000e+01
  %17 = fmul double %0, 1.300000e+01
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 0x3FDDF95190ED8BC1, double %2)
  %19 = fdiv double %16, %18
  %20 = fadd double %19, -5.000000e+00
  %21 = fmul double %15, 5.000000e+00
  %22 = tail call double @llvm.fmuladd.f64(double %15, double %20, double %21)
  %23 = fmul double %0, 5.200000e+01
  %24 = tail call double @llvm.fmuladd.f64(double %17, double 0x3FC952CD31007F87, double %1)
  %25 = fdiv double %23, %24
  %26 = fadd double %25, -1.000000e+00
  %27 = fdiv double %26, 3.000000e+00
  %28 = fadd double %27, 0x3FD5555555555555
  %29 = fdiv double %22, %28
  store double %29, ptr %3, align 8, !tbaa !10
  %30 = load double, ptr %4, align 8, !tbaa !10
  %31 = fmul double %30, -5.000000e+00
  %32 = tail call double @llvm.fmuladd.f64(double %29, double %27, double %31)
  store double %32, ptr %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @ConvertRGBToHCL(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = uitofp i16 %2 to double
  %10 = tail call fastcc double @MagickMax(double noundef %8, double noundef %9) #15
  %11 = tail call fastcc double @MagickMax(double noundef %7, double noundef %10) #15
  %12 = tail call fastcc double @MagickMin(double noundef %8, double noundef %9) #15
  %13 = tail call fastcc double @MagickMin(double noundef %7, double noundef %12) #15
  %14 = fsub double %11, %13
  %15 = fcmp oeq double %14, 0.000000e+00
  br i1 %15, label %36, label %16

16:                                               ; preds = %6
  %17 = fptoui double %11 to i16
  %18 = icmp eq i16 %17, %0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = fsub double %8, %9
  %21 = fdiv double %20, %14
  %22 = fadd double %21, 6.000000e+00
  %23 = tail call double @fmod(double noundef %22, double noundef 6.000000e+00) #14
  br label %36

24:                                               ; preds = %16
  %25 = icmp eq i16 %17, %1
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = fsub double %9, %7
  %28 = fdiv double %27, %14
  %29 = fadd double %28, 2.000000e+00
  br label %36

30:                                               ; preds = %24
  %31 = icmp eq i16 %17, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = fsub double %7, %8
  %34 = fdiv double %33, %14
  %35 = fadd double %34, 4.000000e+00
  br label %36

36:                                               ; preds = %6, %19, %30, %32, %26
  %37 = phi double [ %23, %19 ], [ %29, %26 ], [ %35, %32 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %6 ]
  %38 = fdiv double %37, 6.000000e+00
  store double %38, ptr %3, align 8, !tbaa !10
  %39 = fmul double %14, 0x3EF0001000100010
  store double %39, ptr %4, align 8, !tbaa !10
  %40 = fmul double %8, 5.868110e-01
  %41 = tail call double @llvm.fmuladd.f64(double %7, double 2.988390e-01, double %40)
  %42 = tail call double @llvm.fmuladd.f64(double %9, double 1.143500e-01, double %41)
  %43 = fmul double %42, 0x3EF0001000100010
  store double %43, ptr %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #4 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #4 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @ConvertRGBToHCLp(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = uitofp i16 %2 to double
  %10 = tail call fastcc double @MagickMax(double noundef %8, double noundef %9) #15
  %11 = tail call fastcc double @MagickMax(double noundef %7, double noundef %10) #15
  %12 = tail call fastcc double @MagickMin(double noundef %8, double noundef %9) #15
  %13 = tail call fastcc double @MagickMin(double noundef %7, double noundef %12) #15
  %14 = fsub double %11, %13
  %15 = fcmp oeq double %14, 0.000000e+00
  br i1 %15, label %36, label %16

16:                                               ; preds = %6
  %17 = fptoui double %11 to i16
  %18 = icmp eq i16 %17, %0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = fsub double %8, %9
  %21 = fdiv double %20, %14
  %22 = fadd double %21, 6.000000e+00
  %23 = tail call double @fmod(double noundef %22, double noundef 6.000000e+00) #14
  br label %36

24:                                               ; preds = %16
  %25 = icmp eq i16 %17, %1
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = fsub double %9, %7
  %28 = fdiv double %27, %14
  %29 = fadd double %28, 2.000000e+00
  br label %36

30:                                               ; preds = %24
  %31 = icmp eq i16 %17, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = fsub double %7, %8
  %34 = fdiv double %33, %14
  %35 = fadd double %34, 4.000000e+00
  br label %36

36:                                               ; preds = %6, %19, %30, %32, %26
  %37 = phi double [ %23, %19 ], [ %29, %26 ], [ %35, %32 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %6 ]
  %38 = fdiv double %37, 6.000000e+00
  store double %38, ptr %3, align 8, !tbaa !10
  %39 = fmul double %14, 0x3EF0001000100010
  store double %39, ptr %4, align 8, !tbaa !10
  %40 = fmul double %8, 5.868110e-01
  %41 = tail call double @llvm.fmuladd.f64(double %7, double 2.988390e-01, double %40)
  %42 = tail call double @llvm.fmuladd.f64(double %9, double 1.143500e-01, double %41)
  %43 = fmul double %42, 0x3EF0001000100010
  store double %43, ptr %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ConvertRGBToHSB(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #6 {
  store double 0.000000e+00, ptr %3, align 8, !tbaa !10
  store double 0.000000e+00, ptr %4, align 8, !tbaa !10
  store double 0.000000e+00, ptr %5, align 8, !tbaa !10
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = uitofp i16 %2 to double
  %10 = fcmp ogt double %7, %8
  %11 = select i1 %10, double %7, double %8
  %12 = fcmp olt double %11, %9
  %13 = select i1 %12, double %9, double %11
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %45, label %15

15:                                               ; preds = %6
  %16 = fcmp olt double %7, %8
  %17 = select i1 %16, double %7, double %8
  %18 = fcmp ogt double %17, %9
  %19 = select i1 %18, double %9, double %17
  %20 = fsub double %13, %19
  %21 = fdiv double %20, %13
  store double %21, ptr %4, align 8, !tbaa !10
  %22 = fmul double %13, 0x3EF0001000100010
  store double %22, ptr %5, align 8, !tbaa !10
  %23 = fcmp oeq double %20, 0.000000e+00
  br i1 %23, label %45, label %24

24:                                               ; preds = %15
  %25 = fcmp oeq double %13, %7
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = fsub double %8, %9
  %28 = fdiv double %27, %20
  br label %39

29:                                               ; preds = %24
  %30 = fcmp oeq double %13, %8
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = fsub double %9, %7
  %33 = fdiv double %32, %20
  %34 = fadd double %33, 2.000000e+00
  br label %39

35:                                               ; preds = %29
  %36 = fsub double %7, %8
  %37 = fdiv double %36, %20
  %38 = fadd double %37, 4.000000e+00
  br label %39

39:                                               ; preds = %31, %35, %26
  %40 = phi double [ %34, %31 ], [ %38, %35 ], [ %28, %26 ]
  %41 = fdiv double %40, 6.000000e+00
  %42 = fcmp olt double %41, 0.000000e+00
  %43 = fadd double %41, 1.000000e+00
  %44 = select i1 %42, double %43, double %41
  store double %44, ptr %3, align 8, !tbaa !10
  br label %45

45:                                               ; preds = %15, %6, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @ConvertRGBToHSI(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = fmul double %8, 0x3EF0001000100010
  %10 = tail call double @llvm.fmuladd.f64(double %7, double 0x3EF0001000100010, double %9)
  %11 = uitofp i16 %2 to double
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 0x3EF0001000100010, double %10)
  %13 = fdiv double %12, 3.000000e+00
  store double %13, ptr %5, align 8, !tbaa !10
  %14 = fcmp ugt double %13, 0.000000e+00
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !10
  store double 0.000000e+00, ptr %4, align 8, !tbaa !10
  br label %36

16:                                               ; preds = %6
  %17 = fmul double %7, 0x3EF0001000100010
  %18 = fmul double %11, 0x3EF0001000100010
  %19 = tail call fastcc double @MagickMin(double noundef %9, double noundef %18) #15
  %20 = tail call fastcc double @MagickMin(double noundef %17, double noundef %19) #15
  %21 = fdiv double %20, %13
  %22 = fsub double 1.000000e+00, %21
  store double %22, ptr %4, align 8, !tbaa !10
  %23 = fneg double %9
  %24 = tail call double @llvm.fmuladd.f64(double %7, double 0x3F00001000100010, double %23)
  %25 = tail call double @llvm.fmuladd.f64(double %11, double 0xBEF0001000100010, double %24)
  %26 = fmul double %25, 5.000000e-01
  %27 = fneg double %18
  %28 = tail call double @llvm.fmuladd.f64(double %8, double 0x3EF0001000100010, double %27)
  %29 = fmul double %28, 0x3FEBB67AE8584CA9
  %30 = tail call double @atan2(double noundef %29, double noundef %26) #14
  %31 = fmul double %30, 0x404CA5DC1A63C1F8
  %32 = fdiv double %31, 3.600000e+02
  %33 = fcmp olt double %32, 0.000000e+00
  %34 = fadd double %32, 1.000000e+00
  %35 = select i1 %33, double %34, double %32
  store double %35, ptr %3, align 8, !tbaa !10
  br label %36

36:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ConvertRGBToHSL(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) local_unnamed_addr #5 {
  %7 = uitofp i16 %0 to double
  %8 = fmul double %7, 0x3EF0001000100010
  %9 = uitofp i16 %1 to double
  %10 = fmul double %9, 0x3EF0001000100010
  %11 = uitofp i16 %2 to double
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = tail call fastcc double @MagickMax(double noundef %10, double noundef %12) #15
  %14 = tail call fastcc double @MagickMax(double noundef %8, double noundef %13) #15
  %15 = tail call fastcc double @MagickMin(double noundef %10, double noundef %12) #15
  %16 = tail call fastcc double @MagickMin(double noundef %8, double noundef %15) #15
  %17 = fsub double %14, %16
  %18 = fadd double %14, %16
  %19 = fmul double %18, 5.000000e-01
  store double %19, ptr %5, align 8, !tbaa !10
  %20 = fcmp ugt double %17, 0.000000e+00
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !10
  br label %52

22:                                               ; preds = %6
  %23 = fcmp oeq double %14, %8
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = fneg double %12
  %26 = tail call double @llvm.fmuladd.f64(double %9, double 0x3EF0001000100010, double %25)
  %27 = fdiv double %26, %17
  %28 = fcmp olt double %10, %12
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = fadd double %27, 6.000000e+00
  br label %43

31:                                               ; preds = %22
  %32 = fcmp oeq double %14, %10
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = fneg double %8
  %35 = tail call double @llvm.fmuladd.f64(double %11, double 0x3EF0001000100010, double %34)
  %36 = fdiv double %35, %17
  %37 = fadd double %36, 2.000000e+00
  br label %43

38:                                               ; preds = %31
  %39 = fneg double %10
  %40 = tail call double @llvm.fmuladd.f64(double %7, double 0x3EF0001000100010, double %39)
  %41 = fdiv double %40, %17
  %42 = fadd double %41, 4.000000e+00
  br label %43

43:                                               ; preds = %33, %38, %24, %29
  %44 = phi double [ %37, %33 ], [ %42, %38 ], [ %27, %24 ], [ %30, %29 ]
  %45 = fmul double %44, 0x3FC5555555555555
  store double %45, ptr %3, align 8, !tbaa !10
  %46 = load double, ptr %5, align 8, !tbaa !10
  %47 = fcmp ugt double %46, 5.000000e-01
  %48 = tail call double @llvm.fmuladd.f64(double %46, double -2.000000e+00, double 2.000000e+00)
  %49 = fmul double %46, 2.000000e+00
  %50 = select i1 %47, double %48, double %49
  %51 = fdiv double %17, %50
  br label %52

52:                                               ; preds = %43, %21
  %53 = phi double [ %51, %43 ], [ 0.000000e+00, %21 ]
  store double %53, ptr %4, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ConvertRGBToHSV(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #6 {
  %7 = uitofp i16 %0 to double
  %8 = fmul double %7, 0x3EF0001000100010
  %9 = uitofp i16 %1 to double
  %10 = fmul double %9, 0x3EF0001000100010
  %11 = uitofp i16 %2 to double
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = tail call fastcc double @MagickMax(double noundef %10, double noundef %12) #15
  %14 = tail call fastcc double @MagickMax(double noundef %8, double noundef %13) #15
  %15 = tail call fastcc double @MagickMin(double noundef %10, double noundef %12) #15
  %16 = tail call fastcc double @MagickMin(double noundef %8, double noundef %15) #15
  %17 = fsub double %14, %16
  store double %14, ptr %5, align 8, !tbaa !10
  %18 = fcmp ugt double %17, 0.000000e+00
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !10
  br label %45

20:                                               ; preds = %6
  %21 = fcmp oeq double %14, %8
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = fneg double %12
  %24 = tail call double @llvm.fmuladd.f64(double %9, double 0x3EF0001000100010, double %23)
  %25 = fdiv double %24, %17
  %26 = fcmp olt double %10, %12
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = fadd double %25, 6.000000e+00
  br label %41

29:                                               ; preds = %20
  %30 = fcmp oeq double %14, %10
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = fneg double %8
  %33 = tail call double @llvm.fmuladd.f64(double %11, double 0x3EF0001000100010, double %32)
  %34 = fdiv double %33, %17
  %35 = fadd double %34, 2.000000e+00
  br label %41

36:                                               ; preds = %29
  %37 = fneg double %10
  %38 = tail call double @llvm.fmuladd.f64(double %7, double 0x3EF0001000100010, double %37)
  %39 = fdiv double %38, %17
  %40 = fadd double %39, 4.000000e+00
  br label %41

41:                                               ; preds = %31, %36, %22, %27
  %42 = phi double [ %35, %31 ], [ %40, %36 ], [ %25, %22 ], [ %28, %27 ]
  %43 = fmul double %42, 0x3FC5555555555555
  store double %43, ptr %3, align 8, !tbaa !10
  %44 = fdiv double %17, %14
  br label %45

45:                                               ; preds = %41, %19
  %46 = phi double [ %44, %41 ], [ 0.000000e+00, %19 ]
  store double %46, ptr %4, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ConvertRGBToHWB(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #6 {
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = uitofp i16 %2 to double
  %10 = tail call fastcc double @MagickMin(double noundef %8, double noundef %9) #15
  %11 = tail call fastcc double @MagickMin(double noundef %7, double noundef %10) #15
  %12 = tail call fastcc double @MagickMax(double noundef %8, double noundef %9) #15
  %13 = tail call fastcc double @MagickMax(double noundef %7, double noundef %12) #15
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 0xBEF0001000100010, double 1.000000e+00)
  store double %14, ptr %5, align 8, !tbaa !10
  %15 = fmul double %11, 0x3EF0001000100010
  store double %15, ptr %4, align 8, !tbaa !10
  %16 = fcmp oeq double %13, %11
  br i1 %16, label %36, label %17

17:                                               ; preds = %6
  %18 = fcmp oeq double %11, %7
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = fsub double %8, %9
  br label %27

21:                                               ; preds = %17
  %22 = fcmp oeq double %11, %8
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = fsub double %9, %7
  br label %27

25:                                               ; preds = %21
  %26 = fsub double %7, %8
  br label %27

27:                                               ; preds = %23, %25, %19
  %28 = phi double [ %20, %19 ], [ %24, %23 ], [ %26, %25 ]
  %29 = fcmp oeq double %11, %8
  %30 = select i1 %29, double 5.000000e+00, double 1.000000e+00
  %31 = select i1 %18, double 3.000000e+00, double %30
  %32 = tail call double @llvm.fmuladd.f64(double %11, double -1.000000e+00, double %13)
  %33 = fdiv double %28, %32
  %34 = fsub double %31, %33
  %35 = fdiv double %34, 6.000000e+00
  br label %36

36:                                               ; preds = %6, %27
  %37 = phi double [ %35, %27 ], [ -1.000000e+00, %6 ]
  store double %37, ptr %3, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConvertRGBToLCHab(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #7 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call fastcc void @ConvertRGBToXYZ(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %10 = load double, ptr %7, align 8, !tbaa !10
  %11 = load double, ptr %8, align 8, !tbaa !10
  %12 = load double, ptr %9, align 8, !tbaa !10
  tail call fastcc void @ConvertXYZToLCHab(double noundef %10, double noundef %11, double noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToXYZ(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #7 {
  %7 = uitofp i16 %0 to float
  %8 = tail call float @DecodePixelGamma(float noundef %7) #17
  %9 = fpext float %8 to double
  %10 = fmul double %9, 0x3EF0001000100010
  %11 = uitofp i16 %1 to float
  %12 = tail call float @DecodePixelGamma(float noundef %11) #17
  %13 = fpext float %12 to double
  %14 = fmul double %13, 0x3EF0001000100010
  %15 = uitofp i16 %2 to float
  %16 = tail call float @DecodePixelGamma(float noundef %15) #17
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fmul double %14, 0x3FD6E2A59D2E2F46
  %20 = tail call double @llvm.fmuladd.f64(double %10, double 0x3FDA64B077E84D0C, double %19)
  %21 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FC71A6210D6208C, double %20)
  store double %21, ptr %3, align 8, !tbaa !10
  %22 = fmul double %14, 0x3FE6E2ACD52F3FCB
  %23 = tail call double @llvm.fmuladd.f64(double %10, double 0x3FCB36068E66EAD3, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FB27BBB5C6D92D1, double %23)
  store double %24, ptr %4, align 8, !tbaa !10
  %25 = fmul double %14, 0x3FBE82D57095EC52
  %26 = tail call double @llvm.fmuladd.f64(double %10, double 0x3F93C2A635C37FED, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FEE6A78F26C3A9D, double %26)
  store double %27, ptr %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertXYZToLCHab(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #7 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call fastcc void @ConvertXYZToLab(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %9 = load double, ptr %7, align 8, !tbaa !10
  %10 = fadd double %9, -5.000000e-01
  %11 = fmul double %10, 2.550000e+02
  %12 = load double, ptr %8, align 8, !tbaa !10
  %13 = fadd double %12, -5.000000e-01
  %14 = fmul double %13, 2.550000e+02
  %15 = tail call double @hypot(double noundef %11, double noundef %14) #14
  %16 = fdiv double %15, 2.550000e+02
  %17 = fadd double %16, 5.000000e-01
  store double %17, ptr %4, align 8, !tbaa !10
  %18 = tail call double @atan2(double noundef %14, double noundef %11) #14
  %19 = fmul double %18, 1.800000e+02
  %20 = fdiv double %19, 0x400921FB54442D18
  %21 = fdiv double %20, 3.600000e+02
  %22 = fcmp olt double %21, 0.000000e+00
  %23 = fadd double %21, 1.000000e+00
  %24 = select i1 %22, double %23, double %21
  store double %24, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @ConvertXYZToLab(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = fdiv double %0, 0x3FEE6A22B3892EE8
  %8 = fcmp ogt double %7, 0x3F822354D28F7CD6
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call double @pow(double noundef %7, double noundef 0x3FD5555555555555) #14
  br label %16

11:                                               ; preds = %6
  %12 = fmul double %0, 0x408C3A5ED097B426
  %13 = fdiv double %12, 0x3FEE6A22B3892EE8
  %14 = fadd double %13, 1.600000e+01
  %15 = fdiv double %14, 1.160000e+02
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi double [ %10, %9 ], [ %15, %11 ]
  %18 = fcmp ogt double %1, 0x3F822354D28F7CD6
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call double @pow(double noundef %1, double noundef 0x3FD5555555555555) #14
  br label %25

21:                                               ; preds = %16
  %22 = fmul double %1, 0x408C3A5ED097B426
  %23 = fadd double %22, 1.600000e+01
  %24 = fdiv double %23, 1.160000e+02
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi double [ %20, %19 ], [ %24, %21 ]
  %27 = fdiv double %2, 0x3FF16B8950763A19
  %28 = fcmp ogt double %27, 0x3F822354D28F7CD6
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call double @pow(double noundef %27, double noundef 0x3FD5555555555555) #14
  br label %36

31:                                               ; preds = %25
  %32 = fmul double %2, 0x408C3A5ED097B426
  %33 = fdiv double %32, 0x3FF16B8950763A19
  %34 = fadd double %33, 1.600000e+01
  %35 = fdiv double %34, 1.160000e+02
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi double [ %30, %29 ], [ %35, %31 ]
  %38 = tail call double @llvm.fmuladd.f64(double %26, double 1.160000e+02, double -1.600000e+01)
  %39 = fdiv double %38, 1.000000e+02
  store double %39, ptr %3, align 8, !tbaa !10
  %40 = fsub double %17, %26
  %41 = fmul double %40, 5.000000e+02
  %42 = fdiv double %41, 2.550000e+02
  %43 = fadd double %42, 5.000000e-01
  store double %43, ptr %4, align 8, !tbaa !10
  %44 = fsub double %26, %37
  %45 = fmul double %44, 2.000000e+02
  %46 = fdiv double %45, 2.550000e+02
  %47 = fadd double %46, 5.000000e-01
  store double %47, ptr %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConvertRGBToLCHuv(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #7 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call fastcc void @ConvertRGBToXYZ(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %10 = load double, ptr %7, align 8, !tbaa !10
  %11 = load double, ptr %8, align 8, !tbaa !10
  %12 = load double, ptr %9, align 8, !tbaa !10
  tail call fastcc void @ConvertXYZToLCHuv(double noundef %10, double noundef %11, double noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertXYZToLCHuv(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #7 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call fastcc void @ConvertXYZToLuv(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %9 = load double, ptr %7, align 8, !tbaa !10
  %10 = tail call double @llvm.fmuladd.f64(double %9, double 3.540000e+02, double -1.340000e+02)
  %11 = load double, ptr %8, align 8, !tbaa !10
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 2.620000e+02, double -1.400000e+02)
  %13 = tail call double @hypot(double noundef %10, double noundef %12) #14
  %14 = fdiv double %13, 2.550000e+02
  %15 = fadd double %14, 5.000000e-01
  store double %15, ptr %4, align 8, !tbaa !10
  %16 = tail call double @atan2(double noundef %12, double noundef %10) #14
  %17 = fmul double %16, 1.800000e+02
  %18 = fdiv double %17, 0x400921FB54442D18
  %19 = fdiv double %18, 3.600000e+02
  %20 = fcmp olt double %19, 0.000000e+00
  %21 = fadd double %19, 1.000000e+00
  %22 = select i1 %20, double %21, double %19
  store double %22, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @ConvertXYZToLuv(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #9 {
  %7 = fcmp ogt double %1, 0x3F822354D28F7CD6
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = tail call double @pow(double noundef %1, double noundef 0x3FD5555555555555) #14
  %10 = tail call double @llvm.fmuladd.f64(double %9, double 1.160000e+02, double -1.600000e+01)
  br label %13

11:                                               ; preds = %6
  %12 = fmul double %1, 0x408C3A5ED097B426
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi double [ %12, %11 ], [ %10, %8 ]
  store double %14, ptr %3, align 8, !tbaa !10
  %15 = tail call double @llvm.fmuladd.f64(double %1, double 1.500000e+01, double %0)
  %16 = tail call double @llvm.fmuladd.f64(double %2, double 3.000000e+00, double %15)
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %16) #15
  %18 = fmul double %14, 1.300000e+01
  %19 = fmul double %17, 4.000000e+00
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %0, double 0xBFC952CD31007F87)
  %21 = fmul double %18, %20
  store double %21, ptr %4, align 8, !tbaa !10
  %22 = load double, ptr %3, align 8, !tbaa !10
  %23 = fmul double %22, 1.300000e+01
  %24 = fmul double %17, 9.000000e+00
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %1, double 0xBFDDF95190ED8BC1)
  %26 = fmul double %25, %23
  store double %26, ptr %5, align 8, !tbaa !10
  %27 = load double, ptr %3, align 8, !tbaa !10
  %28 = fdiv double %27, 1.000000e+02
  store double %28, ptr %3, align 8, !tbaa !10
  %29 = load double, ptr %4, align 8, !tbaa !10
  %30 = fadd double %29, 1.340000e+02
  %31 = fdiv double %30, 3.540000e+02
  store double %31, ptr %4, align 8, !tbaa !10
  %32 = load double, ptr %5, align 8, !tbaa !10
  %33 = fadd double %32, 1.400000e+02
  %34 = fdiv double %33, 2.620000e+02
  store double %34, ptr %5, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #4 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local double @ExpandAffine(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load double, ptr %0, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 3
  %4 = load double, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 2
  %8 = load double, ptr %7, align 8, !tbaa !16
  %9 = fneg double %6
  %10 = fmul double %8, %9
  %11 = tail call double @llvm.fmuladd.f64(double %2, double %4, double %10)
  %12 = tail call double @llvm.fabs.f64(double %11)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  ret double %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, float noundef %3) local_unnamed_addr #7 {
  %5 = tail call double @GetPseudoRandomValue(ptr noundef %0) #14
  switch i32 %2, label %6 [
    i32 7, label %117
    i32 2, label %13
    i32 4, label %34
    i32 5, label %44
    i32 3, label %77
    i32 6, label %96
  ]

6:                                                ; preds = %4
  %7 = uitofp i16 %1 to double
  %8 = fpext float %3 to double
  %9 = fmul double %8, 1.562500e-02
  %10 = fmul double %9, 6.553500e+04
  %11 = fadd double %5, -5.000000e-01
  %12 = tail call double @llvm.fmuladd.f64(double %10, double %11, double %7)
  br label %121

13:                                               ; preds = %4
  %14 = fcmp oeq double %5, 0.000000e+00
  %15 = select i1 %14, double 1.000000e+00, double %5
  %16 = tail call double @GetPseudoRandomValue(ptr noundef %0) #14
  %17 = tail call double @log(double noundef %15) #14
  %18 = fmul double %17, -2.000000e+00
  %19 = tail call double @sqrt(double noundef %18) #14
  %20 = fmul double %16, 0x401921FB54442D18
  %21 = tail call double @cos(double noundef %20) #14
  %22 = fmul double %19, %21
  %23 = tail call double @sin(double noundef %20) #14
  %24 = fmul double %19, %23
  %25 = uitofp i16 %1 to double
  %26 = tail call double @llvm.sqrt.f64(double %25)
  %27 = fpext float %3 to double
  %28 = fmul double %27, 1.562500e-02
  %29 = fmul double %26, %28
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %22, double %25)
  %31 = fmul double %27, 7.812500e-02
  %32 = fmul double %31, 6.553500e+04
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %24, double %30)
  br label %121

34:                                               ; preds = %4
  %35 = fpext float %3 to double
  %36 = fmul double %35, 1.000000e-01
  %37 = fmul double %36, 5.000000e-01
  %38 = fcmp olt double %5, %37
  br i1 %38, label %121, label %39

39:                                               ; preds = %34
  %40 = fsub double 1.000000e+00, %37
  %41 = fcmp ult double %5, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %39
  %43 = uitofp i16 %1 to double
  br label %121

44:                                               ; preds = %4
  %45 = fcmp ugt double %5, 5.000000e-01
  br i1 %45, label %61, label %46

46:                                               ; preds = %44
  %47 = fcmp ugt double %5, 1.000000e-15
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = zext i16 %1 to i32
  %50 = add nsw i32 %49, -65535
  %51 = sitofp i32 %50 to double
  br label %121

52:                                               ; preds = %46
  %53 = uitofp i16 %1 to double
  %54 = fpext float %3 to double
  %55 = fmul double %54, 3.906250e-02
  %56 = fmul double %55, 6.553500e+04
  %57 = fmul double %5, 2.000000e+00
  %58 = tail call double @log(double noundef %57) #14
  %59 = tail call double @llvm.fmuladd.f64(double %56, double %58, double %53)
  %60 = fadd double %59, 5.000000e-01
  br label %121

61:                                               ; preds = %44
  %62 = fsub double 1.000000e+00, %5
  %63 = fcmp ugt double %62, 5.000000e-16
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = zext i16 %1 to i32
  %66 = add nuw nsw i32 %65, 65535
  %67 = sitofp i32 %66 to double
  br label %121

68:                                               ; preds = %61
  %69 = uitofp i16 %1 to double
  %70 = fpext float %3 to double
  %71 = fmul double %70, 3.906250e-02
  %72 = fmul double %62, 2.000000e+00
  %73 = tail call double @log(double noundef %72) #14
  %74 = fmul double %71, -6.553500e+04
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %73, double %69)
  %76 = fadd double %75, 5.000000e-01
  br label %121

77:                                               ; preds = %4
  %78 = fcmp ogt double %5, 1.000000e-15
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = tail call double @log(double noundef %5) #14
  %81 = fmul double %80, -2.000000e+00
  %82 = tail call double @sqrt(double noundef %81) #14
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi double [ %82, %79 ], [ 1.000000e+00, %77 ]
  %85 = tail call double @GetPseudoRandomValue(ptr noundef %0) #14
  %86 = uitofp i16 %1 to double
  %87 = fpext float %3 to double
  %88 = fmul double %87, 5.000000e-01
  %89 = fmul double %88, %86
  %90 = fmul double %89, %84
  %91 = fmul double %85, 0x401921FB54442D18
  %92 = tail call double @cos(double noundef %91) #14
  %93 = fmul double %90, %92
  %94 = fmul double %93, 5.000000e-01
  %95 = fadd double %94, %86
  br label %121

96:                                               ; preds = %4
  %97 = fpext float %3 to double
  %98 = fmul double %97, 1.250000e+01
  %99 = fmul double %98, 0xBEF0001000100010
  %100 = uitofp i16 %1 to double
  %101 = fmul double %99, %100
  %102 = tail call double @exp(double noundef %101) #14
  %103 = fcmp ogt double %5, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %96, %104
  %105 = phi i64 [ %109, %104 ], [ 0, %96 ]
  %106 = phi double [ %108, %104 ], [ %5, %96 ]
  %107 = tail call double @GetPseudoRandomValue(ptr noundef %0) #14
  %108 = fmul double %106, %107
  %109 = add nuw nsw i64 %105, 1
  %110 = fcmp ogt double %108, %102
  br i1 %110, label %104, label %111, !llvm.loop !17

111:                                              ; preds = %104
  %112 = mul nsw i64 %109, 65535
  %113 = sitofp i64 %112 to double
  br label %114

114:                                              ; preds = %111, %96
  %115 = phi double [ 0.000000e+00, %96 ], [ %113, %111 ]
  %116 = fdiv double %115, %98
  br label %121

117:                                              ; preds = %4
  %118 = fmul float %3, 6.553500e+04
  %119 = fpext float %118 to double
  %120 = fmul double %5, %119
  br label %121

121:                                              ; preds = %39, %34, %64, %68, %48, %52, %42, %117, %114, %83, %13, %6
  %122 = phi double [ %12, %6 ], [ %116, %114 ], [ %95, %83 ], [ %51, %48 ], [ %60, %52 ], [ %67, %64 ], [ %76, %68 ], [ %43, %42 ], [ %33, %13 ], [ %120, %117 ], [ 0.000000e+00, %34 ], [ 6.553500e+04, %39 ]
  ret double %122
}

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetOptimalKernelWidth1D(double noundef %0, double noundef %1) local_unnamed_addr #7 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1656, ptr noundef nonnull @.str.2) #14
  %4 = fcmp ogt double %0, 1.000000e-15
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call double @llvm.ceil.f64(double %0)
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double 1.000000e+00)
  %8 = fptoui double %7 to i64
  br label %52

9:                                                ; preds = %2
  %10 = tail call double @llvm.fabs.f64(double %1)
  %11 = fcmp ugt double %10, 1.000000e-15
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = fmul double %10, 2.000000e+00
  %14 = fmul double %10, %13
  %15 = tail call fastcc double @PerceptibleReciprocal(double noundef %14) #15
  %16 = fmul double %10, 0x40040D931FF62705
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %16) #15
  br label %18

18:                                               ; preds = %37, %12
  %19 = phi i64 [ 5, %12 ], [ %49, %37 ]
  %20 = add nsw i64 %19, -1
  %21 = sdiv i64 %20, 2
  %22 = icmp ugt i64 %19, -9223372036854775808
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = sub nsw i64 0, %21
  %25 = tail call i64 @llvm.abs.i64(i64 %21, i1 true)
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %35, %26 ], [ %24, %23 ]
  %28 = phi double [ %34, %26 ], [ 0.000000e+00, %23 ]
  %29 = mul nsw i64 %27, %27
  %30 = sitofp i64 %29 to double
  %31 = fneg double %30
  %32 = fmul double %15, %31
  %33 = tail call double @exp(double noundef %32) #14
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %17, double %28)
  %35 = add i64 %27, 1
  %36 = icmp eq i64 %27, %25
  br i1 %36, label %37, label %26, !llvm.loop !19

37:                                               ; preds = %26, %18
  %38 = phi double [ 0.000000e+00, %18 ], [ %34, %26 ]
  %39 = mul nsw i64 %21, %21
  %40 = sitofp i64 %39 to double
  %41 = fneg double %40
  %42 = fmul double %15, %41
  %43 = tail call double @exp(double noundef %42) #14
  %44 = fmul double %17, %43
  %45 = fdiv double %44, %38
  %46 = fcmp olt double %45, 0x3EF0001000100010
  %47 = fcmp olt double %45, 1.000000e-15
  %48 = or i1 %46, %47
  %49 = add i64 %19, 2
  br i1 %48, label %50, label %18

50:                                               ; preds = %37
  %51 = add i64 %19, -2
  br label %52

52:                                               ; preds = %9, %50, %5
  %53 = phi i64 [ %8, %5 ], [ %51, %50 ], [ 3, %9 ]
  ret i64 %53
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetOptimalKernelWidth2D(double noundef %0, double noundef %1) local_unnamed_addr #7 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1696, ptr noundef nonnull @.str.2) #14
  %4 = fcmp ogt double %0, 1.000000e-15
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call double @llvm.ceil.f64(double %0)
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double 1.000000e+00)
  %8 = fptoui double %7 to i64
  br label %61

9:                                                ; preds = %2
  %10 = tail call double @llvm.fabs.f64(double %1)
  %11 = fcmp ugt double %10, 1.000000e-15
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = fmul double %10, 2.000000e+00
  %14 = fmul double %10, %13
  %15 = tail call fastcc double @PerceptibleReciprocal(double noundef %14) #15
  %16 = fmul double %10, 0x401921FB54442D18
  %17 = fmul double %10, %16
  %18 = tail call fastcc double @PerceptibleReciprocal(double noundef %17) #15
  br label %19

19:                                               ; preds = %46, %12
  %20 = phi i64 [ 5, %12 ], [ %58, %46 ]
  %21 = add nsw i64 %20, -1
  %22 = sdiv i64 %21, 2
  %23 = sub nsw i64 0, %22
  %24 = icmp ugt i64 %20, -9223372036854775808
  br i1 %24, label %46, label %25

25:                                               ; preds = %19
  %26 = tail call i64 @llvm.abs.i64(i64 %22, i1 true)
  br label %27

27:                                               ; preds = %25, %43
  %28 = phi i64 [ %44, %43 ], [ %23, %25 ]
  %29 = phi double [ %40, %43 ], [ 0.000000e+00, %25 ]
  %30 = mul nsw i64 %28, %28
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ %23, %27 ], [ %41, %31 ]
  %33 = phi double [ %29, %27 ], [ %40, %31 ]
  %34 = mul nsw i64 %32, %32
  %35 = add nuw nsw i64 %34, %30
  %36 = sitofp i64 %35 to double
  %37 = fneg double %36
  %38 = fmul double %15, %37
  %39 = tail call double @exp(double noundef %38) #14
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %18, double %33)
  %41 = add i64 %32, 1
  %42 = icmp eq i64 %32, %26
  br i1 %42, label %43, label %31, !llvm.loop !20

43:                                               ; preds = %31
  %44 = add i64 %28, 1
  %45 = icmp eq i64 %28, %26
  br i1 %45, label %46, label %27, !llvm.loop !21

46:                                               ; preds = %43, %19
  %47 = phi double [ 0.000000e+00, %19 ], [ %40, %43 ]
  %48 = mul nsw i64 %22, %22
  %49 = sitofp i64 %48 to double
  %50 = fneg double %49
  %51 = fmul double %15, %50
  %52 = tail call double @exp(double noundef %51) #14
  %53 = fmul double %18, %52
  %54 = fdiv double %53, %47
  %55 = fcmp olt double %54, 0x3EF0001000100010
  %56 = fcmp olt double %54, 1.000000e-15
  %57 = or i1 %55, %56
  %58 = add i64 %20, 2
  br i1 %57, label %59, label %19

59:                                               ; preds = %46
  %60 = add i64 %20, -2
  br label %61

61:                                               ; preds = %9, %59, %5
  %62 = phi i64 [ %8, %5 ], [ %60, %59 ], [ 3, %9 ]
  ret i64 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetOptimalKernelWidth(double noundef %0, double noundef %1) local_unnamed_addr #7 {
  %3 = tail call i64 @GetOptimalKernelWidth1D(double noundef %0, double noundef %1) #15
  ret i64 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"_AffineMatrix", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!14 = !{!13, !11, i64 24}
!15 = !{!13, !11, i64 8}
!16 = !{!13, !11, i64 16}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
