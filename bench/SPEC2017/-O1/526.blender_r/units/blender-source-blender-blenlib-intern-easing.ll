; ModuleID = 'blender/source/blender/blenlib/intern/easing.c'
source_filename = "blender/source/blender/blenlib/intern/easing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_back_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = fdiv float %0, %3
  %7 = fmul float %6, %2
  %8 = fmul float %6, %7
  %9 = fadd float %4, 1.000000e+00
  %10 = fneg float %4
  %11 = tail call float @llvm.fmuladd.f32(float %9, float %6, float %10)
  %12 = tail call float @llvm.fmuladd.f32(float %8, float %11, float %1)
  ret float %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_back_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = fdiv float %0, %3
  %7 = fadd float %6, -1.000000e+00
  %8 = fmul float %7, %7
  %9 = fadd float %4, 1.000000e+00
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %7, float %4)
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %10, float 1.000000e+00)
  %12 = tail call float @llvm.fmuladd.f32(float %2, float %11, float %1)
  ret float %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_back_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
  %6 = fmul float %4, 0x3FF8666660000000
  %7 = fmul float %3, 5.000000e-01
  %8 = fdiv float %0, %7
  %9 = fcmp olt float %8, 1.000000e+00
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = fmul float %2, 5.000000e-01
  %12 = fmul float %8, %8
  %13 = fadd float %6, 1.000000e+00
  %14 = fneg float %6
  %15 = tail call float @llvm.fmuladd.f32(float %13, float %8, float %14)
  %16 = fmul float %12, %15
  %17 = tail call float @llvm.fmuladd.f32(float %11, float %16, float %1)
  br label %26

18:                                               ; preds = %5
  %19 = fadd float %8, -2.000000e+00
  %20 = fmul float %2, 5.000000e-01
  %21 = fmul float %19, %19
  %22 = fadd float %6, 1.000000e+00
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %19, float %6)
  %24 = tail call float @llvm.fmuladd.f32(float %21, float %23, float 2.000000e+00)
  %25 = tail call float @llvm.fmuladd.f32(float %20, float %24, float %1)
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi float [ %17, %10 ], [ %25, %18 ]
  ret float %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_bounce_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fcmp olt float %5, 0x3FD745D180000000
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = fmul float %5, 7.562500e+00
  %9 = fmul float %5, %8
  br label %26

10:                                               ; preds = %4
  %11 = fcmp olt float %5, 0x3FE745D180000000
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = fadd float %5, 0xBFE1745D20000000
  %14 = fmul float %13, 7.562500e+00
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %13, float 7.500000e-01)
  br label %26

16:                                               ; preds = %10
  %17 = fcmp olt float %5, 0x3FED1745E0000000
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = fadd float %5, 0xBFEA2E8BA0000000
  %20 = fmul float %19, 7.562500e+00
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %19, float 9.375000e-01)
  br label %26

22:                                               ; preds = %16
  %23 = fadd float %5, 0xBFEE8BA2E0000000
  %24 = fmul float %23, 7.562500e+00
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float 9.843750e-01)
  br label %26

26:                                               ; preds = %22, %18, %12, %7
  %27 = phi float [ %25, %22 ], [ %21, %18 ], [ %15, %12 ], [ %9, %7 ]
  %28 = tail call float @llvm.fmuladd.f32(float %2, float %27, float %1)
  ret float %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_bounce_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float %3, %0
  %6 = fdiv float %5, %3
  %7 = fcmp olt float %6, 0x3FD745D180000000
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = fmul float %6, 7.562500e+00
  %10 = fmul float %6, %9
  br label %27

11:                                               ; preds = %4
  %12 = fcmp olt float %6, 0x3FE745D180000000
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = fadd float %6, 0xBFE1745D20000000
  %15 = fmul float %14, 7.562500e+00
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %14, float 7.500000e-01)
  br label %27

17:                                               ; preds = %11
  %18 = fcmp olt float %6, 0x3FED1745E0000000
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = fadd float %6, 0xBFEA2E8BA0000000
  %21 = fmul float %20, 7.562500e+00
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %20, float 9.375000e-01)
  br label %27

23:                                               ; preds = %17
  %24 = fadd float %6, 0xBFEE8BA2E0000000
  %25 = fmul float %24, 7.562500e+00
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %24, float 9.843750e-01)
  br label %27

