; ModuleID = 'gshtscr.c'
source_filename = "gshtscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, i32, i32, i32, i32, ptr }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, ptr, float, float }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_point_s = type { double, double }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_ht_cache_s = type { ptr, i32, ptr, i32, %struct.gx_ht_order_s, i32, i32, i64 }
%struct.gx_ht_bit_s = type { i32, i32 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }

@screen_accurate_screens = internal unnamed_addr global i32 0, align 4
@screen_min_screen_levels = internal unnamed_addr global i32 1, align 4
@st_gs_screen_enum = internal constant %struct.gs_memory_struct_type_s { i32 272, ptr @.str, ptr null, ptr null, ptr @screen_enum_enum_ptrs, ptr @screen_enum_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [15 x i8] c"gs_screen_enum\00", align 1
@st_ht_order = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_halftone = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_setaccuratescreens(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @screen_accurate_screens, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @gs_currentaccuratescreens() local_unnamed_addr #1 {
  %1 = load i32, ptr @screen_accurate_screens, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_setminscreenlevels(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @screen_min_screen_levels, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @gs_currentminscreenlevels() local_unnamed_addr #1 {
  %1 = load i32, ptr @screen_min_screen_levels, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_compute_cell_values(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load i16, ptr %0, align 8, !tbaa !9
  %3 = sext i16 %2 to i32
  %4 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !13
  %6 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !14
  %8 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !15
  %10 = sext i16 %9 to i32
  %11 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %12 = tail call i16 @llvm.abs.i16(i16 %5, i1 false)
  %13 = zext i16 %12 to i32
  %14 = tail call i16 @llvm.abs.i16(i16 %7, i1 false)
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @llvm.abs.i32(i32 %10, i1 true)
  %17 = zext nneg i32 %11 to i64
  %18 = zext i16 %14 to i64
  %19 = mul nuw nsw i64 %18, %17
  %20 = zext i16 %12 to i64
  %21 = zext nneg i32 %16 to i64
  %22 = mul nuw nsw i64 %21, %20
  %23 = add nuw nsw i64 %22, %19
  %24 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 6
  store i64 %23, ptr %24, align 8, !tbaa !16
  %25 = tail call i32 @igcd(i32 noundef %15, i32 noundef %13) #11
  %26 = tail call i32 @igcd(i32 noundef %11, i32 noundef %16) #11
  %27 = sext i32 %25 to i64
  %28 = udiv i64 %23, %27
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 9
  store i32 %29, ptr %30, align 4, !tbaa !17
  %31 = sext i32 %26 to i64
  %32 = udiv i64 %23, %31
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 10
  store i32 %33, ptr %34, align 8, !tbaa !18
  %35 = trunc i32 %25 to i16
  %36 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 7
  store i16 %35, ptr %36, align 8, !tbaa !19
  %37 = trunc i32 %26 to i16
  %38 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 8
  store i16 %37, ptr %38, align 2, !tbaa !20
  %39 = icmp ne i16 %7, 0
  %40 = icmp ne i16 %5, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %70

42:                                               ; preds = %1
  %43 = icmp eq i32 %25, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %42
  %45 = icmp sgt i16 %5, 0
  %46 = select i1 %45, i32 1, i32 -1
  %47 = icmp sgt i16 %7, 0
  %48 = select i1 %47, i32 1, i32 -1
  %49 = sub nsw i32 0, %15
  br label %50

50:                                               ; preds = %44, %50
  %51 = phi i32 [ 0, %44 ], [ %60, %50 ]
  %52 = phi i32 [ 0, %44 ], [ %58, %50 ]
  %53 = phi i32 [ 0, %44 ], [ %56, %50 ]
  %54 = icmp sgt i32 %52, %25
  %55 = select i1 %54, i32 %48, i32 0
  %56 = add nsw i32 %53, %55
  %57 = select i1 %54, i32 %49, i32 %13
  %58 = add i32 %52, %57
  %59 = select i1 %54, i32 0, i32 %46
  %60 = add nsw i32 %51, %59
  %61 = icmp eq i32 %58, %25
  br i1 %61, label %62, label %50, !llvm.loop !21

62:                                               ; preds = %50, %42
  %63 = phi i32 [ 0, %42 ], [ %56, %50 ]
  %64 = phi i32 [ 0, %42 ], [ %60, %50 ]
  %65 = mul nsw i32 %64, %3
  %66 = mul nsw i32 %63, %10
  %67 = add nsw i32 %66, %65
  %68 = sub nsw i32 0, %67
  %69 = tail call i32 @imod(i32 noundef %68, i32 noundef %29) #11
  br label %70

70:                                               ; preds = %1, %62
  %71 = phi i32 [ %69, %62 ], [ 0, %1 ]
  %72 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 11
  store i32 %71, ptr %72, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @igcd(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @imod(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_screen_enum_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = tail call ptr %4(ptr noundef %0, ptr noundef nonnull @st_gs_screen_enum, ptr noundef %1) #11
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_screen_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr @screen_accurate_screens, align 4, !tbaa !5
  %5 = load ptr, ptr %1, align 8, !tbaa !28
  %6 = tail call i32 @gs_screen_init_memory(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %4, ptr noundef %5), !range !37
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_screen_init_memory(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1
  %7 = tail call i32 @gs_screen_order_init_memory(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4), !range !37
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %75, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 7
  store ptr %1, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 1, i32 1
  store ptr %4, ptr %11, align 8, !tbaa !43
  store i32 1, ptr %0, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !45
  %13 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %13, align 4, !tbaa !48
  %14 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !51
  %19 = zext i16 %18 to i32
  %20 = udiv i32 %16, %19
  %21 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 5
  store i32 %20, ptr %21, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 4
  %23 = load i16, ptr %22, align 2, !tbaa !53
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 6
  store i32 %24, ptr %25, align 4, !tbaa !54
  %26 = load i16, ptr %6, align 8, !tbaa !55
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !56
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 0, i32 2
  %32 = load i16, ptr %31, align 4, !tbaa !57
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !58
  %36 = sext i16 %35 to i32
  %37 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !59
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 0, i32 5
  %41 = load i16, ptr %40, align 2, !tbaa !60
  %42 = sext i16 %41 to i32
  %43 = sext i16 %26 to i64
  %44 = sext i16 %35 to i64
  %45 = mul nsw i64 %44, %43
  %46 = sext i16 %29 to i64
  %47 = sext i16 %38 to i64
  %48 = mul nsw i64 %47, %46
  %49 = add nsw i64 %48, %45
  %50 = sitofp i64 %49 to double
  %51 = fdiv double 2.000000e+00, %50
  %52 = mul nsw i32 %36, %33
  %53 = sitofp i32 %52 to double
  %54 = fmul double %51, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2
  store float %55, ptr %56, align 8, !tbaa !61
  %57 = mul nsw i32 %30, %42
  %58 = sub nsw i32 0, %57
  %59 = sitofp i32 %58 to double
  %60 = fmul double %51, %59
  %61 = fptrunc double %60 to float
  %62 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 1
  store float %61, ptr %62, align 4, !tbaa !62
  %63 = mul nsw i32 %39, %33
  %64 = sitofp i32 %63 to double
  %65 = fmul double %51, %64
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 2
  store float %66, ptr %67, align 8, !tbaa !63
  %68 = mul nsw i32 %42, %27
  %69 = sitofp i32 %68 to double
  %70 = fmul double %51, %69
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 3
  store float %71, ptr %72, align 4, !tbaa !64
  %73 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 4
  store float -1.000000e+00, ptr %73, align 8, !tbaa !65
  %74 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 5
  store float -1.000000e+00, ptr %74, align 4, !tbaa !66
  br label %75

75:                                               ; preds = %5, %9
  %76 = phi i32 [ 0, %9 ], [ %7, %5 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_screen_order_init_memory(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.gs_point_s, align 8
  %7 = alloca %struct.gs_matrix_s, align 4
  %8 = alloca %struct.gx_ht_cell_params_s, align 8
  %9 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = load float, ptr %2, align 8, !tbaa !70
  %15 = fpext float %14 to double
  %16 = fcmp olt double %15, 1.000000e-01
  br i1 %16, label %299, label %17

17:                                               ; preds = %5
  %18 = zext i32 %13 to i64
  %19 = tail call ptr @gs_currentdevice(ptr noundef %1) #11
  call void @gs_deviceinitialmatrix(ptr noundef %19, ptr noundef nonnull %9) #11
  %20 = load i32, ptr @screen_min_screen_levels, align 4, !tbaa !5
  %21 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !72
  %23 = fcmp une float %22, 0.000000e+00
  %24 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 2
  %25 = load float, ptr %24, align 4
  %26 = fcmp une float %25, 0.000000e+00
  %27 = select i1 %23, i1 true, i1 %26
  %28 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 2
  %29 = fmul float %22, %25
  %30 = load float, ptr %9, align 4, !tbaa !73
  %31 = getelementptr inbounds %struct.gs_matrix_s, ptr %9, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !74
  %33 = fmul float %30, %32
  %34 = fcmp ogt float %29, %33
  %35 = fcmp olt float %25, 0.000000e+00
  %36 = select i1 %35, i32 90, i32 -90
  %37 = fcmp olt float %30, 0.000000e+00
  %38 = select i1 %37, i32 180, i32 0
  %39 = select i1 %27, i32 %36, i32 %38
  %40 = load float, ptr %2, align 8, !tbaa !70
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %2, i64 0, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !75
  %44 = fpext float %43 to double
  %45 = fdiv float %25, %22
  %46 = fdiv float %30, %32
  %47 = select i1 %27, float %45, float %46
  %48 = call float @llvm.fabs.f32(float %47)
  %49 = fpext float %48 to double
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  %50 = select i1 %34, double -1.000000e+00, double 1.000000e+00
  %51 = sitofp i32 %39 to double
  %52 = call double @llvm.fmuladd.f64(double %44, double %50, double %51)
  %53 = call i32 @gs_make_rotation(double noundef %52, ptr noundef nonnull %7) #11
  %54 = fdiv double 7.200000e+01, %41
  %55 = call i32 @gs_distance_transform(double noundef %54, double noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %6) #11
  %56 = load double, ptr %6, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.gs_point_s, ptr %6, i64 0, i32 1
  %58 = load double, ptr %57, align 8, !tbaa !79
  %59 = call i32 @gs_distance_transform(double noundef %56, double noundef %58, ptr noundef nonnull %9, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  %60 = load double, ptr %6, align 8, !tbaa !76
  %61 = fcmp oeq double %60, 0.000000e+00
  %62 = load double, ptr %57, align 8
  %63 = fcmp oeq double %62, 0.000000e+00
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %264, label %65

65:                                               ; preds = %17
  %66 = call double @llvm.fabs.f64(double %60)
  %67 = call double @llvm.fabs.f64(double %62)
  %68 = fadd double %66, %67
  br label %69

69:                                               ; preds = %69, %65
  %70 = phi i32 [ %74, %69 ], [ 1, %65 ]
  %71 = sitofp i32 %70 to double
  %72 = fmul double %68, %71
  %73 = fcmp olt double %72, 4.000000e+00
  %74 = add nuw nsw i32 %70, 1
  br i1 %73, label %69, label %75, !llvm.loop !80

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %8, i64 0, i32 5
  %77 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %8, i64 0, i32 2
  %78 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %8, i64 0, i32 1
  %79 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %8, i64 0, i32 3
  %80 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %8, i64 0, i32 4
  %81 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %8, i64 0, i32 9
  %82 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %8, i64 0, i32 7
  %83 = fneg double %51
  %84 = fdiv double %44, 1.800000e+02
  %85 = call double @llvm.floor.f64(double %84)
  %86 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 6
  %87 = zext i32 %20 to i64
  %88 = icmp eq i32 %3, 0
  br label %89

89:                                               ; preds = %252, %75
  %90 = phi double [ 1.000000e+03, %75 ], [ %246, %252 ]
  %91 = phi double [ 0.000000e+00, %75 ], [ %247, %252 ]
  %92 = phi double [ 0.000000e+00, %75 ], [ %248, %252 ]
  %93 = phi i32 [ %70, %75 ], [ %253, %252 ]
  %94 = load double, ptr %6, align 8, !tbaa !76
  %95 = sitofp i32 %93 to double
  %96 = call double @llvm.fmuladd.f64(double %94, double %95, double 1.000000e-04)
  %97 = call double @llvm.floor.f64(double %96)
  %98 = fptosi double %97 to i32
  %99 = load double, ptr %57, align 8, !tbaa !79
  %100 = call double @llvm.fmuladd.f64(double %99, double %95, double 1.000000e-04)
  %101 = call double @llvm.floor.f64(double %100)
  %102 = fptosi double %101 to i32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11
  %103 = trunc i32 %93 to i16
  store i16 %103, ptr %76, align 2, !tbaa !81
  store i16 %103, ptr %77, align 4, !tbaa !82
  %104 = trunc i32 %98 to i16
  %105 = add i16 %104, 1
  store i16 %105, ptr %8, align 8, !tbaa !9
  %106 = sext i16 %105 to i32
  %107 = icmp slt i32 %106, %98
  br i1 %107, label %243, label %108

108:                                              ; preds = %89
  %109 = trunc i32 %102 to i16
  %110 = add i16 %109, 1
  %111 = sext i16 %110 to i32
  %112 = icmp slt i32 %111, %102
  br label %113

113:                                              ; preds = %234, %108
  %114 = phi double [ %92, %108 ], [ %238, %234 ]
  %115 = phi double [ %91, %108 ], [ %237, %234 ]
  %116 = phi double [ %90, %108 ], [ %236, %234 ]
  %117 = phi i32 [ 0, %108 ], [ %235, %234 ]
  store i16 %110, ptr %78, align 2, !tbaa !13
  br i1 %112, label %234, label %118

118:                                              ; preds = %113, %229
  %119 = phi double [ %228, %229 ], [ %114, %113 ]
  %120 = phi double [ %227, %229 ], [ %115, %113 ]
  %121 = phi double [ %226, %229 ], [ %116, %113 ]
  %122 = phi i32 [ %225, %229 ], [ %117, %113 ]
  %123 = phi i16 [ %231, %229 ], [ %110, %113 ]
  %124 = load i16, ptr %8, align 8, !tbaa !9
  %125 = sitofp i16 %124 to double
  %126 = fdiv double %125, %49
  %127 = fadd double %126, 5.000000e-01
  %128 = fptosi double %127 to i32
  %129 = trunc i32 %128 to i16
  store i16 %129, ptr %79, align 2, !tbaa !14
  %130 = sitofp i16 %123 to double
  %131 = call double @llvm.fmuladd.f64(double %130, double %49, double 5.000000e-01)
  %132 = fptosi double %131 to i32
  %133 = trunc i32 %132 to i16
  store i16 %133, ptr %80, align 8, !tbaa !15
  call void @gx_compute_cell_values(ptr noundef nonnull %8)
  %134 = load i32, ptr %81, align 4, !tbaa !17
  %135 = icmp ugt i32 %134, 32766
  br i1 %135, label %223, label %136

136:                                              ; preds = %118
  %137 = add nuw nsw i32 %134, 63
  %138 = lshr i32 %137, 3
  %139 = and i32 %138, 8184
  %140 = zext nneg i32 %139 to i64
  %141 = load i16, ptr %82, align 8, !tbaa !19
  %142 = sext i16 %141 to i64
  %143 = udiv i64 %18, %142
  %144 = icmp ult i64 %143, %140
  br i1 %144, label %223, label %145

145:                                              ; preds = %136
  br i1 %27, label %146, label %171

146:                                              ; preds = %145
  %147 = load i16, ptr %8, align 8, !tbaa !9
  %148 = sitofp i16 %147 to float
  %149 = load float, ptr %21, align 4, !tbaa !72
  %150 = fmul float %149, %148
  %151 = fpext float %150 to double
  %152 = load i16, ptr %78, align 2, !tbaa !13
  %153 = sitofp i16 %152 to float
  %154 = load float, ptr %28, align 4, !tbaa !83
  %155 = fmul float %154, %153
  %156 = fpext float %155 to double
  %157 = call double @atan2(double noundef %151, double noundef %156) #11
  %158 = icmp eq i16 %147, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %146
  %160 = load float, ptr %21, align 4, !tbaa !72
  %161 = fdiv float %160, %153
  %162 = fpext float %161 to double
  %163 = call double @cos(double noundef %157) #11
  %164 = fmul double %163, %162
  br label %196

165:                                              ; preds = %146
  %166 = load float, ptr %28, align 4, !tbaa !83
  %167 = fdiv float %166, %148
  %168 = fpext float %167 to double
  %169 = call double @sin(double noundef %157) #11
  %170 = fmul double %169, %168
  br label %196

171:                                              ; preds = %145
  %172 = load i16, ptr %78, align 2, !tbaa !13
  %173 = sitofp i16 %172 to float
  %174 = load float, ptr %9, align 4, !tbaa !73
  %175 = fmul float %174, %173
  %176 = fpext float %175 to double
  %177 = load i16, ptr %8, align 8, !tbaa !9
  %178 = sitofp i16 %177 to float
  %179 = load float, ptr %31, align 4, !tbaa !74
  %180 = fmul float %179, %178
  %181 = fpext float %180 to double
  %182 = call double @atan2(double noundef %176, double noundef %181) #11
  %183 = icmp eq i16 %177, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %171
  %185 = load float, ptr %31, align 4, !tbaa !74
  %186 = fdiv float %185, %173
  %187 = fpext float %186 to double
  %188 = call double @sin(double noundef %182) #11
  %189 = fmul double %188, %187
  br label %196

190:                                              ; preds = %171
  %191 = load float, ptr %9, align 4, !tbaa !73
  %192 = fdiv float %191, %178
  %193 = fpext float %192 to double
  %194 = call double @cos(double noundef %182) #11
  %195 = fmul double %194, %193
  br label %196

196:                                              ; preds = %190, %184, %165, %159
  %197 = phi double [ %164, %159 ], [ %170, %165 ], [ %189, %184 ], [ %195, %190 ]
  %198 = phi double [ %157, %159 ], [ %157, %165 ], [ %182, %184 ], [ %182, %190 ]
  %199 = fmul double %197, 7.200000e+01
  %200 = call double @llvm.fabs.f64(double %199)
  %201 = fmul double %200, %95
  %202 = call double @llvm.fmuladd.f64(double %198, double 0x404CA5DC1A63C1F8, double %83)
  %203 = fmul double %50, %202
  %204 = fdiv double %203, 1.800000e+02
  %205 = call double @llvm.floor.f64(double %204)
  %206 = fneg double %205
  %207 = call double @llvm.fmuladd.f64(double %206, double 1.800000e+02, double %203)
  %208 = call double @llvm.fmuladd.f64(double %85, double 1.800000e+02, double %207)
  %209 = fsub double %201, %41
  %210 = fsub double %208, %44
  %211 = call double @llvm.fabs.f64(double %210)
  %212 = fdiv double %209, %41
  %213 = call double @llvm.fabs.f64(double %212)
  %214 = fmul double %213, %211
  %215 = fcmp ule double %214, %121
  %216 = select i1 %215, i32 0, i32 12
  %217 = select i1 %215, double %214, double %121
  br i1 %215, label %218, label %223

218:                                              ; preds = %196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !84
  %219 = fcmp ole double %213, 1.000000e-02
  %220 = fcmp ole double %211, 1.000000e-02
  %221 = and i1 %219, %220
  %222 = select i1 %221, i32 19, i32 0
  br label %223

223:                                              ; preds = %218, %196, %136, %118
  %224 = phi i32 [ %216, %196 ], [ 12, %118 ], [ 12, %136 ], [ %222, %218 ]
  %225 = phi i32 [ %122, %196 ], [ %122, %118 ], [ %122, %136 ], [ 1, %218 ]
  %226 = phi double [ %217, %196 ], [ %121, %118 ], [ %121, %136 ], [ %217, %218 ]
  %227 = phi double [ %120, %196 ], [ %120, %118 ], [ %120, %136 ], [ %208, %218 ]
  %228 = phi double [ %119, %196 ], [ %119, %118 ], [ %119, %136 ], [ %201, %218 ]
  switch i32 %224, label %243 [
    i32 0, label %229
    i32 12, label %229
  ]

229:                                              ; preds = %223, %223
  %230 = load i16, ptr %78, align 2, !tbaa !13
  %231 = add i16 %230, -1
  store i16 %231, ptr %78, align 2, !tbaa !13
  %232 = sext i16 %231 to i32
  %233 = icmp slt i32 %232, %102
  br i1 %233, label %234, label %118, !llvm.loop !87

234:                                              ; preds = %229, %113
  %235 = phi i32 [ %117, %113 ], [ %225, %229 ]
  %236 = phi double [ %116, %113 ], [ %226, %229 ]
  %237 = phi double [ %115, %113 ], [ %227, %229 ]
  %238 = phi double [ %114, %113 ], [ %228, %229 ]
  %239 = load i16, ptr %8, align 8, !tbaa !9
  %240 = add i16 %239, -1
  store i16 %240, ptr %8, align 8, !tbaa !9
  %241 = sext i16 %240 to i32
  %242 = icmp slt i32 %241, %98
  br i1 %242, label %243, label %113, !llvm.loop !88

243:                                              ; preds = %234, %223, %89
  %244 = phi i32 [ 0, %89 ], [ %224, %223 ], [ 0, %234 ]
  %245 = phi i32 [ 0, %89 ], [ %225, %223 ], [ %235, %234 ]
  %246 = phi double [ %90, %89 ], [ %226, %223 ], [ %236, %234 ]
  %247 = phi double [ %91, %89 ], [ %227, %223 ], [ %237, %234 ]
  %248 = phi double [ %92, %89 ], [ %228, %223 ], [ %238, %234 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11
  switch i32 %244, label %264 [
    i32 0, label %249
    i32 19, label %259
  ]

249:                                              ; preds = %243
  %250 = load i64, ptr %86, align 8, !tbaa !16
  %251 = icmp ult i64 %250, %87
  br i1 %251, label %252, label %254

252:                                              ; preds = %256, %249
  %253 = add nuw nsw i32 %93, 1
  br label %89

254:                                              ; preds = %249
  %255 = icmp eq i32 %245, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %254
  br i1 %88, label %259, label %252

257:                                              ; preds = %254
  %258 = icmp eq i32 %93, 1
  br i1 %258, label %264, label %259

259:                                              ; preds = %256, %243, %257
  %260 = fptrunc double %248 to float
  %261 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %2, i64 0, i32 3
  store float %260, ptr %261, align 8, !tbaa !89
  %262 = fptrunc double %247 to float
  %263 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %2, i64 0, i32 4
  store float %262, ptr %263, align 4, !tbaa !90
  br label %264

264:                                              ; preds = %243, %17, %257, %259
  %265 = phi i1 [ false, %259 ], [ true, %17 ], [ true, %257 ], [ false, %243 ]
  %266 = phi i32 [ 0, %259 ], [ -15, %17 ], [ -15, %257 ], [ undef, %243 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br i1 %265, label %299, label %267

267:                                              ; preds = %264
  call void @gx_compute_cell_values(ptr noundef %0)
  %268 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 10
  %269 = load i32, ptr %268, align 8, !tbaa !91
  %270 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 9
  %271 = load i32, ptr %270, align 4, !tbaa !92
  %272 = add i32 %271, 63
  %273 = lshr i32 %272, 3
  %274 = and i32 %273, 536870904
  %275 = udiv i32 %13, %274
  %276 = icmp ugt i32 %269, %275
  %277 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 7
  %278 = load i16, ptr %277, align 8, !tbaa !93
  %279 = sext i16 %278 to i32
  br i1 %276, label %291, label %280

280:                                              ; preds = %267
  %281 = mul i32 %271, %279
  %282 = call i32 @gx_ht_alloc_order(ptr noundef %0, i32 noundef %271, i32 noundef %269, i32 noundef 0, i32 noundef %281, ptr noundef %4) #11
  %283 = load i16, ptr %277, align 8, !tbaa !93
  %284 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 5
  store i16 %283, ptr %284, align 8, !tbaa !94
  %285 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 2
  store i16 %283, ptr %285, align 2, !tbaa !95
  %286 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 11
  %287 = load i32, ptr %286, align 4, !tbaa !96
  %288 = trunc i32 %287 to i16
  %289 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 6
  store i16 %288, ptr %289, align 2, !tbaa !97
  %290 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 4
  store i16 %288, ptr %290, align 2, !tbaa !53
  br label %296

291:                                              ; preds = %267
  %292 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 11
  %293 = load i32, ptr %292, align 4, !tbaa !96
  %294 = mul i32 %271, %279
  %295 = call i32 @gx_ht_alloc_order(ptr noundef %0, i32 noundef %271, i32 noundef %279, i32 noundef %293, i32 noundef %294, ptr noundef %4) #11
  br label %296

296:                                              ; preds = %291, %280
  %297 = phi i32 [ %282, %280 ], [ %295, %291 ]
  %298 = call i32 @llvm.smin.i32(i32 %297, i32 0)
  br label %299

299:                                              ; preds = %296, %264, %5
  %300 = phi i32 [ -15, %5 ], [ %266, %264 ], [ %298, %296 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  ret i32 %300
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_screen_enum_init_memory(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 7
  store ptr %2, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !98
  %8 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 1, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !43
  store i32 1, ptr %0, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !45
  %10 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !48
  %11 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !51
  %16 = zext i16 %15 to i32
  %17 = udiv i32 %13, %16
  %18 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !53
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 6
  store i32 %21, ptr %22, align 4, !tbaa !54
  %23 = load i16, ptr %1, align 8, !tbaa !55
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %1, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !56
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %1, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !57
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %1, i64 0, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !58
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %1, i64 0, i32 4
  %35 = load i16, ptr %34, align 8, !tbaa !59
  %36 = sext i16 %35 to i32
  %37 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %1, i64 0, i32 5
  %38 = load i16, ptr %37, align 2, !tbaa !60
  %39 = sext i16 %38 to i32
  %40 = sext i16 %23 to i64
  %41 = sext i16 %32 to i64
  %42 = mul nsw i64 %41, %40
  %43 = sext i16 %26 to i64
  %44 = sext i16 %35 to i64
  %45 = mul nsw i64 %44, %43
  %46 = add nsw i64 %45, %42
  %47 = sitofp i64 %46 to double
  %48 = fdiv double 2.000000e+00, %47
  %49 = mul nsw i32 %33, %30
  %50 = sitofp i32 %49 to double
  %51 = fmul double %48, %50
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2
  store float %52, ptr %53, align 8, !tbaa !61
  %54 = mul nsw i32 %27, %39
  %55 = sub nsw i32 0, %54
  %56 = sitofp i32 %55 to double
  %57 = fmul double %48, %56
  %58 = fptrunc double %57 to float
  %59 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 1
  store float %58, ptr %59, align 4, !tbaa !62
  %60 = mul nsw i32 %36, %30
  %61 = sitofp i32 %60 to double
  %62 = fmul double %48, %61
  %63 = fptrunc double %62 to float
  %64 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 2
  store float %63, ptr %64, align 8, !tbaa !63
  %65 = mul nsw i32 %39, %24
  %66 = sitofp i32 %65 to double
  %67 = fmul double %48, %66
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 3
  store float %68, ptr %69, align 4, !tbaa !64
  %70 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 4
  store float -1.000000e+00, ptr %70, align 8, !tbaa !65
  %71 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2, i32 5
  store float -1.000000e+00, ptr %71, align 4, !tbaa !66
  ret i32 0
}

declare void @gs_deviceinitialmatrix(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gs_currentdevice(ptr noundef) local_unnamed_addr #4

declare i32 @gx_ht_alloc_order(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_screen_currentpoint(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1
  tail call void @gx_ht_construct_spot_order(ptr noundef nonnull %10) #11
  br label %63

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !49
  %14 = sitofp i32 %13 to double
  %15 = fadd double %14, 5.010000e-01
  %16 = sitofp i32 %5 to double
  %17 = fadd double %16, 4.980000e-01
  %18 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 2
  %19 = call i32 @gs_point_transform(double noundef %15, double noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %3) #11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %11
  %22 = load double, ptr %3, align 8, !tbaa !76
  %23 = fcmp olt double %22, -1.000000e+00
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = call double @llvm.ceil.f64(double %22)
  %26 = fneg double %25
  %27 = fptosi double %26 to i32
  %28 = add nsw i32 %27, 1
  %29 = and i32 %28, -2
  %30 = sitofp i32 %29 to double
  %31 = fadd double %22, %30
  store double %31, ptr %3, align 8, !tbaa !76
  br label %40

32:                                               ; preds = %21
  %33 = fcmp ult double %22, 1.000000e+00
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = fptosi double %22 to i32
  %36 = add nsw i32 %35, 1
  %37 = and i32 %36, -2
  %38 = sitofp i32 %37 to double
  %39 = fsub double %22, %38
  store double %39, ptr %3, align 8, !tbaa !76
  br label %40

40:                                               ; preds = %32, %34, %24
  %41 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  %42 = load double, ptr %41, align 8, !tbaa !79
  %43 = fcmp olt double %42, -1.000000e+00
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = call double @llvm.ceil.f64(double %42)
  %46 = fneg double %45
  %47 = fptosi double %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = and i32 %48, -2
  %50 = sitofp i32 %49 to double
  %51 = fadd double %42, %50
  br label %60

52:                                               ; preds = %40
  %53 = fcmp ult double %42, 1.000000e+00
  br i1 %53, label %62, label %54

54:                                               ; preds = %52
  %55 = fptosi double %42 to i32
  %56 = add nsw i32 %55, 1
  %57 = and i32 %56, -2
  %58 = sitofp i32 %57 to double
  %59 = fsub double %42, %58
  br label %60

60:                                               ; preds = %44, %54
  %61 = phi double [ %59, %54 ], [ %51, %44 ]
  store double %61, ptr %41, align 8, !tbaa !79
  br label %62

62:                                               ; preds = %60, %52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !99
  br label %63

63:                                               ; preds = %11, %62, %9
  %64 = phi i32 [ 1, %9 ], [ 0, %62 ], [ %19, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %64
}

declare void @gx_ht_construct_spot_order(ptr noundef) local_unnamed_addr #4

declare i32 @gs_point_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_screen_next(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #8 {
  %3 = fcmp olt double %1, -1.000000e+00
  %4 = fcmp ogt double %1, 1.000000e+00
  %5 = or i1 %3, %4
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !101
  %9 = zext i16 %8 to i32
  %10 = fmul double %1, 0x41DFFFFFFFC00000
  %11 = fptoui double %10 to i32
  %12 = add i32 %11, 2147483647
  %13 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = mul nsw i32 %16, %9
  %18 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !49
  %20 = add nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %14, i64 %21, i32 1
  store i32 %12, ptr %22, align 4, !tbaa !103
  %23 = add nsw i32 %19, 1
  store i32 %23, ptr %18, align 8, !tbaa !49
  %24 = icmp slt i32 %23, %9
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  store i32 0, ptr %18, align 8, !tbaa !49
  %26 = add nsw i32 %16, 1
  store i32 %26, ptr %15, align 4, !tbaa !48
  br label %27

27:                                               ; preds = %6, %25, %2
  %28 = phi i32 [ -15, %2 ], [ 0, %25 ], [ 0, %6 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_screen_install(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.gx_device_halftone_s, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %2, i64 0, i32 1, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 96, i1 false), !tbaa.struct !98
  %7 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %2, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = call i32 @gx_ht_install(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #11
  ret i32 %10
}

declare i32 @gx_ht_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @screen_enum_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = icmp ult i32 %2, 6
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_ht_order, i64 0, i32 4), align 8, !tbaa !108
  %10 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1
  %11 = add nsw i32 %2, -2
  %12 = tail call ptr %9(ptr noundef nonnull %10, i32 noundef 96, i32 noundef %11, ptr noundef %3) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  store ptr null, ptr %3, align 8, !tbaa !47
  br label %22

15:                                               ; preds = %6
  %16 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_halftone, i64 0, i32 4), align 8, !tbaa !108
  %17 = add i32 %2, -6
  %18 = tail call ptr %16(ptr noundef %0, i32 noundef 128, i32 noundef %17, ptr noundef %3) #11
  br label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  store ptr %21, ptr %3, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %8, %14, %15, %19
  %23 = phi ptr [ @ptr_struct_procs, %19 ], [ %18, %15 ], [ @ptr_struct_procs, %14 ], [ %12, %8 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define internal void @screen_enum_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #11
  store ptr %6, ptr %4, align 8, !tbaa !38
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_halftone, i64 0, i32 5), align 8, !tbaa !110
  tail call void %7(ptr noundef %0, i32 noundef 128, ptr noundef %2) #11
  %8 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_ht_order, i64 0, i32 5), align 8, !tbaa !110
  %9 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %0, i64 0, i32 1
  tail call void %8(ptr noundef nonnull %9, i32 noundef 96, ptr noundef %2) #11
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare i32 @gs_make_rotation(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare i32 @gs_distance_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"gx_ht_cell_params_s", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !12, i64 16, !11, i64 24, !11, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!11 = !{!"short", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!10, !11, i64 2}
!14 = !{!10, !11, i64 6}
!15 = !{!10, !11, i64 8}
!16 = !{!10, !12, i64 16}
!17 = !{!10, !6, i64 28}
!18 = !{!10, !6, i64 32}
!19 = !{!10, !11, i64 24}
!20 = !{!10, !11, i64 26}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!10, !6, i64 36}
!24 = !{!25, !27, i64 16}
!25 = !{!"gs_memory_s", !26, i64 0}
!26 = !{!"gs_memory_procs_s", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !27, i64 80, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !27, i64 128, !27, i64 136, !27, i64 144, !27, i64 152}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!29, !27, i64 0}
!29 = !{!"gs_state_s", !27, i64 0, !30, i64 8, !33, i64 80, !6, i64 128, !11, i64 132, !6, i64 136, !31, i64 140, !34, i64 144, !6, i64 160, !6, i64 164, !27, i64 168, !7, i64 176, !27, i64 192, !27, i64 200, !27, i64 208, !27, i64 216, !27, i64 224, !7, i64 232, !7, i64 264, !27, i64 296, !27, i64 304, !27, i64 312, !27, i64 320, !27, i64 328, !35, i64 336, !6, i64 360, !35, i64 364, !6, i64 388, !27, i64 392, !27, i64 400, !6, i64 408, !6, i64 412, !27, i64 416, !27, i64 424, !27, i64 432, !27, i64 440, !27, i64 448, !33, i64 456, !6, i64 504, !7, i64 508, !6, i64 512, !27, i64 520, !6, i64 528, !27, i64 536, !27, i64 544, !36, i64 552}
!30 = !{!"gx_line_params_s", !31, i64 0, !6, i64 4, !6, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !31, i64 24, !32, i64 32}
!31 = !{!"float", !7, i64 0}
!32 = !{!"gx_dash_params_s", !27, i64 0, !6, i64 8, !31, i64 12, !6, i64 16, !31, i64 20, !6, i64 24, !6, i64 28, !31, i64 32}
!33 = !{!"gs_matrix_fixed_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !12, i64 24, !12, i64 32, !6, i64 40}
!34 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 8}
!35 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!36 = !{!"gs_state_client_procs_s", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!37 = !{i32 -2147483648, i32 1}
!38 = !{!39, !27, i64 264}
!39 = !{!"gs_screen_enum_s", !40, i64 0, !42, i64 128, !35, i64 224, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !27, i64 264}
!40 = !{!"gs_halftone_s", !6, i64 0, !41, i64 8, !7, i64 32}
!41 = !{!"rc_header_s", !12, i64 0, !27, i64 8, !27, i64 16}
!42 = !{!"gx_ht_order_s", !10, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !11, i64 48, !11, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !27, i64 64, !27, i64 72, !27, i64 80, !27, i64 88}
!43 = !{!39, !27, i64 16}
!44 = !{!39, !6, i64 0}
!45 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 8, !47, i64 16, i64 4, !46, i64 20, i64 4, !46}
!46 = !{!31, !31, i64 0}
!47 = !{!27, !27, i64 0}
!48 = !{!39, !6, i64 252}
!49 = !{!39, !6, i64 248}
!50 = !{!42, !6, i64 56}
!51 = !{!42, !11, i64 40}
!52 = !{!39, !6, i64 256}
!53 = !{!42, !11, i64 46}
!54 = !{!39, !6, i64 260}
!55 = !{!42, !11, i64 0}
!56 = !{!42, !11, i64 2}
!57 = !{!42, !11, i64 4}
!58 = !{!42, !11, i64 6}
!59 = !{!42, !11, i64 8}
!60 = !{!42, !11, i64 10}
!61 = !{!39, !31, i64 224}
!62 = !{!39, !31, i64 228}
!63 = !{!39, !31, i64 232}
!64 = !{!39, !31, i64 236}
!65 = !{!39, !31, i64 240}
!66 = !{!39, !31, i64 244}
!67 = !{!29, !27, i64 200}
!68 = !{!69, !6, i64 8}
!69 = !{!"gx_ht_cache_s", !27, i64 0, !6, i64 8, !27, i64 16, !6, i64 24, !42, i64 32, !6, i64 128, !6, i64 132, !12, i64 136}
!70 = !{!71, !31, i64 0}
!71 = !{!"gs_screen_halftone_s", !31, i64 0, !31, i64 4, !27, i64 8, !31, i64 16, !31, i64 20}
!72 = !{!35, !31, i64 4}
!73 = !{!35, !31, i64 0}
!74 = !{!35, !31, i64 12}
!75 = !{!71, !31, i64 4}
!76 = !{!77, !78, i64 0}
!77 = !{!"gs_point_s", !78, i64 0, !78, i64 8}
!78 = !{!"double", !7, i64 0}
!79 = !{!77, !78, i64 8}
!80 = distinct !{!80, !22}
!81 = !{!10, !11, i64 10}
!82 = !{!10, !11, i64 4}
!83 = !{!35, !31, i64 8}
!84 = !{i64 0, i64 2, !85, i64 2, i64 2, !85, i64 4, i64 2, !85, i64 6, i64 2, !85, i64 8, i64 2, !85, i64 10, i64 2, !85, i64 16, i64 8, !86, i64 24, i64 2, !85, i64 26, i64 2, !85, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5}
!85 = !{!11, !11, i64 0}
!86 = !{!12, !12, i64 0}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = !{!71, !31, i64 16}
!90 = !{!71, !31, i64 20}
!91 = !{!42, !6, i64 32}
!92 = !{!42, !6, i64 28}
!93 = !{!42, !11, i64 24}
!94 = !{!42, !11, i64 48}
!95 = !{!42, !11, i64 42}
!96 = !{!42, !6, i64 36}
!97 = !{!42, !11, i64 50}
!98 = !{i64 0, i64 2, !85, i64 2, i64 2, !85, i64 4, i64 2, !85, i64 6, i64 2, !85, i64 8, i64 2, !85, i64 10, i64 2, !85, i64 16, i64 8, !86, i64 24, i64 2, !85, i64 26, i64 2, !85, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 2, !85, i64 42, i64 2, !85, i64 44, i64 2, !85, i64 46, i64 2, !85, i64 48, i64 2, !85, i64 50, i64 2, !85, i64 52, i64 4, !5, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 8, !47, i64 72, i64 8, !47, i64 80, i64 8, !47, i64 88, i64 8, !47}
!99 = !{i64 0, i64 8, !100, i64 8, i64 8, !100}
!100 = !{!78, !78, i64 0}
!101 = !{!39, !11, i64 168}
!102 = !{!39, !27, i64 200}
!103 = !{!104, !6, i64 4}
!104 = !{!"gx_ht_bit_s", !6, i64 0, !6, i64 4}
!105 = !{!106, !27, i64 104}
!106 = !{!"gx_device_halftone_s", !42, i64 0, !41, i64 96, !12, i64 120, !27, i64 128, !6, i64 136, !7, i64 140, !6, i64 156, !6, i64 160}
!107 = !{!106, !27, i64 128}
!108 = !{!109, !27, i64 32}
!109 = !{!"gs_memory_struct_type_s", !6, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48}
!110 = !{!109, !27, i64 40}
