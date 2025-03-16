; ModuleID = 'gspath1.c'
source_filename = "gspath1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_sincos_s = type { double, double }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_point_s = type { double, double }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_path_enum_s = type { ptr, ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"gs_path_enum_init\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gs_path_enum_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_arc(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @gs_arc_add(ptr noundef %0, i32 noundef 0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef 1)
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_arc_add(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.gs_sincos_s, align 8
  %10 = fmul double %5, 4.096000e+03
  %11 = fptosi double %10 to i64
  %12 = fmul double %6, 4.096000e+03
  %13 = fptosi double %12 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %14 = icmp eq i32 %7, 0
  %15 = select i1 %14, i32 1, i32 2
  %16 = fcmp olt double %4, 0.000000e+00
  %17 = add nsw i64 %11, 737280
  %18 = add nsw i64 %13, 737280
  %19 = fneg double %4
  %20 = select i1 %16, i64 %18, i64 %13
  %21 = select i1 %16, i64 %17, i64 %11
  %22 = select i1 %16, double %19, double %4
  %23 = srem i64 %21, 1474560
  %24 = sitofp i64 %23 to double
  %25 = fmul double %24, 0x3F30000000000000
  call void @gs_sincos_degrees(double noundef %25, ptr noundef nonnull %9) #8
  %26 = load double, ptr %9, align 8, !tbaa !5
  %27 = fmul double %22, %26
  %28 = getelementptr inbounds %struct.gs_sincos_s, ptr %9, i64 0, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !10
  %30 = fmul double %22, %29
  %31 = fadd double %30, %2
  %32 = fadd double %27, %3
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %8
  %35 = add i64 %20, 1474559
  %36 = call i64 @llvm.smin.i64(i64 %20, i64 %21)
  %37 = sub i64 %35, %36
  %38 = freeze i64 %37
  %39 = urem i64 %38, 1474560
  %40 = sub i64 %39, %38
  %41 = add i64 %40, %20
  br label %42

42:                                               ; preds = %34, %63
  %43 = phi double [ %64, %63 ], [ %31, %34 ]
  %44 = phi double [ %65, %63 ], [ %32, %34 ]
  %45 = phi double [ %54, %63 ], [ %27, %34 ]
  %46 = phi double [ %45, %63 ], [ %30, %34 ]
  %47 = phi i32 [ %66, %63 ], [ %15, %34 ]
  %48 = phi i32 [ %67, %63 ], [ 0, %34 ]
  %49 = phi i64 [ %68, %63 ], [ %21, %34 ]
  %50 = phi i32 [ %69, %63 ], [ undef, %34 ]
  %51 = sub nsw i64 %41, %49
  %52 = icmp slt i64 %51, -368640
  br i1 %52, label %53, label %108

53:                                               ; preds = %42
  %54 = fneg double %46
  %55 = fadd double %45, %2
  %56 = fsub double %3, %46
  %57 = fadd double %43, %45
  %58 = fsub double %44, %46
  %59 = call fastcc i32 @arc_add(ptr noundef %0, i32 noundef %47, i32 noundef %48, double noundef %22, double noundef %43, double noundef %44, double noundef %55, double noundef %56, double noundef %57, double noundef %58)
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = add nsw i64 %49, -368640
  br label %63

63:                                               ; preds = %53, %61
  %64 = phi double [ %55, %61 ], [ %43, %53 ]
  %65 = phi double [ %56, %61 ], [ %44, %53 ]
  %66 = phi i32 [ 0, %61 ], [ %47, %53 ]
  %67 = phi i32 [ 1, %61 ], [ %48, %53 ]
  %68 = phi i64 [ %62, %61 ], [ %49, %53 ]
  %69 = phi i32 [ %50, %61 ], [ %59, %53 ]
  br i1 %60, label %42, label %131, !llvm.loop !11

70:                                               ; preds = %8
  %71 = call i64 @llvm.smax.i64(i64 %20, i64 %21)
  %72 = icmp slt i64 %20, %21
  %73 = zext i1 %72 to i64
  %74 = add i64 %20, %73
  %75 = sub i64 %71, %74
  %76 = udiv i64 %75, 1474560
  %77 = add nuw nsw i64 %76, %73
  %78 = mul i64 %77, 1474560
  %79 = add i64 %20, %78
  br label %80

80:                                               ; preds = %70, %101
  %81 = phi double [ %102, %101 ], [ %31, %70 ]
  %82 = phi double [ %103, %101 ], [ %32, %70 ]
  %83 = phi double [ %84, %101 ], [ %27, %70 ]
  %84 = phi double [ %92, %101 ], [ %30, %70 ]
  %85 = phi i32 [ %104, %101 ], [ %15, %70 ]
  %86 = phi i32 [ %105, %101 ], [ 0, %70 ]
  %87 = phi i64 [ %106, %101 ], [ %21, %70 ]
  %88 = phi i32 [ %107, %101 ], [ undef, %70 ]
  %89 = sub nsw i64 %79, %87
  %90 = icmp sgt i64 %89, 368640
  br i1 %90, label %91, label %108

91:                                               ; preds = %80
  %92 = fneg double %83
  %93 = fsub double %2, %83
  %94 = fadd double %84, %3
  %95 = fsub double %81, %83
  %96 = fadd double %82, %84
  %97 = call fastcc i32 @arc_add(ptr noundef %0, i32 noundef %85, i32 noundef %86, double noundef %22, double noundef %81, double noundef %82, double noundef %93, double noundef %94, double noundef %95, double noundef %96)
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = add nsw i64 %87, 368640
  br label %101

101:                                              ; preds = %91, %99
  %102 = phi double [ %93, %99 ], [ %81, %91 ]
  %103 = phi double [ %94, %99 ], [ %82, %91 ]
  %104 = phi i32 [ 0, %99 ], [ %85, %91 ]
  %105 = phi i32 [ 1, %99 ], [ %86, %91 ]
  %106 = phi i64 [ %100, %99 ], [ %87, %91 ]
  %107 = phi i32 [ %88, %99 ], [ %97, %91 ]
  br i1 %98, label %80, label %131, !llvm.loop !13

108:                                              ; preds = %42, %80
  %109 = phi double [ %81, %80 ], [ %43, %42 ]
  %110 = phi double [ %82, %80 ], [ %44, %42 ]
  %111 = phi double [ %83, %80 ], [ %45, %42 ]
  %112 = phi double [ %84, %80 ], [ %46, %42 ]
  %113 = phi i32 [ %85, %80 ], [ %47, %42 ]
  %114 = phi i32 [ %86, %80 ], [ %48, %42 ]
  %115 = phi i64 [ %89, %80 ], [ %51, %42 ]
  %116 = phi i64 [ %79, %80 ], [ %41, %42 ]
  %117 = sitofp i64 %115 to double
  %118 = fmul double %117, 0x3F30000000000000
  %119 = fmul double %118, 0x3F81DF46A2529D39
  %120 = call double @tan(double noundef %119) #8
  %121 = fneg double %120
  %122 = call double @llvm.fmuladd.f64(double %121, double %111, double %109)
  %123 = call double @llvm.fmuladd.f64(double %120, double %112, double %110)
  %124 = sitofp i64 %116 to double
  %125 = fmul double %124, 0x3F30000000000000
  call void @gs_sincos_degrees(double noundef %125, ptr noundef nonnull %9) #8
  %126 = load double, ptr %28, align 8, !tbaa !10
  %127 = call double @llvm.fmuladd.f64(double %22, double %126, double %2)
  %128 = load double, ptr %9, align 8, !tbaa !5
  %129 = call double @llvm.fmuladd.f64(double %22, double %128, double %3)
  %130 = call fastcc i32 @arc_add(ptr noundef %0, i32 noundef %113, i32 noundef %114, double noundef %22, double noundef %109, double noundef %110, double noundef %127, double noundef %129, double noundef %122, double noundef %123)
  br label %131

131:                                              ; preds = %63, %101, %108
  %132 = phi i32 [ %130, %108 ], [ %107, %101 ], [ %69, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  ret i32 %132
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_arcn(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @gs_arc_add(ptr noundef %0, i32 noundef 1, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef 1)
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @gs_sincos_degrees(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arc_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9) unnamed_addr #0 {
  %11 = alloca %struct.gs_fixed_point_s, align 8
  %12 = alloca %struct.gs_fixed_point_s, align 8
  %13 = alloca %struct.gs_fixed_point_s, align 8
  %14 = alloca %struct.gs_fixed_point_s, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = fsub double %8, %4
  %18 = fsub double %9, %5
  %19 = fmul double %18, %18
  %20 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %19)
  %21 = fmul double %3, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8
  %22 = fmul double %21, 1.000000e+08
  %23 = fcmp ult double %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %10
  %25 = fdiv double %20, %21
  %26 = fadd double %25, 1.000000e+00
  %27 = tail call double @sqrt(double noundef %26) #8
  %28 = fadd double %27, 1.000000e+00
  %29 = fdiv double 0x3FF5555555555555, %28
  br label %30

30:                                               ; preds = %10, %24
  %31 = phi double [ %29, %24 ], [ 0.000000e+00, %10 ]
  %32 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %33 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %32, double noundef %4, double noundef %5, ptr noundef nonnull %11) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %30
  %36 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %32, double noundef %6, double noundef %7, ptr noundef nonnull %12) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %35
  %39 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %32, double noundef %8, double noundef %9, ptr noundef nonnull %13) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %38
  switch i32 %1, label %50 [
    i32 0, label %55
    i32 2, label %42
  ]

