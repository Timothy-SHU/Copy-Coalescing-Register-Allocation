; ModuleID = 'blender/source/blender/blenkernel/intern/image_gen.c'
source_filename = "blender/source/blender/blenkernel/intern/image_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.BKE_image_buf_fill_checker.hsv = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000], align 4
@__const.checker_board_text.text = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@blf_mono_font_render = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_buf_fill_color(ptr noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x i8], align 1
  %7 = icmp ne ptr %1, null
  %8 = icmp sgt i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = icmp sgt i32 %2, 0
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi i32 [ 0, %10 ], [ %23, %21 ]
  %14 = phi ptr [ %1, %10 ], [ %22, %21 ]
  br i1 %11, label %15, label %21

15:                                               ; preds = %12, %15
  %16 = phi i32 [ %19, %15 ], [ 0, %12 ]
  %17 = phi ptr [ %18, %15 ], [ %14, %12 ]
  tail call fastcc void @copy_v4_v4(ptr noundef %17, ptr noundef %4) #11
  %18 = getelementptr inbounds float, ptr %17, i64 4
  %19 = add nuw nsw i32 %16, 1
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %15, !llvm.loop !34

21:                                               ; preds = %15, %12
  %22 = phi ptr [ %14, %12 ], [ %18, %15 ]
  %23 = add nuw nsw i32 %13, 1
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %25, label %12, !llvm.loop !36

25:                                               ; preds = %21, %5
  %26 = icmp eq ptr %0, null
  br i1 %26, label %55, label %27

27:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @rgba_float_to_uchar(ptr noundef nonnull %6, ptr noundef %4) #13
  br i1 %8, label %28, label %54

28:                                               ; preds = %27
  %29 = icmp sgt i32 %2, 0
  %30 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %31 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %32 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  br label %33

33:                                               ; preds = %28, %50
  %34 = phi i32 [ 0, %28 ], [ %52, %50 ]
  %35 = phi ptr [ %0, %28 ], [ %51, %50 ]
  br i1 %29, label %36, label %50

36:                                               ; preds = %33
  %37 = load i8, ptr %6, align 1, !tbaa !37
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i32 [ %48, %38 ], [ 0, %36 ]
  %40 = phi ptr [ %47, %38 ], [ %35, %36 ]
  store i8 %37, ptr %40, align 1, !tbaa !37
  %41 = load i8, ptr %30, align 1, !tbaa !37
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %41, ptr %42, align 1, !tbaa !37
  %43 = load i8, ptr %31, align 1, !tbaa !37
  %44 = getelementptr inbounds i8, ptr %40, i64 2
  store i8 %43, ptr %44, align 1, !tbaa !37
  %45 = load i8, ptr %32, align 1, !tbaa !37
  %46 = getelementptr inbounds i8, ptr %40, i64 3
  store i8 %45, ptr %46, align 1, !tbaa !37
  %47 = getelementptr inbounds i8, ptr %40, i64 4
  %48 = add nuw nsw i32 %39, 1
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %50, label %38, !llvm.loop !40

50:                                               ; preds = %38, %33
  %51 = phi ptr [ %35, %33 ], [ %47, %38 ]
  %52 = add nuw nsw i32 %34, 1
  %53 = icmp eq i32 %52, %3
  br i1 %53, label %54, label %33, !llvm.loop !41

54:                                               ; preds = %50, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %55

