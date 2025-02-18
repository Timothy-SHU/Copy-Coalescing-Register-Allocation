; ModuleID = 'blender/source/blender/blenkernel/intern/image_gen.c'
source_filename = "blender/source/blender/blenkernel/intern/image_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.BKE_image_buf_fill_checker.hsv = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000], align 4
@__const.checker_board_text.text = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@blf_mono_font_render = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_buf_fill_color(ptr noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x i8], align 1
  %7 = icmp ne ptr %1, null
  %8 = icmp sgt i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = icmp sgt i32 %2, 0
  %12 = getelementptr inbounds float, ptr %4, i64 1
  %13 = getelementptr inbounds float, ptr %4, i64 2
  %14 = getelementptr inbounds float, ptr %4, i64 3
  br label %15

15:                                               ; preds = %10, %31
  %16 = phi i32 [ 0, %10 ], [ %33, %31 ]
  %17 = phi ptr [ %1, %10 ], [ %32, %31 ]
  br i1 %11, label %18, label %31

18:                                               ; preds = %15, %18
  %19 = phi i32 [ %29, %18 ], [ 0, %15 ]
  %20 = phi ptr [ %28, %18 ], [ %17, %15 ]
  %21 = load float, ptr %4, align 4, !tbaa !34
  store float %21, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %12, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %20, i64 1
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = load float, ptr %13, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %20, i64 2
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = load float, ptr %14, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %20, i64 3
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %20, i64 4
  %29 = add nuw nsw i32 %19, 1
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %18, !llvm.loop !38

31:                                               ; preds = %18, %15
  %32 = phi ptr [ %17, %15 ], [ %28, %18 ]
  %33 = add nuw nsw i32 %16, 1
  %34 = icmp eq i32 %33, %3
  br i1 %34, label %35, label %15, !llvm.loop !41

35:                                               ; preds = %31, %5
  %36 = icmp eq ptr %0, null
  br i1 %36, label %65, label %37

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @rgba_float_to_uchar(ptr noundef nonnull %6, ptr noundef %4) #8
  %38 = icmp sgt i32 %3, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %37
  %40 = icmp sgt i32 %2, 0
  %41 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %42 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %43 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  br label %44

44:                                               ; preds = %39, %60
  %45 = phi i32 [ 0, %39 ], [ %62, %60 ]
  %46 = phi ptr [ %0, %39 ], [ %61, %60 ]
  br i1 %40, label %47, label %60

47:                                               ; preds = %44, %47
  %48 = phi i32 [ %58, %47 ], [ 0, %44 ]
  %49 = phi ptr [ %57, %47 ], [ %46, %44 ]
  %50 = load i8, ptr %6, align 1, !tbaa !42
  store i8 %50, ptr %49, align 1, !tbaa !42
  %51 = load i8, ptr %41, align 1, !tbaa !42
  %52 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %51, ptr %52, align 1, !tbaa !42
  %53 = load i8, ptr %42, align 1, !tbaa !42
  %54 = getelementptr inbounds i8, ptr %49, i64 2
  store i8 %53, ptr %54, align 1, !tbaa !42
  %55 = load i8, ptr %43, align 1, !tbaa !42
  %56 = getelementptr inbounds i8, ptr %49, i64 3
  store i8 %55, ptr %56, align 1, !tbaa !42
  %57 = getelementptr inbounds i8, ptr %49, i64 4
  %58 = add nuw nsw i32 %48, 1
  %59 = icmp eq i32 %58, %2
  br i1 %59, label %60, label %47, !llvm.loop !43

60:                                               ; preds = %47, %44
  %61 = phi ptr [ %46, %44 ], [ %57, %47 ]
  %62 = add nuw nsw i32 %45, 1
  %63 = icmp eq i32 %62, %3
  br i1 %63, label %64, label %44, !llvm.loop !44

64:                                               ; preds = %60, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %65