27:                                               ; preds = %8, %13, %19, %23
  %28 = phi float [ %10, %8 ], [ %16, %13 ], [ %22, %19 ], [ %26, %23 ]
  %29 = tail call float @llvm.fmuladd.f32(float %2, float %28, float 0.000000e+00)
  %30 = fsub float %2, %29
  %31 = fadd float %30, %1
  ret float %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_bounce_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fmul float %3, 5.000000e-01
  %6 = fcmp ogt float %5, %0
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = fmul float %0, 2.000000e+00
  %9 = fsub float %3, %8
  %10 = fdiv float %9, %3
  %11 = fcmp olt float %10, 0x3FD745D180000000
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = fmul float %10, 7.562500e+00
  %14 = fmul float %10, %13
  br label %31

15:                                               ; preds = %7
  %16 = fcmp olt float %10, 0x3FE745D180000000
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = fadd float %10, 0xBFE1745D20000000
  %19 = fmul float %18, 7.562500e+00
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %18, float 7.500000e-01)
  br label %31

21:                                               ; preds = %15
  %22 = fcmp olt float %10, 0x3FED1745E0000000
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = fadd float %10, 0xBFEA2E8BA0000000
  %25 = fmul float %24, 7.562500e+00
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %24, float 9.375000e-01)
  br label %31

27:                                               ; preds = %21
  %28 = fadd float %10, 0xBFEE8BA2E0000000
  %29 = fmul float %28, 7.562500e+00
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %28, float 9.843750e-01)
  br label %31

31:                                               ; preds = %12, %17, %23, %27
  %32 = phi float [ %14, %12 ], [ %20, %17 ], [ %26, %23 ], [ %30, %27 ]
  %33 = tail call float @llvm.fmuladd.f32(float %2, float %32, float 0.000000e+00)
  %34 = fsub float %2, %33
  %35 = fadd float %34, 0.000000e+00
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 5.000000e-01, float %1)
  br label %67

37:                                               ; preds = %4
  %38 = fneg float %3
  %39 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %38)
  %40 = fdiv float %39, %3
  %41 = fcmp olt float %40, 0x3FD745D180000000
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = fmul float %40, 7.562500e+00
  %44 = fmul float %40, %43
  br label %61

45:                                               ; preds = %37
  %46 = fcmp olt float %40, 0x3FE745D180000000
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = fadd float %40, 0xBFE1745D20000000
  %49 = fmul float %48, 7.562500e+00
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %48, float 7.500000e-01)
  br label %61

51:                                               ; preds = %45
  %52 = fcmp olt float %40, 0x3FED1745E0000000
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = fadd float %40, 0xBFEA2E8BA0000000
  %55 = fmul float %54, 7.562500e+00
  %56 = tail call float @llvm.fmuladd.f32(float %55, float %54, float 9.375000e-01)
  br label %61

57:                                               ; preds = %51
  %58 = fadd float %40, 0xBFEE8BA2E0000000
  %59 = fmul float %58, 7.562500e+00
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %58, float 9.843750e-01)
  br label %61

61:                                               ; preds = %42, %47, %53, %57
  %62 = phi float [ %44, %42 ], [ %50, %47 ], [ %56, %53 ], [ %60, %57 ]
  %63 = tail call float @llvm.fmuladd.f32(float %2, float %62, float 0.000000e+00)
  %64 = fmul float %2, 5.000000e-01
  %65 = tail call float @llvm.fmuladd.f32(float %63, float 5.000000e-01, float %64)
  %66 = fadd float %65, %1
  br label %67