55:                                               ; preds = %54, %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !42 {
  %3 = load float, ptr %1, align 4, !tbaa !43
  store float %3, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !43
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_buf_fill_checker(ptr noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.BKE_image_buf_fill_checker.hsv, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %128

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br label %15

10:                                               ; preds = %52
  br i1 %7, label %11, label %128

11:                                               ; preds = %10
  %12 = icmp sgt i32 %2, 0
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %57

15:                                               ; preds = %8, %52
  %16 = phi ptr [ %0, %8 ], [ %54, %52 ]
  %17 = phi ptr [ %1, %8 ], [ %53, %52 ]
  %18 = phi i32 [ 0, %8 ], [ %55, %52 ]
  %19 = lshr i32 %18, 5
  %20 = sitofp i32 %19 to float
  %21 = tail call float @powf(float noundef -1.000000e+00, float noundef %20) #13
  br i1 %9, label %22, label %52

22:                                               ; preds = %15
  %23 = fptosi float %21 to i32
  br label %24

24:                                               ; preds = %22, %47
  %25 = phi ptr [ %49, %47 ], [ %16, %22 ]
  %26 = phi ptr [ %48, %47 ], [ %17, %22 ]
  %27 = phi i32 [ %50, %47 ], [ 0, %22 ]
  %28 = phi i32 [ %32, %47 ], [ %23, %22 ]
  %29 = and i32 %27, 31
  %30 = icmp eq i32 %29, 0
  %31 = sub nsw i32 0, %28
  %32 = select i1 %30, i32 %31, i32 %28
  %33 = icmp eq ptr %26, null
  %34 = icmp sgt i32 %32, 0
  br i1 %33, label %41, label %35

35:                                               ; preds = %24
  %36 = select i1 %34, float 2.500000e-01, float 0x3FE28F5C20000000
  %37 = getelementptr inbounds float, ptr %26, i64 2
  store float %36, ptr %37, align 4
  %38 = getelementptr inbounds float, ptr %26, i64 1
  store float %36, ptr %38, align 4
  store float %36, ptr %26, align 4
  %39 = getelementptr inbounds float, ptr %26, i64 3
  store float 1.000000e+00, ptr %39, align 4
  %40 = getelementptr inbounds float, ptr %26, i64 4
  br label %47

41:                                               ; preds = %24
  %42 = select i1 %34, i8 64, i8 -106
  %43 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %42, ptr %44, align 1
  store i8 %42, ptr %25, align 1
  %45 = getelementptr inbounds i8, ptr %25, i64 3
  store i8 -1, ptr %45, align 1
  %46 = getelementptr inbounds i8, ptr %25, i64 4
  br label %47

47:                                               ; preds = %35, %41
  %48 = phi ptr [ %40, %35 ], [ null, %41 ]
  %49 = phi ptr [ %25, %35 ], [ %46, %41 ]
  %50 = add nuw nsw i32 %27, 1
  %51 = icmp eq i32 %50, %2
  br i1 %51, label %52, label %24, !llvm.loop !45

52:                                               ; preds = %47, %15
  %53 = phi ptr [ %17, %15 ], [ %48, %47 ]
  %54 = phi ptr [ %16, %15 ], [ %49, %47 ]
  %55 = add nuw nsw i32 %18, 1
  %56 = icmp eq i32 %55, %3
  br i1 %56, label %10, label %15, !llvm.loop !46

57:                                               ; preds = %11, %123
  %58 = phi ptr [ %0, %11 ], [ %125, %123 ]
  %59 = phi ptr [ %1, %11 ], [ %124, %123 ]
  %60 = phi i32 [ 0, %11 ], [ %126, %123 ]
  %61 = lshr i32 %60, 5
  %62 = sitofp i32 %61 to float
  %63 = fmul float %62, 1.250000e-01
  br i1 %12, label %64, label %123

64:                                               ; preds = %57
  %65 = and i32 %60, 31
  %66 = add nsw i32 %65, -16
  %67 = call i32 @llvm.abs.i32(i32 %66, i1 true)
  %68 = icmp ult i32 %67, 4
  %69 = icmp eq i32 %66, 0
  br label %70

70:                                               ; preds = %64, %116
  %71 = phi ptr [ %58, %64 ], [ %120, %116 ]
  %72 = phi ptr [ %59, %64 ], [ %117, %116 ]
  %73 = phi i32 [ 0, %64 ], [ %121, %116 ]
  %74 = and i32 %73, 31
  %75 = add nsw i32 %74, -16
  %76 = call i32 @llvm.abs.i32(i32 %75, i1 true)
  %77 = icmp ult i32 %76, 4
  %78 = select i1 %77, i1 %68, i1 false
  %79 = icmp eq i32 %75, 0
  %80 = select i1 %79, i1 true, i1 %69
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %112

82:                                               ; preds = %70
  %83 = lshr i32 %73, 5
  %84 = sitofp i32 %83 to float
  %85 = fmul float %84, 1.250000e-01
  %86 = fsub float %85, %63
  %87 = call float @llvm.fabs.f32(float %86)
  %88 = call float @fmodf(float noundef %87, float noundef 1.000000e+00) #13
  store float %88, ptr %5, align 4, !tbaa !43
  call void @hsv_to_rgb_v(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %89 = icmp eq ptr %71, null
  br i1 %89, label %103, label %90

90:                                               ; preds = %82
  %91 = load float, ptr %6, align 4, !tbaa !43
  %92 = fmul float %91, 2.550000e+02
  %93 = fptoui float %92 to i8
  store i8 %93, ptr %71, align 1, !tbaa !37
  %94 = load float, ptr %13, align 4, !tbaa !43
  %95 = fmul float %94, 2.550000e+02
  %96 = fptoui float %95 to i8
  %97 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %96, ptr %97, align 1, !tbaa !37
  %98 = load float, ptr %14, align 4, !tbaa !43
  %99 = fmul float %98, 2.550000e+02
  %100 = fptoui float %99 to i8
  %101 = getelementptr inbounds i8, ptr %71, i64 2
  store i8 %100, ptr %101, align 1, !tbaa !37
  %102 = getelementptr inbounds i8, ptr %71, i64 3
  store i8 -1, ptr %102, align 1, !tbaa !37
  br label %103

103:                                              ; preds = %90, %82
  %104 = icmp eq ptr %72, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %103
  %106 = load float, ptr %6, align 4, !tbaa !43
  store float %106, ptr %72, align 4, !tbaa !43
  %107 = load float, ptr %13, align 4, !tbaa !43
  %108 = getelementptr inbounds float, ptr %72, i64 1
  store float %107, ptr %108, align 4, !tbaa !43
  %109 = load float, ptr %14, align 4, !tbaa !43
  %110 = getelementptr inbounds float, ptr %72, i64 2
  store float %109, ptr %110, align 4, !tbaa !43
  %111 = getelementptr inbounds float, ptr %72, i64 3
  store float 1.000000e+00, ptr %111, align 4, !tbaa !43
  br label %112

112:                                              ; preds = %70, %105
  %113 = icmp eq ptr %72, null
  %114 = getelementptr inbounds float, ptr %72, i64 4
  %115 = select i1 %113, ptr null, ptr %114
  br label %116

116:                                              ; preds = %112, %103
  %117 = phi ptr [ null, %103 ], [ %115, %112 ]
  %118 = icmp eq ptr %71, null
  %119 = getelementptr inbounds i8, ptr %71, i64 4
  %120 = select i1 %118, ptr null, ptr %119
  %121 = add nuw nsw i32 %73, 1
  %122 = icmp eq i32 %121, %2
  br i1 %122, label %123, label %70, !llvm.loop !47

123:                                              ; preds = %116, %57
  %124 = phi ptr [ %59, %57 ], [ %117, %116 ]
  %125 = phi ptr [ %58, %57 ], [ %120, %116 ]
  %126 = add nuw nsw i32 %60, 1
  %127 = icmp eq i32 %126, %3
  br i1 %127, label %128, label %57, !llvm.loop !48

128:                                              ; preds = %123, %4, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: optsize
declare void @hsv_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_image_buf_fill_checker_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @checker_board_color_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  tail call fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, float noundef 0x3F9EB851E0000000) #11
  tail call fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 4, float noundef 0x3FA99999A0000000) #11
  tail call fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 32, float noundef 0x3FB1EB8520000000) #11
  tail call fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 128, float noundef 0x3FC3333340000000) #11
  tail call fastcc void @checker_board_grid_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  tail call fastcc void @checker_board_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @checker_board_color_fill(ptr noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !49 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %7 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 1.000000e+00, ptr %7, align 4, !tbaa !43
  %8 = sdiv i32 %2, 8
  %9 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %8) #11
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 8)
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %4
  %13 = sitofp i32 %3 to double
  %14 = fdiv double 4.000000e-01, %13
  %15 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %16 = icmp sgt i32 %2, 0
  %17 = sitofp i32 %2 to double
  %18 = sitofp i32 %10 to double
  %19 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %21