65:                                               ; preds = %64, %35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_buf_fill_checker(ptr noundef writeonly %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.BKE_image_buf_fill_checker.hsv, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br label %18

10:                                               ; preds = %55, %4
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %131

12:                                               ; preds = %10
  %13 = icmp sgt i32 %2, 0
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %15 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %16 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %17 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %60

18:                                               ; preds = %8, %55
  %19 = phi ptr [ %0, %8 ], [ %57, %55 ]
  %20 = phi ptr [ %1, %8 ], [ %56, %55 ]
  %21 = phi i32 [ 0, %8 ], [ %58, %55 ]
  %22 = lshr i32 %21, 5
  %23 = sitofp i32 %22 to float
  %24 = tail call float @powf(float noundef -1.000000e+00, float noundef %23) #8
  br i1 %9, label %25, label %55

25:                                               ; preds = %18
  %26 = fptosi float %24 to i32
  br label %27

27:                                               ; preds = %25, %50
  %28 = phi ptr [ %52, %50 ], [ %19, %25 ]
  %29 = phi ptr [ %51, %50 ], [ %20, %25 ]
  %30 = phi i32 [ %53, %50 ], [ 0, %25 ]
  %31 = phi i32 [ %35, %50 ], [ %26, %25 ]
  %32 = and i32 %30, 31
  %33 = icmp eq i32 %32, 0
  %34 = sub nsw i32 0, %31
  %35 = select i1 %33, i32 %34, i32 %31
  %36 = icmp eq ptr %29, null
  %37 = icmp sgt i32 %35, 0
  br i1 %36, label %44, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds float, ptr %29, i64 2
  %40 = getelementptr inbounds float, ptr %29, i64 1
  %41 = getelementptr inbounds float, ptr %29, i64 3
  %42 = select i1 %37, float 2.500000e-01, float 0x3FE28F5C20000000
  store float %42, ptr %39, align 4, !tbaa !34
  store float %42, ptr %40, align 4, !tbaa !34
  store float %42, ptr %29, align 4, !tbaa !34
  store float 1.000000e+00, ptr %41, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %29, i64 4
  br label %50

44:                                               ; preds = %27
  %45 = getelementptr inbounds i8, ptr %28, i64 2
  %46 = getelementptr inbounds i8, ptr %28, i64 1
  %47 = getelementptr inbounds i8, ptr %28, i64 3
  %48 = select i1 %37, i8 64, i8 -106
  store i8 %48, ptr %45, align 1, !tbaa !42
  store i8 %48, ptr %46, align 1, !tbaa !42
  store i8 %48, ptr %28, align 1, !tbaa !42
  store i8 -1, ptr %47, align 1, !tbaa !42
  %49 = getelementptr inbounds i8, ptr %28, i64 4
  br label %50

50:                                               ; preds = %38, %44
  %51 = phi ptr [ %43, %38 ], [ null, %44 ]
  %52 = phi ptr [ %28, %38 ], [ %49, %44 ]
  %53 = add nuw nsw i32 %30, 1
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %55, label %27, !llvm.loop !45

55:                                               ; preds = %50, %18
  %56 = phi ptr [ %20, %18 ], [ %51, %50 ]
  %57 = phi ptr [ %19, %18 ], [ %52, %50 ]
  %58 = add nuw nsw i32 %21, 1
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %10, label %18, !llvm.loop !46

60:                                               ; preds = %12, %126
  %61 = phi ptr [ %0, %12 ], [ %128, %126 ]
  %62 = phi ptr [ %1, %12 ], [ %127, %126 ]
  %63 = phi i32 [ 0, %12 ], [ %129, %126 ]
  %64 = lshr i32 %63, 5
  %65 = sitofp i32 %64 to float
  %66 = fmul float %65, 1.250000e-01
  br i1 %13, label %67, label %126

67:                                               ; preds = %60
  %68 = and i32 %63, 31
  %69 = add nsw i32 %68, -16
  %70 = call i32 @llvm.abs.i32(i32 %69, i1 true)
  %71 = icmp ult i32 %70, 4
  %72 = icmp eq i32 %69, 0
  br label %73

73:                                               ; preds = %67, %119
  %74 = phi ptr [ %61, %67 ], [ %123, %119 ]
  %75 = phi ptr [ %62, %67 ], [ %120, %119 ]
  %76 = phi i32 [ 0, %67 ], [ %124, %119 ]
  %77 = and i32 %76, 31
  %78 = add nsw i32 %77, -16
  %79 = call i32 @llvm.abs.i32(i32 %78, i1 true)
  %80 = icmp ult i32 %79, 4
  %81 = select i1 %80, i1 %71, i1 false
  %82 = icmp eq i32 %78, 0
  %83 = select i1 %82, i1 true, i1 %72
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %115

85:                                               ; preds = %73
  %86 = lshr i32 %76, 5
  %87 = sitofp i32 %86 to float
  %88 = fmul float %87, 1.250000e-01
  %89 = fsub float %88, %66
  %90 = call float @llvm.fabs.f32(float %89)
  %91 = call float @fmodf(float noundef %90, float noundef 1.000000e+00) #8
  store float %91, ptr %5, align 4, !tbaa !34
  call void @hsv_to_rgb_v(ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %92 = icmp eq ptr %74, null
  br i1 %92, label %106, label %93

93:                                               ; preds = %85
  %94 = load float, ptr %6, align 4, !tbaa !34
  %95 = fmul float %94, 2.550000e+02
  %96 = fptoui float %95 to i8
  store i8 %96, ptr %74, align 1, !tbaa !42
  %97 = load float, ptr %14, align 4, !tbaa !34
  %98 = fmul float %97, 2.550000e+02
  %99 = fptoui float %98 to i8
  %100 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 %99, ptr %100, align 1, !tbaa !42
  %101 = load float, ptr %15, align 4, !tbaa !34
  %102 = fmul float %101, 2.550000e+02
  %103 = fptoui float %102 to i8
  %104 = getelementptr inbounds i8, ptr %74, i64 2
  store i8 %103, ptr %104, align 1, !tbaa !42
  %105 = getelementptr inbounds i8, ptr %74, i64 3
  store i8 -1, ptr %105, align 1, !tbaa !42
  br label %106

106:                                              ; preds = %93, %85
  %107 = icmp eq ptr %75, null
  br i1 %107, label %119, label %108

108:                                              ; preds = %106
  %109 = load float, ptr %6, align 4, !tbaa !34
  store float %109, ptr %75, align 4, !tbaa !34
  %110 = load float, ptr %16, align 4, !tbaa !34
  %111 = getelementptr inbounds float, ptr %75, i64 1
  store float %110, ptr %111, align 4, !tbaa !34
  %112 = load float, ptr %17, align 4, !tbaa !34
  %113 = getelementptr inbounds float, ptr %75, i64 2
  store float %112, ptr %113, align 4, !tbaa !34
  %114 = getelementptr inbounds float, ptr %75, i64 3
  store float 1.000000e+00, ptr %114, align 4, !tbaa !34
  br label %115

115:                                              ; preds = %73, %108
  %116 = icmp eq ptr %75, null
  %117 = getelementptr inbounds float, ptr %75, i64 4
  %118 = select i1 %116, ptr null, ptr %117
  br label %119

119:                                              ; preds = %115, %106
  %120 = phi ptr [ null, %106 ], [ %118, %115 ]
  %121 = icmp eq ptr %74, null
  %122 = getelementptr inbounds i8, ptr %74, i64 4
  %123 = select i1 %121, ptr null, ptr %122
  %124 = add nuw nsw i32 %76, 1
  %125 = icmp eq i32 %124, %2
  br i1 %125, label %126, label %73, !llvm.loop !47

126:                                              ; preds = %119, %60
  %127 = phi ptr [ %62, %60 ], [ %120, %119 ]
  %128 = phi ptr [ %61, %60 ], [ %123, %119 ]
  %129 = add nuw nsw i32 %63, 1
  %130 = icmp eq i32 %129, %3
  br i1 %130, label %131, label %60, !llvm.loop !48

131:                                              ; preds = %126, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @hsv_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_image_buf_fill_checker_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %8 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 1.000000e+00, ptr %8, align 4, !tbaa !34
  %9 = sdiv i32 %2, 8
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9), !range !49
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %20

12:                                               ; preds = %4, %12
  %13 = phi i32 [ %15, %12 ], [ %9, %4 ]
  %14 = add nsw i32 %13, -1
  %15 = and i32 %14, %13
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15), !range !49
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %12, label %18, !llvm.loop !50