67:                                               ; preds = %61, %31
  %68 = phi float [ %36, %31 ], [ %66, %61 ]
  ret float %68
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @BLI_easing_circ_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fdiv float %0, %3
  %6 = fneg float %2
  %7 = fneg float %5
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %5, float 1.000000e+00)
  %9 = tail call float @sqrtf(float noundef %8) #5
  %10 = fadd float %9, -1.000000e+00
  %11 = tail call float @llvm.fmuladd.f32(float %6, float %10, float %1)
  ret float %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @BLI_easing_circ_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fdiv float %0, %3
  %6 = fadd float %5, -1.000000e+00
  %7 = fneg float %6
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %6, float 1.000000e+00)
  %9 = tail call float @sqrtf(float noundef %8) #5
  %10 = tail call float @llvm.fmuladd.f32(float %2, float %9, float %1)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @BLI_easing_circ_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fmul float %3, 5.000000e-01
  %6 = fdiv float %0, %5
  %7 = fcmp olt float %6, 1.000000e+00
  %8 = fadd float %6, -2.000000e+00
  %9 = select i1 %7, float -5.000000e-01, float 5.000000e-01
  %10 = select i1 %7, float %6, float %8
  %11 = select i1 %7, float -1.000000e+00, float 1.000000e+00
  %12 = fmul float %9, %2
  %13 = fneg float %10
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %10, float 1.000000e+00)
  %15 = tail call float @sqrtf(float noundef %14) #5
  %16 = fadd float %15, %11
  %17 = tail call float @llvm.fmuladd.f32(float %12, float %16, float %1)
  ret float %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_cubic_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, %2
  %7 = fmul float %5, %6
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %5, float %1)
  ret float %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_cubic_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fadd float %5, -1.000000e+00
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %6, float 1.000000e+00)
  %9 = tail call float @llvm.fmuladd.f32(float %2, float %8, float %1)
  ret float %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_cubic_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fmul float %3, 5.000000e-01
  %6 = fdiv float %0, %5
  %7 = fcmp olt float %6, 1.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = fmul float %2, 5.000000e-01
  %10 = fmul float %9, %6
  %11 = fmul float %6, %10
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %6, float %1)
  br label %19

13:                                               ; preds = %4
  %14 = fadd float %6, -2.000000e+00
  %15 = fmul float %2, 5.000000e-01
  %16 = fmul float %14, %14
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %14, float 2.000000e+00)
  %18 = tail call float @llvm.fmuladd.f32(float %15, float %17, float %1)
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi float [ %12, %8 ], [ %18, %13 ]
  ret float %20
}