42:                                               ; preds = %41
  %43 = call i32 @gx_path_current_point(ptr noundef %16, ptr noundef nonnull %14) #8
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i64, ptr %11, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %11, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !28
  %49 = call i32 @gx_path_add_line_notes(ptr noundef %16, i64 noundef %46, i64 noundef %48, i32 noundef 0) #8
  br label %55

50:                                               ; preds = %41, %42
  %51 = load i64, ptr %11, align 8, !tbaa !27
  %52 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %11, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !28
  %54 = call i32 @gx_path_add_point(ptr noundef %16, i64 noundef %51, i64 noundef %53) #8
  br label %55

55:                                               ; preds = %41, %45, %50
  %56 = phi i32 [ %1, %41 ], [ %49, %45 ], [ %54, %50 ]
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load i64, ptr %12, align 8, !tbaa !27
  %60 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %12, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !28
  %62 = load i64, ptr %13, align 8, !tbaa !27
  %63 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %13, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !28
  %65 = call i32 @gx_path_add_partial_arc_notes(ptr noundef %16, i64 noundef %59, i64 noundef %61, i64 noundef %62, i64 noundef %64, double noundef %31, i32 noundef %2) #8
  br label %66

66:                                               ; preds = %30, %35, %38, %55, %58
  %67 = phi i32 [ %65, %58 ], [ %33, %30 ], [ %36, %35 ], [ %39, %38 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  ret i32 %67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_arcto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.gs_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %10 = fcmp olt double %5, 0.000000e+00
  br i1 %10, label %80, label %11

11:                                               ; preds = %7
  %12 = call i32 @gs_currentpoint(ptr noundef %0, ptr noundef nonnull %8) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %80, label %14

14:                                               ; preds = %11
  %15 = load double, ptr %8, align 8, !tbaa !29
  %16 = fsub double %15, %1
  %17 = getelementptr inbounds %struct.gs_point_s, ptr %8, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !tbaa !31
  %19 = fsub double %18, %2
  %20 = fsub double %3, %1
  %21 = fsub double %4, %2
  %22 = fmul double %19, %19
  %23 = call double @llvm.fmuladd.f64(double %16, double %16, double %22)
  %24 = fmul double %21, %21
  %25 = call double @llvm.fmuladd.f64(double %20, double %20, double %24)
  %26 = fneg double %21
  %27 = fmul double %16, %26
  %28 = call double @llvm.fmuladd.f64(double %19, double %20, double %27)
  %29 = fmul double %25, %23
  %30 = call double @sqrt(double noundef %29) #8
  %31 = fmul double %21, %19
  %32 = call double @llvm.fmuladd.f64(double %16, double %20, double %31)
  %33 = fsub double %30, %32
  %34 = call double @llvm.fabs.f64(double %28)
  %35 = fcmp olt double %34, 0x3EB0C6F7A0B5ED8D
  %36 = call double @llvm.fabs.f64(double %33)
  %37 = fcmp olt double %36, 0x3EB0C6F7A0B5ED8D
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %40 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %41 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %40, double noundef %1, double noundef %2, ptr noundef nonnull %9) #8
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = load i64, ptr %9, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !28
  %49 = call i32 @gx_path_add_line_notes(ptr noundef %45, i64 noundef %46, i64 noundef %48, i32 noundef 0) #8
  br label %50