18:                                               ; preds = %12
  %19 = shl nsw i32 %15, 1
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i32 [ %19, %18 ], [ %9, %4 ]
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 8)
  %23 = icmp sgt i32 %3, 0
  br i1 %23, label %24, label %86

24:                                               ; preds = %20
  %25 = sitofp i32 %3 to double
  %26 = fdiv double 4.000000e-01, %25
  %27 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %28 = icmp sgt i32 %2, 0
  %29 = sitofp i32 %2 to double
  %30 = sitofp i32 %22 to double
  %31 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %32 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %33 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %34 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %35

35:                                               ; preds = %24, %81
  %36 = phi i32 [ 0, %24 ], [ %84, %81 ]
  %37 = phi ptr [ %0, %24 ], [ %83, %81 ]
  %38 = phi ptr [ %1, %24 ], [ %82, %81 ]
  %39 = sitofp i32 %36 to double
  %40 = call double @llvm.fmuladd.f64(double %39, double %26, double 1.000000e-01)
  %41 = fptrunc double %40 to float
  store float %41, ptr %27, align 4, !tbaa !34
  br i1 %28, label %42, label %81

42:                                               ; preds = %35, %77
  %43 = phi i32 [ %79, %77 ], [ 0, %35 ]
  %44 = phi ptr [ %67, %77 ], [ %37, %35 ]
  %45 = phi ptr [ %78, %77 ], [ %38, %35 ]
  %46 = udiv i32 %43, %22
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, %29
  %49 = fmul double %48, %30
  %50 = fptrunc double %49 to float
  store float %50, ptr %6, align 4, !tbaa !34
  call void @hsv_to_rgb_v(ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %51 = icmp eq ptr %44, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %42
  %53 = load float, ptr %7, align 4, !tbaa !34
  %54 = fmul float %53, 2.550000e+02
  %55 = fptoui float %54 to i8
  store i8 %55, ptr %44, align 1, !tbaa !42
  %56 = load float, ptr %31, align 4, !tbaa !34
  %57 = fmul float %56, 2.550000e+02
  %58 = fptoui float %57 to i8
  %59 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 %58, ptr %59, align 1, !tbaa !42
  %60 = load float, ptr %32, align 4, !tbaa !34
  %61 = fmul float %60, 2.550000e+02
  %62 = fptoui float %61 to i8
  %63 = getelementptr inbounds i8, ptr %44, i64 2
  store i8 %62, ptr %63, align 1, !tbaa !42
  %64 = getelementptr inbounds i8, ptr %44, i64 3
  store i8 -1, ptr %64, align 1, !tbaa !42
  %65 = getelementptr inbounds i8, ptr %44, i64 4
  br label %66

66:                                               ; preds = %52, %42
  %67 = phi ptr [ %65, %52 ], [ null, %42 ]
  %68 = icmp eq ptr %45, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load float, ptr %7, align 4, !tbaa !34
  store float %70, ptr %45, align 4, !tbaa !34
  %71 = load float, ptr %33, align 4, !tbaa !34
  %72 = getelementptr inbounds float, ptr %45, i64 1
  store float %71, ptr %72, align 4, !tbaa !34
  %73 = load float, ptr %34, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %45, i64 2
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = getelementptr inbounds float, ptr %45, i64 3
  store float 1.000000e+00, ptr %75, align 4, !tbaa !34
  %76 = getelementptr inbounds float, ptr %45, i64 4
  br label %77

77:                                               ; preds = %69, %66
  %78 = phi ptr [ %76, %69 ], [ null, %66 ]
  %79 = add nuw nsw i32 %43, 1
  %80 = icmp eq i32 %79, %2
  br i1 %80, label %81, label %42, !llvm.loop !51

81:                                               ; preds = %77, %35
  %82 = phi ptr [ %38, %35 ], [ %78, %77 ]
  %83 = phi ptr [ %37, %35 ], [ %67, %77 ]
  %84 = add nuw nsw i32 %36, 1
  %85 = icmp eq i32 %84, %3
  br i1 %85, label %86, label %35, !llvm.loop !52

86:                                               ; preds = %81, %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, float noundef 0x3F9EB851E0000000)
  call fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 4, float noundef 0x3FA99999A0000000)
  call fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 32, float noundef 0x3FB1EB8520000000)
  call fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 128, float noundef 0x3FC3333340000000)
  %87 = icmp sgt i32 %3, 0
  br i1 %87, label %88, label %160