; Function Attrs: nounwind uwtable
define dso_local float @BLI_easing_elastic_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 {
  %7 = fcmp oeq float %0, 0.000000e+00
  br i1 %7, label %57, label %8

8:                                                ; preds = %6
  %9 = fdiv float %0, %3
  %10 = fcmp oeq float %9, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = fadd float %1, %2
  br label %57

13:                                               ; preds = %8
  %14 = fadd float %9, -1.000000e+00
  %15 = fcmp une float %5, 0.000000e+00
  %16 = fmul float %3, 0x3FD3333340000000
  %17 = select i1 %15, float %5, float %16
  %18 = fcmp oeq float %4, 0.000000e+00
  %19 = tail call float @llvm.fabs.f32(float %2)
  %20 = fcmp ogt float %19, %4
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = fmul float %17, 2.500000e-01
  %24 = fcmp une float %2, 0.000000e+00
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = tail call float @llvm.fabs.f32(float %23)
  %27 = fcmp une float %4, 0.000000e+00
  %28 = fdiv float %4, %19
  %29 = select i1 %27, float %28, float 0.000000e+00
  %30 = fmul float %14, %3
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp olt float %31, %26
  %33 = fdiv float %31, %26
  %34 = fsub float 1.000000e+00, %33
  %35 = tail call float @llvm.fmuladd.f32(float %29, float %33, float %34)
  %36 = select i1 %32, float %35, float %29
  br label %42

37:                                               ; preds = %13
  %38 = fdiv float %17, 0x401921FB60000000
  %39 = fdiv float %2, %4
  %40 = tail call float @asinf(float noundef %39) #5
  %41 = fmul float %38, %40
  br label %42

42:                                               ; preds = %25, %22, %37
  %43 = phi float [ %4, %37 ], [ %2, %22 ], [ %2, %25 ]
  %44 = phi float [ %41, %37 ], [ %23, %22 ], [ %23, %25 ]
  %45 = phi float [ 1.000000e+00, %37 ], [ 1.000000e+00, %22 ], [ %36, %25 ]
  %46 = fneg float %45
  %47 = fmul float %14, 1.000000e+01
  %48 = tail call float @exp2f(float %47) #5
  %49 = fmul float %43, %48
  %50 = fneg float %44
  %51 = tail call float @llvm.fmuladd.f32(float %14, float %3, float %50)
  %52 = fmul float %51, 0x401921FB60000000
  %53 = fdiv float %52, %17
  %54 = tail call float @sinf(float noundef %53) #5
  %55 = fmul float %49, %54
  %56 = tail call float @llvm.fmuladd.f32(float %46, float %55, float %1)
  br label %57

57:                                               ; preds = %6, %42, %11
  %58 = phi float [ %12, %11 ], [ %56, %42 ], [ %1, %6 ]
  ret float %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local float @BLI_easing_elastic_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 {
  %7 = fcmp oeq float %0, 0.000000e+00
  br i1 %7, label %57, label %8

8:                                                ; preds = %6
  %9 = fdiv float %0, %3
  %10 = fcmp oeq float %9, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = fadd float %1, %2
  br label %57

13:                                               ; preds = %8
  %14 = fneg float %9
  %15 = fcmp une float %5, 0.000000e+00
  %16 = fmul float %3, 0x3FD3333340000000
  %17 = select i1 %15, float %5, float %16
  %18 = fcmp oeq float %4, 0.000000e+00
  %19 = tail call float @llvm.fabs.f32(float %2)
  %20 = fcmp ogt float %19, %4
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = fmul float %17, 2.500000e-01
  %24 = fcmp une float %2, 0.000000e+00
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = tail call float @llvm.fabs.f32(float %23)
  %27 = fcmp une float %4, 0.000000e+00
  %28 = fdiv float %4, %19
  %29 = select i1 %27, float %28, float 0.000000e+00
  %30 = fmul float %14, %3
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp olt float %31, %26
  %33 = fdiv float %31, %26
  %34 = fsub float 1.000000e+00, %33
  %35 = tail call float @llvm.fmuladd.f32(float %29, float %33, float %34)
  %36 = select i1 %32, float %35, float %29
  br label %42

37:                                               ; preds = %13
  %38 = fdiv float %17, 0x401921FB60000000
  %39 = fdiv float %2, %4
  %40 = tail call float @asinf(float noundef %39) #5
  %41 = fmul float %38, %40
  br label %42

42:                                               ; preds = %25, %22, %37
  %43 = phi float [ %4, %37 ], [ %2, %22 ], [ %2, %25 ]
  %44 = phi float [ %41, %37 ], [ %23, %22 ], [ %23, %25 ]
  %45 = phi float [ 1.000000e+00, %37 ], [ 1.000000e+00, %22 ], [ %36, %25 ]
  %46 = fmul float %9, -1.000000e+01
  %47 = tail call float @exp2f(float %46) #5
  %48 = fmul float %43, %47
  %49 = fneg float %44
  %50 = tail call float @llvm.fmuladd.f32(float %14, float %3, float %49)
  %51 = fmul float %50, 0x401921FB60000000
  %52 = fdiv float %51, %17
  %53 = tail call float @sinf(float noundef %52) #5
  %54 = fmul float %48, %53
  %55 = tail call float @llvm.fmuladd.f32(float %45, float %54, float %2)
  %56 = fadd float %55, %1
  br label %57

57:                                               ; preds = %6, %42, %11
  %58 = phi float [ %12, %11 ], [ %56, %42 ], [ %1, %6 ]
  ret float %58
}

; Function Attrs: nounwind uwtable
define dso_local float @BLI_easing_elastic_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 {
  %7 = fcmp oeq float %0, 0.000000e+00
  br i1 %7, label %74, label %8

8:                                                ; preds = %6
  %9 = fmul float %3, 5.000000e-01
  %10 = fdiv float %0, %9
  %11 = fcmp oeq float %10, 2.000000e+00
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = fadd float %1, %2
  br label %74

14:                                               ; preds = %8
  %15 = fadd float %10, -1.000000e+00
  %16 = fcmp une float %5, 0.000000e+00
  %17 = fmul float %3, 0x3FDCCCCCE0000000
  %18 = select i1 %16, float %5, float %17
  %19 = fcmp oeq float %4, 0.000000e+00
  %20 = tail call float @llvm.fabs.f32(float %2)
  %21 = fcmp ogt float %20, %4
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = fmul float %18, 2.500000e-01
  %25 = fcmp une float %2, 0.000000e+00
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = tail call float @llvm.fabs.f32(float %24)
  %28 = fcmp une float %4, 0.000000e+00
  %29 = fdiv float %4, %20
  %30 = select i1 %28, float %29, float 0.000000e+00
  %31 = fmul float %15, %3
  %32 = tail call float @llvm.fabs.f32(float %31)
  %33 = fcmp olt float %32, %27
  %34 = fdiv float %32, %27
  %35 = fsub float 1.000000e+00, %34
  %36 = tail call float @llvm.fmuladd.f32(float %30, float %34, float %35)
  %37 = select i1 %33, float %36, float %30
  br label %43

38:                                               ; preds = %14
  %39 = fdiv float %18, 0x401921FB60000000
  %40 = fdiv float %2, %4
  %41 = tail call float @asinf(float noundef %40) #5
  %42 = fmul float %39, %41
  br label %43

43:                                               ; preds = %26, %23, %38
  %44 = phi float [ %4, %38 ], [ %2, %23 ], [ %2, %26 ]
  %45 = phi float [ %42, %38 ], [ %24, %23 ], [ %24, %26 ]
  %46 = phi float [ 1.000000e+00, %38 ], [ 1.000000e+00, %23 ], [ %37, %26 ]
  %47 = fcmp olt float %15, 0.000000e+00
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = fmul float %46, -5.000000e-01
  %50 = fmul float %15, 1.000000e+01
  %51 = tail call float @exp2f(float %50) #5
  %52 = fmul float %44, %51
  %53 = fneg float %45
  %54 = tail call float @llvm.fmuladd.f32(float %15, float %3, float %53)
  %55 = fmul float %54, 0x401921FB60000000
  %56 = fdiv float %55, %18
  %57 = tail call float @sinf(float noundef %56) #5
  %58 = fmul float %52, %57
  %59 = tail call float @llvm.fmuladd.f32(float %49, float %58, float %1)
  br label %74

60:                                               ; preds = %43
  %61 = fneg float %15
  %62 = fmul float %46, 5.000000e-01
  %63 = fmul float %15, -1.000000e+01
  %64 = tail call float @exp2f(float %63) #5
  %65 = fmul float %44, %64
  %66 = fneg float %45
  %67 = tail call float @llvm.fmuladd.f32(float %61, float %3, float %66)
  %68 = fmul float %67, 0x401921FB60000000
  %69 = fdiv float %68, %18
  %70 = tail call float @sinf(float noundef %69) #5
  %71 = fmul float %65, %70
  %72 = tail call float @llvm.fmuladd.f32(float %62, float %71, float %2)
  %73 = fadd float %72, %1
  br label %74

74:                                               ; preds = %6, %60, %48, %12
  %75 = phi float [ %13, %12 ], [ %59, %48 ], [ %73, %60 ], [ %1, %6 ]
  ret float %75
}

; Function Attrs: nounwind uwtable
define dso_local float @BLI_easing_expo_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
  %5 = fcmp oeq float %0, 0.000000e+00
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = fdiv float %0, %3
  %8 = fadd float %7, -1.000000e+00
  %9 = fmul float %8, 1.000000e+01
  %10 = tail call float @exp2f(float %9) #5
  %11 = tail call float @llvm.fmuladd.f32(float %2, float %10, float %1)
  br label %12

12:                                               ; preds = %4, %6
  %13 = phi float [ %11, %6 ], [ %1, %4 ]
  ret float %13
}