21:                                               ; preds = %12, %67
  %22 = phi i32 [ 0, %12 ], [ %70, %67 ]
  %23 = phi ptr [ %0, %12 ], [ %69, %67 ]
  %24 = phi ptr [ %1, %12 ], [ %68, %67 ]
  %25 = sitofp i32 %22 to double
  %26 = call double @llvm.fmuladd.f64(double %25, double %14, double 1.000000e-01)
  %27 = fptrunc double %26 to float
  store float %27, ptr %15, align 4, !tbaa !43
  br i1 %16, label %28, label %67

28:                                               ; preds = %21, %63
  %29 = phi i32 [ %65, %63 ], [ 0, %21 ]
  %30 = phi ptr [ %53, %63 ], [ %23, %21 ]
  %31 = phi ptr [ %64, %63 ], [ %24, %21 ]
  %32 = udiv i32 %29, %10
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, %17
  %35 = fmul double %34, %18
  %36 = fptrunc double %35 to float
  store float %36, ptr %5, align 4, !tbaa !43
  call void @hsv_to_rgb_v(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %37 = icmp eq ptr %30, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %28
  %39 = load float, ptr %6, align 4, !tbaa !43
  %40 = fmul float %39, 2.550000e+02
  %41 = fptoui float %40 to i8
  store i8 %41, ptr %30, align 1, !tbaa !37
  %42 = load float, ptr %19, align 4, !tbaa !43
  %43 = fmul float %42, 2.550000e+02
  %44 = fptoui float %43 to i8
  %45 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %44, ptr %45, align 1, !tbaa !37
  %46 = load float, ptr %20, align 4, !tbaa !43
  %47 = fmul float %46, 2.550000e+02
  %48 = fptoui float %47 to i8
  %49 = getelementptr inbounds i8, ptr %30, i64 2
  store i8 %48, ptr %49, align 1, !tbaa !37
  %50 = getelementptr inbounds i8, ptr %30, i64 3
  store i8 -1, ptr %50, align 1, !tbaa !37
  %51 = getelementptr inbounds i8, ptr %30, i64 4
  br label %52

52:                                               ; preds = %38, %28
  %53 = phi ptr [ %51, %38 ], [ null, %28 ]
  %54 = icmp eq ptr %31, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load float, ptr %6, align 4, !tbaa !43
  store float %56, ptr %31, align 4, !tbaa !43
  %57 = load float, ptr %19, align 4, !tbaa !43
  %58 = getelementptr inbounds float, ptr %31, i64 1
  store float %57, ptr %58, align 4, !tbaa !43
  %59 = load float, ptr %20, align 4, !tbaa !43
  %60 = getelementptr inbounds float, ptr %31, i64 2
  store float %59, ptr %60, align 4, !tbaa !43
  %61 = getelementptr inbounds float, ptr %31, i64 3
  store float 1.000000e+00, ptr %61, align 4, !tbaa !43
  %62 = getelementptr inbounds float, ptr %31, i64 4
  br label %63

63:                                               ; preds = %52, %55
  %64 = phi ptr [ %62, %55 ], [ null, %52 ]
  %65 = add nuw nsw i32 %29, 1
  %66 = icmp eq i32 %65, %2
  br i1 %66, label %67, label %28, !llvm.loop !50

67:                                               ; preds = %63, %21
  %68 = phi ptr [ %24, %21 ], [ %64, %63 ]
  %69 = phi ptr [ %23, %21 ], [ %53, %63 ]
  %70 = add nuw nsw i32 %22, 1
  %71 = icmp eq i32 %70, %3
  br i1 %71, label %72, label %21, !llvm.loop !51

72:                                               ; preds = %67, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #7 !PGOFuncName !52 {
  %7 = fmul float %5, 5.000000e-01
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %124

9:                                                ; preds = %6
  %10 = icmp sgt i32 %2, 0
  %11 = fmul float %5, 2.550000e+02
  %12 = fptoui float %11 to i8
  %13 = zext i8 %12 to i32
  %14 = fmul float %7, 2.550000e+02
  %15 = fptoui float %14 to i8
  %16 = zext i8 %15 to i32
  %17 = insertelement <2 x float> poison, float %7, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = insertelement <2 x float> poison, float %5, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %9, %119
  %22 = phi ptr [ %0, %9 ], [ %121, %119 ]
  %23 = phi i32 [ 0, %9 ], [ %122, %119 ]
  %24 = phi ptr [ %1, %9 ], [ %120, %119 ]
  br i1 %10, label %25, label %119

25:                                               ; preds = %21
  %26 = sdiv i32 %23, %4
  %27 = srem i32 %26, 2
  br label %28

28:                                               ; preds = %25, %114
  %29 = phi ptr [ %22, %25 ], [ %116, %114 ]
  %30 = phi i32 [ 0, %25 ], [ %117, %114 ]
  %31 = phi ptr [ %24, %25 ], [ %115, %114 ]
  switch i32 %27, label %72 [
    i32 1, label %32
    i32 0, label %36
  ]

32:                                               ; preds = %28
  %33 = sdiv i32 %30, %4
  %34 = and i32 %33, -2147483647
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %40, label %72

36:                                               ; preds = %28
  %37 = sdiv i32 %30, %4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %36, %32
  %41 = icmp eq ptr %29, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %40
  %43 = load i8, ptr %29, align 1, !tbaa !37
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %44, %13
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 255)
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %29, align 1, !tbaa !37
  %48 = getelementptr inbounds i8, ptr %29, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !37
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %50, %13
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 255)
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %48, align 1, !tbaa !37
  %54 = getelementptr inbounds i8, ptr %29, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !37
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %56, %13
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 255)
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %54, align 1, !tbaa !37
  %60 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 -1, ptr %60, align 1, !tbaa !37
  %61 = getelementptr inbounds i8, ptr %29, i64 4
  br label %62

