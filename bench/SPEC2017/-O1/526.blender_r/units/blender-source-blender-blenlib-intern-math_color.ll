; ModuleID = 'blender/source/blender/blenlib/intern/math_color.c'
source_filename = "blender/source/blender/blenlib/intern/math_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%02x%02x%02x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%01x%01x%01x\00", align 1
@BLI_init_srgb_conversion.initialized = internal unnamed_addr global i1 false, align 1
@BLI_color_to_srgb_table = dso_local local_unnamed_addr global [65536 x i16] zeroinitializer, align 16
@BLI_color_from_srgb_table = dso_local local_unnamed_addr global [256 x float] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @hsv_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -3.000000e+00)
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fadd float %8, -1.000000e+00
  %10 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -2.000000e+00)
  %11 = tail call float @llvm.fabs.f32(float %10)
  %12 = fsub float 2.000000e+00, %11
  %13 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -4.000000e+00)
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fsub float 2.000000e+00, %14
  %16 = fcmp olt float %9, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = fcmp ogt float %9, 1.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %6, %17, %19
  %21 = phi float [ 1.000000e+00, %19 ], [ %9, %17 ], [ 0.000000e+00, %6 ]
  %22 = fcmp olt float %15, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = fcmp ogt float %15, 1.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %20, %23, %25
  %27 = phi float [ 1.000000e+00, %25 ], [ %15, %23 ], [ 0.000000e+00, %20 ]
  %28 = fcmp olt float %12, 0.000000e+00
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = fcmp ogt float %12, 1.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %26, %29, %31
  %33 = phi float [ 1.000000e+00, %31 ], [ %12, %29 ], [ 0.000000e+00, %26 ]
  %34 = fadd float %21, -1.000000e+00
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %1, float 1.000000e+00)
  %36 = fmul float %35, %2
  store float %36, ptr %3, align 4, !tbaa !34
  %37 = fadd float %33, -1.000000e+00
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %1, float 1.000000e+00)
  %39 = fmul float %38, %2
  store float %39, ptr %4, align 4, !tbaa !34
  %40 = fadd float %27, -1.000000e+00
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %1, float 1.000000e+00)
  %42 = fmul float %41, %2
  store float %42, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @hsl_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -3.000000e+00)
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fadd float %8, -1.000000e+00
  %10 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -2.000000e+00)
  %11 = tail call float @llvm.fabs.f32(float %10)
  %12 = fsub float 2.000000e+00, %11
  %13 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -4.000000e+00)
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fsub float 2.000000e+00, %14
  %16 = fcmp olt float %9, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = fcmp ogt float %9, 1.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %6, %17, %19
  %21 = phi float [ 1.000000e+00, %19 ], [ %9, %17 ], [ 0.000000e+00, %6 ]
  %22 = fcmp olt float %15, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = fcmp ogt float %15, 1.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %20, %23, %25
  %27 = phi float [ 1.000000e+00, %25 ], [ %15, %23 ], [ 0.000000e+00, %20 ]
  %28 = fcmp olt float %12, 0.000000e+00
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = fcmp ogt float %12, 1.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %26, %29, %31
  %33 = phi float [ 1.000000e+00, %31 ], [ %12, %29 ], [ 0.000000e+00, %26 ]
  %34 = tail call float @llvm.fmuladd.f32(float %2, float 2.000000e+00, float -1.000000e+00)
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fsub float 1.000000e+00, %35
  %37 = fmul float %36, %1
  %38 = fadd float %21, -5.000000e-01
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %37, float %2)
  store float %39, ptr %3, align 4, !tbaa !34
  %40 = fadd float %33, -5.000000e-01
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %37, float %2)
  store float %41, ptr %4, align 4, !tbaa !34
  %42 = fadd float %27, -5.000000e-01
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %37, float %2)
  store float %43, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @hsv_to_rgb_v(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = tail call float @llvm.fmuladd.f32(float %3, float 6.000000e+00, float -3.000000e+00)
  %9 = tail call float @llvm.fabs.f32(float %8)
  %10 = fadd float %9, -1.000000e+00
  %11 = tail call float @llvm.fmuladd.f32(float %3, float 6.000000e+00, float -2.000000e+00)
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fsub float 2.000000e+00, %12
  %14 = tail call float @llvm.fmuladd.f32(float %3, float 6.000000e+00, float -4.000000e+00)
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fsub float 2.000000e+00, %15
  %17 = fcmp olt float %10, 0.000000e+00
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = fcmp ogt float %10, 1.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %18, %2
  %22 = phi float [ 1.000000e+00, %20 ], [ %10, %18 ], [ 0.000000e+00, %2 ]
  %23 = fcmp olt float %16, 0.000000e+00
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = fcmp ogt float %16, 1.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %24, %21
  %28 = phi float [ 1.000000e+00, %26 ], [ %16, %24 ], [ 0.000000e+00, %21 ]
  %29 = fcmp olt float %13, 0.000000e+00
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = fcmp ogt float %13, 1.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %27, %30, %32
  %34 = phi float [ 1.000000e+00, %32 ], [ %13, %30 ], [ 0.000000e+00, %27 ]
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = fadd float %22, -1.000000e+00
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %5, float 1.000000e+00)
  %39 = fmul float %7, %38
  store float %39, ptr %1, align 4, !tbaa !34
  %40 = fadd float %34, -1.000000e+00
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %5, float 1.000000e+00)
  %42 = fmul float %7, %41
  store float %42, ptr %36, align 4, !tbaa !34
  %43 = fadd float %28, -1.000000e+00
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %5, float 1.000000e+00)
  %45 = fmul float %7, %44
  store float %45, ptr %35, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @hsl_to_rgb_v(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = tail call float @llvm.fmuladd.f32(float %3, float 6.000000e+00, float -3.000000e+00)
  %9 = tail call float @llvm.fabs.f32(float %8)
  %10 = fadd float %9, -1.000000e+00
  %11 = tail call float @llvm.fmuladd.f32(float %3, float 6.000000e+00, float -2.000000e+00)
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fsub float 2.000000e+00, %12
  %14 = tail call float @llvm.fmuladd.f32(float %3, float 6.000000e+00, float -4.000000e+00)
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fsub float 2.000000e+00, %15
  %17 = fcmp olt float %10, 0.000000e+00
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = fcmp ogt float %10, 1.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %18, %2
  %22 = phi float [ 1.000000e+00, %20 ], [ %10, %18 ], [ 0.000000e+00, %2 ]
  %23 = fcmp olt float %16, 0.000000e+00
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = fcmp ogt float %16, 1.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %24, %21
  %28 = phi float [ 1.000000e+00, %26 ], [ %16, %24 ], [ 0.000000e+00, %21 ]
  %29 = fcmp olt float %13, 0.000000e+00
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = fcmp ogt float %13, 1.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %27, %30, %32
  %34 = phi float [ 1.000000e+00, %32 ], [ %13, %30 ], [ 0.000000e+00, %27 ]
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = tail call float @llvm.fmuladd.f32(float %7, float 2.000000e+00, float -1.000000e+00)
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fsub float 1.000000e+00, %38
  %40 = fmul float %5, %39
  %41 = fadd float %22, -5.000000e-01
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %40, float %7)
  store float %42, ptr %1, align 4, !tbaa !34
  %43 = fadd float %34, -5.000000e-01
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %40, float %7)
  store float %44, ptr %36, align 4, !tbaa !34
  %45 = fadd float %28, -5.000000e-01
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %40, float %7)
  store float %46, ptr %35, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @rgb_to_yuv(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fmul float %1, 0x3FE2C8B440000000
  %8 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FD322D0E0000000, float %7)
  %9 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FBD2F1AA0000000, float %8)
  %10 = fmul float %1, 0xBFD27EF9E0000000
  %11 = tail call float @llvm.fmuladd.f32(float %0, float 0xBFC2D0E560000000, float %10)
  %12 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FDBE76C80000000, float %11)
  %13 = fmul float %1, 0xBFE07AE140000000
  %14 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FE3AE1480000000, float %13)
  %15 = tail call float @llvm.fmuladd.f32(float %2, float 0xBFB99999A0000000, float %14)
  store float %9, ptr %3, align 4, !tbaa !34
  store float %12, ptr %4, align 4, !tbaa !34
  store float %15, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @yuv_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FF23D70A0000000, float %0)
  %8 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFD9374BC0000000, float %0)
  %9 = tail call float @llvm.fmuladd.f32(float %2, float 0xBFE2978D40000000, float %8)
  %10 = tail call float @llvm.fmuladd.f32(float %1, float 0x4000418940000000, float %0)
  store float %7, ptr %3, align 4, !tbaa !34
  store float %9, ptr %4, align 4, !tbaa !34
  store float %10, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @rgb_to_ycc(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = fmul float %0, 2.550000e+02
  %9 = fmul float %1, 2.550000e+02
  %10 = fmul float %2, 2.550000e+02
  switch i32 %6, label %49 [
    i32 0, label %11
    i32 1, label %24
    i32 2, label %37
  ]

11:                                               ; preds = %7
  %12 = fmul float %9, 0x3FE020C4A0000000
  %13 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FD072B020000000, float %12)
  %14 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FB9168720000000, float %13)
  %15 = fadd float %14, 1.600000e+01
  %16 = fmul float %9, 0xBFD29FBE80000000
  %17 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFC2F1AA00000000, float %16)
  %18 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FDC189380000000, float %17)
  %19 = fadd float %18, 1.280000e+02
  %20 = fmul float %9, 0xBFD78D4FE0000000
  %21 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FDC189380000000, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFB22D0E60000000, float %21)
  %23 = fadd float %22, 1.280000e+02
  br label %49

