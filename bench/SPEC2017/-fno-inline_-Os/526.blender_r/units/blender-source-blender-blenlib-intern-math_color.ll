; ModuleID = 'blender/source/blender/blenlib/intern/math_color.c'
source_filename = "blender/source/blender/blenlib/intern/math_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%02x%02x%02x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%01x%01x%01x\00", align 1
@BLI_init_srgb_conversion.initialized = internal unnamed_addr global i1 false, align 1
@BLI_color_to_srgb_table = dso_local local_unnamed_addr global [65536 x i16] zeroinitializer, align 16
@BLI_color_from_srgb_table = dso_local local_unnamed_addr global [256 x float] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @hsv_to_rgb_v(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = getelementptr inbounds float, ptr %1, i64 2
  tail call void @hsv_to_rgb(float noundef %3, float noundef %5, float noundef %7, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @hsl_to_rgb_v(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = getelementptr inbounds float, ptr %1, i64 2
  tail call void @hsl_to_rgb(float noundef %3, float noundef %5, float noundef %7, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @rgb_to_ycc(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = fmul float %0, 2.550000e+02
  %9 = fmul float %1, 2.550000e+02
  %10 = fmul float %2, 2.550000e+02
  switch i32 %6, label %55 [
    i32 0, label %11
    i32 1, label %26
    i32 2, label %41
  ]

11:                                               ; preds = %7
  %12 = fmul float %9, 0x3FE020C4A0000000
  %13 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FD072B020000000, float %12)
  %14 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FB9168720000000, float %13)
  %15 = fadd float %14, 1.600000e+01
  %16 = insertelement <2 x float> poison, float %9, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x float> %17, <float 0xBFD78D4FE0000000, float 0xBFD29FBE80000000>
  %19 = insertelement <2 x float> poison, float %8, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> <float 0x3FDC189380000000, float 0xBFC2F1AA00000000>, <2 x float> %18)
  %22 = insertelement <2 x float> poison, float %10, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> <float 0xBFB22D0E60000000, float 0x3FDC189380000000>, <2 x float> %21)
  %25 = fadd <2 x float> %24, <float 1.280000e+02, float 1.280000e+02>
  br label %55

26:                                               ; preds = %7
  %27 = fmul float %9, 0x3FE3A5E360000000
  %28 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FC76C8B40000000, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FAFBE76C0000000, float %28)
  %30 = fadd float %29, 1.600000e+01
  %31 = insertelement <2 x float> poison, float %9, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %32, <float 0xBFD9893740000000, float 0xBFD5A1CAC0000000>
  %34 = insertelement <2 x float> poison, float %8, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> <float 0x3FDC189380000000, float 0xBFB9DB22E0000000>, <2 x float> %33)
  %37 = insertelement <2 x float> poison, float %10, i64 0
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> <float 0xBFA47AE140000000, float 0x3FDC189380000000>, <2 x float> %36)
  %40 = fadd <2 x float> %39, <float 1.280000e+02, float 1.280000e+02>
  br label %55

41:                                               ; preds = %7
  %42 = fmul float %9, 0x3FE2C8B440000000
  %43 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FD322D0E0000000, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %10, float 0x3FBD2F1AA0000000, float %43)
  %45 = insertelement <2 x float> poison, float %9, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = fmul <2 x float> %46, <float 0xBFDACBD120000000, float 0xBFD5335D20000000>
  %48 = insertelement <2 x float> poison, float %8, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> <float 5.000000e-01, float 0xBFC59945C0000000>, <2 x float> %47)
  %51 = insertelement <2 x float> poison, float %10, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> <float 0xBFB4D0BB60000000, float 5.000000e-01>, <2 x float> %50)
  %54 = fadd <2 x float> %53, <float 1.280000e+02, float 1.280000e+02>
  br label %55

55:                                               ; preds = %7, %41, %26, %11
  %56 = phi float [ 1.280000e+02, %7 ], [ %44, %41 ], [ %30, %26 ], [ %15, %11 ]
  %57 = phi <2 x float> [ <float 1.280000e+02, float 1.280000e+02>, %7 ], [ %54, %41 ], [ %40, %26 ], [ %25, %11 ]
  store float %56, ptr %3, align 4, !tbaa !34
  %58 = extractelement <2 x float> %57, i64 1
  store float %58, ptr %4, align 4, !tbaa !34
  %59 = extractelement <2 x float> %57, i64 0
  store float %59, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ycc_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  switch i32 %6, label %48 [
    i32 0, label %8
    i32 1, label %23
    i32 2, label %38
  ]