62:                                               ; preds = %42, %40
  %63 = phi ptr [ %61, %42 ], [ null, %40 ]
  %64 = icmp eq ptr %31, null
  br i1 %64, label %114, label %65

65:                                               ; preds = %62
  %66 = load <2 x float>, ptr %31, align 4, !tbaa !43
  %67 = fadd <2 x float> %66, %20
  %68 = fcmp ole <2 x float> %67, <float 1.000000e+00, float 1.000000e+00>
  %69 = select <2 x i1> %68, <2 x float> %67, <2 x float> <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %69, ptr %31, align 4, !tbaa !43
  %70 = getelementptr inbounds float, ptr %31, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !43
  br label %104

72:                                               ; preds = %32, %28, %36
  %73 = icmp eq ptr %29, null
  br i1 %73, label %94, label %74

74:                                               ; preds = %72
  %75 = load i8, ptr %29, align 1, !tbaa !37
  %76 = zext i8 %75 to i32
  %77 = add nuw nsw i32 %76, %16
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 255)
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr %29, align 1, !tbaa !37
  %80 = getelementptr inbounds i8, ptr %29, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !37
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %82, %16
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 255)
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %80, align 1, !tbaa !37
  %86 = getelementptr inbounds i8, ptr %29, i64 2
  %87 = load i8, ptr %86, align 1, !tbaa !37
  %88 = zext i8 %87 to i32
  %89 = add nuw nsw i32 %88, %16
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 255)
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %86, align 1, !tbaa !37
  %92 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 -1, ptr %92, align 1, !tbaa !37
  %93 = getelementptr inbounds i8, ptr %29, i64 4
  br label %94