24:                                               ; preds = %7
  %25 = fmul float %9, 0x3FE3A5E360000000
  %26 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FC76C8B40000000, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FAFBE76C0000000, float %26)
  %28 = fadd float %27, 1.600000e+01
  %29 = fmul float %9, 0xBFD5A1CAC0000000
  %30 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFB9DB22E0000000, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FDC189380000000, float %30)
  %32 = fadd float %31, 1.280000e+02
  %33 = fmul float %9, 0xBFD9893740000000
  %34 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FDC189380000000, float %33)
  %35 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFA47AE140000000, float %34)
  %36 = fadd float %35, 1.280000e+02
  br label %49

37:                                               ; preds = %7
  %38 = fmul float %9, 0x3FE2C8B440000000
  %39 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FD322D0E0000000, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FBD2F1AA0000000, float %39)
  %41 = fmul float %9, 0xBFD5335D20000000
  %42 = tail call float @llvm.fmuladd.f32(float %8, float 0xBFC59945C0000000, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %10, float 5.000000e-01, float %42)
  %44 = fadd float %43, 1.280000e+02
  %45 = fmul float %9, 0xBFDACBD120000000
  %46 = tail call float @llvm.fmuladd.f32(float %8, float 5.000000e-01, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %10, float 0xBFB4D0BB60000000, float %46)
  %48 = fadd float %47, 1.280000e+02
  br label %49

49:                                               ; preds = %7, %37, %24, %11
  %50 = phi float [ 1.280000e+02, %7 ], [ %40, %37 ], [ %28, %24 ], [ %15, %11 ]
  %51 = phi float [ 1.280000e+02, %7 ], [ %48, %37 ], [ %36, %24 ], [ %23, %11 ]
  %52 = phi float [ 1.280000e+02, %7 ], [ %44, %37 ], [ %32, %24 ], [ %19, %11 ]
  store float %50, ptr %3, align 4, !tbaa !34
  store float %52, ptr %4, align 4, !tbaa !34
  store float %51, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ycc_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  switch i32 %6, label %38 [
    i32 0, label %8
    i32 1, label %19
    i32 2, label %30
  ]

8:                                                ; preds = %7
  %9 = fadd float %0, -1.600000e+01
  %10 = fadd float %2, -1.280000e+02
  %11 = fmul float %10, 0x3FF9893740000000
  %12 = tail call float @llvm.fmuladd.f32(float %9, float 0x3FF29FBE80000000, float %11)
  %13 = fmul float %10, 0xBFEA0418A0000000
  %14 = tail call float @llvm.fmuladd.f32(float %9, float 0x3FF29FBE80000000, float %13)
  %15 = fadd float %1, -1.280000e+02
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 0xBFD9168720000000, float %14)
  %17 = fmul float %15, 0x400022D0E0000000
  %18 = tail call float @llvm.fmuladd.f32(float %9, float 0x3FF29FBE80000000, float %17)
  br label %38

19:                                               ; preds = %7
  %20 = fadd float %0, -1.600000e+01
  %21 = fadd float %2, -1.280000e+02
  %22 = fmul float %21, 0x3FFCB020C0000000
  %23 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FF29FBE80000000, float %22)
  %24 = fmul float %21, 0xBFE1168720000000
  %25 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FF29FBE80000000, float %24)
  %26 = fadd float %1, -1.280000e+02
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 0xBFCB439580000000, float %25)
  %28 = fmul float %26, 0x4000EB8520000000
  %29 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FF29FBE80000000, float %28)
  br label %38

30:                                               ; preds = %7
  %31 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FF66E9780000000, float %0)
  %32 = fadd float %31, 0xC0666E9780000000
  %33 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFD60663C0000000, float %0)
  %34 = tail call float @llvm.fmuladd.f32(float %2, float 0xBFE6DA3C20000000, float %33)
  %35 = fadd float %34, 0x4060EEB700000000
  %36 = tail call float @llvm.fmuladd.f32(float %1, float 0x3FFC5A1CA0000000, float %0)
  %37 = fadd float %36, 0xC06C5A1CA0000000
  br label %38

38:                                               ; preds = %7, %30, %19, %8
  %39 = phi float [ 1.280000e+02, %7 ], [ %32, %30 ], [ %23, %19 ], [ %12, %8 ]
  %40 = phi float [ 1.280000e+02, %7 ], [ %35, %30 ], [ %27, %19 ], [ %16, %8 ]
  %41 = phi float [ 1.280000e+02, %7 ], [ %37, %30 ], [ %29, %19 ], [ %18, %8 ]
  %42 = fdiv float %39, 2.550000e+02
  store float %42, ptr %3, align 4, !tbaa !34
  %43 = fdiv float %40, 2.550000e+02
  store float %43, ptr %4, align 4, !tbaa !34
  %44 = fdiv float %41, 2.550000e+02
  store float %44, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @hex_to_rgb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %8 = load i8, ptr %0, align 1, !tbaa !38
  %9 = icmp eq i8 %8, 35
  %10 = zext i1 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 4, !tbaa !39
  %19 = mul i32 %18, 17
  store i32 %19, ptr %5, align 4, !tbaa !39
  %20 = load i32, ptr %6, align 4, !tbaa !39
  %21 = mul i32 %20, 17
  store i32 %21, ptr %6, align 4, !tbaa !39
  %22 = load i32, ptr %7, align 4, !tbaa !39
  %23 = mul i32 %22, 17
  store i32 %23, ptr %7, align 4, !tbaa !39
  br label %25

24:                                               ; preds = %14
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  br label %55

25:                                               ; preds = %4, %17
  %26 = load i32, ptr %5, align 4, !tbaa !39
  %27 = uitofp i32 %26 to float
  %28 = fmul float %27, 0x3F70101020000000
  store float %28, ptr %1, align 4, !tbaa !34
  %29 = load i32, ptr %6, align 4, !tbaa !39
  %30 = uitofp i32 %29 to float
  %31 = fmul float %30, 0x3F70101020000000
  store float %31, ptr %2, align 4, !tbaa !34
  %32 = load i32, ptr %7, align 4, !tbaa !39
  %33 = uitofp i32 %32 to float
  %34 = fmul float %33, 0x3F70101020000000
  store float %34, ptr %3, align 4, !tbaa !34
  %35 = load float, ptr %1, align 4, !tbaa !34
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = fcmp ogt float %35, 1.000000e+00
  br i1 %38, label %39, label %41

39:                                               ; preds = %37, %25
  %40 = phi float [ 0.000000e+00, %25 ], [ 1.000000e+00, %37 ]
  store float %40, ptr %1, align 4, !tbaa !34
  br label %41

41:                                               ; preds = %39, %37
  %42 = load float, ptr %2, align 4, !tbaa !34
  %43 = fcmp olt float %42, 0.000000e+00
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = fcmp ogt float %42, 1.000000e+00
  br i1 %45, label %46, label %48

46:                                               ; preds = %44, %41
  %47 = phi float [ 0.000000e+00, %41 ], [ 1.000000e+00, %44 ]
  store float %47, ptr %2, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %46, %44
  %49 = load float, ptr %3, align 4, !tbaa !34
  %50 = fcmp olt float %49, 0.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  br label %55

52:                                               ; preds = %48
  %53 = fcmp ogt float %49, 1.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  br label %55