8:                                                ; preds = %7
  %9 = insertelement <2 x float> poison, float %1, i64 0
  %10 = insertelement <2 x float> %9, float %0, i64 1
  %11 = fadd <2 x float> %10, <float -1.280000e+02, float -1.600000e+01>
  %12 = fadd float %2, -1.280000e+02
  %13 = fmul float %12, 0x3FF9893740000000
  %14 = extractelement <2 x float> %11, i64 1
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 0x3FF29FBE80000000, float %13)
  %16 = fmul float %12, 0xBFEA0418A0000000
  %17 = tail call float @llvm.fmuladd.f32(float %14, float 0x3FF29FBE80000000, float %16)
  %18 = extractelement <2 x float> %11, i64 0
  %19 = fmul float %18, 0x400022D0E0000000
  %20 = insertelement <2 x float> poison, float %17, i64 0
  %21 = insertelement <2 x float> %20, float %19, i64 1
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> <float 0xBFD9168720000000, float 0x3FF29FBE80000000>, <2 x float> %21)
  br label %48

23:                                               ; preds = %7
  %24 = insertelement <2 x float> poison, float %1, i64 0
  %25 = insertelement <2 x float> %24, float %0, i64 1
  %26 = fadd <2 x float> %25, <float -1.280000e+02, float -1.600000e+01>
  %27 = fadd float %2, -1.280000e+02
  %28 = fmul float %27, 0x3FFCB020C0000000
  %29 = extractelement <2 x float> %26, i64 1
  %30 = tail call float @llvm.fmuladd.f32(float %29, float 0x3FF29FBE80000000, float %28)
  %31 = fmul float %27, 0xBFE1168720000000
  %32 = tail call float @llvm.fmuladd.f32(float %29, float 0x3FF29FBE80000000, float %31)
  %33 = extractelement <2 x float> %26, i64 0
  %34 = fmul float %33, 0x4000EB8520000000
  %35 = insertelement <2 x float> poison, float %32, i64 0
  %36 = insertelement <2 x float> %35, float %34, i64 1
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> <float 0xBFCB439580000000, float 0x3FF29FBE80000000>, <2 x float> %36)
  br label %48

38:                                               ; preds = %7
  %39 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FF66E9780000000, float %0)
  %40 = fadd float %39, 0xC0666E9780000000
  %41 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFD60663C0000000, float %0)
  %42 = insertelement <2 x float> poison, float %2, i64 0
  %43 = insertelement <2 x float> %42, float %1, i64 1
  %44 = insertelement <2 x float> poison, float %41, i64 0
  %45 = insertelement <2 x float> %44, float %0, i64 1
  %46 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> <float 0xBFE6DA3C20000000, float 0x3FFC5A1CA0000000>, <2 x float> %45)
  %47 = fadd <2 x float> %46, <float 0x4060EEB700000000, float 0xC06C5A1CA0000000>
  br label %48

48:                                               ; preds = %7, %38, %23, %8
  %49 = phi float [ 1.280000e+02, %7 ], [ %40, %38 ], [ %30, %23 ], [ %15, %8 ]
  %50 = phi <2 x float> [ <float 1.280000e+02, float 1.280000e+02>, %7 ], [ %47, %38 ], [ %37, %23 ], [ %22, %8 ]
  %51 = fdiv float %49, 2.550000e+02
  store float %51, ptr %3, align 4, !tbaa !34
  %52 = extractelement <2 x float> %50, i64 0
  %53 = fdiv float %52, 2.550000e+02
  store float %53, ptr %4, align 4, !tbaa !34
  %54 = extractelement <2 x float> %50, i64 1
  %55 = fdiv float %54, 2.550000e+02
  store float %55, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @hex_to_rgb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %8 = load i8, ptr %0, align 1, !tbaa !38
  %9 = icmp eq i8 %8, 35
  %10 = zext i1 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, ptr %5, align 4, !tbaa !39
  %16 = load i32, ptr %6, align 4, !tbaa !39
  %17 = load i32, ptr %7, align 4, !tbaa !39
  br label %29