94:                                               ; preds = %74, %72
  %95 = phi ptr [ %93, %74 ], [ null, %72 ]
  %96 = icmp eq ptr %31, null
  br i1 %96, label %114, label %97

97:                                               ; preds = %94
  %98 = load <2 x float>, ptr %31, align 4, !tbaa !43
  %99 = fadd <2 x float> %18, %98
  %100 = fcmp ole <2 x float> %99, <float 1.000000e+00, float 1.000000e+00>
  %101 = select <2 x i1> %100, <2 x float> %99, <2 x float> <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %101, ptr %31, align 4, !tbaa !43
  %102 = getelementptr inbounds float, ptr %31, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !43
  br label %104

104:                                              ; preds = %97, %65
  %105 = phi float [ %103, %97 ], [ %5, %65 ]
  %106 = phi float [ %7, %97 ], [ %71, %65 ]
  %107 = phi ptr [ %102, %97 ], [ %70, %65 ]
  %108 = phi ptr [ %95, %97 ], [ %63, %65 ]
  %109 = fadd float %106, %105
  %110 = fcmp ole float %109, 1.000000e+00
  %111 = select i1 %110, float %109, float 1.000000e+00
  store float %111, ptr %107, align 4, !tbaa !43
  %112 = getelementptr inbounds float, ptr %31, i64 3
  store float 1.000000e+00, ptr %112, align 4, !tbaa !43
  %113 = getelementptr inbounds float, ptr %31, i64 4
  br label %114