; Function Attrs: nounwind uwtable
define dso_local float @BLI_easing_expo_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
  %5 = fcmp oeq float %0, %3
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = fadd float %1, %2
  br label %14

8:                                                ; preds = %4
  %9 = fmul float %0, -1.000000e+01
  %10 = fdiv float %9, %3
  %11 = tail call float @exp2f(float %10) #5
  %12 = fsub float 1.000000e+00, %11
  %13 = tail call float @llvm.fmuladd.f32(float %2, float %12, float %1)
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi float [ %7, %6 ], [ %13, %8 ]
  ret float %15
}

; Function Attrs: nounwind uwtable
define dso_local float @BLI_easing_expo_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
  %5 = fcmp oeq float %0, 0.000000e+00
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = fcmp oeq float %0, %3
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = fadd float %1, %2
  br label %27

10:                                               ; preds = %6
  %11 = fmul float %3, 5.000000e-01
  %12 = fdiv float %0, %11
  %13 = fcmp olt float %12, 1.000000e+00
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = fmul float %2, 5.000000e-01
  %16 = fadd float %12, -1.000000e+00
  %17 = fmul float %16, 1.000000e+01
  %18 = tail call float @exp2f(float %17) #5
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %18, float %1)
  br label %27

20:                                               ; preds = %10
  %21 = fadd float %12, -1.000000e+00
  %22 = fmul float %2, 5.000000e-01
  %23 = fmul float %21, -1.000000e+01
  %24 = tail call float @exp2f(float %23) #5
  %25 = fsub float 2.000000e+00, %24
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %25, float %1)
  br label %27