88:                                               ; preds = %86
  %89 = icmp sgt i32 %2, 0
  br label %90

90:                                               ; preds = %88, %155
  %91 = phi i32 [ 0, %88 ], [ %158, %155 ]
  %92 = phi ptr [ %0, %88 ], [ %157, %155 ]
  %93 = phi ptr [ %1, %88 ], [ %156, %155 ]
  br i1 %89, label %94, label %155

94:                                               ; preds = %90
  %95 = and i32 %91, 31
  %96 = icmp eq i32 %95, 0
  br label %97

97:                                               ; preds = %94, %150
  %98 = phi i32 [ 0, %94 ], [ %153, %150 ]
  %99 = phi ptr [ %92, %94 ], [ %152, %150 ]
  %100 = phi ptr [ %93, %94 ], [ %151, %150 ]
  %101 = and i32 %98, 31
  %102 = icmp eq i32 %101, 0
  %103 = or i1 %96, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %97
  %105 = icmp eq ptr %99, null
  br i1 %105, label %123, label %106

106:                                              ; preds = %104
  %107 = load i8, ptr %99, align 1, !tbaa !42
  %108 = icmp ult i8 %107, -63
  %109 = add i8 %107, 63
  %110 = select i1 %108, i8 %109, i8 -1
  store i8 %110, ptr %99, align 1, !tbaa !42
  %111 = getelementptr inbounds i8, ptr %99, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !42
  %113 = icmp ult i8 %112, -63
  %114 = add i8 %112, 63
  %115 = select i1 %113, i8 %114, i8 -1
  store i8 %115, ptr %111, align 1, !tbaa !42
  %116 = getelementptr inbounds i8, ptr %99, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !42
  %118 = icmp ult i8 %117, -63
  %119 = add i8 %117, 63
  %120 = select i1 %118, i8 %119, i8 -1
  store i8 %120, ptr %116, align 1, !tbaa !42
  %121 = getelementptr inbounds i8, ptr %99, i64 3
  store i8 -1, ptr %121, align 1, !tbaa !42
  %122 = getelementptr inbounds i8, ptr %99, i64 4
  br label %123