50:                                               ; preds = %43, %39
  %51 = phi i32 [ %49, %43 ], [ %41, %39 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  br label %65

52:                                               ; preds = %14
  %53 = fmul double %28, %5
  %54 = fdiv double %53, %33
  %55 = call double @llvm.fabs.f64(double %54)
  %56 = call double @sqrt(double noundef %23) #8
  %57 = fdiv double %55, %56
  %58 = call double @sqrt(double noundef %25) #8
  %59 = fdiv double %55, %58
  %60 = call double @llvm.fmuladd.f64(double %16, double %57, double %1)
  %61 = call double @llvm.fmuladd.f64(double %19, double %57, double %2)
  %62 = call double @llvm.fmuladd.f64(double %20, double %59, double %1)
  %63 = call double @llvm.fmuladd.f64(double %21, double %59, double %2)
  %64 = call fastcc i32 @arc_add(ptr noundef %0, i32 noundef 2, i32 noundef 0, double noundef %5, double noundef %60, double noundef %61, double noundef %62, double noundef %63, double noundef %1, double noundef %2)
  br label %65

65:                                               ; preds = %52, %50
  %66 = phi i32 [ %51, %50 ], [ %64, %52 ]
  %67 = phi double [ %2, %50 ], [ %63, %52 ]
  %68 = phi double [ %1, %50 ], [ %62, %52 ]
  %69 = phi double [ %2, %50 ], [ %61, %52 ]
  %70 = phi double [ %1, %50 ], [ %60, %52 ]
  %71 = icmp eq ptr %6, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %65
  %73 = fptrunc double %70 to float
  store float %73, ptr %6, align 4, !tbaa !32
  %74 = fptrunc double %69 to float
  %75 = getelementptr inbounds float, ptr %6, i64 1
  store float %74, ptr %75, align 4, !tbaa !32
  %76 = fptrunc double %68 to float
  %77 = getelementptr inbounds float, ptr %6, i64 2
  store float %76, ptr %77, align 4, !tbaa !32
  %78 = fptrunc double %67 to float
  %79 = getelementptr inbounds float, ptr %6, i64 3
  store float %78, ptr %79, align 4, !tbaa !32
  br label %80

80:                                               ; preds = %65, %72, %11, %7
  %81 = phi i32 [ -23, %7 ], [ %12, %11 ], [ %66, %72 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  ret i32 %81
}

declare i32 @gs_currentpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_dashpath(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  %3 = alloca %struct.gx_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #8
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !33
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 6
  %11 = load float, ptr %10, align 4, !tbaa !36
  %12 = fmul float %11, 4.096000e+03
  %13 = fptosi float %12 to i64
  %14 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !37
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 1, i32 5
  %18 = call i32 @gx_path_copy_reducing(ptr noundef %5, ptr noundef nonnull %2, i64 noundef %13, i32 noundef %17) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %9
  %21 = load ptr, ptr %4, align 8, !tbaa !14
  call void @gx_path_release(ptr noundef %21) #8
  %22 = load ptr, ptr %4, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %22, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !38
  br label %23

23:                                               ; preds = %1, %9, %20
  %24 = phi i32 [ 0, %20 ], [ 0, %1 ], [ %18, %9 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !tbaa !14
  %28 = call i32 @gx_path_expand_dashes(ptr noundef %27, ptr noundef nonnull %3, ptr noundef %0) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %4, align 8, !tbaa !14
  call void @gx_path_release(ptr noundef %31) #8
  %32 = load ptr, ptr %4, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %32, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !tbaa.struct !38
  br label %33

33:                                               ; preds = %26, %23, %30
  %34 = phi i32 [ 0, %30 ], [ %24, %23 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_flattenpath(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.gx_path_s, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !33
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !36
  %11 = fmul float %10, 4.096000e+03
  %12 = fptosi float %11 to i64
  %13 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !37
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1, i32 5
  %17 = call i32 @gx_path_copy_reducing(ptr noundef %4, ptr noundef nonnull %2, i64 noundef %12, i32 noundef %16) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %8
  %20 = load ptr, ptr %3, align 8, !tbaa !14
  call void @gx_path_release(ptr noundef %20) #8
  %21 = load ptr, ptr %3, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %21, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !38
  br label %22

22:                                               ; preds = %8, %1, %19
  %23 = phi i32 [ 0, %19 ], [ 0, %1 ], [ %17, %8 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #8
  ret i32 %23
}

declare i32 @gx_path_expand_dashes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gx_path_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @gx_path_copy_reducing(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_reversepath(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gx_path_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = call i32 @gx_path_copy_reversed(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 1) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !14
  call void @gx_path_release(ptr noundef %8) #8
  %9 = load ptr, ptr %3, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !38
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ 0, %7 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #8
  ret i32 %11
}

declare i32 @gx_path_copy_reversed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_upathbbox(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_rect_s, align 8
  %5 = alloca %struct.gs_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = call i32 @gx_path_bbox(ptr noundef %7, ptr noundef nonnull %4) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.gx_path_s, ptr %11, i64 0, i32 11
  %13 = load i8, ptr %12, align 1, !tbaa !44
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 247
  %16 = icmp eq i32 %15, 3
  %17 = icmp ne i32 %2, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %48

19:                                               ; preds = %10
  %20 = and i32 %14, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gx_path_s, ptr %11, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.gx_path_s, ptr %11, i64 0, i32 7, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %19, %22
  %28 = phi i64 [ %26, %22 ], [ undef, %19 ]
  %29 = phi i64 [ %24, %22 ], [ undef, %19 ]
  %30 = load i64, ptr %4, align 8, !tbaa !47
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i64 %29, ptr %4, align 8, !tbaa !47
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !48
  %36 = icmp slt i64 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i64 %28, ptr %34, align 8, !tbaa !48
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !49
  %41 = icmp sgt i64 %29, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 %29, ptr %39, align 8, !tbaa !49
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !50
  %46 = icmp sgt i64 %28, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 %28, ptr %44, align 8, !tbaa !50
  br label %48

48:                                               ; preds = %43, %47, %10
  %49 = load i64, ptr %4, align 8, !tbaa !47
  %50 = sitofp i64 %49 to double
  %51 = fmul double %50, 0x3F30000000000000
  store double %51, ptr %5, align 8, !tbaa !51
  %52 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !48
  %54 = sitofp i64 %53 to double
  %55 = fmul double %54, 0x3F30000000000000
  %56 = getelementptr inbounds %struct.gs_point_s, ptr %5, i64 0, i32 1
  store double %55, ptr %56, align 8, !tbaa !53
  %57 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !49
  %59 = sitofp i64 %58 to double
  %60 = fmul double %59, 0x3F30000000000000
  %61 = getelementptr inbounds %struct.gs_rect_s, ptr %5, i64 0, i32 1
  store double %60, ptr %61, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %4, i64 0, i32 1, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !50
  %64 = sitofp i64 %63 to double
  %65 = fmul double %64, 0x3F30000000000000
  %66 = getelementptr inbounds %struct.gs_rect_s, ptr %5, i64 0, i32 1, i32 1
  store double %65, ptr %66, align 8, !tbaa !55
  %67 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 2
  %68 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %5, ptr noundef nonnull %67, ptr noundef %1) #8
  br label %69

69:                                               ; preds = %3, %48
  %70 = phi i32 [ %68, %48 ], [ %8, %3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret i32 %70
}

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_bbox_transform_inverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_path_enum_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !56
  %4 = tail call ptr @gx_path_alloc(ptr noundef %3, ptr noundef nonnull @.str) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call i32 @gx_path_copy_reducing(ptr noundef %8, ptr noundef nonnull %4, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %1, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void %14(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull @.str) #8
  br label %19

15:                                               ; preds = %6
  %16 = tail call i32 @gx_path_enum_init(ptr noundef %0, ptr noundef nonnull %4) #8
  %17 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 3
  store ptr %4, ptr %18, align 8, !tbaa !62
  br label %19

19:                                               ; preds = %2, %15, %11
  %20 = phi i32 [ %9, %11 ], [ 0, %15 ], [ -25, %2 ]
  ret i32 %20
}

declare ptr @gx_path_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_path_enum_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_path_enum_next(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x %struct.gs_fixed_point_s], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = call i32 @gx_path_enum_next(ptr noundef %0, ptr noundef nonnull %3) #8
  switch i32 %6, label %41 [
    i32 2, label %31
    i32 1, label %31
    i32 3, label %7
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 1
  %9 = load i64, ptr %8, align 16, !tbaa !27
  %10 = sitofp i64 %9 to double
  %11 = fmul double %10, 0x3F30000000000000
  %12 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !28
  %14 = sitofp i64 %13 to double
  %15 = fmul double %14, 0x3F30000000000000
  %16 = getelementptr inbounds %struct.gs_point_s, ptr %1, i64 1
  %17 = call i32 @gs_itransform(ptr noundef %5, double noundef %11, double noundef %15, ptr noundef nonnull %16) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 2
  %21 = load i64, ptr %20, align 16, !tbaa !27
  %22 = sitofp i64 %21 to double
  %23 = fmul double %22, 0x3F30000000000000
  %24 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %3, i64 0, i64 2, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !28
  %26 = sitofp i64 %25 to double
  %27 = fmul double %26, 0x3F30000000000000
  %28 = getelementptr inbounds %struct.gs_point_s, ptr %1, i64 2
  %29 = call i32 @gs_itransform(ptr noundef %5, double noundef %23, double noundef %27, ptr noundef nonnull %28) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %2, %2, %19
  %32 = load i64, ptr %3, align 16, !tbaa !27
  %33 = sitofp i64 %32 to double
  %34 = fmul double %33, 0x3F30000000000000
  %35 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !28
  %37 = sitofp i64 %36 to double
  %38 = fmul double %37, 0x3F30000000000000
  %39 = call i32 @gs_itransform(ptr noundef %5, double noundef %34, double noundef %38, ptr noundef %1) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %2, %31
  br label %42

42:                                               ; preds = %31, %7, %19, %41
  %43 = phi i32 [ %6, %41 ], [ %17, %7 ], [ %29, %19 ], [ %39, %31 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %43
}

declare i32 @gx_path_enum_next(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_itransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gs_path_enum_cleanup(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  tail call void @gx_path_release(ptr noundef nonnull %3) #8
  %6 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = load ptr, ptr %2, align 8, !tbaa !62
  tail call void %10(ptr noundef %8, ptr noundef %11, ptr noundef nonnull @.str.1) #8
  %12 = getelementptr inbounds %struct.gs_path_enum_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

declare i32 @gx_path_current_point(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gx_path_add_partial_arc_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_sincos_s", !7, i64 0, !7, i64 8}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = !{!15, !16, i64 392}
!15 = !{!"gs_state_s", !16, i64 0, !17, i64 8, !21, i64 80, !19, i64 128, !23, i64 132, !19, i64 136, !18, i64 140, !24, i64 144, !19, i64 160, !19, i64 164, !16, i64 168, !8, i64 176, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !8, i64 232, !8, i64 264, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !25, i64 336, !19, i64 360, !25, i64 364, !19, i64 388, !16, i64 392, !16, i64 400, !19, i64 408, !19, i64 412, !16, i64 416, !16, i64 424, !16, i64 432, !16, i64 440, !16, i64 448, !21, i64 456, !19, i64 504, !8, i64 508, !19, i64 512, !16, i64 520, !19, i64 528, !16, i64 536, !16, i64 544, !26, i64 552}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"gx_line_params_s", !18, i64 0, !19, i64 4, !19, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !20, i64 32}
!18 = !{!"float", !8, i64 0}
!19 = !{!"int", !8, i64 0}
!20 = !{!"gx_dash_params_s", !16, i64 0, !19, i64 8, !18, i64 12, !19, i64 16, !18, i64 20, !19, i64 24, !19, i64 28, !18, i64 32}
!21 = !{!"gs_matrix_fixed_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !22, i64 24, !22, i64 32, !19, i64 40}
!22 = !{!"long", !8, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = !{!"gs_fixed_point_s", !22, i64 0, !22, i64 8}
!25 = !{!"gs_matrix_s", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!26 = !{!"gs_state_client_procs_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!27 = !{!24, !22, i64 0}
!28 = !{!24, !22, i64 8}
!29 = !{!30, !7, i64 0}
!30 = !{!"gs_point_s", !7, i64 0, !7, i64 8}
!31 = !{!30, !7, i64 8}
!32 = !{!18, !18, i64 0}
!33 = !{!34, !19, i64 68}
!34 = !{!"gx_path_s", !16, i64 0, !35, i64 8, !16, i64 40, !16, i64 48, !16, i64 56, !19, i64 64, !19, i64 68, !24, i64 72, !30, i64 88, !30, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!35 = !{!"gs_fixed_rect_s", !24, i64 0, !24, i64 16}
!36 = !{!15, !18, i64 140}
!37 = !{!15, !19, i64 164}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !40, i64 16, i64 8, !40, i64 24, i64 8, !40, i64 32, i64 8, !40, i64 40, i64 8, !39, i64 48, i64 8, !39, i64 56, i64 8, !39, i64 64, i64 4, !41, i64 68, i64 4, !41, i64 72, i64 8, !40, i64 80, i64 8, !40, i64 88, i64 8, !42, i64 96, i64 8, !42, i64 104, i64 8, !42, i64 112, i64 8, !42, i64 120, i64 1, !43, i64 121, i64 1, !43, i64 122, i64 1, !43, i64 123, i64 1, !43}
!39 = !{!16, !16, i64 0}
!40 = !{!22, !22, i64 0}
!41 = !{!19, !19, i64 0}
!42 = !{!7, !7, i64 0}
!43 = !{!8, !8, i64 0}
!44 = !{!34, !8, i64 121}
!45 = !{!34, !22, i64 72}
!46 = !{!34, !22, i64 80}
!47 = !{!35, !22, i64 0}
!48 = !{!35, !22, i64 8}
!49 = !{!35, !22, i64 16}
!50 = !{!35, !22, i64 24}
!51 = !{!52, !7, i64 0}
!52 = !{!"gs_rect_s", !30, i64 0, !30, i64 16}
!53 = !{!52, !7, i64 8}
!54 = !{!52, !7, i64 16}
!55 = !{!52, !7, i64 24}
!56 = !{!15, !16, i64 0}
!57 = !{!58, !16, i64 88}
!58 = !{!"gs_memory_s", !59, i64 0}
!59 = !{!"gs_memory_procs_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152}
!60 = !{!61, !16, i64 8}
!61 = !{!"gs_path_enum_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !19, i64 32, !19, i64 36}
!62 = !{!61, !16, i64 24}