114:                                              ; preds = %104, %62, %94
  %115 = phi ptr [ null, %62 ], [ null, %94 ], [ %113, %104 ]
  %116 = phi ptr [ %63, %62 ], [ %95, %94 ], [ %108, %104 ]
  %117 = add nuw nsw i32 %30, 1
  %118 = icmp eq i32 %117, %2
  br i1 %118, label %119, label %28, !llvm.loop !53

119:                                              ; preds = %114, %21
  %120 = phi ptr [ %24, %21 ], [ %115, %114 ]
  %121 = phi ptr [ %22, %21 ], [ %116, %114 ]
  %122 = add nuw nsw i32 %23, 1
  %123 = icmp eq i32 %122, %3
  br i1 %123, label %124, label %21, !llvm.loop !54

124:                                              ; preds = %119, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @checker_board_grid_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 !PGOFuncName !55 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  br label %8

8:                                                ; preds = %6, %68
  %9 = phi i32 [ 0, %6 ], [ %71, %68 ]
  %10 = phi ptr [ %0, %6 ], [ %70, %68 ]
  %11 = phi ptr [ %1, %6 ], [ %69, %68 ]
  br i1 %7, label %12, label %68

12:                                               ; preds = %8
  %13 = and i32 %9, 31
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %12, %63
  %16 = phi i32 [ 0, %12 ], [ %66, %63 ]
  %17 = phi ptr [ %10, %12 ], [ %65, %63 ]
  %18 = phi ptr [ %11, %12 ], [ %64, %63 ]
  %19 = and i32 %16, 31
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %14, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %15
  %23 = icmp eq ptr %17, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %22
  %25 = load i8, ptr %17, align 1, !tbaa !37
  %26 = icmp ult i8 %25, -63
  %27 = add i8 %25, 63
  %28 = select i1 %26, i8 %27, i8 -1
  store i8 %28, ptr %17, align 1, !tbaa !37
  %29 = getelementptr inbounds i8, ptr %17, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !37
  %31 = icmp ult i8 %30, -63
  %32 = add i8 %30, 63
  %33 = select i1 %31, i8 %32, i8 -1
  store i8 %33, ptr %29, align 1, !tbaa !37
  %34 = getelementptr inbounds i8, ptr %17, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !37
  %36 = icmp ult i8 %35, -63
  %37 = add i8 %35, 63
  %38 = select i1 %36, i8 %37, i8 -1
  store i8 %38, ptr %34, align 1, !tbaa !37
  %39 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 -1, ptr %39, align 1, !tbaa !37
  %40 = getelementptr inbounds i8, ptr %17, i64 4
  br label %41