123:                                              ; preds = %106, %104
  %124 = phi ptr [ %122, %106 ], [ null, %104 ]
  %125 = icmp eq ptr %100, null
  br i1 %125, label %150, label %126

126:                                              ; preds = %123
  %127 = load float, ptr %100, align 4, !tbaa !34
  %128 = fadd float %127, 2.500000e-01
  %129 = fcmp ole float %128, 1.000000e+00
  %130 = select i1 %129, float %128, float 1.000000e+00
  store float %130, ptr %100, align 4, !tbaa !34
  %131 = getelementptr inbounds float, ptr %100, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !34
  %133 = fadd float %132, 2.500000e-01
  %134 = fcmp ole float %133, 1.000000e+00
  %135 = select i1 %134, float %133, float 1.000000e+00
  store float %135, ptr %131, align 4, !tbaa !34
  %136 = getelementptr inbounds float, ptr %100, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !34
  %138 = fadd float %137, 2.500000e-01
  %139 = fcmp ole float %138, 1.000000e+00
  %140 = select i1 %139, float %138, float 1.000000e+00
  store float %140, ptr %136, align 4, !tbaa !34
  %141 = getelementptr inbounds float, ptr %100, i64 3
  store float 1.000000e+00, ptr %141, align 4, !tbaa !34
  %142 = getelementptr inbounds float, ptr %100, i64 4
  br label %150

