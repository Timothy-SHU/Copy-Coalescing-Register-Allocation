; ModuleID = 'blender/source/blender/blenlib/intern/easing.c'
source_filename = "blender/source/blender/blenlib/intern/easing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local float @BLI_easing_bounce_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float %3, %0
  %6 = tail call float @BLI_easing_bounce_ease_out(float noundef %5, float noundef 0.000000e+00, float noundef %2, float noundef %3) #5
  %7 = fsub float %2, %6
  %8 = fadd float %7, %1
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local float @BLI_easing_bounce_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fmul float %3, 5.000000e-01
  %6 = fcmp ogt float %5, %0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = fmul float %0, 2.000000e+00
  %9 = tail call float @BLI_easing_bounce_ease_in(float noundef %8, float noundef 0.000000e+00, float noundef %2, float noundef %3) #5
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 5.000000e-01, float %1)
  br label %18

11:                                               ; preds = %4
  %12 = fneg float %3
  %13 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %12)
  %14 = tail call float @BLI_easing_bounce_ease_out(float noundef %13, float noundef 0.000000e+00, float noundef %2, float noundef %3) #5
  %15 = fmul float %2, 5.000000e-01
  %16 = tail call float @llvm.fmuladd.f32(float %14, float 5.000000e-01, float %15)
  %17 = fadd float %16, %1
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi float [ %10, %7 ], [ %17, %11 ]
  ret float %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @BLI_easing_circ_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fdiv float %0, %3
  %6 = fneg float %2
  %7 = fneg float %5
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %5, float 1.000000e+00)
  %9 = tail call float @sqrtf(float noundef %8) #6
  %10 = fadd float %9, -1.000000e+00
  %11 = tail call float @llvm.fmuladd.f32(float %6, float %10, float %1)
  ret float %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @BLI_easing_circ_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fdiv float %0, %3
  %6 = fadd float %5, -1.000000e+00
  %7 = fneg float %6
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %6, float 1.000000e+00)
  %9 = tail call float @sqrtf(float noundef %8) #6
  %10 = tail call float @llvm.fmuladd.f32(float %2, float %9, float %1)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
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
  %15 = tail call float @sqrtf(float noundef %14) #6
  %16 = fadd float %15, %11
  %17 = tail call float @llvm.fmuladd.f32(float %12, float %16, float %1)
  ret float %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_cubic_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, %2
  %7 = fmul float %5, %6
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %5, float %1)
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_cubic_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fadd float %5, -1.000000e+00
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %6, float 1.000000e+00)
  %9 = tail call float @llvm.fmuladd.f32(float %2, float %8, float %1)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLI_easing_elastic_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 {
  %7 = fcmp oeq float %0, 0.000000e+00
  br i1 %7, label %45, label %8

8:                                                ; preds = %6
  %9 = fdiv float %0, %3
  %10 = fcmp oeq float %9, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = fadd float %1, %2
  br label %45

13:                                               ; preds = %8
  %14 = fadd float %9, -1.000000e+00
  %15 = fcmp une float %5, 0.000000e+00
  %16 = fmul float %3, 0x3FD3333340000000
  %17 = select i1 %15, float %5, float %16
  %18 = fcmp oeq float %4, 0.000000e+00
  %19 = tail call float @llvm.fabs.f32(float %2)
  %20 = fcmp ogt float %19, %4
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = fmul float %17, 2.500000e-01
  %24 = tail call fastcc float @elastic_blend(float noundef %14, float noundef %2, float noundef %3, float noundef %4, float noundef %23) #5
  br label %30

25:                                               ; preds = %13
  %26 = fdiv float %17, 0x401921FB60000000
  %27 = fdiv float %2, %4
  %28 = tail call float @asinf(float noundef %27) #6
  %29 = fmul float %26, %28
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi float [ %2, %22 ], [ %4, %25 ]
  %32 = phi float [ %23, %22 ], [ %29, %25 ]
  %33 = phi float [ %24, %22 ], [ 1.000000e+00, %25 ]
  %34 = fneg float %33
  %35 = fmul float %14, 1.000000e+01
  %36 = tail call float @exp2f(float %35) #7
  %37 = fmul float %31, %36
  %38 = fneg float %32
  %39 = tail call float @llvm.fmuladd.f32(float %14, float %3, float %38)
  %40 = fmul float %39, 0x401921FB60000000
  %41 = fdiv float %40, %17
  %42 = tail call float @sinf(float noundef %41) #6
  %43 = fmul float %37, %42
  %44 = tail call float @llvm.fmuladd.f32(float %34, float %43, float %1)
  br label %45

45:                                               ; preds = %6, %30, %11
  %46 = phi float [ %12, %11 ], [ %44, %30 ], [ %1, %6 ]
  ret float %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @elastic_blend(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !34 {
  %6 = fcmp une float %1, 0.000000e+00
  br i1 %6, label %7, label %20

7:                                                ; preds = %5
  %8 = tail call float @llvm.fabs.f32(float %4)
  %9 = fcmp une float %3, 0.000000e+00
  %10 = tail call float @llvm.fabs.f32(float %1)
  %11 = fdiv float %3, %10
  %12 = select i1 %9, float %11, float 0.000000e+00
  %13 = fmul float %0, %2
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp olt float %14, %8
  %16 = fdiv float %14, %8
  %17 = fsub float 1.000000e+00, %16
  %18 = tail call float @llvm.fmuladd.f32(float %12, float %16, float %17)
  %19 = select i1 %15, float %18, float %12
  br label %20

20:                                               ; preds = %7, %5
  %21 = phi float [ %19, %7 ], [ 1.000000e+00, %5 ]
  ret float %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLI_easing_elastic_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 {
  %7 = fcmp oeq float %0, 0.000000e+00
  br i1 %7, label %45, label %8

8:                                                ; preds = %6
  %9 = fdiv float %0, %3
  %10 = fcmp oeq float %9, 1.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = fadd float %1, %2
  br label %45

13:                                               ; preds = %8
  %14 = fneg float %9
  %15 = fcmp une float %5, 0.000000e+00
  %16 = fmul float %3, 0x3FD3333340000000
  %17 = select i1 %15, float %5, float %16
  %18 = fcmp oeq float %4, 0.000000e+00
  %19 = tail call float @llvm.fabs.f32(float %2)
  %20 = fcmp ogt float %19, %4
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = fmul float %17, 2.500000e-01
  %24 = tail call fastcc float @elastic_blend(float noundef %14, float noundef %2, float noundef %3, float noundef %4, float noundef %23) #5
  br label %30

25:                                               ; preds = %13
  %26 = fdiv float %17, 0x401921FB60000000
  %27 = fdiv float %2, %4
  %28 = tail call float @asinf(float noundef %27) #6
  %29 = fmul float %26, %28
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi float [ %2, %22 ], [ %4, %25 ]
  %32 = phi float [ %23, %22 ], [ %29, %25 ]
  %33 = phi float [ %24, %22 ], [ 1.000000e+00, %25 ]
  %34 = fmul float %9, -1.000000e+01
  %35 = tail call float @exp2f(float %34) #7
  %36 = fmul float %31, %35
  %37 = fneg float %32
  %38 = tail call float @llvm.fmuladd.f32(float %14, float %3, float %37)
  %39 = fmul float %38, 0x401921FB60000000
  %40 = fdiv float %39, %17
  %41 = tail call float @sinf(float noundef %40) #6
  %42 = fmul float %36, %41
  %43 = tail call float @llvm.fmuladd.f32(float %33, float %42, float %2)
  %44 = fadd float %43, %1
  br label %45

45:                                               ; preds = %6, %30, %11
  %46 = phi float [ %12, %11 ], [ %44, %30 ], [ %1, %6 ]
  ret float %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLI_easing_elastic_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 {
  %7 = fcmp oeq float %0, 0.000000e+00
  br i1 %7, label %62, label %8

8:                                                ; preds = %6
  %9 = fmul float %3, 5.000000e-01
  %10 = fdiv float %0, %9
  %11 = fcmp oeq float %10, 2.000000e+00
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = fadd float %1, %2
  br label %62

14:                                               ; preds = %8
  %15 = fadd float %10, -1.000000e+00
  %16 = fcmp une float %5, 0.000000e+00
  %17 = fmul float %3, 0x3FDCCCCCE0000000
  %18 = select i1 %16, float %5, float %17
  %19 = fcmp oeq float %4, 0.000000e+00
  %20 = tail call float @llvm.fabs.f32(float %2)
  %21 = fcmp ogt float %20, %4
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = fmul float %18, 2.500000e-01
  %25 = tail call fastcc float @elastic_blend(float noundef %15, float noundef %2, float noundef %3, float noundef %4, float noundef %24) #5
  br label %31

26:                                               ; preds = %14
  %27 = fdiv float %18, 0x401921FB60000000
  %28 = fdiv float %2, %4
  %29 = tail call float @asinf(float noundef %28) #6
  %30 = fmul float %27, %29
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi float [ %2, %23 ], [ %4, %26 ]
  %33 = phi float [ %24, %23 ], [ %30, %26 ]
  %34 = phi float [ %25, %23 ], [ 1.000000e+00, %26 ]
  %35 = fcmp olt float %15, 0.000000e+00
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = fmul float %34, -5.000000e-01
  %38 = fmul float %15, 1.000000e+01
  %39 = tail call float @exp2f(float %38) #7
  %40 = fmul float %32, %39
  %41 = fneg float %33
  %42 = tail call float @llvm.fmuladd.f32(float %15, float %3, float %41)
  %43 = fmul float %42, 0x401921FB60000000
  %44 = fdiv float %43, %18
  %45 = tail call float @sinf(float noundef %44) #6
  %46 = fmul float %40, %45
  %47 = tail call float @llvm.fmuladd.f32(float %37, float %46, float %1)
  br label %62

48:                                               ; preds = %31
  %49 = fneg float %15
  %50 = fmul float %34, 5.000000e-01
  %51 = fmul float %15, -1.000000e+01
  %52 = tail call float @exp2f(float %51) #7
  %53 = fmul float %32, %52
  %54 = fneg float %33
  %55 = tail call float @llvm.fmuladd.f32(float %49, float %3, float %54)
  %56 = fmul float %55, 0x401921FB60000000
  %57 = fdiv float %56, %18
  %58 = tail call float @sinf(float noundef %57) #6
  %59 = fmul float %53, %58
  %60 = tail call float @llvm.fmuladd.f32(float %50, float %59, float %2)
  %61 = fadd float %60, %1
  br label %62

62:                                               ; preds = %6, %48, %36, %12
  %63 = phi float [ %13, %12 ], [ %47, %36 ], [ %61, %48 ], [ %1, %6 ]
  ret float %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLI_easing_expo_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
  %5 = fcmp oeq float %0, 0.000000e+00
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = fdiv float %0, %3
  %8 = fadd float %7, -1.000000e+00
  %9 = fmul float %8, 1.000000e+01
  %10 = tail call float @exp2f(float %9) #7
  %11 = tail call float @llvm.fmuladd.f32(float %2, float %10, float %1)
  br label %12

12:                                               ; preds = %4, %6
  %13 = phi float [ %11, %6 ], [ %1, %4 ]
  ret float %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BLI_easing_expo_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
  %5 = fcmp oeq float %0, %3
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = fadd float %1, %2
  br label %14

8:                                                ; preds = %4
  %9 = fmul float %0, -1.000000e+01
  %10 = fdiv float %9, %3
  %11 = tail call float @exp2f(float %10) #7
  %12 = fsub float 1.000000e+00, %11
  %13 = tail call float @llvm.fmuladd.f32(float %2, float %12, float %1)
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi float [ %7, %6 ], [ %13, %8 ]
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %18 = tail call float @exp2f(float %17) #7
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %18, float %1)
  br label %27

20:                                               ; preds = %10
  %21 = fadd float %12, -1.000000e+00
  %22 = fmul float %2, 5.000000e-01
  %23 = fmul float %21, -1.000000e+01
  %24 = tail call float @exp2f(float %23) #7
  %25 = fsub float 2.000000e+00, %24
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %25, float %1)
  br label %27

27:                                               ; preds = %4, %20, %14, %8
  %28 = phi float [ %9, %8 ], [ %19, %14 ], [ %26, %20 ], [ %1, %4 ]
  ret float %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_linear_ease(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fmul float %0, %2
  %6 = fdiv float %5, %3
  %7 = fadd float %6, %1
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_quad_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, %2
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %5, float %1)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_quad_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fneg float %2
  %7 = fmul float %5, %6
  %8 = fadd float %5, -2.000000e+00
  %9 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %1)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @BLI_easing_quart_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, %2
  %7 = fmul float %5, %6
  %8 = fmul float %5, %7
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %5, float %1)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local float @BLI_easing_quint_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, %2
  %7 = fmul float %5, %6
  %8 = fmul float %5, %7
  %9 = fmul float %5, %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %5, float %1)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @BLI_easing_sine_ease_in(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fneg float %2
  %6 = fdiv float %0, %3
  %7 = fmul float %6, 0x3FF921FB60000000
  %8 = tail call float @cosf(float noundef %7) #6
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %8, float %2)
  %10 = fadd float %9, %1
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @BLI_easing_sine_ease_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fdiv float %0, %3
  %6 = fmul float %5, 0x3FF921FB60000000
  %7 = tail call float @sinf(float noundef %6) #6
  %8 = tail call float @llvm.fmuladd.f32(float %2, float %7, float %1)
  ret float %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @BLI_easing_sine_ease_in_out(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fmul float %2, -5.000000e-01
  %6 = fmul float %0, 0x400921FB60000000
  %7 = fdiv float %6, %3
  %8 = tail call float @cosf(float noundef %7) #6
  %9 = fadd float %8, -1.000000e+00
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %9, float %1)
  ret float %10
}

declare float @exp2f(float) local_unnamed_addr

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }

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
!34 = !{!"easing.c:elastic_blend"}