27:                                               ; preds = %4, %20, %14, %8
  %28 = phi float [ %9, %8 ], [ %19, %14 ], [ %26, %20 ], [ %1, %4 ]
  ret float %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_linear_ease(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fmul float %0, %2
  %6 = fdiv float %5, %3
  %7 = fadd float %6, %1
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_quad_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, %2
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %5, float %1)
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_quad_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fneg float %2
  %7 = fmul float %5, %6
  %8 = fadd float %5, -2.000000e+00
  %9 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %1)
  ret float %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_quad_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fmul float %3, 5.000000e-01
  %6 = fdiv float %0, %5
  %7 = fcmp olt float %6, 1.000000e+00
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = fmul float %2, 5.000000e-01
  %10 = fmul float %9, %6
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %6, float %1)
  br label %18

12:                                               ; preds = %4
  %13 = fadd float %6, -1.000000e+00
  %14 = fmul float %2, -5.000000e-01
  %15 = fadd float %13, -2.000000e+00
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float -1.000000e+00)
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %1)
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi float [ %11, %8 ], [ %17, %12 ]
  ret float %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_quart_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, %2
  %7 = fmul float %5, %6
  %8 = fmul float %5, %7
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %5, float %1)
  ret float %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_quart_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fadd float %5, -1.000000e+00
  %7 = fneg float %2
  %8 = fmul float %6, %6
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %6, float -1.000000e+00)
  %11 = tail call float @llvm.fmuladd.f32(float %7, float %10, float %1)
  ret float %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_quart_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fmul float %3, 5.000000e-01
  %6 = fdiv float %0, %5
  %7 = fcmp olt float %6, 1.000000e+00
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = fmul float %2, 5.000000e-01
  %10 = fmul float %9, %6
  %11 = fmul float %6, %10
  %12 = fmul float %6, %11
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %6, float %1)
  br label %21

14:                                               ; preds = %4
  %15 = fadd float %6, -2.000000e+00
  %16 = fmul float %2, -5.000000e-01
  %17 = fmul float %15, %15
  %18 = fmul float %15, %17
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %15, float -2.000000e+00)
  %20 = tail call float @llvm.fmuladd.f32(float %16, float %19, float %1)
  br label %21

21:                                               ; preds = %14, %8
  %22 = phi float [ %13, %8 ], [ %20, %14 ]
  ret float %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_quint_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, %2
  %7 = fmul float %5, %6
  %8 = fmul float %5, %7
  %9 = fmul float %5, %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %5, float %1)
  ret float %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_quint_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fadd float %5, -1.000000e+00
  %7 = fmul float %6, %6
  %8 = fmul float %6, %7
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %6, float 1.000000e+00)
  %11 = tail call float @llvm.fmuladd.f32(float %2, float %10, float %1)
  ret float %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @BLI_easing_quint_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fmul float %3, 5.000000e-01
  %6 = fdiv float %0, %5
  %7 = fcmp olt float %6, 1.000000e+00
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = fmul float %2, 5.000000e-01
  %10 = fmul float %9, %6
  %11 = fmul float %6, %10
  %12 = fmul float %6, %11
  %13 = fmul float %6, %12
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %6, float %1)
  br label %23

15:                                               ; preds = %4
  %16 = fadd float %6, -2.000000e+00
  %17 = fmul float %2, 5.000000e-01
  %18 = fmul float %16, %16
  %19 = fmul float %16, %18
  %20 = fmul float %16, %19
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %16, float 2.000000e+00)
  %22 = tail call float @llvm.fmuladd.f32(float %17, float %21, float %1)
  br label %23

23:                                               ; preds = %15, %8
  %24 = phi float [ %14, %8 ], [ %22, %15 ]
  ret float %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @BLI_easing_sine_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fneg float %2
  %6 = fdiv float %0, %3
  %7 = fmul float %6, 0x3FF921FB60000000
  %8 = tail call float @cosf(float noundef %7) #5
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %8, float %2)
  %10 = fadd float %9, %1
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @BLI_easing_sine_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, 0x3FF921FB60000000
  %7 = tail call float @sinf(float noundef %6) #5
  %8 = tail call float @llvm.fmuladd.f32(float %2, float %7, float %1)
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @BLI_easing_sine_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fmul float %2, -5.000000e-01
  %6 = fmul float %0, 0x400921FB60000000
  %7 = fdiv float %6, %3
  %8 = tail call float @cosf(float noundef %7) #5
  %9 = fadd float %8, -1.000000e+00
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %9, float %1)
  ret float %10
}

declare float @exp2f(float) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