143:                                              ; preds = %97
  %144 = icmp eq ptr %100, null
  %145 = getelementptr inbounds float, ptr %100, i64 4
  %146 = select i1 %144, ptr null, ptr %145
  %147 = icmp eq ptr %99, null
  %148 = getelementptr inbounds i8, ptr %99, i64 4
  %149 = select i1 %147, ptr null, ptr %148
  br label %150

150:                                              ; preds = %143, %126, %123
  %151 = phi ptr [ %142, %126 ], [ null, %123 ], [ %146, %143 ]
  %152 = phi ptr [ %124, %126 ], [ %124, %123 ], [ %149, %143 ]
  %153 = add nuw nsw i32 %98, 1
  %154 = icmp eq i32 %153, %2
  br i1 %154, label %155, label %97, !llvm.loop !53

155:                                              ; preds = %150, %90
  %156 = phi ptr [ %93, %90 ], [ %151, %150 ]
  %157 = phi ptr [ %92, %90 ], [ %152, %150 ]
  %158 = add nuw nsw i32 %91, 1
  %159 = icmp eq i32 %158, %3
  br i1 %159, label %160, label %90, !llvm.loop !54

160:                                              ; preds = %155, %86
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @__const.checker_board_text.text, i64 3, i1 false)
  %161 = load i32, ptr @blf_mono_font_render, align 4, !tbaa !55
  call void @BLF_size(i32 noundef %161, i32 noundef 54, i32 noundef 72) #8
  call void @BLF_buffer(i32 noundef %161, ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef 4, ptr noundef null) #8
  %162 = icmp sgt i32 %3, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %160
  %164 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 1
  %165 = icmp sgt i32 %2, 0
  br label %166

166:                                              ; preds = %163, %187
  %167 = phi i32 [ 0, %163 ], [ %190, %187 ]
  store i8 49, ptr %164, align 1, !tbaa !42
  br i1 %165, label %168, label %187

168:                                              ; preds = %166
  %169 = or disjoint i32 %167, 44
  %170 = sitofp i32 %169 to float
  %171 = or disjoint i32 %167, 42
  %172 = sitofp i32 %171 to float
  %173 = or disjoint i32 %167, 46
  %174 = sitofp i32 %173 to float
  br label %175