18:                                               ; preds = %4
  %19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, ptr %5, align 4, !tbaa !39
  %23 = mul i32 %22, 17
  %24 = load i32, ptr %6, align 4, !tbaa !39
  %25 = mul i32 %24, 17
  %26 = load i32, ptr %7, align 4, !tbaa !39
  %27 = mul i32 %26, 17
  br label %29

28:                                               ; preds = %18
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  br label %59

29:                                               ; preds = %14, %21
  %30 = phi i32 [ %17, %14 ], [ %27, %21 ]
  %31 = phi i32 [ %16, %14 ], [ %25, %21 ]
  %32 = phi i32 [ %15, %14 ], [ %23, %21 ]
  %33 = uitofp i32 %32 to float
  %34 = fmul float %33, 0x3F70101020000000
  store float %34, ptr %1, align 4, !tbaa !34
  %35 = uitofp i32 %31 to float
  %36 = fmul float %35, 0x3F70101020000000
  store float %36, ptr %2, align 4, !tbaa !34
  %37 = uitofp i32 %30 to float
  %38 = fmul float %37, 0x3F70101020000000
  store float %38, ptr %3, align 4, !tbaa !34
  %39 = load float, ptr %1, align 4, !tbaa !34
  %40 = fcmp olt float %39, 0.000000e+00
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = fcmp ogt float %39, 1.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %41, %29
  %44 = phi float [ 0.000000e+00, %29 ], [ 1.000000e+00, %41 ]
  store float %44, ptr %1, align 4, !tbaa !34
  br label %45

45:                                               ; preds = %43, %41
  %46 = load float, ptr %2, align 4, !tbaa !34
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = fcmp ogt float %46, 1.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %48, %45
  %51 = phi float [ 0.000000e+00, %45 ], [ 1.000000e+00, %48 ]
  store float %51, ptr %2, align 4, !tbaa !34
  br label %52

52:                                               ; preds = %50, %48
  %53 = load float, ptr %3, align 4, !tbaa !34
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  br label %59

56:                                               ; preds = %52
  %57 = fcmp ogt float %53, 1.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  br label %59