55:                                               ; preds = %51, %54, %52, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @rgb_to_hsv(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fcmp olt float %1, %2
  %8 = select i1 %7, float -1.000000e+00, float 0.000000e+00
  %9 = select i1 %7, float %1, float %2
  %10 = select i1 %7, float %2, float %1
  %11 = fcmp ogt float %10, %0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = fsub float 0xBFD5555560000000, %8
  %14 = fcmp ogt float %9, %0
  %15 = select i1 %14, float %0, float %9
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi float [ %13, %12 ], [ %8, %6 ]
  %18 = phi float [ %15, %12 ], [ %9, %6 ]
  %19 = phi float [ %0, %12 ], [ %10, %6 ]
  %20 = phi float [ %10, %12 ], [ %0, %6 ]
  %21 = fsub float %20, %18
  %22 = fsub float %19, %9
  %23 = tail call float @llvm.fmuladd.f32(float %21, float 6.000000e+00, float 0x3BC79CA100000000)
  %24 = fdiv float %22, %23
  %25 = fadd float %17, %24
  %26 = tail call float @llvm.fabs.f32(float %25)
  store float %26, ptr %3, align 4, !tbaa !34
  %27 = fadd float %20, 0x3BC79CA100000000
  %28 = fdiv float %21, %27
  store float %28, ptr %4, align 4, !tbaa !34
  store float %20, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsv_v(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fcmp olt float %5, %7
  %9 = select i1 %8, float -1.000000e+00, float 0.000000e+00
  %10 = select i1 %8, float %5, float %7
  %11 = select i1 %8, float %7, float %5
  %12 = fcmp ogt float %11, %3
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = fsub float 0xBFD5555560000000, %9
  %15 = fcmp ogt float %10, %3
  %16 = select i1 %15, float %3, float %10
  br label %17

17:                                               ; preds = %2, %13
  %18 = phi float [ %14, %13 ], [ %9, %2 ]
  %19 = phi float [ %16, %13 ], [ %10, %2 ]
  %20 = phi float [ %3, %13 ], [ %11, %2 ]
  %21 = phi float [ %11, %13 ], [ %3, %2 ]
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = getelementptr inbounds float, ptr %1, i64 1
  %24 = fsub float %21, %19
  %25 = fsub float %20, %10
  %26 = tail call float @llvm.fmuladd.f32(float %24, float 6.000000e+00, float 0x3BC79CA100000000)
  %27 = fdiv float %25, %26
  %28 = fadd float %18, %27
  %29 = tail call float @llvm.fabs.f32(float %28)
  store float %29, ptr %1, align 4, !tbaa !34
  %30 = fadd float %21, 0x3BC79CA100000000
  %31 = fdiv float %24, %30
  store float %31, ptr %23, align 4, !tbaa !34
  store float %21, ptr %22, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @rgb_to_hsl(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fcmp ogt float %0, %1
  %8 = select i1 %7, float %0, float %1
  %9 = fcmp ogt float %8, %2
  %10 = select i1 %9, float %8, float %2
  %11 = fcmp olt float %0, %1
  %12 = select i1 %11, float %0, float %1
  %13 = fcmp olt float %12, %2
  %14 = select i1 %13, float %12, float %2
  %15 = fadd float %10, %14
  %16 = fmul float %15, 5.000000e-01
  %17 = fcmp ogt float %16, 1.000000e+00
  %18 = select i1 %17, float 1.000000e+00, float %16
  %19 = fcmp oeq float %10, %14
  br i1 %19, label %44, label %20

20:                                               ; preds = %6
  %21 = fsub float %10, %14
  %22 = fcmp ogt float %18, 5.000000e-01
  %23 = fsub float 2.000000e+00, %10
  %24 = fsub float %23, %14
  %25 = select i1 %22, float %24, float %15
  %26 = fdiv float %21, %25
  %27 = fcmp oeq float %10, %0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = fsub float %1, %2
  %30 = fdiv float %29, %21
  %31 = fcmp olt float %1, %2
  %32 = select i1 %31, float 6.000000e+00, float 0.000000e+00
  %33 = fadd float %32, %30
  br label %44

34:                                               ; preds = %20
  %35 = fcmp oeq float %10, %1
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = fsub float %2, %0
  %38 = fdiv float %37, %21
  %39 = fadd float %38, 2.000000e+00
  br label %44

40:                                               ; preds = %34
  %41 = fsub float %0, %1
  %42 = fdiv float %41, %21
  %43 = fadd float %42, 4.000000e+00
  br label %44

44:                                               ; preds = %28, %40, %36, %6
  %45 = phi float [ 0.000000e+00, %6 ], [ %26, %36 ], [ %26, %40 ], [ %26, %28 ]
  %46 = phi float [ 0.000000e+00, %6 ], [ %39, %36 ], [ %43, %40 ], [ %33, %28 ]
  %47 = fdiv float %46, 6.000000e+00
  store float %47, ptr %3, align 4, !tbaa !34
  store float %45, ptr %4, align 4, !tbaa !34
  store float %18, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsl_compat(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = fcmp ogt float %0, %1
  %10 = select i1 %9, float %0, float %1
  %11 = fcmp ogt float %10, %2
  %12 = select i1 %11, float %10, float %2
  %13 = fcmp olt float %0, %1
  %14 = select i1 %13, float %0, float %1
  %15 = fcmp olt float %14, %2
  %16 = select i1 %15, float %14, float %2
  %17 = fadd float %12, %16
  %18 = fmul float %17, 5.000000e-01
  %19 = fcmp ogt float %18, 1.000000e+00
  %20 = select i1 %19, float 1.000000e+00, float %18
  %21 = fcmp oeq float %12, %16
  br i1 %21, label %46, label %22

22:                                               ; preds = %6
  %23 = fsub float %12, %16
  %24 = fcmp ogt float %20, 5.000000e-01
  %25 = fsub float 2.000000e+00, %12
  %26 = fsub float %25, %16
  %27 = select i1 %24, float %26, float %17
  %28 = fdiv float %23, %27
  %29 = fcmp oeq float %12, %0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = fsub float %1, %2
  %32 = fdiv float %31, %23
  %33 = fcmp olt float %1, %2
  %34 = select i1 %33, float 6.000000e+00, float 0.000000e+00
  %35 = fadd float %34, %32
  br label %46

36:                                               ; preds = %22
  %37 = fcmp oeq float %12, %1
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = fsub float %2, %0
  %40 = fdiv float %39, %23
  %41 = fadd float %40, 2.000000e+00
  br label %46

42:                                               ; preds = %36
  %43 = fsub float %0, %1
  %44 = fdiv float %43, %23
  %45 = fadd float %44, 4.000000e+00
  br label %46

46:                                               ; preds = %6, %30, %38, %42
  %47 = phi float [ 0.000000e+00, %6 ], [ %28, %38 ], [ %28, %42 ], [ %28, %30 ]
  %48 = phi float [ 0.000000e+00, %6 ], [ %41, %38 ], [ %45, %42 ], [ %35, %30 ]
  %49 = fdiv float %48, 6.000000e+00
  store float %49, ptr %3, align 4, !tbaa !34
  store float %47, ptr %4, align 4, !tbaa !34
  store float %20, ptr %5, align 4, !tbaa !34
  %50 = fcmp ugt float %20, 0.000000e+00
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load float, ptr %4, align 4, !tbaa !34
  %53 = fcmp ugt float %52, 0.000000e+00
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %46
  store float %8, ptr %3, align 4, !tbaa !34
  store float %7, ptr %4, align 4, !tbaa !34
  br label %55

55:                                               ; preds = %54, %51
  %56 = load float, ptr %3, align 4, !tbaa !34
  %57 = fcmp oeq float %56, 0.000000e+00
  %58 = fcmp oge float %8, 1.000000e+00
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  br label %61

61:                                               ; preds = %60, %55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsl_compat_v(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %8, align 4, !tbaa !34
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = fcmp ogt float %3, %5
  %13 = select i1 %12, float %3, float %5
  %14 = fcmp ogt float %13, %7
  %15 = select i1 %14, float %13, float %7
  %16 = fcmp olt float %3, %5
  %17 = select i1 %16, float %3, float %5
  %18 = fcmp olt float %17, %7
  %19 = select i1 %18, float %17, float %7
  %20 = fadd float %15, %19
  %21 = fmul float %20, 5.000000e-01
  %22 = fcmp ogt float %21, 1.000000e+00
  %23 = select i1 %22, float 1.000000e+00, float %21
  %24 = fcmp oeq float %15, %19
  br i1 %24, label %49, label %25

25:                                               ; preds = %2
  %26 = fsub float %15, %19
  %27 = fcmp ogt float %23, 5.000000e-01
  %28 = fsub float 2.000000e+00, %15
  %29 = fsub float %28, %19
  %30 = select i1 %27, float %29, float %20
  %31 = fdiv float %26, %30
  %32 = fcmp oeq float %15, %3
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = fsub float %5, %7
  %35 = fdiv float %34, %26
  %36 = fcmp olt float %5, %7
  %37 = select i1 %36, float 6.000000e+00, float 0.000000e+00
  %38 = fadd float %37, %35
  br label %49

39:                                               ; preds = %25
  %40 = fcmp oeq float %15, %5
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = fsub float %7, %3
  %43 = fdiv float %42, %26
  %44 = fadd float %43, 2.000000e+00
  br label %49

45:                                               ; preds = %39
  %46 = fsub float %3, %5
  %47 = fdiv float %46, %26
  %48 = fadd float %47, 4.000000e+00
  br label %49

49:                                               ; preds = %45, %41, %33, %2
  %50 = phi float [ 0.000000e+00, %2 ], [ %31, %41 ], [ %31, %45 ], [ %31, %33 ]
  %51 = phi float [ 0.000000e+00, %2 ], [ %44, %41 ], [ %48, %45 ], [ %38, %33 ]
  %52 = fdiv float %51, 6.000000e+00
  store float %52, ptr %1, align 4, !tbaa !34
  store float %50, ptr %8, align 4, !tbaa !34
  store float %23, ptr %9, align 4, !tbaa !34
  %53 = fcmp ugt float %23, 0.000000e+00
  %54 = fcmp ugt float %50, 0.000000e+00
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store float %11, ptr %1, align 4, !tbaa !34
  store float %10, ptr %8, align 4, !tbaa !34
  br label %57

57:                                               ; preds = %49, %56
  %58 = load float, ptr %1, align 4, !tbaa !34
  %59 = fcmp oeq float %58, 0.000000e+00
  %60 = fcmp oge float %11, 1.000000e+00
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store float 1.000000e+00, ptr %1, align 4, !tbaa !34
  br label %63

63:                                               ; preds = %57, %62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsl_v(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fcmp ogt float %3, %5
  %9 = select i1 %8, float %3, float %5
  %10 = fcmp ogt float %9, %7
  %11 = select i1 %10, float %9, float %7
  %12 = fcmp olt float %3, %5
  %13 = select i1 %12, float %3, float %5
  %14 = fcmp olt float %13, %7
  %15 = select i1 %14, float %13, float %7
  %16 = fadd float %11, %15
  %17 = fmul float %16, 5.000000e-01
  %18 = fcmp ogt float %17, 1.000000e+00
  %19 = select i1 %18, float 1.000000e+00, float %17
  %20 = fcmp oeq float %11, %15
  br i1 %20, label %45, label %21

21:                                               ; preds = %2
  %22 = fsub float %11, %15
  %23 = fcmp ogt float %19, 5.000000e-01
  %24 = fsub float 2.000000e+00, %11
  %25 = fsub float %24, %15
  %26 = select i1 %23, float %25, float %16
  %27 = fdiv float %22, %26
  %28 = fcmp oeq float %11, %3
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = fsub float %5, %7
  %31 = fdiv float %30, %22
  %32 = fcmp olt float %5, %7
  %33 = select i1 %32, float 6.000000e+00, float 0.000000e+00
  %34 = fadd float %33, %31
  br label %45

35:                                               ; preds = %21
  %36 = fcmp oeq float %11, %5
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = fsub float %7, %3
  %39 = fdiv float %38, %22
  %40 = fadd float %39, 2.000000e+00
  br label %45

41:                                               ; preds = %35
  %42 = fsub float %3, %5
  %43 = fdiv float %42, %22
  %44 = fadd float %43, 4.000000e+00
  br label %45

45:                                               ; preds = %2, %29, %37, %41
  %46 = phi float [ 0.000000e+00, %2 ], [ %27, %37 ], [ %27, %41 ], [ %27, %29 ]
  %47 = phi float [ 0.000000e+00, %2 ], [ %40, %37 ], [ %44, %41 ], [ %34, %29 ]
  %48 = getelementptr inbounds float, ptr %1, i64 2
  %49 = getelementptr inbounds float, ptr %1, i64 1
  %50 = fdiv float %47, 6.000000e+00
  store float %50, ptr %1, align 4, !tbaa !34
  store float %46, ptr %49, align 4, !tbaa !34
  store float %19, ptr %48, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsv_compat(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = load float, ptr %3, align 4, !tbaa !34
  %8 = load float, ptr %4, align 4, !tbaa !34
  %9 = fcmp olt float %1, %2
  %10 = select i1 %9, float -1.000000e+00, float 0.000000e+00
  %11 = select i1 %9, float %1, float %2
  %12 = select i1 %9, float %2, float %1
  %13 = fcmp ogt float %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = fsub float 0xBFD5555560000000, %10
  %16 = fcmp ogt float %11, %0
  %17 = select i1 %16, float %0, float %11
  br label %18

18:                                               ; preds = %6, %14
  %19 = phi float [ %15, %14 ], [ %10, %6 ]
  %20 = phi float [ %17, %14 ], [ %11, %6 ]
  %21 = phi float [ %0, %14 ], [ %12, %6 ]
  %22 = phi float [ %12, %14 ], [ %0, %6 ]
  %23 = fsub float %22, %20
  %24 = fsub float %21, %11
  %25 = tail call float @llvm.fmuladd.f32(float %23, float 6.000000e+00, float 0x3BC79CA100000000)
  %26 = fdiv float %24, %25
  %27 = fadd float %19, %26
  %28 = tail call float @llvm.fabs.f32(float %27)
  store float %28, ptr %3, align 4, !tbaa !34
  %29 = fadd float %22, 0x3BC79CA100000000
  %30 = fdiv float %23, %29
  store float %30, ptr %4, align 4, !tbaa !34
  store float %22, ptr %5, align 4, !tbaa !34
  %31 = fcmp ugt float %22, 0.000000e+00
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store float %7, ptr %3, align 4, !tbaa !34
  store float %8, ptr %4, align 4, !tbaa !34
  br label %37

33:                                               ; preds = %18
  %34 = load float, ptr %4, align 4, !tbaa !34
  %35 = fcmp ugt float %34, 0.000000e+00
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store float %7, ptr %3, align 4, !tbaa !34
  br label %37

37:                                               ; preds = %33, %36, %32
  %38 = load float, ptr %3, align 4, !tbaa !34
  %39 = fcmp oeq float %38, 0.000000e+00
  %40 = fcmp oge float %7, 1.000000e+00
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %42, %37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsv_compat_v(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = load float, ptr %8, align 4, !tbaa !34
  %12 = fcmp olt float %5, %7
  %13 = select i1 %12, float -1.000000e+00, float 0.000000e+00
  %14 = select i1 %12, float %5, float %7
  %15 = select i1 %12, float %7, float %5
  %16 = fcmp ogt float %15, %3
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = fsub float 0xBFD5555560000000, %13
  %19 = fcmp ogt float %14, %3
  %20 = select i1 %19, float %3, float %14
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi float [ %18, %17 ], [ %13, %2 ]
  %23 = phi float [ %20, %17 ], [ %14, %2 ]
  %24 = phi float [ %3, %17 ], [ %15, %2 ]
  %25 = phi float [ %15, %17 ], [ %3, %2 ]
  %26 = fsub float %25, %23
  %27 = fsub float %24, %14
  %28 = tail call float @llvm.fmuladd.f32(float %26, float 6.000000e+00, float 0x3BC79CA100000000)
  %29 = fdiv float %27, %28
  %30 = fadd float %22, %29
  %31 = tail call float @llvm.fabs.f32(float %30)
  store float %31, ptr %1, align 4, !tbaa !34
  %32 = fadd float %25, 0x3BC79CA100000000
  %33 = fdiv float %26, %32
  store float %33, ptr %8, align 4, !tbaa !34
  store float %25, ptr %9, align 4, !tbaa !34
  %34 = fcmp ugt float %25, 0.000000e+00
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  store float %10, ptr %1, align 4, !tbaa !34
  store float %11, ptr %8, align 4, !tbaa !34
  br label %39

36:                                               ; preds = %21
  %37 = fcmp ugt float %33, 0.000000e+00
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  store float %10, ptr %1, align 4, !tbaa !34
  br label %39

39:                                               ; preds = %38, %36, %35
  %40 = load float, ptr %1, align 4, !tbaa !34
  %41 = fcmp oeq float %40, 0.000000e+00
  %42 = fcmp oge float %10, 1.000000e+00
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store float 1.000000e+00, ptr %1, align 4, !tbaa !34
  br label %45

45:                                               ; preds = %39, %44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @hsv_clamp_v(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = fcmp olt float %3, 0.000000e+00
  %5 = fcmp ogt float %3, 1.000000e+00
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call float @llvm.floor.f32(float %3)
  %9 = fsub float %3, %8
  store float %9, ptr %0, align 4, !tbaa !34
  br label %10

10:                                               ; preds = %2, %7
  %11 = getelementptr inbounds float, ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = fcmp ogt float %12, 1.000000e+00
  br i1 %15, label %16, label %18

16:                                               ; preds = %14, %10
  %17 = phi float [ 0.000000e+00, %10 ], [ 1.000000e+00, %14 ]
  store float %17, ptr %11, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %16, %14
  %19 = getelementptr inbounds float, ptr %0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = fcmp ogt float %20, %1
  br i1 %23, label %24, label %26

24:                                               ; preds = %22, %18
  %25 = phi float [ 0.000000e+00, %18 ], [ %1, %22 ]
  store float %25, ptr %19, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @xyz_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  switch i32 %6, label %40 [
    i32 0, label %8
    i32 1, label %18
    i32 2, label %28
  ]

8:                                                ; preds = %7
  %9 = fmul float %1, 0xBFFBD590C0000000
  %10 = tail call float @llvm.fmuladd.f32(float %0, float 0x400C0BAC80000000, float %9)
  %11 = tail call float @llvm.fmuladd.f32(float %2, float 0xBFE16889C0000000, float %10)
  store float %11, ptr %3, align 4, !tbaa !34
  %12 = fmul float %1, 0x3FFFA51C20000000
  %13 = tail call float @llvm.fmuladd.f32(float %0, float 0xBFF11ADEA0000000, float %12)
  %14 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FA2021080000000, float %13)
  store float %14, ptr %4, align 4, !tbaa !34
  %15 = fmul float %1, 0xBFC9371980000000
  %16 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FACD4E320000000, float %15)
  %17 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FF0CD0140000000, float %16)
  br label %38

18:                                               ; preds = %7
  %19 = fmul float %1, 0xBFF8982AA0000000
  %20 = tail call float @llvm.fmuladd.f32(float %0, float 0x4009EC7EA0000000, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %2, float 0xBFDFE7FF60000000, float %20)
  store float %21, ptr %3, align 4, !tbaa !34
  %22 = fmul float %1, 0x3FFE041020000000
  %23 = tail call float @llvm.fmuladd.f32(float %0, float 0xBFEF042520000000, float %22)
  %24 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FA546D400000000, float %23)
  store float %24, ptr %4, align 4, !tbaa !34
  %25 = fmul float %1, 0xBFCA1E14C0000000
  %26 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FAC7DE500000000, float %25)
  %27 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FF0EABF00000000, float %26)
  br label %38

28:                                               ; preds = %7
  %29 = fmul float %1, 0xBFEAAAF2C0000000
  %30 = tail call float @llvm.fmuladd.f32(float %0, float 0x40024D7E40000000, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %2, float 0xBFDD160CA0000000, float %30)
  store float %31, ptr %3, align 4, !tbaa !34
  %32 = fmul float %1, 0x3FF6C39E40000000
  %33 = tail call float @llvm.fmuladd.f32(float %0, float 0xBFE05F72C0000000, float %32)
  %34 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FB6C1B120000000, float %33)
  store float %34, ptr %4, align 4, !tbaa !34
  %35 = fmul float %1, 0xBF9049E280000000
  %36 = tail call float @llvm.fmuladd.f32(float %0, float 0x3F776E48E0000000, float %35)
  %37 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FF029B940000000, float %36)
  br label %38

38:                                               ; preds = %8, %18, %28
  %39 = phi float [ %37, %28 ], [ %27, %18 ], [ %17, %8 ]
  store float %39, ptr %5, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %38, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @hsv_to_cpack(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -3.000000e+00)
  %5 = tail call float @llvm.fabs.f32(float %4)
  %6 = fadd float %5, -1.000000e+00
  %7 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -2.000000e+00)
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fsub float 2.000000e+00, %8
  %10 = tail call float @llvm.fmuladd.f32(float %0, float 6.000000e+00, float -4.000000e+00)
  %11 = tail call float @llvm.fabs.f32(float %10)
  %12 = fsub float 2.000000e+00, %11
  %13 = fcmp olt float %6, 0.000000e+00
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = fcmp ogt float %6, 1.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %14, %3
  %18 = phi float [ 1.000000e+00, %16 ], [ %6, %14 ], [ 0.000000e+00, %3 ]
  %19 = fcmp olt float %12, 0.000000e+00
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = fcmp ogt float %12, 1.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %20, %17
  %24 = phi float [ 1.000000e+00, %22 ], [ %12, %20 ], [ 0.000000e+00, %17 ]
  %25 = fcmp olt float %9, 0.000000e+00
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = fcmp ogt float %9, 1.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %23, %26, %28
  %30 = phi float [ 1.000000e+00, %28 ], [ %9, %26 ], [ 0.000000e+00, %23 ]
  %31 = fadd float %18, -1.000000e+00
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %1, float 1.000000e+00)
  %33 = fmul float %32, %2
  %34 = fadd float %30, -1.000000e+00
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %1, float 1.000000e+00)
  %36 = fmul float %35, %2
  %37 = fadd float %24, -1.000000e+00
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %1, float 1.000000e+00)
  %39 = fmul float %38, %2
  %40 = fmul float %33, 2.550000e+02
  %41 = fptoui float %40 to i32
  %42 = fmul float %36, 2.550000e+02
  %43 = fptoui float %42 to i32
  %44 = fmul float %39, 2.550000e+02
  %45 = fptoui float %44 to i32
  %46 = shl i32 %43, 8
  %47 = shl i32 %45, 16
  %48 = add i32 %47, %41
  %49 = add i32 %48, %46
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @rgb_to_cpack(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = fcmp ogt float %0, 0.000000e+00
  %5 = select i1 %4, float %0, float 0.000000e+00
  %6 = fmul float %5, 2.550000e+02
  %7 = tail call float @llvm.floor.f32(float %6)
  %8 = fptoui float %7 to i32
  %9 = fcmp ogt float %1, 0.000000e+00
  %10 = select i1 %9, float %1, float 0.000000e+00
  %11 = fmul float %10, 2.550000e+02
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fptoui float %12 to i32
  %14 = fcmp ogt float %2, 0.000000e+00
  %15 = select i1 %14, float %2, float 0.000000e+00
  %16 = fmul float %15, 2.550000e+02
  %17 = tail call float @llvm.floor.f32(float %16)
  %18 = fptoui float %17 to i32
  %19 = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  %20 = tail call i32 @llvm.umin.i32(i32 %13, i32 255)
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 255)
  %22 = shl nuw nsw i32 %20, 8
  %23 = or disjoint i32 %22, %19
  %24 = shl nuw nsw i32 %21, 16
  %25 = or disjoint i32 %23, %24
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @cpack_to_rgb(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = and i32 %0, 255
  %6 = uitofp i32 %5 to float
  %7 = fmul float %6, 0x3F70101020000000
  store float %7, ptr %1, align 4, !tbaa !34
  %8 = lshr i32 %0, 8
  %9 = and i32 %8, 255
  %10 = uitofp i32 %9 to float
  %11 = fmul float %10, 0x3F70101020000000
  store float %11, ptr %2, align 4, !tbaa !34
  %12 = lshr i32 %0, 16
  %13 = and i32 %12, 255
  %14 = uitofp i32 %13 to float
  %15 = fmul float %14, 0x3F70101020000000
  store float %15, ptr %3, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_uchar_to_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i8, ptr %1, align 1, !tbaa !38
  %4 = uitofp i8 %3 to float
  %5 = fmul float %4, 0x3F70101020000000
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = uitofp i8 %7 to float
  %9 = fmul float %8, 0x3F70101020000000
  %10 = getelementptr inbounds float, ptr %0, i64 1
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = uitofp i8 %12 to float
  %14 = fmul float %13, 0x3F70101020000000
  %15 = getelementptr inbounds float, ptr %0, i64 2
  store float %14, ptr %15, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgba_uchar_to_float(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i8, ptr %1, align 1, !tbaa !38
  %4 = uitofp i8 %3 to float
  %5 = fmul float %4, 0x3F70101020000000
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = uitofp i8 %7 to float
  %9 = fmul float %8, 0x3F70101020000000
  %10 = getelementptr inbounds float, ptr %0, i64 1
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = uitofp i8 %12 to float
  %14 = fmul float %13, 0x3F70101020000000
  %15 = getelementptr inbounds float, ptr %0, i64 2
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %1, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !38
  %18 = uitofp i8 %17 to float
  %19 = fmul float %18, 0x3F70101020000000
  %20 = getelementptr inbounds float, ptr %0, i64 3
  store float %19, ptr %20, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_float_to_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fcmp ugt float %3, 0.000000e+00
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = fcmp ogt float %3, 0x3FEFEFEFE0000000
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call float @llvm.fmuladd.f32(float %3, float 2.550000e+02, float 5.000000e-01)
  %9 = fptoui float %8 to i8
  br label %10

10:                                               ; preds = %7, %5, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %7 ], [ -1, %5 ]
  store i8 %11, ptr %0, align 1, !tbaa !38
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fcmp ugt float %13, 0.000000e+00
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = fcmp ogt float %13, 0x3FEFEFEFE0000000
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = tail call float @llvm.fmuladd.f32(float %13, float 2.550000e+02, float 5.000000e-01)
  %19 = fptoui float %18 to i8
  br label %20

20:                                               ; preds = %17, %15, %10
  %21 = phi i8 [ 0, %10 ], [ %19, %17 ], [ -1, %15 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %21, ptr %22, align 1, !tbaa !38
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fcmp ugt float %24, 0.000000e+00
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = fcmp ogt float %24, 0x3FEFEFEFE0000000
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = tail call float @llvm.fmuladd.f32(float %24, float 2.550000e+02, float 5.000000e-01)
  %30 = fptoui float %29 to i8
  br label %31

31:                                               ; preds = %28, %26, %20
  %32 = phi i8 [ 0, %20 ], [ %30, %28 ], [ -1, %26 ]
  %33 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %32, ptr %33, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgba_float_to_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fcmp ugt float %3, 0.000000e+00
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = fcmp ogt float %3, 0x3FEFEFEFE0000000
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call float @llvm.fmuladd.f32(float %3, float 2.550000e+02, float 5.000000e-01)
  %9 = fptoui float %8 to i8
  br label %10

10:                                               ; preds = %7, %5, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %7 ], [ -1, %5 ]
  store i8 %11, ptr %0, align 1, !tbaa !38
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fcmp ugt float %13, 0.000000e+00
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = fcmp ogt float %13, 0x3FEFEFEFE0000000
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = tail call float @llvm.fmuladd.f32(float %13, float 2.550000e+02, float 5.000000e-01)
  %19 = fptoui float %18 to i8
  br label %20

20:                                               ; preds = %17, %15, %10
  %21 = phi i8 [ 0, %10 ], [ %19, %17 ], [ -1, %15 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %21, ptr %22, align 1, !tbaa !38
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fcmp ugt float %24, 0.000000e+00
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = fcmp ogt float %24, 0x3FEFEFEFE0000000
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = tail call float @llvm.fmuladd.f32(float %24, float 2.550000e+02, float 5.000000e-01)
  %30 = fptoui float %29 to i8
  br label %31

31:                                               ; preds = %28, %26, %20
  %32 = phi i8 [ 0, %20 ], [ %30, %28 ], [ -1, %26 ]
  %33 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %32, ptr %33, align 1, !tbaa !38
  %34 = getelementptr inbounds float, ptr %1, i64 3
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fcmp ugt float %35, 0.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = fcmp ogt float %35, 0x3FEFEFEFE0000000
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = tail call float @llvm.fmuladd.f32(float %35, float 2.550000e+02, float 5.000000e-01)
  %41 = fptoui float %40 to i8
  br label %42

42:                                               ; preds = %39, %37, %31
  %43 = phi i8 [ 0, %31 ], [ %41, %39 ], [ -1, %37 ]
  %44 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %43, ptr %44, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @gamma_correct(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = tail call float @powf(float noundef %3, float noundef %1) #13
  store float %4, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @rec709_to_linearrgb(float noundef %0) local_unnamed_addr #9 {
  %2 = fcmp olt float %0, 0x3FB4BC6A80000000
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fmul float %0, 0x3FCC71C720000000
  %6 = select i1 %4, float 0.000000e+00, float %5
  br label %11

7:                                                ; preds = %1
  %8 = fadd float %0, 0x3FB9581060000000
  %9 = fmul float %8, 0x3FED1E0CA0000000
  %10 = tail call float @powf(float noundef %9, float noundef 0x4001C71C80000000) #13
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi float [ %6, %3 ], [ %10, %7 ]
  ret float %12
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @linearrgb_to_rec709(float noundef %0) local_unnamed_addr #9 {
  %2 = fcmp olt float %0, 0x3F926E9780000000
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fmul float %0, 4.500000e+00
  %6 = select i1 %4, float 0.000000e+00, float %5
  br label %10

7:                                                ; preds = %1
  %8 = tail call float @powf(float noundef %0, float noundef 0x3FDCCCCCC0000000) #13
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF1958100000000, float 0xBFB9581060000000)
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi float [ %6, %3 ], [ %9, %7 ]
  ret float %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @srgb_to_linearrgb(float noundef %0) local_unnamed_addr #9 {
  %2 = fcmp olt float %0, 0x3FA4B5DCC0000000
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fmul float %0, 0x3FB3D07220000000
  %6 = select i1 %4, float 0.000000e+00, float %5
  br label %11

7:                                                ; preds = %1
  %8 = fadd float %0, 0x3FAC28F5C0000000
  %9 = fmul float %8, 0x3FEE54EDE0000000
  %10 = tail call float @powf(float noundef %9, float noundef 0x4003333340000000) #13
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi float [ %6, %3 ], [ %10, %7 ]
  ret float %12
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @linearrgb_to_srgb(float noundef %0) local_unnamed_addr #9 {
  %2 = fcmp olt float %0, 0x3F69A5C380000000
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fmul float %0, 0x4029D70A40000000
  %6 = select i1 %4, float 0.000000e+00, float %5
  br label %10

7:                                                ; preds = %1
  %8 = tail call float @powf(float noundef %0, float noundef 0x3FDAAAAAA0000000) #13
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF0E147A0000000, float 0xBFAC28F5C0000000)
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi float [ %6, %3 ], [ %9, %7 ]
  ret float %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @minmax_rgb(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i16, ptr %0, align 2, !tbaa !41
  %3 = icmp sgt i16 %2, 255
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp slt i16 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4, %1
  %7 = phi i16 [ 255, %1 ], [ 0, %4 ]
  store i16 %7, ptr %0, align 2, !tbaa !41
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds i16, ptr %0, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !41
  %11 = icmp sgt i16 %10, 255
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = icmp slt i16 %10, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12, %8
  %15 = phi i16 [ 255, %8 ], [ 0, %12 ]
  store i16 %15, ptr %9, align 2, !tbaa !41
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds i16, ptr %0, i64 2
  %18 = load i16, ptr %17, align 2, !tbaa !41
  %19 = icmp sgt i16 %18, 255
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp slt i16 %18, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %16
  %23 = phi i16 [ 255, %16 ], [ 0, %20 ]
  store i16 %23, ptr %17, align 2, !tbaa !41
  br label %24

24:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @constrain_rgb(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fcmp ogt float %4, 0.000000e+00
  %6 = select i1 %5, float 0.000000e+00, float %4
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = fcmp olt float %6, %7
  %9 = select i1 %8, float %6, float %7
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = fcmp olt float %9, %10
  %12 = select i1 %11, float %9, float %10
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = fsub float %4, %12
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = load float, ptr %1, align 4, !tbaa !34
  %17 = fsub float %16, %12
  store float %17, ptr %1, align 4, !tbaa !34
  %18 = load float, ptr %2, align 4, !tbaa !34
  %19 = fsub float %18, %12
  store float %19, ptr %2, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %3, %14
  %21 = phi i32 [ 1, %14 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @lift_gamma_gain_to_asc_cdl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #10 {
  br label %7

7:                                                ; preds = %6, %7
  %8 = phi i64 [ 0, %6 ], [ %26, %7 ]
  %9 = getelementptr inbounds float, ptr %0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 %8
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fmul float %10, %12
  %14 = getelementptr inbounds float, ptr %3, i64 %8
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = load float, ptr %11, align 4, !tbaa !34
  %16 = load float, ptr %9, align 4, !tbaa !34
  %17 = fsub float 1.000000e+00, %16
  %18 = fmul float %15, %17
  %19 = getelementptr inbounds float, ptr %4, i64 %8
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %1, i64 %8
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fcmp oeq float %21, 0.000000e+00
  %23 = fdiv float 1.000000e+00, %21
  %24 = select i1 %22, float 0x47EFFFFFE0000000, float %23
  %25 = getelementptr inbounds float, ptr %5, i64 %8
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = add nuw nsw i64 %8, 1
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %7, !llvm.loop !43

28:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_float_set_hue_float_offset(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fcmp olt float %5, %7
  %9 = select i1 %8, float -1.000000e+00, float 0.000000e+00
  %10 = select i1 %8, float %5, float %7
  %11 = select i1 %8, float %7, float %5
  %12 = fcmp ogt float %11, %3
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = fsub float 0xBFD5555560000000, %9
  %15 = fcmp ogt float %10, %3
  %16 = select i1 %15, float %3, float %10
  br label %17

17:                                               ; preds = %2, %13
  %18 = phi float [ %14, %13 ], [ %9, %2 ]
  %19 = phi float [ %16, %13 ], [ %10, %2 ]
  %20 = phi float [ %3, %13 ], [ %11, %2 ]
  %21 = phi float [ %11, %13 ], [ %3, %2 ]
  %22 = fsub float %21, %19
  %23 = fsub float %20, %10
  %24 = tail call float @llvm.fmuladd.f32(float %22, float 6.000000e+00, float 0x3BC79CA100000000)
  %25 = fdiv float %23, %24
  %26 = fadd float %18, %25
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fadd float %27, %1
  %29 = fcmp ogt float %28, 1.000000e+00
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = fadd float %28, -1.000000e+00
  br label %36

32:                                               ; preds = %17
  %33 = fcmp olt float %28, 0.000000e+00
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = fadd float %28, 1.000000e+00
  br label %36

36:                                               ; preds = %32, %34, %30
  %37 = phi float [ %31, %30 ], [ %35, %34 ], [ %28, %32 ]
  %38 = tail call float @llvm.fmuladd.f32(float %37, float 6.000000e+00, float -3.000000e+00)
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fadd float %39, -1.000000e+00
  %41 = tail call float @llvm.fmuladd.f32(float %37, float 6.000000e+00, float -2.000000e+00)
  %42 = tail call float @llvm.fabs.f32(float %41)
  %43 = fsub float 2.000000e+00, %42
  %44 = tail call float @llvm.fmuladd.f32(float %37, float 6.000000e+00, float -4.000000e+00)
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fsub float 2.000000e+00, %45
  %47 = fcmp olt float %40, 0.000000e+00
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = fcmp ogt float %40, 1.000000e+00
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %48, %36
  %52 = phi float [ 1.000000e+00, %50 ], [ %40, %48 ], [ 0.000000e+00, %36 ]
  %53 = fcmp olt float %46, 0.000000e+00
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = fcmp ogt float %46, 1.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %54, %51
  %58 = phi float [ 1.000000e+00, %56 ], [ %46, %54 ], [ 0.000000e+00, %51 ]
  %59 = fcmp olt float %43, 0.000000e+00
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = fcmp ogt float %43, 1.000000e+00
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %57, %60, %62
  %64 = phi float [ 1.000000e+00, %62 ], [ %43, %60 ], [ 0.000000e+00, %57 ]
  %65 = fadd float %21, 0x3BC79CA100000000
  %66 = fdiv float %22, %65
  %67 = fadd float %52, -1.000000e+00
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %66, float 1.000000e+00)
  %69 = fmul float %21, %68
  store float %69, ptr %0, align 4, !tbaa !34
  %70 = fadd float %64, -1.000000e+00
  %71 = tail call float @llvm.fmuladd.f32(float %70, float %66, float 1.000000e+00)
  %72 = fmul float %21, %71
  store float %72, ptr %4, align 4, !tbaa !34
  %73 = fadd float %58, -1.000000e+00
  %74 = tail call float @llvm.fmuladd.f32(float %73, float %66, float 1.000000e+00)
  %75 = fmul float %21, %74
  store float %75, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_byte_set_hue_float_offset(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %4 = load i8, ptr %0, align 1, !tbaa !38
  %5 = uitofp i8 %4 to float
  %6 = fmul float %5, 0x3F70101020000000
  store float %6, ptr %3, align 4, !tbaa !34
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !38
  %9 = uitofp i8 %8 to float
  %10 = fmul float %9, 0x3F70101020000000
  %11 = getelementptr inbounds float, ptr %3, i64 1
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds i8, ptr %0, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = uitofp i8 %13 to float
  %15 = fmul float %14, 0x3F70101020000000
  %16 = getelementptr inbounds float, ptr %3, i64 2
  store float %15, ptr %16, align 4, !tbaa !34
  call void @rgb_float_set_hue_float_offset(ptr noundef nonnull %3, float noundef %1)
  %17 = load float, ptr %3, align 4, !tbaa !34
  %18 = fcmp ugt float %17, 0.000000e+00
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = fcmp ogt float %17, 0x3FEFEFEFE0000000
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = tail call float @llvm.fmuladd.f32(float %17, float 2.550000e+02, float 5.000000e-01)
  %23 = fptoui float %22 to i8
  br label %24

24:                                               ; preds = %21, %19, %2
  %25 = phi i8 [ 0, %2 ], [ %23, %21 ], [ -1, %19 ]
  store i8 %25, ptr %0, align 1, !tbaa !38
  %26 = load float, ptr %11, align 4, !tbaa !34
  %27 = fcmp ugt float %26, 0.000000e+00
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = fcmp ogt float %26, 0x3FEFEFEFE0000000
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = tail call float @llvm.fmuladd.f32(float %26, float 2.550000e+02, float 5.000000e-01)
  %32 = fptoui float %31 to i8
  br label %33

33:                                               ; preds = %30, %28, %24
  %34 = phi i8 [ 0, %24 ], [ %32, %30 ], [ -1, %28 ]
  store i8 %34, ptr %7, align 1, !tbaa !38
  %35 = load float, ptr %16, align 4, !tbaa !34
  %36 = fcmp ugt float %35, 0.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = fcmp ogt float %35, 0x3FEFEFEFE0000000
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = tail call float @llvm.fmuladd.f32(float %35, float 2.550000e+02, float 5.000000e-01)
  %41 = fptoui float %40 to i8
  br label %42

42:                                               ; preds = %33, %37, %39
  %43 = phi i8 [ 0, %33 ], [ %41, %39 ], [ -1, %37 ]
  store i8 %43, ptr %12, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define dso_local void @BLI_init_srgb_conversion() local_unnamed_addr #11 {
  %1 = load i1, ptr @BLI_init_srgb_conversion.initialized, align 1
  br i1 %1, label %66, label %2

2:                                                ; preds = %0
  store i1 true, ptr @BLI_init_srgb_conversion.initialized, align 1
  br label %3

3:                                                ; preds = %2, %36
  %4 = phi i64 [ 0, %2 ], [ %39, %36 ]
  %5 = trunc i64 %4 to i16
  %6 = and i16 %5, 32640
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i16 %5, 32639
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i16 %5, -129
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = trunc i64 %4 to i32
  %14 = shl i32 %13, 16
  %15 = or disjoint i32 %14, 32768
  %16 = bitcast i32 %15 to float
  br label %17

17:                                               ; preds = %3, %8, %10, %12
  %18 = phi float [ %16, %12 ], [ 0.000000e+00, %3 ], [ 0x47EFFFFFE0000000, %8 ], [ 0xC7EFFFFFE0000000, %10 ]
  %19 = fcmp olt float %18, 0x3F69A5C380000000
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = fcmp olt float %18, 0.000000e+00
  %22 = fmul float %18, 0x4029D70A40000000
  %23 = select i1 %21, float 0.000000e+00, float %22
  br label %27

24:                                               ; preds = %17
  %25 = tail call float @powf(float noundef %18, float noundef 0x3FDAAAAAA0000000) #13
  %26 = tail call float @llvm.fmuladd.f32(float %25, float 0x3FF0E147A0000000, float 0xBFAC28F5C0000000)
  br label %27

27:                                               ; preds = %20, %24
  %28 = phi float [ %23, %20 ], [ %26, %24 ]
  %29 = fmul float %28, 2.550000e+02
  %30 = fcmp ugt float %29, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = fcmp olt float %29, 2.550000e+02
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = tail call float @llvm.fmuladd.f32(float %29, float 2.560000e+02, float 5.000000e-01)
  %35 = fptoui float %34 to i16
  br label %36

36:                                               ; preds = %31, %27, %33
  %37 = phi i16 [ %35, %33 ], [ 0, %27 ], [ -256, %31 ]
  %38 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %4
  store i16 %37, ptr %38, align 2, !tbaa !41
  %39 = add nuw nsw i64 %4, 1
  %40 = icmp eq i64 %39, 65536
  br i1 %40, label %41, label %3, !llvm.loop !46

41:                                               ; preds = %36, %55
  %42 = phi i64 [ %64, %55 ], [ 0, %36 ]
  %43 = trunc i64 %42 to i32
  %44 = uitofp i32 %43 to float
  %45 = fmul float %44, 0x3F70101020000000
  %46 = fcmp olt float %45, 0x3FA4B5DCC0000000
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = fcmp olt float %45, 0.000000e+00
  %49 = fmul float %45, 0x3FB3D07220000000
  %50 = select i1 %48, float 0.000000e+00, float %49
  br label %55

51:                                               ; preds = %41
  %52 = fadd float %45, 0x3FAC28F5C0000000
  %53 = fmul float %52, 0x3FEE54EDE0000000
  %54 = tail call float @powf(float noundef %53, float noundef 0x4003333340000000) #13
  br label %55

55:                                               ; preds = %47, %51
  %56 = phi float [ %50, %47 ], [ %54, %51 ]
  %57 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %42
  store float %56, ptr %57, align 4, !tbaa !34
  %58 = bitcast float %56 to i32
  %59 = lshr i32 %58, 16
  %60 = zext nneg i32 %59 to i64
  %61 = trunc i64 %42 to i16
  %62 = shl nuw i16 %61, 8
  %63 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %60
  store i16 %62, ptr %63, align 2, !tbaa !41
  %64 = add nuw nsw i64 %42, 1
  %65 = icmp eq i64 %64, 256
  br i1 %65, label %66, label %41, !llvm.loop !47

66:                                               ; preds = %55, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @rgb_to_xyz(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #9 {
  %7 = fcmp ogt float %0, 0x3FA4B5DCC0000000
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = fadd float %0, 0x3FAC28F5C0000000
  %10 = fdiv float %9, 0x3FF0E147A0000000
  %11 = tail call float @powf(float noundef %10, float noundef 0x4003333340000000) #13
  br label %14

12:                                               ; preds = %6
  %13 = fdiv float %0, 0x4029D70A40000000
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi float [ %11, %8 ], [ %13, %12 ]
  %16 = fcmp ogt float %1, 0x3FA4B5DCC0000000
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = fadd float %1, 0x3FAC28F5C0000000
  %19 = fdiv float %18, 0x3FF0E147A0000000
  %20 = tail call float @powf(float noundef %19, float noundef 0x4003333340000000) #13
  br label %23

21:                                               ; preds = %14
  %22 = fdiv float %1, 0x4029D70A40000000
  br label %23

23:                                               ; preds = %17, %21
  %24 = phi float [ %20, %17 ], [ %22, %21 ]
  %25 = fcmp ogt float %2, 0x3FA4B5DCC0000000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = fadd float %2, 0x3FAC28F5C0000000
  %28 = fdiv float %27, 0x3FF0E147A0000000
  %29 = tail call float @powf(float noundef %28, float noundef 0x4003333340000000) #13
  br label %32

30:                                               ; preds = %23
  %31 = fdiv float %2, 0x4029D70A40000000
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi float [ %29, %26 ], [ %31, %30 ]
  %34 = fmul float %24, 1.000000e+02
  %35 = fmul float %15, 1.000000e+02
  %36 = fmul float %33, 1.000000e+02
  %37 = fmul float %34, 0x3FD6E29740000000
  %38 = tail call float @llvm.fmuladd.f32(float %35, float 0x3FDA65A140000000, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FC71819E0000000, float %38)
  store float %39, ptr %3, align 4, !tbaa !34
  %40 = fmul float %34, 0x3FE6E29740000000
  %41 = tail call float @llvm.fmuladd.f32(float %35, float 0x3FCB38CDA0000000, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FB279AAE0000000, float %41)
  store float %42, ptr %4, align 4, !tbaa !34
  %43 = fmul float %34, 0x3FBE836EC0000000
  %44 = tail call float @llvm.fmuladd.f32(float %35, float 0x3F93CC4AC0000000, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FEE684280000000, float %44)
  store float %45, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @xyz_to_lab(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #9 {
  %7 = fdiv float %0, 0x4057C30200000000
  %8 = fdiv float %1, 1.000000e+02
  %9 = fdiv float %2, 0x405B388320000000
  %10 = fcmp ogt float %7, 0x3F82231840000000
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call float @powf(float noundef %7, float noundef 0x3FD5555560000000) #13
  br label %16

13:                                               ; preds = %6
  %14 = tail call float @llvm.fmuladd.f32(float %7, float 0x408C3A6660000000, float 1.600000e+01)
  %15 = fdiv float %14, 1.160000e+02
  br label %16

16:                                               ; preds = %11, %13
  %17 = phi float [ %12, %11 ], [ %15, %13 ]
  %18 = fcmp ogt float %8, 0x3F82231840000000
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call float @powf(float noundef %8, float noundef 0x3FD5555560000000) #13
  br label %24

21:                                               ; preds = %16
  %22 = tail call float @llvm.fmuladd.f32(float %8, float 0x408C3A6660000000, float 1.600000e+01)
  %23 = fdiv float %22, 1.160000e+02
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi float [ %20, %19 ], [ %23, %21 ]
  %26 = fcmp ogt float %9, 0x3F82231840000000
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call float @powf(float noundef %9, float noundef 0x3FD5555560000000) #13
  br label %32

29:                                               ; preds = %24
  %30 = tail call float @llvm.fmuladd.f32(float %9, float 0x408C3A6660000000, float 1.600000e+01)
  %31 = fdiv float %30, 1.160000e+02
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi float [ %28, %27 ], [ %31, %29 ]
  %34 = tail call float @llvm.fmuladd.f32(float %25, float 1.160000e+02, float -1.600000e+01)
  store float %34, ptr %3, align 4, !tbaa !34
  %35 = fsub float %17, %25
  %36 = fmul float %35, 5.000000e+02
  store float %36, ptr %4, align 4, !tbaa !34
  %37 = fsub float %25, %33
  %38 = fmul float %37, 2.000000e+02
  store float %38, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @rgb_to_lab(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #9 {
  %7 = fcmp ogt float %0, 0x3FA4B5DCC0000000
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = fadd float %0, 0x3FAC28F5C0000000
  %10 = fdiv float %9, 0x3FF0E147A0000000
  %11 = tail call float @powf(float noundef %10, float noundef 0x4003333340000000) #13
  br label %14

12:                                               ; preds = %6
  %13 = fdiv float %0, 0x4029D70A40000000
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi float [ %11, %8 ], [ %13, %12 ]
  %16 = fcmp ogt float %1, 0x3FA4B5DCC0000000
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = fadd float %1, 0x3FAC28F5C0000000
  %19 = fdiv float %18, 0x3FF0E147A0000000
  %20 = tail call float @powf(float noundef %19, float noundef 0x4003333340000000) #13
  br label %23

21:                                               ; preds = %14
  %22 = fdiv float %1, 0x4029D70A40000000
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi float [ %20, %17 ], [ %22, %21 ]
  %25 = fcmp ogt float %2, 0x3FA4B5DCC0000000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = fadd float %2, 0x3FAC28F5C0000000
  %28 = fdiv float %27, 0x3FF0E147A0000000
  %29 = tail call float @powf(float noundef %28, float noundef 0x4003333340000000) #13
  br label %32

30:                                               ; preds = %23
  %31 = fdiv float %2, 0x4029D70A40000000
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi float [ %29, %26 ], [ %31, %30 ]
  %34 = fmul float %24, 1.000000e+02
  %35 = fmul float %15, 1.000000e+02
  %36 = fmul float %33, 1.000000e+02
  %37 = fmul float %34, 0x3FD6E29740000000
  %38 = tail call float @llvm.fmuladd.f32(float %35, float 0x3FDA65A140000000, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FC71819E0000000, float %38)
  %40 = fmul float %34, 0x3FE6E29740000000
  %41 = tail call float @llvm.fmuladd.f32(float %35, float 0x3FCB38CDA0000000, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FB279AAE0000000, float %41)
  %43 = fmul float %34, 0x3FBE836EC0000000
  %44 = tail call float @llvm.fmuladd.f32(float %35, float 0x3F93CC4AC0000000, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FEE684280000000, float %44)
  %46 = fdiv float %39, 0x4057C30200000000
  %47 = fdiv float %42, 1.000000e+02
  %48 = fdiv float %45, 0x405B388320000000
  %49 = fcmp ogt float %46, 0x3F82231840000000
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = tail call float @powf(float noundef %46, float noundef 0x3FD5555560000000) #13
  br label %55

52:                                               ; preds = %32
  %53 = tail call float @llvm.fmuladd.f32(float %46, float 0x408C3A6660000000, float 1.600000e+01)
  %54 = fdiv float %53, 1.160000e+02
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi float [ %51, %50 ], [ %54, %52 ]
  %57 = fcmp ogt float %47, 0x3F82231840000000
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = tail call float @powf(float noundef %47, float noundef 0x3FD5555560000000) #13
  br label %63

60:                                               ; preds = %55
  %61 = tail call float @llvm.fmuladd.f32(float %47, float 0x408C3A6660000000, float 1.600000e+01)
  %62 = fdiv float %61, 1.160000e+02
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi float [ %59, %58 ], [ %62, %60 ]
  %65 = fcmp ogt float %48, 0x3F82231840000000
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = tail call float @powf(float noundef %48, float noundef 0x3FD5555560000000) #13
  br label %71

68:                                               ; preds = %63
  %69 = tail call float @llvm.fmuladd.f32(float %48, float 0x408C3A6660000000, float 1.600000e+01)
  %70 = fdiv float %69, 1.160000e+02
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi float [ %67, %66 ], [ %70, %68 ]
  %73 = tail call float @llvm.fmuladd.f32(float %64, float 1.160000e+02, float -1.600000e+01)
  store float %73, ptr %3, align 4, !tbaa !34
  %74 = fsub float %56, %64
  %75 = fmul float %74, 5.000000e+02
  store float %75, ptr %4, align 4, !tbaa !34
  %76 = fsub float %64, %72
  %77 = fmul float %76, 2.000000e+02
  store float %77, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !36, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !44, !45}
!47 = distinct !{!47, !44, !45}