175:                                              ; preds = %168, %175
  %176 = phi i32 [ 0, %168 ], [ %185, %175 ]
  %177 = or disjoint i32 %176, 33
  call void @BLF_buffer_col(i32 noundef %161, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %178 = or disjoint i32 %176, 31
  %179 = sitofp i32 %178 to float
  call void @BLF_position(i32 noundef %161, float noundef %179, float noundef %170, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  %180 = or disjoint i32 %176, 35
  %181 = sitofp i32 %180 to float
  call void @BLF_position(i32 noundef %161, float noundef %181, float noundef %170, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  %182 = sitofp i32 %177 to float
  call void @BLF_position(i32 noundef %161, float noundef %182, float noundef %172, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  call void @BLF_position(i32 noundef %161, float noundef %182, float noundef %174, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  call void @BLF_position(i32 noundef %161, float noundef %179, float noundef %172, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  call void @BLF_position(i32 noundef %161, float noundef %181, float noundef %174, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  call void @BLF_position(i32 noundef %161, float noundef %179, float noundef %174, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  call void @BLF_position(i32 noundef %161, float noundef %181, float noundef %172, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  call void @BLF_buffer_col(i32 noundef %161, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #8
  call void @BLF_position(i32 noundef %161, float noundef %182, float noundef %170, float noundef 0.000000e+00) #8
  call void @BLF_draw_buffer(i32 noundef %161, ptr noundef nonnull %5) #8
  %183 = load i8, ptr %164, align 1, !tbaa !42
  %184 = add i8 %183, 1
  store i8 %184, ptr %164, align 1, !tbaa !42
  %185 = add nuw nsw i32 %176, 128
  %186 = icmp slt i32 %185, %2
  br i1 %186, label %175, label %187, !llvm.loop !57

187:                                              ; preds = %175, %166
  %188 = load i8, ptr %5, align 1, !tbaa !42
  %189 = add i8 %188, 1
  store i8 %189, ptr %5, align 1, !tbaa !42
  %190 = add nuw nsw i32 %167, 128
  %191 = icmp slt i32 %190, %3
  br i1 %191, label %166, label %192, !llvm.loop !58

192:                                              ; preds = %187, %160
  call void @BLF_buffer(i32 noundef %161, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @checker_board_color_tint(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) unnamed_addr #6 {
  %7 = fmul float %5, 5.000000e-01
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %132

9:                                                ; preds = %6
  %10 = icmp sgt i32 %2, 0
  %11 = fmul float %5, 2.550000e+02
  %12 = fptoui float %11 to i8
  %13 = zext i8 %12 to i32
  %14 = fmul float %7, 2.550000e+02
  %15 = fptoui float %14 to i8
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %9, %127
  %18 = phi ptr [ %0, %9 ], [ %129, %127 ]
  %19 = phi i32 [ 0, %9 ], [ %130, %127 ]
  %20 = phi ptr [ %1, %9 ], [ %128, %127 ]
  br i1 %10, label %21, label %127

21:                                               ; preds = %17
  %22 = sdiv i32 %19, %4
  %23 = srem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %21, %122
  %26 = phi ptr [ %18, %21 ], [ %124, %122 ]
  %27 = phi i32 [ 0, %21 ], [ %125, %122 ]
  %28 = phi ptr [ %20, %21 ], [ %123, %122 ]
  switch i32 %23, label %75 [
    i32 1, label %29
    i32 0, label %34
  ]

29:                                               ; preds = %25
  %30 = sdiv i32 %27, %4
  %31 = and i32 %30, -2147483647
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  br i1 %24, label %34, label %75

34:                                               ; preds = %25, %33
  %35 = sdiv i32 %27, %4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %34, %29
  %39 = icmp eq ptr %26, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %38
  %41 = load i8, ptr %26, align 1, !tbaa !42
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, %13
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 255)
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %26, align 1, !tbaa !42
  %46 = getelementptr inbounds i8, ptr %26, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !42
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %48, %13
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 255)
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %46, align 1, !tbaa !42
  %52 = getelementptr inbounds i8, ptr %26, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !42
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %54, %13
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 255)
  %57 = trunc i32 %56 to i8
  store i8 %57, ptr %52, align 1, !tbaa !42
  %58 = getelementptr inbounds i8, ptr %26, i64 3
  store i8 -1, ptr %58, align 1, !tbaa !42
  %59 = getelementptr inbounds i8, ptr %26, i64 4
  br label %60

60:                                               ; preds = %40, %38
  %61 = phi ptr [ %59, %40 ], [ null, %38 ]
  %62 = icmp eq ptr %28, null
  br i1 %62, label %122, label %63

63:                                               ; preds = %60
  %64 = load float, ptr %28, align 4, !tbaa !34
  %65 = fadd float %64, %5
  %66 = fcmp ole float %65, 1.000000e+00
  %67 = select i1 %66, float %65, float 1.000000e+00
  store float %67, ptr %28, align 4, !tbaa !34
  %68 = getelementptr inbounds float, ptr %28, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = fadd float %69, %5
  %71 = fcmp ole float %70, 1.000000e+00
  %72 = select i1 %71, float %70, float 1.000000e+00
  store float %72, ptr %68, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %28, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !34
  br label %112

75:                                               ; preds = %25, %34, %33
  %76 = icmp eq ptr %26, null
  br i1 %76, label %97, label %77

77:                                               ; preds = %75
  %78 = load i8, ptr %26, align 1, !tbaa !42
  %79 = zext i8 %78 to i32
  %80 = add nuw nsw i32 %79, %16
  %81 = tail call i32 @llvm.umin.i32(i32 %80, i32 255)
  %82 = trunc i32 %81 to i8
  store i8 %82, ptr %26, align 1, !tbaa !42
  %83 = getelementptr inbounds i8, ptr %26, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !42
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %85, %16
  %87 = tail call i32 @llvm.umin.i32(i32 %86, i32 255)
  %88 = trunc i32 %87 to i8
  store i8 %88, ptr %83, align 1, !tbaa !42
  %89 = getelementptr inbounds i8, ptr %26, i64 2
  %90 = load i8, ptr %89, align 1, !tbaa !42
  %91 = zext i8 %90 to i32
  %92 = add nuw nsw i32 %91, %16
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 255)
  %94 = trunc i32 %93 to i8
  store i8 %94, ptr %89, align 1, !tbaa !42
  %95 = getelementptr inbounds i8, ptr %26, i64 3
  store i8 -1, ptr %95, align 1, !tbaa !42
  %96 = getelementptr inbounds i8, ptr %26, i64 4
  br label %97

97:                                               ; preds = %77, %75
  %98 = phi ptr [ %96, %77 ], [ null, %75 ]
  %99 = icmp eq ptr %28, null
  br i1 %99, label %122, label %100

100:                                              ; preds = %97
  %101 = load float, ptr %28, align 4, !tbaa !34
  %102 = fadd float %7, %101
  %103 = fcmp ole float %102, 1.000000e+00
  %104 = select i1 %103, float %102, float 1.000000e+00
  store float %104, ptr %28, align 4, !tbaa !34
  %105 = getelementptr inbounds float, ptr %28, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = fadd float %7, %106
  %108 = fcmp ole float %107, 1.000000e+00
  %109 = select i1 %108, float %107, float 1.000000e+00
  store float %109, ptr %105, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %28, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !34
  br label %112

112:                                              ; preds = %100, %63
  %113 = phi float [ %111, %100 ], [ %5, %63 ]
  %114 = phi float [ %7, %100 ], [ %74, %63 ]
  %115 = phi ptr [ %110, %100 ], [ %73, %63 ]
  %116 = phi ptr [ %98, %100 ], [ %61, %63 ]
  %117 = fadd float %114, %113
  %118 = fcmp ole float %117, 1.000000e+00
  %119 = select i1 %118, float %117, float 1.000000e+00
  store float %119, ptr %115, align 4, !tbaa !34
  %120 = getelementptr inbounds float, ptr %28, i64 3
  store float 1.000000e+00, ptr %120, align 4, !tbaa !34
  %121 = getelementptr inbounds float, ptr %28, i64 4
  br label %122

122:                                              ; preds = %112, %60, %97
  %123 = phi ptr [ null, %60 ], [ null, %97 ], [ %121, %112 ]
  %124 = phi ptr [ %61, %60 ], [ %98, %97 ], [ %116, %112 ]
  %125 = add nuw nsw i32 %27, 1
  %126 = icmp eq i32 %125, %2
  br i1 %126, label %127, label %25, !llvm.loop !59

127:                                              ; preds = %122, %17
  %128 = phi ptr [ %20, %17 ], [ %123, %122 ]
  %129 = phi ptr [ %18, %17 ], [ %124, %122 ]
  %130 = add nuw nsw i32 %19, 1
  %131 = icmp eq i32 %130, %3
  br i1 %131, label %132, label %17, !llvm.loop !60

132:                                              ; preds = %127, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_buffer(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLF_buffer_col(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLF_draw_buffer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = !{!36, !36, i64 0}
!43 = distinct !{!43, !39, !40}
!44 = distinct !{!44, !39, !40}
!45 = distinct !{!45, !39, !40}
!46 = distinct !{!46, !39, !40}
!47 = distinct !{!47, !39, !40}
!48 = distinct !{!48, !39, !40}
!49 = !{i32 0, i32 33}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
!52 = distinct !{!52, !39, !40}
!53 = distinct !{!53, !39, !40}
!54 = distinct !{!54, !39, !40}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !36, i64 0}
!57 = distinct !{!57, !39, !40}
!58 = distinct !{!58, !39, !40}
!59 = distinct !{!59, !39, !40}
!60 = distinct !{!60, !39, !40}