59:                                               ; preds = %55, %58, %56, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @rgb_to_hsv(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fcmp olt float %1, %2
  %8 = select i1 %7, float -1.000000e+00, float 0.000000e+00
  %9 = select i1 %7, float %1, float %2
  %10 = select i1 %7, float %2, float %1
  %11 = fcmp ogt float %10, %0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = fsub float 0xBFD5555560000000, %8
  %14 = tail call fastcc float @min_ff(float noundef %0, float noundef %9) #13
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi float [ %13, %12 ], [ %8, %6 ]
  %17 = phi float [ %14, %12 ], [ %9, %6 ]
  %18 = phi float [ %0, %12 ], [ %10, %6 ]
  %19 = phi float [ %10, %12 ], [ %0, %6 ]
  %20 = fsub float %19, %17
  %21 = fsub float %18, %9
  %22 = tail call float @llvm.fmuladd.f32(float %20, float 6.000000e+00, float 0x3BC79CA100000000)
  %23 = fdiv float %21, %22
  %24 = fadd float %16, %23
  %25 = tail call float @llvm.fabs.f32(float %24)
  store float %25, ptr %3, align 4, !tbaa !34
  %26 = fadd float %19, 0x3BC79CA100000000
  %27 = fdiv float %20, %26
  store float %27, ptr %4, align 4, !tbaa !34
  store float %19, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !41 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsv_v(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = getelementptr inbounds float, ptr %1, i64 2
  tail call void @rgb_to_hsv(float noundef %3, float noundef %5, float noundef %7, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @rgb_to_hsl(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call fastcc float @max_fff(float noundef %0, float noundef %1, float noundef %2) #13
  %8 = tail call fastcc float @min_fff(float noundef %0, float noundef %1, float noundef %2) #13
  %9 = fadd float %7, %8
  %10 = fmul float %9, 5.000000e-01
  %11 = tail call fastcc float @min_ff(float noundef 1.000000e+00, float noundef %10) #13
  %12 = fcmp oeq float %7, %8
  br i1 %12, label %37, label %13

13:                                               ; preds = %6
  %14 = fsub float %7, %8
  %15 = fcmp ogt float %11, 5.000000e-01
  %16 = fsub float 2.000000e+00, %7
  %17 = fsub float %16, %8
  %18 = select i1 %15, float %17, float %9
  %19 = fdiv float %14, %18
  %20 = fcmp oeq float %7, %0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = fsub float %1, %2
  %23 = fdiv float %22, %14
  %24 = fcmp olt float %1, %2
  %25 = select i1 %24, float 6.000000e+00, float 0.000000e+00
  %26 = fadd float %25, %23
  br label %37

27:                                               ; preds = %13
  %28 = fcmp oeq float %7, %1
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = fsub float %2, %0
  %31 = fdiv float %30, %14
  %32 = fadd float %31, 2.000000e+00
  br label %37

33:                                               ; preds = %27
  %34 = fsub float %0, %1
  %35 = fdiv float %34, %14
  %36 = fadd float %35, 4.000000e+00
  br label %37

37:                                               ; preds = %21, %33, %29, %6
  %38 = phi float [ 0.000000e+00, %6 ], [ %19, %29 ], [ %19, %33 ], [ %19, %21 ]
  %39 = phi float [ 0.000000e+00, %6 ], [ %32, %29 ], [ %36, %33 ], [ %26, %21 ]
  %40 = fdiv float %39, 6.000000e+00
  store float %40, ptr %3, align 4, !tbaa !34
  store float %38, ptr %4, align 4, !tbaa !34
  store float %11, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 !PGOFuncName !42 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #13
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #13
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 !PGOFuncName !43 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #13
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #13
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsl_compat(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #3 {
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = load float, ptr %3, align 4, !tbaa !34
  tail call void @rgb_to_hsl(float noundef %0, float noundef %1, float noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  %9 = load float, ptr %5, align 4, !tbaa !34
  %10 = fcmp ugt float %9, 0.000000e+00
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load float, ptr %4, align 4, !tbaa !34
  %13 = fcmp ugt float %12, 0.000000e+00
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %6
  store float %8, ptr %3, align 4, !tbaa !34
  store float %7, ptr %4, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %14, %11
  %16 = load float, ptr %3, align 4, !tbaa !34
  %17 = fcmp oeq float %16, 0.000000e+00
  %18 = fcmp oge float %8, 1.000000e+00
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  br label %21

21:                                               ; preds = %20, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsl_compat_v(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = getelementptr inbounds float, ptr %1, i64 2
  tail call void @rgb_to_hsl_compat(float noundef %3, float noundef %5, float noundef %7, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsl_v(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = getelementptr inbounds float, ptr %1, i64 2
  tail call void @rgb_to_hsl(float noundef %3, float noundef %5, float noundef %7, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsv_compat(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #3 {
  %7 = load float, ptr %3, align 4, !tbaa !34
  %8 = load float, ptr %4, align 4, !tbaa !34
  tail call void @rgb_to_hsv(float noundef %0, float noundef %1, float noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  %9 = load float, ptr %5, align 4, !tbaa !34
  %10 = fcmp ugt float %9, 0.000000e+00
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store float %7, ptr %3, align 4, !tbaa !34
  store float %8, ptr %4, align 4, !tbaa !34
  br label %16

12:                                               ; preds = %6
  %13 = load float, ptr %4, align 4, !tbaa !34
  %14 = fcmp ugt float %13, 0.000000e+00
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store float %7, ptr %3, align 4, !tbaa !34
  br label %16

16:                                               ; preds = %12, %15, %11
  %17 = load float, ptr %3, align 4, !tbaa !34
  %18 = fcmp oeq float %17, 0.000000e+00
  %19 = fcmp oge float %7, 1.000000e+00
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_to_hsv_compat_v(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = getelementptr inbounds float, ptr %1, i64 2
  tail call void @rgb_to_hsv_compat(float noundef %3, float noundef %5, float noundef %7, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @hsv_to_cpack(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @hsv_to_rgb(float noundef %0, float noundef %1, float noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = fmul float %7, 2.550000e+02
  %9 = fptoui float %8 to i32
  %10 = load float, ptr %5, align 4, !tbaa !34
  %11 = fmul float %10, 2.550000e+02
  %12 = fptoui float %11 to i32
  %13 = load float, ptr %6, align 4, !tbaa !34
  %14 = fmul float %13, 2.550000e+02
  %15 = fptoui float %14 to i32
  %16 = shl i32 %12, 8
  %17 = add i32 %16, %9
  %18 = shl i32 %15, 16
  %19 = add i32 %17, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @rgb_to_cpack(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #6 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef 0.000000e+00) #13
  %5 = fmul float %4, 2.550000e+02
  %6 = tail call float @llvm.floor.f32(float %5)
  %7 = fptoui float %6 to i32
  %8 = tail call fastcc float @max_ff(float noundef %1, float noundef 0.000000e+00) #13
  %9 = fmul float %8, 2.550000e+02
  %10 = tail call float @llvm.floor.f32(float %9)
  %11 = fptoui float %10 to i32
  %12 = tail call fastcc float @max_ff(float noundef %2, float noundef 0.000000e+00) #13
  %13 = fmul float %12, 2.550000e+02
  %14 = tail call float @llvm.floor.f32(float %13)
  %15 = fptoui float %14 to i32
  %16 = tail call i32 @llvm.umin.i32(i32 %7, i32 255)
  %17 = tail call i32 @llvm.umin.i32(i32 %11, i32 255)
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 255)
  %19 = shl nuw nsw i32 %17, 8
  %20 = or disjoint i32 %19, %16
  %21 = shl nuw nsw i32 %18, 16
  %22 = or disjoint i32 %20, %21
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !44 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @gamma_correct(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #7 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = tail call float @powf(float noundef %3, float noundef %1) #15
  store float %4, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
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
  %10 = tail call float @powf(float noundef %9, float noundef 0x4001C71C80000000) #15
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi float [ %6, %3 ], [ %10, %7 ]
  ret float %12
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @linearrgb_to_rec709(float noundef %0) local_unnamed_addr #9 {
  %2 = fcmp olt float %0, 0x3F926E9780000000
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fmul float %0, 4.500000e+00
  %6 = select i1 %4, float 0.000000e+00, float %5
  br label %10

7:                                                ; preds = %1
  %8 = tail call float @powf(float noundef %0, float noundef 0x3FDCCCCCC0000000) #15
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF1958100000000, float 0xBFB9581060000000)
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi float [ %6, %3 ], [ %9, %7 ]
  ret float %11
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
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
  %10 = tail call float @powf(float noundef %9, float noundef 0x4003333340000000) #15
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi float [ %6, %3 ], [ %10, %7 ]
  ret float %12
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @linearrgb_to_srgb(float noundef %0) local_unnamed_addr #9 {
  %2 = fcmp olt float %0, 0x3F69A5C380000000
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fmul float %0, 0x4029D70A40000000
  %6 = select i1 %4, float 0.000000e+00, float %5
  br label %10

7:                                                ; preds = %1
  %8 = tail call float @powf(float noundef %0, float noundef 0x3FDAAAAAA0000000) #15
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FF0E147A0000000, float 0xBFAC28F5C0000000)
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi float [ %6, %3 ], [ %9, %7 ]
  ret float %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @minmax_rgb(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i16, ptr %0, align 2, !tbaa !45
  %3 = icmp sgt i16 %2, 255
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp slt i16 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4, %1
  %7 = phi i16 [ 255, %1 ], [ 0, %4 ]
  store i16 %7, ptr %0, align 2, !tbaa !45
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds i16, ptr %0, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !45
  %11 = icmp sgt i16 %10, 255
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = icmp slt i16 %10, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12, %8
  %15 = phi i16 [ 255, %8 ], [ 0, %12 ]
  store i16 %15, ptr %9, align 2, !tbaa !45
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds i16, ptr %0, i64 2
  %18 = load i16, ptr %17, align 2, !tbaa !45
  %19 = icmp sgt i16 %18, 255
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp slt i16 %18, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %16
  %23 = phi i16 [ 255, %16 ], [ 0, %20 ]
  store i16 %23, ptr %17, align 2, !tbaa !45
  br label %24

24:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
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
  store float %24, ptr %25, align 4
  %26 = add nuw nsw i64 %8, 1
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %7, !llvm.loop !47

28:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_float_set_hue_float_offset(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %3, i64 1
  %10 = getelementptr inbounds float, ptr %3, i64 2
  call void @rgb_to_hsv(float noundef %4, float noundef %6, float noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %11 = load float, ptr %3, align 4, !tbaa !34
  %12 = fadd float %11, %1
  %13 = fcmp ogt float %12, 1.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = fadd float %12, -1.000000e+00
  br label %20

16:                                               ; preds = %2
  %17 = fcmp olt float %12, 0.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = fadd float %12, 1.000000e+00
  br label %20

20:                                               ; preds = %16, %18, %14
  %21 = phi float [ %12, %16 ], [ %19, %18 ], [ %15, %14 ]
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = load float, ptr %10, align 4, !tbaa !34
  tail call void @hsv_to_rgb(float noundef %21, float noundef %22, float noundef %23, ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @rgb_byte_set_hue_float_offset(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @rgb_uchar_to_float(ptr noundef nonnull %3, ptr noundef %0) #13
  call void @rgb_float_set_hue_float_offset(ptr noundef nonnull %3, float noundef %1) #13
  call void @rgb_float_to_uchar(ptr noundef %0, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define dso_local void @BLI_init_srgb_conversion() local_unnamed_addr #11 {
  %1 = load i1, ptr @BLI_init_srgb_conversion.initialized, align 1
  br i1 %1, label %34, label %2

2:                                                ; preds = %0
  store i1 true, ptr @BLI_init_srgb_conversion.initialized, align 1
  br label %3

3:                                                ; preds = %2, %15
  %4 = phi i64 [ 0, %2 ], [ %18, %15 ]
  %5 = trunc i64 %4 to i16
  %6 = tail call fastcc float @index_to_float(i16 noundef zeroext %5) #13
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #13
  %8 = fmul float %7, 2.550000e+02
  %9 = fcmp ugt float %8, 0.000000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = fcmp olt float %8, 2.550000e+02
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = tail call float @llvm.fmuladd.f32(float %8, float 2.560000e+02, float 5.000000e-01)
  %14 = fptoui float %13 to i16
  br label %15

15:                                               ; preds = %10, %3, %12
  %16 = phi i16 [ %14, %12 ], [ 0, %3 ], [ -256, %10 ]
  %17 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %4
  store i16 %16, ptr %17, align 2, !tbaa !45
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 65536
  br i1 %19, label %20, label %3, !llvm.loop !49

20:                                               ; preds = %15, %20
  %21 = phi i64 [ %32, %20 ], [ 0, %15 ]
  %22 = trunc i64 %21 to i32
  %23 = uitofp i32 %22 to float
  %24 = fmul float %23, 0x3F70101020000000
  %25 = tail call float @srgb_to_linearrgb(float noundef %24) #13
  %26 = getelementptr inbounds [256 x float], ptr @BLI_color_from_srgb_table, i64 0, i64 %21
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = tail call fastcc zeroext i16 @hipart(float noundef %25) #13
  %28 = trunc i64 %21 to i16
  %29 = shl nuw i16 %28, 8
  %30 = zext i16 %27 to i64
  %31 = getelementptr inbounds [65536 x i16], ptr @BLI_color_to_srgb_table, i64 0, i64 %30
  store i16 %29, ptr %31, align 2, !tbaa !45
  %32 = add nuw nsw i64 %21, 1
  %33 = icmp eq i64 %32, 256
  br i1 %33, label %34, label %20, !llvm.loop !50

34:                                               ; preds = %20, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @index_to_float(i16 noundef zeroext %0) unnamed_addr #6 !PGOFuncName !51 {
  %2 = zext i16 %0 to i32
  %3 = and i16 %0, 32640
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i16 %0, 32639
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = icmp ugt i16 %0, -129
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = shl nuw i32 %2, 16
  %11 = or disjoint i32 %10, 32768
  %12 = bitcast i32 %11 to float
  br label %13

13:                                               ; preds = %7, %5, %1, %9
  %14 = phi float [ %12, %9 ], [ 0.000000e+00, %1 ], [ 0x47EFFFFFE0000000, %5 ], [ 0xC7EFFFFFE0000000, %7 ]
  ret float %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i16 @hipart(float noundef %0) unnamed_addr #6 !PGOFuncName !52 {
  %2 = bitcast float %0 to i32
  %3 = lshr i32 %2, 16
  %4 = trunc i32 %3 to i16
  ret i16 %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @rgb_to_xyz(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #9 {
  %7 = tail call fastcc float @inverse_srgb_companding(float noundef %0) #13
  %8 = fmul float %7, 1.000000e+02
  %9 = tail call fastcc float @inverse_srgb_companding(float noundef %1) #13
  %10 = fmul float %9, 1.000000e+02
  %11 = tail call fastcc float @inverse_srgb_companding(float noundef %2) #13
  %12 = fmul float %11, 1.000000e+02
  %13 = fmul float %10, 0x3FD6E29740000000
  %14 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FDA65A140000000, float %13)
  %15 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FC71819E0000000, float %14)
  store float %15, ptr %3, align 4, !tbaa !34
  %16 = fmul float %10, 0x3FE6E29740000000
  %17 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FCB38CDA0000000, float %16)
  %18 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FB279AAE0000000, float %17)
  store float %18, ptr %4, align 4, !tbaa !34
  %19 = fmul float %10, 0x3FBE836EC0000000
  %20 = tail call float @llvm.fmuladd.f32(float %8, float 0x3F93CC4AC0000000, float %19)
  %21 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FEE684280000000, float %20)
  store float %21, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @inverse_srgb_companding(float noundef %0) unnamed_addr #9 !PGOFuncName !53 {
  %2 = fcmp ogt float %0, 0x3FA4B5DCC0000000
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fadd float %0, 0x3FAC28F5C0000000
  %5 = fdiv float %4, 0x3FF0E147A0000000
  %6 = tail call float @powf(float noundef %5, float noundef 0x4003333340000000) #15
  br label %9

7:                                                ; preds = %1
  %8 = fdiv float %0, 0x4029D70A40000000
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi float [ %6, %3 ], [ %8, %7 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @xyz_to_lab(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #9 {
  %7 = fdiv float %0, 0x4057C30200000000
  %8 = fdiv float %1, 1.000000e+02
  %9 = fdiv float %2, 0x405B388320000000
  %10 = tail call fastcc float @xyz_to_lab_component(float noundef %7) #13
  %11 = tail call fastcc float @xyz_to_lab_component(float noundef %8) #13
  %12 = tail call fastcc float @xyz_to_lab_component(float noundef %9) #13
  %13 = tail call float @llvm.fmuladd.f32(float %11, float 1.160000e+02, float -1.600000e+01)
  store float %13, ptr %3, align 4, !tbaa !34
  %14 = fsub float %10, %11
  %15 = fmul float %14, 5.000000e+02
  store float %15, ptr %4, align 4, !tbaa !34
  %16 = fsub float %11, %12
  %17 = fmul float %16, 2.000000e+02
  store float %17, ptr %5, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @xyz_to_lab_component(float noundef %0) unnamed_addr #9 !PGOFuncName !54 {
  %2 = fcmp ogt float %0, 0x3F82231840000000
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call float @powf(float noundef %0, float noundef 0x3FD5555560000000) #15
  br label %8

5:                                                ; preds = %1
  %6 = tail call float @llvm.fmuladd.f32(float %0, float 0x408C3A6660000000, float 1.600000e+01)
  %7 = fdiv float %6, 1.160000e+02
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi float [ %4, %3 ], [ %7, %5 ]
  ret float %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @rgb_to_lab(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #9 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @rgb_to_xyz(float noundef %0, float noundef %1, float noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %10 = load float, ptr %7, align 4, !tbaa !34
  %11 = load float, ptr %8, align 4, !tbaa !34
  %12 = load float, ptr %9, align 4, !tbaa !34
  tail call void @xyz_to_lab(float noundef %10, float noundef %11, float noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !36, i64 0}
!41 = !{!"math_color.c:min_ff"}
!42 = !{!"math_color.c:max_fff"}
!43 = !{!"math_color.c:min_fff"}
!44 = !{!"math_color.c:max_ff"}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !36, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = !{!"math_color.c:index_to_float"}
!52 = !{!"math_color.c:hipart"}
!53 = !{!"math_color.c:inverse_srgb_companding"}
!54 = !{!"math_color.c:xyz_to_lab_component"}