41:                                               ; preds = %24, %22
  %42 = phi ptr [ %40, %24 ], [ null, %22 ]
  %43 = icmp eq ptr %18, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = load <2 x float>, ptr %18, align 4, !tbaa !43
  %46 = fadd <2 x float> %45, <float 2.500000e-01, float 2.500000e-01>
  %47 = fcmp ole <2 x float> %46, <float 1.000000e+00, float 1.000000e+00>
  %48 = select <2 x i1> %47, <2 x float> %46, <2 x float> <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %48, ptr %18, align 4, !tbaa !43
  %49 = getelementptr inbounds float, ptr %18, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !43
  %51 = fadd float %50, 2.500000e-01
  %52 = fcmp ole float %51, 1.000000e+00
  %53 = select i1 %52, float %51, float 1.000000e+00
  store float %53, ptr %49, align 4, !tbaa !43
  %54 = getelementptr inbounds float, ptr %18, i64 3
  store float 1.000000e+00, ptr %54, align 4, !tbaa !43
  %55 = getelementptr inbounds float, ptr %18, i64 4
  br label %63

56:                                               ; preds = %15
  %57 = icmp eq ptr %18, null
  %58 = getelementptr inbounds float, ptr %18, i64 4
  %59 = select i1 %57, ptr null, ptr %58
  %60 = icmp eq ptr %17, null
  %61 = getelementptr inbounds i8, ptr %17, i64 4
  %62 = select i1 %60, ptr null, ptr %61
  br label %63

63:                                               ; preds = %56, %44, %41
  %64 = phi ptr [ %55, %44 ], [ null, %41 ], [ %59, %56 ]
  %65 = phi ptr [ %42, %44 ], [ %42, %41 ], [ %62, %56 ]
  %66 = add nuw nsw i32 %16, 1
  %67 = icmp eq i32 %66, %2
  br i1 %67, label %68, label %15, !llvm.loop !56

68:                                               ; preds = %63, %8
  %69 = phi ptr [ %11, %8 ], [ %64, %63 ]
  %70 = phi ptr [ %10, %8 ], [ %65, %63 ]
  %71 = add nuw nsw i32 %9, 1
  %72 = icmp eq i32 %71, %3
  br i1 %72, label %73, label %8, !llvm.loop !57

73:                                               ; preds = %68, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @checker_board_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !58 {
  %5 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @__const.checker_board_text.text, i64 3, i1 false)
  %6 = load i32, ptr @blf_mono_font_render, align 4, !tbaa !59
  tail call void @BLF_size(i32 noundef %6, i32 noundef 54, i32 noundef 72) #13
  tail call void @BLF_buffer(i32 noundef %6, ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef 4, ptr noundef null) #13
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 1
  %10 = icmp sgt i32 %2, 0
  br label %11

11:                                               ; preds = %8, %35
  %12 = phi i8 [ 65, %8 ], [ %37, %35 ]
  %13 = phi i32 [ 0, %8 ], [ %38, %35 ]
  store i8 49, ptr %9, align 1, !tbaa !37
  br i1 %10, label %14, label %35

14:                                               ; preds = %11
  %15 = or disjoint i32 %13, 44
  %16 = sitofp i32 %15 to float
  %17 = or disjoint i32 %13, 42
  %18 = sitofp i32 %17 to float
  %19 = or disjoint i32 %13, 46
  %20 = sitofp i32 %19 to float
  br label %21

21:                                               ; preds = %14, %21
  %22 = phi i32 [ 0, %14 ], [ %31, %21 ]
  %23 = or disjoint i32 %22, 33
  call void @BLF_buffer_col(i32 noundef %6, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  %24 = or disjoint i32 %22, 31
  %25 = sitofp i32 %24 to float
  call void @BLF_position(i32 noundef %6, float noundef %25, float noundef %16, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  %26 = or disjoint i32 %22, 35
  %27 = sitofp i32 %26 to float
  call void @BLF_position(i32 noundef %6, float noundef %27, float noundef %16, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  %28 = sitofp i32 %23 to float
  call void @BLF_position(i32 noundef %6, float noundef %28, float noundef %18, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  call void @BLF_position(i32 noundef %6, float noundef %28, float noundef %20, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  call void @BLF_position(i32 noundef %6, float noundef %25, float noundef %18, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  call void @BLF_position(i32 noundef %6, float noundef %27, float noundef %20, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  call void @BLF_position(i32 noundef %6, float noundef %25, float noundef %20, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  call void @BLF_position(i32 noundef %6, float noundef %27, float noundef %18, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  call void @BLF_buffer_col(i32 noundef %6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  call void @BLF_position(i32 noundef %6, float noundef %28, float noundef %16, float noundef 0.000000e+00) #13
  call void @BLF_draw_buffer(i32 noundef %6, ptr noundef nonnull %5) #13
  %29 = load i8, ptr %9, align 1, !tbaa !37
  %30 = add i8 %29, 1
  store i8 %30, ptr %9, align 1, !tbaa !37
  %31 = add nuw nsw i32 %22, 128
  %32 = icmp slt i32 %31, %2
  br i1 %32, label %21, label %33, !llvm.loop !61

33:                                               ; preds = %21
  %34 = load i8, ptr %5, align 1, !tbaa !37
  br label %35

35:                                               ; preds = %33, %11
  %36 = phi i8 [ %34, %33 ], [ %12, %11 ]
  %37 = add i8 %36, 1
  store i8 %37, ptr %5, align 1, !tbaa !37
  %38 = add nuw nsw i32 %13, 128
  %39 = icmp slt i32 %38, %3
  br i1 %39, label %11, label %40, !llvm.loop !62

40:                                               ; preds = %35, %4
  call void @BLF_buffer(i32 noundef %6, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @power_of_2_max_i(i32 noundef %0) unnamed_addr #8 !PGOFuncName !63 {
  %2 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #11, !range !64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %7, %4 ], [ %0, %1 ]
  %6 = add nsw i32 %5, -1
  %7 = and i32 %6, %5
  %8 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %7) #11, !range !64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %4, label %10, !llvm.loop !65

10:                                               ; preds = %4
  %11 = shl nsw i32 %7, 1
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi i32 [ %11, %10 ], [ %0, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @is_power_of_2_i(i32 noundef %0) unnamed_addr #9 !PGOFuncName !66 {
  %2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !67
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_buffer(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_buffer_col(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_draw_buffer(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }

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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !35}
!41 = distinct !{!41, !35}
!42 = !{!"image_gen.c:copy_v4_v4"}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !38, i64 0}
!45 = distinct !{!45, !35}
!46 = distinct !{!46, !35}
!47 = distinct !{!47, !35}
!48 = distinct !{!48, !35}
!49 = !{!"image_gen.c:checker_board_color_fill"}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = !{!"image_gen.c:checker_board_color_tint"}
!53 = distinct !{!53, !35}
!54 = distinct !{!54, !35}
!55 = !{!"image_gen.c:checker_board_grid_fill"}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35}
!58 = !{!"image_gen.c:checker_board_text"}
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !38, i64 0}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !35}
!63 = !{!"image_gen.c:power_of_2_max_i"}
!64 = !{i32 0, i32 2}
!65 = distinct !{!65, !35}
!66 = !{!"image_gen.c:is_power_of_2_i"}
!67 = !{i32 0, i32 33}
